
#include "xparameters.h"

#ifndef SRC_CONFIG_H_
#define SRC_CONFIG_H_

#define SDT

#define DISPLAY_NUM_FRAMES 3

#define SRC_HEIGHT 1080
#define SRC_WIDTH 1920
#define FRAME_PIXELS (SRC_HEIGHT * SRC_WIDTH)
#define BUFFERSIZE (SRC_HEIGHT * SRC_WIDTH * 4) /* HTotal * VTotal * BPP */
#define HORSIZE (SRC_WIDTH * 4)               /* HTotal * BPP */
#define STRIDE HORSIZE /* The stride value should aligned to 256*/
#define VERSIZE SRC_HEIGHT

#define CAM0_EMIO 78
#define CAM1_EMIO 79

#endif /* SRC_CONFIG_H_ */
