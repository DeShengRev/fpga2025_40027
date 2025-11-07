// tb.cpp  (video-frames version, same framework as single-image version)
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <vector>
#include <iostream>
#include <cstring>

#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "xf_isp_config.h"

// stb_image 用于装载帧图（JPG/PNG）
#define STB_IMAGE_IMPLEMENTATION
#define STBI_NO_THREAD_LOCALS
#define STBI_ONLY_PNG
#define STBI_ONLY_JPEG
#include "stb_image.h"

// --------- 路径---------
static const char* kInputTpl  = "D:\\AAAAA_out_isp_pic\\frames\\frame_%04d.jpg";
static const char* kOutputTpl = "D:\\AAAAA_out_isp_pic\\frame_out\\out_%04d.ppm";

// 写 PPM(P6)
static bool write_ppm(const char* path, const std::vector<uint8_t>& rgb, int w, int h) {
    FILE* f = std::fopen(path, "wb");
    if (!f) return false;
    std::fprintf(f, "P6\n%d %d\n255\n", w, h);
    std::fwrite(rgb.data(), 1, (size_t)w * h * 3, f);
    std::fclose(f);
    return true;
}

// RGB -> RGGB Bayer (8bit)
static void rgb_to_bayer_rggb(const uint8_t* rgb, int w, int h, std::vector<uint8_t>& bayer) {
    bayer.resize((size_t)w * h);
    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            const uint8_t r = rgb[(y*w + x)*3 + 0];
            const uint8_t g = rgb[(y*w + x)*3 + 1];
            const uint8_t b = rgb[(y*w + x)*3 + 2];
            const bool even_y = ((y & 1) == 0);
            const bool even_x = ((x & 1) == 0);
            uint8_t v;
            // RG
            // GB
            if (even_y && even_x)      v = r; // R
            else if (even_y && !even_x)v = g; // G (R行)
            else if (!even_y && even_x)v = g; // G (B行)
            else                       v = b; // B
            bayer[(size_t)y * w + x] = v;
        }
    }
}

// 顶层
extern "C" void isp_top(
    hls::stream<in_axi_t>  &s_bayer,
    hls::stream<out_axi_t> &s_rgb,
    float gain_r, float gain_g, float gain_b, float exposure_gain);

int main() {
    // 白平衡/曝光：
    const float gain_r = 1.7f, gain_g = 1.0f, gain_b = 1.5f, exposure_gain = 1.0f;

    int frames_done = 0;

    // 逐帧循环：按模板拼路径，直到遇到不存在的帧为止
    for (int fidx = 1; ; ++fidx) {
        char in_path[512];  std::snprintf(in_path,  sizeof(in_path),  kInputTpl,  fidx);
        char out_path[512]; std::snprintf(out_path, sizeof(out_path), kOutputTpl, fidx);

        // 读入一帧 RGB
        int tw = 0, th = 0, tc = 0;
        unsigned char* img = stbi_load(in_path, &tw, &th, &tc, 3);
        if (!img) {
            if (fidx == 1) {
                std::cerr << "Error: cannot load first frame: " << in_path << "\n";
                return -1;
            } else {
                std::cout << "No more frames. Stop at index " << (fidx-1) << ".\n";
                break;
            }
        }
        if (tw != ISP_IN_W || th != ISP_IN_H) {
            std::cerr << "Error: frame size mismatch at " << in_path
                      << " expect " << ISP_IN_W << "x" << ISP_IN_H
                      << " but got " << tw << "x" << th << "\n";
            stbi_image_free(img);
            return -2;
        }
        std::vector<uint8_t> rgb_src;
        rgb_src.assign(img, img + (size_t)tw * th * 3);
        stbi_image_free(img);

        // RGB -> Bayer
        std::vector<uint8_t> bayer;
        rgb_to_bayer_rggb(rgb_src.data(), ISP_IN_W, ISP_IN_H, bayer);

        // AXI 输入/输出流（与照片版一致）
        hls::stream<in_axi_t>  s_in;
        hls::stream<out_axi_t> s_out;

        // 写入 Bayer 到 AXI Stream：仅 data/keep/strb/last，保持 <…,0,0,0> 结构匹配
        for (int y = 0; y < ISP_IN_H; ++y) {
            for (int x = 0; x < ISP_IN_W; ++x) {
                const int idx = y * ISP_IN_W + x;
                in_axi_t v;
                v.data = (ap_uint<ISP_IN_PTR_WIDTH>)((uint32_t)bayer[idx] & 0xFFu);
                v.keep = -1;
                v.strb = -1;
                v.last = (y == ISP_IN_H - 1 && x == ISP_IN_W - 1) ? 1 : 0; // 仅帧末 TLAST=1
                s_in.write(v);
            }
        }

        // 调顶层
        isp_top(s_in, s_out, gain_r, gain_g, gain_b, exposure_gain);

        // 读回一帧 RGB888，并按照片版写 PPM
        std::vector<uint8_t> out_rgb((size_t)ISP_OUT_W * ISP_OUT_H * 3);
        for (int i = 0; i < ISP_OUT_W * ISP_OUT_H; ++i) {
            out_axi_t v = s_out.read();
            const uint32_t raw = (uint32_t)v.data.range(
                (ISP_OUT_PTR_WIDTH > 32 ? 31 : (ISP_OUT_PTR_WIDTH - 1)), 0);
            const uint8_t b = (uint8_t)(raw & 0xFFu);
            const uint8_t g = (uint8_t)((raw >> 8) & 0xFFu);
            const uint8_t r = (uint8_t)((raw >> 16) & 0xFFu);
            out_rgb[(size_t)i*3 + 0] = r;
            out_rgb[(size_t)i*3 + 1] = g;
            out_rgb[(size_t)i*3 + 2] = b;
        }

        if (write_ppm(out_path, out_rgb, ISP_OUT_W, ISP_OUT_H)) {
            std::cout << "Saved " << out_path << " (" << ISP_OUT_W << "x" << ISP_OUT_H
                      << ") frame=" << fidx << "\n";
            ++frames_done;
        } else {
            std::cerr << "Failed to save " << out_path << "\n";
            return -3;
        }
    }

    std::cout << "Total frames processed: " << frames_done << "\n";
    return 0;
}
