set_results_dir uw_tmp
setup_design \
  -manufacturer Altera \
  -family {Cyclone II} \
  -part EP2C35F672C \
  -speed 7 
setup_design -frequency 250
setup_design -design kirsch
# setup_design -architecture DESIGN_ARCH
setup_design -generics {  {test_num 1} }

foreach file [concat {  } { mem.vhd kirsch_synth_pkg.vhd string_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_spec.vhd }] {
  add_input_file $file
}

compile
set clocks [ find_clocks ] 
if { [ llength $clocks ] != 0 } { 
  set clock [ lindex $clocks 0 ] 
  set_input_delay 0 [ all_inputs ] -clock $clock
  set_output_delay 0 [ all_outputs ] -clock $clock
}
auto_write uw_tmp/kirsch_gate.vhd

puts "*** synthesis to generic gates succeeded ***"

if { "False" != "True" } {
  exit
}
