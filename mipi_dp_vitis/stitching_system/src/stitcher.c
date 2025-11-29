
#include "share.h"
#include <sleep.h>
#include <string.h>
#include <xil_cache.h>
#include <xisp_stitcher.h>

extern u8 cam0_frame[SRC_HEIGHT][SRC_WIDTH][4];
extern u8 cam1_frame[SRC_HEIGHT][SRC_WIDTH][4];
extern u8 stch_frame[SRC_HEIGHT][SRC_WIDTH][4];
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

void _sw_stch(u8 id, u8 *addr) {
  if (id == 1) {
    write_orig(addr);
  } else if (id == 2) {
    write_isp(addr);
  } else if (id == 3) {
    write_remap(addr);
  } else if (id == 4) {
    udpate_seam();
    write_blend(addr, 0);
    write_blend(addr, 0);
    write_blend(addr, 0);
    write_blend(addr, 0);
    write_blend(addr, 0);
    write_blend(addr, 0);
  } else if (id == 5) {
    udpate_seam();
    write_blend(addr, 1);
    write_blend(addr, 1);
    write_blend(addr, 1);
    write_blend(addr, 1);
    write_blend(addr, 1);
    write_blend(addr, 1);
  }
}

u8 clear_all = 0;
u8 clear_1 = 0;
void display_stitch(u8 id0, u8 id1) {
  if (id0 == 0 && id1 == 0) {
    if (!clear_all) {
      Xil_DCacheDisable();
      msleep(100);
      memset(stch_frame, 0, BUFFERSIZE);
      clear_all = 1;
      msleep(100);
      Xil_DCacheEnable();
    }
    write_orig((u8 *)drop);
  } else if (id0 == 0 && id1 != 0) {
    id0 = id1;
    id1 = 0;
  }

  if (id1 == 0) {
    clear_all = 1;
    if (!clear_1) {
      Xil_DCacheDisable();
      msleep(100);
      memset(stch_frame[540], 0, BUFFERSIZE / 2);
      clear_1 = 1;

      msleep(100);
      Xil_DCacheEnable();
    }
    _sw_stch(id0, (u8 *)stch_frame);
  } else {
    clear_all = 1;
    clear_1 = 1;
    _sw_stch(id0, (u8 *)stch_frame);
    _sw_stch(id1, (u8 *)stch_frame[540]);
  }
}