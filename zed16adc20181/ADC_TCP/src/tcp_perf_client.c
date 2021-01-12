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
 */

/* Connection handle for a TCP Client session */

#include "tcp_perf_client.h"
#include "sleep.h"
#include "xgpio_l.h"
#include "xgpio.h"
#include "xparameters.h"
static struct tcp_pcb *c_pcb;
static struct tcp_pcb *c_pcb1;
static struct tcp_pcb *c_pcb2;
static struct tcp_pcb *c_pcb3;
static char send_buf[TCP_SEND_BUFSIZE];
static char send_buf1[TCP_SEND_BUFSIZE];
static char send_buf2[TCP_SEND_BUFSIZE];
static char send_buf3[TCP_SEND_BUFSIZE];
static struct perf_stats client;
static struct perf_stats client1;
static struct perf_stats client2;
static struct perf_stats client3;

#define tcp_dma_address 0x10300000
int *len,txlen;
int *tcp_dma;//=Dma0TCP((u8*)p->payload,len);

int up1len=0;int up1start=0;int up1mode=0;
int up2len=0;int up2start=0;int up2mode=0;
int up3len=0;int up3start=0;int up3mode=0;
int up4len=0;int up4start=0;int up4mode=0;
err_t transfer_up1(void);
err_t transfer_up2(void);
err_t transfer_up3(void);
err_t transfer_up4(void);
short int upbuf1heap[]={0x0000};//{0x0001};
short int upbuf2heap[]={0x0000};//{0x0002};
short int upbuf3heap[]={0x0000};//{0x0003};
short int upbuf4heap[]={0x0000};//{0x0004};
short int upbuferr[]={0x0e4c};


int CheckDatatcp(int Length, u8 StartValue);
u8			WaveformArr[1500];
/*
char cmd_shutdown_OK[] = { 0,0 };
char cmd_shutdown_ERROR[] = { 0xc4,0x0e };
char cmd_start_scanning[] = { 0,0 };
char cmd_read_data[] = { 0x28,0 };
D:\git\NET_TOOLS\net\sokit.EXE
size 1480
[2c 00 00 02 00 01 ff ff 33 19 35 19 36 19 37 19 50 19 21 1C 43 1C 43 1D 2E 1E E2 1E E3 1E E4 1E E5 1E E6 1E EA 1E EB 1E EC 1E ED 1E EE 1E EF 1E F2 1E F5 1E F6 1E 03 1E 2C 13 2F 13 33 13 38 13 21 19 2D 19 38 19 39 19 43 19 4E 19 52 19 54 19 39 1A 22 1C 23 1C 24 1C 45 1C 47 1C 49 1C 4B 1C 4E 1C 58 1C 22 1D 2B 1D 41 1D 53 1D 22 1E 27 1E 29 1E 2B 1E 30 1E 42 1E 44 1E 46 1E 48 1E 49 1E 4B 1E 58 1E E7 1E E8 1E E9 1E F8 1E 01 1E 04 1E 05 1E 06 1E 2B 1F 39 1F 22 19 23 19 24 19 25 19 27 19 29 19 2B 19 2F 19 31 19 4D 19 4F 19 51 19 53 19 56 19 58 19 59 19 21 1A 25 1A 29 1A 95 1B 98 1B AB 1B 30 1C 39 1C 41 1C 4D 1C 4F 1C 51 1C 21 1D 39 1D 42 1D 4B 1D 4D 1D 4F 1D 51 1D 55 1D 59 1D 25 1E 2A 1E 33 1E 34 1E 35 1E 36 1E 37 1E 38 1E 43 1E 52 1E 54 1E 57 1E F9 1E 24 1F 28 1F 2F 1F 32 1F 30 12 32 12 21 13 2A 13 2D 13 2E 13 30 13 31 13 32 13 34 13 35 13 36 13 37 13 26 19 28 19 2A 19 2C 19 2E 19 30 19 32 19 34 19 41 19 44 19 46 19 48 19 4A 19 4C 19 55 19 57 19 22 1A 23 1A 24 1A 26 1A 27 1A 28 1A 2A 1A 2B 1A 2C 1A 2D 1A 2E 1A 2F 1A 30 1A 31 1A 33 1A 34 1A 35 1A 36 1A 37 1A 38 1A 21 1B 22 1B 23 1B 24 1B 25 1B 26 1B 27 1B 2B 1B 37 1B 39 1B 81 1B 82 1B 83 1B 84 1B 85 1B 86 1B 87 1B 88 1B 89 1B 8A 1B 8B 1B 8C 1B 8D 1B 8F 1B 90 1B 91 1B 92 1B 93 1B 94 1B 96 1B 97 1B 99 1B A1 1B A2 1B A3 1B A4 1B A5 1B A6 1B A7 1B A8 1B A9 1B AA 1B AC 1B AD 1B AE 1B AF 1B B0 1B B1 1B B2 1B B3 1B B4 1B B5 1B B6 1B B7 1B B8 1B B9 1B 25 1C 26 1C 27 1C 28 1C 29 1C 2A 1C 2B 1C 2C 1C 2D 1C 2E 1C 2F 1C 31 1C 32 1C 33 1C 34 1C 35 1C 38 1C 50 1C 52 1C 54 1C 56 1C 59 1C 24 1D 26 1D 27 1D 28 1D 29 1D 2A 1D 2C 1D 2D 1D 2E 1D 2F 1D 30 1D 31 1D 32 1D 33 1D 34 1D 35 1D 36 1D 37 1D 44 1D 46 1D 47 1D 48 1D 49 1D 4A 1D 4C 1D 21 1E 23 1E 24 1E 28 1E 2D 1E 2F 1E 31 1E 32 1E 39 1E 41 1E 45 1E 47 1E 4D 1E 4F 1E 50 1E 51 1E 53 1E 55 1E 56 1E 59 1E E1 1E F0 1E F1 1E F3 1E F4 1E F7 1E 02 1E 07 1E 21 1F 22 1F 23 1F 25 1F 26 1F 27 1F 29 1F 2D 1F 2E 1F 30 1F 31 1F 33 1F 34 1F 35 1F 36 1F 37 1F 38 1F 63 19 65 19 67 19 72 19 74 19 94 19 98 19 99 19 A2 19 A4 19 A6 19 A7 19 A9 19 AB 19 AD 19 AF 19 B0 19 B2 19 B4 19 B6 19 B8 19 42 1B 44 1B 46 1B 62 1B 64 1B 66 1B 68 1B 6A 1B 6B 1B 6C 1B 6D 1B 6F 1B 70 1B 71 1B 72 1B 73 1B 74 1B 75 1B 76 1B 77 1B 79 1B D1 1B D5 1B D7 1B 6D 1C 6E 1C 70 1C 72 1C 76 1C 78 1C AE 1C B8 1C 66 1D 67 1D 68 1D 6F 1D 70 1D 71 1D 95 1D AE 1D 69 19 70 19 77 19 79 19 92 19 96 19 97 19 A1 19 A3 19 A8 19 AA 19 B1 19 CE 19 D0 19 D2 19 42 1A 44 1A 46 1A 48 1A 4A 1A 70 1A 72 1A 74 1A D3 1B 64 1C 6F 1C 73 1C 82 1C 83 1C 84 1C 85 1C 86 1C 87 1C 88 1C 89 1C 8A 1C 8B 1C 8C 1C 8E 1C B5 1C B7 1C B9 1C 64 1D 69 1D 6E 1D 8D 1D 8F 1D 90 1D 91 1D 92 1D 93 1D 94 1D 96 1D 97 1D 98 1D 99 1D AF 1D B1 1D B3 1D B5 1D B7 1D B9 1D CD 1E CF 1E 41 1F 42 1F 43 1F 45 1F 47 1F 49 1F 4B 1F 4D 1F 4E 1F 4F 1F 50 1F 51 1F 52 1F 53 1F 54 1F 55 1F 56 1F 57 1F 58 1F 59 1F CF 1F D1 1F A5 1A A7 1A CE 1A D0 1A D2 1A D4 1A D6 1A D8 1A CF 1B 67 1C 69 1C 6B 1C 71 1C 75 1C 79 1C 8D 1C A3 1C A5 1C A7 1C B3 1C B6 1C 62 1D 76 1D 77 1D 78 1D A5 1D A7 1D AB 1D B6 1D 6F 1E 71 1E 73 1E 75 1E 8D 17 8F 17 91 17 92 17 93 17 94 17 95 17 96 17 97 17 98 17 99 17 61 19 64 19 66 19 68 19 8B 19 A5 19 AC 19 AE 19 B3 19 B5 19 B7 19 D1 19 A1 1A A3 1A 43 1B 45 1B 47 1B 49 1B 4B 1B 6E 1B C1 1B C2 1B C4 1B C5 1B C6 1B C7 1B C8 1B C9 1B CA 1B CB 1B CC 1B CE 1B E1 1B E3 1B E5 1B E7 1B 77 1C 81 1C 8F 1C 91 1C 92 1C 93 1C 94 1C 95 1C 96 1C 97 1C 98 1C 99 1C A2 1C A9 1C AB 1C AD 1C AF 1C B0 1C B1 1C B2 1C B4 1C 61 1D 63 1D 65 1D 6D 1D 73 1D 74 1D 75 1D 79 1D 81 1D 83 1D 8E 1D A1 1D A3 1D B0 1D B2 1D B4 1D 6E 1E 77 1E 79 1E 81 1E 82 1E 83 1E 84 1E 85 1E 86 1E 87 1E 88 1E 89 1E 8A 1E 8B 1E 8C 1E 8D 1E 8E 1E 8F 1E 90 1E 91 1E 92 1E 94 1E 96 1E 98 1E 99 1E AE 1E B0 1E B1 1E B2 1E B3 1E B4 1E B5 1E B7 1E B9 1E CE 1E D0 1E D2 1E D4 1E D6 1E D8 1E 2A 1F 2C 1F 44 1F 46 1F 48 1F 4A 1F 4C 1F 61 1F 62 1F 63 1F 64 1F 65 1F 66 1F 67 1F 69 1F 6B 1F 6D 1F 6E 1F 6F 1F 70 1F 71 1F 72 1F 73 1F 74 1F 75 1F 76 1F 77 1F 78 1F 79 1F 81 1F 82 1F 83 1F 84 1F 85 1F 86 1F 87 1F 88 1F 89 1F 8A 1F 8B 1F 8C 1F A1 1F A2 1F A3 1F A4 1F A5 1F A6 1F A7 1F A8 1F A9 1F AA 1F AB 1F AC 1F AD 1F AE 1F AF 1F B0 1F B1 1F B2 1F B3 1F B4 1F B5 1F B6 1F B7 1F B8 1F B9 1F C1 1F C2 1F C3 1F C4 1F C5 1F C6 1F C7 1F C8 1F C9 1F CA 1F CB 1F CC 1F CD 1F CE 1F D0 1F D2 1F D3 1F D4 1F D5 1F D6 1F D7 1F D8 1F D9 1F E1 1F E2 1F E3 1F E4 1F E5 1F E6 1F E7 1F E8 1F E9 1F EA 1F EB 1F EC 1F ED 1F EE 1F EF 1F F0 1F F1 1F F2 1F F3 1F F4 1F F5 1F F6 1F F7 1F F8 1F 10 01 22 00]

[2c 00 00 02 00 01 ff ff 33 19 35 19 36 19 37 19 50 19 21 1C 43 1C 43 1D 2E 1E E2 1E E3 1E E4 1E E5 1E E6 1E EA 1E EB 1E EC 1E ED 1E EE 1E EF 1E F2 1E F5 1E F6 1E 03 1E 2C 13 2F 13 33 13 38 13 21 19 2D 19 38 19 39 19 43 19 4E 19 52 19 54 19 39 1A 22 1C 23 1C 24 1C 45 1C 47 1C 49 1C 4B 1C 4E 1C 58 1C 22 1D 2B 1D 41 1D 53 1D 22 1E 27 1E 29 1E 2B 1E 30 1E 42 1E 44 1E 46 1E 48 1E 49 1E 4B 1E 58 1E E7 1E E8 1E E9 1E F8 1E 01 1E 04 1E 05 1E 06 1E 2B 1F 39 1F 22 19 23 19 24 19 25 19 27 19 29 19 2B 19 2F 19 31 19 4D 19 4F 19 51 19 53 19 56 19 58 19 59 19 21 1A 25 1A 29 1A 95 1B 98 1B AB 1B 30 1C 39 1C 41 1C 4D 1C 4F 1C 51 1C 21 1D 39 1D 42 1D 4B 1D 4D 1D 4F 1D 51 1D 55 1D 59 1D 25 1E 2A 1E 33 1E 34 1E 35 1E 36 1E 37 1E 38 1E 43 1E 52 1E 54 1E 57 1E F9 1E 24 1F 28 1F 2F 1F 32 1F 30 12 32 12 21 13 2A 13 2D 13 2E 13 30 13 31 13 32 13 34 13 35 13 36 13 37 13 26 19 28 19 2A 19 2C 19 2E 19 30 19 32 19 34 19 41 19 44 19 46 19 48 19 4A 19 4C 19 55 19 57 19 22 1A 23 1A 24 1A 26 1A 27 1A 28 1A 2A 1A 2B 1A 2C 1A 2D 1A 2E 1A 2F 1A 30 1A 31 1A 33 1A 34 1A 35 1A 36 1A 37 1A 38 1A 21 1B 22 1B 23 1B 24 1B 25 1B 26 1B 27 1B 2B 1B 37 1B 39 1B 81 1B 82 1B 83 1B 84 1B 85 1B 86 1B 87 1B 88 1B 89 1B 8A 1B 8B 1B 8C 1B 8D 1B 8F 1B 90 1B 91 1B 92 1B 93 1B 94 1B 96 1B 97 1B 99 1B A1 1B A2 1B A3 1B A4 1B A5 1B A6 1B A7 1B A8 1B A9 1B AA 1B AC 1B AD 1B AE 1B AF 1B B0 1B B1 1B B2 1B B3 1B B4 1B B5 1B B6 1B B7 1B B8 1B B9 1B 25 1C 26 1C 27 1C 28 1C 29 1C 2A 1C 2B 1C 2C 1C 2D 1C 2E 1C 2F 1C 31 1C 32 1C 33 1C 34 1C 35 1C 38 1C 50 1C 52 1C 54 1C 56 1C 59 1C 24 1D 26 1D 27 1D 28 1D 29 1D 2A 1D 2C 1D 2D 1D 2E 1D 2F 1D 30 1D 31 1D 32 1D 33 1D 34 1D 35 1D 36 1D 37 1D 44 1D 46 1D 47 1D 48 1D 49 1D 4A 1D 4C 1D 21 1E 23 1E 24 1E 28 1E 2D 1E 2F 1E 31 1E 32 1E 39 1E 41 1E 45 1E 47 1E 4D 1E 4F 1E 50 1E 51 1E 53 1E 55 1E 56 1E 59 1E E1 1E F0 1E F1 1E F3 1E F4 1E F7 1E 02 1E 07 1E 21 1F 22 1F 23 1F 25 1F 26 1F 27 1F 29 1F 2D 1F 2E 1F 30 1F 31 1F 33 1F 34 1F 35 1F 36 1F 37 1F 38 1F 63 19 65 19 67 19 72 19 74 19 94 19 98 19 99 19 A2 19 A4 19 A6 19 A7 19 A9 19 AB 19 AD 19 AF 19 B0 19 B2 19 B4 19 B6 19 B8 19 42 1B 44 1B 46 1B 62 1B 64 1B 66 1B 68 1B 6A 1B 6B 1B 6C 1B 6D 1B 6F 1B 70 1B 71 1B 72 1B 73 1B 74 1B 75 1B 76 1B 77 1B 79 1B D1 1B D5 1B D7 1B 6D 1C 6E 1C 70 1C 72 1C 76 1C 78 1C AE 1C B8 1C 66 1D 67 1D 68 1D 6F 1D 10 01 22 00]

start-end  7*2 3319-0122
[2c 00 00 02 00 01 ff ff 33 19 35 19 36 19 33 1F 35 1F 36 1F  10 01 22  00]
[2c 00 00 02 00 01 ff ff 33 19 35 19 36 19 33 1F 35 1F 36 1F  10 01 22  00]
[2c 00 00 02 00 01 ff ff 00 01 02 03 00 01 02 03 00 01 02 03  10 01 22  00]
[2c 00 00 02 00 01 ff ff aa bb cc dd 00 01 02 03 00 01 02 03  10 01 22  00]

[2c 00 00 02 00 01 ff ff 33 19 35 19 36 19 33 1F 35 1F 33 33 33 33 36 1F  10 01   44 44 44 44  22  00]
[2c 00 00 02 00 01 ff ff aa bb cc dd 00 01 02 03 a1 bb cc dd 80 01 02 03 90 01 02 03 33 33 33 33 44 44 44 44 55 55 55 55  10 01 22  00]
[2c 00 00 02 00 01 ff ff 33 33 33 33 44 44 44 44 55 55 55 55 aa bb cc dd 00 01 02 03 a1 bb cc dd 80 01 02 03 90 01 02 03  10 01 22  00]
[2c 00 00 02 00 01 ff ff 00 01 02 03 00 01 02 03 00 01 02 03 00 01 02 03  10 01 22  00]
[2c 00 00 02 00 01 ff ff aa bb cc dd 00 01 02 03 00 01 02 03 00 01 02 03 00 01 02 03  10 01 22  00]


start-
[2c 00 00 02 00 01 ff ff 33 19 35 19 36 19 ]
-end
[33 1F 35 1F 36 1F  10 01 22  00]


[2c 00 00 02 00 01 ff ff 19 33 19 35 19 37 10 01 22 00] bram: FFFF 3319 3519 3719 0110 0022 0000 0000 0000
[2c 00 00 02 00 01 ff ff 19 33 19 35 19 37 10 01 22 00]
[28 00]  cmd_read_data
*/
//ddr 0x1FF00000-0x20000000
#define shift_ddr 4
#define tcp_buf1 0x1FF00000
#define tcp_buf2 0x1FF10000
#define tcp_buf3 0x1FF20000
#define tcp_buf4 0x1FF30000

//fail
unsigned char *pdownbuf1t;//tcp data -> bram 4k*2
unsigned char *pdownbuf2t;//tcp data -> bram 4k*2
unsigned char *pdownbuf3t;//tcp data -> bram 4k*2
unsigned char *pdownbuf4t;//tcp data -> bram 4k*2


unsigned short int *pdownbuf1;//tcp data -> bram 4k*2
unsigned short int *pdownbuf2;//tcp data -> bram 4k*2
unsigned short int *pdownbuf3;//tcp data -> bram 4k*2
unsigned short int *pdownbuf4;//tcp data -> bram 4k*2
unsigned short int cmd_shutdown_OK[] = { 0x0000 };
char cmd_shutdown_ERROR[] = { 0xc4,0x0e };
char cmd_start_scanning[] = { 0,0 };
char cmd_read_data[] = { 0x28,0 };

#include "sleep.h"
#include "xtime_l.h"
//1s=333333343<CR><LF>
#if old_tcp
void Gpiodown(int channel)
{
	if(channel==1)
	{
	    XGpio_WriteReg(down1, XGPIO_DATA_OFFSET,  0x00000001);
  	    xil_printf2("set down gpio %d\r\n",XGpio_ReadReg(down1, XGPIO_DATA_OFFSET));
	    XGpio_WriteReg(down1, XGPIO_DATA_OFFSET,  0x00000000);
	    XTime_GetTime(&tbegin1);
	    bt1=1;

	}
	else if(channel==2)
	{
	    XGpio_WriteReg(down2, XGPIO_DATA_OFFSET,  0x00000001);
  	    xil_printf2("set down gpio %d\r\n",XGpio_ReadReg(down2, XGPIO_DATA_OFFSET));
	    XGpio_WriteReg(down2, XGPIO_DATA_OFFSET,  0x00000000);
	    XTime_GetTime(&tbegin2);
	    bt2=1;

	}
	else if(channel==3)
	{
	    XGpio_WriteReg(down3, XGPIO_DATA_OFFSET,  0x00000001);
  	    xil_printf2("set down gpio %d\r\n",XGpio_ReadReg(down3, XGPIO_DATA_OFFSET));
	    XGpio_WriteReg(down3, XGPIO_DATA_OFFSET,  0x00000000);
	    XTime_GetTime(&tbegin3);
	    bt3=1;

	}
	else if(channel==4)
	{
	    XGpio_WriteReg(down4, XGPIO_DATA_OFFSET,  0x00000001);
  	    xil_printf2("set down gpio %d\r\n",XGpio_ReadReg(down4, XGPIO_DATA_OFFSET));
	    XGpio_WriteReg(down4, XGPIO_DATA_OFFSET,  0x00000000);
	    XTime_GetTime(&tbegin4);
	    bt4=1;

	}
	    xil_printf("\r\n\r\ndown gpio %d\r\n-------------------------------\r\n",channel);

}
#endif

void print_app_header()
{
#if LWIP_IPV6==1
	xil_printf("TCP client connecting to %s on port %d\r\n",
			TCP_SERVER_IPV6_ADDRESS, TCP_CONN_PORT);
	xil_printf("On Host: Run $iperf -V -s -i %d -w 2M\r\n",
			INTERIM_REPORT_INTERVAL);
#else
	xil_printf("TCP client connecting to %s on port %d\r\n",
			TCP_SERVER_IP_ADDRESS, TCP_CONN_PORT);
	xil_printf("On Host: Run $iperf -s -i %d -w 2M\r\n",
			INTERIM_REPORT_INTERVAL);
#endif /* LWIP_IPV6 */
}

static void print_tcp_conn_stats()
{
#if LWIP_IPv6==1
	xil_printf("[%3d] local %s port %d connected with ",
			client.client_id, inet6_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet6_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#else
	xil_printf("[%3d] local %s port %d connected with ",
			client.client_id, inet_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#endif /* LWIP_IPV6 */

	xil_printf("[1 ID] Interval\t\tTransfer   Bandwidth\n\r");
}


static void print_tcp_conn_stats1()
{
#if LWIP_IPv6==1
	xil_printf("[%3d] local %s port %d connected with ",
			client.client_id, inet6_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet6_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#else
	xil_printf("ch2 [%3d] local %s port %d connected with ",
			client1.client_id, inet_ntoa(c_pcb1->local_ip),
			c_pcb1->local_port);
	xil_printf("%s port %d\r\n",inet_ntoa(c_pcb1->remote_ip),
			c_pcb1->remote_port);
#endif /* LWIP_IPV6 */

	xil_printf("[2 ID] Interval\t\tTransfer   Bandwidth\n\r");
}



static void print_tcp_conn_stats2()
{
#if LWIP_IPv6==1
	xil_printf("[%3d] local %s port %d connected with ",
			client.client_id, inet6_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet6_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#else
	xil_printf("ch3 [%3d] local %s port %d connected with ",
			client2.client_id, inet_ntoa(c_pcb2->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet_ntoa(c_pcb2->remote_ip),
			c_pcb2->remote_port);
#endif /* LWIP_IPV6 */

	xil_printf("[3 ID] Interval\t\tTransfer   Bandwidth\n\r");
}



static void print_tcp_conn_stats3()
{
#if LWIP_IPv6==1
	xil_printf("[%3d] local %s port %d connected with ",
			client.client_id, inet6_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet6_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#else
	xil_printf("ch4 [%3d] local %s port %d connected with ",
			client3.client_id, inet_ntoa(c_pcb3->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet_ntoa(c_pcb3->remote_ip),
			c_pcb3->remote_port);
#endif /* LWIP_IPV6 */

	xil_printf("[4 ID] Interval\t\tTransfer   Bandwidth\n\r");
}

static void stats_buffer(char* outString,
		double data, enum measure_t type)
{
	int conv = KCONV_UNIT;
	const char *format;
	double unit = 1024.0;

	if (type == SPEED)
		unit = 1000.0;

	while (data >= unit && conv <= KCONV_GIGA) {
		data /= unit;
		conv++;
	}

	/* Fit data in 4 places */
	if (data < 9.995) { /* 9.995 rounded to 10.0 */
		format = "%4.2f %c"; /* #.## */
	} else if (data < 99.95) { /* 99.95 rounded to 100 */
		format = "%4.1f %c"; /* ##.# */
	} else {
		format = "%4.0f %c"; /* #### */
	}
	sprintf(outString, format, data, kLabel[conv]);
}


/** The report function of a TCP client session */
static void tcp_conn_report(u64_t diff,
		enum report_type report_type)
{
	u64_t total_len;
	double duration, bandwidth = 0;
	char data[16], perf[16], time[64];

	if (report_type == INTER_REPORT) {
		total_len = client.i_report.total_bytes;
	} else {
		client.i_report.last_report_time = 0;
		total_len = client.total_bytes;
	}

	/* Converting duration from milliseconds to secs,
	 * and bandwidth to bits/sec .
	 */
	duration = diff / 1000.0; /* secs */
	if (duration)
		bandwidth = (total_len / duration) * 8.0;

	stats_buffer(data, total_len, BYTES);
	stats_buffer(perf, bandwidth, SPEED);
	/* On 32-bit platforms, xil_printf is not able to print
	 * u64_t values, so converting these values in strings and
	 * displaying results
	 */
	sprintf(time, "%4.1f-%4.1f sec",
			(double)client.i_report.last_report_time,
			(double)(client.i_report.last_report_time + duration));
	xil_printf("[%3d] %s  %sBytes  %sbits/sec\n\r", client.client_id,
			time, data, perf);

	if (report_type == INTER_REPORT)
		client.i_report.last_report_time += duration;
}

/** Close a tcp session */
static void tcp_client_close(struct tcp_pcb *pcb)
{
	err_t err;

	if (pcb != NULL) {
		tcp_sent(pcb, NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
	}
	xil_printf("close tcp_client_close\n\r");
}

/** Error callback, tcp session aborted */
static void tcp_client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	u64_t now = get_time_ms();
	u64_t diff_ms = now - client.start_time;

	tcp_client_close(c_pcb);
	c_pcb = NULL;
	tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
	xil_printf("TCP connection aborted\n\r");
}

static void tcp_client_err1(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	u64_t now = get_time_ms();
	u64_t diff_ms = now - client1.start_time;

	tcp_client_close(c_pcb1);
	c_pcb1 = NULL;
	tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
	xil_printf("TCP connection aborted\n\r");
}

static void tcp_client_err2(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	u64_t now = get_time_ms();
	u64_t diff_ms = now - client2.start_time;

	tcp_client_close(c_pcb2);
	c_pcb2 = NULL;
	tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
	xil_printf("TCP connection aborted\n\r");
}

static void tcp_client_err3(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	u64_t now = get_time_ms();
	u64_t diff_ms = now - client3.start_time;

	tcp_client_close(c_pcb3);
	c_pcb3 = NULL;
	tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
	xil_printf("TCP connection aborted\n\r");
}

static err_t tcp_send_perf_traffic(void)
{
#if test_perf
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	while (tcp_sndbuf(c_pcb) > TCP_SEND_BUFSIZE) {
		err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}

		err = tcp_output(c_pcb);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		client.total_bytes += TCP_SEND_BUFSIZE;
		client.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}

	if (client.end_time || client.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		if (client.i_report.report_interval_time) {
			if (client.i_report.start_time) {
				u64_t diff_ms = now - client.i_report.start_time;
				u64_t rtime_ms = client.i_report.report_interval_time;
				if (diff_ms >= rtime_ms) {
					tcp_conn_report(diff_ms, INTER_REPORT);
					client.i_report.start_time = 0;
					client.i_report.total_bytes = 0;
				}
			} else {
				client.i_report.start_time = now;
			}
		}

		if (client.end_time) {
			/* this session is time-limited */
			u64_t diff_ms = now - client.start_time;
			if (diff_ms >= client.end_time) {
				/* time specified is over,
				 * close the connection */
				tcp_conn_report(diff_ms, TCP_DONE_CLIENT);
				xil_printf("TCP test passed Successfully\n\r");
				tcp_client_close(c_pcb);
				c_pcb = NULL;
				return ERR_OK;
			}
		}
	}
#endif
	return ERR_OK;
}


static err_t tcp_send_perf_traffic1(void)
{
#if test_perf
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb1 == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	while (tcp_sndbuf(c_pcb1) > TCP_SEND_BUFSIZE) {
		err = tcp_write(c_pcb1, send_buf1, TCP_SEND_BUFSIZE, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}

		err = tcp_output(c_pcb1);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		client1.total_bytes += TCP_SEND_BUFSIZE;
		client1.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	//client
	if (client1.end_time || client1.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		if (client1.i_report.report_interval_time) {
			if (client1.i_report.start_time) {
				u64_t diff_ms = now - client1.i_report.start_time;
				u64_t rtime_ms = client1.i_report.report_interval_time;
				if (diff_ms >= rtime_ms) {
					tcp_conn_report(diff_ms, INTER_REPORT);
					client1.i_report.start_time = 0;
					client1.i_report.total_bytes = 0;
				}
			} else {
				client1.i_report.start_time = now;
			}
		}

		if (client1.end_time) {
			/* this session is time-limited */
			u64_t diff_ms = now - client1.start_time;
			if (diff_ms >= client1.end_time) {
				/* time specified is over,
				 * close the connection */
				tcp_conn_report(diff_ms, TCP_DONE_CLIENT);
				xil_printf("TCP test passed Successfully\n\r");
				tcp_client_close(c_pcb1);
				c_pcb1 = NULL;
				return ERR_OK;
			}
		}
	}
#endif
	return ERR_OK;
}



static err_t tcp_send_perf_traffic2(void)
{
#if test_perf
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb1 == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	while (tcp_sndbuf(c_pcb1) > TCP_SEND_BUFSIZE) {
		err = tcp_write(c_pcb1, send_buf1, TCP_SEND_BUFSIZE, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}

		err = tcp_output(c_pcb1);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		client1.total_bytes += TCP_SEND_BUFSIZE;
		client1.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	//client
	if (client1.end_time || client1.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		if (client1.i_report.report_interval_time) {
			if (client1.i_report.start_time) {
				u64_t diff_ms = now - client1.i_report.start_time;
				u64_t rtime_ms = client1.i_report.report_interval_time;
				if (diff_ms >= rtime_ms) {
					tcp_conn_report(diff_ms, INTER_REPORT);
					client1.i_report.start_time = 0;
					client1.i_report.total_bytes = 0;
				}
			} else {
				client1.i_report.start_time = now;
			}
		}

		if (client1.end_time) {
			/* this session is time-limited */
			u64_t diff_ms = now - client1.start_time;
			if (diff_ms >= client1.end_time) {
				/* time specified is over,
				 * close the connection */
				tcp_conn_report(diff_ms, TCP_DONE_CLIENT);
				xil_printf("TCP test passed Successfully\n\r");
				tcp_client_close(c_pcb1);
				c_pcb1 = NULL;
				return ERR_OK;
			}
		}
	}
#endif
	return ERR_OK;
}


static err_t tcp_send_perf_traffic3(void)
{
#if test_perf
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb1 == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	while (tcp_sndbuf(c_pcb1) > TCP_SEND_BUFSIZE) {
		err = tcp_write(c_pcb1, send_buf1, TCP_SEND_BUFSIZE, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}

		err = tcp_output(c_pcb1);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		client1.total_bytes += TCP_SEND_BUFSIZE;
		client1.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	//client
	if (client1.end_time || client1.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		if (client1.i_report.report_interval_time) {
			if (client1.i_report.start_time) {
				u64_t diff_ms = now - client1.i_report.start_time;
				u64_t rtime_ms = client1.i_report.report_interval_time;
				if (diff_ms >= rtime_ms) {
					tcp_conn_report(diff_ms, INTER_REPORT);
					client1.i_report.start_time = 0;
					client1.i_report.total_bytes = 0;
				}
			} else {
				client1.i_report.start_time = now;
			}
		}

		if (client1.end_time) {
			/* this session is time-limited */
			u64_t diff_ms = now - client1.start_time;
			if (diff_ms >= client1.end_time) {
				/* time specified is over,
				 * close the connection */
				tcp_conn_report(diff_ms, TCP_DONE_CLIENT);
				xil_printf("TCP test passed Successfully\n\r");
				tcp_client_close(c_pcb1);
				c_pcb1 = NULL;
				return ERR_OK;
			}
		}
	}
#endif
	return ERR_OK;
}

/** TCP sent callback, try to send more data */
static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	return tcp_send_perf_traffic();
}

static err_t tcp_client_sent1(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	return tcp_send_perf_traffic1();
}

static err_t tcp_client_sent2(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	return tcp_send_perf_traffic2();
}

static err_t tcp_client_sent3(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	return tcp_send_perf_traffic3();
}


err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	u8 *TxBufferPtr;
	u8 *RxBufferPtr;
	TxBufferPtr = (u8 *)0x10100000 ;
	RxBufferPtr = (u8 *)0x10300000 ;

	int ch=ch1;
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		xil_printf("recv_callback fail\r\n ");
		return ERR_OK;
	}
	xil_printf("\r\nRecieved Packet %d. Length = %d ",ch, p->len);
	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	unsigned short int *cp = (unsigned short int *)p->payload;
	unsigned char *dmap = (unsigned char  *)p->payload;
#if debug_cmd
	for(int i=0; i<(p->len)/2;i++)
	   xil_printf(" %04x",  *(cp++));
	   xil_printf("\r\n");
#endif

	   xil_printf("\r\ncmd %04x\r\n",(*(cp+0)));
		if(p->len==2)
		{
			if(((*(cp+0))==0xffff))
			{
				  tcp_write(tpcb, cmd_shutdown_OK, 2, 1);
				   xil_printf("cmd_shutdown_OK\r\n");
			}
			else if(((*(cp+0))==0x0))
			{
				   xil_printf("cmd_start_scanning\r\n");
			}
			else if(((*(cp+0))==0x0028))
			{
				   xil_printf("cmd_read_data\r\n");

			}
			else if(((*(cp+0))==0x0100))
			{
				   xil_printf("cmd_read_data Plan ID1\r\n");
			}
			else if(((*(cp+0))==0x0200))
			{
				   xil_printf("cmd_read_data Plan ID2\r\n");
			}
			else if(((*(cp+0))==0x0300))
			{
				   xil_printf("cmd_read_data Plan ID3\r\n");
			}
			else if(((*(cp+0))==0x0400))
			{
				   xil_printf("cmd_read_data Plan ID4\r\n");
			}
		}
		else
		{
		//A:ALL      0xCF
		//B:START    0X0F
		//C:2-END-1  0x00
		//D:end	     0xC0
		int head=0;

		//A,B
			if( ((*(cp+0))==0x002c) &&  ((*(cp+1))==0x0200) &&  ((*(cp+2))==0x0100)  && ((*(cp+3))==0xffff) )
					{
						   xil_printf("scan Plan\r\n");
						   head=0xf;
						   //A
							if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
							{
								   xil_printf("end data(ALL)\r\n");
								   head=head|0xc0;
							}
					}
			else	if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
					{
					//D
						   xil_printf("end data\r\n");
						   head=0xc0;
					}
			else
					{
					//C
				    xil_printf("get data\r\n");
					}




			int plen2=(p->len)/2;
			xil_printf("\r\nplen2=%x head=%x\r\n",plen2,head);
			//4byte length(for fpga)+data
			if(head==0xF)//start
			{
				up1mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up1start=8+*len;
				up1len=p->len+*len;
/*
				for(int i=0;i<(plen2-2);i++)
				{//cpu copy tcp data to bram
				 *(pdownbuf1+i)=*(cp+i+2);
				 xil_printf("[%04x ",  *(pdownbuf1+i));
				}
				up1len=plen2-2;//head4
				*/
			}
			else if(head==0xCF)//start-end
			{
				up1mode=1;
#define MAX_PKT_LEN 100


int Status;
//#define ok 1
#if ok
//#define MAX_PKT_LEN 100
	//		    u8 *TxBufferPtr;
TxBufferPtr = (u8 *)0x10100000 ;
RxBufferPtr = (u8 *)0x10300000 ;
				int Value=*(cp+9);
			    for(int Index = 0; Index < MAX_PKT_LEN; Index ++) {
			            TxBufferPtr[Index] = Value;

			            Value = (Value + 1) & 0xFF;
			    }

			    Dma0DDR2IP((u8 *)0x10100000,12);
			    Dma0IP2DDR((u8 *)RxBufferPtr,12);
//			    /int Status;
			    //int Status = CheckData(MAX_PKT_LEN, 0xC);
			    //usleep(5000000);

Xil_DCacheFlushRange((u32)RxBufferPtr, MAX_PKT_LEN);
Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
			    Status = CheckDatatcp(MAX_PKT_LEN, 0xC);
#else

			    //int *len,txlen;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				//Dma0DDR2IP((u8 *)tcp_dma,64);//(txlen+txlen%4));
				//usleep(100);
				//Dma0IP2DDR((u8 *)0x10300000,64);//(txlen+txlen%4));
#if tcp_ok
				Dma0DDR2IP((u8 *)tcp_dma,p->len+*len);
				Dma0IP2DDR((u8 *)tcp_dma_address,p->len+*len);
#endif
				up1start=8+*len;
				up1len=p->len+*len-2;

			    /*
			    memcpy(TxBufferPtr, (u8*)p->payload, p->len);
							{
			    			//xil_printf("[%x %x %x]",(u8*)p->payload,(u8*)*(dmap+1),*(dmap+1));
			    			xil_printf("[%x %x[%02x %02x %02x %02x]",(u8*)p->payload,TxBufferPtr, TxBufferPtr[0],TxBufferPtr[1],TxBufferPtr[2],TxBufferPtr[3]);
							}
						    //Dma0DDR2IP((u8 *)TxBufferPtr,p->len);
						    //Dma0IP2DDR((u8 *)RxBufferPtr,p->len);

			    Xil_DCacheFlushRange((u8)TxBufferPtr,p->len);
			    Xil_DCacheFlushRange((u8 *)p->payload,p->len);
			    Dma0DDR2IP((u8 *)TxBufferPtr,p->len);
			    usleep(100);
			    Dma0IP2DDR((u8 *)RxBufferPtr,p->len);
*/
/*			    usleep(5000000);


Xil_DCacheFlushRange((u32)RxBufferPtr, MAX_PKT_LEN);
Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
*/
			    //Status = CheckDatatcp(MAX_PKT_LEN, 0xC);

#endif
			    /*

					Dma0DDR2IP((u8 *)(dmap+0),p->len-0);





				    Dma0IP2DDR((u8 *)0x10800000,p->len-0);
				    usleep(5000000);
				    Dma0IP2DDR((u8 *)0x1F800000,p->len-0);
				    usleep(5000000);
				    Xil_DCacheFlushRange((u32)0x1F800000, 0x100);
				    Xil_DCacheInvalidateRange((u32)0x1F800000, 0x100);
				    usleep(5000000);
				    Xil_DCacheFlushRange((u32)0x1F800000, 0x100);
				    Xil_DCacheInvalidateRange((u32)0x1F800000, 0x100);
				    //int Status = CheckData(100, 0xC);
				    //Dma0DDR2IP((u8 *)(dmap+12),12);
				    //Dma0IP2DDR((u8 *)(0x10000000+12),12);
				    //Status = CheckData(100, 0xC);
*/
				/*
				for(int i=0;i<(plen2)-3;i++)
				{//cpu copy tcp data to bram
				 *(pdownbuf1+i)=*(cp+i+2);
				 xil_printf("[%04x]",  *(pdownbuf1+i));
				}
				up1len=plen2-3;//head4+end1
				*(pdownbuf1+1)=0;
				*(pdownbuf1+0)=up1len-1;

				Gpiodown(ch);//run fpga
				*/
			}
			else if(head==0xC0)//end()
			{
				up1mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up1start=0+*len;
				up1len=p->len+*len-2;
/*
				for(int i=0;i<(plen2)-1;i++)
				{//cpu copy tcp data to bram
				 *(pdownbuf1+i+up1len)=*(cp+i);
				 xil_printf(" %04x]",  *(pdownbuf1+i+up1len));
				}
				up1len=up1len+plen2-1;
				*(pdownbuf1+1)=0;
				*(pdownbuf1+0)=up1len-1;
				Gpiodown(ch);//run fpga
				*/
			}
			else
			{
				up1mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));

				up1start=0+*len;
				up1len=p->len+*len;
/*
				for(int i=0;i<(plen2);i++)
				{//cpu copy tcp data to bram
				 *(pdownbuf1+i+up1len)=*(cp+i);
				 xil_printf("|%04x",  *(pdownbuf1+i+up1len));
				}
				up1len=up1len+plen2;//start len+ len+len...
				*/
			}



			//transfer_up1();

			 //tcp_write(tpcb, (volatile short int *)upbuf1, 0x5e,  0);//fpga bram1 --> tcp



		}
#define debug_bram 0
#if debug_bram
		   xil_printf("\r\nDOWN bram%d:len=%d\r\n",ch,up1len);
	for(int i=0; i<up1len;i++)//				for(int i=0; i<((p->len)/2-6);i++)
	   xil_printf(" %04x",  *(pdownbuf1+i));
	   xil_printf("\r\n");
#else
	   xil_printf("\r\nDOWN bram%d:len=%d\r\n",ch,up1len);
#endif
		Dma0DDR2IP((u8 *)tcp_dma,p->len+*len);
		Dma0IP2DDR((u8 *)tcp_dma_address,p->len+*len);

	/* free the received pbuf */
	pbuf_free(p);
	transfer_up1();


	return ERR_OK;
}




err_t recv_callback1(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	u8 *TxBufferPtr;
	u8 *RxBufferPtr;
	TxBufferPtr = (u8 *)0x10100000 ;
	RxBufferPtr = (u8 *)0x10300000 ;

	int ch=ch2;
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		xil_printf("recv_callback fail\r\n ");
		return ERR_OK;
	}
	xil_printf("\r\nRecieved Packet %d. Length = %d ",ch, p->len);
	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	unsigned short int *cp = (unsigned short int *)p->payload;
	unsigned char *dmap = (unsigned char  *)p->payload;
#if debug_cmd
	for(int i=0; i<(p->len)/2;i++)
	   xil_printf(" %04x",  *(cp++));
	   xil_printf("\r\n");
#endif

	   xil_printf("\r\ncmd %04x\r\n",(*(cp+0)));
		if(p->len==2)
		{
			if(((*(cp+0))==0xffff))
			{
				  tcp_write(tpcb, cmd_shutdown_OK, 2, 1);
				   xil_printf("cmd_shutdown_OK\r\n");
			}
			else if(((*(cp+0))==0x0))
			{
				   xil_printf("cmd_start_scanning\r\n");
			}
			else if(((*(cp+0))==0x0028))
			{
				   xil_printf("cmd_read_data\r\n");

			}
			else if(((*(cp+0))==0x0100))
			{
				   xil_printf("cmd_read_data Plan ID1\r\n");
			}
			else if(((*(cp+0))==0x0200))
			{
				   xil_printf("cmd_read_data Plan ID2\r\n");
			}
			else if(((*(cp+0))==0x0300))
			{
				   xil_printf("cmd_read_data Plan ID3\r\n");
			}
			else if(((*(cp+0))==0x0400))
			{
				   xil_printf("cmd_read_data Plan ID4\r\n");
			}
		}
		else
		{
		//A:ALL      0xCF
		//B:START    0X0F
		//C:2-END-1  0x00
		//D:end	     0xC0
		int head=0;

		//A,B
			if( ((*(cp+0))==0x002c) &&  ((*(cp+1))==0x0200) &&  ((*(cp+2))==0x0100)  && ((*(cp+3))==0xffff) )
					{
						   xil_printf("scan Plan\r\n");
						   head=0xf;
						   //A
							if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
							{
								   xil_printf("end data(ALL)\r\n");
								   head=head|0xc0;
							}
					}
			else	if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
					{
					//D
						   xil_printf("end data\r\n");
						   head=0xc0;
					}
			else
					{
					//C
				    xil_printf("get data\r\n");
					}




			int plen2=(p->len)/2;
			xil_printf("\r\nplen2=%x head=%x\r\n",plen2,head);
			//4byte length(for fpga)+data
			if(head==0xF)//start
			{
				up2mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up2start=8+*len;
				up2len=p->len+*len;

			}
			else if(head==0xCF)//start-end
			{
				up2mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
 				up2start=8+*len;
				up2len=p->len+*len-2;



			}
			else if(head==0xC0)//end()
			{
				up2mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up2start=0+*len;
				up2len=p->len+*len-2;

			}
			else
			{
				up2mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));

				up2start=0+*len;
				up2len=p->len+*len;

			}
		}
		Dma0DDR2IP((u8 *)tcp_dma,p->len+*len);
		Dma0IP2DDR((u8 *)tcp_dma_address,p->len+*len);

	/* free the received pbuf */
	pbuf_free(p);
	transfer_up2();


	return ERR_OK;
}



err_t recv_callback2(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	u8 *TxBufferPtr;
	u8 *RxBufferPtr;
	TxBufferPtr = (u8 *)0x10100000 ;
	RxBufferPtr = (u8 *)0x10300000 ;

	int ch=ch3;
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		xil_printf("recv_callback fail\r\n ");
		return ERR_OK;
	}
	xil_printf("\r\nRecieved Packet %d. Length = %d ",ch, p->len);
	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	unsigned short int *cp = (unsigned short int *)p->payload;
	unsigned char *dmap = (unsigned char  *)p->payload;
#if debug_cmd
	for(int i=0; i<(p->len)/2;i++)
	   xil_printf(" %04x",  *(cp++));
	   xil_printf("\r\n");
#endif

	   xil_printf("\r\ncmd %04x\r\n",(*(cp+0)));
		if(p->len==2)
		{
			if(((*(cp+0))==0xffff))
			{
				  tcp_write(tpcb, cmd_shutdown_OK, 2, 1);
				   xil_printf("cmd_shutdown_OK\r\n");
			}
			else if(((*(cp+0))==0x0))
			{
				   xil_printf("cmd_start_scanning\r\n");
			}
			else if(((*(cp+0))==0x0028))
			{
				   xil_printf("cmd_read_data\r\n");

			}
			else if(((*(cp+0))==0x0100))
			{
				   xil_printf("cmd_read_data Plan ID1\r\n");
			}
			else if(((*(cp+0))==0x0200))
			{
				   xil_printf("cmd_read_data Plan ID2\r\n");
			}
			else if(((*(cp+0))==0x0300))
			{
				   xil_printf("cmd_read_data Plan ID3\r\n");
			}
			else if(((*(cp+0))==0x0400))
			{
				   xil_printf("cmd_read_data Plan ID4\r\n");
			}
		}
		else
		{
		//A:ALL      0xCF
		//B:START    0X0F
		//C:2-END-1  0x00
		//D:end	     0xC0
		int head=0;

		//A,B
			if( ((*(cp+0))==0x002c) &&  ((*(cp+1))==0x0200) &&  ((*(cp+2))==0x0100)  && ((*(cp+3))==0xffff) )
					{
						   xil_printf("scan Plan\r\n");
						   head=0xf;
						   //A
							if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
							{
								   xil_printf("end data(ALL)\r\n");
								   head=head|0xc0;
							}
					}
			else	if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
					{
					//D
						   xil_printf("end data\r\n");
						   head=0xc0;
					}
			else
					{
					//C
				    xil_printf("get data\r\n");
					}




			int plen2=(p->len)/2;
			xil_printf("\r\nplen2=%x head=%x\r\n",plen2,head);
			if(head==0xF)//start
			{
				up3mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up3start=8+*len;
				up3len=p->len+*len;

			}
			else if(head==0xCF)//start-end
			{
				up3mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up3start=8+*len;
				up3len=p->len+*len-2;



			}
			else if(head==0xC0)//end()
			{
				up3mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up3start=0+*len;
				up3len=p->len+*len-2;

			}
			else
			{
				up3mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));

				up3start=0+*len;
				up3len=p->len+*len;

			}
		}
		Dma0DDR2IP((u8 *)tcp_dma,p->len+*len);
		Dma0IP2DDR((u8 *)tcp_dma_address,p->len+*len);


	/* free the received pbuf */
	pbuf_free(p);
	transfer_up3();


	return ERR_OK;
}



err_t recv_callback3(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	u8 *TxBufferPtr;
	u8 *RxBufferPtr;
	TxBufferPtr = (u8 *)0x10100000 ;
	RxBufferPtr = (u8 *)0x10300000 ;

	int ch=ch4;
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		xil_printf("recv_callback fail\r\n ");
		return ERR_OK;
	}
	xil_printf("\r\nRecieved Packet %d. Length = %d ",ch, p->len);
	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	unsigned short int *cp = (unsigned short int *)p->payload;
	unsigned char *dmap = (unsigned char  *)p->payload;
#if debug_cmd
	for(int i=0; i<(p->len)/2;i++)
	   xil_printf(" %04x",  *(cp++));
	   xil_printf("\r\n");
#endif

	   xil_printf("\r\ncmd %04x\r\n",(*(cp+0)));
		if(p->len==2)
		{
			if(((*(cp+0))==0xffff))
			{
				  tcp_write(tpcb, cmd_shutdown_OK, 2, 1);
				   xil_printf("cmd_shutdown_OK\r\n");
			}
			else if(((*(cp+0))==0x0))
			{
				   xil_printf("cmd_start_scanning\r\n");
			}
			else if(((*(cp+0))==0x0028))
			{
				   xil_printf("cmd_read_data\r\n");

			}
			else if(((*(cp+0))==0x0100))
			{
				   xil_printf("cmd_read_data Plan ID1\r\n");
			}
			else if(((*(cp+0))==0x0200))
			{
				   xil_printf("cmd_read_data Plan ID2\r\n");
			}
			else if(((*(cp+0))==0x0300))
			{
				   xil_printf("cmd_read_data Plan ID3\r\n");
			}
			else if(((*(cp+0))==0x0400))
			{
				   xil_printf("cmd_read_data Plan ID4\r\n");
			}
		}
		else
		{
		//A:ALL      0xCF
		//B:START    0X0F
		//C:2-END-1  0x00
		//D:end	     0xC0
		int head=0;

		//A,B
			if( ((*(cp+0))==0x002c) &&  ((*(cp+1))==0x0200) &&  ((*(cp+2))==0x0100)  && ((*(cp+3))==0xffff) )
					{
						   xil_printf("scan Plan\r\n");
						   head=0xf;
						   //A
							if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
							{
								   xil_printf("end data(ALL)\r\n");
								   head=head|0xc0;
							}
					}
			else	if(((*(cp+((p->len)/2-1)))==0x0022))// && ((*(cp+((p->len)/2-2)))==0x0110))
					{
					//D
						   xil_printf("end data\r\n");
						   head=0xc0;
					}
			else
					{
					//C
				    xil_printf("get data\r\n");
					}




			int plen2=(p->len)/2;
			xil_printf("\r\nplen2=%x head=%x\r\n",plen2,head);
			if(head==0xF)//start
			{
				up4mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up4start=8+*len;
				up4len=p->len+*len;

			}
			else if(head==0xCF)//start-end
			{
				up4mode=1;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up4start=8+*len;
				up4len=p->len+*len-2;
			}
			else if(head==0xC0)//end()
			{
				up4mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));
				up4start=0+*len;
				up4len=p->len+*len-2;

				}
			else
			{
				up4mode=0;
			    tcp_dma=Dma0TCP((u8*)p->payload,len);
			    txlen=(p->len+(*len));
			    xil_printf("[len=%x txlen=%x %x]",*len,txlen,(txlen+txlen%4));

				up4start=0+*len;
				up4len=p->len+*len;

				}
			}
		Dma0DDR2IP((u8 *)tcp_dma,p->len+*len);
		Dma0IP2DDR((u8 *)tcp_dma_address,p->len+*len);


	/* free the received pbuf */
	pbuf_free(p);
	transfer_up4();

	return ERR_OK;
}



/** TCP connected callback (active connection), send data now */
static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n\r");
		return err;
	}
	/* store state */
	c_pcb = tpcb;

	client.start_time = get_time_ms();
	client.end_time = TCP_TIME_INTERVAL * 1000; /* ms */
	client.client_id++;
	client.total_bytes = 0;

	/* report interval time in ms */
	client.i_report.report_interval_time = INTERIM_REPORT_INTERVAL * 1000;
	client.i_report.last_report_time = 0;
	client.i_report.start_time = 0;
	client.i_report.total_bytes = 0;

	print_tcp_conn_stats();

	/* set callback values & functions */
	tcp_arg(c_pcb, NULL);
	tcp_sent(c_pcb, tcp_client_sent);
	tcp_err(c_pcb, tcp_client_err);
	xil_printf("Connection recv_callback0\n\r");
	tcp_recv(c_pcb, recv_callback);

	/* initiate data transfer */
	return ERR_OK;
}



/** TCP connected callback (active connection), send data now */
static err_t tcp_client_connected1(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n\r");
		return err;
	}
	/* store state */
	c_pcb1 = tpcb;

	client1.start_time = get_time_ms();
	client1.end_time = TCP_TIME_INTERVAL * 1000; /* ms */
	client1.client_id++;
	client1.total_bytes = 0;

	/* report interval time in ms */
	client1.i_report.report_interval_time = INTERIM_REPORT_INTERVAL * 1000;
	client1.i_report.last_report_time = 0;
	client1.i_report.start_time = 0;
	client1.i_report.total_bytes = 0;

	print_tcp_conn_stats1();

	/* set callback values & functions */
	tcp_arg(c_pcb1, NULL);
	tcp_sent(c_pcb1, tcp_client_sent1);
	tcp_err(c_pcb1, tcp_client_err1);
	xil_printf("Connection recv_callback1\n\r");
	tcp_recv(c_pcb1, recv_callback1);
	/* initiate data transfer */
	return ERR_OK;
}


/** TCP connected callback (active connection), send data now */
static err_t tcp_client_connected2(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n\r");
		return err;
	}
	/* store state */
	c_pcb2 = tpcb;

	client2.start_time = get_time_ms();
	client2.end_time = TCP_TIME_INTERVAL * 1000; /* ms */
	client2.client_id++;
	client2.total_bytes = 0;

	/* report interval time in ms */
	client2.i_report.report_interval_time = INTERIM_REPORT_INTERVAL * 1000;
	client2.i_report.last_report_time = 0;
	client2.i_report.start_time = 0;
	client2.i_report.total_bytes = 0;

	print_tcp_conn_stats2();

	/* set callback values & functions */
	tcp_arg(c_pcb2, NULL);
	tcp_sent(c_pcb2, tcp_client_sent2);
	tcp_err(c_pcb2, tcp_client_err2);
	xil_printf("Connection recv_callback2\n\r");
	tcp_recv(c_pcb2, recv_callback2);
	/* initiate data transfer */
	return ERR_OK;
}

/** TCP connected callback (active connection), send data now */
static err_t tcp_client_connected3(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n\r");
		return err;
	}
	/* store state */
	c_pcb3 = tpcb;

	client3.start_time = get_time_ms();
	client3.end_time = TCP_TIME_INTERVAL * 1000; /* ms */
	client3.client_id++;
	client3.total_bytes = 0;

	/* report interval time in ms */
	client3.i_report.report_interval_time = INTERIM_REPORT_INTERVAL * 1000;
	client3.i_report.last_report_time = 0;
	client3.i_report.start_time = 0;
	client3.i_report.total_bytes = 0;

	print_tcp_conn_stats3();

	/* set callback values & functions */
	tcp_arg(c_pcb3, NULL);
	tcp_sent(c_pcb3, tcp_client_sent3);
	tcp_err(c_pcb3, tcp_client_err3);
	xil_printf("Connection recv_callback3\n\r");
	tcp_recv(c_pcb3, recv_callback3);
	/* initiate data transfer */
	return ERR_OK;
}

void transfer_data(void)
{
	if (client.client_id)
	{
		usleep(10000);xil_printf("[P1]");
		tcp_send_perf_traffic();
	}
}
void transfer_data1(void)
{
	if (client1.client_id)
	{
		usleep(10000);xil_printf("[P2]");
		tcp_send_perf_traffic1();
	}
}

void start_application(void)
{
	xil_printf("[20201109 IP:100]\r\n");
	*(volatile short  int *)(tcp_buf2+4*2)=0x20;
	*(volatile short  int *)(tcp_buf3+4*2)=0x30;
	*(volatile short  int *)(tcp_buf4+4*2)=0x40;
	for(int i=0;i<1000;i++)
	 //xil_printf("[%x]", (volatile short int *)(upbuf4+i));
	{
		*(volatile short  int *)(tcp_buf1+i*2)=i;
		//xil_printf("[%x]", *(volatile short int *)(tcp_buf1+i));
//		xil_printf("[%x %x]",(volatile   int *)(tcp_buf1+i),*(volatile   int *)(tcp_buf1+i));
	}

	//init bram address
	/*
    XGpio_WriteReg(down1, XGPIO_TRI_OFFSET,  0x00000000);
    XGpio_WriteReg(down2, XGPIO_TRI_OFFSET,  0x00000000);
    XGpio_WriteReg(down3, XGPIO_TRI_OFFSET,  0x00000000);
    XGpio_WriteReg(down4, XGPIO_TRI_OFFSET,  0x00000000);
	pdownbuf1 = (unsigned short int *)(downbuf1);
	pdownbuf2 = (unsigned short int *)(downbuf2);
	pdownbuf3 = (unsigned short int *)(downbuf3);
	pdownbuf4 = (unsigned short int *)(downbuf4);
*/
/*
	pdownbuf1t = (unsigned char *)(downbuf1);
	pdownbuf2t = (unsigned char *)(downbuf2);
	pdownbuf3t = (unsigned char *)(downbuf3);
	pdownbuf4t = (unsigned char *)(downbuf4);
*/
	err_t err;
	struct tcp_pcb* pcb;
	ip_addr_t remote_addr;
	u32_t i;

#if LWIP_IPV6==1
	remote_addr.type= IPADDR_TYPE_V6;
	err = inet6_aton(TCP_SERVER_IPV6_ADDRESS, &remote_addr);
#else
	err = inet_aton(TCP_SERVER_IP_ADDRESS, &remote_addr);
#endif /* LWIP_IPV6 */

	if (!err) {
		xil_printf("Invalid Server IP address: %d\r\n", err);
		return;
	}

	/* Create Client PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error in PCB creation. out of memory\r\n");
		return;
	}

	err = tcp_connect(pcb, &remote_addr, TCP_CONN_PORT,
			tcp_client_connected);
	if (err) {
		xil_printf("Error on tcp_connect: %d\r\n", err);
		tcp_client_close(pcb);
		return;
	}
	client.client_id = 0;

	/* initialize data buffer being sent with same as used in iperf */
	for (i = 0; i < TCP_SEND_BUFSIZE; i++)
		send_buf[i] = (i % 10) + '0';

	return;
}


void start_application1(void)
{
	xil_printf("[20201109 IP:101]\r\n");

	err_t err;
	struct tcp_pcb* pcb;
	ip_addr_t remote_addr;
	u32_t i;

#if LWIP_IPV6==1
	remote_addr.type= IPADDR_TYPE_V6;
	err = inet6_aton(TCP_SERVER_IPV6_ADDRESS, &remote_addr);
#else
	err = inet_aton(TCP_SERVER_IP_ADDRESS1, &remote_addr);
#endif /* LWIP_IPV6 */

	if (!err) {
		xil_printf("Invalid Server IP address: %d\r\n", err);
		return;
	}

	/* Create Client PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error in PCB creation. out of memory\r\n");
		return;
	}

	err = tcp_connect(pcb, &remote_addr, TCP_CONN_PORT,
			tcp_client_connected1);
	if (err) {
		xil_printf("Error on tcp_connect: %d\r\n", err);
		tcp_client_close(pcb);
		return;
	}
	client1.client_id = 0;

	/* initialize data buffer being sent with same as used in iperf */
	for (i = 0; i < TCP_SEND_BUFSIZE; i++)
		send_buf1[i] = (i % 10) + 'A';

	return;
}



void start_application2(void)
{
	xil_printf("[20201109 IP:102]\r\n");

	err_t err;
	struct tcp_pcb* pcb;
	ip_addr_t remote_addr;
	u32_t i;

#if LWIP_IPV6==1
	remote_addr.type= IPADDR_TYPE_V6;
	err = inet6_aton(TCP_SERVER_IPV6_ADDRESS, &remote_addr);
#else
	err = inet_aton(TCP_SERVER_IP_ADDRESS2, &remote_addr);
#endif /* LWIP_IPV6 */

	if (!err) {
		xil_printf("Invalid Server IP address: %d\r\n", err);
		return;
	}

	/* Create Client PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error in PCB creation. out of memory\r\n");
		return;
	}

	err = tcp_connect(pcb, &remote_addr, TCP_CONN_PORT,
			tcp_client_connected2);
	if (err) {
		xil_printf("Error on tcp_connect: %d\r\n", err);
		tcp_client_close(pcb);
		return;
	}
	client2.client_id = 0;

	/* initialize data buffer being sent with same as used in iperf */
	for (i = 0; i < TCP_SEND_BUFSIZE; i++)
		send_buf2[i] = (i % 10) + 'a';

	return;
}



void start_application3(void)
{
	err_t err;
	struct tcp_pcb* pcb;
	ip_addr_t remote_addr;
	u32_t i;

#if LWIP_IPV6==1
	remote_addr.type= IPADDR_TYPE_V6;
	err = inet6_aton(TCP_SERVER_IPV6_ADDRESS, &remote_addr);
#else
	err = inet_aton(TCP_SERVER_IP_ADDRESS3, &remote_addr);
#endif /* LWIP_IPV6 */

	if (!err) {
		xil_printf("Invalid Server IP address: %d\r\n", err);
		return;
	}

	/* Create Client PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error in PCB creation. out of memory\r\n");
		return;
	}

	err = tcp_connect(pcb, &remote_addr, TCP_CONN_PORT,
			tcp_client_connected3);
	if (err) {
		xil_printf("Error on tcp_connect: %d\r\n", err);
		tcp_client_close(pcb);
		return;
	}
	client3.client_id = 0;

	/* initialize data buffer being sent with same as used in iperf */
	for (i = 0; i < TCP_SEND_BUFSIZE; i++)
		send_buf3[i] = (i % 10) + 'K';

	return;
}





err_t transfer_up1(void)
{
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	//while (tcp_sndbuf(c_pcb) > TCP_SEND_BUFSIZE)
	if(up1len>0)
	{
		 //tcp_write(tpcb, (volatile short int *)upbuf1, 0x5e,  0);//fpga bram1 --> tcp
		xil_printf("[SEND UP1 len=%d start=%d]",up1len,up1mode);
//		err = tcp_write(c_pcb, (volatile short int *)upbuf1heap, 2, apiflags);
		if(up1mode==1)
			err = tcp_write(c_pcb, (volatile short int *)upbuf1heap, 2, apiflags);

		err = tcp_write(c_pcb, (volatile char  *)(tcp_dma_address+up1start), up1len-up1start, apiflags);

		/*
		err = tcp_write(c_pcb, (volatile short int *)upbuf1heap, 2, apiflags);
		//err = tcp_write(c_pcb, (volatile short int *)send_buf, up1len<<1, apiflags);
		err = tcp_write(c_pcb, (volatile short int *)(tcp_buf1+shift_ddr), (up1len-2)<<1, apiflags);
*/
//long length fail??
		//err = tcp_write(c_pcb, (volatile short int *)upbuf1/*send_buf*/, (up1len-2)<<1, 0);//apiflags);
//		err = tcp_write(c_pcb,(volatile char *) pdownbuf1t/*upbuf1/*send_buf*/, up1len, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}
		else
		{
			up1len=0;
			xil_printf("[SEND UP1 end]");
		}

		err = tcp_output(c_pcb);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		//client.total_bytes += TCP_SEND_BUFSIZE;
		//client.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	return ERR_OK;
}

err_t transfer_up2(void)
{
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb1 == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	//while (tcp_sndbuf(c_pcb) > TCP_SEND_BUFSIZE)
	if(up2len>0)
	{
		 //tcp_write(tpcb, (volatile short int *)upbuf1, 0x5e,  0);//fpga bram1 --> tcp
		xil_printf("[SEND UP2]");

//		xil_printf("[SEND UP2 len=%d start=%d]",up2len,up2mode);
		if(up2mode==1)
			err = tcp_write(c_pcb1, (volatile short int *)upbuf2heap, 2, apiflags);

		err = tcp_write(c_pcb1, (volatile char  *)(tcp_dma_address+up2start), up2len-up2start, apiflags);

//		err = tcp_write(c_pcb1, (volatile short int *)upbuf2heap, 2, apiflags);
//		err = tcp_write(c_pcb1, (volatile short int *)(tcp_buf2+shift_ddr), (up2len-2)<<1, apiflags);
//		err = tcp_write(c_pcb1, (volatile short int *)upbuf2, up2len<<1, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}
		else
			up2len=0;


		err = tcp_output(c_pcb1);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		//client.total_bytes += TCP_SEND_BUFSIZE;
		//client.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	return ERR_OK;
}



err_t transfer_up3(void)
{
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb2 == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	//while (tcp_sndbuf(c_pcb) > TCP_SEND_BUFSIZE)
	if(up3len>0)
	{
		 //tcp_write(tpcb, (volatile short int *)upbuf1, 0x5e,  0);//fpga bram1 --> tcp
		xil_printf("[SEND UP3]");
		if(up3mode==1)
			err = tcp_write(c_pcb2, (volatile short int *)upbuf3heap, 2, apiflags);

		err = tcp_write(c_pcb2, (volatile char  *)(tcp_dma_address+up3start), up3len-up3start, apiflags);

//		err = tcp_write(c_pcb2, (volatile short int *)upbuf3heap, 2, apiflags);
//		err = tcp_write(c_pcb2, (volatile short int *)(tcp_buf3+shift_ddr), (up3len-2)<<1, apiflags);
//		err = tcp_write(c_pcb2, (volatile short int *)upbuf3, up3len<<1, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}
		else
			up3len=0;


		err = tcp_output(c_pcb2);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		//client.total_bytes += TCP_SEND_BUFSIZE;
		//client.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	return ERR_OK;
}



err_t transfer_up4(void)
{
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (c_pcb3 == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

	//while (tcp_sndbuf(c_pcb) > TCP_SEND_BUFSIZE)
	if(up4len>0)
	{
		 //tcp_write(tpcb, (volatile short int *)upbuf1, 0x5e,  0);//fpga bram1 --> tcp
		xil_printf("[SEND UP4]");
		if(up4mode==1)
			err = tcp_write(c_pcb3, (volatile short int *)upbuf4heap, 2, apiflags);

		err = tcp_write(c_pcb3, (volatile char  *)(tcp_dma_address+up4start), up4len-up4start, apiflags);

//		err = tcp_write(c_pcb3, (volatile short int *)upbuf4heap, 2, apiflags);
//		err = tcp_write(c_pcb3, (volatile short int *)(tcp_buf4+shift_ddr), (up4len-2)<<1, apiflags);
//		err = tcp_write(c_pcb3, (volatile short int *)upbuf4, (up4len-4)<<1, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}
		else
			up4len=0;


		err = tcp_output(c_pcb3);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
		//client.total_bytes += TCP_SEND_BUFSIZE;
		//client.i_report.total_bytes += TCP_SEND_BUFSIZE;
	}
	return ERR_OK;
}





int CheckDatatcp(int Length, u8 StartValue)
{
    u8 *RxPacket;
    u8 *TxPacket;
    int Index = 0;
    u8 Value;

    RxPacket = (u8 *) 0x13000000;//RX_BUFFER_BASE;
    TxPacket = (u8 *) 0x10100000;//TX_BUFFER_BASE;
    Value = StartValue;

    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
#ifndef __aarch64__
    Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif
    xil_printf("\r\nCheck \r\n");
    for(Index = 0; Index < 16/*Length*/; Index++) {
        //if (RxPacket[Index] != Value)
        {
            if(Index%8==0)
            	xil_printf("\r\n");
//            xil_printf("tcp Tx Data %d: %x[RX %X]\r\n",
                //Index, TxPacket[Index], RxPacket[Index]);
//            xil_printf("[%02x|%02x:%02X]",
  //              Index, TxPacket[Index], RxPacket[Index]);
            xil_printf("[%02x:%02X]",
                 TxPacket[Index], RxPacket[Index]);

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
