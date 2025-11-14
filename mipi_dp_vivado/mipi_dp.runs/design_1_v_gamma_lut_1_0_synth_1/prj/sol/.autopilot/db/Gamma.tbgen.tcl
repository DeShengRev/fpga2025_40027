set moduleName Gamma
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
set cdfgNum 13
set C_modelName {Gamma}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict gamma_lut_0 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict gamma_lut_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict gamma_lut_2 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ imgRgb int 30 regular {fifo 0 volatile }  }
	{ imgGamma int 30 regular {fifo 1 volatile }  }
	{ width int 16 regular {pointer 0 stable }  }
	{ height int 16 regular {pointer 0 stable }  }
	{ gamma_lut_0 int 16 regular {array 1024 { 1 } 1 1 }  }
	{ gamma_lut_1 int 16 regular {array 1024 { 1 } 1 1 }  }
	{ gamma_lut_2 int 16 regular {array 1024 { 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgGamma", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gamma_lut_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gamma_lut_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gamma_lut_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
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
	{ imgRgb_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ imgRgb_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ imgGamma_din sc_out sc_lv 30 signal 1 } 
	{ imgGamma_full_n sc_in sc_logic 1 signal 1 } 
	{ imgGamma_write sc_out sc_logic 1 signal 1 } 
	{ imgGamma_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ imgGamma_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ width sc_in sc_lv 16 signal 2 } 
	{ height sc_in sc_lv 16 signal 3 } 
	{ gamma_lut_0_address0 sc_out sc_lv 10 signal 4 } 
	{ gamma_lut_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ gamma_lut_0_q0 sc_in sc_lv 16 signal 4 } 
	{ gamma_lut_1_address0 sc_out sc_lv 10 signal 5 } 
	{ gamma_lut_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ gamma_lut_1_q0 sc_in sc_lv 16 signal 5 } 
	{ gamma_lut_2_address0 sc_out sc_lv 10 signal 6 } 
	{ gamma_lut_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ gamma_lut_2_q0 sc_in sc_lv 16 signal 6 } 
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
 	{ "name": "imgRgb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "imgRgb", "role": "num_data_valid" }} , 
 	{ "name": "imgRgb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "imgRgb", "role": "fifo_cap" }} , 
 	{ "name": "imgGamma_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgGamma", "role": "din" }} , 
 	{ "name": "imgGamma_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgGamma", "role": "full_n" }} , 
 	{ "name": "imgGamma_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgGamma", "role": "write" }} , 
 	{ "name": "imgGamma_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgGamma", "role": "num_data_valid" }} , 
 	{ "name": "imgGamma_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgGamma", "role": "fifo_cap" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "gamma_lut_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gamma_lut_0", "role": "address0" }} , 
 	{ "name": "gamma_lut_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gamma_lut_0", "role": "ce0" }} , 
 	{ "name": "gamma_lut_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gamma_lut_0", "role": "q0" }} , 
 	{ "name": "gamma_lut_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gamma_lut_1", "role": "address0" }} , 
 	{ "name": "gamma_lut_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gamma_lut_1", "role": "ce0" }} , 
 	{ "name": "gamma_lut_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gamma_lut_1", "role": "q0" }} , 
 	{ "name": "gamma_lut_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gamma_lut_2", "role": "address0" }} , 
 	{ "name": "gamma_lut_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gamma_lut_2", "role": "ce0" }} , 
 	{ "name": "gamma_lut_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gamma_lut_2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6"],
		"CDFG" : "Gamma",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5444", "EstimateLatencyMax" : "2080028",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106", "Port" : "imgRgb", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgGamma", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106", "Port" : "imgGamma", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "gamma_lut_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90", "Port" : "gamma_lut_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gamma_lut_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90", "Port" : "gamma_lut_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gamma_lut_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90", "Port" : "gamma_lut_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_325_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Gamma_Pipeline_VITIS_LOOP_315_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lut_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lut_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lut_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gamma_lut_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gamma_lut_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gamma_lut_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Gamma_Pipeline_VITIS_LOOP_327_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "1923",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgRgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lut_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "imgGamma", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgGamma_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_327_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	Gamma {
		imgRgb {Type I LastRead 1 FirstWrite -1}
		imgGamma {Type O LastRead -1 FirstWrite 2}
		width {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 1 FirstWrite -1}
		gamma_lut_0 {Type I LastRead 0 FirstWrite -1}
		gamma_lut_1 {Type I LastRead 0 FirstWrite -1}
		gamma_lut_2 {Type I LastRead 0 FirstWrite -1}}
	Gamma_Pipeline_VITIS_LOOP_315_1 {
		lut_2 {Type O LastRead -1 FirstWrite 1}
		lut_1 {Type O LastRead -1 FirstWrite 1}
		lut_0 {Type O LastRead -1 FirstWrite 1}
		gamma_lut_0 {Type I LastRead 0 FirstWrite -1}
		gamma_lut_1 {Type I LastRead 0 FirstWrite -1}
		gamma_lut_2 {Type I LastRead 0 FirstWrite -1}}
	Gamma_Pipeline_VITIS_LOOP_327_4 {
		empty {Type I LastRead 0 FirstWrite -1}
		imgRgb {Type I LastRead 1 FirstWrite -1}
		lut_1 {Type I LastRead 1 FirstWrite -1}
		lut_2 {Type I LastRead 1 FirstWrite -1}
		lut_0 {Type I LastRead 1 FirstWrite -1}
		imgGamma {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5444", "Max" : "2080028"}
	, {"Name" : "Interval", "Min" : "5444", "Max" : "2080028"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgRgb { ap_fifo {  { imgRgb_dout fifo_data_in 0 30 }  { imgRgb_empty_n fifo_status 0 1 }  { imgRgb_read fifo_port_we 1 1 }  { imgRgb_num_data_valid fifo_status_num_data_valid 0 5 }  { imgRgb_fifo_cap fifo_update 0 5 } } }
	imgGamma { ap_fifo {  { imgGamma_din fifo_data_in 1 30 }  { imgGamma_full_n fifo_status 0 1 }  { imgGamma_write fifo_port_we 1 1 }  { imgGamma_num_data_valid fifo_status_num_data_valid 0 32 }  { imgGamma_fifo_cap fifo_update 0 32 } } }
	width { ap_none {  { width in_data 0 16 } } }
	height { ap_none {  { height in_data 0 16 } } }
	gamma_lut_0 { ap_memory {  { gamma_lut_0_address0 mem_address 1 10 }  { gamma_lut_0_ce0 mem_ce 1 1 }  { gamma_lut_0_q0 mem_dout 0 16 } } }
	gamma_lut_1 { ap_memory {  { gamma_lut_1_address0 mem_address 1 10 }  { gamma_lut_1_ce0 mem_ce 1 1 }  { gamma_lut_1_q0 mem_dout 0 16 } } }
	gamma_lut_2 { ap_memory {  { gamma_lut_2_address0 mem_address 1 10 }  { gamma_lut_2_ce0 mem_ce 1 1 }  { gamma_lut_2_q0 mem_dout 0 16 } } }
}
