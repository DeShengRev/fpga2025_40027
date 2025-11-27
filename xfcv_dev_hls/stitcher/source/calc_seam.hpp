
#pragma once
#include "blend.hpp"
#include "calc_seam.hpp"
#include "common/xf_structs.hpp"
#include "imgproc/xf_resize.hpp"
#include "share.h"
#include <cstdio>

#define COST_TYPE XF_16UC1
#define COST_SCALE 6
constexpr int COST_HEIGHT = PROC_HEIGHT / COST_SCALE;
constexpr int COST_WIDTH = OVERLAP_WIDTH / COST_SCALE;

#define DP_SEARCH_WIDTH 3

template <int _ROWS, int _COLS, int _NPC, int _XFCVDEPTH_IN, int _XFCVDEPTH_OUT>
void calc_cost_map(
    xf::cv::Mat<SRC_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH_IN> &_src0,
    xf::cv::Mat<SRC_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH_IN> &_src1,
    xf::cv::Mat<COST_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH_OUT> &_cost) {

  int idx = 0;
  for (int y = 0; y < _ROWS; ++y) {

    for (int x = 0; x < _COLS; ++x) {
#pragma HLS PIPELINE II = 2
      ap_uint<24> color1 = _src0.read(idx);
      ap_uint<24> color2 = _src1.read(idx);

      ap_int<9> r1 = color1.range(7, 0);
      ap_int<9> r2 = color2.range(7, 0);

      ap_int<9> g1 = color1.range(15, 8);
      ap_int<9> g2 = color2.range(15, 8);

      ap_int<9> b1 = color1.range(23, 16);
      ap_int<9> b2 = color2.range(23, 16);

      // S_AD = |R1 - R2| + |G1 - G2| + |B1 - B2|
      ap_uint<16> diff_sum = (ap_uint<8>)hls::abs(r1 - r2) +
                             (ap_uint<8>)hls::abs(g1 - g2) +
                             (ap_uint<8>)hls::abs(b1 - b2);

      _cost.write(idx, diff_sum);
      ++idx;
    }
    // printf("\n");
  }
}

template <int _ROWS, int _COLS, int _NPC, int _XFCVDEPTH>
void calc_seam(xf::cv::Mat<COST_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH> &cost,
               u16a *seam_path) {

  ap_int<4> track[_ROWS][_COLS] = {0};
  u32t prev_dp[_COLS] = {0};
  u32t curr_dp[_COLS] = {0};

  prev_dp[0] = 0xFFFFFFFF;
  prev_dp[_COLS - 1] = 0xFFFFFFFF;

  for (int y = 0; y < _ROWS; ++y) {
    for (int x = 1; x < _COLS - 1; ++x) {
#pragma HLS PIPELINE II = 2
      u32t curr_cost = (u32t)cost.read(y * _COLS + x);

      bool cmp01 = prev_dp[x - 1] < prev_dp[x];
      bool cmp02 = prev_dp[x - 1] < prev_dp[x + 1];
      bool cmp12 = prev_dp[x] <= prev_dp[x + 1];

      if (cmp01 && cmp02) {
        curr_dp[x] = prev_dp[x - 1] + curr_cost;
        track[y][x] = -1;
      } else if ((!cmp01) && cmp12) {
        curr_dp[x] = prev_dp[x] + curr_cost;
        track[y][x] = 0;
      } else {
        curr_dp[x] = prev_dp[x + 1] + curr_cost;
        track[y][x] = 1;
      }
    }

    for (int x = 1; x < _COLS - 1; ++x) {
      prev_dp[x] = curr_dp[x];
    }
  }
  u32t min_val = 0xFFFFFFFF;
  u16t track_x;

  for (int x = 1; x < _COLS - 1; ++x) {
    if (curr_dp[x] < min_val) {
      min_val = curr_dp[x];
      track_x = x;
    }
  }

  for (int y = _ROWS - 1; y >= 0; --y) {
#pragma HLS PIPELINE
    seam_path[y] = track_x * COST_SCALE;
    // printf("%d ", track_x);
    track_x += track[y][track_x];
  }
  //   printf("\n");

  return;
}

void update_seam(SProcPic &img0, SProcPic &img1, u16a *seam_path,
                 HalfPic &result);