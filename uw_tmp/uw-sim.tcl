source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim kirsch_utility_pkg.vhd mem.vhd flow.vhd memory.vhd kirsch_synth_pkg.vhd kirsch.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd
}

if { "kirsch_tb.sim" ne "" } {
  source kirsch_tb.sim
}


