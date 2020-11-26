transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex.vo}

vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 13/ex {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 13/ex/alu_decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 13/ex {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 13/ex/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 13/ex {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 13/ex/main_decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 13/ex {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 13/ex/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 13/ex/Tcl_script1.tcl
