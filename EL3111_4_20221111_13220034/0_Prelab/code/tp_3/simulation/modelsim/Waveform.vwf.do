vcom -work work Waveform.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.mux_4to1_5bit_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
