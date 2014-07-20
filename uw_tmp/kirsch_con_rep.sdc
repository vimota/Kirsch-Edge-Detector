###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name use_dffenable -value "0" -net -type default u_memory/first_bubble -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem1/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_memory/u_mem1/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem1/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem2/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem2/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_memory/u_mem2/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem3/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_memory/u_mem3/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem3/mem/mem -design rtl 



##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 2.000000 -waveform { 0.000000 1.000000 } -design rtl 

