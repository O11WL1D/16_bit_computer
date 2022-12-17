onerror {exit -code 1}
vlib work
vcom -work work control_mod.vho
vcom -work work Waveform31.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.control_mod_vhd_vec_tst
vcd file -direction control_mod.msim.vcd
vcd add -internal control_mod_vhd_vec_tst/*
vcd add -internal control_mod_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
