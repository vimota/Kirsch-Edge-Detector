###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name INFF -value "FALSE" -port -type STRING clk -design gatelevel 

##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design gatelevel 
create_generated_clock { u_uw_uart/reg_charavail/regout } -domain ClockDomain1 -name u_uw_uart/reg_charavail/regout -multiply_by 1  -divide_by 2 -source clk -duty_cycle 50.000000  -design gatelevel 

