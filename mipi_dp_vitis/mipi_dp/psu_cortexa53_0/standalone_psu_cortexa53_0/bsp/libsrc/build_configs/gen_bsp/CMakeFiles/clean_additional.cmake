# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\diskio.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\ff.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\ffconf.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\sleep.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xilffs.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xilffs_config.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xiltimer.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xtimer_config.h"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxilffs.a"
  "E:\\Dev\\QianSal\\mipi_dp_vitis\\mipi_dp\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
