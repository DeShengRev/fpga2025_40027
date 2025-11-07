

#include "stitch.hpp"

#define REMAP_WIN_ROWS1 10
#define REMAP_WIN_ROWS2 10
#define REMAP_INTERPOLATION_TYPE XF_INTERPOLATION_BILINEAR

typedef ap_uint<128> u128a;

void proj_align(xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_in0,
                xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_in1,
                xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_out0,
                xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_out1,
                ap_uint<MAPXY_AXI_WIDTH> *mapxy) {

  xf::cv::Mat<MAPXY_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> mapx0(PROC_HEIGHT,
                                                              PROC_WIDTH),
      mapy0(PROC_HEIGHT, PROC_WIDTH), mapx1(PROC_HEIGHT, PROC_WIDTH),
      mapy1(PROC_HEIGHT, PROC_WIDTH);

#pragma HLS DATAFLOW

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      int idx = y * PROC_WIDTH + x;
      u128a map = mapxy[idx];

      u32a x1 = map.range(31, 0);
      u32a y1 = map.range(63, 32);
      u32a x2 = map.range(95, 64);
      u32a y2 = map.range(127, 96);
      mapx0.write(idx, x1);
      mapy0.write(idx, y1);
      mapx1.write(idx, x2);
      mapy1.write(idx, y2);
    }
  }

  xf::cv::remap<REMAP_WIN_ROWS1, REMAP_INTERPOLATION_TYPE>(img_in0, img_out0,
                                                           mapx0, mapy0);

  xf::cv::remap<REMAP_WIN_ROWS1, REMAP_INTERPOLATION_TYPE>(img_in1, img_out1,
                                                           mapx1, mapy1);
  return;
}
