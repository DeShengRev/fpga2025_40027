

#include "common/xf_types.hpp"
#include "share.h"

template <int _PTYPE, int _ROWS, int _COLS, int _XFCVDEPTH_IN,
          int _XFCVDEPTH_OUT>
void _copy_mat(xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src,
               xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_OUT> &_dst) {
  for (int i = 0; i < _ROWS * _COLS; ++i) {
#pragma HLS PIPELINE II = 1
    XF_TNAME(_PTYPE, 1) val = _src.read(i);
    _dst.write(i, val);
  }
}

template <int _PTYPE, int _ROWS, int _COLS, int _XFCVDEPTH_IN,
          int _XFCVDEPTH_OUT>
void _copy_mat_2(xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src0,
                 xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src1,
                 xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_OUT> &_dst0,
                 xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_OUT> &_dst1) {
#pragma HLS DATAFLOW
  _copy_mat(_src0, _dst0);
  _copy_mat(_src1, _dst1);
}

template <int _PTYPE, int _ROWS, int _COLS, int _XFCVDEPTH>
void _fill_val(XF_TNAME(_PTYPE, 1) val,
               xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH> &_dst) {
  for (int i = 0; i < _ROWS * _COLS; ++i) {
#pragma HLS PIPELINE II = 1
    _dst.write(i, val);
  }
}

template <int _PTYPE, int _ROWS, int _COLS, int _XFCVDEPTH>
void _consume_mat(xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH> &_src) {
  for (int i = 0; i < _ROWS * _COLS; ++i) {
#pragma HLS PIPELINE II = 1
    _src.read(i);
  }
}

#ifndef __SYNTHESIS__

#include <cassert>

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