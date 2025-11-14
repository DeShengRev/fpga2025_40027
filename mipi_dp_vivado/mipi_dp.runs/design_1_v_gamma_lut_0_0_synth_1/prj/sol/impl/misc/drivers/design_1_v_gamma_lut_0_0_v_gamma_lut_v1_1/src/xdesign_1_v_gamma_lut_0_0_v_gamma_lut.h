// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_H
#define XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_H

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
#include "xdesign_1_v_gamma_lut_0_0_v_gamma_lut_hw.h"

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
    u64 Design_1_v_gamma_lut_0_0_ctrl_BaseAddress;
} XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config;
#endif

typedef struct {
    u64 Design_1_v_gamma_lut_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XDesign_1_v_gamma_lut_0_0_v_gamma_lut;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDesign_1_v_gamma_lut_0_0_v_gamma_lut_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDesign_1_v_gamma_lut_0_0_v_gamma_lut_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDesign_1_v_gamma_lut_0_0_v_gamma_lut_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDesign_1_v_gamma_lut_0_0_v_gamma_lut_ReadReg(BaseAddress, RegOffset) \
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
int XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Initialize(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, UINTPTR BaseAddress);
XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config* XDesign_1_v_gamma_lut_0_0_v_gamma_lut_LookupConfig(UINTPTR BaseAddress);
#else
int XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Initialize(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u16 DeviceId);
XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config* XDesign_1_v_gamma_lut_0_0_v_gamma_lut_LookupConfig(u16 DeviceId);
#endif
int XDesign_1_v_gamma_lut_0_0_v_gamma_lut_CfgInitialize(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config *ConfigPtr);
#else
int XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Initialize(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, const char* InstanceName);
int XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Release(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
#endif

void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Start(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_IsDone(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_IsIdle(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_IsReady(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_EnableAutoRestart(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_DisableAutoRestart(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);

void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Set_width(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u32 Data);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_width(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Set_height(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u32 Data);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_height(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Set_video_format(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u32 Data);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_video_format(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_0_BaseAddress(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_0_HighAddress(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_0_TotalBytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_0_BitWidth(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_0_Depth(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Write_gamma_lut_0_Words(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Read_gamma_lut_0_Words(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Write_gamma_lut_0_Bytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, char *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Read_gamma_lut_0_Bytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, char *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_1_BaseAddress(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_1_HighAddress(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_1_TotalBytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_1_BitWidth(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_1_Depth(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Write_gamma_lut_1_Words(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Read_gamma_lut_1_Words(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Write_gamma_lut_1_Bytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, char *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Read_gamma_lut_1_Bytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, char *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_2_BaseAddress(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_2_HighAddress(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_2_TotalBytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_2_BitWidth(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Get_gamma_lut_2_Depth(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Write_gamma_lut_2_Words(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Read_gamma_lut_2_Words(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, word_type *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Write_gamma_lut_2_Bytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, char *data, int length);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Read_gamma_lut_2_Bytes(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, int offset, char *data, int length);

void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptGlobalEnable(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptGlobalDisable(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptEnable(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u32 Mask);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptDisable(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u32 Mask);
void XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptClear(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u32 Mask);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptGetEnabled(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);
u32 XDesign_1_v_gamma_lut_0_0_v_gamma_lut_InterruptGetStatus(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
