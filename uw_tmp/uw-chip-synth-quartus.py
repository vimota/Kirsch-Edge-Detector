# import shutil

#--------------------------------------------------------------

my_chdir("./uw_tmp")

# my_rm( ["LOG"] )
# 
# my_mv( "../LOG",  "LOG" )

xsys("quartus_sh -t uw-chip-synth-quartus.tcl memory")

xsys("quartus_sh -t /home/ece327/lib/pins-NULL.tcl memory")

# not using mif files (memory initialization)
# my_cp_nofail( "../*.mif", "." )

my_print("map... ")
xsys( "quartus_map memory --source memory_logic.edf --family=CycloneII")

my_print("fit... ")
xsys( "quartus_fit memory --effort=fast --part=EP2C35F672C7")

my_print("tan... ")
# xsys( "quartus_tan memory" )
xsys( "quartus_sta -t uw-chip-synth-quartus-timing.tcl memory" )

my_print( "asm... ")
xsys( "quartus_asm memory" )

my_println( "eda..." )
xsys( "quartus_eda memory --simulation --tool=modelsim --format=vhdl")
xsys( "quartus_eda memory --simulation --tool=modelsim --format=verilog")

# my_mv( "LOG", "../LOG" )
my_chdir( ".." )

my_mv( "uw_tmp/simulation/modelsim/memory.vo"       , "uw_tmp/memory_chip.v" )
my_mv( "uw_tmp/simulation/modelsim/memory.vho"       , "uw_tmp/memory_chip.vhd" )
my_mv( "uw_tmp/simulation/modelsim/memory_vhd.sdo" , "uw_tmp/memory_chip.sdf" )
my_mv( "uw_tmp/memory.sof" , "memory.sof" )

my_cp( "uw_tmp/memory.map.rpt", "RPT/area_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip.rpt", "RPT/timing_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip_path.rpt", "RPT/timing_chip_path.rpt", error_level=1 )

#------------------------------------------------------------------------
# generate no_generics architecture

#--------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#--------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#--------------------------------------------------------------
#

# get synthesized entity (std_logic vector and no generics)
xsys( "vlog -novopt -work work-msim uw_tmp/memory_logic.v")

# fix up _chip.vhd file
vgencomp_to_arch( "memory", "chip", [] + [ "memory.vhd", "mem.vhd", "kirsch_utility_pkg.vhd" ] )
