

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
#include "xparameters.h"
#include "xv_demosaic.h"
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <xil_io.h>
#include <xil_printf.h>
#include <xstatus.h>

// #include "xisp_placeholder.h"
// #include "xstitcher.h"

extern XV_gamma_lut gamma_lut0, gamma_lut1;
extern XV_gamma_lut_Config gamma_lut0_cfg, gamma_lut1_cfg;
extern XV_demosaic demosaic0, demosaic1;
extern XV_demosaic_Config demosaic0_cfg, demosaic1_config;
extern XAxiVdma vdma0, vdma1;

extern u8 *cam0_frame, *cam1_frame;


XIicPs ps_i2c0, ps_i2c1;
XGpioPs Gpio;
int mapxy[SRC_HEIGHT * SRC_WIDTH * 4];

int PsGpioSetup() {
  XGpioPs_Config *GPIO_CONFIG;
  int Status;

  GPIO_CONFIG = XGpioPs_LookupConfig(XPAR_GPIO_BASEADDR);

  Status = XGpioPs_CfgInitialize(&Gpio, GPIO_CONFIG, GPIO_CONFIG->BaseAddr);
  if (Status != XST_SUCCESS) {
    xil_printf("XGpioPs_CfgInitialize failure\n");
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

  xil_printf("gpio initialized\n");
  return XST_SUCCESS;
}





int main(void) 
{
  int status;
  Xil_ICacheDisable();
  Xil_DCacheDisable();

  status = PsGpioSetup();
  gamma_lut_init_all();
  demosaic_init_all();
  vdma_init_all();

  imx219_init(&ps_i2c0, XPAR_I2C0_BASEADDR);
  imx219_init(&ps_i2c1, XPAR_I2C1_BASEADDR);

  status = DpdmaVideoExample((UINTPTR *) cam0_frame);
//   xil_printf("frame addr: %p %p\n", cam0_frame, cam1_frame);


  printf("finish\n\n");

// for(int i=0;i<3;++i) {


//   debug_vdma_status(&vdma0, "vdma0");
//   debug_vdma_status(&vdma1, "vdma1");
//   msleep(100);
// }

//   int st_demo[2][3];

//   while (1) {

//     st_demo[0][0] = XV_demosaic_IsDone(&demosaic0);
//     st_demo[0][1] = XV_demosaic_IsIdle(&demosaic0);
//     st_demo[0][2] = XV_demosaic_IsReady(&demosaic0);
//     st_demo[1][0] = XV_demosaic_IsDone(&demosaic1);
//     st_demo[1][1] = XV_demosaic_IsIdle(&demosaic1);
//     st_demo[1][2] = XV_demosaic_IsReady(&demosaic1);

//     if (st_demo[0][0] || st_demo[0][1] || st_demo[0][2] || st_demo[1][0] ||
//         st_demo[1][1] || st_demo[1][2]) {
//       xil_printf("%d%d%d--%d%d%d\n", st_demo[0][0], st_demo[0][1],
//                  st_demo[0][2], st_demo[1][0], st_demo[1][1], st_demo[1][2]);
//     }
//   }

  return 0;
}
