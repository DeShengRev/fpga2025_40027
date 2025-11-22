

#include "vdma.h"
#include "config.h"
#include "xil_printf.h"


extern u8 cam0_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 cam1_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];

XAxiVdma vdma0, vdma1, vdma_stc;
XAxiVdma_Config vdma0_cfg, vdma1_cfg, vdma_stc_cfg;
XAxiVdma_DmaSetup vdma0_wr_cfg, vdma1_wr_cfg, vdma_stc_wr_cfg;



u32 vdma_version(XAxiVdma *Vdma) { return XAxiVdma_GetVersion(Vdma); }

int vdma_read_start(XAxiVdma *Vdma) {
  int Status;

  // MM2S Startup
  Status = XAxiVdma_DmaStart(Vdma, XAXIVDMA_READ);
  if (Status != XST_SUCCESS) {
    xil_printf("Start read transfer failed %d\n\r", Status);
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}

int vdma_read_stop(XAxiVdma *Vdma) {
  XAxiVdma_DmaStop(Vdma, XAXIVDMA_READ);
  return XST_SUCCESS;
}

int vdma_read_init(UINTPTR BaseAddress, short HoriSizeInput,
                   short VertSizeInput, short Stride,
                   unsigned int FrameStoreStartAddr) {
  XAxiVdma Vdma;
  XAxiVdma_Config *Config;
  XAxiVdma_DmaSetup ReadCfg;
  int Status;

  Config = XAxiVdma_LookupConfig(BaseAddress);
  if (NULL == Config) {
    xil_printf("XAxiVdma_LookupConfig failure\r\n");
    return XST_FAILURE;
  }

  Status = XAxiVdma_CfgInitialize(&Vdma, Config, Config->BaseAddress);
  if (Status != XST_SUCCESS) {
    xil_printf("XAxiVdma_CfgInitialize failure\r\n");
    return XST_FAILURE;
  }

  ReadCfg.EnableCircularBuf = 0;
  ReadCfg.EnableFrameCounter = 0;
  ReadCfg.FixedFrameStoreAddr = 0;

  ReadCfg.EnableSync = 1;
  ReadCfg.PointNum = 1;

  ReadCfg.FrameDelay = 0;

  ReadCfg.VertSizeInput = VertSizeInput;
  ReadCfg.HoriSizeInput = HoriSizeInput;
  ReadCfg.Stride = Stride;

  Status = XAxiVdma_DmaConfig(&Vdma, XAXIVDMA_READ, &ReadCfg);
  if (Status != XST_SUCCESS) {
    xdbg_printf(XDBG_DEBUG_ERROR, "Read channel config failed %d\r\n", Status);

    return XST_FAILURE;
  }

  ReadCfg.FrameStoreStartAddr[0] = FrameStoreStartAddr;

  Status = XAxiVdma_DmaSetBufferAddr(&Vdma, XAXIVDMA_READ,
                                     ReadCfg.FrameStoreStartAddr);
  if (Status != XST_SUCCESS) {
    xdbg_printf(XDBG_DEBUG_ERROR,
                "Read channel set buffer address failed %d\r\n", Status);
    return XST_FAILURE;
  }

  Status = vdma_read_start(&Vdma);
  if (Status != XST_SUCCESS) {
    xil_printf("error starting VDMA..!");
    return Status;
  }
  return XST_SUCCESS;
}

int vdma_write_start(XAxiVdma *Vdma) {
  int Status;

  // MM2S Startup
  Status = XAxiVdma_DmaStart(Vdma, XAXIVDMA_WRITE);
  if (Status != XST_SUCCESS) {
    xil_printf("Start write transfer failed %d\n\r", Status);
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}

int vdma_write_stop(XAxiVdma *Vdma) {
  XAxiVdma_DmaStop(Vdma, XAXIVDMA_WRITE);
  return XST_SUCCESS;
}


int vdma_write_init(UINTPTR BaseAddress, XAxiVdma *p_vdma,
                    XAxiVdma_Config *p_cfg, XAxiVdma_DmaSetup *p_wr_cfg,
                    short HoriSizeInput, short VertSizeInput, short Stride,
                    unsigned int FrameStoreStartAddr) {

  int Status;

  p_cfg = XAxiVdma_LookupConfig(BaseAddress);
  if (NULL == p_cfg) {
    xil_printf("XAxiVdma_LookupConfig failure\r\n");
    return XST_FAILURE;
  }

  Status = XAxiVdma_CfgInitialize(p_vdma, p_cfg, p_cfg->BaseAddress);
  if (Status != XST_SUCCESS) {
    xil_printf("XAxiVdma_CfgInitialize failure\r\n");
    return XST_FAILURE;
  }

  p_wr_cfg->EnableCircularBuf = 0;
  p_wr_cfg->EnableFrameCounter = 0;
  p_wr_cfg->FixedFrameStoreAddr = 0;
  p_wr_cfg->EnableSync = 1;
  p_wr_cfg->PointNum = 1;
  p_wr_cfg->FrameDelay = 0;
  p_wr_cfg->VertSizeInput = VertSizeInput;
  p_wr_cfg->HoriSizeInput = HoriSizeInput;
  p_wr_cfg->Stride = Stride;

  Status = XAxiVdma_DmaConfig(p_vdma, XAXIVDMA_WRITE, p_wr_cfg);
  if (Status != XST_SUCCESS) {
    xil_printf("Read channel p_cfg failed %d\r\n", Status);

    return XST_FAILURE;
  }

  p_wr_cfg->FrameStoreStartAddr[0] = FrameStoreStartAddr;

  Status = XAxiVdma_DmaSetBufferAddr(p_vdma, XAXIVDMA_WRITE,
                                     p_wr_cfg->FrameStoreStartAddr);
  if (Status != XST_SUCCESS) {
    xil_printf("Write channel set buffer address failed %d\r\n", Status);
    return XST_FAILURE;
  }

  Status = vdma_write_start(p_vdma);
  if (Status != XST_SUCCESS) {
    xil_printf("error starting VDMA..!\n");
    return Status;
  }

  xil_printf("VDMA module at %p initialized\n", BaseAddress);

  return XST_SUCCESS;
}

void vdma_init_all() {
  int status;
  status = vdma_write_init(XPAR_AXI_VDMA_0_BASEADDR, &vdma0, &vdma0_cfg,
                           &vdma0_wr_cfg, HORSIZE, VERSIZE, STRIDE,
                           (unsigned int)cam0_frame);

  status = vdma_write_init(XPAR_AXI_VDMA_1_BASEADDR, &vdma1, &vdma1_cfg,
                           &vdma1_wr_cfg, HORSIZE, VERSIZE, STRIDE,
                           (unsigned int)cam1_frame);

}



void debug_vdma_status(XAxiVdma *vdma, const char *name) {
    u32 status;
    
    xil_printf("=== %s Status ===\n", name);
    
    // 检查写通道状态
    status = XAxiVdma_GetStatus(vdma, XAXIVDMA_WRITE);
    xil_printf("Write Channel Status: 0x%x\n", status);
    
    if (status & XAXIVDMA_SR_HALTED_MASK) {
        xil_printf("  - HALTED");
    }
    if (status & XAXIVDMA_SR_IDLE_MASK) {
        xil_printf("  - IDLE");
    }
    if (status & XAXIVDMA_SR_ERR_INTERNAL_MASK) {
        xil_printf("  - INTERNAL ERROR");
    }
    if (status & XAXIVDMA_SR_ERR_SLAVE_MASK) {
        xil_printf("  - SLAVE ERROR");
    }
    if (status & XAXIVDMA_SR_ERR_DECODE_MASK) {
        xil_printf("  - DECODE ERROR");
    }
    if (status & XAXIVDMA_SR_ERR_FSZ_LESS_MASK) {
        xil_printf("  - FRAME SIZE ERROR");
    }
    xil_printf("\n====================\n\n");
}

