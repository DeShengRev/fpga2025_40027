set moduleName Debayer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
set C_modelName {Debayer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ imgBayer int 10 regular {fifo 0 volatile }  }
	{ imgRgb int 30 regular {fifo 1 volatile }  }
	{ height_val4 int 16 regular {ap_stable 0} }
	{ width_val8 int 16 regular {ap_stable 0} }
	{ bayerPhase_val11 int 16 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imgBayer", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width_val8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bayerPhase_val11", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ imgBayer_dout sc_in sc_lv 10 signal 0 } 
	{ imgBayer_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgBayer_read sc_out sc_logic 1 signal 0 } 
	{ imgRgb_din sc_out sc_lv 30 signal 1 } 
	{ imgRgb_full_n sc_in sc_logic 1 signal 1 } 
	{ imgRgb_write sc_out sc_logic 1 signal 1 } 
	{ height_val4 sc_in sc_lv 16 signal 2 } 
	{ width_val8 sc_in sc_lv 16 signal 3 } 
	{ bayerPhase_val11_dout sc_in sc_lv 16 signal 4 } 
	{ bayerPhase_val11_empty_n sc_in sc_logic 1 signal 4 } 
	{ bayerPhase_val11_read sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ height_val4_ap_vld sc_in sc_logic 1 invld 2 } 
	{ width_val8_ap_vld sc_in sc_logic 1 invld 3 } 
	{ imgRgb_dout sc_in sc_lv 30 signal -1 } 
	{ imgRgb_empty_n sc_in sc_logic 1 signal -1 } 
	{ imgRgb_read sc_out sc_logic 1 signal -1 } 
	{ imgRgb_num_data_valid sc_in sc_lv 32 signal -1 } 
	{ imgRgb_fifo_cap sc_in sc_lv 32 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "imgBayer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imgBayer", "role": "dout" }} , 
 	{ "name": "imgBayer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgBayer", "role": "empty_n" }} , 
 	{ "name": "imgBayer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgBayer", "role": "read" }} , 
 	{ "name": "imgRgb_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRgb", "role": "din" }} , 
 	{ "name": "imgRgb_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "full_n" }} , 
 	{ "name": "imgRgb_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "write" }} , 
 	{ "name": "height_val4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height_val4", "role": "default" }} , 
 	{ "name": "width_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val8", "role": "default" }} , 
 	{ "name": "bayerPhase_val11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "dout" }} , 
 	{ "name": "bayerPhase_val11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "empty_n" }} , 
 	{ "name": "bayerPhase_val11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "height_val4_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "height_val4", "role": "ap_vld" }} , 
 	{ "name": "width_val8_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "width_val8", "role": "ap_vld" }} , 
 	{ "name": "imgRgb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRgb_dout", "role": "default" }} , 
 	{ "name": "imgRgb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb_empty_n", "role": "default" }} , 
 	{ "name": "imgRgb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb_read", "role": "default" }} , 
 	{ "name": "imgRgb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgRgb_num_data_valid", "role": "default" }} , 
 	{ "name": "imgRgb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgRgb_fifo_cap", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "18", "23", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "Debayer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65581", "EstimateLatencyMax" : "4296212499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "DebayerG_U0"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "DebayerRandBatG_U0"}],
		"Port" : [
			{"Name" : "imgBayer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "imgBayer"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "DebayerRandBatG_U0", "Port" : "imgRgb"}]},
			{"Name" : "height_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_val8", "Type" : "None", "Direction" : "I"},
			{"Name" : "bayerPhase_val11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "bayerPhase_val"}]},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "DIV1_TABLE"}]},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "DIV2_TABLE"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "imgBayer", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "imgG", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bayerPhase_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_val4_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8_c4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_c4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11_c5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_c5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "DIV1_TABLE", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Port" : "DIV2_TABLE", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.DIV1_TABLE_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.DIV2_TABLE_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_3_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_2_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_1_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.linebuf_yuv_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_9ns_18_1_1_U56", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_8ns_18_1_1_U57", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_8ns_18_1_1_U58", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_18s_9ns_18_1_1_U59", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_14s_10ns_24_1_1_U60", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mul_14s_10ns_24_1_1_U61", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mac_muladd_14s_10ns_24s_25_4_1_U62", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.mac_muladd_14s_10ns_24s_25_4_1_U63", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "DebayerRatBorBatR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "2086331",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_DebayerRatBorBatR_U0_U",
		"Port" : [
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176", "Port" : "imgG", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176", "Port" : "imgRB", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_val4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_630_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176", "Parent" : "18", "Child" : ["20", "21", "22"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176.lineBuffer_1_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176.lineBuffer_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "DebayerRandBatG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "2084169",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "18",
		"StartFifo" : "start_for_DebayerRandBatG_U0_U",
		"Port" : [
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130", "Port" : "imgRB", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130", "Port" : "imgRgb", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_878_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130", "Parent" : "23", "Child" : ["25", "26", "27"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130.lineBuffer_2_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130.lineBuffer_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgG_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_val4_c3_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_val8_c4_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bayerPhase_val11_c5_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgRB_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_val4_c_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_val8_c_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bayerPhase_val11_c_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DebayerRatBorBatR_U0_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DebayerRandBatG_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Debayer {
		imgBayer {Type I LastRead 1 FirstWrite -1}
		imgRgb {Type O LastRead -1 FirstWrite 3}
		height_val4 {Type I LastRead 0 FirstWrite -1}
		width_val8 {Type I LastRead 0 FirstWrite -1}
		bayerPhase_val11 {Type I LastRead 0 FirstWrite -1}
		DIV1_TABLE {Type I LastRead -1 FirstWrite -1}
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}
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
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}
	DebayerRatBorBatR {
		imgG {Type I LastRead 1 FirstWrite -1}
		imgRB {Type O LastRead -1 FirstWrite 5}
		height_val4 {Type I LastRead 0 FirstWrite -1}
		width_val8 {Type I LastRead 0 FirstWrite -1}
		bayerPhase_val11 {Type I LastRead 0 FirstWrite -1}
		height_val4_c {Type O LastRead -1 FirstWrite 0}
		width_val8_c {Type O LastRead -1 FirstWrite 0}
		bayerPhase_val11_c {Type O LastRead -1 FirstWrite 0}}
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
		p_0_0_09411389_i_out {Type O LastRead -1 FirstWrite 4}}
	DebayerRandBatG {
		imgRB {Type I LastRead 1 FirstWrite -1}
		imgRgb {Type O LastRead -1 FirstWrite 3}
		height_val4 {Type I LastRead 0 FirstWrite -1}
		width_val8 {Type I LastRead 0 FirstWrite -1}
		bayerPhase_val11 {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "65581", "Max" : "4296212499"}
	, {"Name" : "Interval", "Min" : "40", "Max" : "4296212500"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgBayer { ap_fifo {  { imgBayer_dout fifo_data_in 0 10 }  { imgBayer_empty_n fifo_status 0 1 }  { imgBayer_read fifo_port_we 1 1 } } }
	imgRgb { ap_fifo {  { imgRgb_din fifo_data_in 1 30 }  { imgRgb_full_n fifo_status 0 1 }  { imgRgb_write fifo_port_we 1 1 } } }
	height_val4 { ap_none {  { height_val4 in_data 0 16 }  { height_val4_ap_vld in_vld 0 1 } } }
	width_val8 { ap_none {  { width_val8 in_data 0 16 }  { width_val8_ap_vld in_vld 0 1 } } }
	bayerPhase_val11 { ap_fifo {  { bayerPhase_val11_dout fifo_data_in 0 16 }  { bayerPhase_val11_empty_n fifo_status 0 1 }  { bayerPhase_val11_read fifo_port_we 1 1 } } }
}
