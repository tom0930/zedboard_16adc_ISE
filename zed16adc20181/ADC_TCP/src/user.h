/*
 * Copyright (C) 2009 - 2019 Xilinx, Inc.
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
 */

#ifndef __USER_H_
#define __USER_H_

void init_platform();
void cleanup_platform();
#ifdef __MICROBLAZE__
void timer_callback();
#endif

#if debug_tom
	#define  xil_printf2 xil_printf
#else
	#define  xil_printf2 //
#endif
/*
//#define  downbuf1 0x10000000 //XPAR_AXI_BRAM_CTRL_INDEX_0_S_AXI_BASEADDR
//#define  downbuf2 0x10000000 // XPAR_AXI_BRAM_CTRL_INDEX_1_S_AXI_BASEADDR
//#define  downbuf3 0x10000000 // XPAR_AXI_BRAM_CTRL_INDEX_2_S_AXI_BASEADDR
//#define  downbuf4 0x10000000 // XPAR_AXI_BRAM_CTRL_INDEX_3_S_AXI_BASEADDR
//#define  down1 0x10000000 // XPAR_AXI_GPIO_0_BASEADDR
//#define  down2 0x10000000 // XPAR_AXI_GPIO_1_BASEADDR
//#define  down3 0x10000000 // XPAR_AXI_GPIO_2_BASEADDR
//#define  down4 0x10000000 // XPAR_AXI_GPIO_3_BASEADDR
*/
#define  upbuf1 XPAR_AXI_BRAM_CTRL_RESULT_0_S_AXI_BASEADDR
#define  upbuf2 XPAR_AXI_BRAM_CTRL_RESULT_1_S_AXI_BASEADDR
#define  upbuf3 XPAR_AXI_BRAM_CTRL_RESULT_2_S_AXI_BASEADDR
#define  upbuf4 XPAR_AXI_BRAM_CTRL_RESULT_3_S_AXI_BASEADDR
/*
#define  up1 XPAR_AXI_GPIO_4_BASEADDR
#define  up2 XPAR_AXI_GPIO_5_BASEADDR
#define  up3 XPAR_AXI_GPIO_6_BASEADDR
#define  up4 XPAR_AXI_GPIO_7_BASEADDR
*/
#define ch1 1
#define ch2 2
#define ch3 3
#define ch4 4
u64 tbegin1,tend1;
u64 tbegin2,tend2;
u64 tbegin3,tend3;
u64 tbegin4,tend4;
long int tdiff1,tdiff2,tdiff3,tdiff4;
//long int bt1=0,bt2=0,bt3=0,bt4=0;
long int bt1,bt2,bt3,bt4;
 err_t transfer_up1(void);
 err_t transfer_up2(void);
#endif
