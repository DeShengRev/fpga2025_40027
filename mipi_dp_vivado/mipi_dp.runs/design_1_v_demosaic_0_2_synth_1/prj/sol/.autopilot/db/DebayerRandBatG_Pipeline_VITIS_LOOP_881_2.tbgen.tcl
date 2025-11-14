set moduleName DebayerRandBatG_Pipeline_VITIS_LOOP_881_2
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
set C_modelName {DebayerRandBatG_Pipeline_VITIS_LOOP_881_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_0_0_01174_217341764_lcssa1800_i int 10 regular  }
	{ p_0_0_01175_217321762_lcssa1798_i int 10 regular  }
	{ p_0_0_01176_217301760_lcssa1796_i int 10 regular  }
	{ p_0_2_0_0_011511757_lcssa1794_i int 10 regular  }
	{ p_0_1_0_0_011501755_lcssa1792_i int 10 regular  }
	{ p_0_0_0_0_011491753_lcssa1790_i int 10 regular  }
	{ p_0_0_0116117401752_lcssa1788_i int 10 regular  }
	{ p_0_0_0116217381750_lcssa1786_i int 10 regular  }
	{ p_0_0_0116317361748_lcssa1784_i int 10 regular  }
	{ p_0_2_0_0_011571664_lcssa1706_i int 10 regular  }
	{ p_0_1_0_0_011561661_lcssa1704_i int 10 regular  }
	{ p_0_0_0_0_011551658_lcssa1702_i int 10 regular  }
	{ loopWidth int 11 regular  }
	{ empty int 1 regular  }
	{ xor_i int 15 regular  }
	{ width_val8_load int 11 regular  }
	{ imgRB int 30 regular {fifo 0 volatile }  }
	{ imgRgb int 30 regular {fifo 1 volatile }  }
	{ y int 11 regular  }
	{ height_val4_load int 11 regular  }
	{ p_0_0_01174_217341763_i_out int 10 regular {pointer 1}  }
	{ p_0_0_01175_217321761_i_out int 10 regular {pointer 1}  }
	{ p_0_0_01176_217301759_i_out int 10 regular {pointer 1}  }
	{ right_2_out int 10 regular {pointer 1}  }
	{ right_1_out int 10 regular {pointer 1}  }
	{ right_out int 10 regular {pointer 1}  }
	{ p_0_0_0116117401751_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0116217381749_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0116317361747_i_out int 10 regular {pointer 1}  }
	{ p_0_2_0_0_011571666_i_out int 10 regular {pointer 1}  }
	{ p_0_1_0_0_011561663_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_011551660_i_out int 10 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_0_0_01174_217341764_lcssa1800_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01175_217321762_lcssa1798_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01176_217301760_lcssa1796_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_011511757_lcssa1794_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_011501755_lcssa1792_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_011491753_lcssa1790_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0116117401752_lcssa1788_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0116217381750_lcssa1786_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0116317361748_lcssa1784_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_011571664_lcssa1706_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_011561661_lcssa1704_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_011551658_lcssa1702_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "xor_i", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "width_val8_load", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgRB", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "height_val4_load", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01174_217341763_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_01175_217321761_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_01176_217301759_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "right_2_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "right_1_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "right_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0116117401751_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0116217381749_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0116317361747_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_2_0_0_011571666_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_1_0_0_011561663_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_011551660_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgRB_dout sc_in sc_lv 30 signal 16 } 
	{ imgRB_empty_n sc_in sc_logic 1 signal 16 } 
	{ imgRB_read sc_out sc_logic 1 signal 16 } 
	{ imgRB_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ imgRB_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ imgRgb_din sc_out sc_lv 30 signal 17 } 
	{ imgRgb_full_n sc_in sc_logic 1 signal 17 } 
	{ imgRgb_write sc_out sc_logic 1 signal 17 } 
	{ imgRgb_num_data_valid sc_in sc_lv 32 signal 17 } 
	{ imgRgb_fifo_cap sc_in sc_lv 32 signal 17 } 
	{ p_0_0_01174_217341764_lcssa1800_i sc_in sc_lv 10 signal 0 } 
	{ p_0_0_01175_217321762_lcssa1798_i sc_in sc_lv 10 signal 1 } 
	{ p_0_0_01176_217301760_lcssa1796_i sc_in sc_lv 10 signal 2 } 
	{ p_0_2_0_0_011511757_lcssa1794_i sc_in sc_lv 10 signal 3 } 
	{ p_0_1_0_0_011501755_lcssa1792_i sc_in sc_lv 10 signal 4 } 
	{ p_0_0_0_0_011491753_lcssa1790_i sc_in sc_lv 10 signal 5 } 
	{ p_0_0_0116117401752_lcssa1788_i sc_in sc_lv 10 signal 6 } 
	{ p_0_0_0116217381750_lcssa1786_i sc_in sc_lv 10 signal 7 } 
	{ p_0_0_0116317361748_lcssa1784_i sc_in sc_lv 10 signal 8 } 
	{ p_0_2_0_0_011571664_lcssa1706_i sc_in sc_lv 10 signal 9 } 
	{ p_0_1_0_0_011561661_lcssa1704_i sc_in sc_lv 10 signal 10 } 
	{ p_0_0_0_0_011551658_lcssa1702_i sc_in sc_lv 10 signal 11 } 
	{ loopWidth sc_in sc_lv 11 signal 12 } 
	{ empty sc_in sc_lv 1 signal 13 } 
	{ xor_i sc_in sc_lv 15 signal 14 } 
	{ width_val8_load sc_in sc_lv 11 signal 15 } 
	{ y sc_in sc_lv 11 signal 18 } 
	{ height_val4_load sc_in sc_lv 11 signal 19 } 
	{ p_0_0_01174_217341763_i_out sc_out sc_lv 10 signal 20 } 
	{ p_0_0_01174_217341763_i_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_0_0_01175_217321761_i_out sc_out sc_lv 10 signal 21 } 
	{ p_0_0_01175_217321761_i_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_0_0_01176_217301759_i_out sc_out sc_lv 10 signal 22 } 
	{ p_0_0_01176_217301759_i_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ right_2_out sc_out sc_lv 10 signal 23 } 
	{ right_2_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ right_1_out sc_out sc_lv 10 signal 24 } 
	{ right_1_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ right_out sc_out sc_lv 10 signal 25 } 
	{ right_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_0_0_0116117401751_i_out sc_out sc_lv 10 signal 26 } 
	{ p_0_0_0116117401751_i_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_0_0_0116217381749_i_out sc_out sc_lv 10 signal 27 } 
	{ p_0_0_0116217381749_i_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ p_0_0_0116317361747_i_out sc_out sc_lv 10 signal 28 } 
	{ p_0_0_0116317361747_i_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_0_2_0_0_011571666_i_out sc_out sc_lv 10 signal 29 } 
	{ p_0_2_0_0_011571666_i_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_0_1_0_0_011561663_i_out sc_out sc_lv 10 signal 30 } 
	{ p_0_1_0_0_011561663_i_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_0_0_0_0_011551660_i_out sc_out sc_lv 10 signal 31 } 
	{ p_0_0_0_0_011551660_i_out_ap_vld sc_out sc_logic 1 outvld 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgRB_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRB", "role": "dout" }} , 
 	{ "name": "imgRB_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRB", "role": "empty_n" }} , 
 	{ "name": "imgRB_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRB", "role": "read" }} , 
 	{ "name": "imgRB_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRB", "role": "num_data_valid" }} , 
 	{ "name": "imgRB_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRB", "role": "fifo_cap" }} , 
 	{ "name": "imgRgb_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRgb", "role": "din" }} , 
 	{ "name": "imgRgb_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "full_n" }} , 
 	{ "name": "imgRgb_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "write" }} , 
 	{ "name": "imgRgb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgRgb", "role": "num_data_valid" }} , 
 	{ "name": "imgRgb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgRgb", "role": "fifo_cap" }} , 
 	{ "name": "p_0_0_01174_217341764_lcssa1800_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_01174_217341764_lcssa1800_i", "role": "default" }} , 
 	{ "name": "p_0_0_01175_217321762_lcssa1798_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_01175_217321762_lcssa1798_i", "role": "default" }} , 
 	{ "name": "p_0_0_01176_217301760_lcssa1796_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_01176_217301760_lcssa1796_i", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_011511757_lcssa1794_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_011511757_lcssa1794_i", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_011501755_lcssa1792_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_011501755_lcssa1792_i", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_011491753_lcssa1790_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_011491753_lcssa1790_i", "role": "default" }} , 
 	{ "name": "p_0_0_0116117401752_lcssa1788_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0116117401752_lcssa1788_i", "role": "default" }} , 
 	{ "name": "p_0_0_0116217381750_lcssa1786_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0116217381750_lcssa1786_i", "role": "default" }} , 
 	{ "name": "p_0_0_0116317361748_lcssa1784_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0116317361748_lcssa1784_i", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_011571664_lcssa1706_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_011571664_lcssa1706_i", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_011561661_lcssa1704_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_011561661_lcssa1704_i", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_011551658_lcssa1702_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_011551658_lcssa1702_i", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "xor_i", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "xor_i", "role": "default" }} , 
 	{ "name": "width_val8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_val8_load", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "height_val4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_val4_load", "role": "default" }} , 
 	{ "name": "p_0_0_01174_217341763_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_01174_217341763_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_01174_217341763_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_01174_217341763_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_01175_217321761_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_01175_217321761_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_01175_217321761_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_01175_217321761_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_01176_217301759_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_01176_217301759_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_01176_217301759_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_01176_217301759_i_out", "role": "ap_vld" }} , 
 	{ "name": "right_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "right_2_out", "role": "default" }} , 
 	{ "name": "right_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "right_2_out", "role": "ap_vld" }} , 
 	{ "name": "right_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "right_1_out", "role": "default" }} , 
 	{ "name": "right_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "right_1_out", "role": "ap_vld" }} , 
 	{ "name": "right_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "right_out", "role": "default" }} , 
 	{ "name": "right_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "right_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0116117401751_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0116117401751_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0116117401751_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0116117401751_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0116217381749_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0116217381749_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0116217381749_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0116217381749_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0116317361747_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0116317361747_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0116317361747_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0116317361747_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_2_0_0_011571666_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_011571666_i_out", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_011571666_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_011571666_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_1_0_0_011561663_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_011561663_i_out", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_011561663_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_011561663_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_011551660_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_011551660_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_011551660_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_011551660_i_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "DebayerRandBatG_Pipeline_VITIS_LOOP_881_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "1925",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_0_01174_217341764_lcssa1800_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01175_217321762_lcssa1798_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01176_217301760_lcssa1796_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_011511757_lcssa1794_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_011501755_lcssa1792_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_011491753_lcssa1790_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0116117401752_lcssa1788_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0116217381750_lcssa1786_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0116317361748_lcssa1784_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_011571664_lcssa1706_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_011561661_lcssa1704_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_011551658_lcssa1702_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_val8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgRB_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgRgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_val4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01174_217341763_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_01175_217321761_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_01176_217301759_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "right_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "right_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "right_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0116117401751_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0116217381749_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0116317361747_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_011571666_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_011561663_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_011551660_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_881_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuffer_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DebayerRandBatG_Pipeline_VITIS_LOOP_881_2 {
		p_0_0_01174_217341764_lcssa1800_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_01175_217321762_lcssa1798_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_01176_217301760_lcssa1796_i {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_011511757_lcssa1794_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_011501755_lcssa1792_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_011491753_lcssa1790_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0116117401752_lcssa1788_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0116217381750_lcssa1786_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0116317361748_lcssa1784_i {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_011571664_lcssa1706_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_011561661_lcssa1704_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_011551658_lcssa1702_i {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		xor_i {Type I LastRead 0 FirstWrite -1}
		width_val8_load {Type I LastRead 0 FirstWrite -1}
		imgRB {Type I LastRead 1 FirstWrite -1}
		imgRgb {Type O LastRead -1 FirstWrite 3}
		y {Type I LastRead 0 FirstWrite -1}
		height_val4_load {Type I LastRead 0 FirstWrite -1}
		p_0_0_01174_217341763_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_01175_217321761_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_01176_217301759_i_out {Type O LastRead -1 FirstWrite 2}
		right_2_out {Type O LastRead -1 FirstWrite 2}
		right_1_out {Type O LastRead -1 FirstWrite 2}
		right_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0116117401751_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0116217381749_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0116317361747_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_2_0_0_011571666_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_1_0_0_011561663_i_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0_0_011551660_i_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "1925"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "1925"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_0_01174_217341764_lcssa1800_i { ap_none {  { p_0_0_01174_217341764_lcssa1800_i in_data 0 10 } } }
	p_0_0_01175_217321762_lcssa1798_i { ap_none {  { p_0_0_01175_217321762_lcssa1798_i in_data 0 10 } } }
	p_0_0_01176_217301760_lcssa1796_i { ap_none {  { p_0_0_01176_217301760_lcssa1796_i in_data 0 10 } } }
	p_0_2_0_0_011511757_lcssa1794_i { ap_none {  { p_0_2_0_0_011511757_lcssa1794_i in_data 0 10 } } }
	p_0_1_0_0_011501755_lcssa1792_i { ap_none {  { p_0_1_0_0_011501755_lcssa1792_i in_data 0 10 } } }
	p_0_0_0_0_011491753_lcssa1790_i { ap_none {  { p_0_0_0_0_011491753_lcssa1790_i in_data 0 10 } } }
	p_0_0_0116117401752_lcssa1788_i { ap_none {  { p_0_0_0116117401752_lcssa1788_i in_data 0 10 } } }
	p_0_0_0116217381750_lcssa1786_i { ap_none {  { p_0_0_0116217381750_lcssa1786_i in_data 0 10 } } }
	p_0_0_0116317361748_lcssa1784_i { ap_none {  { p_0_0_0116317361748_lcssa1784_i in_data 0 10 } } }
	p_0_2_0_0_011571664_lcssa1706_i { ap_none {  { p_0_2_0_0_011571664_lcssa1706_i in_data 0 10 } } }
	p_0_1_0_0_011561661_lcssa1704_i { ap_none {  { p_0_1_0_0_011561661_lcssa1704_i in_data 0 10 } } }
	p_0_0_0_0_011551658_lcssa1702_i { ap_none {  { p_0_0_0_0_011551658_lcssa1702_i in_data 0 10 } } }
	loopWidth { ap_none {  { loopWidth in_data 0 11 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	xor_i { ap_none {  { xor_i in_data 0 15 } } }
	width_val8_load { ap_none {  { width_val8_load in_data 0 11 } } }
	imgRB { ap_fifo {  { imgRB_dout fifo_data_in 0 30 }  { imgRB_empty_n fifo_status 0 1 }  { imgRB_read fifo_port_we 1 1 }  { imgRB_num_data_valid fifo_status_num_data_valid 0 3 }  { imgRB_fifo_cap fifo_update 0 3 } } }
	imgRgb { ap_fifo {  { imgRgb_din fifo_data_in 1 30 }  { imgRgb_full_n fifo_status 0 1 }  { imgRgb_write fifo_port_we 1 1 }  { imgRgb_num_data_valid fifo_status_num_data_valid 0 32 }  { imgRgb_fifo_cap fifo_update 0 32 } } }
	y { ap_none {  { y in_data 0 11 } } }
	height_val4_load { ap_none {  { height_val4_load in_data 0 11 } } }
	p_0_0_01174_217341763_i_out { ap_vld {  { p_0_0_01174_217341763_i_out out_data 1 10 }  { p_0_0_01174_217341763_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_01175_217321761_i_out { ap_vld {  { p_0_0_01175_217321761_i_out out_data 1 10 }  { p_0_0_01175_217321761_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_01176_217301759_i_out { ap_vld {  { p_0_0_01176_217301759_i_out out_data 1 10 }  { p_0_0_01176_217301759_i_out_ap_vld out_vld 1 1 } } }
	right_2_out { ap_vld {  { right_2_out out_data 1 10 }  { right_2_out_ap_vld out_vld 1 1 } } }
	right_1_out { ap_vld {  { right_1_out out_data 1 10 }  { right_1_out_ap_vld out_vld 1 1 } } }
	right_out { ap_vld {  { right_out out_data 1 10 }  { right_out_ap_vld out_vld 1 1 } } }
	p_0_0_0116117401751_i_out { ap_vld {  { p_0_0_0116117401751_i_out out_data 1 10 }  { p_0_0_0116117401751_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0116217381749_i_out { ap_vld {  { p_0_0_0116217381749_i_out out_data 1 10 }  { p_0_0_0116217381749_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0116317361747_i_out { ap_vld {  { p_0_0_0116317361747_i_out out_data 1 10 }  { p_0_0_0116317361747_i_out_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_011571666_i_out { ap_vld {  { p_0_2_0_0_011571666_i_out out_data 1 10 }  { p_0_2_0_0_011571666_i_out_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_011561663_i_out { ap_vld {  { p_0_1_0_0_011561663_i_out out_data 1 10 }  { p_0_1_0_0_011561663_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_011551660_i_out { ap_vld {  { p_0_0_0_0_011551660_i_out out_data 1 10 }  { p_0_0_0_0_011551660_i_out_ap_vld out_vld 1 1 } } }
}
