

#include "stitch.hpp"

void calc_cost_map(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<COST_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &cost) {
        

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < OVERLAP_WIDTH; ++x) {

        int idx = y * OVERLAP_WIDTH + x;
      ap_uint<24> color1 = img0.read(idx);
      ap_uint<24> color2 = img1.read(idx);

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

      // printf("%d, ", (int) diff_sum);

      cost.write(idx, diff_sum);
    }
    // printf("\n");
  }
}

void calc_seam(
    xf::cv::Mat<COST_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &cost,
    ap_int<TRACK_AXI_WIDTH> *track, hls::stream<u16t> &seam_path) {

  u32t prev_dp[OVERLAP_WIDTH] = {0};
  u32t curr_dp[OVERLAP_WIDTH] = {0};
  u16t seam_path_rev[PROC_HEIGHT] = {0};

  prev_dp[0] = 0xFFFFFFFF;
  prev_dp[OVERLAP_WIDTH - 1] = 0xFFFFFFFF;

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 1; x < OVERLAP_WIDTH - 1; ++x) {
      u32t curr_cost = (u32t)cost.read(y * OVERLAP_WIDTH + x);

      bool cmp01 = prev_dp[x - 1] < prev_dp[x];
      bool cmp02 = prev_dp[x - 1] < prev_dp[x + 1];
      bool cmp12 = prev_dp[x] <= prev_dp[x + 1];

      if (cmp01 && cmp02) {
        curr_dp[x] = prev_dp[x - 1] + curr_cost;
        track[y * OVERLAP_WIDTH + x] = -1;
      } else if ((!cmp01) && cmp12) {
        curr_dp[x] = prev_dp[x] + curr_cost;
        track[y * OVERLAP_WIDTH + x] = 0;
      } else {
        curr_dp[x] = prev_dp[x + 1] + curr_cost;
        track[y * OVERLAP_WIDTH + x] = 1;
      }
    }

    for (int x = 1; x < OVERLAP_WIDTH - 1; ++x) {
      prev_dp[x] = curr_dp[x];
    }
  }
  u32t min_val = 0xFFFFFFFF;
  u16t track_x;

  for (int x = 1; x < OVERLAP_WIDTH - 1; ++x) {
    if (curr_dp[x] < min_val) {
      min_val = curr_dp[x];
      track_x = x;
    }
  }

  for (int y = PROC_HEIGHT - 1; y > 0; --y) {
    seam_path_rev[y] = track_x;
    track_x += track[y * OVERLAP_WIDTH + track_x];
  }

  seam_path.write(track_x);
  for (int y = 1; y < PROC_HEIGHT; ++y) {
    seam_path.write(seam_path_rev[y]);
  }
  return;
}

#define HALF_BLENDING_WIDTH 32
constexpr int BLENDING_K = 0xFFFF / (2 * HALF_BLENDING_WIDTH);

void generate_mask(
    hls::stream<u16t> &seam_path,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask,
    u8t mode) {

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    u16t split_x = seam_path.read();
    for (u16t x = 0; x < OVERLAP_WIDTH; ++x) {

      u16t val;
      if (mode == 0) {
        val = x <= split_x ? MASK_MAX : 0;
      } else {
          

        if (x + HALF_BLENDING_WIDTH <= split_x) {
          val = MASK_MAX;
        } else if (split_x + HALF_BLENDING_WIDTH <= x) {
          val = 0;
        } else {
          val = MASK_MAX - BLENDING_K * (x + HALF_BLENDING_WIDTH - split_x);
        }
      }
      mask.write(y * OVERLAP_WIDTH + x, val);

      
    }
  }
}
