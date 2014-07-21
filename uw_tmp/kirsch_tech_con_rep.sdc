###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name use_dffenable -value "0" -net -type default f_state(3) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default f_state(2) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default f_state(1) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default f_state(0) -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net nx57127z2 -design gatelevel 
set_attribute -name INFF -value "FALSE" -port -type STRING i_clock -design gatelevel 
set_attribute -name INFF -value "FALSE" -port -type STRING i_valid -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default u_memory/o_valid -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net u_memory/first_bubble_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net u_memory/nx8852z1 -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net u_memory/nx47386z6 -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem1_mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem2_mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_memory/u_mem3_mem -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_memory/u_mem1_mem/ix64056z29481 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_memory/u_mem2_mem/ix64056z29482 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_memory/u_mem3_mem/ix64056z29483 -design gatelevel 


set_attribute -name use_dffenable -value "0" -net -type default u_flow/o_dir(2) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/o_dir(1) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(3) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(2) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(1) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default u_flow/state(0) -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net u_flow/nx60988z1 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix97_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix86_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix75_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix196_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix185_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix174_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix163_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix152_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix141_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix130_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix119_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p4s_sub12_0/ix108_dup_0 -design gatelevel 

set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix97_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix86_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix75_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix64_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix174_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix163_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix152_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix141_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix130_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix119_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p21_sub10_4i2/ix108_dup_0 -design gatelevel 

set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix97_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix86_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix75_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix64_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix174_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix163_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix152_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix141_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix130_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix119_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/p22_sub10_4i4/ix108_dup_0 -design gatelevel 

set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix99_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix88_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix77_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix66_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix55_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix44_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix33_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix22_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix121_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock/ix110_dup_0 -design gatelevel 

set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix99_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix88_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix77_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix66_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix55_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix44_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix33_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix22_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix121_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance u_flow/modgen_adderblock_dup_0/ix110_dup_0 -design gatelevel 




##################
# Clocks
##################
create_clock { i_valid } -domain ClockDomain1 -name i_valid -period 2.000000 -waveform { 0.000000 1.000000 } -design gatelevel 
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 2.000000 -waveform { 0.000000 1.000000 } -design gatelevel 

