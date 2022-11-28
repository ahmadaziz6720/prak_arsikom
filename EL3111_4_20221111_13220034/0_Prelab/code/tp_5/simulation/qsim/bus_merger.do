onerror {exit -code 1}
vlib work
vcom -work work bus_merger.vho
vcom -work work Waveform.vwf.vht
vsim -vopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.bus_merger_vhd_vec_tst
vcd file -direction bus_merger.msim.vcd
vcd add -internal bus_merger_vhd_vec_tst/*
vcd add -internal bus_merger_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
