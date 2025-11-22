
#include "gamma_lut.h"



XV_gamma_lut gamma_lut0, gamma_lut1;
XV_gamma_lut_Config gamma_lut0_cfg, gamma_lut1_cfg;


int gamma_lut_init(u32 BaseAddress, XV_gamma_lut *p_gamma_lut, XV_gamma_lut_Config *p_cfg) {


	if ( (p_cfg = XV_gamma_lut_LookupConfig(BaseAddress)) == NULL) {
		xil_printf("XV_gamma_lut_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}
	if (XV_gamma_lut_CfgInitialize(p_gamma_lut, p_cfg, p_cfg->BaseAddress)) {
		xil_printf("XV_gamma_lut_CfgInitialize() failed\r\n");
		return XST_FAILURE;
	}



	XV_gamma_lut_Set_HwReg_width(p_gamma_lut, SRC_WIDTH);
	XV_gamma_lut_Set_HwReg_height(p_gamma_lut, SRC_HEIGHT);
    XV_gamma_lut_Set_HwReg_video_format(p_gamma_lut, 0); // RGB

	if (XV_gamma_lut_Write_HwReg_gamma_lut_0_Words(p_gamma_lut, 0, (int *) xgamma10_07,
			sizeof(xgamma10_10)/sizeof(int)) != sizeof(xgamma10_10)/sizeof(int)) {
		xil_printf("Gamma correction LUT write failed\r\n");
		return XST_FAILURE;
	}
	if (XV_gamma_lut_Write_HwReg_gamma_lut_1_Words(p_gamma_lut, 0, (int *) xgamma10_07,
			sizeof(xgamma10_10)/sizeof(int)) != sizeof(xgamma10_10)/sizeof(int)) {
		xil_printf("Gamma correction LUT write failed\r\n");
		return XST_FAILURE;
	}
	if (XV_gamma_lut_Write_HwReg_gamma_lut_2_Words(p_gamma_lut, 0, (int *) xgamma10_07,
			sizeof(xgamma10_10)/sizeof(int)) != sizeof(xgamma10_10)/sizeof(int)) {
		xil_printf("Gamma correction LUT write failed\r\n");
		return XST_FAILURE;
	}

	XV_gamma_lut_EnableAutoRestart(p_gamma_lut);
	XV_gamma_lut_Start(p_gamma_lut);

	xil_printf("Gamma correction LUT module at %p initialized\n", BaseAddress);

	return XST_SUCCESS;
}



void gamma_lut_init_all()
{
    gamma_lut_init(XPAR_XV_GAMMA_LUT_0_BASEADDR, &gamma_lut0, &gamma_lut0_cfg);
    gamma_lut_init(XPAR_XV_GAMMA_LUT_1_BASEADDR, &gamma_lut1, &gamma_lut1_cfg);
}