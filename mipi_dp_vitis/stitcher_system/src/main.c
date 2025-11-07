
/* ------------------------------------------------------------ */
/*				Include File Definitions
 */
/* ------------------------------------------------------------ */

#include "config.h"
#include "demosaic.h"
#include "dpdma.h"
#include "gamma_lut.h"
#include "imx219.h"
#include "math.h"
#include "ps_i2c.h"
#include "sleep.h"
#include "vdma.h"
#include "xgpiops.h"
#include "xiicps.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xisp_placeholder.h"
#include "xparameters.h"
#include "xstitcher.h"
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <xil_io.h>
#include <xstatus.h>

XIicPs ps_i2c0, ps_i2c1;
XGpioPs Gpio;

extern Run_Config RunCfg;

extern u8 frame_dp[BUFFERSIZE];

int mapxy[SRC_HEIGHT * SRC_WIDTH * 4];
#undef ENABLE_SAFETY
int PsGpioSetup() {
  XGpioPs_Config *GPIO_CONFIG;
  int Status;

  GPIO_CONFIG = XGpioPs_LookupConfig(XPAR_GPIO_BASEADDR);

  Status = XGpioPs_CfgInitialize(&Gpio, GPIO_CONFIG, GPIO_CONFIG->BaseAddr);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
  /* set MIO 54 as output */
  XGpioPs_SetDirectionPin(&Gpio, CAM0_EMIO, 1);
  XGpioPs_SetDirectionPin(&Gpio, CAM1_EMIO, 1);

  XGpioPs_SetOutputEnablePin(&Gpio, CAM0_EMIO, 1);
  XGpioPs_SetOutputEnablePin(&Gpio, CAM1_EMIO, 1);
  return XST_SUCCESS;
}

int main(void) {

  int status;

  Xil_DCacheDisable();
  Xil_ICacheDisable();

  status = PsGpioSetup();
  if (status == XST_SUCCESS) {
    xil_printf("GPIO SUCCESS\n");
  } else {
    xil_printf("GPIO FAIL\n");
  }

  XGpioPs_WritePin(&Gpio, CAM0_EMIO, 0);
//   XGpioPs_WritePin(&Gpio, CAM1_EMIO, 0);
  usleep(1000000);
  XGpioPs_WritePin(&Gpio, CAM0_EMIO, 1);
//   XGpioPs_WritePin(&Gpio, CAM1_EMIO, 1);
  usleep(1000000);

  //   i2c_init(&ps_i2c0, XPAR_I2C0_BASEADDR, 100000);
  //   i2c_init(&ps_i2c1, XPAR_I2C1_BASEADDR, 100000);

Xil_Out32(80070010, 1920);
printf("finish\n");



  gamma_lut_init(XPAR_V_GAMMA_LUT_0_BASEADDR);
  gamma_lut_init(XPAR_V_GAMMA_LUT_1_BASEADDR);

  demosaic_init(XPAR_XV_DEMOSAIC_0_BASEADDR);
  demosaic_init(XPAR_XV_DEMOSAIC_1_BASEADDR);

  xil_printf("DPDMA Generic Video Example Test \r\n");

  status = DpdmaVideoExample(&RunCfg);
  if (status != XST_SUCCESS) {
    xil_printf("DPDMA Video Example Test Failed\r\n");
    return XST_FAILURE;
  }

  XIsp_placeholder isp;
  XIsp_placeholder_Config *isp_cfg =
      XIsp_placeholder_LookupConfig(XPAR_XISP_PLACEHOLDER_0_BASEADDR);
  XIsp_placeholder_CfgInitialize(&isp, isp_cfg);
  if (XIsp_placeholder_Initialize(&isp, XPAR_XISP_PLACEHOLDER_0_BASEADDR) ==
      XST_SUCCESS) {

    printf("ISP SUCCESS\n");
  } else {
    printf("ISP FAIL\n");
  }
  XIsp_placeholder_EnableAutoRestart(&isp);
  XIsp_placeholder_Start(&isp);

  XStitcher stitcher;
  XStitcher_Config *stitcher_cfg =
      XStitcher_LookupConfig(XPAR_XSTITCHER_0_BASEADDR);
  XStitcher_CfgInitialize(&stitcher, stitcher_cfg);
  XStitcher_Set_mapxy(&stitcher, (u64)mapxy);
  if (XStitcher_Initialize(&stitcher, XPAR_XSTITCHER_0_BASEADDR) ==
      XST_SUCCESS) {
    printf("STITCHER SUCCESS\n");
  } else {

    printf("STITCHER FAIL\n");
  }

  u64 test_addr = XStitcher_Get_mapxy(&stitcher);
  printf("Read back mapxy addr: 0x%llx\n", test_addr);

  XStitcher_EnableAutoRestart(&stitcher);
  XStitcher_Start(&stitcher);

  status = vdma_write_init(XPAR_AXI_VDMA_0_BASEADDR, HORSIZE, VERSIZE, STRIDE,
                           (unsigned int)frame_dp);
  if (status == XST_SUCCESS) {
    printf("VDMA SUCCESS\n");
  } else {
    printf("VDMA FAIL\n");
  }


  
  imx219_init(&ps_i2c0, XPAR_I2C0_BASEADDR);
  imx219_init(&ps_i2c1, XPAR_I2C1_BASEADDR);

  //   while (1) {
  //     xil_printf("%d, %d，%d\n", (int)XStitcher_IsIdle(&stitcher),
  //                (int)XStitcher_IsDone(&stitcher),
  //                (int)XStitcher_IsReady(&stitcher));
  //     usleep(100000);
  //   }
printf("finish\n");
  return 0;
}
