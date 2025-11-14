# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name imgRB \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgRB \
    op interface \
    ports { imgRB_dout { I 30 vector } imgRB_empty_n { I 1 bit } imgRB_read { O 1 bit } imgRB_num_data_valid { I 3 vector } imgRB_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name imgRgb \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgRgb \
    op interface \
    ports { imgRgb_din { O 30 vector } imgRgb_full_n { I 1 bit } imgRgb_write { O 1 bit } imgRgb_num_data_valid { I 32 vector } imgRgb_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name height_val4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height_val4 \
    op interface \
    ports { height_val4_dout { I 11 vector } height_val4_empty_n { I 1 bit } height_val4_read { O 1 bit } height_val4_num_data_valid { I 3 vector } height_val4_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name width_val8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val8 \
    op interface \
    ports { width_val8_dout { I 11 vector } width_val8_empty_n { I 1 bit } width_val8_read { O 1 bit } width_val8_num_data_valid { I 3 vector } width_val8_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name bayerPhase_val11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bayerPhase_val11 \
    op interface \
    ports { bayerPhase_val11_dout { I 16 vector } bayerPhase_val11_empty_n { I 1 bit } bayerPhase_val11_read { O 1 bit } bayerPhase_val11_num_data_valid { I 3 vector } bayerPhase_val11_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


