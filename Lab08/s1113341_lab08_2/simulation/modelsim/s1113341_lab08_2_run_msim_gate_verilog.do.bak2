transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {s1113341_lab08_2.vo}

vlog -vlog01compat -work work +incdir+C:/altera/91sp2/quartus/s1113341_lab08_2 {C:/altera/91sp2/quartus/s1113341_lab08_2/test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc" test

add wave *
view structure
view signals
run -all
