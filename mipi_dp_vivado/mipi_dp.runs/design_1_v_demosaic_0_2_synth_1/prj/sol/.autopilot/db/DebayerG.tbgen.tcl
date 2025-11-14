set moduleName DebayerG
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {DebayerG}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ imgBayer int 10 regular {fifo 0 volatile }  }
	{ imgG int 30 regular {fifo 1 volatile }  }
	{ height_val int 16 regular {ap_stable 0} }
	{ width_val int 16 regular {ap_stable 0} }
	{ bayerPhase_val int 16 regular {fifo 0}  }
	{ height_val4_c3 int 11 regular {fifo 1}  }
	{ width_val8_c4 int 11 regular {fifo 1}  }
	{ bayerPhase_val11_c5 int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imgBayer", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "imgG", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bayerPhase_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "height_val4_c3", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_val8_c4", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bayerPhase_val11_c5", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ imgBayer_dout sc_in sc_lv 10 signal 0 } 
	{ imgBayer_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgBayer_read sc_out sc_logic 1 signal 0 } 
	{ imgBayer_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ imgBayer_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ imgG_din sc_out sc_lv 30 signal 1 } 
	{ imgG_full_n sc_in sc_logic 1 signal 1 } 
	{ imgG_write sc_out sc_logic 1 signal 1 } 
	{ imgG_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ imgG_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ height_val sc_in sc_lv 16 signal 2 } 
	{ width_val sc_in sc_lv 16 signal 3 } 
	{ bayerPhase_val_dout sc_in sc_lv 16 signal 4 } 
	{ bayerPhase_val_empty_n sc_in sc_logic 1 signal 4 } 
	{ bayerPhase_val_read sc_out sc_logic 1 signal 4 } 
	{ bayerPhase_val_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ bayerPhase_val_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ height_val4_c3_din sc_out sc_lv 11 signal 5 } 
	{ height_val4_c3_full_n sc_in sc_logic 1 signal 5 } 
	{ height_val4_c3_write sc_out sc_logic 1 signal 5 } 
	{ height_val4_c3_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ height_val4_c3_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ width_val8_c4_din sc_out sc_lv 11 signal 6 } 
	{ width_val8_c4_full_n sc_in sc_logic 1 signal 6 } 
	{ width_val8_c4_write sc_out sc_logic 1 signal 6 } 
	{ width_val8_c4_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ width_val8_c4_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ bayerPhase_val11_c5_din sc_out sc_lv 16 signal 7 } 
	{ bayerPhase_val11_c5_full_n sc_in sc_logic 1 signal 7 } 
	{ bayerPhase_val11_c5_write sc_out sc_logic 1 signal 7 } 
	{ bayerPhase_val11_c5_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ bayerPhase_val11_c5_fifo_cap sc_in sc_lv 3 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
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
 	{ "name": "height_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height_val", "role": "default" }} , 
 	{ "name": "width_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val", "role": "default" }} , 
 	{ "name": "bayerPhase_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bayerPhase_val", "role": "dout" }} , 
 	{ "name": "bayerPhase_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val", "role": "empty_n" }} , 
 	{ "name": "bayerPhase_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val", "role": "read" }} , 
 	{ "name": "bayerPhase_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val", "role": "num_data_valid" }} , 
 	{ "name": "bayerPhase_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val", "role": "fifo_cap" }} , 
 	{ "name": "height_val4_c3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_val4_c3", "role": "din" }} , 
 	{ "name": "height_val4_c3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4_c3", "role": "full_n" }} , 
 	{ "name": "height_val4_c3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4_c3", "role": "write" }} , 
 	{ "name": "height_val4_c3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4_c3", "role": "num_data_valid" }} , 
 	{ "name": "height_val4_c3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4_c3", "role": "fifo_cap" }} , 
 	{ "name": "width_val8_c4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_val8_c4", "role": "din" }} , 
 	{ "name": "width_val8_c4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val8_c4", "role": "full_n" }} , 
 	{ "name": "width_val8_c4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val8_c4", "role": "write" }} , 
 	{ "name": "width_val8_c4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val8_c4", "role": "num_data_valid" }} , 
 	{ "name": "width_val8_c4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val8_c4", "role": "fifo_cap" }} , 
 	{ "name": "bayerPhase_val11_c5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bayerPhase_val11_c5", "role": "din" }} , 
 	{ "name": "bayerPhase_val11_c5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11_c5", "role": "full_n" }} , 
 	{ "name": "bayerPhase_val11_c5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11_c5", "role": "write" }} , 
 	{ "name": "bayerPhase_val11_c5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11_c5", "role": "num_data_valid" }} , 
 	{ "name": "bayerPhase_val11_c5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11_c5", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "DebayerG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "4296212499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgBayer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "imgBayer", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "imgG", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bayerPhase_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_val4_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8_c4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_c4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11_c5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_c5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "DIV1_TABLE", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "DIV2_TABLE", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.DIV1_TABLE_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.DIV2_TABLE_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_3_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_2_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_1_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_9ns_18_1_1_U56", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_8ns_18_1_1_U57", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_8ns_18_1_1_U58", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_9ns_18_1_1_U59", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_14s_10ns_24_1_1_U60", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_14s_10ns_24_1_1_U61", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mac_muladd_14s_10ns_24s_25_4_1_U62", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mac_muladd_14s_10ns_24s_25_4_1_U63", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	DebayerG {
		imgBayer {Type I LastRead 1 FirstWrite -1}
		imgG {Type O LastRead -1 FirstWrite 13}
		height_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		bayerPhase_val {Type I LastRead 0 FirstWrite -1}
		height_val4_c3 {Type O LastRead -1 FirstWrite 0}
		width_val8_c4 {Type O LastRead -1 FirstWrite 0}
		bayerPhase_val11_c5 {Type O LastRead -1 FirstWrite 0}
		DIV1_TABLE {Type I LastRead -1 FirstWrite -1}
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "39", "Max" : "4296212499"}
	, {"Name" : "Interval", "Min" : "39", "Max" : "4296212499"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgBayer { ap_fifo {  { imgBayer_dout fifo_data_in 0 10 }  { imgBayer_empty_n fifo_status 0 1 }  { imgBayer_read fifo_port_we 1 1 }  { imgBayer_num_data_valid fifo_status_num_data_valid 0 3 }  { imgBayer_fifo_cap fifo_update 0 3 } } }
	imgG { ap_fifo {  { imgG_din fifo_data_in 1 30 }  { imgG_full_n fifo_status 0 1 }  { imgG_write fifo_port_we 1 1 }  { imgG_num_data_valid fifo_status_num_data_valid 0 32 }  { imgG_fifo_cap fifo_update 0 32 } } }
	height_val { ap_stable {  { height_val in_data 0 16 } } }
	width_val { ap_stable {  { width_val in_data 0 16 } } }
	bayerPhase_val { ap_fifo {  { bayerPhase_val_dout fifo_data_in 0 16 }  { bayerPhase_val_empty_n fifo_status 0 1 }  { bayerPhase_val_read fifo_port_we 1 1 }  { bayerPhase_val_num_data_valid fifo_status_num_data_valid 0 3 }  { bayerPhase_val_fifo_cap fifo_update 0 3 } } }
	height_val4_c3 { ap_fifo {  { height_val4_c3_din fifo_data_in 1 11 }  { height_val4_c3_full_n fifo_status 0 1 }  { height_val4_c3_write fifo_port_we 1 1 }  { height_val4_c3_num_data_valid fifo_status_num_data_valid 0 3 }  { height_val4_c3_fifo_cap fifo_update 0 3 } } }
	width_val8_c4 { ap_fifo {  { width_val8_c4_din fifo_data_in 1 11 }  { width_val8_c4_full_n fifo_status 0 1 }  { width_val8_c4_write fifo_port_we 1 1 }  { width_val8_c4_num_data_valid fifo_status_num_data_valid 0 3 }  { width_val8_c4_fifo_cap fifo_update 0 3 } } }
	bayerPhase_val11_c5 { ap_fifo {  { bayerPhase_val11_c5_din fifo_data_in 1 16 }  { bayerPhase_val11_c5_full_n fifo_status 0 1 }  { bayerPhase_val11_c5_write fifo_port_we 1 1 }  { bayerPhase_val11_c5_num_data_valid fifo_status_num_data_valid 0 3 }  { bayerPhase_val11_c5_fifo_cap fifo_update 0 3 } } }
}
