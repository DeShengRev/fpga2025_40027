set moduleName DebayerG_Pipeline_VITIS_LOOP_318_4
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
set C_modelName {DebayerG_Pipeline_VITIS_LOOP_318_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_lcssa51575167 int 10 regular  }
	{ p_lcssa51565165 int 10 regular  }
	{ p_lcssa51555163 int 10 regular  }
	{ p_lcssa51545161 int 10 regular  }
	{ p_lcssa51535159 int 10 regular  }
	{ p_lcssa49945036 int 10 regular  }
	{ p_lcssa49935034 int 10 regular  }
	{ p_lcssa49915032 int 10 regular  }
	{ p_lcssa49905030 int 10 regular  }
	{ p_lcssa49895028 int 10 regular  }
	{ p_lcssa49875026 int 10 regular  }
	{ p_lcssa49865024 int 10 regular  }
	{ p_lcssa49855022 int 10 regular  }
	{ p_lcssa49835020 int 10 regular  }
	{ p_lcssa49825018 int 10 regular  }
	{ p_lcssa49815016 int 10 regular  }
	{ p_lcssa49795014 int 10 regular  }
	{ p_lcssa49785012 int 10 regular  }
	{ p_lcssa49775010 int 10 regular  }
	{ p_lcssa49755008 int 10 regular  }
	{ loopWidth int 17 regular {ap_stable 0} }
	{ imgG int 30 regular {fifo 1 volatile }  }
	{ empty int 1 regular  }
	{ xor_r int 15 regular  }
	{ out_y int 17 regular  }
	{ zext_ln275 int 16 regular {ap_stable 0} }
	{ imgBayer int 10 regular {fifo 0 volatile }  }
	{ y int 17 regular  }
	{ zext_ln274 int 16 regular {ap_stable 0} }
	{ and226_cast int 1 regular  }
	{ trunc_ln int 15 regular  }
	{ p_out int 10 regular {pointer 1}  }
	{ p_out1 int 10 regular {pointer 1}  }
	{ p_out2 int 10 regular {pointer 1}  }
	{ p_out3 int 10 regular {pointer 1}  }
	{ p_out4 int 10 regular {pointer 1}  }
	{ p_out5 int 10 regular {pointer 1}  }
	{ p_out6 int 10 regular {pointer 1}  }
	{ p_out7 int 10 regular {pointer 1}  }
	{ p_out8 int 10 regular {pointer 1}  }
	{ p_out9 int 10 regular {pointer 1}  }
	{ p_out10 int 10 regular {pointer 1}  }
	{ p_out11 int 10 regular {pointer 1}  }
	{ p_out12 int 10 regular {pointer 1}  }
	{ p_out13 int 10 regular {pointer 1}  }
	{ p_out14 int 10 regular {pointer 1}  }
	{ p_out15 int 10 regular {pointer 1}  }
	{ p_out16 int 10 regular {pointer 1}  }
	{ p_out17 int 10 regular {pointer 1}  }
	{ p_out18 int 10 regular {pointer 1}  }
	{ p_out19 int 10 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_lcssa51575167", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa51565165", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa51555163", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa51545161", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa51535159", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49945036", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49935034", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49915032", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49905030", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49895028", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49875026", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49865024", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49855022", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49835020", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49825018", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49815016", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49795014", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49785012", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49775010", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_lcssa49755008", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "imgG", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "xor_r", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "out_y", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln275", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "imgBayer", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln274", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "and226_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out9", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out10", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out12", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out13", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out14", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out15", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out16", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out17", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out18", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out19", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgBayer_dout sc_in sc_lv 10 signal 26 } 
	{ imgBayer_empty_n sc_in sc_logic 1 signal 26 } 
	{ imgBayer_read sc_out sc_logic 1 signal 26 } 
	{ imgBayer_num_data_valid sc_in sc_lv 3 signal 26 } 
	{ imgBayer_fifo_cap sc_in sc_lv 3 signal 26 } 
	{ imgG_din sc_out sc_lv 30 signal 21 } 
	{ imgG_full_n sc_in sc_logic 1 signal 21 } 
	{ imgG_write sc_out sc_logic 1 signal 21 } 
	{ imgG_num_data_valid sc_in sc_lv 32 signal 21 } 
	{ imgG_fifo_cap sc_in sc_lv 32 signal 21 } 
	{ p_lcssa51575167 sc_in sc_lv 10 signal 0 } 
	{ p_lcssa51565165 sc_in sc_lv 10 signal 1 } 
	{ p_lcssa51555163 sc_in sc_lv 10 signal 2 } 
	{ p_lcssa51545161 sc_in sc_lv 10 signal 3 } 
	{ p_lcssa51535159 sc_in sc_lv 10 signal 4 } 
	{ p_lcssa49945036 sc_in sc_lv 10 signal 5 } 
	{ p_lcssa49935034 sc_in sc_lv 10 signal 6 } 
	{ p_lcssa49915032 sc_in sc_lv 10 signal 7 } 
	{ p_lcssa49905030 sc_in sc_lv 10 signal 8 } 
	{ p_lcssa49895028 sc_in sc_lv 10 signal 9 } 
	{ p_lcssa49875026 sc_in sc_lv 10 signal 10 } 
	{ p_lcssa49865024 sc_in sc_lv 10 signal 11 } 
	{ p_lcssa49855022 sc_in sc_lv 10 signal 12 } 
	{ p_lcssa49835020 sc_in sc_lv 10 signal 13 } 
	{ p_lcssa49825018 sc_in sc_lv 10 signal 14 } 
	{ p_lcssa49815016 sc_in sc_lv 10 signal 15 } 
	{ p_lcssa49795014 sc_in sc_lv 10 signal 16 } 
	{ p_lcssa49785012 sc_in sc_lv 10 signal 17 } 
	{ p_lcssa49775010 sc_in sc_lv 10 signal 18 } 
	{ p_lcssa49755008 sc_in sc_lv 10 signal 19 } 
	{ loopWidth sc_in sc_lv 17 signal 20 } 
	{ empty sc_in sc_lv 1 signal 22 } 
	{ xor_r sc_in sc_lv 15 signal 23 } 
	{ out_y sc_in sc_lv 17 signal 24 } 
	{ zext_ln275 sc_in sc_lv 16 signal 25 } 
	{ y sc_in sc_lv 17 signal 27 } 
	{ zext_ln274 sc_in sc_lv 16 signal 28 } 
	{ and226_cast sc_in sc_lv 1 signal 29 } 
	{ trunc_ln sc_in sc_lv 15 signal 30 } 
	{ p_out sc_out sc_lv 10 signal 31 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_out1 sc_out sc_lv 10 signal 32 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ p_out2 sc_out sc_lv 10 signal 33 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_out3 sc_out sc_lv 10 signal 34 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_out4 sc_out sc_lv 10 signal 35 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_out5 sc_out sc_lv 10 signal 36 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_out6 sc_out sc_lv 10 signal 37 } 
	{ p_out6_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_out7 sc_out sc_lv 10 signal 38 } 
	{ p_out7_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_out8 sc_out sc_lv 10 signal 39 } 
	{ p_out8_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_out9 sc_out sc_lv 10 signal 40 } 
	{ p_out9_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ p_out10 sc_out sc_lv 10 signal 41 } 
	{ p_out10_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ p_out11 sc_out sc_lv 10 signal 42 } 
	{ p_out11_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ p_out12 sc_out sc_lv 10 signal 43 } 
	{ p_out12_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ p_out13 sc_out sc_lv 10 signal 44 } 
	{ p_out13_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ p_out14 sc_out sc_lv 10 signal 45 } 
	{ p_out14_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ p_out15 sc_out sc_lv 10 signal 46 } 
	{ p_out15_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ p_out16 sc_out sc_lv 10 signal 47 } 
	{ p_out16_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ p_out17 sc_out sc_lv 10 signal 48 } 
	{ p_out17_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ p_out18 sc_out sc_lv 10 signal 49 } 
	{ p_out18_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ p_out19 sc_out sc_lv 10 signal 50 } 
	{ p_out19_ap_vld sc_out sc_logic 1 outvld 50 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgBayer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imgBayer", "role": "dout" }} , 
 	{ "name": "imgBayer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgBayer", "role": "empty_n" }} , 
 	{ "name": "imgBayer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgBayer", "role": "read" }} , 
 	{ "name": "imgBayer_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgBayer", "role": "num_data_valid" }} , 
 	{ "name": "imgBayer_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgBayer", "role": "fifo_cap" }} , 
 	{ "name": "imgG_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgG", "role": "din" }} , 
 	{ "name": "imgG_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgG", "role": "full_n" }} , 
 	{ "name": "imgG_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgG", "role": "write" }} , 
 	{ "name": "imgG_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgG", "role": "num_data_valid" }} , 
 	{ "name": "imgG_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgG", "role": "fifo_cap" }} , 
 	{ "name": "p_lcssa51575167", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa51575167", "role": "default" }} , 
 	{ "name": "p_lcssa51565165", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa51565165", "role": "default" }} , 
 	{ "name": "p_lcssa51555163", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa51555163", "role": "default" }} , 
 	{ "name": "p_lcssa51545161", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa51545161", "role": "default" }} , 
 	{ "name": "p_lcssa51535159", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa51535159", "role": "default" }} , 
 	{ "name": "p_lcssa49945036", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49945036", "role": "default" }} , 
 	{ "name": "p_lcssa49935034", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49935034", "role": "default" }} , 
 	{ "name": "p_lcssa49915032", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49915032", "role": "default" }} , 
 	{ "name": "p_lcssa49905030", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49905030", "role": "default" }} , 
 	{ "name": "p_lcssa49895028", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49895028", "role": "default" }} , 
 	{ "name": "p_lcssa49875026", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49875026", "role": "default" }} , 
 	{ "name": "p_lcssa49865024", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49865024", "role": "default" }} , 
 	{ "name": "p_lcssa49855022", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49855022", "role": "default" }} , 
 	{ "name": "p_lcssa49835020", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49835020", "role": "default" }} , 
 	{ "name": "p_lcssa49825018", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49825018", "role": "default" }} , 
 	{ "name": "p_lcssa49815016", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49815016", "role": "default" }} , 
 	{ "name": "p_lcssa49795014", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49795014", "role": "default" }} , 
 	{ "name": "p_lcssa49785012", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49785012", "role": "default" }} , 
 	{ "name": "p_lcssa49775010", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49775010", "role": "default" }} , 
 	{ "name": "p_lcssa49755008", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_lcssa49755008", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "xor_r", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "xor_r", "role": "default" }} , 
 	{ "name": "out_y", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "out_y", "role": "default" }} , 
 	{ "name": "zext_ln275", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln275", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "zext_ln274", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln274", "role": "default" }} , 
 	{ "name": "and226_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and226_cast", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }} , 
 	{ "name": "p_out6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out6", "role": "default" }} , 
 	{ "name": "p_out6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out6", "role": "ap_vld" }} , 
 	{ "name": "p_out7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out7", "role": "default" }} , 
 	{ "name": "p_out7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out7", "role": "ap_vld" }} , 
 	{ "name": "p_out8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out8", "role": "default" }} , 
 	{ "name": "p_out8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out8", "role": "ap_vld" }} , 
 	{ "name": "p_out9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out9", "role": "default" }} , 
 	{ "name": "p_out9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out9", "role": "ap_vld" }} , 
 	{ "name": "p_out10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out10", "role": "default" }} , 
 	{ "name": "p_out10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out10", "role": "ap_vld" }} , 
 	{ "name": "p_out11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out11", "role": "default" }} , 
 	{ "name": "p_out11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out11", "role": "ap_vld" }} , 
 	{ "name": "p_out12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out12", "role": "default" }} , 
 	{ "name": "p_out12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out12", "role": "ap_vld" }} , 
 	{ "name": "p_out13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out13", "role": "default" }} , 
 	{ "name": "p_out13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out13", "role": "ap_vld" }} , 
 	{ "name": "p_out14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out14", "role": "default" }} , 
 	{ "name": "p_out14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out14", "role": "ap_vld" }} , 
 	{ "name": "p_out15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out15", "role": "default" }} , 
 	{ "name": "p_out15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out15", "role": "ap_vld" }} , 
 	{ "name": "p_out16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out16", "role": "default" }} , 
 	{ "name": "p_out16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out16", "role": "ap_vld" }} , 
 	{ "name": "p_out17", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out17", "role": "default" }} , 
 	{ "name": "p_out17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out17", "role": "ap_vld" }} , 
 	{ "name": "p_out18", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out18", "role": "default" }} , 
 	{ "name": "p_out18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out18", "role": "ap_vld" }} , 
 	{ "name": "p_out19", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out19", "role": "default" }} , 
 	{ "name": "p_out19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out19", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "DebayerG_Pipeline_VITIS_LOOP_318_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "65551",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lcssa51575167", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51565165", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51555163", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51545161", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51535159", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49945036", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49935034", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49915032", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49905030", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49895028", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49875026", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49865024", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49855022", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49835020", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49825018", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49815016", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49795014", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49785012", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49775010", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49755008", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgG_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "imgBayer", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgBayer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "and226_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_318_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DIV1_TABLE_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DIV2_TABLE_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_yuv_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_yuv_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_yuv_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_yuv_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_18s_9ns_18_1_1_U56", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_18s_8ns_18_1_1_U57", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_18s_8ns_18_1_1_U58", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_18s_9ns_18_1_1_U59", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_14s_10ns_24_1_1_U60", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_14s_10ns_24_1_1_U61", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_10ns_24s_25_4_1_U62", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_10ns_24s_25_4_1_U63", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DebayerG_Pipeline_VITIS_LOOP_318_4 {
		p_lcssa51575167 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51565165 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51555163 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51545161 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51535159 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49945036 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49935034 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49915032 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49905030 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49895028 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49875026 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49865024 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49855022 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49835020 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49825018 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49815016 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49795014 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49785012 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49775010 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49755008 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		imgG {Type O LastRead -1 FirstWrite 13}
		empty {Type I LastRead 0 FirstWrite -1}
		xor_r {Type I LastRead 0 FirstWrite -1}
		out_y {Type I LastRead 0 FirstWrite -1}
		zext_ln275 {Type I LastRead 0 FirstWrite -1}
		imgBayer {Type I LastRead 1 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		zext_ln274 {Type I LastRead 0 FirstWrite -1}
		and226_cast {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 12}
		p_out1 {Type O LastRead -1 FirstWrite 12}
		p_out2 {Type O LastRead -1 FirstWrite 12}
		p_out3 {Type O LastRead -1 FirstWrite 12}
		p_out4 {Type O LastRead -1 FirstWrite 12}
		p_out5 {Type O LastRead -1 FirstWrite 12}
		p_out6 {Type O LastRead -1 FirstWrite 12}
		p_out7 {Type O LastRead -1 FirstWrite 12}
		p_out8 {Type O LastRead -1 FirstWrite 12}
		p_out9 {Type O LastRead -1 FirstWrite 12}
		p_out10 {Type O LastRead -1 FirstWrite 12}
		p_out11 {Type O LastRead -1 FirstWrite 12}
		p_out12 {Type O LastRead -1 FirstWrite 12}
		p_out13 {Type O LastRead -1 FirstWrite 12}
		p_out14 {Type O LastRead -1 FirstWrite 12}
		p_out15 {Type O LastRead -1 FirstWrite 12}
		p_out16 {Type O LastRead -1 FirstWrite 12}
		p_out17 {Type O LastRead -1 FirstWrite 12}
		p_out18 {Type O LastRead -1 FirstWrite 12}
		p_out19 {Type O LastRead -1 FirstWrite 12}
		DIV1_TABLE {Type I LastRead -1 FirstWrite -1}
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "65551"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "65551"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_lcssa51575167 { ap_none {  { p_lcssa51575167 in_data 0 10 } } }
	p_lcssa51565165 { ap_none {  { p_lcssa51565165 in_data 0 10 } } }
	p_lcssa51555163 { ap_none {  { p_lcssa51555163 in_data 0 10 } } }
	p_lcssa51545161 { ap_none {  { p_lcssa51545161 in_data 0 10 } } }
	p_lcssa51535159 { ap_none {  { p_lcssa51535159 in_data 0 10 } } }
	p_lcssa49945036 { ap_none {  { p_lcssa49945036 in_data 0 10 } } }
	p_lcssa49935034 { ap_none {  { p_lcssa49935034 in_data 0 10 } } }
	p_lcssa49915032 { ap_none {  { p_lcssa49915032 in_data 0 10 } } }
	p_lcssa49905030 { ap_none {  { p_lcssa49905030 in_data 0 10 } } }
	p_lcssa49895028 { ap_none {  { p_lcssa49895028 in_data 0 10 } } }
	p_lcssa49875026 { ap_none {  { p_lcssa49875026 in_data 0 10 } } }
	p_lcssa49865024 { ap_none {  { p_lcssa49865024 in_data 0 10 } } }
	p_lcssa49855022 { ap_none {  { p_lcssa49855022 in_data 0 10 } } }
	p_lcssa49835020 { ap_none {  { p_lcssa49835020 in_data 0 10 } } }
	p_lcssa49825018 { ap_none {  { p_lcssa49825018 in_data 0 10 } } }
	p_lcssa49815016 { ap_none {  { p_lcssa49815016 in_data 0 10 } } }
	p_lcssa49795014 { ap_none {  { p_lcssa49795014 in_data 0 10 } } }
	p_lcssa49785012 { ap_none {  { p_lcssa49785012 in_data 0 10 } } }
	p_lcssa49775010 { ap_none {  { p_lcssa49775010 in_data 0 10 } } }
	p_lcssa49755008 { ap_none {  { p_lcssa49755008 in_data 0 10 } } }
	loopWidth { ap_stable {  { loopWidth in_data 0 17 } } }
	imgG { ap_fifo {  { imgG_din fifo_data_in 1 30 }  { imgG_full_n fifo_status 0 1 }  { imgG_write fifo_port_we 1 1 }  { imgG_num_data_valid fifo_status_num_data_valid 0 32 }  { imgG_fifo_cap fifo_update 0 32 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	xor_r { ap_none {  { xor_r in_data 0 15 } } }
	out_y { ap_none {  { out_y in_data 0 17 } } }
	zext_ln275 { ap_stable {  { zext_ln275 in_data 0 16 } } }
	imgBayer { ap_fifo {  { imgBayer_dout fifo_data_in 0 10 }  { imgBayer_empty_n fifo_status 0 1 }  { imgBayer_read fifo_port_we 1 1 }  { imgBayer_num_data_valid fifo_status_num_data_valid 0 3 }  { imgBayer_fifo_cap fifo_update 0 3 } } }
	y { ap_none {  { y in_data 0 17 } } }
	zext_ln274 { ap_stable {  { zext_ln274 in_data 0 16 } } }
	and226_cast { ap_none {  { and226_cast in_data 0 1 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 15 } } }
	p_out { ap_vld {  { p_out out_data 1 10 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 10 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 10 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 10 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 10 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 10 }  { p_out5_ap_vld out_vld 1 1 } } }
	p_out6 { ap_vld {  { p_out6 out_data 1 10 }  { p_out6_ap_vld out_vld 1 1 } } }
	p_out7 { ap_vld {  { p_out7 out_data 1 10 }  { p_out7_ap_vld out_vld 1 1 } } }
	p_out8 { ap_vld {  { p_out8 out_data 1 10 }  { p_out8_ap_vld out_vld 1 1 } } }
	p_out9 { ap_vld {  { p_out9 out_data 1 10 }  { p_out9_ap_vld out_vld 1 1 } } }
	p_out10 { ap_vld {  { p_out10 out_data 1 10 }  { p_out10_ap_vld out_vld 1 1 } } }
	p_out11 { ap_vld {  { p_out11 out_data 1 10 }  { p_out11_ap_vld out_vld 1 1 } } }
	p_out12 { ap_vld {  { p_out12 out_data 1 10 }  { p_out12_ap_vld out_vld 1 1 } } }
	p_out13 { ap_vld {  { p_out13 out_data 1 10 }  { p_out13_ap_vld out_vld 1 1 } } }
	p_out14 { ap_vld {  { p_out14 out_data 1 10 }  { p_out14_ap_vld out_vld 1 1 } } }
	p_out15 { ap_vld {  { p_out15 out_data 1 10 }  { p_out15_ap_vld out_vld 1 1 } } }
	p_out16 { ap_vld {  { p_out16 out_data 1 10 }  { p_out16_ap_vld out_vld 1 1 } } }
	p_out17 { ap_vld {  { p_out17 out_data 1 10 }  { p_out17_ap_vld out_vld 1 1 } } }
	p_out18 { ap_vld {  { p_out18 out_data 1 10 }  { p_out18_ap_vld out_vld 1 1 } } }
	p_out19 { ap_vld {  { p_out19 out_data 1 10 }  { p_out19_ap_vld out_vld 1 1 } } }
}
