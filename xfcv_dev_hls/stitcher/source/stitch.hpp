
#pragma once

#include "calc_seam.hpp"
#include "proj_align.hpp"
#include "share.h"

void isp_stitcher(u16a sel, u64a *m_axi_in0, u64a *m_axi_in1,
                  u128a *m_axi_mapxy, u32a *m_axi_out);
