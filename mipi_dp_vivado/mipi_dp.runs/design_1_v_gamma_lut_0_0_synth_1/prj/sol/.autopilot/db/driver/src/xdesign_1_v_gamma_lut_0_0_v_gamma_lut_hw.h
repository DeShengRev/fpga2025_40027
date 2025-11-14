// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// design_1_v_gamma_lut_0_0_CTRL
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          bit 9  - interrupt (Read)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0 - enable ap_done interrupt (Read/Write)
//          bit 1 - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0 - ap_done (Read/TOW)
//          bit 1 - ap_ready (Read/TOW)
//          others - reserved
// 0x0010 : Data signal of width
//          bit 15~0 - width[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of height
//          bit 15~0 - height[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of video_format
//          bit 15~0 - video_format[15:0] (Read/Write)
//          others   - reserved
// 0x0024 : reserved
// 0x0800 ~
// 0x0fff : Memory 'gamma_lut_0' (1024 * 16b)
//          Word n : bit [15: 0] - gamma_lut_0[2n]
//                   bit [31:16] - gamma_lut_0[2n+1]
// 0x1000 ~
// 0x17ff : Memory 'gamma_lut_1' (1024 * 16b)
//          Word n : bit [15: 0] - gamma_lut_1[2n]
//                   bit [31:16] - gamma_lut_1[2n+1]
// 0x1800 ~
// 0x1fff : Memory 'gamma_lut_2' (1024 * 16b)
//          Word n : bit [15: 0] - gamma_lut_2[2n]
//                   bit [31:16] - gamma_lut_2[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_AP_CTRL           0x0000
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GIE               0x0004
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_IER               0x0008
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_ISR               0x000c
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_WIDTH_DATA        0x0010
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_BITS_WIDTH_DATA        16
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_HEIGHT_DATA       0x0018
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_BITS_HEIGHT_DATA       16
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA 0x0020
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_BITS_VIDEO_FORMAT_DATA 16
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GAMMA_LUT_0_BASE  0x0800
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GAMMA_LUT_0_HIGH  0x0fff
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_WIDTH_GAMMA_LUT_0      16
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_DEPTH_GAMMA_LUT_0      1024
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GAMMA_LUT_1_BASE  0x1000
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GAMMA_LUT_1_HIGH  0x17ff
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_WIDTH_GAMMA_LUT_1      16
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_DEPTH_GAMMA_LUT_1      1024
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GAMMA_LUT_2_BASE  0x1800
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_ADDR_GAMMA_LUT_2_HIGH  0x1fff
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_WIDTH_GAMMA_LUT_2      16
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_0_0_CTRL_DEPTH_GAMMA_LUT_2      1024

