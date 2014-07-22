#------------------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")
# xsys( "vmap altera_mf /home/ece327/altera")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#------------------------------------------------------------------------
# compile source files

# xsys( "vcom -93 +acc -work work-msim  uw_tmp/kirsch_chip.v uw_tmp/kirsch_chip.vhd kirsch_utility_pkg.vhd mem.vhd flow.vhd memory.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

xsys( "uw-msim-com  uw_tmp/kirsch_chip.v uw_tmp/kirsch_chip.vhd kirsch_utility_pkg.vhd mem.vhd flow.vhd memory.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

#------------------------------------------------------------------------
# run simulation
xsys( "vsim -lib work-msim     -sdfmax uut/chip=uw_tmp/kirsch_chip.sdf -wlf uw_tmp/vsim.wlf -t 1ns -do uw_tmp/uw-sim.tcl kirsch_tb")
