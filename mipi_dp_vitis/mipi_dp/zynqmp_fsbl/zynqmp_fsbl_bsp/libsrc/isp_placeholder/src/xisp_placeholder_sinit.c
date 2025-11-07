// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xisp_placeholder.h"

extern XIsp_placeholder_Config XIsp_placeholder_ConfigTable[];

#ifdef SDT
XIsp_placeholder_Config *XIsp_placeholder_LookupConfig(UINTPTR BaseAddress) {
	XIsp_placeholder_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XIsp_placeholder_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XIsp_placeholder_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XIsp_placeholder_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIsp_placeholder_Initialize(XIsp_placeholder *InstancePtr, UINTPTR BaseAddress) {
	XIsp_placeholder_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIsp_placeholder_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIsp_placeholder_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XIsp_placeholder_Config *XIsp_placeholder_LookupConfig(u16 DeviceId) {
	XIsp_placeholder_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XISP_PLACEHOLDER_NUM_INSTANCES; Index++) {
		if (XIsp_placeholder_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIsp_placeholder_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIsp_placeholder_Initialize(XIsp_placeholder *InstancePtr, u16 DeviceId) {
	XIsp_placeholder_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIsp_placeholder_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIsp_placeholder_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

