transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {half_adder.vo}

vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 10/half_adder {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 10/half_adder/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 10/half_adder {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 10/half_adder/half_adder_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 10/half_adder/Tcl_script1.tcl
