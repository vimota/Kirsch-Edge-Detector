###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name INFF -value "FALSE" -port -type STRING clk -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem1_mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem2_mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/u_memory/u_mem3_mem -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_kirsch/u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 



##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design gatelevel 

