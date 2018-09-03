transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Wentian Xia/OneDrive - The University of Sydney (Students)/ELEC3608 Computer Architecture/LAB5/src/common.vhd}
vcom -93 -work work {C:/Users/Wentian Xia/OneDrive - The University of Sydney (Students)/ELEC3608 Computer Architecture/LAB5/src/alu.vhd}

vcom -93 -work work {C:/Users/Wentian Xia/OneDrive - The University of Sydney (Students)/ELEC3608 Computer Architecture/LAB5/src/loop_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
