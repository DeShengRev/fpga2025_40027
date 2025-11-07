// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xstitcher.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XStitcher_CfgInitialize(XStitcher *InstancePtr, XStitcher_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XStitcher_Start(XStitcher *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL) & 0x80;
    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XStitcher_IsDone(XStitcher *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XStitcher_IsIdle(XStitcher *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XStitcher_IsReady(XStitcher *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XStitcher_EnableAutoRestart(XStitcher *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL, 0x80);
}

void XStitcher_DisableAutoRestart(XStitcher *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_AP_CTRL, 0);
}

void XStitcher_Set_mapxy(XStitcher *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStitcher_WriteReg(InstancePtr->Control_BaseAddress, XSTITCHER_CONTROL_ADDR_MAPXY_DATA, (u32)(Data));
    XStitcher_WriteReg(InstancePtr->Control_BaseAddress, XSTITCHER_CONTROL_ADDR_MAPXY_DATA + 4, (u32)(Data >> 32));
}

u64 XStitcher_Get_mapxy(XStitcher *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStitcher_ReadReg(InstancePtr->Control_BaseAddress, XSTITCHER_CONTROL_ADDR_MAPXY_DATA);
    Data += (u64)XStitcher_ReadReg(InstancePtr->Control_BaseAddress, XSTITCHER_CONTROL_ADDR_MAPXY_DATA + 4) << 32;
    return Data;
}

void XStitcher_InterruptGlobalEnable(XStitcher *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_GIE, 1);
}

void XStitcher_InterruptGlobalDisable(XStitcher *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_GIE, 0);
}

void XStitcher_InterruptEnable(XStitcher *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_IER);
    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_IER, Register | Mask);
}

void XStitcher_InterruptDisable(XStitcher *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_IER);
    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_IER, Register & (~Mask));
}

void XStitcher_InterruptClear(XStitcher *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStitcher_WriteReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_ISR, Mask);
}

u32 XStitcher_InterruptGetEnabled(XStitcher *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_IER);
}

u32 XStitcher_InterruptGetStatus(XStitcher *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XStitcher_ReadReg(InstancePtr->Ctrl_BaseAddress, XSTITCHER_CTRL_ADDR_ISR);
}

