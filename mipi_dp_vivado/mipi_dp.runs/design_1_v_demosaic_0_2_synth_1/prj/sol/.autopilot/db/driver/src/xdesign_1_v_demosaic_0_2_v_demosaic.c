// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdesign_1_v_demosaic_0_2_v_demosaic.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDesign_1_v_demosaic_0_2_v_demosaic_CfgInitialize(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, XDesign_1_v_demosaic_0_2_v_demosaic_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress = ConfigPtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDesign_1_v_demosaic_0_2_v_demosaic_Start(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL) & 0x80;
    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_IsDone(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_IsIdle(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_IsReady(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDesign_1_v_demosaic_0_2_v_demosaic_EnableAutoRestart(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL, 0x80);
}

void XDesign_1_v_demosaic_0_2_v_demosaic_DisableAutoRestart(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_AP_CTRL, 0);
}

void XDesign_1_v_demosaic_0_2_v_demosaic_Set_width(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_Get_width(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XDesign_1_v_demosaic_0_2_v_demosaic_Set_height(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_Get_height(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XDesign_1_v_demosaic_0_2_v_demosaic_Set_bayer_phase(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_BAYER_PHASE_DATA, Data);
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_Get_bayer_phase(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_BAYER_PHASE_DATA);
    return Data;
}

void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGlobalEnable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_GIE, 1);
}

void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGlobalDisable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_GIE, 0);
}

void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptEnable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_IER);
    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_IER, Register | Mask);
}

void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptDisable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_IER);
    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_IER, Register & (~Mask));
}

void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptClear(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_ISR, Mask);
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGetEnabled(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_IER);
}

u32 XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGetStatus(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(InstancePtr->Design_1_v_demosaic_0_2_ctrl_BaseAddress, XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_DESIGN_1_V_DEMOSAIC_0_2_CTRL_ADDR_ISR);
}

