// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_H
#define XDESIGN_1_V_DEMOSAIC_0_2_V_DEMOSAIC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdesign_1_v_demosaic_0_2_v_demosaic_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Design_1_v_demosaic_0_2_ctrl_BaseAddress;
} XDesign_1_v_demosaic_0_2_v_demosaic_Config;
#endif

typedef struct {
    u64 Design_1_v_demosaic_0_2_ctrl_BaseAddress;
    u32 IsReady;
} XDesign_1_v_demosaic_0_2_v_demosaic;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDesign_1_v_demosaic_0_2_v_demosaic_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDesign_1_v_demosaic_0_2_v_demosaic_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XDesign_1_v_demosaic_0_2_v_demosaic_Initialize(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, UINTPTR BaseAddress);
XDesign_1_v_demosaic_0_2_v_demosaic_Config* XDesign_1_v_demosaic_0_2_v_demosaic_LookupConfig(UINTPTR BaseAddress);
#else
int XDesign_1_v_demosaic_0_2_v_demosaic_Initialize(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u16 DeviceId);
XDesign_1_v_demosaic_0_2_v_demosaic_Config* XDesign_1_v_demosaic_0_2_v_demosaic_LookupConfig(u16 DeviceId);
#endif
int XDesign_1_v_demosaic_0_2_v_demosaic_CfgInitialize(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, XDesign_1_v_demosaic_0_2_v_demosaic_Config *ConfigPtr);
#else
int XDesign_1_v_demosaic_0_2_v_demosaic_Initialize(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, const char* InstanceName);
int XDesign_1_v_demosaic_0_2_v_demosaic_Release(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
#endif

void XDesign_1_v_demosaic_0_2_v_demosaic_Start(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_IsDone(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_IsIdle(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_IsReady(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
void XDesign_1_v_demosaic_0_2_v_demosaic_EnableAutoRestart(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
void XDesign_1_v_demosaic_0_2_v_demosaic_DisableAutoRestart(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);

void XDesign_1_v_demosaic_0_2_v_demosaic_Set_width(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Data);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_Get_width(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
void XDesign_1_v_demosaic_0_2_v_demosaic_Set_height(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Data);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_Get_height(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
void XDesign_1_v_demosaic_0_2_v_demosaic_Set_bayer_phase(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Data);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_Get_bayer_phase(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);

void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGlobalEnable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGlobalDisable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptEnable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Mask);
void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptDisable(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Mask);
void XDesign_1_v_demosaic_0_2_v_demosaic_InterruptClear(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr, u32 Mask);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGetEnabled(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);
u32 XDesign_1_v_demosaic_0_2_v_demosaic_InterruptGetStatus(XDesign_1_v_demosaic_0_2_v_demosaic *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
