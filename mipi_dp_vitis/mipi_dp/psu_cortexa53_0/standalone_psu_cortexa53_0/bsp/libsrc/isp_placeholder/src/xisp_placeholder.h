// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XISP_PLACEHOLDER_H
#define XISP_PLACEHOLDER_H

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
#include "xisp_placeholder_hw.h"

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
    u64 Ctrl_BaseAddress;
} XIsp_placeholder_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XIsp_placeholder;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XIsp_placeholder_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XIsp_placeholder_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XIsp_placeholder_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XIsp_placeholder_ReadReg(BaseAddress, RegOffset) \
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
int XIsp_placeholder_Initialize(XIsp_placeholder *InstancePtr, UINTPTR BaseAddress);
XIsp_placeholder_Config* XIsp_placeholder_LookupConfig(UINTPTR BaseAddress);
#else
int XIsp_placeholder_Initialize(XIsp_placeholder *InstancePtr, u16 DeviceId);
XIsp_placeholder_Config* XIsp_placeholder_LookupConfig(u16 DeviceId);
#endif
int XIsp_placeholder_CfgInitialize(XIsp_placeholder *InstancePtr, XIsp_placeholder_Config *ConfigPtr);
#else
int XIsp_placeholder_Initialize(XIsp_placeholder *InstancePtr, const char* InstanceName);
int XIsp_placeholder_Release(XIsp_placeholder *InstancePtr);
#endif

void XIsp_placeholder_Start(XIsp_placeholder *InstancePtr);
u32 XIsp_placeholder_IsDone(XIsp_placeholder *InstancePtr);
u32 XIsp_placeholder_IsIdle(XIsp_placeholder *InstancePtr);
u32 XIsp_placeholder_IsReady(XIsp_placeholder *InstancePtr);
void XIsp_placeholder_EnableAutoRestart(XIsp_placeholder *InstancePtr);
void XIsp_placeholder_DisableAutoRestart(XIsp_placeholder *InstancePtr);


void XIsp_placeholder_InterruptGlobalEnable(XIsp_placeholder *InstancePtr);
void XIsp_placeholder_InterruptGlobalDisable(XIsp_placeholder *InstancePtr);
void XIsp_placeholder_InterruptEnable(XIsp_placeholder *InstancePtr, u32 Mask);
void XIsp_placeholder_InterruptDisable(XIsp_placeholder *InstancePtr, u32 Mask);
void XIsp_placeholder_InterruptClear(XIsp_placeholder *InstancePtr, u32 Mask);
u32 XIsp_placeholder_InterruptGetEnabled(XIsp_placeholder *InstancePtr);
u32 XIsp_placeholder_InterruptGetStatus(XIsp_placeholder *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
