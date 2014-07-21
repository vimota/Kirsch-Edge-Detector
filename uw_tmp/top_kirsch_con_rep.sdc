###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem1/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/u_memory/u_mem1/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem1/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem2/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem2/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/u_memory/u_mem2/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem3/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/u_memory/u_mem3/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem3/mem/mem -design rtl 



##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 
create_generated_clock { u_uw_uart/reg_charavail/out } -domain ClockDomain1 -name u_uw_uart/reg_charavail/regout -multiply_by 1  -divide_by 2 -source clk -duty_cycle 50.000000  -design rtl 

