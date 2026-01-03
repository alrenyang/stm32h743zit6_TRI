/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"
#include "lwip.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "../Middlewares/lvgl/lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"
#include "lwip/tcp.h" // Added for struct tcp_pcb
#include "lwip/pbuf.h" // Added for struct pbuf
#include "tcp_ip.h"
#include "lcd.h"
#include <string.h>
#include <stdbool.h>
#include "widgets.h"

#define 	LCD_FRAME_BUFFER_ADDR  0xC0000000
#define     HW_SDRAM_MEM_ADDR      0xC0000000
#define     HW_SDRAM_MEM_SIZE      (8*1024*1024)
#define 	SDRAM_TIMEOUT          ((uint32_t)0xFFFF)

#define 	FRAME_BUF_CNT         2

// ===== LTDC Line/Pitch 강제 보정 =====
#define LCD_W 480
#define LCD_H 272
#define BYTES_PER_PIXEL 2  // RGB565


/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
extern struct netif gnetif;


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
//static void Netif_Config(void);
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

DMA2D_HandleTypeDef hdma2d;

I2C_HandleTypeDef hi2c4;

LTDC_HandleTypeDef hltdc;

UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;

SDRAM_HandleTypeDef hsdram1;

osThreadId MainTaskHandle;
/* USER CODE BEGIN PV */

osThreadId TcpTaskHandle;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MPU_Config(void);
static void MX_GPIO_Init(void);
static void MX_FMC_Init(void);
static void MX_I2C4_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_DMA2D_Init(void);
static void MX_LTDC_Init(void);
void StartDefaultTask(void const * argument);

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
uint8_t gete_way_ip[4] = {192,168,0,1};	//user set up
uint8_t user_ip[4] = {192,168,0,50};
uint16_t Port_No = 5001;

volatile bool btcp_connect = false;

uint8_t g_tcp_recv_buffer[TCP_RECV_BUF_SIZE];	//TCP로 데이터를 받는다...
volatile uint32_t g_tcp_recv_len = 0;
volatile bool g_tcp_new_data_flag = false;


uint16_t *FrameBuffer = (uint16_t *)LCD_FB_ADDR;

void LCD_DrawColorBar(void)
{
    volatile uint16_t *fb = (uint16_t *)LCD_FB_ADDR;

    const uint16_t left_color  = blue;    // 왼쪽 색
    const uint16_t right_color = yellow;  // 오른쪽 색

    for (int y = 0; y < LCD_HEIGHT; y++)
    {
        int row = y * LCD_WIDTH;

        // 왼쪽 절반 (0 ~ 239)
        for (int x = 0; x < (LCD_WIDTH / 2); x++)
            fb[row + x] = left_color;

        // 오른쪽 절반 (240 ~ 479)
        for (int x = (LCD_WIDTH / 2); x < LCD_WIDTH; x++)
            fb[row + x] = right_color;
    }

    // 프레임버퍼가 Cacheable일 때만 필요 (Non-cacheable이면 없어도 됨)
//    uintptr_t addr = (uintptr_t)LCD_FRAME_BUFFER_ADDR & ~(uintptr_t)31;
//    uint32_t size  = (LCD_WIDTH * LCD_HEIGHT * 2u + 31u) & ~31u;
    SCB_CleanDCache_by_Addr((uint32_t*)fb, 480*272*2);
}

void LCD_TestHorizontalBars(void)
{
  uint16_t *fb = (uint16_t*)LCD_FB_ADDR;

  for(int y=0;y<272;y++){
    uint16_t c = (y<136) ? 0x001F : 0xFFE0; // 위 파랑, 아래 노랑
    for(int x=0;x<480;x++){
      fb[y*480 + x] = c;
    }
  }
  SCB_CleanDCache_by_Addr((uint32_t*)fb, 480*272*2);
}



void Draw_Screen(uint16_t color) {
    uint32_t size = LCD_WIDTH * LCD_HEIGHT;
    for (uint32_t i = 0; i < size; i++) {
        FrameBuffer[i] = color;
    }
    // 캐시 동기화 (Cache Coherence)
    // CPU가 프레임 버퍼를 조작할 때, LTDC(DMA)가 읽기 전에 캐시를 정리해야 합니다.
    SCB_CleanDCache_by_Addr((uint32_t *)FrameBuffer, size * 2); // 2 bytes per pixel
}


void sdram_test(void)
{
	uint32_t *p_sdram_32 = (uint32_t *)HW_SDRAM_MEM_ADDR;
	uint32_t i;
	uint32_t errors = 0;
	const uint32_t test_size_bytes = 4096;

	printf("     addr : 0x%X\n", (unsigned int)HW_SDRAM_MEM_ADDR);
	printf("     size : %dMB\n", (int)(HW_SDRAM_MEM_SIZE/1024/1024));
	printf("SDRAM R/W test running...\n");
	printf("(Using cache maintenance functions for D-Cache)\n");

	// --- Test 1: 32-bit access ---
	errors = 0;
	printf("  Testing 32-bit access on first %u bytes...\n", (unsigned int)test_size_bytes);
	for (i = 0; i < test_size_bytes / 4; i++)
	{
		p_sdram_32[i] = 0xDEADBEEF;
	}

	// Clean & Invalidate D-Cache to ensure data is written to and read from SDRAM
	SCB_CleanInvalidateDCache_by_Addr((uint32_t *)HW_SDRAM_MEM_ADDR, test_size_bytes);

	for (i = 0; i < test_size_bytes / 4; i++)
	{
		if (p_sdram_32[i] != (0xDEADBEEF))
		{
			if (errors < 10)
				printf("    32-bit Fail at index %u: Wrote 0x%X, Read 0x%X\n", (unsigned int)i, (unsigned int)(0xDEADBEEF), (unsigned int)p_sdram_32[i]);
			errors++;
		}
	}
	if(errors == 0) printf("  32-bit access PASSED.\n");
	else printf("  32-bit access FAILED with %u errors.\n", (unsigned int)errors);

	printf("SDRAM test finished.\n");
}

static void PeriphCommonClock_Config(void)
{
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_FMC | RCC_PERIPHCLK_LTDC;

  // --- PLL2 for FMC ---
  PeriphClkInitStruct.PLL2.PLL2M = 15;
  PeriphClkInitStruct.PLL2.PLL2N = 228;
  PeriphClkInitStruct.PLL2.PLL2P = 2;
  PeriphClkInitStruct.PLL2.PLL2Q = 2;
  PeriphClkInitStruct.PLL2.PLL2R = 2;
  PeriphClkInitStruct.PLL2.PLL2RGE = RCC_PLL2VCIRANGE_0;
  PeriphClkInitStruct.PLL2.PLL2VCOSEL = RCC_PLL2VCOWIDE;
  PeriphClkInitStruct.PLL2.PLL2FRACN = 0;
  PeriphClkInitStruct.FmcClockSelection = RCC_FMCCLKSOURCE_PLL2;

  // --- PLL3 for LTDC (60Hz 정확 맞춤용) ---
  PeriphClkInitStruct.PLL3.PLL3M = 5;
  PeriphClkInitStruct.PLL3.PLL3N = 76;
  PeriphClkInitStruct.PLL3.PLL3P = 2;
  PeriphClkInitStruct.PLL3.PLL3Q = 2;
  PeriphClkInitStruct.PLL3.PLL3R = 40;
  PeriphClkInitStruct.PLL3.PLL3RGE = RCC_PLL3VCIRANGE_2;
  PeriphClkInitStruct.PLL3.PLL3VCOSEL = RCC_PLL3VCOWIDE;
  PeriphClkInitStruct.PLL3.PLL3FRACN = 105;


  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
    Error_Handler();

  printf("fmc=%lu ltdc=%lu\r\n",
         HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_FMC),
         HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_LTDC));
}

#if 0
static uint32_t SDRAM_CalcRefreshCount(uint32_t sdclk_hz)
{
	uint64_t tmp = (uint64_t)sdclk_hz * 64ULL;
	uint32_t cnt = (uint32_t)((tmp + (1000ULL * 8192ULL / 2ULL)) / (1000ULL * 8192ULL));
	cnt = (cnt > 20U) ? (cnt - 20U) : 1U;

    return cnt;
}
#endif
// IS42S16400J: 4096 refresh / 64ms (commercial/industrial/A1)
static uint32_t SDRAM_RefreshCount_IS42S16400J(uint32_t sdclk_hz)
{
    // tREFI = 64ms / 4096 = 15.625us
    // COUNT = tREFI * sdclk - 20
    // COUNT = (sdclk_hz * 15625ns) - 20
    // 정수 계산: sdclk_hz(Hz) * 15625 / 1e9
    uint64_t cnt = ((uint64_t)sdclk_hz * 15625ULL + 500000000ULL) / 1000000000ULL; // round
    if (cnt > 20ULL) cnt -= 20ULL;
    else cnt = 1ULL;
    return (uint32_t)cnt;
}

static uint32_t FMC_GetKernelClock_Hz(void)
{
    // PLL2 settings (네 PeriphCommonClock_Config 값과 반드시 일치해야 함)
    const uint32_t HSE_HZ = 25000000UL;
    const uint32_t PLL2M  = 15;
    const uint32_t PLL2N  = 228;
    const uint32_t PLL2R  = 2;

    uint32_t pll2_vco = (HSE_HZ / PLL2M) * PLL2N;  // 380 MHz
    uint32_t pll2_r   = pll2_vco / PLL2R;         // 190 MHz

    return pll2_r; // FMC kernel clock
}

void SDRAM_VerifyFrameBuffer(uint16_t expected_left, uint16_t expected_right)
{
    volatile uint16_t *fb = (uint16_t *)HW_SDRAM_MEM_ADDR;
    uint32_t errors = 0;

    for (int y = 0; y < 272; y++)
    {
        for (int x = 0; x < 480; x++)
        {
            uint16_t exp = (x < 240) ? expected_left : expected_right;
            uint16_t v = fb[y * 480 + x];

            if (v != exp)
            {
                if (errors < 10)
                {
                    printf("SDRAM mismatch at (%d,%d): exp=%04X got=%04X\n",
                           x, y, exp, v);
                }
                errors++;
            }
        }
    }

    printf("SDRAM verify errors = %lu\n", errors);
}

void SDRAM_AddressAliasingTest(void)
{
    volatile uint32_t *p = (uint32_t *)HW_SDRAM_MEM_ADDR;
    uint32_t error = 0;

    printf("SDRAM alias test start\n");

    /* 서로 멀리 떨어진 주소에 서로 다른 패턴 기록 */
    p[0x0000] = 0x11111111;
    p[0x1000] = 0x22222222;
    p[0x2000] = 0x33333333;
    p[0x4000] = 0x44444444;
    p[0x8000] = 0x55555555;

    __DSB();  // write 완료 보장
    __ISB();

    /* ---- 검증 ---- */
    if (p[0x0000] != 0x11111111) {
        printf("Alias ERROR @0x0000: %08lX\n", p[0x0000]);
        error++;
    }
    if (p[0x1000] != 0x22222222) {
        printf("Alias ERROR @0x1000: %08lX\n", p[0x1000]);
        error++;
    }
    if (p[0x2000] != 0x33333333) {
        printf("Alias ERROR @0x2000: %08lX\n", p[0x2000]);
        error++;
    }
    if (p[0x4000] != 0x44444444) {
        printf("Alias ERROR @0x4000: %08lX\n", p[0x4000]);
        error++;
    }
    if (p[0x8000] != 0x55555555) {
        printf("Alias ERROR @0x8000: %08lX\n", p[0x8000]);
        error++;
    }

    /* ---- 최종 판정 ---- */
    if (error == 0) {
        printf("SDRAM alias test PASSED (no aliasing detected)\n");
    } else {
        printf("SDRAM alias test FAILED (%lu errors)\n", error);
    }
}

#define SDRAM_BASE 0xC0000000U

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MPU Configuration--------------------------------------------------------*/
  MPU_Config();

  /* Enable the CPU Cache */

  /* Enable I-Cache---------------------------------------------------------*/
  SCB_EnableICache();

  /* Enable D-Cache---------------------------------------------------------*/
  SCB_EnableDCache();

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  PeriphCommonClock_Config();
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_FMC_Init();
  MX_I2C4_Init();
  MX_USART1_UART_Init();
  MX_USART2_UART_Init();
  MX_DMA2D_Init();
  MX_LTDC_Init();
  /* USER CODE BEGIN 2 */
  //	8pin -->	LTCD_R3 	--> PB0
  //	9pin -->	LTCD_R4 	--> PA5
  //	10pin -->	LTCD_R5 	--> PA9
  //	11pin -->	LTCD_R6 	--> PB1
  //	12pin -->	LTCD_R7 	--> PG6

  //	16pin -->	LTCD_G3 	--> PC9
  //	15pin -->	LTCD_G2 	--> PA6
  //	17pin -->	LTCD_G4 	--> PB10
  //	18pin -->	LTCD_G5 	--> PB11
  //	19pin -->	LTCD_G6 	--> PC7
  //	20pin -->	LTCD_G7 	--> PD3

  //	24pin -->	LTCD_B3 	--> PA8
  //	25pin -->	LTCD_B4 	--> PA10
  //	26pin -->	LTCD_B5 	--> PA3
  //	27pin -->	LTCD_B6 	--> PB8
  //	28pin -->	LTCD_B7 	--> PB9

  //	30pin -->	LTCD_CLK 	--> PG7
  //	31pin -->	LTCD_DISP 	--> PC8
  //	32pin -->	LTCD_HSYNC 	--> PC6
  //	33pin -->	LTCD_VYSNC 	--> PA4
  //	34pin -->	LTCD_DE 	--> PF10

  lcdSetFrameBuffer(LCD_FB_ADDR);
  //LAN8742 RESET PIN
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_RESET);
  HAL_Delay(100);
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_SET);
  HAL_Delay(500);

  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);	//DISP Control
  HAL_Delay(250); // Datasheet: Wait T2 (250ms min) after DISP High before turning on Backlight
  HAL_GPIO_WritePin(GPIOA, LCD_BAK_Pin, GPIO_PIN_SET);	//LCD Backlight Enable

//  osThreadDef(tcp_server, tcp_server_thread, osPriorityNormal, 0, 1024);
//  TcpTaskHandle = osThreadCreate(osThread(tcp_server), NULL);

  /* USER CODE END 2 */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  //apInit();
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of MainTask */
  osThreadDef(MainTask, StartDefaultTask, osPriorityNormal, 0, 2048);
  MainTaskHandle = osThreadCreate(osThread(MainTask), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 5;
  RCC_OscInitStruct.PLL.PLLN = 192;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_2;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief DMA2D Initialization Function
  * @param None
  * @retval None
  */
static void MX_DMA2D_Init(void)
{

  /* USER CODE BEGIN DMA2D_Init 0 */

  /* USER CODE END DMA2D_Init 0 */

  /* USER CODE BEGIN DMA2D_Init 1 */

  /* USER CODE END DMA2D_Init 1 */
  hdma2d.Instance = DMA2D;
  hdma2d.Init.Mode = DMA2D_M2M;
  hdma2d.Init.ColorMode = DMA2D_OUTPUT_RGB565;
  hdma2d.Init.OutputOffset = 0;
  hdma2d.LayerCfg[1].InputOffset = 0;
  hdma2d.LayerCfg[1].InputColorMode = DMA2D_INPUT_RGB565;
  hdma2d.LayerCfg[1].AlphaMode = DMA2D_NO_MODIF_ALPHA;
  hdma2d.LayerCfg[1].InputAlpha = 0;
  hdma2d.LayerCfg[1].AlphaInverted = DMA2D_REGULAR_ALPHA;
  hdma2d.LayerCfg[1].RedBlueSwap = DMA2D_RB_REGULAR;
  hdma2d.LayerCfg[1].ChromaSubSampling = DMA2D_NO_CSS;
  if (HAL_DMA2D_Init(&hdma2d) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_DMA2D_ConfigLayer(&hdma2d, 1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DMA2D_Init 2 */

  /* USER CODE END DMA2D_Init 2 */

}

/**
  * @brief I2C4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C4_Init(void)
{

  /* USER CODE BEGIN I2C4_Init 0 */

  /* USER CODE END I2C4_Init 0 */

  /* USER CODE BEGIN I2C4_Init 1 */

  /* USER CODE END I2C4_Init 1 */
  hi2c4.Instance = I2C4;
  hi2c4.Init.Timing = 0x307075B1;
  hi2c4.Init.OwnAddress1 = 0;
  hi2c4.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c4.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c4.Init.OwnAddress2 = 0;
  hi2c4.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c4.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c4.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c4) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c4, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c4, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C4_Init 2 */

  /* USER CODE END I2C4_Init 2 */

}

/**
  * @brief LTDC Initialization Function
  * @param None
  * @retval None
  */
static void MX_LTDC_Init(void)
{

  /* USER CODE BEGIN LTDC_Init 0 */
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /* LCD-TFT clock configuration */
  /* LCD clock configuration is generated from PLL3 */
  /* PLL3_VCO Input = HSE/PLL3M = 25/5 = 5 Mhz */
  /* PLL3_VCO Output = PLL3_VCO Input * PLL3N = 5 * 76 = 380 Mhz */
  /* PLLLCDCLK = PLL3_VCO Output / PLL3R = 380/40 = 9.5 Mhz */
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_LTDC;
  PeriphClkInitStruct.PLL3.PLL3M = 5;
  PeriphClkInitStruct.PLL3.PLL3N = 76;
  PeriphClkInitStruct.PLL3.PLL3P = 2;
  PeriphClkInitStruct.PLL3.PLL3Q = 2;
  PeriphClkInitStruct.PLL3.PLL3R = 40;
  PeriphClkInitStruct.PLL3.PLL3RGE = RCC_PLL3VCIRANGE_2;
  PeriphClkInitStruct.PLL3.PLL3VCOSEL = RCC_PLL3VCOWIDE;
  PeriphClkInitStruct.PLL3.PLL3FRACN = 105;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE END LTDC_Init 0 */

  LTDC_LayerCfgTypeDef pLayerCfg = {0};

  /* USER CODE BEGIN LTDC_Init 1 */

  /* USER CODE END LTDC_Init 1 */
  hltdc.Instance = LTDC;
  hltdc.Init.HSPolarity = LTDC_HSPOLARITY_AL;
  hltdc.Init.VSPolarity = LTDC_VSPOLARITY_AL;
  hltdc.Init.DEPolarity = LTDC_DEPOLARITY_AH;
  hltdc.Init.PCPolarity = LTDC_PCPOLARITY_IIPC;
  hltdc.Init.HorizontalSync = 3;
  hltdc.Init.VerticalSync = 3;
  hltdc.Init.AccumulatedHBP = 46;
  hltdc.Init.AccumulatedVBP = 15;
  hltdc.Init.AccumulatedActiveW = 526;
  hltdc.Init.AccumulatedActiveH = 287;
  hltdc.Init.TotalWidth = 534;
  hltdc.Init.TotalHeigh = 295;
  hltdc.Init.Backcolor.Blue = 0;
  hltdc.Init.Backcolor.Green = 0;
  hltdc.Init.Backcolor.Red = 0;
  if (HAL_LTDC_Init(&hltdc) != HAL_OK)
  {
    Error_Handler();
  }
  pLayerCfg.WindowX0 = 0;
  pLayerCfg.WindowX1 = 480;
  pLayerCfg.WindowY0 = 0;
  pLayerCfg.WindowY1 = 272;
  pLayerCfg.PixelFormat = LTDC_PIXEL_FORMAT_RGB565;
  pLayerCfg.Alpha = 255;
  pLayerCfg.Alpha0 = 255;
  pLayerCfg.BlendingFactor1 = LTDC_BLENDING_FACTOR1_CA;
  pLayerCfg.BlendingFactor2 = LTDC_BLENDING_FACTOR2_CA;
  pLayerCfg.FBStartAdress = LCD_ST_ADDR;
  pLayerCfg.ImageWidth = 480;
  pLayerCfg.ImageHeight = 272;
  pLayerCfg.Backcolor.Blue = 0;
  pLayerCfg.Backcolor.Green = 0;
  pLayerCfg.Backcolor.Red = 0;
  if (HAL_LTDC_ConfigLayer(&hltdc, &pLayerCfg, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN LTDC_Init 2 */
//  LTDC->SRCR = LTDC_SRCR_IMR;
//  printf("CFBLR=0x%08lX CFBLNR=%lu\n",
//         LTDC_Layer1->CFBLR, (uint32_t)LTDC_Layer1->CFBLNR);

  //	26pin -->	LTCD_B5 	--> PA3
  //	33pin -->	LTCD_VYSNC 	--> PA4
  //	9pin -->	LTCD_R4 	--> PA5
  //	15pin -->	LTCD_G2 	--> PA6
  //	24pin -->	LTCD_B3 	--> PA8
  //	10pin -->	LTCD_R5 	--> PA9
  //	25pin -->	LTCD_B4 	--> PA10
  //	8pin -->	LTCD_R3 	--> PB0
  //	11pin -->	LTCD_R6 	--> PB1
  //	27pin -->	LTCD_B6 	--> PB8
  //	28pin -->	LTCD_B7 	--> PB9
  //	17pin -->	LTCD_G4 	--> PB10
  //	18pin -->	LTCD_G5 	--> PB11
  //	32pin -->	LTCD_HSYNC 	--> PC6
  //	19pin -->	LTCD_G6 	--> PC7
  //	16pin -->	LTCD_G3 	--> PC9
  //	20pin -->	LTCD_G7 	--> PD3
  //	34pin -->	LTCD_DE 	--> PF10
  //	12pin -->	LTCD_G7 	--> PG6
  //	30pin -->	LTCD_CLK 	--> PG7

  /* USER CODE END LTDC_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart2, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart2, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/* FMC initialization function */
static void MX_FMC_Init(void)
{

  /* USER CODE BEGIN FMC_Init 0 */

  /* USER CODE END FMC_Init 0 */

  FMC_SDRAM_TimingTypeDef SdramTiming = {0};

  /* USER CODE BEGIN FMC_Init 1 */
  // SDRAM-CLK = FMC_CLK / 2 = 190MHz / 2 = 95MHz => 10.52ns
  /* USER CODE END FMC_Init 1 */

  /** Perform the SDRAM1 memory initialization sequence
  */
  hsdram1.Instance = FMC_SDRAM_DEVICE;
  /* hsdram1.Init */
  hsdram1.Init.SDBank = FMC_SDRAM_BANK1;
  hsdram1.Init.ColumnBitsNumber = FMC_SDRAM_COLUMN_BITS_NUM_8;
  hsdram1.Init.RowBitsNumber = FMC_SDRAM_ROW_BITS_NUM_12;
  hsdram1.Init.MemoryDataWidth = FMC_SDRAM_MEM_BUS_WIDTH_16;
  hsdram1.Init.InternalBankNumber = FMC_SDRAM_INTERN_BANKS_NUM_4;
  hsdram1.Init.CASLatency = FMC_SDRAM_CAS_LATENCY_2;
  hsdram1.Init.WriteProtection = FMC_SDRAM_WRITE_PROTECTION_DISABLE;
  hsdram1.Init.SDClockPeriod = FMC_SDRAM_CLOCK_PERIOD_2;
  hsdram1.Init.ReadBurst = FMC_SDRAM_RBURST_ENABLE;
  hsdram1.Init.ReadPipeDelay = FMC_SDRAM_RPIPE_DELAY_1;
  /* SdramTiming */
  SdramTiming.LoadToActiveDelay = 2;
  SdramTiming.ExitSelfRefreshDelay = 7;
  SdramTiming.SelfRefreshTime = 4;
  SdramTiming.RowCycleDelay = 7;
  SdramTiming.WriteRecoveryTime = 3;
  SdramTiming.RPDelay = 2;
  SdramTiming.RCDDelay = 2;

  if (HAL_SDRAM_Init(&hsdram1, &SdramTiming) != HAL_OK)
  {
    Error_Handler( );
  }

  /* USER CODE BEGIN FMC_Init 2 */
  static FMC_SDRAM_CommandTypeDef Command;


  Command.CommandMode            = FMC_SDRAM_CMD_CLK_ENABLE;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 1;
  Command.ModeRegisterDefinition = 0;

  if(HAL_SDRAM_SendCommand(&hsdram1, &Command, SDRAM_TIMEOUT) != HAL_OK)
  {
	 printf("[  ] sdram step 1 fail\n");
	 Error_Handler( );
  }

//  osDelay(1);
  HAL_Delay(1);


  Command.CommandMode            = FMC_SDRAM_CMD_PALL;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 1;
  Command.ModeRegisterDefinition = 0;
  if(HAL_SDRAM_SendCommand(&hsdram1, &Command, SDRAM_TIMEOUT) != HAL_OK)
  {
	printf("[  ] sdram step 3 fail\n");
	Error_Handler( );
  }

  Command.CommandMode            = FMC_SDRAM_CMD_AUTOREFRESH_MODE;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 8;
  Command.ModeRegisterDefinition = 0;
  if(HAL_SDRAM_SendCommand(&hsdram1, &Command, SDRAM_TIMEOUT) != HAL_OK)
  {
	printf("[  ] sdram step 4 fail\n");
    Error_Handler( );
  }

  uint32_t mode_reg = 0;

  mode_reg |= (2 << 0); // Burst Length = 4
  mode_reg |= (0 << 3); // Burst Type
                        //   0 : Sequential
                        //   1 : Interleaved
  mode_reg |= (2 << 4); // CAS Latency Mode
                        //   2 :
                        //   3 :
  mode_reg |= (0 << 7); // Operation Mode
  mode_reg |= (0 << 9); // Write Burst Mode
                        //   0 : Programmed Burst Length
                        //   1 : Single Location Access

  Command.CommandMode            = FMC_SDRAM_CMD_LOAD_MODE;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 1;
  Command.ModeRegisterDefinition = mode_reg;
  if(HAL_SDRAM_SendCommand(&hsdram1, &Command, SDRAM_TIMEOUT) != HAL_OK)
  {
	printf("[  ] sdram step 5 fail\n");
	Error_Handler( );
  }
// Step 6: Set the refresh rate counter
//
// refresh rate = (COUNT + 1) * SDRAM clock freq (95Mhz)
//
// COUNT = (SDRAM refresh period/Number of rows) - 20
//       = (64ms / 8192) - 20
//       = 7.81us * 95 - 20 = 722
  uint32_t fmc_hz   = FMC_GetKernelClock_Hz();
  uint32_t sdclk_hz = fmc_hz / 2; // SDClockPeriod=2 이면 FMC_CLK/2

  uint32_t refresh_count = SDRAM_RefreshCount_IS42S16400J(sdclk_hz);
  refresh_count = (refresh_count * 130) / 100;

  printf("FMC=%lu Hz, SDCLK=%lu Hz, refresh=%lu\r\n", fmc_hz, sdclk_hz, refresh_count);

  HAL_SDRAM_ProgramRefreshRate(&hsdram1, refresh_count);

  if (HAL_SDRAM_ProgramRefreshRate(&hsdram1, refresh_count) != HAL_OK)
  {
	  printf("[  ] sdram step 5 fail\n");
	  Error_Handler();
  }

  /* USER CODE END FMC_Init 2 */
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LCD_BAK_GPIO_Port, LCD_BAK_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8|GPIO_PIN_12, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOG, GPIO_PIN_12, GPIO_PIN_RESET);

  /*Configure GPIO pin : LCD_BAK_Pin */
  GPIO_InitStruct.Pin = LCD_BAK_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LCD_BAK_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : KEY_DATA3_Pin KEY_DATA4_Pin EN_A_Pin EN_B_Pin */
	GPIO_InitStruct.Pin = KEY_DATA3_Pin|KEY_DATA4_Pin|EN_A_Pin|EN_B_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PC8 PC12 */
  GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : KEY_DATA0_Pin KEY_DATA1_Pin KEY_DATA2_Pin */
  GPIO_InitStruct.Pin = KEY_DATA0_Pin|KEY_DATA1_Pin|KEY_DATA2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : LOCK_KEY_Pin LOCAL_KEY_Pin REMOTE_KEY_Pin */
  GPIO_InitStruct.Pin = LOCK_KEY_Pin|LOCAL_KEY_Pin|REMOTE_KEY_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pin : PG12 */
  GPIO_InitStruct.Pin = GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);

  /*AnalogSwitch Config */
  HAL_SYSCFG_AnalogSwitchConfig(SYSCFG_SWITCH_PA0, SYSCFG_SWITCH_PA0_CLOSE);

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */
/* USER CODE BEGIN 4 */
/**
 * @brief  Setup the network interface
 *   None
 * @retval None
 */

/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the MainTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void const * argument)
{
  /* init code for LWIP */
  MX_LWIP_Init();
  /* USER CODE BEGIN 5 */
  //사용자 ip 다시 설정
  //gete_way_ip
  //user_ip

  tcp_ip_config(&gnetif, user_ip, gete_way_ip);

  printf("Waiting for IP...\n");

  /* Wait until IP acquired */
  while (ip4_addr_isany_val(*netif_ip4_addr(&gnetif))) {
		osDelay(200);
  }
  printf("IP Ready: %s\n", ip4addr_ntoa(netif_ip4_addr(&gnetif)));

  osDelay(200);

  LOCK_TCPIP_CORE();
  btcp_connect = tcp_server_init(Port_No);

  UNLOCK_TCPIP_CORE();

//  sdram_test();

  LCD_ShowLogo();
  SCB_CleanDCache_by_Addr((uint32_t *)FrameBuffer, LCD_WIDTH * LCD_HEIGHT * 2); // 2 bytes per pixel
  osDelay(1000);

  lv_init();	//lvgl init
  lv_port_disp_init();	//display init
  lv_port_indev_init();	//input device init

  ui_strobe_t *ui = widgets_create_strobe_screen();
  lv_scr_load(ui->scr);

  lv_indev_t * enc = lv_port_indev_get_encoder();
  widgets_bind_encoder(ui, enc);


  uint32_t pre_time;

  pre_time = HAL_GetTick();
  /* Infinite loop */
  for(;;)
  {
	if(HAL_GetTick() - pre_time >= 500)
	{
		pre_time = HAL_GetTick();
		HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_12);

		if(g_tcp_new_data_flag)
		{
		  printf("Received new data: %.*s\n", (int)g_tcp_recv_len, g_tcp_recv_buffer);
		  g_tcp_new_data_flag = false;

		  char *response = "Ok\n";
		  tcp_send_data((uint8_t*)response, strlen(response));
		}
//		osDelay(250);
	}
	lv_tick_inc(1);
	lv_port_indev_poll_5ms();	//키 및 로터리 스캔
	lv_timer_handler();



    osDelay(1);

  }
  /* USER CODE END 5 */
}

 /* MPU Configuration */

void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct = {0};

  /* Disables the MPU */
  HAL_MPU_Disable();

  /** Initializes and configures the Region and the memory to be protected
  */
  MPU_InitStruct.Enable = MPU_REGION_ENABLE;
  MPU_InitStruct.Number = MPU_REGION_NUMBER0;
  MPU_InitStruct.BaseAddress = 0x0;
  MPU_InitStruct.Size = MPU_REGION_SIZE_4GB;
  MPU_InitStruct.SubRegionDisable = 0x87;
  MPU_InitStruct.TypeExtField = MPU_TEX_LEVEL0;
  MPU_InitStruct.AccessPermission = MPU_REGION_NO_ACCESS;
  MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_DISABLE;
  MPU_InitStruct.IsShareable = MPU_ACCESS_SHAREABLE;
  MPU_InitStruct.IsCacheable = MPU_ACCESS_NOT_CACHEABLE;
  MPU_InitStruct.IsBufferable = MPU_ACCESS_NOT_BUFFERABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /** Initializes and configures the Region and the memory to be protected
  */
  MPU_InitStruct.Number = MPU_REGION_NUMBER1;
  MPU_InitStruct.BaseAddress = 0x30020000;
  MPU_InitStruct.Size = MPU_REGION_SIZE_128KB;
  MPU_InitStruct.SubRegionDisable = 0x0;
  MPU_InitStruct.TypeExtField = MPU_TEX_LEVEL1;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.IsShareable = MPU_ACCESS_NOT_SHAREABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /** Initializes and configures the Region and the memory to be protected
  */
  MPU_InitStruct.Number = MPU_REGION_NUMBER2;
  MPU_InitStruct.BaseAddress = 0x30040000;
  MPU_InitStruct.Size = MPU_REGION_SIZE_512B;
  MPU_InitStruct.TypeExtField = MPU_TEX_LEVEL0;
  MPU_InitStruct.IsShareable = MPU_ACCESS_SHAREABLE;
  MPU_InitStruct.IsBufferable = MPU_ACCESS_BUFFERABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /** Initializes and configures the Region and the memory to be protected
  */
  MPU_InitStruct.Number = MPU_REGION_NUMBER3;
  MPU_InitStruct.BaseAddress = 0xC0000000;
  MPU_InitStruct.Size = MPU_REGION_SIZE_8MB;
  MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_DISABLE;
  MPU_InitStruct.IsShareable = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.IsBufferable = MPU_ACCESS_NOT_BUFFERABLE;
  MPU_InitStruct.IsCacheable = MPU_ACCESS_NOT_CACHEABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);
  /* Enables the MPU */
  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);

}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM1 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM1)
  {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
