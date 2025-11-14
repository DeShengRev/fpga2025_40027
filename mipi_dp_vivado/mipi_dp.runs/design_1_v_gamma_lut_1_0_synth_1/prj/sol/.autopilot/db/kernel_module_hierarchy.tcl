set ModuleHierarchy {[{
"Name" : "v_gamma_lut","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "AXIvideo2MultiPixStream_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_wait_for_start","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_reg_unsigned_short_s_fu_216","ID" : "4","Type" : "pipeline"},
		{"Name" : "grp_reg_unsigned_short_s_fu_222","ID" : "5","Type" : "pipeline"},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_eol","ID" : "10","Type" : "pipeline"},]},]},]},
	{"Name" : "Gamma_U0","ID" : "11","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_315_1","ID" : "13","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_325_3","ID" : "14","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106","ID" : "15","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_327_4","ID" : "16","Type" : "pipeline"},]},]},]},
	{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_256_1","ID" : "18","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100","ID" : "19","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_258_2","ID" : "20","Type" : "pipeline"},]},]},]},]
}]}