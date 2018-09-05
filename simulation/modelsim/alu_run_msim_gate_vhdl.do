transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {alu.vho}

vcom -93 -work work {C:/Users/Wentian Xia/OneDrive - The University of Sydney (Students)/ELEC3608 Computer Architecture/LAB5/Loop_VHDL/src/loop_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=alu_vhd.sdo -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
