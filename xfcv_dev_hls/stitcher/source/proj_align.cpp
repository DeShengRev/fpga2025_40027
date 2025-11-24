

#include "proj_align.hpp"
#include "imgproc/xf_resize.hpp"
#include "share.h"
#include <cstdio>

#define REMAP_WIN_ROWS0 22
#define REMAP_WIN_ROWS1 22

int _axis_to_mapxy(MapStrm &map_strm, MapPic &mapx0, MapPic &mapy0,
                   MapPic &mapx1, MapPic &mapy1) {

  MapStrmBus axi;
  int res = 0;
  int idx = 0;

  bool start = false;
  bool last = false;

loop_start_hunt:
  while (!start) {

#pragma HLS pipeline II = 1
#pragma HLS loop_tripcount avg = 1 max = 1

    map_strm >> axi;
    start = axi.user.to_bool();
  }

loop_row_axi2mat:
  for (int y = 0; y < PROC_HEIGHT; y++) {
    last = false;

  loop_col_zxi2mat:
    for (int x = 0; x < PROC_WIDTH; x++) {

#pragma HLS loop_flatten off
#pragma HLS pipeline II = 1

      if (start || last) {
        start = false;
      } else {
        map_strm >> axi;

        bool user = axi.user.to_int();
        if (user) {
          res |= ERROR_IO_SOF_EARLY;
        }
      }
      if (last && (x != PROC_WIDTH - 1)) { // checking end of each row
        res |= ERROR_IO_EOL_EARLY;
      }

      last = axi.last.to_bool();

      mapx0.write(idx, axi.data(31, 0));
      mapy0.write(idx, axi.data(63, 32));
      mapx1.write(idx, axi.data(95, 64));
      mapy1.write(idx, axi.data(127, 96));

    //   if (idx % 100 == 99)
    //   {
    //     printf("%d %d ", idx, last);
    //   }
      
      ++idx;
    }


  loop_last_hunt:
    while (!last) {
#pragma HLS pipeline II = 1
#pragma HLS loop_tripcount avg = 1 max = 1

    // printf("wrong line end\n");
      map_strm >> axi;
      last = axi.last.to_bool();
      res |= ERROR_IO_EOL_LATE;
    }
  }

  return res;
}

void proj_align(ProcPic &img0, ProcPic &img1, ProcPic &img0_remap,
                ProcPic &img1_remap, MapStrm &map_strm) {
#pragma HLS INLINE

  MapPic mapx0(PROC_HEIGHT, PROC_WIDTH), mapy0(PROC_HEIGHT, PROC_WIDTH),
      mapx1(PROC_HEIGHT, PROC_WIDTH), mapy1(PROC_HEIGHT, PROC_WIDTH);

  _axis_to_mapxy(map_strm, mapx0, mapy0, mapx1, mapy1);
    // printf("axis2mapxy finish\n");


  xf::cv::remap<REMAP_WIN_ROWS0, XF_INTERPOLATION_BILINEAR>(img0, img0_remap,
                                                            mapx0, mapy0);
  xf::cv::remap<REMAP_WIN_ROWS1, XF_INTERPOLATION_BILINEAR>(img1, img1_remap,
                                                            mapx1, mapy1);


  return;
                 
}
