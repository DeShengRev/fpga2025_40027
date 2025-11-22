
cmake_minimum_required(VERSION 3.15)
project(bsp)
        
set(DRIVER_TARGETS axivdma;mipicsiss;dphy;csi;scugic;zdma;sysmonpsu;axipmon;coresightps_dcc;resetps;clockps;csudma;ddrcpsu;dppsu;dpdma;emacps;gpiops;iicps;ipipsu;pciepsu;qspipsu;rtcpsu;sdps;ttcps;uartps;usbpsu;v_demosaic;v_gamma_lut)
set(DRIVER_LOCATIONS C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/axivdma_v6_16;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/mipicsiss_v1_12;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/dphy_v1_6;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/csi_v1_7;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/scugic_v5_4;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/zdma_v1_19;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/sysmonpsu_v3_0;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/axipmon_v6_11;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/coresightps_dcc_v1_11;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/resetps_v1_7;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/clockps_v1_6;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/csudma_v1_16;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/ddrcpsu_v1_7;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/dppsu_v1_7;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/dpdma_v1_6;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/emacps_v3_21;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/gpiops_v3_13;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/iicps_v3_20;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/ipipsu_v2_16;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/pciepsu_v2_0;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/qspipsu_v1_20;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/rtcpsu_v1_14;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/sdps_v4_4;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/ttcps_v3_20;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/uartps_v3_15;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/usbpsu_v1_16;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/v_demosaic_v1_4;C:/Xilinx/Vitis/2024.2/data/embeddedsw/XilinxProcessorIPLib/drivers/v_gamma_lut_v1_5)

list(LENGTH DRIVER_TARGETS no_of_drivers)
set(index 0)

while(${index} LESS ${no_of_drivers})
    list(GET DRIVER_TARGETS ${index} drv)
    list(GET DRIVER_LOCATIONS ${index} drv_dir)
    set(exp_dir "${drv_dir}/examples")
    add_custom_target(
        ${drv}_example ALL
        COMMAND lopper -f -O E:/Dev/QianSal/mipi_dp_vitis/mipi_dp/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/${drv} E:/Dev/QianSal/mipi_dp_vitis/mipi_dp/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/hw_artifacts/psu_cortexa53_0_baremetal.dts -- bmcmake_metadata_xlnx psu_cortexa53_0 ${exp_dir} drvcmake_metadata
        BYPRODUCTS x${drv}_exlist.yaml)
    MATH(EXPR index "${index}+1")
endwhile()
