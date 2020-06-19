onerror {exit -code 1}
vlib work
vlog -work work Sequence_Detector.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Sequence_Detector_vlg_vec_tst -voptargs="+acc"
vcd file -direction Sequence_Detector.msim.vcd
vcd add -internal Sequence_Detector_vlg_vec_tst/*
vcd add -internal Sequence_Detector_vlg_vec_tst/i1/*
run -all
quit -f
