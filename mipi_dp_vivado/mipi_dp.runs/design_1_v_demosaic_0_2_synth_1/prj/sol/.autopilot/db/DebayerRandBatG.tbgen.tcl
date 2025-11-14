set moduleName DebayerRandBatG
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
set C_modelName {DebayerRandBatG}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ imgRB int 30 regular {fifo 0 volatile }  }
	{ imgRgb int 30 regular {fifo 1 volatile }  }
	{ height_val4 int 11 regular {fifo 0}  }
	{ width_val8 int 11 regular {fifo 0}  }
	{ bayerPhase_val11 int 16 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imgRB", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val4", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width_val8", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "bayerPhase_val11", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgRB_dout sc_in sc_lv 30 signal 0 } 
	{ imgRB_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgRB_read sc_out sc_logic 1 signal 0 } 
	{ imgRB_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ imgRB_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ imgRgb_din sc_out sc_lv 30 signal 1 } 
	{ imgRgb_full_n sc_in sc_logic 1 signal 1 } 
	{ imgRgb_write sc_out sc_logic 1 signal 1 } 
	{ imgRgb_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ imgRgb_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ height_val4_dout sc_in sc_lv 11 signal 2 } 
	{ height_val4_empty_n sc_in sc_logic 1 signal 2 } 
	{ height_val4_read sc_out sc_logic 1 signal 2 } 
	{ height_val4_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ height_val4_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ width_val8_dout sc_in sc_lv 11 signal 3 } 
	{ width_val8_empty_n sc_in sc_logic 1 signal 3 } 
	{ width_val8_read sc_out sc_logic 1 signal 3 } 
	{ width_val8_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ width_val8_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ bayerPhase_val11_dout sc_in sc_lv 16 signal 4 } 
	{ bayerPhase_val11_empty_n sc_in sc_logic 1 signal 4 } 
	{ bayerPhase_val11_read sc_out sc_logic 1 signal 4 } 
	{ bayerPhase_val11_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ bayerPhase_val11_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "height_val4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_val4", "role": "dout" }} , 
 	{ "name": "height_val4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4", "role": "empty_n" }} , 
 	{ "name": "height_val4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4", "role": "read" }} , 
 	{ "name": "height_val4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4", "role": "num_data_valid" }} , 
 	{ "name": "height_val4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4", "role": "fifo_cap" }} , 
 	{ "name": "width_val8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_val8", "role": "dout" }} , 
 	{ "name": "width_val8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val8", "role": "empty_n" }} , 
 	{ "name": "width_val8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val8", "role": "read" }} , 
 	{ "name": "width_val8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val8", "role": "num_data_valid" }} , 
 	{ "name": "width_val8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val8", "role": "fifo_cap" }} , 
 	{ "name": "bayerPhase_val11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "dout" }} , 
 	{ "name": "bayerPhase_val11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "empty_n" }} , 
 	{ "name": "bayerPhase_val11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "read" }} , 
 	{ "name": "bayerPhase_val11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "num_data_valid" }} , 
 	{ "name": "bayerPhase_val11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130", "Port" : "imgRB", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130", "Port" : "imgRgb", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_878_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130", "Parent" : "0", "Child" : ["2", "3", "4"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130.lineBuffer_2_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130.lineBuffer_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "9", "Max" : "2084169"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "2084169"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgRB { ap_fifo {  { imgRB_dout fifo_data_in 0 30 }  { imgRB_empty_n fifo_status 0 1 }  { imgRB_read fifo_port_we 1 1 }  { imgRB_num_data_valid fifo_status_num_data_valid 0 3 }  { imgRB_fifo_cap fifo_update 0 3 } } }
	imgRgb { ap_fifo {  { imgRgb_din fifo_data_in 1 30 }  { imgRgb_full_n fifo_status 0 1 }  { imgRgb_write fifo_port_we 1 1 }  { imgRgb_num_data_valid fifo_status_num_data_valid 0 32 }  { imgRgb_fifo_cap fifo_update 0 32 } } }
	height_val4 { ap_fifo {  { height_val4_dout fifo_data_in 0 11 }  { height_val4_empty_n fifo_status 0 1 }  { height_val4_read fifo_port_we 1 1 }  { height_val4_num_data_valid fifo_status_num_data_valid 0 3 }  { height_val4_fifo_cap fifo_update 0 3 } } }
	width_val8 { ap_fifo {  { width_val8_dout fifo_data_in 0 11 }  { width_val8_empty_n fifo_status 0 1 }  { width_val8_read fifo_port_we 1 1 }  { width_val8_num_data_valid fifo_status_num_data_valid 0 3 }  { width_val8_fifo_cap fifo_update 0 3 } } }
	bayerPhase_val11 { ap_fifo {  { bayerPhase_val11_dout fifo_data_in 0 16 }  { bayerPhase_val11_empty_n fifo_status 0 1 }  { bayerPhase_val11_read fifo_port_we 1 1 }  { bayerPhase_val11_num_data_valid fifo_status_num_data_valid 0 3 }  { bayerPhase_val11_fifo_cap fifo_update 0 3 } } }
}
