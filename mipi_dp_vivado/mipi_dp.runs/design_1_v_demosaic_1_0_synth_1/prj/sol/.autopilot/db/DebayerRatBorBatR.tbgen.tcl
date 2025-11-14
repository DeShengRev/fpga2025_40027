set moduleName DebayerRatBorBatR
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
set C_modelName {DebayerRatBorBatR}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ imgG int 30 regular {fifo 0 volatile }  }
	{ imgRB int 30 regular {fifo 1 volatile }  }
	{ height_val4 int 11 regular {fifo 0}  }
	{ width_val8 int 11 regular {fifo 0}  }
	{ bayerPhase_val11 int 16 regular {fifo 0}  }
	{ height_val4_c int 11 regular {fifo 1}  }
	{ width_val8_c int 11 regular {fifo 1}  }
	{ bayerPhase_val11_c int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imgG", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgRB", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val4", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width_val8", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "bayerPhase_val11", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "height_val4_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_val8_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bayerPhase_val11_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
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
	{ imgG_dout sc_in sc_lv 30 signal 0 } 
	{ imgG_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgG_read sc_out sc_logic 1 signal 0 } 
	{ imgG_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ imgG_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ imgRB_din sc_out sc_lv 30 signal 1 } 
	{ imgRB_full_n sc_in sc_logic 1 signal 1 } 
	{ imgRB_write sc_out sc_logic 1 signal 1 } 
	{ imgRB_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ imgRB_fifo_cap sc_in sc_lv 32 signal 1 } 
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
	{ height_val4_c_din sc_out sc_lv 11 signal 5 } 
	{ height_val4_c_full_n sc_in sc_logic 1 signal 5 } 
	{ height_val4_c_write sc_out sc_logic 1 signal 5 } 
	{ height_val4_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ height_val4_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ width_val8_c_din sc_out sc_lv 11 signal 6 } 
	{ width_val8_c_full_n sc_in sc_logic 1 signal 6 } 
	{ width_val8_c_write sc_out sc_logic 1 signal 6 } 
	{ width_val8_c_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ width_val8_c_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ bayerPhase_val11_c_din sc_out sc_lv 16 signal 7 } 
	{ bayerPhase_val11_c_full_n sc_in sc_logic 1 signal 7 } 
	{ bayerPhase_val11_c_write sc_out sc_logic 1 signal 7 } 
	{ bayerPhase_val11_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ bayerPhase_val11_c_fifo_cap sc_in sc_lv 3 signal 7 } 
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
 	{ "name": "bayerPhase_val11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11", "role": "fifo_cap" }} , 
 	{ "name": "height_val4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_val4_c", "role": "din" }} , 
 	{ "name": "height_val4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4_c", "role": "full_n" }} , 
 	{ "name": "height_val4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_val4_c", "role": "write" }} , 
 	{ "name": "height_val4_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4_c", "role": "num_data_valid" }} , 
 	{ "name": "height_val4_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height_val4_c", "role": "fifo_cap" }} , 
 	{ "name": "width_val8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_val8_c", "role": "din" }} , 
 	{ "name": "width_val8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val8_c", "role": "full_n" }} , 
 	{ "name": "width_val8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_val8_c", "role": "write" }} , 
 	{ "name": "width_val8_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val8_c", "role": "num_data_valid" }} , 
 	{ "name": "width_val8_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width_val8_c", "role": "fifo_cap" }} , 
 	{ "name": "bayerPhase_val11_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bayerPhase_val11_c", "role": "din" }} , 
 	{ "name": "bayerPhase_val11_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11_c", "role": "full_n" }} , 
 	{ "name": "bayerPhase_val11_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bayerPhase_val11_c", "role": "write" }} , 
 	{ "name": "bayerPhase_val11_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11_c", "role": "num_data_valid" }} , 
 	{ "name": "bayerPhase_val11_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bayerPhase_val11_c", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176", "Port" : "imgG", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176", "Port" : "imgRB", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height_val4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_val4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_val4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_val8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_val8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_val11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_val11_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_630_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176", "Parent" : "0", "Child" : ["2", "3", "4"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176.lineBuffer_1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176.lineBuffer_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
		p_0_0_09411389_i_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "2086331"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "2086331"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgG { ap_fifo {  { imgG_dout fifo_data_in 0 30 }  { imgG_empty_n fifo_status 0 1 }  { imgG_read fifo_port_we 1 1 }  { imgG_num_data_valid fifo_status_num_data_valid 0 3 }  { imgG_fifo_cap fifo_update 0 3 } } }
	imgRB { ap_fifo {  { imgRB_din fifo_data_in 1 30 }  { imgRB_full_n fifo_status 0 1 }  { imgRB_write fifo_port_we 1 1 }  { imgRB_num_data_valid fifo_status_num_data_valid 0 32 }  { imgRB_fifo_cap fifo_update 0 32 } } }
	height_val4 { ap_fifo {  { height_val4_dout fifo_data_in 0 11 }  { height_val4_empty_n fifo_status 0 1 }  { height_val4_read fifo_port_we 1 1 }  { height_val4_num_data_valid fifo_status_num_data_valid 0 3 }  { height_val4_fifo_cap fifo_update 0 3 } } }
	width_val8 { ap_fifo {  { width_val8_dout fifo_data_in 0 11 }  { width_val8_empty_n fifo_status 0 1 }  { width_val8_read fifo_port_we 1 1 }  { width_val8_num_data_valid fifo_status_num_data_valid 0 3 }  { width_val8_fifo_cap fifo_update 0 3 } } }
	bayerPhase_val11 { ap_fifo {  { bayerPhase_val11_dout fifo_data_in 0 16 }  { bayerPhase_val11_empty_n fifo_status 0 1 }  { bayerPhase_val11_read fifo_port_we 1 1 }  { bayerPhase_val11_num_data_valid fifo_status_num_data_valid 0 3 }  { bayerPhase_val11_fifo_cap fifo_update 0 3 } } }
	height_val4_c { ap_fifo {  { height_val4_c_din fifo_data_in 1 11 }  { height_val4_c_full_n fifo_status 0 1 }  { height_val4_c_write fifo_port_we 1 1 }  { height_val4_c_num_data_valid fifo_status_num_data_valid 0 3 }  { height_val4_c_fifo_cap fifo_update 0 3 } } }
	width_val8_c { ap_fifo {  { width_val8_c_din fifo_data_in 1 11 }  { width_val8_c_full_n fifo_status 0 1 }  { width_val8_c_write fifo_port_we 1 1 }  { width_val8_c_num_data_valid fifo_status_num_data_valid 0 3 }  { width_val8_c_fifo_cap fifo_update 0 3 } } }
	bayerPhase_val11_c { ap_fifo {  { bayerPhase_val11_c_din fifo_data_in 1 16 }  { bayerPhase_val11_c_full_n fifo_status 0 1 }  { bayerPhase_val11_c_write fifo_port_we 1 1 }  { bayerPhase_val11_c_num_data_valid fifo_status_num_data_valid 0 3 }  { bayerPhase_val11_c_fifo_cap fifo_update 0 3 } } }
}
