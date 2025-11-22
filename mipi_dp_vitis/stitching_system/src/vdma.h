
#ifndef VDMA_H_
#define VDMA_H_

#include "xaxivdma.h"
#include "xil_types.h"

// int vdma_read_init(UINTPTR BaseAddress,short HoriSizeInput,short VertSizeInput,short Stride,unsigned int FrameStoreStartAddr);
// int vdma_write_init(UINTPTR BaseAddress,short HoriSizeInput,short VertSizeInput,short Stride,unsigned int FrameStoreStartAddr);
// u32 vdma_version();


void vdma_init_all(void);
void debug_vdma_status(XAxiVdma *vdma, const char *name);

#endif /* VDMA_H_ */
