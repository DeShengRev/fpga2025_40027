set ModuleHierarchy {[{
"Name" : "v_demosaic","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "AXIvideo2MultiBayer_U0","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiBayer_Pipeline_loop_wait_for_start_fu_128","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_wait_for_start","ID" : "4","Type" : "pipeline"},]},
		{"Name" : "grp_reg_unsigned_short_s_fu_212","ID" : "5","Type" : "pipeline"},
		{"Name" : "grp_reg_unsigned_short_s_fu_218","ID" : "6","Type" : "pipeline"},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiBayer_Pipeline_loop_width_fu_148","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_AXIvideo2MultiBayer_Pipeline_loop_wait_for_eol_fu_176","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_eol","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "Debayer_U0","ID" : "12","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "DebayerG_U0","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_315_3","ID" : "14","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_200","ID" : "15","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_318_4","ID" : "16","Type" : "pipeline"},]},]},]},
		{"Name" : "DebayerRatBorBatR_U0","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_630_1","ID" : "18","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_176","ID" : "19","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_633_2","ID" : "20","Type" : "pipeline"},]},]},]},
		{"Name" : "DebayerRandBatG_U0","ID" : "21","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_878_1","ID" : "22","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_130","ID" : "23","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_881_2","ID" : "24","Type" : "pipeline"},]},]},]},]},
	{"Name" : "ZipperRemoval_U0","ID" : "25","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1099_1","ID" : "26","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_ZipperRemoval_Pipeline_VITIS_LOOP_1101_2_fu_94","ID" : "27","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_1101_2","ID" : "28","Type" : "pipeline"},]},]},]},
	{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "29","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_228_1","ID" : "30","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_230_2_fu_90","ID" : "31","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_230_2","ID" : "32","Type" : "pipeline"},]},]},]},]
}]}