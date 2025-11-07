vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_7
vlib riviera/zynq_ultra_ps_e_vip_v1_0_7
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_21
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_20
vlib riviera/axi_crossbar_v2_1_22
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_14
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/lib_bmg_v1_0_13
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_23
vlib riviera/axi_vdma_v6_3_9
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_register_slice_v1_1_21
vlib riviera/axis_subset_converter_v1_1_21
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/mipi_csi2_rx_ctrl_v1_0_8
vlib riviera/high_speed_selectio_wiz_v3_6_0
vlib riviera/mipi_dphy_v4_2_0
vlib riviera/axis_dwidth_converter_v1_1_20
vlib riviera/vfb_v1_0_15
vlib riviera/v_demosaic_v1_0_7
vlib riviera/v_gamma_lut_v1_0_7
vlib riviera/xlconcat_v2_1_3
vlib riviera/axi_protocol_converter_v2_1_21
vlib riviera/axi_clock_converter_v2_1_20
vlib riviera/axi_dwidth_converter_v2_1_21

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 riviera/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 riviera/zynq_ultra_ps_e_vip_v1_0_7
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 riviera/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 riviera/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 riviera/axi_crossbar_v2_1_22
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_14 riviera/lib_fifo_v1_0_14
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 riviera/lib_bmg_v1_0_13
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_23 riviera/axi_datamover_v5_1_23
vmap axi_vdma_v6_3_9 riviera/axi_vdma_v6_3_9
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_21 riviera/axis_register_slice_v1_1_21
vmap axis_subset_converter_v1_1_21 riviera/axis_subset_converter_v1_1_21
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap mipi_csi2_rx_ctrl_v1_0_8 riviera/mipi_csi2_rx_ctrl_v1_0_8
vmap high_speed_selectio_wiz_v3_6_0 riviera/high_speed_selectio_wiz_v3_6_0
vmap mipi_dphy_v4_2_0 riviera/mipi_dphy_v4_2_0
vmap axis_dwidth_converter_v1_1_20 riviera/axis_dwidth_converter_v1_1_20
vmap vfb_v1_0_15 riviera/vfb_v1_0_15
vmap v_demosaic_v1_0_7 riviera/v_demosaic_v1_0_7
vmap v_gamma_lut_v1_0_7 riviera/v_gamma_lut_v1_0_7
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3
vmap axi_protocol_converter_v2_1_21 riviera/axi_protocol_converter_v2_1_21
vmap axi_clock_converter_v2_1_20 riviera/axi_clock_converter_v2_1_20
vmap axi_dwidth_converter_v2_1_21 riviera/axi_dwidth_converter_v2_1_21

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7  -sv2k12 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_23 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_9  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_9 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_vdma_1_0/sim/design_1_axi_vdma_1_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_21  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7da1/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdata_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tuser_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tstrb_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tkeep_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tid_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdest_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tlast_design_1_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_21  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/128c/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/top_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/sim/design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tdata_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tuser_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tstrb_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tkeep_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tid_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tdest_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/tlast_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/hdl/top_design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/sim/design_1_axis_subset_converter_1_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_0/sim/bd_d10d_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/sim/bd_d10d_r_sync_0.vhd" \

vlog -work mipi_csi2_rx_ctrl_v1_0_8  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl/mipi_csi2_rx_ctrl_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_2/sim/bd_d10d_rx_0.v" \

vlog -work high_speed_selectio_wiz_v3_6_0  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/bc56/hdl/high_speed_selectio_wiz_v3_6_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/ip_0/hdl/bd_d10d_phy_0_hssio_rx_mipi_iobuf_rx.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/ip_0/bd_d10d_phy_0_hssio_rx_hssio_wiz_top.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/ip_0/bd_d10d_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/ip_0/sim/bd_d10d_phy_0_hssio_rx.v" \

vlog -work mipi_dphy_v4_2_0  -sv2k12 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/3f2e/hdl/mipi_dphy_v4_2_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/bd_d10d_phy_0/support/bd_d10d_phy_0_support.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/bd_d10d_phy_0/support/bd_d10d_phy_0_clock_module.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/bd_d10d_phy_0_c1.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/bd_d10d_phy_0_core.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_3/bd_d10d_phy_0.v" \

vlog -work axis_dwidth_converter_v1_1_20  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/5aec/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/ip_0/sim/bd_d10d_vfb_0_0_axis_converter.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_d10d_vfb_0_0/src/verilog/bd_d10d_vfb_0_0_fifo.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_d10d_vfb_0_0/src/verilog/bd_d10d_vfb_0_0_fifo_sb.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_d10d_vfb_0_0/src/verilog/bd_d10d_vfb_0_0_axis_dconverter.v" \

vlog -work vfb_v1_0_15  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/381a/hdl/vfb_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_d10d_vfb_0_0_core.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_d10d_vfb_0_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/bd_0/sim/bd_d10d.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/sim/design_1_mipi_csi2_rx_subsyst_0_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_0/sim/bd_115c_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_1/sim/bd_115c_r_sync_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_2/sim/bd_115c_rx_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/ip_0/hdl/bd_115c_phy_0_hssio_rx_mipi_iobuf_rx.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/ip_0/bd_115c_phy_0_hssio_rx_hssio_wiz_top.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/ip_0/bd_115c_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/ip_0/sim/bd_115c_phy_0_hssio_rx.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/bd_115c_phy_0/support/bd_115c_phy_0_support.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/bd_115c_phy_0/support/bd_115c_phy_0_clock_module.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/bd_115c_phy_0_c1.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/bd_115c_phy_0_core.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_3/bd_115c_phy_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_4/ip_0/sim/bd_115c_vfb_0_0_axis_converter.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_4/bd_115c_vfb_0_0/src/verilog/bd_115c_vfb_0_0_fifo.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_4/bd_115c_vfb_0_0/src/verilog/bd_115c_vfb_0_0_fifo_sb.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_4/bd_115c_vfb_0_0/src/verilog/bd_115c_vfb_0_0_axis_dconverter.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_4/bd_115c_vfb_0_0_core.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_4/bd_115c_vfb_0_0.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/sim/bd_115c.v" \
"../../../bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/sim/design_1_mipi_csi2_rx_subsyst_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_150M_0/sim/design_1_proc_sys_reset_150M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_AXIvideo2MultiBayer2.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_Debayer.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG_DIV1_TABLE.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG_DIV2_TABLE.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG_linebuf_bkb.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerRandBatG.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerRatBorBatR.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerRatBorBatRkbM.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w10_d2_A.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w10_d2_A_x.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w16_d2_A.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w16_d2_A_x.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_MultiPixStream2AXIvi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_reg_unsigned_short_s.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_start_for_DebayerpcA.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_start_for_MultiPircU.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_start_for_ZipperRqcK.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_CTRL_s_axi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mac_muibs.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_mug8j.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_muhbi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_mujbC.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mux_32mb6.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mux_53fYi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_ZipperRemoval.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/regslice_core.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic.v" \

vlog -work v_demosaic_v1_0_7  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/v_demosaic_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/sim/design_1_v_demosaic_0_0.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_AXIvideo2MultiBayer2.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_Debayer.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerG.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerG_DIV1_TABLE.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerG_DIV2_TABLE.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerG_linebuf_bkb.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerRandBatG.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerRatBorBatR.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_DebayerRatBorBatRkbM.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_fifo_w10_d2_A.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_fifo_w10_d2_A_x.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_fifo_w16_d2_A.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_fifo_w16_d2_A_x.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_MultiPixStream2AXIvi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_reg_unsigned_short_s.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_start_for_DebayerpcA.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_start_for_MultiPircU.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_start_for_ZipperRqcK.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_CTRL_s_axi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_mac_muibs.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_mul_mug8j.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_mul_muhbi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_mul_mujbC.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_mux_32mb6.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic_mux_53fYi.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_ZipperRemoval.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/hdl/verilog/design_1_v_demosaic_1_0_v_demosaic.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_1_0/sim/design_1_v_demosaic_1_0.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStr.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_fifo_w10_d2_A.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_Gamma.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_Gamma_lut_0_0_V.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_MultiPixStream2AXIvi.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_reg_unsigned_short_s.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_start_for_MultiPibkb.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_v_gamma_lut_CTRL_s_axi.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/verilog/design_1_v_gamma_lut_0_0_v_gamma_lut.v" \

vlog -work v_gamma_lut_v1_0_7  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ip/design_1_v_gamma_lut_0_0/hdl/v_gamma_lut_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_0_0/sim/design_1_v_gamma_lut_0_0.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_AXIvideo2MultiPixStr.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_fifo_w10_d2_A.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_Gamma.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_Gamma_lut_0_0_V.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_MultiPixStream2AXIvi.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_reg_unsigned_short_s.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_start_for_MultiPibkb.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_v_gamma_lut_CTRL_s_axi.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/hdl/verilog/design_1_v_gamma_lut_1_0_v_gamma_lut.v" \
"../../../bd/design_1/ip/design_1_v_gamma_lut_1_0/sim/design_1_v_gamma_lut_1_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_20  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_21  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/e257/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/7af1/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../mipi_dp.srcs/sources_1/bd/design_1/ipshared/b9bd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

