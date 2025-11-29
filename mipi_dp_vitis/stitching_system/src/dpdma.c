

#include "dpdma.h"
#include "share.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include <sleep.h>
#include <xil_types.h>

#ifndef SDT
#define DPPSU_DEVICE_ID XPAR_PSU_DP_DEVICE_ID
#define AVBUF_DEVICE_ID XPAR_PSU_DP_DEVICE_ID
#define DPDMA_DEVICE_ID XPAR_XDPDMA_0_DEVICE_ID
#define INTC_DEVICE_ID XPAR_SCUGIC_0_DEVICE_ID
#define DPPSU_INTR_ID 151
#define DPDMA_INTR_ID 154

#define DPPSU_BASEADDR XPAR_PSU_DP_BASEADDR
#define AVBUF_BASEADDR XPAR_PSU_DP_BASEADDR
#define DPDMA_BASEADDR XPAR_PSU_DPDMA_BASEADDR
#else
#define DPPSU_BASEADDR XPAR_XDPPSU_0_BASEADDR
#define AVBUF_BASEADDR XPAR_XDPPSU_0_BASEADDR
#define DPDMA_BASEADDR XPAR_XDPDMA_0_BASEADDR
#define INTC_BASEADDR XPAR_XSCUGIC_0_BASEADDR
#endif

XDpDma DpDma;
XDpPsu DpPsu;
XAVBuf AVBuf;
XScuGic Intr;
Run_Config RunCfg;
XDpDma_FrameBuffer FrameBuffer;

extern u8 cam0_frame[SRC_HEIGHT][SRC_WIDTH][4];
extern u8 cam1_frame[SRC_HEIGHT][SRC_WIDTH][4];
extern u8 stch_frame[SRC_HEIGHT][SRC_WIDTH][4];

void switch_screen(FrameId id) {

  Xil_ICacheDisable();
  Xil_DCacheDisable();

  u8 *frame_ptr;
  if (id == CAM0_FRAME) {
    frame_ptr = (u8 *)cam0_frame;
  } else if (id == CAM1_FRAME) {
    frame_ptr = (u8 *)cam1_frame;
  } else if (id == STCH_FRAME) {
    frame_ptr = (u8 *)stch_frame;
  } else {
    return;
  }

  
  FrameBuffer.Address = (UINTPTR)frame_ptr;
  XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);

  msleep(100);
  Xil_ICacheEnable();
  Xil_DCacheEnable();
}

int dpdma_init(UINTPTR frame_addr) {
  xil_printf("DPDMA Generic Video Example Test \r\n");

  u32 Status;

  /* Initialize the application configuration */
  InitRunConfig(&RunCfg);

  Xil_DCacheFlush();
  Status = InitDpDmaSubsystem(&RunCfg);
  if (Status != XST_SUCCESS) {
    xil_printf("InitDpDmaSubsystem Failure\n");
    return XST_FAILURE;
  }

  /* Populate the FrameBuffer structure with the frame attributes */
  FrameBuffer.Address = frame_addr;
  FrameBuffer.Stride = HORSIZE;
  FrameBuffer.LineSize = HORSIZE;
  FrameBuffer.Size = BUFFERSIZE;

  //   Xil_DCacheFlushRange(cam_frame, BUFFERSIZE);

  Xil_DCacheFlush();
  SetupInterrupts(&RunCfg);

  xil_printf("DpDma initialization succeeded\n");

  return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * The purpose of this function is to initialize the application configuration.
 *
 * @param	RunCfgPtr is a pointer to the application configuration
 *structure.
 *
 * @return	None.
 *
 * @note		None.
 *
 *****************************************************************************/
void InitRunConfig(Run_Config *RunCfgPtr) {
  /* Initial configuration parameters. */
  RunCfgPtr->DpPsuPtr = &DpPsu;
  RunCfgPtr->IntrPtr = &Intr;
  RunCfgPtr->AVBufPtr = &AVBuf;
  RunCfgPtr->DpDmaPtr = &DpDma;
  RunCfgPtr->VideoMode = XVIDC_VM_1920x1080_60_P;
  RunCfgPtr->Bpc = XVIDC_BPC_8;
  RunCfgPtr->ColorEncode = XDPPSU_CENC_RGB;
  RunCfgPtr->UseMaxCfgCaps = 1;
  RunCfgPtr->LaneCount = LANE_COUNT_2;
  RunCfgPtr->LinkRate = LINK_RATE_540GBPS;
  RunCfgPtr->EnSynchClkMode = 0;
  RunCfgPtr->UseMaxLaneCount = 1;
  RunCfgPtr->UseMaxLinkRate = 1;
}

/*****************************************************************************/
/**
 *
 * The purpose of this function is to initialize the DP Subsystem (XDpDma,
 * XAVBuf, XDpPsu)
 *
 * @param	RunCfgPtr is a pointer to the application configuration
 *structure.
 *
 * @return	None.
 *
 * @note		None.
 *
 *****************************************************************************/
int InitDpDmaSubsystem(Run_Config *RunCfgPtr) {
  u32 Status;
  XDpPsu *DpPsuPtr = RunCfgPtr->DpPsuPtr;
  XDpPsu_Config *DpPsuCfgPtr;
  XAVBuf *AVBufPtr = RunCfgPtr->AVBufPtr;
  XDpDma_Config *DpDmaCfgPtr;
  XDpDma *DpDmaPtr = RunCfgPtr->DpDmaPtr;

  /* Initialize DisplayPort driver. */
#ifndef SDT
  DpPsuCfgPtr = XDpPsu_LookupConfig(DPPSU_DEVICE_ID);
#else
  DpPsuCfgPtr = XDpPsu_LookupConfig(DPPSU_BASEADDR);
#endif
  XDpPsu_CfgInitialize(DpPsuPtr, DpPsuCfgPtr, DpPsuCfgPtr->BaseAddr);
  /* Initialize Video Pipeline driver */
#ifndef SDT
  XAVBuf_CfgInitialize(AVBufPtr, DpPsuPtr->Config.BaseAddr, AVBUF_DEVICE_ID);
#else
  XAVBuf_CfgInitialize(AVBufPtr, DpPsuPtr->Config.BaseAddr);
#endif

  /* Initialize the DPDMA driver */
#ifndef SDT
  DpDmaCfgPtr = XDpDma_LookupConfig(DPDMA_DEVICE_ID);
#else
  DpDmaCfgPtr = XDpDma_LookupConfig(DPDMA_BASEADDR);
#endif
  XDpDma_CfgInitialize(DpDmaPtr, DpDmaCfgPtr);

  /* Initialize the DisplayPort TX core. */
  Status = XDpPsu_InitializeTx(DpPsuPtr);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
  /* Set the format graphics frame for DPDMA*/
  Status = XDpDma_SetGraphicsFormat(DpDmaPtr, RGBA8888);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
  /* Set the format graphics frame for Video Pipeline*/
  Status = XAVBuf_SetInputNonLiveGraphicsFormat(AVBufPtr, RGBA8888);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
  /* Set the QOS for Video */
  XDpDma_SetQOS(RunCfgPtr->DpDmaPtr, 11);
  /* Enable the Buffers required by Graphics Channel */
  XAVBuf_EnableGraphicsBuffers(RunCfgPtr->AVBufPtr, 1);
  /* Set the output Video Format */
  XAVBuf_SetOutputVideoFormat(AVBufPtr, RGB_8BPC);

  /* Select the Input Video Sources.
   * Here in this example we are going to demonstrate
   * graphics overlay over the TPG video.
   */
  XAVBuf_InputVideoSelect(AVBufPtr, XAVBUF_VIDSTREAM1_NONE,
                          XAVBUF_VIDSTREAM2_NONLIVE_GFX);
  /* Configure Video pipeline for graphics channel */
  XAVBuf_ConfigureGraphicsPipeline(AVBufPtr);
  /* Configure the output video pipeline */
  XAVBuf_ConfigureOutputVideo(AVBufPtr);
  /* Disable the global alpha, since we are using the pixel based alpha */
  XAVBuf_SetBlenderAlpha(AVBufPtr, 0, 0);
  /* Set the clock mode */
  XDpPsu_CfgMsaEnSynchClkMode(DpPsuPtr, RunCfgPtr->EnSynchClkMode);
  /* Set the clock source depending on the use case.
   * Here for simplicity we are using PS clock as the source*/
  XAVBuf_SetAudioVideoClkSrc(AVBufPtr, XAVBUF_PS_CLK, XAVBUF_PS_CLK);
  /* Issue a soft reset after selecting the input clock sources */
  XAVBuf_SoftReset(AVBufPtr);

  return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * The purpose of this function is to setup call back functions for the DP
 * controller interrupts.
 *
 * @param	RunCfgPtr is a pointer to the application configuration
 *structure.
 *
 * @return	None.
 *
 * @note		None.
 *
 *****************************************************************************/
void SetupInterrupts(Run_Config *RunCfgPtr) {
  XDpPsu *DpPsuPtr = RunCfgPtr->DpPsuPtr;
  XScuGic *IntrPtr = RunCfgPtr->IntrPtr;
  XScuGic_Config *IntrCfgPtr;
  u32 IntrMask = XDPPSU_INTR_HPD_IRQ_MASK | XDPPSU_INTR_HPD_EVENT_MASK;

  XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_DIS, 0xFFFFFFFF);
  XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_MASK, 0xFFFFFFFF);

  XDpPsu_SetHpdEventHandler(DpPsuPtr, DpPsu_IsrHpdEvent, RunCfgPtr);
  XDpPsu_SetHpdPulseHandler(DpPsuPtr, DpPsu_IsrHpdPulse, RunCfgPtr);

#ifndef SDT
  /* Initialize interrupt controller driver. */
  IntrCfgPtr = XScuGic_LookupConfig(INTC_DEVICE_ID);
  XScuGic_CfgInitialize(IntrPtr, IntrCfgPtr, IntrCfgPtr->CpuBaseAddress);

  /* Register ISRs. */
  XScuGic_Connect(IntrPtr, DPPSU_INTR_ID,
                  (Xil_InterruptHandler)XDpPsu_HpdInterruptHandler,
                  RunCfgPtr->DpPsuPtr);

  /* Trigger DP interrupts on rising edge. */
  XScuGic_SetPriorityTriggerType(IntrPtr, DPPSU_INTR_ID, 0x0, 0x03);

  /* Connect DPDMA Interrupt */
  XScuGic_Connect(IntrPtr, DPDMA_INTR_ID,
                  (Xil_ExceptionHandler)XDpDma_InterruptHandler,
                  RunCfgPtr->DpDmaPtr);

  /* Initialize exceptions. */
  Xil_ExceptionInit();
  Xil_ExceptionRegisterHandler(
      XIL_EXCEPTION_ID_IRQ_INT,
      (Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler, INTC_DEVICE_ID);

  /* Enable exceptions for interrupts. */
  Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
  Xil_ExceptionEnable();

  /* Enable DP interrupts. */
  XScuGic_Enable(IntrPtr, DPPSU_INTR_ID);
  XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_EN, IntrMask);

  /* Enable DPDMA Interrupts */
  XScuGic_Enable(IntrPtr, DPDMA_INTR_ID);
  XDpDma_InterruptEnable(RunCfgPtr->DpDmaPtr, XDPDMA_IEN_VSYNC_INT_MASK);
#else
  XSetupInterruptSystem(RunCfgPtr->DpPsuPtr, &XDpPsu_HpdInterruptHandler,
                        RunCfgPtr->DpPsuPtr->Config.IntrId,
                        RunCfgPtr->DpPsuPtr->Config.IntrParent,
                        XINTERRUPT_DEFAULT_PRIORITY);
  XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_EN, IntrMask);
  XSetupInterruptSystem(RunCfgPtr->DpDmaPtr, &XDpDma_InterruptHandler,
                        RunCfgPtr->DpDmaPtr->Config.IntrId,
                        RunCfgPtr->DpDmaPtr->Config.IntrParent,
                        XINTERRUPT_DEFAULT_PRIORITY);
  XDpDma_InterruptEnable(RunCfgPtr->DpDmaPtr, XDPDMA_IEN_VSYNC_INT_MASK);
#endif
}
