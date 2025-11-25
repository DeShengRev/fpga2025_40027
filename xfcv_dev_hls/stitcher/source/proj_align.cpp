

#include "proj_align.hpp"
#include "imgproc/xf_resize.hpp"
#include "share.h"
#include <cstdio>


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

void _arr128_to_mapxy(u128a *m_axi_mapxy, MapPic &mapx0, MapPic &mapy0,
                      MapPic &mapx1, MapPic &mapy1) {
  int idx = 0;
  for (int y = 0; y < PROC_HEIGHT; ++y) {
#pragma HLS loop_tripcount min = PROC_HEIGHT max = PROC_HEIGHT
    for (int x = 0; x < PROC_WIDTH; ++x) {
#pragma HLS loop_tripcount min = PROC_WIDTH max = PROC_WIDTH

      u128a val = m_axi_mapxy[idx];
      mapx0.write(idx, val.range(31, 0));
      mapy0.write(idx, val.range(63, 32));
      mapx1.write(idx, val.range(95, 64));
      mapy1.write(idx, val.range(127, 96));
      ++idx;
    }
  }
}

