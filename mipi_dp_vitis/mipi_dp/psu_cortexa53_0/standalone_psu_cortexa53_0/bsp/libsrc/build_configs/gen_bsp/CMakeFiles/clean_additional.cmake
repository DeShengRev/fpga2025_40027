# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\sleep.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xiltimer.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xtimer_config.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
