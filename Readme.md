

주의 사항.
git 주소
https://github.com/alrenyang/stm32h743zit6_TRI.git

1 헤더추가 -----------------------------------------
Middlewares/Third_Party/LwIP/src/core/tcp.c
#include "lwip/netif.h" 에 ioc로 업데이트 후 추가해야함

Middlewares/Third_Party/LwIP/src/include/lwip/tcp.h
#include "lwip/netif.h" 에 ioc로 업데이트 후 추가해야함

SystemClock_Config()의 맨 마지막에서 호출
PeriphCommonClock_Config();

[주요 코드 설명]
g_tcp_recv_buffer 수신시에 데이터 저장
#define USE_ECHO	1	//에코 기능 활

void tcp_send_data(uint8_t *data, uint16_t len);	//tcp ip로 데이터 send
void tcp_ip_config(struct netif *netif, uint8_t *user_ip, uint8_t *gete_way_ip);	//사용자가 자신의 ip와 게이트웨이를 다시 지정.


빌드 옵션 추가
Project Properties → C/C++ Build → Settings → MCU GCC Linker → Miscellaneous → Other flags

-Wl,-z,noexecstack

2 RTOS 크기 변경 -----------------------------------------

osThreadDef(MainTask, StartDefaultTask, osPriorityNormal, 0, 2048);

3 MPU 세팅 확인 -----------------------------------------

  MPU_InitStruct.Number = MPU_REGION_NUMBER3;
  MPU_InitStruct.BaseAddress = 0xC0000000;
  MPU_InitStruct.Size = MPU_REGION_SIZE_8MB;
  MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_DISABLE;
  MPU_InitStruct.IsShareable = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.IsBufferable = MPU_ACCESS_NOT_BUFFERABLE;
  MPU_InitStruct.IsCacheable = MPU_ACCESS_NOT_CACHEABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);
  
  
 4 FMC세팅확인 -----------------------------------------
  
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
  
 
5 LTDC 세팅 확인  -----------------------------------------
  pLayerCfg.FBStartAdress = LCD_ST_ADDR;