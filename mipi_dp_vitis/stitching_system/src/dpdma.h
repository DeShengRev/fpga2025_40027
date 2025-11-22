

#ifndef SRC_DPDMA_VIDEO_EXAMPLE_H_

#define SRC_DPDMA_VIDEO_EXAMPLE_H_

#include "xdpdma.h"      /* DPDMA device driver */
#include "xparameters.h" /* SDK generated parameters */

#ifndef SDT
#include "xscugic.h" /* Interrupt controller device driver */
#else
#include "xinterrupt_wrap.h"
#endif
#include "xavbuf.h"     /* AVBUF is the video pipeline driver */
#include "xavbuf_clk.h" /* Clock Driver for Video(VPLL) and Audio(RPLL) clocks */
#include "xdppsu.h"     /* DP controller device driver */


/****************************** Type Definitions ******************************/

typedef enum { CAM0_FRAME, CAM1_FRAME, BINO_FRAME, STCH_FRAME } FrameId;

typedef enum {
  LANE_COUNT_1 = 1,
  LANE_COUNT_2 = 2,
} LaneCount_t;

typedef enum {
  LINK_RATE_162GBPS = 0x06,
  LINK_RATE_270GBPS = 0x0A,
  LINK_RATE_540GBPS = 0x14,
} LinkRate_t;

typedef struct {
  XDpPsu *DpPsuPtr;
  XScuGic *IntrPtr;
  XAVBuf *AVBufPtr;
  XDpDma *DpDmaPtr;

  XVidC_VideoMode VideoMode;
  XVidC_ColorDepth Bpc;
  XDpPsu_ColorEncoding ColorEncode;

  u8 UseMaxLaneCount;
  u8 UseMaxLinkRate;
  u8 LaneCount;
  u8 LinkRate;
  u8 UseMaxCfgCaps;
  u8 EnSynchClkMode;

  u32 PixClkHz;
} Run_Config;

/************************** Function Prototypes ******************************/

void InitRunConfig(Run_Config *RunCfgPtr);
int InitDpDmaSubsystem(Run_Config *RunCfgPtr);
void SetupInterrupts(Run_Config *RunCfgPtr);
u8 *GraphicsOverlay(u8 *Frame, Run_Config *RunCfgPtr);

/* DisplayPort interrupt related functions */
void DpPsu_SetupVideoStream(Run_Config *RunCfgPtr);

void DpPsu_Run(Run_Config *RunCfgPtr);
void DpPsu_IsrHpdEvent(void *ref);
void DpPsu_IsrHpdPulse(void *ref);

int DpdmaVideoExample(UINTPTR cam_frame);
void switch_screen(FrameId id);


#endif /* SRC_DPDMA_VIDEO_EXAMPLE_H_ */
