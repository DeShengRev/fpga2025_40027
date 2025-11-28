
#include "share.h"
#include <xisp_stitcher.h>

extern u8 cam0_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 cam1_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 stch_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 drop[SRC_HEIGHT][SRC_WIDTH][4];
extern int mapxy[MAPXY_LEN];

XIsp_stitcher stc;
XIsp_stitcher_Config stc_cfg;

void stitcher_init() {
  XIsp_stitcher_LookupConfig(XPAR_XISP_STITCHER_0_BASEADDR);
  XIsp_stitcher_CfgInitialize(&stc, &stc_cfg);
  if (XIsp_stitcher_Initialize(&stc, XPAR_XISP_STITCHER_0_BASEADDR) ==
      XST_SUCCESS) {
  }

  XIsp_stitcher_Set_m_axi_in0(&stc, (u64)cam0_frame);
  XIsp_stitcher_Set_m_axi_in1(&stc, (u64)cam1_frame);
  XIsp_stitcher_Set_m_axi_mapxy(&stc, (u64)mapxy);
  XIsp_stitcher_Set_m_axi_out(&stc, (u64)stch_frame);
  XIsp_stitcher_Set_sel(&stc, 0b0000);

  XIsp_stitcher_DisableAutoRestart(&stc);

  xil_printf("Stitcher module at %p initialized\n",
             XPAR_XISP_STITCHER_0_BASEADDR);
}

void wait_stitching() {
  while (!XIsp_stitcher_IsIdle(&stc))
    ;
}

void write_orig(u8 *addr) {
  XIsp_stitcher_Set_sel(&stc, 0b00000);
  XIsp_stitcher_Set_m_axi_out(&stc, (u64)addr);
  XIsp_stitcher_Start(&stc);
  wait_stitching();
}

void write_isp(u8 *addr) {
  XIsp_stitcher_Set_sel(&stc, 0b00001);
  XIsp_stitcher_Set_m_axi_out(&stc, (u64)addr);
  XIsp_stitcher_Start(&stc);
  wait_stitching();
}

void write_remap(u8 *addr) {

  XIsp_stitcher_Set_sel(&stc, 0b00011);
  XIsp_stitcher_Set_m_axi_out(&stc, (u64)addr);
  XIsp_stitcher_Start(&stc);
  wait_stitching();
}

void write_blend(u8 *addr, u8 draw_seam) {

  u16 sel = 0b01111;
  sel = sel | ((draw_seam & 1) << 4);

  XIsp_stitcher_Set_sel(&stc, sel);
  XIsp_stitcher_Set_m_axi_out(&stc, (u64)addr);

  XIsp_stitcher_Start(&stc);
  wait_stitching();
}

void udpate_seam() {
  XIsp_stitcher_Set_sel(&stc, 0b00111);
  XIsp_stitcher_Set_m_axi_out(&stc, (u64)drop);
  XIsp_stitcher_Start(&stc);
  wait_stitching();
}
