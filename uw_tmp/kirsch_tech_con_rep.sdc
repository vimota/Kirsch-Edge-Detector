###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name use_dffenable -value "0" -net -type default u_memory_first_bubble -design gatelevel 
set_attribute -name INFF -value "FALSE" -port -type STRING i_clock -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory_u_mem1_mem -design gatelevel 

##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 2.000000 -waveform { 0.000000 1.000000 } -design gatelevel 

