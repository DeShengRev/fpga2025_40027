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
    id 122 \
    name imgBayer \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgBayer \
    op interface \
    ports { imgBayer_dout { I 10 vector } imgBayer_empty_n { I 1 bit } imgBayer_read { O 1 bit } imgBayer_num_data_valid { I 3 vector } imgBayer_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name imgG \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgG \
    op interface \
    ports { imgG_din { O 30 vector } imgG_full_n { I 1 bit } imgG_write { O 1 bit } imgG_num_data_valid { I 32 vector } imgG_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name height_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height_val \
    op interface \
    ports { height_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name width_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val \
    op interface \
    ports { width_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name bayerPhase_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bayerPhase_val \
    op interface \
    ports { bayerPhase_val_dout { I 16 vector } bayerPhase_val_empty_n { I 1 bit } bayerPhase_val_read { O 1 bit } bayerPhase_val_num_data_valid { I 3 vector } bayerPhase_val_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name height_val4_c3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_height_val4_c3 \
    op interface \
    ports { height_val4_c3_din { O 11 vector } height_val4_c3_full_n { I 1 bit } height_val4_c3_write { O 1 bit } height_val4_c3_num_data_valid { I 3 vector } height_val4_c3_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name width_val8_c4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val8_c4 \
    op interface \
    ports { width_val8_c4_din { O 11 vector } width_val8_c4_full_n { I 1 bit } width_val8_c4_write { O 1 bit } width_val8_c4_num_data_valid { I 3 vector } width_val8_c4_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name bayerPhase_val11_c5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bayerPhase_val11_c5 \
    op interface \
    ports { bayerPhase_val11_c5_din { O 16 vector } bayerPhase_val11_c5_full_n { I 1 bit } bayerPhase_val11_c5_write { O 1 bit } bayerPhase_val11_c5_num_data_valid { I 3 vector } bayerPhase_val11_c5_fifo_cap { I 3 vector } } \
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


