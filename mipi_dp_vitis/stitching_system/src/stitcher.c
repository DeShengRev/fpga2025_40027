
// #include <xstitcher.h>
// XStitcher stc;
// XStitcher_Config stc_cfg;

// void stitcher_init() {
//   XStitcher_LookupConfig(XPAR_XSTITCHER_0_BASEADDR);
//   XStitcher_CfgInitialize(&stc, &stc_cfg);
//   if (XStitcher_Initialize(&stc, XPAR_XSTITCHER_0_BASEADDR) == XST_SUCCESS) {
//   } 

//   XStitcher_Start(&stc);
//   XStitcher_EnableAutoRestart(&stc);
//     xil_printf("Stitcher module at %p initialized\n", XPAR_XSTITCHER_0_BASEADDR);
// }




#include "xstitcher_remap.h"
XStitcher_remap stc;
XStitcher_remap_Config stc_cfg;

void stitcher_init() {
  XStitcher_remap_LookupConfig(XPAR_XSTITCHER_REMAP_0_BASEADDR);
  XStitcher_remap_CfgInitialize(&stc, &stc_cfg);
  if (XStitcher_remap_Initialize(&stc, XPAR_XSTITCHER_REMAP_0_BASEADDR) == XST_SUCCESS) {
  } 

  XStitcher_remap_Start(&stc);
  XStitcher_remap_EnableAutoRestart(&stc);
    xil_printf("Stitcher module at %p initialized\n", XPAR_XSTITCHER_REMAP_0_BASEADDR);
}