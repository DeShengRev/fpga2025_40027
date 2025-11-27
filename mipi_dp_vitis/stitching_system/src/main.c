

#include "ccv.h"
#include "dpdma.h"
#include "imx219.h"
#include "math.h"
#include "ps_i2c.h"
#include "share.h"
#include "sleep.h"
#include "xgpiops.h"
#include "xiicps.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xisp_stitcher.h"
#include "xparameters.h"
#include "xv_demosaic.h"
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xaxivdma.h>
#include <xil_io.h>
#include <xil_printf.h>
#include <xstatus.h>
#include "stitcher.h"

u8 cam0_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4]
    __attribute__((__aligned__(256)));
u8 cam1_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4]
    __attribute__((__aligned__(256)));
u8 stch_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4]
    __attribute__((__aligned__(256)));
u8 bino_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4]
    __attribute__((__aligned__(256)));
u8 drop[SRC_HEIGHT][SRC_WIDTH][4] __attribute__((__aligned__(256)));
int mapxy[MAPXY_LEN] __attribute__((__aligned__(256)));

extern XAxiVdma vdma0, vdma1, vdma2, vdma3, vdma4, vdma5;

extern XIsp_stitcher stc;
XGpioPs Gpio;

int PsGpioSetup() {
  XGpioPs_Config *GPIO_CONFIG;
  int Status;

  GPIO_CONFIG = XGpioPs_LookupConfig(XPAR_GPIO_BASEADDR);

  Status = XGpioPs_CfgInitialize(&Gpio, GPIO_CONFIG, GPIO_CONFIG->BaseAddr);
  if (Status != XST_SUCCESS) {
    xil_printf("XGpioPs_CfgInitialize() failure\n");
    return XST_FAILURE;
  }

  XGpioPs_SetDirectionPin(&Gpio, CAM0_EMIO, 1);
  XGpioPs_SetDirectionPin(&Gpio, CAM1_EMIO, 1);

  XGpioPs_SetOutputEnablePin(&Gpio, CAM0_EMIO, 1);
  XGpioPs_SetOutputEnablePin(&Gpio, CAM1_EMIO, 1);

  XGpioPs_WritePin(&Gpio, CAM0_EMIO, 0);
  XGpioPs_WritePin(&Gpio, CAM1_EMIO, 0);
  msleep(1000);
  XGpioPs_WritePin(&Gpio, CAM0_EMIO, 1);
  XGpioPs_WritePin(&Gpio, CAM1_EMIO, 1);
  msleep(1000);

  xil_printf("GPIO initialization succeeded\n");

  return XST_SUCCESS;
}

void buffer_init(u8 *start, int val, int len) {
  int *arr = (int *)start;
  for (int i = 0; i < len; ++i) {
    arr[i] = val;
  }
  Xil_DCacheFlushRange((INTPTR)start, len * 4);
}

void printx(u8 *start, int len) {
  int *arr = (int *)start;
  for (int i = 0; i < len; ++i) {
    printf("%08x ", arr[i]);
  }
  printf("\n");
}
int main(void) {
  Xil_ICacheDisable();
  Xil_DCacheDisable();

  PsGpioSetup();
  cam_init_all();
  demosaic_init_all();
  gamma_lut_init_all();
  vdma_init_all();

  stitcher_init();
  DpdmaInit((UINTPTR)stch_frame[0]);

  msleep(1000);

  Xil_ICacheEnable();
  Xil_DCacheEnable();

  load_mapxy();
  //   buffer_init(cam0_frame, 0xFFFF0000, FRAME_PIXELS);
  //   buffer_init(cam1_frame, 0xFF0000FF, FRAME_PIXELS);
  //   buffer_init(bino_frame, 0xFF00FF00, FRAME_PIXELS);
  //   buffer_init(stch_frame, 0xFFFFFFFF, FRAME_PIXELS);
  Xil_DCacheFlush();
  Xil_DCacheInvalidate();

  printf("finish\n\n");

  // while (1) {

  //   Xil_DCacheInvalidateRange((INTPTR)cam0_frame[0], BUFFERSIZE);
  //   Xil_DCacheInvalidateRange((INTPTR)cam0_frame[1], BUFFERSIZE);
  //   make_bino((u8(*)[1920][4])cam1_frame[0][0],
  //             (u8(*)[1920][4])cam0_frame[0][0],
  //             (u8(*)[1920][4])bino_frame[0][0]);

  // }

  //   while (1) {
  //     char cmd = inbyte();

  //     Xil_DCacheFlush();
  //     Xil_DCacheInvalidate();

  //     if (cmd == '0') {
  //       XIsp_stitcher_Set_sel(&stc, 0b0000);
  //     } else if (cmd == '1') {
  //       XIsp_stitcher_Set_sel(&stc, 0b0001);
  //     } else if (cmd == '2') {
  //       XIsp_stitcher_Set_sel(&stc, 0b0011);
  //     } else if (cmd == '3') {
  //       XIsp_stitcher_Set_sel(&stc, 0b10111);
  //     } else if (cmd == '4') {
  //       XIsp_stitcher_Set_sel(&stc, 0b11111);
  //     }

  //   }
  //   return 0;

  msleep(100);
  while (1) {
      udpate_seam();
      select_blend();
      
  }
}