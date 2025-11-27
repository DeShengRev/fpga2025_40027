
#include "blend.hpp"
#include "calc_seam.hpp"
#include "share.h"
#include "utils.hpp"
#include <etc/ap_common.h>

// void pyramid_blend(ProcPic &img0, ProcPic &img1, hls::stream<u16t>
// &seam_path,
//                    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERALL_WIDTH, NPPCX,
//                                XF_CV_DEPTH> &blend) {
//   constexpr int BW = BLENDING_WIDTH;
//   constexpr int LW = PROC_WIDTH - BLENDING_WIDTH;
//   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, BW, NPPCX, XF_CV_DEPTH> ts0, ts1, ts;
//   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, LW, NPPCX, XF_CV_DEPTH> leftover;
//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     int spm = seam_path.read();
//     int spl = spm - HALF_BLENDING_WIDTH;
//     int spr = spm + HALF_BLENDING_WIDTH;
//     int dx = 0;
//     for (int x = 0; x < PROC_WIDTH; ++x) {
//       u24a val = img0.read(y * PROC_WIDTH + x);
//       if (x < UNDERLAP_WIDTH + spl) {
//         leftover.write(y * LW + dx, val);
//         ++dx;
//       } else if (x < UNDERLAP_WIDTH + spr) {
//         ts0.write(y * BW + x - (UNDERLAP_WIDTH + spl), val);
//       }
//     }
//     for (int x = 0; x < PROC_WIDTH; ++x) {
//       u24a val = img1.read(y * PROC_WIDTH + x);
//       if (x > spl) {
//         ts1.write(y * BW + x - spl, val);
//       } else if (x < UNDERLAP_WIDTH + spr) {
//         leftover.write(y * LW + dx, val);
//         ++dx;
//       }
//     }
//   }
//   feathering_blend(ts0, ts1, ts);
// }

void base_blend_core(LProcPic &img0, LProcPic &img1, bool draw_seam,
                     hls::stream<u16a> &seam_path, HalfPic &blend) {

  int idx = 0, idx0 = 0, idx1 = 0;
  int spm = 765, spl = 765 - 32, spr = 765 + 32;

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    spm = seam_path.read();
    spl = spm - HALF_BLENDING_WIDTH;
    spr = spm + HALF_BLENDING_WIDTH;

    for (int x = 0; x < SRC_WIDTH; ++x) {
#pragma HLS PIPELINE II = 1
      if (x < UNDERLAP_WIDTH) {
        u24a val = img0.read(idx0++);
        blend.write(idx++, val);

      } else if (x < spl) {
        u24a val = img0.read(idx0++);
        img1.read(idx1++);
        blend.write(idx++, val);
      } else if (x <= spr) {
        u24a val0 = img0.read(idx0++);
        u24a val1 = img1.read(idx1++);

        u24a val = _wb(val0, val1, spr - x, x - spl);
        val = (draw_seam && x == spm) ? (u24a)0x0000FF : val;

        blend.write(idx++, val);

      } else if (x < PROC_WIDTH) {
        img0.read(idx0++);
        u24a val = img1.read(idx1++);
        blend.write(idx++, val);

      } else if (x < OVERALL_WIDTH) {
        u24a val = img1.read(idx1++);
        blend.write(idx++, val);
      } else {
        blend.write(idx++, 0);
      }
    }

    // printf("%d %d %d\n", idx, idx0, idx1);
  }
}

void _limit_split(u16a *seam_path, hls::stream<u16a> &seam_path_lim) {

  for (int y = 0; y < COST_HEIGHT; ++y) {

    u16a val = seam_path[y];
    u16a valp = 0;

    if (val < HALF_BLENDING_WIDTH) {
      valp = HALF_BLENDING_WIDTH;
    } else if (val < OVERLAP_WIDTH - HALF_BLENDING_WIDTH) {
      valp = val;
    } else {
      valp = OVERLAP_WIDTH - 1 - HALF_BLENDING_WIDTH;
    }
    valp += UNDERLAP_WIDTH;
    for (int i = 0; i < COST_SCALE; ++i) {
#pragma HLS PIPELINE II = 1
      seam_path_lim.write(valp);
    }
  }
}
void base_blend(SProcPic &img0, SProcPic &img1, bool draw_seam, u16a *seam_path,
                HalfPic &blend) {
#pragma HLS DATAFLOW
  LProcPic img0_l, img1_l;
  hls::stream<u16a> seam_path_lim;
  #pragma HLS STREAM variable=seam_path_lim depth=64
  _copy_mat_2(img0, img1, img0_l, img1_l);
  _limit_split(seam_path, seam_path_lim);
  base_blend_core(img0_l, img1_l, draw_seam, seam_path_lim, blend);
}