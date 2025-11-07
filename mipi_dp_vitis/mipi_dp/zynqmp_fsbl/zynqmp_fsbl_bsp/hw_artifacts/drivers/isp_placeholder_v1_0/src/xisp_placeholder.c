// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xisp_placeholder.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XIsp_placeholder_CfgInitialize(XIsp_placeholder *InstancePtr, XIsp_placeholder_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XIsp_placeholder_Start(XIsp_placeholder *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL) & 0x80;
    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XIsp_placeholder_IsDone(XIsp_placeholder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XIsp_placeholder_IsIdle(XIsp_placeholder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XIsp_placeholder_IsReady(XIsp_placeholder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XIsp_placeholder_EnableAutoRestart(XIsp_placeholder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL, 0x80);
}

void XIsp_placeholder_DisableAutoRestart(XIsp_placeholder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_AP_CTRL, 0);
}

void XIsp_placeholder_InterruptGlobalEnable(XIsp_placeholder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_GIE, 1);
}

void XIsp_placeholder_InterruptGlobalDisable(XIsp_placeholder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_GIE, 0);
}

void XIsp_placeholder_InterruptEnable(XIsp_placeholder *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_IER);
    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_IER, Register | Mask);
}

void XIsp_placeholder_InterruptDisable(XIsp_placeholder *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_IER);
    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_IER, Register & (~Mask));
}

void XIsp_placeholder_InterruptClear(XIsp_placeholder *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIsp_placeholder_WriteReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_ISR, Mask);
}

u32 XIsp_placeholder_InterruptGetEnabled(XIsp_placeholder *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_IER);
}

u32 XIsp_placeholder_InterruptGetStatus(XIsp_placeholder *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIsp_placeholder_ReadReg(InstancePtr->Ctrl_BaseAddress, XISP_PLACEHOLDER_CTRL_ADDR_ISR);
}

