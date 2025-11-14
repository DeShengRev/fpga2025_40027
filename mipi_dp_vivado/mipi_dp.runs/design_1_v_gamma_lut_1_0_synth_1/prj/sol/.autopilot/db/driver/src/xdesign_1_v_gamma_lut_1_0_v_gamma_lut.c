// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdesign_1_v_gamma_lut_1_0_v_gamma_lut.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDesign_1_v_gamma_lut_1_0_v_gamma_lut_CfgInitialize(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress = ConfigPtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Start(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_IsDone(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_IsIdle(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_IsReady(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_EnableAutoRestart(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_DisableAutoRestart(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_AP_CTRL, 0);
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Set_width(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_width(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Set_height(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_height(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Set_video_format(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_video_format(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_0_BaseAddress(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_0_HighAddress(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_HIGH);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_0_TotalBytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + 1);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_0_BitWidth(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_WIDTH_GAMMA_LUT_0;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_0_Depth(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_DEPTH_GAMMA_LUT_0;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Write_gamma_lut_0_Words(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Read_gamma_lut_0_Words(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Write_gamma_lut_0_Bytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Read_gamma_lut_0_Bytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_0_BASE + offset + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_1_BaseAddress(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_1_HighAddress(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_HIGH);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_1_TotalBytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + 1);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_1_BitWidth(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_WIDTH_GAMMA_LUT_1;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_1_Depth(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_DEPTH_GAMMA_LUT_1;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Write_gamma_lut_1_Words(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Read_gamma_lut_1_Words(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Write_gamma_lut_1_Bytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Read_gamma_lut_1_Bytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_1_BASE + offset + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_2_BaseAddress(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_2_HighAddress(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_HIGH);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_2_TotalBytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + 1);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_2_BitWidth(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_WIDTH_GAMMA_LUT_2;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Get_gamma_lut_2_Depth(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_DEPTH_GAMMA_LUT_2;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Write_gamma_lut_2_Words(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Read_gamma_lut_2_Words(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Write_gamma_lut_2_Bytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_Read_gamma_lut_2_Bytes(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_HIGH - XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress + XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GAMMA_LUT_2_BASE + offset + i);
    }
    return length;
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptGlobalEnable(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GIE, 1);
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptGlobalDisable(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_GIE, 0);
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptEnable(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_IER);
    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_IER, Register | Mask);
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptDisable(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_IER);
    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptClear(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_gamma_lut_1_0_v_gamma_lut_WriteReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_ISR, Mask);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptGetEnabled(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_IER);
}

u32 XDesign_1_v_gamma_lut_1_0_v_gamma_lut_InterruptGetStatus(XDesign_1_v_gamma_lut_1_0_v_gamma_lut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDesign_1_v_gamma_lut_1_0_v_gamma_lut_ReadReg(InstancePtr->Design_1_v_gamma_lut_1_0_ctrl_BaseAddress, XDESIGN_1_V_GAMMA_LUT_1_0_V_GAMMA_LUT_DESIGN_1_V_GAMMA_LUT_1_0_CTRL_ADDR_ISR);
}

