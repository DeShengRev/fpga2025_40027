

#include "share.h"
#include <cassert>

// template <typename T>
// void broadcast_stream_2(hls::stream<T> strm_in, hls::stream<T> strm_out0,
//                         hls::stream<T> strm_out1) {

//   while (true) {
// #pragma HLS PIPELINE II = 1
//     SrcStrmBus pix = strm_in.read();

//     strm_out0.write(pix);
//     strm_out1.write(pix);

//     if (pix.last) {
//       break;
//     }
//   }
// }

template <int _PTYPE, int _ROWS, int _COLS, int _NPC, int _XFCVDEPTH>
void copy_xf_mat(xf::cv::Mat<_PTYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH> &_src,
                 xf::cv::Mat<_PTYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH> &_dst0,
                 xf::cv::Mat<_PTYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH> &_dst1) {

  int idx = 0;
  constexpr int TOTAL_ITER_N = _ROWS * _COLS / _NPC;

  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS LOOP_TRIPCOUNT min = TOTAL_ITER_N max = TOTAL_ITER_N
#pragma HLS PIPELINE II = 1

    XF_TNAME(_PTYPE, _NPC) val = _src.read(idx);
    _dst0.write(idx, val);
    _dst1.write(idx, val);
    ++idx;
  }
}

template <int _SCALE_Y, int _SCALE_X, int _ROWS, int _COLS, int _NPC,
          int _XFCVDEPTH>
void zoom_out_int_scale(
    xf::cv::Mat<SRC_TYPE, _ROWS * _SCALE_Y, _COLS * _SCALE_X, _NPC, _XFCVDEPTH> &_src,
    xf::cv::Mat<SRC_TYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH> &_dst)
    {
        
        assert(_SCALE_X * _SCALE_Y < 64);

        for (int y=0; y < _ROWS; ++y)
        {
            for (int x=0; x < _COLS; ++x)
            {
                int src_x = _SCALE_X * x;
                int src_y = _SCALE_X * y;
                u16t sum_val0 = 0;
                u16t sum_val1 = 0;
                u16t sum_val2 = 0;

                for (int dy = 0; dy < _SCALE_X; ++dy)
                {
                    for (int dx = 0; dx < _SCALE_Y; ++dy)
                    {
                    }
                }
            }
        }

    }



#ifndef __SYNTHESIS__

static const std::string test_dir = "E:/Dev/QianSal/xfcv_dev_hls/test/";
inline char *get_path(const char *name) {
  u32t len = test_dir.length() + strlen(name);
  char *p_path = new char[len];
  std::string path = std::string(test_dir).append(name);
  strcpy(p_path, path.c_str());
  return p_path;
}

template <int _PTYPE, int _ROWS, int _COLS, int _NPC, int _XFCVDEPTH>
void xf_imwrite(char *str,
                xf::cv::Mat<_PTYPE, _ROWS, _COLS, _NPC, _XFCVDEPTH> &output) {
  int list_ptype[] = {CV_8UC1,  0,        CV_16UC1, CV_16SC1, 0, 0, 0,
                      CV_32FC1, CV_32SC1, CV_8UC2,  CV_8UC4,  0, 0, CV_16UC3,
                      CV_16SC3, CV_16UC4, CV_8UC3,  0,        0, 0, 0,
                      0,        0,        CV_32FC3, 0};
  int _PTYPE_CV = list_ptype[_PTYPE];

  cv::Mat input(output.rows, output.cols, _PTYPE_CV);
  input.data = output.copyFrom();
  // printf("%d, %d, %d \n", _PTYPE, _PTYPE_CV, input.channels());
  cv::imwrite(str, input);
}

template <int _PTYPE, int _ROWS, int _COLS, int _NPC>
xf::cv::Mat<_PTYPE, _ROWS, _COLS, _NPC> xf_imread(char *img, int type) {
  cv::Mat img_load = cv::imread(img, type);

  xf::cv::Mat<_PTYPE, _ROWS, _COLS, _NPC> input(img_load.rows, img_load.cols);

  if (img_load.data == NULL) {
    fprintf(stderr, "\nError : Couldn't open the image at %s\n ", img);
    exit(-1);
  }

  input.copyTo(img_load.data);

  return input;
}

template <int PTYPE, int ROWS, int COLS, int NPC, int XFCVDEPTH>
void xf_imshow(std::string name,
               xf::cv::Mat<PTYPE, ROWS, COLS, NPC, XFCVDEPTH> &img,
               float scale = 2) {
  cv::Mat img_cv(ROWS, COLS, PTYPE), img_res;
  img_cv.data = img.copyFrom();
  int res_h = (int)(ROWS / scale);
  int res_w = (int)(COLS / scale);
  cv::resize(img_cv, img_res, cv::Size(res_w, res_h));
  cv::imshow(name, img_res);
}

#endif