//dma  transfer need 0,0x4,0x8,0xc address,tcp sometime not 0,0x4,0x8,0xc
/*
 * Copyright (C) 2018 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * iperf -s -i 5 -w 2M :pc server 192.168.1.100 (900Mbps) -->zed 192.168.1.10
 *
 Xil_DCacheFlushRange((u32)TxBufferPtr, MAX_PKT_LEN);//数据刷新到DDR中
 *
�b?��PS-PL��?��DMA???�A���i�קK?�J��Cache??�C���Ѧb?��?�@�UCache����?��k�C�䤤?�ҤFforums.xilinx.com��?�z��k�C
������??���\DMA?�ޤJCache??�]??�W??Cache�@�P��??�^�C
PS�MPL���b?��?��APS�q?DDR���??DDR�s?��?��??�A?�F�[�t�A�`�`?�@��?�u?�s�]Cache�^�A�ӥB���O??�@??�u?�s�A�ӬO??�@��]Xilinx??�@��A�YLine�A�@��?��?32�^�C??�n?�ܩ�?�A�U�@��??�t��?�[�֡F����?�]�ܩ�?�A�N�OCache����?�u�p�G?�ͤF��?�A���ਲ਼�t�ϬM��DDR2???�u���A�Ϥ���M�C�]���A?PL�q?DMA�ק�FDDR2?�u?�ACPU�i��?�����D?�ͤF�Ǥ��\�A���쪺?�u���M�OCache����?����?��?�u�C
�b�r��???�A?��Cache��??����k�N�O�T��Cache�C
#include &quot;xil_cache.h&quot;
void Xil_DCacheDisable(void);
??�ާ@�Z�ACPU?����??DDR?�s�A??���O�������C???�M?���CCPU�ʯ�A��?�ƤF?�u??�ާ@�A?�_��ݪ���k�C

�t�~�@���ާ@�n�h�[�@�D��?�A�b�ڪ��峹�i??��?�j??��?AXI-HP���f+DMA+GIC?�{���A?�X���ҵ{����Cache Flush�MCache Invalidate�ާ@�C?�r���z�ѡAFlush�N�O��Cache����?�u�y��X�h�A�M��Cache�A�]�N�O?Cache��?�e����DDR���h�F��Cache Invalidate���??�ť�Cache����?�e?�ġA�ݭn?DDR�����s�[?�A�Y��?�u?DDR���Ԩ�Cache��?�C
�z�ѤF??��z�A�b?�{��?�Ԥߨ��N�D�`�����a�F�I
#include &quot;xil_cache.h&quot;
//??���\��?�e???sendram
Xil_DCacheFlushRange((u32)sendram,sizeofbuffer);//??�e��s��DDR
//???�eDMA?�{�C�C�C�C

//??����DMA?�{�C�C�C�C�C
Xil_DCacheInvalidateRange((u32)recvram,sizeofbuffer);//?DDR?�e��?Cache
//?recvram��?��?�u�a�I
 *


�Ĥ@����k�G??�ʼɡA����?cache??�A??���ϥ�cache�A??�OCPU?�OPL���O������sDDR����?�u�A�ҥH���s�bCache�@�P�ʪ�??�C

         ��l�ƪ�?�ԥ[�J�H�U�H�U?�y�G

           #include "xil_cache.h"

           Xil_DCacheDisable();
           Xil_ICacheDisable();

           ��?����k���ʳ��A�Ѥ_Cache??�ACPU?�⪺��??�G�O�s�bDDR?�s���A�C����?�u?DDR���A�Ӥ��OCache�A�]���ʯ�?��?�U���C

      �ĤG����k�G

           CPU??�u?�~?�ACPU?��?�u�Z�A��??�u�s�bDcache���A??�ݭncache��??�a�}��cacheline��s��?�s���G

           Xil_DCacheFlushRange(DDR_BASE,Length);//����??��?��???�u��DDR�a�}�A?�u?�ס]�r???��^

           PL�~????�u?CPU�ACPU��??�z�C�Ѥ_CPU����?Dcache���d�ݬO�_��DDR��???�e�A�p�G����?�A����?cache���A?�N????�A�]?�̷s?�u�bDDR���A�Ӥ��bcache���A�]�����̪����k�O�bDMA?�e?�l�e�A?cache���O?DDR�a�}��??�������@��invalid�A??CPU?��???cache?��??��cacheline�A�N?����?DDR��?�u�A?�ӫO??����?�O��s?���C

           �]���b��DMA�a�}�i?PL�~?�A�b????�e�A���@��cacheline��invalid�ާ@�G

           Xil_DCacheInvalidateRange(IMAGES_OUT_BASE & 0xffffffc0,(length/cache_line_size+1)*cache_line_size); //�`�N�a�}��?cacheline??�C?�פ]��?cache line??�C

�䤤coretex-A9��cache_line_size�O32�r?�A A53�O64�r?�C

            ??�G�bSDK�r�]?�ҤU�n�O��cache�@�P�ʡA�n��??cache�A���C�ʯ�F�n���N?���ݭn�b�X�쪺�a�贡�Jcache flush�Ϊ�invalid?�y�C

��?�O�GCPU��q?��?�u�A�ݭn��s��DDR��?��L??�ϥΡA��Dcacheflush�A�O?��L??�ݨ�̷s?�u�CCPU�Q�n������DDR����?�u�A��InvalidDcacheFlush�A�O?cache���O�Q�~?��s?��?�u�Ainvalid?�`�Ncache line??�C
 *
 *
 *
 *
  Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled

Xil_DCacheFlushRange((u32)TxPacket, MAX_PKT_LEN);
//�̫O?CACHE����?�^��MM��




 Invalidate the DestBuffer before receiving the data, in case the Data Cache is enabled
Xil_DCacheInvalidateRange((u32)RxPacket, MAX_PKT_LEN);
//��CACHE?�쪺?�u�@?�A�A��??��?�A����?MEMORY?���C




��?�N�O?��MEMORY�MCACHE����???�G

?CACHE?�u��s��MEMORY�A��Xil_DCacheFlushRange�C

?MEMORY��?�u��s��CACHE�]?�M���O?�ߧY��s�A�O�b�Z?��??���ݭn��?�ԧ�s�^�A��Xil_DCacheInvalidateRange�C




 */
    #include "xuartps.h"
#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "xgpio_l.h"
#include "xgpio.h"
#include "user.h"
/*
extern long int bt1;
extern long int bt2;
extern long int bt3;
extern long int bt4;
*/
///dma
u8 *tcp0_dma;
u8 fnet=1;

#include "xaxidma.h"
#include "dma.h"
/*****************************************************************************/
/**
 *
 * @file xaxidma_example_simple_intr.c
 *
 * This file demonstrates how to use the xaxidma driver on the Xilinx AXI
 * DMA core (AXIDMA) to transfer packets.in interrupt mode when the AXIDMA core
 * is configured in simple mode
 *
 * This code assumes a loopback hardware widget is connected to the AXI DMA
 * core for data packet loopback.
 *
 * To see the debug print, you need a Uart16550 or uartlite in your system,
 * and please set "-DDEBUG" in your compiler options. You need to rebuild your
 * software executable.
 *
 * Make sure that MEMORY_BASE is defined properly as per the HW system. The
 * h/w system built in Area mode has a maximum DDR memory limit of 64MB. In
 * throughput mode, it is 512MB.  These limits are need to ensured for
 * proper operation of this code.
 *
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 4.00a rkv  02/22/11 New example created for simple DMA, this example is for
 *                  simple DMA,Added interrupt support for Zynq.
 * 4.00a srt  08/04/11 Changed a typo in the RxIntrHandler, changed
 *               XAXIDMA_DMA_TO_DEVICE to XAXIDMA_DEVICE_TO_DMA
 * 5.00a srt  03/06/12 Added Flushing and Invalidation of Caches to fix CRs
 *               648103, 648701.
 *               Added V7 DDR Base Address to fix CR 649405.
 * 6.00a srt  03/27/12 Changed API calls to support MCDMA driver.
 * 7.00a srt  06/18/12 API calls are reverted back for backward compatibility.
 * 7.01a srt  11/02/12 Buffer sizes (Tx and Rx) are modified to meet maximum
 *               DDR memory limit of the h/w system built with Area mode
 * 7.02a srt  03/01/13 Updated DDR base address for IPI designs (CR 703656).
 * 9.1   adk  01/07/16 Updated DDR base address for Ultrascale (CR 799532) and
 *               removed the defines for S6/V6.
 * 9.2   vak  15/04/16 Fixed compilation warnings in the example
 * </pre>
 *
 * ***************************************************************************
 */

/***************************** Include Files *********************************/

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"

#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"       /* to use uartns550 */
#endif


#ifdef XPAR_INTC_0_DEVICE_ID
 #include "xintc.h"
#else
 #include "xscugic.h"
#endif

/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID        XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR        XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define DDR_BASE_ADDR    XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define DDR_BASE_ADDR    XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR    XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H,        DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR        0x10000000 //0x01000000
#else
#define MEM_BASE_ADDR        (DDR_BASE_ADDR + 0x1000000)
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#define RX_INTR_ID        XPAR_INTC_0_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID        XPAR_INTC_0_AXIDMA_0_MM2S_INTROUT_VEC_ID
#else
#define RX_INTR_ID        XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID        XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID
#endif

//#define TX_BUFFER_BASE        (MEM_BASE_ADDR + 0x00100000)  -->0Xxxxx2 0Xxxxx3 fail 0Xxxxx0 0Xxxxx4 ok
#define TX_BUFFER_BASE        (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE        (MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH        (MEM_BASE_ADDR + 0x004FFFFF)

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC        XIntc
 #define INTC_HANDLER    XIntc_InterruptHandler
#else
 #define INTC        XScuGic
 #define INTC_HANDLER    XScuGic_InterruptHandler
#endif


/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER    10000

#define TEST_START_VALUE    0xC
/*
 * Buffer and Buffer Descriptor related constant definition
 */
#define MAX_PKT_LEN        0x100

#define NUMBER_OF_TRANSFERS    10

/* The interrupt coalescing threshold and delay timer threshold
 * Valid range is 1 to 255
 *
 * We set the coalescing threshold to be the total number of packets.
 * The receive side will only get one completion interrupt for this example.
 */

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

static int CheckData(int Length, u8 StartValue);
static int CheckData1(int Length, u8 StartValue);
static int CheckData2(int Length, u8 StartValue);
static int CheckData3(int Length, u8 StartValue);
Dma0DDR2IP(u8 *TxBufferPtr,int TxMAX_PKT_LEN);

static void TxIntrHandler(void *Callback);
static void RxIntrHandler(void *Callback);
static void TxIntrHandler1(void *Callback);
static void RxIntrHandler1(void *Callback);
static void TxIntrHandler2(void *Callback);
static void RxIntrHandler2(void *Callback);
static void TxIntrHandler3(void *Callback);
static void RxIntrHandler3(void *Callback);




static int SetupIntrSystem(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
static int SetupIntrSystem1(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
static int SetupIntrSystem2(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
static int SetupIntrSystem3(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);

static void DisableIntrSystem(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId);
static void DisableIntrSystem1(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId);
static void DisableIntrSystem2(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId);
static void DisableIntrSystem3(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId);



/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */


static XAxiDma AxiDma;        /* Instance of the XAxiDma */
static XAxiDma AxiDma0;        /* Instance of the XAxiDma */
static XAxiDma AxiDma1;        /* Instance of the XAxiDma */
static XAxiDma AxiDma2;        /* Instance of the XAxiDma */
static XAxiDma AxiDma3;        /* Instance of the XAxiDma */

static INTC Intc;    /* Instance of the Interrupt Controller */

/*
 * Flags interrupt handlers use to notify the application context the events.
 */
volatile int TxDone;
volatile int RxDone;
volatile int Error;
volatile int TxDone1;
volatile int RxDone1;
volatile int Error1;
volatile int TxDone2;
volatile int RxDone2;
volatile int Error2;
volatile int TxDone3;
volatile int RxDone3;
volatile int Error3;

/*****************************************************************************/
/**
*
* Main function
*
* This function is the main entry of the interrupt test. It does the following:
*    Set up the output terminal if UART16550 is in the hardware build
*    Initialize the DMA engine
*    Set up Tx and Rx channels
*    Set up the interrupt system for the Tx and Rx interrupts
*    Submit a transfer
*    Wait for the transfer to finish
*    Check transfer status
*    Disable Tx and Rx interrupts
*    Print test status and exit
*
* @param    None
*
* @return
*        - XST_SUCCESS if example finishes successfully
*        - XST_FAILURE if example fails.
*
* @note        None.
*
******************************************************************************/

#if psdma
//#include "xdmaps.h"
#include "xil_cache.h"
#include "xscugic.h"
#include "dmaps_header.h"
#include "xscugic.h"
#include "xil_exception.h"
//#include "xaxidma.h"
//XAxiDma AxiDma;
static XScuGic intc;
#endif


///
#if LWIP_IPV6==1
#include "lwip/ip6_addr.h"
#include "lwip/ip6.h"
#else

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"
#endif /* LWIP_IPV6 */

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

void platform_enable_interrupts(void);
void start_application(void);
void start_application1(void);
void start_application2(void);
void start_application3(void);
void transfer_data(void);
void print_app_header(void);

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

struct netif server_netif;

#if LWIP_IPV6==1
static void print_ipv6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %s\n\r", inet6_ntoa(*ip));
}
#else
static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}
#endif /* LWIP_IPV6 */

int init_dma0(){

		int Status;
        XAxiDma_Config *Config;
#if ok
        Config = XAxiDma_LookupConfig(DMA_DEV_ID);
      	    if (!Config) {
      	        xil_printf("No config found for %d\r\n", DMA_DEV_ID);

      	        return XST_FAILURE;
      	    }

      	    /* Initialize DMA engine */
      	    Status = XAxiDma_CfgInitialize(&AxiDma, Config);

      	    if (Status != XST_SUCCESS) {
      	        xil_printf("Initialization failed %d\r\n", Status);
      	        return XST_FAILURE;
      	    }

      	    if(XAxiDma_HasSg(&AxiDma)){
      	        xil_printf("Device configured as SG mode \r\n");
      	        return XST_FAILURE;
      	    }

      	    /* Set up Interrupt system  */
      	    Status = SetupIntrSystem(&Intc, &AxiDma, TX_INTR_ID, RX_INTR_ID);
      	    if (Status != XST_SUCCESS) {

      	        xil_printf("Failed intr setup\r\n");
      	        return XST_FAILURE;
      	    }

      	    /* Disable all interrupts before setup */

      	    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
      	                        XAXIDMA_DMA_TO_DEVICE);

      	    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
      	                XAXIDMA_DEVICE_TO_DMA);

      	    /* Enable all interrupts */
      	    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
      	                            XAXIDMA_DMA_TO_DEVICE);


      	    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
      	                            XAXIDMA_DEVICE_TO_DMA);

#else
#define old2 0
#if old2
if(0)
{
            Config = XAxiDma_LookupConfig(DMA_DEV_ID);
          	    if (!Config) {
          	        xil_printf("No config found for %d\r\n", DMA_DEV_ID);

          	        return XST_FAILURE;
          	    }

          	    /* Initialize DMA engine */
          	    Status = XAxiDma_CfgInitialize(&AxiDma0, Config);

          	    if (Status != XST_SUCCESS) {
          	        xil_printf("Initialization failed %d\r\n", Status);
          	        return XST_FAILURE;
          	    }

          	    if(XAxiDma_HasSg(&AxiDma0)){
          	        xil_printf("Device configured as SG mode \r\n");
          	        return XST_FAILURE;
          	    }

          	    /* Set up Interrupt system  */
          	    Status = SetupIntrSystem(&Intc, &AxiDma0, TX_INTR_ID, RX_INTR_ID);
          	    if (Status != XST_SUCCESS) {

          	        xil_printf("Failed intr setup\r\n");
          	        return XST_FAILURE;
          	    }

          	    /* Disable all interrupts before setup */

          	    XAxiDma_IntrDisable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
          	                        XAXIDMA_DMA_TO_DEVICE);

          	    XAxiDma_IntrDisable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
          	                XAXIDMA_DEVICE_TO_DMA);

          	    /* Enable all interrupts */
          	    XAxiDma_IntrEnable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
          	                            XAXIDMA_DMA_TO_DEVICE);


          	    XAxiDma_IntrEnable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
          	                            XAXIDMA_DEVICE_TO_DMA);
}
#endif
#define tom 1
#if  tom
        Config = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	    if (!Config) {
	        xil_printf("No config found for %d\r\n", XPAR_AXIDMA_0_DEVICE_ID);

	        return XST_FAILURE;
	    }

	    /* Initialize DMA engine */
	    Status = XAxiDma_CfgInitialize(&AxiDma0, Config);

	    if (Status != XST_SUCCESS) {
	        xil_printf("Initialization failed %d\r\n", Status);
	        return XST_FAILURE;
	    }

	    if(XAxiDma_HasSg(&AxiDma0)){
	        xil_printf("Device configured as SG mode \r\n");
	        return XST_FAILURE;
	    }

	    /* Set up Interrupt system  */  //tx rx
	    Status = SetupIntrSystem(&Intc, &AxiDma0, XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID, XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID);
	    if (Status != XST_SUCCESS) {

	        xil_printf("Failed intr setup\r\n");
	        return XST_FAILURE;
	    }

	    /* Disable all interrupts before setup */

	    XAxiDma_IntrDisable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
	                        XAXIDMA_DMA_TO_DEVICE);

	    XAxiDma_IntrDisable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
	                XAXIDMA_DEVICE_TO_DMA);

	    /* Enable all interrupts */
	    XAxiDma_IntrEnable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DMA_TO_DEVICE);


	    XAxiDma_IntrEnable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DEVICE_TO_DMA);
#endif
#endif
#if 0
XAxiDma_Config *CfgPtr;
int status;
CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
if(!CfgPtr){
print("Error looking for AXI DMA config\n\r");
return XST_FAILURE;
}
status = XAxiDma_CfgInitialize(&AxiDma,CfgPtr);
if(status != XST_SUCCESS){
print("Error initializing DMA\n\r");
return XST_FAILURE;
}
//check for scatter gather mode
if(XAxiDma_HasSg(&AxiDma)){
print("Error DMA configured in SG mode\n\r");
return XST_FAILURE;
}
/* Disable interrupts, we use polling mode */
XAxiDma_IntrDisable(&AxiDma,
XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
XAxiDma_IntrDisable(&AxiDma,
XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
return XST_SUCCESS;
#endif
}




int init_dma1(){

		int Status;
        XAxiDma_Config *Config;
        xil_printf("init_dma1\r\n");

#define tom 1
#if  tom
        Config = XAxiDma_LookupConfig(XPAR_AXIDMA_1_DEVICE_ID);
	    if (!Config) {
	        xil_printf("No config found for %d\r\n", XPAR_AXIDMA_1_DEVICE_ID);

	        return XST_FAILURE;
	    }

	    /* Initialize DMA engine */
	    Status = XAxiDma_CfgInitialize(&AxiDma1, Config);

	    if (Status != XST_SUCCESS) {
	        xil_printf("Initialization failed %d\r\n", Status);
	        return XST_FAILURE;
	    }

	    if(XAxiDma_HasSg(&AxiDma1)){
	        xil_printf("Device configured as SG mode \r\n");
	        return XST_FAILURE;
	    }

	    /* Set up Interrupt system  */  //tx rx
	    Status = SetupIntrSystem1(&Intc, &AxiDma1, XPAR_FABRIC_AXIDMA_1_MM2S_INTROUT_VEC_ID, XPAR_FABRIC_AXIDMA_1_S2MM_INTROUT_VEC_ID);
	    if (Status != XST_SUCCESS) {

	        xil_printf("Failed intr setup\r\n");
	        return XST_FAILURE;
	    }

	    /* Disable all interrupts before setup */

	    XAxiDma_IntrDisable(&AxiDma1, XAXIDMA_IRQ_ALL_MASK,
	                        XAXIDMA_DMA_TO_DEVICE);

	    XAxiDma_IntrDisable(&AxiDma1, XAXIDMA_IRQ_ALL_MASK,
	                XAXIDMA_DEVICE_TO_DMA);

	    /* Enable all interrupts */
	    XAxiDma_IntrEnable(&AxiDma1, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DMA_TO_DEVICE);


	    XAxiDma_IntrEnable(&AxiDma1, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DEVICE_TO_DMA);
#endif


}




int init_dma2(){

		int Status;
        XAxiDma_Config *Config;
        xil_printf("init_dma2\r\n");


        Config = XAxiDma_LookupConfig(XPAR_AXIDMA_2_DEVICE_ID);
	    if (!Config) {
	        xil_printf("No config found for %d\r\n", XPAR_AXIDMA_2_DEVICE_ID);

	        return XST_FAILURE;
	    }

	    /* Initialize DMA engine */
	    Status = XAxiDma_CfgInitialize(&AxiDma2, Config);

	    if (Status != XST_SUCCESS) {
	        xil_printf("Initialization failed %d\r\n", Status);
	        return XST_FAILURE;
	    }

	    if(XAxiDma_HasSg(&AxiDma2)){
	        xil_printf("Device configured as SG mode \r\n");
	        return XST_FAILURE;
	    }

	    /* Set up Interrupt system  */  //tx rx
	    Status = SetupIntrSystem2(&Intc, &AxiDma2, XPAR_FABRIC_AXIDMA_2_MM2S_INTROUT_VEC_ID, XPAR_FABRIC_AXIDMA_2_S2MM_INTROUT_VEC_ID);
	    if (Status != XST_SUCCESS) {

	        xil_printf("Failed intr setup\r\n");
	        return XST_FAILURE;
	    }

	    /* Disable all interrupts before setup */

	    XAxiDma_IntrDisable(&AxiDma2, XAXIDMA_IRQ_ALL_MASK,
	                        XAXIDMA_DMA_TO_DEVICE);

	    XAxiDma_IntrDisable(&AxiDma2, XAXIDMA_IRQ_ALL_MASK,
	                XAXIDMA_DEVICE_TO_DMA);

	    /* Enable all interrupts */
	    XAxiDma_IntrEnable(&AxiDma2, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DMA_TO_DEVICE);


	    XAxiDma_IntrEnable(&AxiDma2, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DEVICE_TO_DMA);


}



int init_dma3(){

		int Status;
        XAxiDma_Config *Config;
        xil_printf("init_dma3\r\n");

        Config = XAxiDma_LookupConfig(XPAR_AXIDMA_3_DEVICE_ID);
	    if (!Config) {
	        xil_printf("No config found for %d\r\n", XPAR_AXIDMA_3_DEVICE_ID);

	        return XST_FAILURE;
	    }

	    /* Initialize DMA engine */
	    Status = XAxiDma_CfgInitialize(&AxiDma3, Config);

	    if (Status != XST_SUCCESS) {
	        xil_printf("Initialization failed %d\r\n", Status);
	        return XST_FAILURE;
	    }

	    if(XAxiDma_HasSg(&AxiDma3)){
	        xil_printf("Device configured as SG mode \r\n");
	        return XST_FAILURE;
	    }

	    /* Set up Interrupt system  */  //tx rx
	    Status = SetupIntrSystem3(&Intc, &AxiDma3, XPAR_FABRIC_AXIDMA_3_MM2S_INTROUT_VEC_ID, XPAR_FABRIC_AXIDMA_3_S2MM_INTROUT_VEC_ID);
	    if (Status != XST_SUCCESS) {

	        xil_printf("Failed intr setup\r\n");
	        return XST_FAILURE;
	    }

	    /* Disable all interrupts before setup */

	    XAxiDma_IntrDisable(&AxiDma3, XAXIDMA_IRQ_ALL_MASK,
	                        XAXIDMA_DMA_TO_DEVICE);

	    XAxiDma_IntrDisable(&AxiDma3, XAXIDMA_IRQ_ALL_MASK,
	                XAXIDMA_DEVICE_TO_DMA);

	    /* Enable all interrupts */
	    XAxiDma_IntrEnable(&AxiDma3, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DMA_TO_DEVICE);


	    XAxiDma_IntrEnable(&AxiDma3, XAXIDMA_IRQ_ALL_MASK,
	                            XAXIDMA_DEVICE_TO_DMA);


}

int main(void)
{
	struct netif *netif;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

	/* Define this board specific macro in order perform PHY reset
	 * on ZCU102
	 */
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	init_platform();
	   //Xil_ICacheEnable();
	   //Xil_DCacheEnable();

int MAX_PKT_LEN1=9;

	xil_printf("\r\n\r\n");
	xil_printf("-----lwIP RAW Mode TCP Client Application-----\r\n");
#if 1
	//DMA_INIT();
	{
	    int Status;

	    int Tries = NUMBER_OF_TRANSFERS;
	    int Index;
	    u8 *TxBufferPtr;
	    u8 *RxBufferPtr;
	    u8 Value;
	    TxBufferPtr = (u8 *)TX_BUFFER_BASE ;
	    RxBufferPtr = (u8 *)RX_BUFFER_BASE;
	    /* Initial setup for Uart16550 */
	#ifdef XPAR_UARTNS550_0_BASEADDR

	    Uart550_Setup();

	#endif

	    xil_printf("\r\n--- Entering main() --- \r\n");
	    init_dma0();
	    init_dma1();
	    init_dma2();
	    init_dma3();

	    /* Initialize flags before start transfer test  */
	    TxDone = 0;
	    RxDone = 0;
	    Error = 0;
#if 0
	    Value = 0X70;//TEST_START_VALUE+2;

	    for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
	            TxBufferPtr[Index] = Value;
	            RxBufferPtr[Index] = 0;

	            Value = (Value + 1) & 0xFF;
	    }
	    CheckData(MAX_PKT_LEN, 0xC);


	    Dma0DDR2IP((u8 *)TX_BUFFER_BASE,12);
	    Dma0IP2DDR((u8 *)0x11000000,12);
	    Status = CheckData(MAX_PKT_LEN, 0xC);
	    Dma0DDR2IP((u8 *)(TX_BUFFER_BASE+0),12);
	    Dma0IP2DDR((u8 *)(0x11000000+32),12);
	    Status = CheckData(MAX_PKT_LEN, 0xC);

	    /*
	    Dma0DDR2IP((u8 *)TX_BUFFER_BASE,12);
	    Dma0IP2DDR((u8 *)RX_BUFFER_BASE,12);
	    Status = CheckData(MAX_PKT_LEN, 0xC);
	    Dma0DDR2IP((u8 *)(TX_BUFFER_BASE+12),12);
	    Dma0IP2DDR((u8 *)(RX_BUFFER_BASE+12),12);
	    Status = CheckData(MAX_PKT_LEN, 0xC);
*/

	    xil_printf("\r\n--- Entering main() --- \r\n");
#if 0



	    /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	     * is enabled
	     */
	    Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
	#ifdef __aarch64__
	    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
	#endif
        Status = XAxiDma_SimpleTransfer(&AxiDma0,(UINTPTR) TxBufferPtr,
                    MAX_PKT_LEN1*sizeof(u16), XAXIDMA_DMA_TO_DEVICE);

        if (Status != XST_SUCCESS) {
            return XST_FAILURE;
        }
        while (!TxDone  && !Error) {
        	  xil_printf("TxDone %d %d\r\n", TxDone,Error);
           	//usleep(5000000);
                /* NOP */
        }

	    /* Send a packet */
	    //for(Index = 0; Index < Tries; Index ++)
	        {

	        Status = XAxiDma_SimpleTransfer(&AxiDma0,(UINTPTR) RxBufferPtr,
	                    MAX_PKT_LEN1, XAXIDMA_DEVICE_TO_DMA);

	        if (Status != XST_SUCCESS) {
	            return XST_FAILURE;
	        }

	        while (!RxDone  && !Error) {
	        	  xil_printf("RxDone %d %d\r\n", RxDone,Error);
	                /* NOP */
	        }


	        /*
	         * Wait TX done and RX done
	         */
	        while (!TxDone && !RxDone && !Error) {
	                /* NOP */
	        }

	        if (Error) {
	            xil_printf("Failed test transmit%s done, "
	            "receive%s done\r\n", TxDone? "":" not",
	                            RxDone? "":" not");

	            goto Done;

	        }

	        /*
	         * Test finished, check data
	         */
	        Status = CheckData(MAX_PKT_LEN, 0xC);
	        if (Status != XST_SUCCESS) {
	            xil_printf("Data check failed\r\n");
	            goto Done;
	        }
	    }
Done:

	    xil_printf("AXI DMA interrupt example test passed\r\n\r\n\r\n\r\n DMA1 \r\n ");
	    Status = CheckData(MAX_PKT_LEN, 0xC);
	   //while(1);
#define dma1 1
#if dma1

	    //init_dma1();
	    /* Initialize flags before start transfer test  */
	    	    TxDone1 = 0;
	    	    RxDone1 = 0;
	    	    Error1 = 0;

	    	    Value = 5;//TEST_START_VALUE+0x22;

	    	    for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
	    	            TxBufferPtr[Index] = Value;

	    	            Value = (Value + 1) & 0xFF;
	    	    }

	    	    /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	    	     * is enabled
	    	     */
	    	    Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
	    	//#ifdef __aarch64__
	    	    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
	    	//#endif
	            Status = XAxiDma_SimpleTransfer(&AxiDma1,(UINTPTR) TxBufferPtr,
	                        MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

	            if (Status != XST_SUCCESS) {
	                return XST_FAILURE;
	            }
	            while (!TxDone1  && !Error1) {
	            	  xil_printf("TxDone %d %d\r\n", TxDone1,Error1);
	               //	usleep(5000000);
	                    /* NOP */
	            }

	    	    /* Send a packet */
	    	    //for(Index = 0; Index < Tries; Index ++)
	    	        {

	    	        Status = XAxiDma_SimpleTransfer(&AxiDma1,(UINTPTR) RxBufferPtr,
	    	                    MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

	    	        if (Status != XST_SUCCESS) {
	    	            return XST_FAILURE;
	    	        }

	    	        while (!RxDone1  && !Error1) {
	    	        	  xil_printf("RxDone %d %d\r\n", RxDone1,Error1);
	    	                /* NOP */
	    	        }


	    	        /*
	    	         * Wait TX done and RX done
	    	         */
	    	        while (!TxDone1 && !RxDone1 && !Error1) {
	    	                /* NOP */
	    	        }

	    	        if (Error1) {
	    	            xil_printf("Failed test transmit%s done, "
	    	            "receive%s done\r\n", TxDone1? "":" not",
	    	                            RxDone1? "":" not");

	    	            goto Done1;

	    	        }

	    	        /*
	    	         * Test finished, check data
	    	         */
	    	        Status = CheckData1(MAX_PKT_LEN, 0x1C);
	    	        if (Status != XST_SUCCESS) {
	    	            xil_printf("Data check failed\r\n");
	    	            goto Done1;
	    	        }
	    	    }


	    	    xil_printf("AXI DMA1 interrupt example test passed\r\n");

	    /* Disable TX and RX Ring interrupts and return success */

	    DisableIntrSystem1(&Intc, TX_INTR_ID, RX_INTR_ID);

	Done1:
	    xil_printf("--- Exiting1 main() --- \r\n");

//	    return XST_SUCCESS;
#endif

#define dma2 1
#if dma2

	    //init_dma1();
	    /* Initialize flags before start transfer test  */
	    	    TxDone2 = 0;
	    	    RxDone2 = 0;
	    	    Error2 = 0;

	    	    Value = 10;//TEST_START_VALUE+0x22;

	    	    for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
	    	            TxBufferPtr[Index] = Value;

	    	            Value = (Value + 1) & 0xFF;
	    	    }

	    	    /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	    	     * is enabled
	    	     */
	    	    Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
	    	//#ifdef __aarch64__
	    	    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
	    	//#endif
	            Status = XAxiDma_SimpleTransfer(&AxiDma2,(UINTPTR) TxBufferPtr,
	                        MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

	            if (Status != XST_SUCCESS) {
	                return XST_FAILURE;
	            }
	            while (!TxDone2  && !Error2) {
	            	  xil_printf("TxDone %d %d\r\n", TxDone2,Error2);
	               	//usleep(5000000);
	                    /* NOP */
	            }

	    	    /* Send a packet */
	    	    //for(Index = 0; Index < Tries; Index ++)
	    	        {

	    	        Status = XAxiDma_SimpleTransfer(&AxiDma2,(UINTPTR) RxBufferPtr,
	    	                    MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

	    	        if (Status != XST_SUCCESS) {
	    	            return XST_FAILURE;
	    	        }

	    	        while (!RxDone2  && !Error2) {
	    	        	  xil_printf("RxDone %d %d\r\n", RxDone2,Error2);
	    	                /* NOP */
	    	        }


	    	        /*
	    	         * Wait TX done and RX done
	    	         */
	    	        while (!TxDone2 && !RxDone2 && !Error2) {
	    	                /* NOP */
	    	        }

	    	        if (Error2) {
	    	            xil_printf("Failed test transmit%s done, "
	    	            "receive%s done\r\n", TxDone2? "":" not",
	    	                            RxDone2? "":" not");

	    	            goto Done2;

	    	        }

	    	        /*
	    	         * Test finished, check data
	    	         */
	    	        Status = CheckData2(MAX_PKT_LEN, 0x1C);
	    	        if (Status != XST_SUCCESS) {
	    	            xil_printf("Data check failed\r\n");
	    	            goto Done1;
	    	        }
	    	    }


	    	    xil_printf("AXI DMA2 interrupt example test passed\r\n");

	    /* Disable TX and RX Ring interrupts and return success */

	    DisableIntrSystem2(&Intc, TX_INTR_ID, RX_INTR_ID);

	Done2:
	    xil_printf("--- Exiting2 main() --- \r\n");

//	    return XST_SUCCESS;
#endif



#define dma2 1
#if dma2

	    //init_dma1();
	    /* Initialize flags before start transfer test  */
	    	    TxDone3 = 0;
	    	    RxDone3 = 0;
	    	    Error3 = 0;

	    	    Value = 40;//TEST_START_VALUE+0x22;

	    	    for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
	    	            TxBufferPtr[Index] = Value;

	    	            Value = (Value + 1) & 0xFF;
	    	    }

	    	    /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	    	     * is enabled
	    	     */
	    	    Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
	    	//#ifdef __aarch64__
	    	    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
	    	//#endif
	            Status = XAxiDma_SimpleTransfer(&AxiDma3,(UINTPTR) TxBufferPtr,
	                        MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

	            if (Status != XST_SUCCESS) {
	                return XST_FAILURE;
	            }
	            while (!TxDone3  && !Error3) {
	            	  xil_printf("TxDone %d %d\r\n", TxDone3,Error3);
	               	//usleep(5000000);
	                    /* NOP */
	            }

	    	    /* Send a packet */
	    	    //for(Index = 0; Index < Tries; Index ++)
	    	        {

	    	        Status = XAxiDma_SimpleTransfer(&AxiDma3,(UINTPTR) RxBufferPtr,
	    	                    MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

	    	        if (Status != XST_SUCCESS) {
	    	            return XST_FAILURE;
	    	        }

	    	        while (!RxDone3  && !Error3) {
	    	        	  xil_printf("RxDone %d %d\r\n", RxDone3,Error3);
	    	                /* NOP */
	    	        }


	    	        /*
	    	         * Wait TX done and RX done
	    	         */
	    	        while (!TxDone3 && !RxDone3 && !Error3) {
	    	                /* NOP */
	    	        }

	    	        if (Error3) {
	    	            xil_printf("Failed test transmit%s done, "
	    	            "receive%s done\r\n", TxDone3? "":" not",
	    	                            RxDone3? "":" not");

	    	            goto Done3;

	    	        }

	    	        /*
	    	         * Test finished, check data
	    	         */
	    	        Status = CheckData3(MAX_PKT_LEN, 0x1C);
	    	        if (Status != XST_SUCCESS) {
	    	            xil_printf("Data check failed\r\n");
	    	            goto Done3;
	    	        }
	    	    }


	    	    xil_printf("AXI DMA3 interrupt example test passed\r\n");

	    /* Disable TX and RX Ring interrupts and return success */

	    DisableIntrSystem3(&Intc, TX_INTR_ID, RX_INTR_ID);

	Done3:
	    xil_printf("--- Exiting3 main() --- \r\n");

//	    return XST_SUCCESS;
#endif
#endif
#endif
	}
#endif



	/* initialize lwIP */
	lwip_init();

	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
				PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return -1;
	}

#if LWIP_IPV6==1
	netif->ip6_autoconfig_enabled = 1;
	netif_create_ip6_linklocal_address(netif, 1);
	netif_ip6_addr_set_state(netif, 0, IP6_ADDR_VALID);
	print_ipv6("\n\rlink local IPv6 address is:",&netif->ip6_addr[0]);
#endif /* LWIP_IPV6 */
	netif_set_default(netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(netif);
	assign_default_ip(&(netif->ip_addr),		&(netif->netmask), &(netif->gw));
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#if 0
#if (LWIP_IPV6==0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(netif);
	dhcp_timoutcntr = 1;
	while (((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(netif);

	if (dhcp_timoutcntr <= 0) {
		if ((netif->ip_addr.addr) == 0) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			assign_default_ip(&(netif->ip_addr),
					&(netif->netmask), &(netif->gw));
		}
	}

	/* print IP address, netmask and gateway */
#else
	assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif /* LWIP_IPV6 */
#endif
	xil_printf("\r\n");

	/* print app header */
	print_app_header();



	/* start the application*/
	start_application();
	start_application1();
	start_application2();
	start_application3();
	xil_printf("\r\n");
	/*
	XGpio_WriteReg(up1,XGPIO_TRI_OFFSET, 0xFFFFFFFF);
	XGpio_WriteReg(up2,XGPIO_TRI_OFFSET, 0xFFFFFFFF);
	XGpio_WriteReg(up3,XGPIO_TRI_OFFSET, 0xFFFFFFFF);
	XGpio_WriteReg(up4,XGPIO_TRI_OFFSET, 0xFFFFFFFF);

    xil_printf2("read up1 gpio %d\r\n",XGpio_ReadReg(up1, XGPIO_DATA_OFFSET));
    xil_printf2("read up2 gpio %d\r\n",XGpio_ReadReg(up2, XGPIO_DATA_OFFSET));
    xil_printf2("read up3 gpio %d\r\n",XGpio_ReadReg(up3, XGPIO_DATA_OFFSET));
    xil_printf2("read up4 gpio %d\r\n",XGpio_ReadReg(up4, XGPIO_DATA_OFFSET));
	*/

    int count=0;
    bt1=0;bt2=0;bt3=0;bt4=0;

int rs232_status,rs232_data1;
#define time100ms  33333333
u8 *TxBufferPtr;
TxBufferPtr = (u8 *)TX_BUFFER_BASE ;
int Value=0x00;
int Status;

    //1s=333333343 COUNTS_PER_SECOND
    //bt1=1;
	while (1) {

	    rs232_status = XUartPs_IsReceiveData(XPAR_XUARTPS_0_BASEADDR);
	    if(rs232_status & 0x01 == 0x01)
	    	{
	    	rs232_data1 = XUartPs_ReadReg(XPAR_XUARTPS_0_BASEADDR, XUARTPS_FIFO_OFFSET);
			xil_printf("[CMD=%c]\r\n",rs232_data1);

	        switch(rs232_data1)
	       	   {
				case '0'  :
					Value=0;
				break;

				case 'i'  :
					Value=Value+0x10;
					for(int Index = 0; Index < MAX_PKT_LEN; Index ++) {
							TxBufferPtr[Index] = Value;

							Value = (Value + 1) & 0xFF;
					}
				break;
				case 't'  :
					Dma0DDR2IP((u8 *)TX_BUFFER_BASE,MAX_PKT_LEN);
					Dma0IP2DDR((u8 *)RX_BUFFER_BASE,MAX_PKT_LEN);
					CheckData(MAX_PKT_LEN, 0xC);
			    break;
				case 'p'  :
//					Dma0DDR2IP((u8 *)TX_BUFFER_BASE,12);
					Dma0IP2DDR((u8 *)RX_BUFFER_BASE,MAX_PKT_LEN);
//					CheckData(MAX_PKT_LEN, 0xC);
			    break;

				case 'C'  :
					CheckData(MAX_PKT_LEN, 0xC);
					//fpga
					/*
					 CheckData
					[10=00:08]
					[11=01:09]
					[12=02:0A]
					[13=03:0B]
					[14=04:08]
					[15=05:09]
					[16=06:0A]
					[17=07:0B]
					 */
				break;
				case 'F'  :
					Xil_DCacheFlushRange((u32)RX_BUFFER_BASE, MAX_PKT_LEN);
					xil_printf("[Xil_DCacheFlushRange=%x]\r\n",RX_BUFFER_BASE);
//					Xil_DCacheInvalidateRange((u32)RX_BUFFER_BASE, MAX_PKT_LEN);
				break;
				case 'f'  :
//					Xil_DCacheFlushRange((u32)RX_BUFFER_BASE, MAX_PKT_LEN);
					Xil_DCacheInvalidateRange((u32)RX_BUFFER_BASE, MAX_PKT_LEN);
					xil_printf("[Xil_DCacheInvalidateRange=%x]\r\n",RX_BUFFER_BASE);
				break;

	        	case 'a'  :

					Value=Value+0x20;
				    for(int Index = 0; Index < MAX_PKT_LEN; Index ++) {
				            TxBufferPtr[Index] = Value;
				            Value = (Value + 1) & 0xFF;
				    }

				    Dma0DDR2IP((u8 *)TX_BUFFER_BASE,12);
				    Dma0IP2DDR((u8 *)RX_BUFFER_BASE,12);
				    //int Status = CheckData(MAX_PKT_LEN, 0xC);
				    //usleep(5000000);

				    //Xil_DCacheFlushRange((u32)RX_BUFFER_BASE, MAX_PKT_LEN);
				    //Xil_DCacheInvalidateRange((u32)RX_BUFFER_BASE, MAX_PKT_LEN);
				    Status = CheckData(MAX_PKT_LEN, 0xC);
	        	break;

	        	case 'n'  :
	        		fnet=!fnet;
	        		xil_printf("[fnet=%d]",fnet);
				break;

	       	   }
	    	}
//#define	    tcp_test 1
#if tcp_test
	}
	{
#endif
		if(fnet)
		{
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		}
		xemacif_input(netif);
#if old_tcp
		if(bt1)
		{
			   XTime_GetTime(&tend1);
			   tdiff1=tend1-tbegin1;
			   //xil_printf("#");
			if(tdiff1>time100ms)
			{
				/*
			    u8 *RxBufferPtr1;
			    RxBufferPtr1 = (u8 *)RX_BUFFER_BASE;
				Dma0IP2DDR((u8 *)RxBufferPtr1,8);
*/
#if 0
			    u8 *TxBufferPtr;
			    TxBufferPtr = (u8 *)TX_BUFFER_BASE ;
				int Value=0x50;
			    for(int Index = 0; Index < MAX_PKT_LEN; Index ++) {
			            TxBufferPtr[Index] = Value;

			            Value = (Value + 1) & 0xFF;
			    }

			    Dma0DDR2IP((u8 *)TX_BUFFER_BASE,12);
			    Dma0IP2DDR((u8 *)0x13000000,12);
			    int Status = CheckData(MAX_PKT_LEN, 0xC);
			    usleep(5000000);

Xil_DCacheFlushRange((u32)0x13000000, MAX_PKT_LEN);
Xil_DCacheInvalidateRange((u32)0x13000000, MAX_PKT_LEN);
			    Status = CheckData(MAX_PKT_LEN, 0xC);
#endif
//ok
				//Dma0DDR2IP((u8 *)TX_BUFFER_BASE,12);
				//Dma0IP2DDR((u8 *)RX_BUFFER_BASE,12);
//test tcp address  0,4,8,c
				//Dma0DDR2IP((u8 *)tcp0_dma,12);
				//Dma0IP2DDR((u8 *)RX_BUFFER_BASE,12);

				//Dma0DDR2IP((u8 *)tcp0_dma,64);
				//Dma0IP2DDR((u8 *)RX_BUFFER_BASE,64);
			    /*
				Dma0DDR2IP((u8 *)TX_BUFFER_BASE,128);//12 ok 64 fail
				usleep(10000);
				Dma0IP2DDR((u8 *)RX_BUFFER_BASE,128);
				*/

				transfer_up1();
				bt1=0;
			}
		}
		if(bt2)
		{
			   XTime_GetTime(&tend2);
			   tdiff2=tend2-tbegin2;
			   xil_printf("+");
			if(tdiff2>time100ms)
			{

				transfer_up2();
				bt2=0;
			}
		}
		if(bt3)
		{
			   XTime_GetTime(&tend3);
			   tdiff3=tend3-tbegin3;
			   xil_printf("-");
			if(tdiff3>time100ms)
			{

				transfer_up3();
				bt3=0;
			}
		}
		if(bt4)
		{
			   XTime_GetTime(&tend4);
			   tdiff4=tend4-tbegin4;
			   xil_printf("=");
			if(tdiff4>time100ms)
			{

				transfer_up4();
				bt4=0;
			}
		}

		/*
		if(XGpio_ReadReg(up1, XGPIO_DATA_OFFSET))
		{
			xil_printf("[UP1]");
			transfer_up1();
		}

		/*
		if(XGpio_ReadReg(up2, XGPIO_DATA_OFFSET))
		{
			if(count++ % 5000 ==0)
			xil_printf("[UP2 %x]",XGpio_ReadReg(up2, XGPIO_DATA_OFFSET));
			transfer_up2();
		}


		if(XGpio_ReadReg(up3, XGPIO_DATA_OFFSET))
		{
			if(count++ % 5000 ==0)
			xil_printf("[UP3 %x]",XGpio_ReadReg(up3, XGPIO_DATA_OFFSET));

			///transfer_up3();
		}
		if(XGpio_ReadReg(up4, XGPIO_DATA_OFFSET))
		{
			if(count++ % 7000 == 0)
			xil_printf("[UP4 %x]",XGpio_ReadReg(up4, XGPIO_DATA_OFFSET));
			///transfer_up4();
		}
		*/

		//transfer_data();
		//transfer_data1();
#endif
	}

	/* never reached */
	cleanup_platform();
	   Xil_DCacheDisable();
	   Xil_ICacheDisable();
	return 0;
}



#ifdef XPAR_UARTNS550_0_BASEADDR
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600 and data bits to 8
*
* @param    None
*
* @return    None
*
* @note        None.
*
******************************************************************************/
static void Uart550_Setup(void)
{

    XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
            XPAR_XUARTNS550_CLOCK_HZ, 9600);

    XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
            XUN_LCR_8_DATA_BITS);
}
#endif

/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* We use the static tx/rx buffers.
*
* @param    Length is the length to check
* @param    StartValue is the starting value of the first byte
*
* @return
*        - XST_SUCCESS if validation is successful
*        - XST_FAILURE if validation is failure.
*
* @note        None.
*
******************************************************************************/
static int CheckData(int Length, u8 StartValue)
{
    u8 *RxPacket;
    u8 *TxPacket;
    int Index = 0;
    u8 Value;

    RxPacket = (u8 *) RX_BUFFER_BASE;
    TxPacket = (u8 *) TX_BUFFER_BASE;
    Value = StartValue;

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
#ifndef __aarch64__
    Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif
    xil_printf("\r\n CheckData \r\n");

    for(Index = 0; Index < Length; Index++) {
//        for(Index = 0; Index < 16/*Length*/; Index++) {
        if (TxPacket[Index]!=RxPacket[Index])
        {
        	//            xil_printf("Tx Data %d: %x[%X]\r\n",
        	  //              Index, TxPacket[Index], RxPacket[Index]);
        	            xil_printf("[%x Error %02x:%02X]\r\n",
        	                 Index,TxPacket[Index], RxPacket[Index]);

            ///return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#if 0
    for(Index = 0; Index < 16 /*Length*/; Index++) {
        if (RxPacket[Index] != Value) {
            xil_printf("Data error %d: %x/%x\r\n",
                Index, RxPacket[Index], Value);

           // return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#endif
    xil_printf("\r\n\r\n");
    return XST_SUCCESS;
}

static int CheckData1(int Length, u8 StartValue)
{
    u8 *RxPacket;
    u8 *TxPacket;
    int Index = 0;
    u8 Value;

    RxPacket = (u8 *) RX_BUFFER_BASE;
    TxPacket = (u8 *) TX_BUFFER_BASE;
    Value = StartValue;

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
#ifndef __aarch64__
    Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif
    for(Index = 0; Index < 16/*Length*/; Index++) {
        //if (RxPacket[Index] != Value)
        {
            xil_printf("Tx Data1 %d: %x(%x)\r\n",
                Index, TxPacket[Index], RxPacket[Index]);

            ///return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#if 0
    for(Index = 0; Index < 16 /*Length*/; Index++) {
        if (RxPacket[Index] != Value) {
            xil_printf("Data1 error %d: %x/%x\r\n",
                Index, RxPacket[Index], Value);

           // return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#endif
    xil_printf("\r\n\r\n");

    return XST_SUCCESS;
}



static int CheckData2(int Length, u8 StartValue)
{
    u8 *RxPacket;
    u8 *TxPacket;
    int Index = 0;
    u8 Value;

    RxPacket = (u8 *) RX_BUFFER_BASE;
    TxPacket = (u8 *) TX_BUFFER_BASE;
    Value = StartValue;

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
#ifndef __aarch64__
    Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif
    for(Index = 0; Index < 16/*Length*/; Index++) {
        //if (RxPacket[Index] != Value)
        {
            xil_printf("Tx Data1 %d: %x(%x)\r\n",
                Index, TxPacket[Index], RxPacket[Index]);

            ///return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#if 0
    for(Index = 0; Index < 16 /*Length*/; Index++) {
        if (RxPacket[Index] != Value) {
            xil_printf("Data1 error %d: %x/%x\r\n",
                Index, RxPacket[Index], Value);

           // return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#endif
    xil_printf("\r\n\r\n");

    return XST_SUCCESS;
}



static int CheckData3(int Length, u8 StartValue)
{
    u8 *RxPacket;
    u8 *TxPacket;
    int Index = 0;
    u8 Value;

    RxPacket = (u8 *) RX_BUFFER_BASE;
    TxPacket = (u8 *) TX_BUFFER_BASE;
    Value = StartValue;

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
#ifndef __aarch64__
    Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif
    for(Index = 0; Index < 16/*Length*/; Index++) {
        //if (RxPacket[Index] != Value)
        {
            xil_printf("Tx Data1 %d: %x(%x)\r\n",
                Index, TxPacket[Index], RxPacket[Index]);

            ///return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#if 0
    for(Index = 0; Index < 16 /*Length*/; Index++) {
        if (RxPacket[Index] != Value) {
            xil_printf("Data1 error %d: %x/%x\r\n",
                Index, RxPacket[Index], Value);

           // return XST_FAILURE;
        }
        Value = (Value + 1) & 0xFF;
    }
#endif
    xil_printf("\r\n\r\n");

    return XST_SUCCESS;
}

/*****************************************************************************/
/*
*
* This is the DMA TX Interrupt handler function.
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then sets the TxDone.flag
*
* @param    Callback is a pointer to TX channel of the DMA engine.
*
* @return    None.
*
* @note        None.
*
******************************************************************************/
static void TxIntrHandler(void *Callback)
{

    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */


    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        TxDone = 1;
    }
}


static void TxIntrHandler1(void *Callback)
{

    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */


    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        TxDone1 = 1;
    }
}


static void TxIntrHandler2(void *Callback)
{

    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */


    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error2 = 1;

        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        TxDone2 = 1;
    }
}


static void TxIntrHandler3(void *Callback)
{

    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */


    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error3 = 1;

        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        TxDone3 = 1;
    }
}


/*****************************************************************************/
/*
*
* This is the DMA RX interrupt handler function
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then it sets the RxDone flag.
*
* @param    Callback is a pointer to RX channel of the DMA engine.
*
* @return    None.
*
* @note        None.
*
******************************************************************************/
static void RxIntrHandler(void *Callback)
{
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        RxDone = 1;
    }
}


static void RxIntrHandler1(void *Callback)
{
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        RxDone1 = 1;
    }
}

static void RxIntrHandler2(void *Callback)
{
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error2 = 1;

        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        RxDone2 = 1;
    }
}

static void RxIntrHandler3(void *Callback)
{
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error3 = 1;

        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        RxDone3 = 1;
    }
}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA, it assumes INTC component exists in the hardware system.
*
* @param    IntcInstancePtr is a pointer to the instance of the INTC.
* @param    AxiDmaPtr is a pointer to the instance of the DMA engine
* @param    TxIntrId is the TX channel Interrupt ID.
* @param    RxIntrId is the RX channel Interrupt ID.
*
* @return
*        - XST_SUCCESS if successful,
*        - XST_FAILURE.if not succesful
*
* @note        None.
*
******************************************************************************/
static int SetupIntrSystem(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
    int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

    /* Initialize the interrupt controller and connect the ISRs */
    Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed init intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
                   (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed tx connect intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
                   (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed rx connect intc\r\n");
        return XST_FAILURE;
    }

    /* Start the interrupt controller */
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed to start intc\r\n");
        return XST_FAILURE;
    }

    XIntc_Enable(IntcInstancePtr, TxIntrId);
    XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

    XScuGic_Config *IntcConfig;


    /*
     * Initialize the interrupt controller driver so that it is ready to
     * use.
     */
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) {
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                    IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }


    XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

    XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
    /*
     * Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device.
     */
    Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
                (Xil_InterruptHandler)TxIntrHandler,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
                (Xil_InterruptHandler)RxIntrHandler,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    XScuGic_Enable(IntcInstancePtr, TxIntrId);
    XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

    /* Enable interrupts from the hardware */

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)INTC_HANDLER,
            (void *)IntcInstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}


static int SetupIntrSystem1(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
    int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

    /* Initialize the interrupt controller and connect the ISRs */
    Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed init intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
                   (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed tx connect intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
                   (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed rx connect intc\r\n");
        return XST_FAILURE;
    }

    /* Start the interrupt controller */
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed to start intc\r\n");
        return XST_FAILURE;
    }

    XIntc_Enable(IntcInstancePtr, TxIntrId);
    XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

    XScuGic_Config *IntcConfig;


    /*
     * Initialize the interrupt controller driver so that it is ready to
     * use.
     */
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) {
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                    IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }


    XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

    XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
    /*
     * Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device.
     */
    Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
                (Xil_InterruptHandler)TxIntrHandler1,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
                (Xil_InterruptHandler)RxIntrHandler1,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    XScuGic_Enable(IntcInstancePtr, TxIntrId);
    XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

    /* Enable interrupts from the hardware */

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)INTC_HANDLER,
            (void *)IntcInstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}



static int SetupIntrSystem2(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
    int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

    /* Initialize the interrupt controller and connect the ISRs */
    Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed init intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
                   (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed tx connect intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
                   (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed rx connect intc\r\n");
        return XST_FAILURE;
    }

    /* Start the interrupt controller */
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed to start intc\r\n");
        return XST_FAILURE;
    }

    XIntc_Enable(IntcInstancePtr, TxIntrId);
    XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

    XScuGic_Config *IntcConfig;


    /*
     * Initialize the interrupt controller driver so that it is ready to
     * use.
     */
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) {
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                    IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }


    XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

    XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
    /*
     * Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device.
     */
    Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
                (Xil_InterruptHandler)TxIntrHandler2,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
                (Xil_InterruptHandler)RxIntrHandler2,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    XScuGic_Enable(IntcInstancePtr, TxIntrId);
    XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

    /* Enable interrupts from the hardware */

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)INTC_HANDLER,
            (void *)IntcInstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

static int SetupIntrSystem3(INTC * IntcInstancePtr,
               XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
    int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

    /* Initialize the interrupt controller and connect the ISRs */
    Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed init intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
                   (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed tx connect intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
                   (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed rx connect intc\r\n");
        return XST_FAILURE;
    }

    /* Start the interrupt controller */
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed to start intc\r\n");
        return XST_FAILURE;
    }

    XIntc_Enable(IntcInstancePtr, TxIntrId);
    XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

    XScuGic_Config *IntcConfig;


    /*
     * Initialize the interrupt controller driver so that it is ready to
     * use.
     */
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) {
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                    IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }


    XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

    XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
    /*
     * Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device.
     */
    Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
                (Xil_InterruptHandler)TxIntrHandler3,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
                (Xil_InterruptHandler)RxIntrHandler3,
                AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    XScuGic_Enable(IntcInstancePtr, TxIntrId);
    XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

    /* Enable interrupts from the hardware */

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)INTC_HANDLER,
            (void *)IntcInstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}
/*****************************************************************************/
/**
*
* This function disables the interrupts for DMA engine.
*
* @param    IntcInstancePtr is the pointer to the INTC component instance
* @param    TxIntrId is interrupt ID associated w/ DMA TX channel
* @param    RxIntrId is interrupt ID associated w/ DMA RX channel
*
* @return    None.
*
* @note        None.
*
******************************************************************************/
static void DisableIntrSystem(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
    /* Disconnect the interrupts for the DMA TX and RX channels */
    XIntc_Disconnect(IntcInstancePtr, TxIntrId);
    XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
    XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
    XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}

static void DisableIntrSystem1(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
    /* Disconnect the interrupts for the DMA TX and RX channels */
    XIntc_Disconnect(IntcInstancePtr, TxIntrId);
    XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
    XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
    XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}


static void DisableIntrSystem2(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
    /* Disconnect the interrupts for the DMA TX and RX channels */
    XIntc_Disconnect(IntcInstancePtr, TxIntrId);
    XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
    XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
    XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}


static void DisableIntrSystem3(INTC * IntcInstancePtr,
                    u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
    /* Disconnect the interrupts for the DMA TX and RX channels */
    XIntc_Disconnect(IntcInstancePtr, TxIntrId);
    XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
    XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
    XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}


#if hand

static void TxIntrHandler(void *Callback)
{

    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */


    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        TxDone = 1;
    }
}

/*****************************************************************************/
/*
*
* This is the DMA RX interrupt handler function
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then it sets the RxDone flag.
*
* @param    Callback is a pointer to RX channel of the DMA engine.
*
* @return    None.
*
* @note        None.
*
******************************************************************************/
static void RxIntrHandler(void *Callback)
{
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        RxDone = 1;
    }
}
#endif



Dma0DDR2IP(u8 *TxBufferPtr,int TxMAX_PKT_LEN)
{
	TxMAX_PKT_LEN=256;
	xil_printf("\r\n[Dma0DDR2IP add=%x data=%x len=%x]\r\n",(TxBufferPtr),*TxBufferPtr,TxMAX_PKT_LEN);

    u8 *TxPacket;
    //RxPacket = (u8 *) RX_BUFFER_BASE;
    TxPacket = (u8 *) TxBufferPtr;
    //Value = StartValue;

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
    xil_printf("\r\n DDR2IP \r\n");
    for(int Index = 0; Index < 32/*Length*/; Index++) {
        {
            xil_printf(" %02x", TxPacket[Index]);
//            xil_printf("DDR %d: %x\r\n",
  //              Index, TxPacket[Index]);

        }
    }

	int Status;
    Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, TxMAX_PKT_LEN);
#ifdef __aarch64__
    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, TxMAX_PKT_LEN);
#endif
    Status = XAxiDma_SimpleTransfer(&AxiDma0,(UINTPTR) TxBufferPtr,
                TxMAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    while (!TxDone  && !Error) {
    	  xil_printf("[T0E]\r\n");
    	  //xil_printf("TxDone %d %d\r\n", TxDone,Error);
       	//usleep(5000000);
            /* NOP */
    }

}
Dma0IP2DDR(u8 *RxBufferPtr,int RxMAX_PKT_LEN)
{
	RxMAX_PKT_LEN=256;
	xil_printf("\r\n[Dma0IP2DDR add=%x data=%x]\r\n",(RxBufferPtr),*RxBufferPtr);

	int Status;
    Status = XAxiDma_SimpleTransfer(&AxiDma0,(UINTPTR) RxBufferPtr,
    		RxMAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);


    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    while (!RxDone  && !Error) {
	        	  //xil_printf("[R0E]\r\n");
	                /* NOP */
	        }

    u8 *TxPacket;
    //RxPacket = (u8 *) RX_BUFFER_BASE;
    TxPacket = (u8 *) RxBufferPtr;
    //Value = StartValue;
    //*******************************************************************
    //Xil_DCacheInvalidateRange get new cache
    //******************************************************************
    Xil_DCacheInvalidateRange((u32)TxPacket, MAX_PKT_LEN);//刷新cache，观察DDR的最新数据

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
    xil_printf("\r\n IP2DDR \r\n");
    for(int Index = 0; Index < 32/*Length*/; Index++) {
        {
//            xil_printf("Get %d: %x\r\n",
                //Index, TxPacket[Index]);
            xil_printf(" %02x", TxPacket[Index]);

        }
    }
    xil_printf("\r\n------------------------------------------\r\n");

}
Dma0TCP(u8 *TxBufferPtr,int *len)
{
 tcp0_dma=TxBufferPtr;
 int newdma=&(*TxBufferPtr);
 tcp0_dma=TxBufferPtr-(4-newdma%4);
 *len=(4-newdma%4);
 //int &new2dma=tcp0_dma;
 xil_printf("[get Dma0TCP address=%x %x len=%d]",tcp0_dma,TxBufferPtr,(4-newdma%4));
 return tcp0_dma;

}
