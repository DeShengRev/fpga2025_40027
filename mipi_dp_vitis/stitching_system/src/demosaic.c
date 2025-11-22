

#include "demosaic.h"
#include "xil_types.h"
#include "config.h"
#include "xv_demosaic.h"
#include "xparameters.h"



XV_demosaic demosaic0,demosaic1;
XV_demosaic_Config demosaic0_cfg, demosaic1_cfg;

int demosaic_init(u32 BaseAddress, XV_demosaic *p_demosaic,
                  XV_demosaic_Config *p_cfg) {

  if ((p_cfg = XV_demosaic_LookupConfig(BaseAddress)) == NULL) {
    xil_printf("XV_demosaic_LookupConfig() failed\r\n");
    return XST_FAILURE;
  }
  if (XV_demosaic_CfgInitialize(p_demosaic, p_cfg,
                                p_cfg->BaseAddress) !=
      XST_SUCCESS) {
    xil_printf("XV_demosaic_CfgInitialize() failed\r\n");
    return XST_FAILURE;
  }

  XV_demosaic_Set_HwReg_width(p_demosaic, SRC_WIDTH);
  XV_demosaic_Set_HwReg_height(p_demosaic, SRC_HEIGHT);
  XV_demosaic_Set_HwReg_bayer_phase(p_demosaic, 3);

  if (!XV_demosaic_IsReady(p_demosaic)) {
    xil_printf("demosaic core not ready\r\n");
    return XST_FAILURE;
  }
  XV_demosaic_EnableAutoRestart(p_demosaic);
  XV_demosaic_Start(p_demosaic);

  xil_printf("demosiac module at %p initialized\r\n", BaseAddress);

  return XST_SUCCESS;
}

void demosaic_init_all() {
    demosaic_init(XPAR_XV_DEMOSAIC_0_BASEADDR, &demosaic0, &demosaic0_cfg);
    demosaic_init(XPAR_XV_DEMOSAIC_1_BASEADDR, &demosaic1, &demosaic1_cfg);
}