#------------------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# user's VHDL code should not refer to IP components (e.g altera_mf)
# to activate the code below, uncomment and make $ single
# currently used only by altera
# xsys( "vlib $FAB_SIM_IP")
# xsys( "vmap $FAB_SIM_IP $FAB_SIM_HOME/vhdl_libs/$FAB_SIM_IP")

#------------------------------------------------------------------------
# compile source files

# xsys( "vcom -93 +acc -work work-msim  kirsch_utility_pkg.vhd mem.vhd flow.vhd memory.vhd kirsch_synth_pkg.vhd kirsch.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")
xsys( "uw-msim-com  kirsch_utility_pkg.vhd mem.vhd flow.vhd memory.vhd kirsch_synth_pkg.vhd kirsch.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

#------------------------------------------------------------------------
# run simulation

xsys( "vsim -lib work-msim   -Gtest_num=4   -wlf uw_tmp/vsim.wlf -t 1ns -do uw_tmp/uw-sim.tcl kirsch_tb(main)")

