set moduleName DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 20
set C_modelName {DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_0_2_0_0_09101503_lcssa1540_i int 10 regular  }
	{ p_0_1_0_0_09091501_lcssa1538_i int 10 regular  }
	{ p_0_0_0_0_09081499_lcssa1536_i int 10 regular  }
	{ p_0_0_0939_114861498_lcssa1534_i int 10 regular  }
	{ p_0_0_0940_114841496_lcssa1532_i int 10 regular  }
	{ p_0_0_0941_114821494_lcssa1530_i int 10 regular  }
	{ p_0_2_0_0_09161491_lcssa1528_i int 10 regular  }
	{ p_0_1_0_0_09151489_lcssa1526_i int 10 regular  }
	{ p_0_0_0_0_09141487_lcssa1524_i int 10 regular  }
	{ p_0_0_0939_21426_lcssa1458_i int 10 regular  }
	{ p_0_0_0940_21423_lcssa1456_i int 10 regular  }
	{ p_0_0_0941_21420_lcssa1454_i int 10 regular  }
	{ p_0_0_09391396_lcssa1446_i int 10 regular  }
	{ p_0_0_09401393_lcssa1444_i int 10 regular  }
	{ p_0_0_09411390_lcssa1442_i int 10 regular  }
	{ loopWidth int 11 regular  }
	{ empty_58 int 1 regular  }
	{ xor_i int 15 regular  }
	{ width_val8_load int 11 regular  }
	{ imgG int 30 regular {fifo 0 volatile }  }
	{ imgRB int 30 regular {fifo 1 volatile }  }
	{ and310_cast_i int 1 regular  }
	{ trunc_ln int 15 regular  }
	{ empty int 1 regular  }
	{ y int 11 regular  }
	{ height_val4_load int 11 regular  }
	{ p_0_2_0_0_09101504_i_out int 10 regular {pointer 1}  }
	{ p_0_1_0_0_09091502_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_09081500_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0939_114861497_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0940_114841495_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0941_114821493_i_out int 10 regular {pointer 1}  }
	{ p_0_2_0_0_09161492_i_out int 10 regular {pointer 1}  }
	{ p_0_1_0_0_09151490_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_09141488_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0939_21425_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0940_21422_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0941_21419_i_out int 10 regular {pointer 1}  }
	{ p_0_0_09391395_i_out int 10 regular {pointer 1}  }
	{ p_0_0_09401392_i_out int 10 regular {pointer 1}  }
	{ p_0_0_09411389_i_out int 10 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_0_2_0_0_09101503_lcssa1540_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_09091501_lcssa1538_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_09081499_lcssa1536_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0939_114861498_lcssa1534_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0940_114841496_lcssa1532_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0941_114821494_lcssa1530_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_09161491_lcssa1528_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_09151489_lcssa1526_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_09141487_lcssa1524_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0939_21426_lcssa1458_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0940_21423_lcssa1456_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0941_21420_lcssa1454_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_09391396_lcssa1446_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_09401393_lcssa1444_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_09411390_lcssa1442_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "empty_58", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "xor_i", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "width_val8_load", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgG", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgRB", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "and310_cast_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "height_val4_load", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_09101504_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_1_0_0_09091502_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_09081500_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0939_114861497_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0940_114841495_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0941_114821493_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_2_0_0_09161492_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_1_0_0_09151490_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_09141488_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0939_21425_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0940_21422_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0941_21419_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_09391395_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_09401392_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_09411389_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgG_dout sc_in sc_lv 30 signal 19 } 
	{ imgG_empty_n sc_in sc_logic 1 signal 19 } 
	{ imgG_read sc_out sc_logic 1 signal 19 } 
	{ imgG_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ imgG_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ imgRB_din sc_out sc_lv 30 signal 20 } 
	{ imgRB_full_n sc_in sc_logic 1 signal 20 } 
	{ imgRB_write sc_out sc_logic 1 signal 20 } 
	{ imgRB_num_data_valid sc_in sc_lv 32 signal 20 } 
	{ imgRB_fifo_cap sc_in sc_lv 32 signal 20 } 
	{ p_0_2_0_0_09101503_lcssa1540_i sc_in sc_lv 10 signal 0 } 
	{ p_0_1_0_0_09091501_lcssa1538_i sc_in sc_lv 10 signal 1 } 
	{ p_0_0_0_0_09081499_lcssa1536_i sc_in sc_lv 10 signal 2 } 
	{ p_0_0_0939_114861498_lcssa1534_i sc_in sc_lv 10 signal 3 } 
	{ p_0_0_0940_114841496_lcssa1532_i sc_in sc_lv 10 signal 4 } 
	{ p_0_0_0941_114821494_lcssa1530_i sc_in sc_lv 10 signal 5 } 
	{ p_0_2_0_0_09161491_lcssa1528_i sc_in sc_lv 10 signal 6 } 
	{ p_0_1_0_0_09151489_lcssa1526_i sc_in sc_lv 10 signal 7 } 
	{ p_0_0_0_0_09141487_lcssa1524_i sc_in sc_lv 10 signal 8 } 
	{ p_0_0_0939_21426_lcssa1458_i sc_in sc_lv 10 signal 9 } 
	{ p_0_0_0940_21423_lcssa1456_i sc_in sc_lv 10 signal 10 } 
	{ p_0_0_0941_21420_lcssa1454_i sc_in sc_lv 10 signal 11 } 
	{ p_0_0_09391396_lcssa1446_i sc_in sc_lv 10 signal 12 } 
	{ p_0_0_09401393_lcssa1444_i sc_in sc_lv 10 signal 13 } 
	{ p_0_0_09411390_lcssa1442_i sc_in sc_lv 10 signal 14 } 
	{ loopWidth sc_in sc_lv 11 signal 15 } 
	{ empty_58 sc_in sc_lv 1 signal 16 } 
	{ xor_i sc_in sc_lv 15 signal 17 } 
	{ width_val8_load sc_in sc_lv 11 signal 18 } 
	{ and310_cast_i sc_in sc_lv 1 signal 21 } 
	{ trunc_ln sc_in sc_lv 15 signal 22 } 
	{ empty sc_in sc_lv 1 signal 23 } 
	{ y sc_in sc_lv 11 signal 24 } 
	{ height_val4_load sc_in sc_lv 11 signal 25 } 
	{ p_0_2_0_0_09101504_i_out sc_out sc_lv 10 signal 26 } 
	{ p_0_2_0_0_09101504_i_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_0_1_0_0_09091502_i_out sc_out sc_lv 10 signal 27 } 
	{ p_0_1_0_0_09091502_i_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ p_0_0_0_0_09081500_i_out sc_out sc_lv 10 signal 28 } 
	{ p_0_0_0_0_09081500_i_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_0_0_0939_114861497_i_out sc_out sc_lv 10 signal 29 } 
	{ p_0_0_0939_114861497_i_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_0_0_0940_114841495_i_out sc_out sc_lv 10 signal 30 } 
	{ p_0_0_0940_114841495_i_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_0_0_0941_114821493_i_out sc_out sc_lv 10 signal 31 } 
	{ p_0_0_0941_114821493_i_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_0_2_0_0_09161492_i_out sc_out sc_lv 10 signal 32 } 
	{ p_0_2_0_0_09161492_i_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ p_0_1_0_0_09151490_i_out sc_out sc_lv 10 signal 33 } 
	{ p_0_1_0_0_09151490_i_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_0_0_0_0_09141488_i_out sc_out sc_lv 10 signal 34 } 
	{ p_0_0_0_0_09141488_i_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_0_0_0939_21425_i_out sc_out sc_lv 10 signal 35 } 
	{ p_0_0_0939_21425_i_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_0_0_0940_21422_i_out sc_out sc_lv 10 signal 36 } 
	{ p_0_0_0940_21422_i_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_0_0_0941_21419_i_out sc_out sc_lv 10 signal 37 } 
	{ p_0_0_0941_21419_i_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_0_0_09391395_i_out sc_out sc_lv 10 signal 38 } 
	{ p_0_0_09391395_i_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_0_0_09401392_i_out sc_out sc_lv 10 signal 39 } 
	{ p_0_0_09401392_i_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_0_0_09411389_i_out sc_out sc_lv 10 signal 40 } 
	{ p_0_0_09411389_i_out_ap_vld sc_out sc_logic 1 outvld 40 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgG_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgG", "role": "dout" }} , 
 	{ "name": "imgG_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgG", "role": "empty_n" }} , 
 	{ "name": "imgG_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgG", "role": "read" }} , 
 	{ "name": "imgG_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgG", "role": "num_data_valid" }} , 
 	{ "name": "imgG_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgG", "role": "fifo_cap" }} , 
 	{ "name": "imgRB_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRB", "role": "din" }} , 
 	{ "name": "imgRB_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRB", "role": "full_n" }} , 
 	{ "name": "imgRB_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRB", "role": "write" }} , 
 	{ "name": "imgRB_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgRB", "role": "num_data_valid" }} , 
 	{ "name": "imgRB_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgRB", "role": "fifo_cap" }} , 
 	{ "name": "p_0_2_0_0_09101503_lcssa1540_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09101503_lcssa1540_i", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09091501_lcssa1538_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09091501_lcssa1538_i", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09081499_lcssa1536_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09081499_lcssa1536_i", "role": "default" }} , 
 	{ "name": "p_0_0_0939_114861498_lcssa1534_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0939_114861498_lcssa1534_i", "role": "default" }} , 
 	{ "name": "p_0_0_0940_114841496_lcssa1532_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0940_114841496_lcssa1532_i", "role": "default" }} , 
 	{ "name": "p_0_0_0941_114821494_lcssa1530_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0941_114821494_lcssa1530_i", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09161491_lcssa1528_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09161491_lcssa1528_i", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09151489_lcssa1526_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09151489_lcssa1526_i", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09141487_lcssa1524_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09141487_lcssa1524_i", "role": "default" }} , 
 	{ "name": "p_0_0_0939_21426_lcssa1458_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0939_21426_lcssa1458_i", "role": "default" }} , 
 	{ "name": "p_0_0_0940_21423_lcssa1456_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0940_21423_lcssa1456_i", "role": "default" }} , 
 	{ "name": "p_0_0_0941_21420_lcssa1454_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0941_21420_lcssa1454_i", "role": "default" }} , 
 	{ "name": "p_0_0_09391396_lcssa1446_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09391396_lcssa1446_i", "role": "default" }} , 
 	{ "name": "p_0_0_09401393_lcssa1444_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09401393_lcssa1444_i", "role": "default" }} , 
 	{ "name": "p_0_0_09411390_lcssa1442_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09411390_lcssa1442_i", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "empty_58", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_58", "role": "default" }} , 
 	{ "name": "xor_i", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "xor_i", "role": "default" }} , 
 	{ "name": "width_val8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_val8_load", "role": "default" }} , 
 	{ "name": "and310_cast_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and310_cast_i", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "height_val4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_val4_load", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09101504_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09101504_i_out", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09101504_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_09101504_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_1_0_0_09091502_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09091502_i_out", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09091502_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_09091502_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_09081500_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09081500_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09081500_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_09081500_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0939_114861497_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0939_114861497_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0939_114861497_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0939_114861497_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0940_114841495_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0940_114841495_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0940_114841495_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0940_114841495_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0941_114821493_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0941_114821493_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0941_114821493_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0941_114821493_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_2_0_0_09161492_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09161492_i_out", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09161492_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_09161492_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_1_0_0_09151490_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09151490_i_out", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09151490_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_09151490_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_09141488_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09141488_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09141488_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_09141488_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0939_21425_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0939_21425_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0939_21425_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0939_21425_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0940_21422_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0940_21422_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0940_21422_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0940_21422_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0941_21419_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0941_21419_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0941_21419_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0941_21419_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_09391395_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09391395_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_09391395_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09391395_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_09401392_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09401392_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_09401392_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09401392_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_09411389_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09411389_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_09411389_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09411389_i_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_2_0_0_09101503_lcssa1540_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_09091501_lcssa1538_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_09081499_lcssa1536_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0939_114861498_lcssa1534_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0940_114841496_lcssa1532_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0941_114821494_lcssa1530_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_09161491_lcssa1528_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_09151489_lcssa1526_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_09141487_lcssa1524_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0939_21426_lcssa1458_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0940_21423_lcssa1456_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0941_21420_lcssa1454_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_09391396_lcssa1446_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_09401393_lcssa1444_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_09411390_lcssa1442_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_val8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgG_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgRB_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "and310_cast_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_val4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_09101504_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_09091502_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_09081500_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0939_114861497_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0940_114841495_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0941_114821493_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_09161492_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_09151490_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_09141488_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0939_21425_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0940_21422_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0941_21419_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_09391395_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_09401392_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_09411389_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_633_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuffer_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2 {
		p_0_2_0_0_09101503_lcssa1540_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_09091501_lcssa1538_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_09081499_lcssa1536_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0939_114861498_lcssa1534_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0940_114841496_lcssa1532_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0941_114821494_lcssa1530_i {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_09161491_lcssa1528_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_09151489_lcssa1526_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_09141487_lcssa1524_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0939_21426_lcssa1458_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0940_21423_lcssa1456_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0941_21420_lcssa1454_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_09391396_lcssa1446_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_09401393_lcssa1444_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_09411390_lcssa1442_i {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		xor_i {Type I LastRead 0 FirstWrite -1}
		width_val8_load {Type I LastRead 0 FirstWrite -1}
		imgG {Type I LastRead 1 FirstWrite -1}
		imgRB {Type O LastRead -1 FirstWrite 5}
		and310_cast_i {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		height_val4_load {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_09101504_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_1_0_0_09091502_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0_0_09081500_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0939_114861497_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0940_114841495_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0941_114821493_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_2_0_0_09161492_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_1_0_0_09151490_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0_0_09141488_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0939_21425_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0940_21422_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0941_21419_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_09391395_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_09401392_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_09411389_i_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "1927"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "1927"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_2_0_0_09101503_lcssa1540_i { ap_none {  { p_0_2_0_0_09101503_lcssa1540_i in_data 0 10 } } }
	p_0_1_0_0_09091501_lcssa1538_i { ap_none {  { p_0_1_0_0_09091501_lcssa1538_i in_data 0 10 } } }
	p_0_0_0_0_09081499_lcssa1536_i { ap_none {  { p_0_0_0_0_09081499_lcssa1536_i in_data 0 10 } } }
	p_0_0_0939_114861498_lcssa1534_i { ap_none {  { p_0_0_0939_114861498_lcssa1534_i in_data 0 10 } } }
	p_0_0_0940_114841496_lcssa1532_i { ap_none {  { p_0_0_0940_114841496_lcssa1532_i in_data 0 10 } } }
	p_0_0_0941_114821494_lcssa1530_i { ap_none {  { p_0_0_0941_114821494_lcssa1530_i in_data 0 10 } } }
	p_0_2_0_0_09161491_lcssa1528_i { ap_none {  { p_0_2_0_0_09161491_lcssa1528_i in_data 0 10 } } }
	p_0_1_0_0_09151489_lcssa1526_i { ap_none {  { p_0_1_0_0_09151489_lcssa1526_i in_data 0 10 } } }
	p_0_0_0_0_09141487_lcssa1524_i { ap_none {  { p_0_0_0_0_09141487_lcssa1524_i in_data 0 10 } } }
	p_0_0_0939_21426_lcssa1458_i { ap_none {  { p_0_0_0939_21426_lcssa1458_i in_data 0 10 } } }
	p_0_0_0940_21423_lcssa1456_i { ap_none {  { p_0_0_0940_21423_lcssa1456_i in_data 0 10 } } }
	p_0_0_0941_21420_lcssa1454_i { ap_none {  { p_0_0_0941_21420_lcssa1454_i in_data 0 10 } } }
	p_0_0_09391396_lcssa1446_i { ap_none {  { p_0_0_09391396_lcssa1446_i in_data 0 10 } } }
	p_0_0_09401393_lcssa1444_i { ap_none {  { p_0_0_09401393_lcssa1444_i in_data 0 10 } } }
	p_0_0_09411390_lcssa1442_i { ap_none {  { p_0_0_09411390_lcssa1442_i in_data 0 10 } } }
	loopWidth { ap_none {  { loopWidth in_data 0 11 } } }
	empty_58 { ap_none {  { empty_58 in_data 0 1 } } }
	xor_i { ap_none {  { xor_i in_data 0 15 } } }
	width_val8_load { ap_none {  { width_val8_load in_data 0 11 } } }
	imgG { ap_fifo {  { imgG_dout fifo_data_in 0 30 }  { imgG_empty_n fifo_status 0 1 }  { imgG_read fifo_port_we 1 1 }  { imgG_num_data_valid fifo_status_num_data_valid 0 3 }  { imgG_fifo_cap fifo_update 0 3 } } }
	imgRB { ap_fifo {  { imgRB_din fifo_data_in 1 30 }  { imgRB_full_n fifo_status 0 1 }  { imgRB_write fifo_port_we 1 1 }  { imgRB_num_data_valid fifo_status_num_data_valid 0 32 }  { imgRB_fifo_cap fifo_update 0 32 } } }
	and310_cast_i { ap_none {  { and310_cast_i in_data 0 1 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 15 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	y { ap_none {  { y in_data 0 11 } } }
	height_val4_load { ap_none {  { height_val4_load in_data 0 11 } } }
	p_0_2_0_0_09101504_i_out { ap_vld {  { p_0_2_0_0_09101504_i_out out_data 1 10 }  { p_0_2_0_0_09101504_i_out_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_09091502_i_out { ap_vld {  { p_0_1_0_0_09091502_i_out out_data 1 10 }  { p_0_1_0_0_09091502_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_09081500_i_out { ap_vld {  { p_0_0_0_0_09081500_i_out out_data 1 10 }  { p_0_0_0_0_09081500_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0939_114861497_i_out { ap_vld {  { p_0_0_0939_114861497_i_out out_data 1 10 }  { p_0_0_0939_114861497_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0940_114841495_i_out { ap_vld {  { p_0_0_0940_114841495_i_out out_data 1 10 }  { p_0_0_0940_114841495_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0941_114821493_i_out { ap_vld {  { p_0_0_0941_114821493_i_out out_data 1 10 }  { p_0_0_0941_114821493_i_out_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_09161492_i_out { ap_vld {  { p_0_2_0_0_09161492_i_out out_data 1 10 }  { p_0_2_0_0_09161492_i_out_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_09151490_i_out { ap_vld {  { p_0_1_0_0_09151490_i_out out_data 1 10 }  { p_0_1_0_0_09151490_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_09141488_i_out { ap_vld {  { p_0_0_0_0_09141488_i_out out_data 1 10 }  { p_0_0_0_0_09141488_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0939_21425_i_out { ap_vld {  { p_0_0_0939_21425_i_out out_data 1 10 }  { p_0_0_0939_21425_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0940_21422_i_out { ap_vld {  { p_0_0_0940_21422_i_out out_data 1 10 }  { p_0_0_0940_21422_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0941_21419_i_out { ap_vld {  { p_0_0_0941_21419_i_out out_data 1 10 }  { p_0_0_0941_21419_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_09391395_i_out { ap_vld {  { p_0_0_09391395_i_out out_data 1 10 }  { p_0_0_09391395_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_09401392_i_out { ap_vld {  { p_0_0_09401392_i_out out_data 1 10 }  { p_0_0_09401392_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_09411389_i_out { ap_vld {  { p_0_0_09411389_i_out out_data 1 10 }  { p_0_0_09411389_i_out_ap_vld out_vld 1 1 } } }
}
