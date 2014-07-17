set_results_dir uw_tmp
setup_design \
  -manufacturer Altera \
  -family {Stratix II} \
  -part EP2S15F484C \
  -speed 5 
setup_design -frequency 500
setup_design -design max
if { {} != {} } {
  setup_design -architecture 
  echo "USING DESIGN ARCH"
}
setup_design -generics {  }
# setup_design -2004c_compile_mode  !!MDA: breaks when run quartus



# add_input_file -search_path $VHDL_PATH
# add_input_file [list [concat {  } { max.vhd }] ]
foreach file [concat {  } { max.vhd }] {
  add_input_file $file
}  

compile

auto_write uw_tmp/max_gate.vhd

report_area \
   -hierarchy \
   RPT/area_gate.rpt

#----------------------------------------------------------------------
# synthesize
#----------------------------------------------------------------------

synthesize

#----------------------------------------------------------------------

auto_write uw_tmp/max_logic.vhd

report_area \
  -hierarchy \
  RPT/area_logic.rpt

set clocks [ find_clocks ] 

if { [ llength $clocks ] != 0 } { 
  set clock [ lindex $clocks 0 ] 
  set_input_delay 0 [ all_inputs ] -clock $clock
  set_output_delay 0 [ all_outputs ] -clock $clock
  report_timing \
    -num_paths 5 \
    -clock_frequency \
    RPT/timing_logic.rpt
} else {
  puts "INFO: No registers in design.  Cannot do timing analysis"
}

#----------------------------------------------------------------------
# needed for vgencomp_to_arch:

auto_write uw_tmp/max_logic.v

#----------------------------------------------------------------------
# the end
#----------------------------------------------------------------------

puts "*** logic synthesis succeeded ***"

# no need to test for False to control exit,
# because Precision automatically exits when run with -file <scriptname>
