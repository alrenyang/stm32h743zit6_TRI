/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : LWIP.h
  * Description        : This file provides code for the configuration
  *                      of the LWIP.
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
  *************************************************************************

  */
/* USER CODE END Header */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __mx_lwip_H
#define __mx_lwip_H
#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "lwip/opt.h"
#include "lwip/mem.h"
#include "lwip/memp.h"
#include "netif/etharp.h"
#include "lwip/dhcp.h"
#include "lwip/netif.h"
#include "lwip/timeouts.h"
#include "ethernetif.h"

/* Includes for RTOS ---------------------------------------------------------*/
#if WITH_RTOS
#include "lwip/tcpip.h"
#endif /* WITH_RTOS */

/* USER CODE BEGIN 0 */
 /*Static IP ADDRESS: IP_ADDR0.IP_ADDR1.IP_ADDR2.IP_ADDR3 */
 #define IP_ADDR0   ((uint8_t) 198U)
 #define IP_ADDR1   ((uint8_t) 162U)
 #define IP_ADDR2   ((uint8_t) 0U)
 #define IP_ADDR3   ((uint8_t) 10U)
 /*NETMASK*/
 #define NETMASK_ADDR0   ((uint8_t) 255U)
 #define NETMASK_ADDR1   ((uint8_t) 255U)
 #define NETMASK_ADDR2   ((uint8_t) 255U)
 #define NETMASK_ADDR3   ((uint8_t) 0U)
 /*Gateway Address*/
 #define GW_ADDR0   ((uint8_t) 198U)
 #define GW_ADDR1   ((uint8_t) 162U)
 #define GW_ADDR2   ((uint8_t) 0U)
 #define GW_ADDR3   ((uint8_t) 1U)
 //void ethernet_link_status_updated(struct netif *netif);
 void Ethernet_Link_Periodic_Handle(struct netif *netif);
 #if LWIP_DHCP
 void DHCP_Process(struct netif *netif);
 void DHCP_Periodic_Handle(struct netif *netif);
 #endif
/* USER CODE END 0 */

/* Global Variables ----------------------------------------------------------*/
extern ETH_HandleTypeDef heth;

/* LWIP init function */
void MX_LWIP_Init(void);

#if !WITH_RTOS
/* USER CODE BEGIN 1 */
/* Function defined in lwip.c to:
 *   - Read a received packet from the Ethernet buffers
 *   - Send it to the lwIP stack for handling
 *   - Handle timeouts if NO_SYS_NO_TIMERS not set
 */
void MX_LWIP_Process(void);

/* USER CODE END 1 */
#endif /* WITH_RTOS */

#ifdef __cplusplus
}
#endif
#endif /*__ mx_lwip_H */

/**
  * @}
  */

/**
  * @}
  */
