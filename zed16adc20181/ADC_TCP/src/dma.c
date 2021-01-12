/*
 * dma.c
 *
 *  Created on: 2018年10月22日
 *      Author: c3585
 */

#include "dma.h"
#include "xaxidma.h"
XAxiDma AxiDma;

#define MEM_BASE_ADDR		0x01000000
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
//#define MAX_PKT_LEN		0x20

void DMA_INIT()
{
	XAxiDma_Config *CfgPtr;
	int Status;
	CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
		if (!CfgPtr) {
			xil_printf("No config found for %d\r\n", DMA_DEV_ID);
			return XST_FAILURE;
		}

		Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
		if (Status != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status);
			return XST_FAILURE;
		}

		if(XAxiDma_HasSg(&AxiDma)){
			xil_printf("Device configured as SG mode \r\n");
			return XST_FAILURE;
		}

		/* Disable interrupts, we use polling mode
		 */
		XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE);



}


int DMA_Simple_Send(unsigned char * image_addr,u32 MAX_PKT_LEN)
{
	XAxiDma_Config *CfgPtr;
	int Status;

	int i,a1,a2,a3,a4;
	u32 *TxBufferPtr;
//	u32 *RxBufferPtr;
	u8 Value;
	TxBufferPtr = (u32 *)TX_BUFFER_BASE ;
//	RxBufferPtr = (u32 *)RX_BUFFER_BASE;

	for(i=0;i<256;i++)
	{
		a1 =*(image_addr+i*4+0);
		a2 =*(image_addr+i*4+1);
		a3 =*(image_addr+i*4+2);
		a4 =*(image_addr+i*4+3);
//		a1 =0xaa;
//		a2 =0xaa;
//		a3 =0xaa;
//		a4 =0xaa;

		TxBufferPtr[i] =((a1<<0)|(a2<<8)|(a3<<16)|(a4<<24));
	xil_printf("a1 --- %x\r\n",TxBufferPtr[i] );

	}
	//TxBufferPtr 是指针，指向DDR地址
	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
#ifdef __aarch64__
	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
#endif


while(1)
{
		Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) TxBufferPtr,
				MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);
		usleep(600);
}
	return XST_SUCCESS;
}
