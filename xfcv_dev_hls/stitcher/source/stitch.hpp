
#pragma once

#include "share.h"
#include "calc_seam.hpp"
#include "proj_align.hpp"


void stitcher_remap(SrcStrm &s_axis_in0, SrcStrm &s_axis_in1,
                    MapStrm &s_axis_mapxy, SrcStrm &m_axis_align);

