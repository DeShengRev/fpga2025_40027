
#include "ccv.h"
#include "share.h"
#include "xil_types.h"

extern u8 cam0_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 cam1_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 stch_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];
extern u8 bino_frame[DISPLAY_NUM_FRAMES][SRC_HEIGHT][SRC_WIDTH][4];

int cam0_n = 0, cam1_n = 0, stch_n = 0, bino_n = 0;
void make_bino(u8 src0[SRC_HEIGHT][SRC_WIDTH][4],
               u8 src1[SRC_HEIGHT][SRC_WIDTH][4],
               u8 dst[SRC_HEIGHT][SRC_WIDTH][4]) {

  int _H = SRC_HEIGHT / 2;
  int _W = SRC_WIDTH / 2;

  for (int y = 0; y < _H; ++y) {
    for (int x = 0; x < _W; ++x) {
      for (int ch = 0; ch < 3; ++ch) {
        int val0 =
            (src0[2 * y][2 * x][ch] + src0[2 * y + 1][2 * x][ch] +
             src0[2 * y][2 * x + 1][ch] + src0[2 * y + 1][2 * x + 1][ch]) >> 2;
        dst[y][x][ch] = val0;
      }
      dst[y][x][3] = 255;
    }
  }
    for (int y = 0; y < _H; ++y) {
    for (int x = 0; x < _W; ++x) {
      for (int ch = 0; ch < 3; ++ch) {
        int val1 =
            (src1[2 * y][2 * x][ch] + src1[2 * y + 1][2 * x][ch] +
             src1[2 * y][2 * x + 1][ch] + src1[2 * y + 1][2 * x + 1][ch]) >> 2;
        dst[y][x + _W][ch] = val1;
      }
      
      dst[y][x + _W][3] = 255;
    }
  }
}
