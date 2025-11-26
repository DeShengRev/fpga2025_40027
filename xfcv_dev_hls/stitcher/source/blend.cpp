
#include "blend.hpp"
#include "calc_seam.hpp"
#include "share.h"
#include "utils.hpp"

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

void base_seam_blend(LProcPic &img0, LProcPic &img1, bool draw_seam,
                     u16t *seam_path, HalfPic &blend) {

  int idx = 0, idx0 = 0, idx1 = 0;
  int seam_idx = 0;
  int spm = 765, spl = 765 - 32, spr = 765 + 32;
  int cnt6 = 5;

  for (int y = 0; y < PROC_HEIGHT; ++y) {

    if (cnt6 == 5) {
      cnt6 = 0;
      spm = seam_path[seam_idx++];
      spl = spm - HALF_BLENDING_WIDTH;
      spr = spm + HALF_BLENDING_WIDTH;
      // printf(" read seam %d, %d\n", seam_idx, spm);
    } else {
      ++cnt6;
    }

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