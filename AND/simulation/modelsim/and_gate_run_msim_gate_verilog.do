transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {and_gate.vo}

vlog -vlog01compat -work work +incdir+D:/INTEL/Intel_Quartus/Lab_11/../../../PK/IIT\ PATNA/SEM_03/CS227_Digital_Systems/2101MC31_Lab10/Tutorials {D:/INTEL/Intel_Quartus/Lab_11/../../../PK/IIT PATNA/SEM_03/CS227_Digital_Systems/2101MC31_Lab10/Tutorials/tb_and_gate.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
