transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {alu.vo}

vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/alu_testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/glob.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/srl.v}
vlog -vlog01compat -work work +incdir+C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week\ 12/alu {C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/sub.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  alu_testbench

do C:/Users/bovvlet/Desktop/CA_Lab/CA_LAB/week 12/alu/Tcl_script1.tcl
