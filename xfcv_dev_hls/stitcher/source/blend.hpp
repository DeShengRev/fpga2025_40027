
#pragma once

#include "blend.hpp"
#include "calc_seam.hpp"
#include "share.h"
#include <cassert>

#define NUM_LEVELS 3

#define HALF_BLENDING_WIDTH 32
#define BLENDING_SHIFT 6
constexpr int BLENDING_WIDTH = 2 * HALF_BLENDING_WIDTH + 1;

// template <int ROWS, int COLS>
// void base_blend(xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &img0,
//                 xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &img1,
//                 xf::cv::Mat<MASK_TYPE, ROWS, COLS, NPPCX> &mask,
//                 xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &res) {
// #pragma HLS INLINE off
//   for (int y = 0; y < ROWS; y++) {
//     for (int x = 0; x < COLS; x++) {
// #pragma HLS PIPELINE II = 1
//       int idx = y * COLS + x;

//       u24a color1 = img0.read(idx);
//       u24a color2 = img1.read(idx);
//       u16t k = mask.read(idx);

//       u8t r1 = color1.range(7, 0);
//       u8t g1 = color1.range(15, 8);
//       u8t b1 = color1.range(23, 16);

//       u8t r2 = color2.range(7, 0);
//       u8t g2 = color2.range(15, 8);
//       u8t b2 = color2.range(23, 16);

//       ap_int<32> tmp_r = (ap_int<32>)r1 * k + (ap_int<32>)r2 * (MASK_MAX -
//       k); ap_int<32> tmp_g = (ap_int<32>)g1 * k + (ap_int<32>)g2 * (MASK_MAX
//       - k); ap_int<32> tmp_b = (ap_int<32>)b1 * k + (ap_int<32>)b2 *
//       (MASK_MAX - k);

//       u8t blend_r = (u8t)(tmp_r >> MASK_SHIFT);
//       u8t blend_g = (u8t)(tmp_g >> MASK_SHIFT);
//       u8t blend_b = (u8t)(tmp_b >> MASK_SHIFT);

//       u24a blend;
//       blend.range(7, 0) = blend_r;
//       blend.range(15, 8) = blend_g;
//       blend.range(23, 16) = blend_b;

//       res.write(idx, blend);
//     }
//   }
// }

template <int _ROWS, int _COLS, int _NPC, int _XFCVDEPTH_IN, int _XFCVDEPTH_OUT>
void feathering_blend(
    xf::cv::Mat<SRC_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH_IN> &_src0,
    xf::cv::Mat<SRC_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH_IN> &_src1,
    xf::cv::Mat<SRC_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH_OUT> &_blend) {
  assert(_COLS == BLENDING_WIDTH);

  int idx = 0;

  for (int y = 0; y < _ROWS; ++y) {
#pragma HLS LOOP_TRIPCOUNT min = _ROWS max = _ROWS

    for (int x = 0; x < _COLS; ++x) {
#pragma HLS LOOP_TRIPCOUNT min = _COLS max = _COLS

      u24a color0 = _src0.read(idx);
      u24a color1 = _src1.read(idx);

      u8t r0 = color0.range(7, 0);
      u8t g0 = color0.range(15, 8);
      u8t b0 = color0.range(23, 16);

      u8t r1 = color1.range(7, 0);
      u8t g1 = color1.range(15, 8);
      u8t b1 = color1.range(23, 16);

      u32a tmp_r = (u32a)r0 * (BLENDING_WIDTH - 1 - x) + (u32a)r1 * x;
      u32a tmp_g = (u32a)g0 * (BLENDING_WIDTH - 1 - x) + (u32a)g1 * x;
      u32a tmp_b = (u32a)b0 * (BLENDING_WIDTH - 1 - x) + (u32a)b1 * x;

      u8t blend_r = (u8t)(tmp_r >> BLENDING_SHIFT);
      u8t blend_g = (u8t)(tmp_g >> BLENDING_SHIFT);
      u8t blend_b = (u8t)(tmp_b >> BLENDING_SHIFT);

      u24a blend_rgb;
      blend_rgb.range(7, 0) = blend_r;
      blend_rgb.range(15, 8) = blend_g;
      blend_rgb.range(23, 16) = blend_b;

      _blend.write(idx, blend_rgb);

      ++idx;
    }
  }
}