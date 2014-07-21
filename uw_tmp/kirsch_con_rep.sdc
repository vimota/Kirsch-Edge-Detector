###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name use_dffenable -value "0" -net -type default f_state(3) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default f_state(2) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default f_state(1) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default f_state(0) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default u_memory/o_valid -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem1/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_memory/u_mem1/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem1/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem2/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem2/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_memory/u_mem2/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem3/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_memory/u_mem3/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem3/mem/mem -design rtl 


set_attribute -name use_dffenable -value "0" -net -type default u_flow/o_dir(2) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/o_dir(1) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(3) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(2) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(1) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(0) -design rtl 
set_attribute -name DONT_TOUCH -value "true" -instance u_flow/modgen_adderblock -design rtl 
set_attribute -name DONT_TOUCH -value "true" -instance u_flow/modgen_adderblock_dup_0 -design rtl 

##################
# Clocks
##################
create_clock { i_valid } -domain ClockDomain1 -name i_valid -period 2.000000 -waveform { 0.000000 1.000000 } -design rtl 
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 2.000000 -waveform { 0.000000 1.000000 } -design rtl 

