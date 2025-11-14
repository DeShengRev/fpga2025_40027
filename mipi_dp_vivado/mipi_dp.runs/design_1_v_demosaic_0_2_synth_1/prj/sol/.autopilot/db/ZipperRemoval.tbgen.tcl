set moduleName ZipperRemoval
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
set C_modelName {ZipperRemoval}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ imgRgb int 30 regular {fifo 0 volatile }  }
	{ imgUnzip int 30 regular {fifo 1 volatile }  }
	{ height_val int 16 regular {ap_stable 0} }
	{ width_val int 16 regular {ap_stable 0} }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgUnzip", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
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
	{ imgRgb_dout sc_in sc_lv 30 signal 0 } 
	{ imgRgb_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgRgb_read sc_out sc_logic 1 signal 0 } 
	{ imgRgb_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ imgRgb_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ imgUnzip_din sc_out sc_lv 30 signal 1 } 
	{ imgUnzip_full_n sc_in sc_logic 1 signal 1 } 
	{ imgUnzip_write sc_out sc_logic 1 signal 1 } 
	{ imgUnzip_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ imgUnzip_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ height_val sc_in sc_lv 16 signal 2 } 
	{ width_val sc_in sc_lv 16 signal 3 } 
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
 	{ "name": "imgRgb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRgb", "role": "dout" }} , 
 	{ "name": "imgRgb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "empty_n" }} , 
 	{ "name": "imgRgb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "read" }} , 
 	{ "name": "imgRgb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRgb", "role": "num_data_valid" }} , 
 	{ "name": "imgRgb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRgb", "role": "fifo_cap" }} , 
 	{ "name": "imgUnzip_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgUnzip", "role": "din" }} , 
 	{ "name": "imgUnzip_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgUnzip", "role": "full_n" }} , 
 	{ "name": "imgUnzip_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgUnzip", "role": "write" }} , 
 	{ "name": "imgUnzip_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgUnzip", "role": "num_data_valid" }} , 
 	{ "name": "imgUnzip_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgUnzip", "role": "fifo_cap" }} , 
 	{ "name": "height_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height_val", "role": "default" }} , 
 	{ "name": "width_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ZipperRemoval",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "4295360506",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ZipperRemoval_Pipeline_VITIS_LOOP_1101_2_fu_94", "Port" : "imgRgb", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgUnzip", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ZipperRemoval_Pipeline_VITIS_LOOP_1101_2_fu_94", "Port" : "imgUnzip", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1099_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ZipperRemoval_Pipeline_VITIS_LOOP_1101_2_fu_94", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "ZipperRemoval_Pipeline_VITIS_LOOP_1101_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "65540",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_0_0477655_lcssa668693", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0478653_lcssa666691", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0479657_lcssa664689", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2_i_i_lcssa687", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln1085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgRgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgUnzip", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgUnzip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_0_0480_1667_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0481_1665_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0482_1663_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0480_1661_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0481_1660_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0482_1659_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0483_1658_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "phi_ln1132_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1101_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ZipperRemoval_Pipeline_VITIS_LOOP_1101_2_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	ZipperRemoval {
		imgRgb {Type I LastRead 1 FirstWrite -1}
		imgUnzip {Type O LastRead -1 FirstWrite 3}
		height_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}}
	ZipperRemoval_Pipeline_VITIS_LOOP_1101_2 {
		p_0_0_0477655_lcssa668693 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0478653_lcssa666691 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0479657_lcssa664689 {Type I LastRead 0 FirstWrite -1}
		conv2_i_i_lcssa687 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		zext_ln1085 {Type I LastRead 0 FirstWrite -1}
		imgRgb {Type I LastRead 1 FirstWrite -1}
		imgUnzip {Type O LastRead -1 FirstWrite 3}
		p_0_0_0480_1667_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0481_1665_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0482_1663_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0480_1661_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0481_1660_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0482_1659_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0483_1658_out {Type IO LastRead 2 FirstWrite 2}
		phi_ln1132_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "4295360506"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "4295360506"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgRgb { ap_fifo {  { imgRgb_dout fifo_data_in 0 30 }  { imgRgb_empty_n fifo_status 0 1 }  { imgRgb_read fifo_port_we 1 1 }  { imgRgb_num_data_valid fifo_status_num_data_valid 0 3 }  { imgRgb_fifo_cap fifo_update 0 3 } } }
	imgUnzip { ap_fifo {  { imgUnzip_din fifo_data_in 1 30 }  { imgUnzip_full_n fifo_status 0 1 }  { imgUnzip_write fifo_port_we 1 1 }  { imgUnzip_num_data_valid fifo_status_num_data_valid 0 32 }  { imgUnzip_fifo_cap fifo_update 0 32 } } }
	height_val { ap_none {  { height_val in_data 0 16 } } }
	width_val { ap_none {  { width_val in_data 0 16 } } }
}
