# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
video_format { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
gamma_lut_0 { 
	dir I
	width 16
	depth 1024
	mode ap_memory
	offset 2048
	offset_end 4095
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
gamma_lut_1 { 
	dir I
	width 16
	depth 1024
	mode ap_memory
	offset 4096
	offset_end 6143
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
gamma_lut_2 { 
	dir I
	width 16
	depth 1024
	mode ap_memory
	offset 6144
	offset_end 8191
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


