
-- 
-- Definition of  memory
-- 
--      Mon Jul 21 14:16:46 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      p_rtlc6n55 : IN std_logic ;
      p_i_reset_int : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_0_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>p_i_reset_int, 
      datac=>p_rtlc6n55);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_1 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      p_rtlc3n121 : IN std_logic ;
      p_i_valid_int : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_1_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_1_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_1_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_1_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ee0e") 
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>sclear, datac=>
      p_i_valid_int, datad=>p_rtlc3n121);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal ena1_EXMPLR353: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR353, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR353 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal ena1_EXMPLR383: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR383, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR383 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_2 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal ena1_EXMPLR413: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR413, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR413 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity memory is 
   port (
      i_valid : IN std_logic ;
      i_reset : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      i_clock : IN std_logic ;
      o_valid : OUT std_logic ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_column : OUT std_logic_vector (7 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0)) ;
end memory ;

architecture main of memory is 
   component modgen_counter_8_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         p_rtlc6n55 : IN std_logic ;
         p_i_reset_int : IN std_logic) ;
   end component ;
   component modgen_counter_8_1
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         p_rtlc3n121 : IN std_logic ;
         p_i_valid_int : IN std_logic) ;
   end component ;
   component ram_dq_8_0
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_1
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_2
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   signal i_valid_EXMPLR431, i_reset_EXMPLR432: std_logic ;
   
   signal i_pixel_EXMPLR533: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_EXMPLR441, o_valid_dup0: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_dup0_7, o_image1_1_dup0_6, o_image1_1_dup0_5, 
      o_image1_1_dup0_4, o_image1_1_dup0_3, o_image1_1_dup0_2, 
      o_image1_1_dup0_1, o_image1_1_dup0_0, o_image1_2_dup0_7, 
      o_image1_2_dup0_6, o_image1_2_dup0_5, o_image1_2_dup0_4, 
      o_image1_2_dup0_3, o_image1_2_dup0_2, o_image1_2_dup0_1, 
      o_image1_2_dup0_0: std_logic ;
   
   signal o_image2_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_dup0_7, o_image2_1_dup0_6, o_image2_1_dup0_5, 
      o_image2_1_dup0_4, o_image2_1_dup0_3, o_image2_1_dup0_2, 
      o_image2_1_dup0_1, o_image2_1_dup0_0, o_image2_2_dup0_7, 
      o_image2_2_dup0_6, o_image2_2_dup0_5, o_image2_2_dup0_4, 
      o_image2_2_dup0_3, o_image2_2_dup0_2, o_image2_2_dup0_1, 
      o_image2_2_dup0_0: std_logic ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_valid_int, i_reset_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_int, o_valid_EXMPLR442: std_logic ;
   
   signal o_mode_EXMPLR534: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_column_EXMPLR535: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_row_EXMPLR536: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR537: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR538: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR539: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR540: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR541: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR542: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR543: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR544: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR545: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal nx8852z1, nx15763z4, not_first_bubble, not_rtlc3_X_0_n252, 
      nx47386z1, nx15763z3, nx15763z2, nx16760z1: std_logic ;
   
   signal buffer2_4n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx60567z2, nx8852z2, nx33254z1, nx39109z3, nx41103z4, nx63578z4, 
      nx62359z4, nx8852z3, nx60567z1, nx5021z2, nx4024z2, nx3027z2, nx2030z2, 
      nx1033z2, nx36z2, nx64575z2, nx63578z2, nx55380z2, nx56377z2, 
      nx57374z2, nx58371z2, nx59368z2, nx60365z2, nx61362z2, nx62359z2, 
      nx41103z1, nx39109z2, nx8852z4, nx8852z6, nx8852z7, nx60567z3, 
      nx60567z4, nx60567z5, nx63578z3, nx62359z3, nx60567z6, nx41103z3, 
      nx41103z2, nx8852z5, nx57224z1, nx56227z1, nx55230z1, nx54233z1, 
      nx53236z1, nx52239z1, nx51242z1, nx50245z1, nx62359z1, nx61362z1, 
      nx60365z1, nx59368z1, nx58371z1, nx57374z1, nx56377z1, nx55380z1, 
      nx63578z1, nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, nx4024z1, 
      nx5021z1, nx30938z1, nx31935z1, nx32932z1, nx33929z1, nx34926z1, 
      nx35923z1, nx36920z1, nx37917z1, nx36073z1, nx37070z1, nx38067z1, 
      nx39064z1, nx40061z1, nx41058z1, nx42055z1, nx43052z1, nx41208z1, 
      nx42205z1, nx43202z1, nx44199z1, nx45196z1, nx46193z1, nx47190z1, 
      nx48187z1, nx4207z1, nx3210z1, nx2213z1, nx1216z1, nx219z1, nx64758z1, 
      nx63761z1, nx62764z1, nx64608z1, nx63611z1, nx62614z1, nx61617z1, 
      nx60620z1, nx59623z1, nx58626z1, nx57629z1, nx59473z1, nx58476z1, 
      nx57479z1, nx56482z1, nx55485z1, nx54488z1, nx53491z1, nx52494z1, 
      nx16335z1, nx17332z1, nx18329z1, nx19326z1, nx20323z1, nx21320z1, 
      nx22317z1, nx23314z1, nx4657z1, nx5654z1, nx6651z1, nx7648z1, nx8645z1, 
      nx9642z1, nx10639z1, nx11636z1, nx39109z1, nx15763z1: std_logic ;
   
   signal DANGLING : std_logic_vector (40 downto 0 );

begin
   i_valid_EXMPLR431 <= i_valid ;
   i_reset_EXMPLR432 <= i_reset ;
   i_pixel_EXMPLR533(7) <= i_pixel(7) ;
   i_pixel_EXMPLR533(6) <= i_pixel(6) ;
   i_pixel_EXMPLR533(5) <= i_pixel(5) ;
   i_pixel_EXMPLR533(4) <= i_pixel(4) ;
   i_pixel_EXMPLR533(3) <= i_pixel(3) ;
   i_pixel_EXMPLR533(2) <= i_pixel(2) ;
   i_pixel_EXMPLR533(1) <= i_pixel(1) ;
   i_pixel_EXMPLR533(0) <= i_pixel(0) ;
   i_clock_EXMPLR441 <= i_clock ;
   o_valid <= o_valid_EXMPLR442 ;
   o_mode(1) <= o_mode_EXMPLR534(1) ;
   o_mode(0) <= o_mode_EXMPLR534(0) ;
   o_column(7) <= o_column_EXMPLR535(7) ;
   o_column(6) <= o_column_EXMPLR535(6) ;
   o_column(5) <= o_column_EXMPLR535(5) ;
   o_column(4) <= o_column_EXMPLR535(4) ;
   o_column(3) <= o_column_EXMPLR535(3) ;
   o_column(2) <= o_column_EXMPLR535(2) ;
   o_column(1) <= o_column_EXMPLR535(1) ;
   o_column(0) <= o_column_EXMPLR535(0) ;
   o_row(7) <= o_row_EXMPLR536(7) ;
   o_row(6) <= o_row_EXMPLR536(6) ;
   o_row(5) <= o_row_EXMPLR536(5) ;
   o_row(4) <= o_row_EXMPLR536(4) ;
   o_row(3) <= o_row_EXMPLR536(3) ;
   o_row(2) <= o_row_EXMPLR536(2) ;
   o_row(1) <= o_row_EXMPLR536(1) ;
   o_row(0) <= o_row_EXMPLR536(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR537(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR537(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR537(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR537(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR537(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR537(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR537(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR537(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR538(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR538(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR538(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR538(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR538(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR538(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR538(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR538(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR539(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR539(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR539(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR539(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR539(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR539(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR539(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR539(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR540(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR540(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR540(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR540(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR540(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR540(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR540(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR540(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR541(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR541(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR541(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR541(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR541(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR541(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR541(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR541(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR542(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR542(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR542(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR542(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR542(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR542(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR542(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR542(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR543(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR543(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR543(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR543(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR543(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR543(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR543(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR543(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR544(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR544(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR544(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR544(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR544(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR544(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR544(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR544(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR545(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR545(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR545(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR545(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR545(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR545(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR545(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR545(0) ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock_int, 
      q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), 
      q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear
      =>DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx8852z1, updn=>DANGLING(12), 
      cnt_en=>not_rtlc3_X_0_n252, p_rtlc6n55=>nx8852z2, p_i_reset_int=>
      i_reset_int);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock_int, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>column(0), 
      clk_en=>DANGLING(13), aclear=>DANGLING(14), sload=>DANGLING(15), 
      data(7)=>DANGLING(16), data(6)=>DANGLING(17), data(5)=>DANGLING(18), 
      data(4)=>DANGLING(19), data(3)=>DANGLING(20), data(2)=>DANGLING(21), 
      data(1)=>DANGLING(22), data(0)=>DANGLING(23), aset=>DANGLING(24), 
      sclear=>nx47386z1, updn=>DANGLING(25), cnt_en=>first_bubble, 
      p_rtlc3n121=>nx8852z1, p_i_valid_int=>i_valid_int);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>i_pixel_int(7), 
      wr_data1(6)=>i_pixel_int(6), wr_data1(5)=>i_pixel_int(5), wr_data1(4)
      =>i_pixel_int(4), wr_data1(3)=>i_pixel_int(3), wr_data1(2)=>
      i_pixel_int(2), wr_data1(1)=>i_pixel_int(1), wr_data1(0)=>
      i_pixel_int(0), rd_data1(7)=>mem_q_0(7), rd_data1(6)=>mem_q_0(6), 
      rd_data1(5)=>mem_q_0(5), rd_data1(4)=>mem_q_0(4), rd_data1(3)=>
      mem_q_0(3), rd_data1(2)=>mem_q_0(2), rd_data1(1)=>mem_q_0(1), 
      rd_data1(0)=>mem_q_0(0), addr1(7)=>column(7), addr1(6)=>column(6), 
      addr1(5)=>column(5), addr1(4)=>column(4), addr1(3)=>column(3), 
      addr1(2)=>column(2), addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1
      =>i_clock_int, rd_clk1=>DANGLING(26), wr_ena1=>mem_wrn(0), rd_ena1=>
      DANGLING(27), ena1=>DANGLING(28), rst1=>DANGLING(29), regce1=>DANGLING
      (30));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1(7)=>i_pixel_int(7), 
      wr_data1(6)=>i_pixel_int(6), wr_data1(5)=>i_pixel_int(5), wr_data1(4)
      =>i_pixel_int(4), wr_data1(3)=>i_pixel_int(3), wr_data1(2)=>
      i_pixel_int(2), wr_data1(1)=>i_pixel_int(1), wr_data1(0)=>
      i_pixel_int(0), rd_data1(7)=>mem_q_1(7), rd_data1(6)=>mem_q_1(6), 
      rd_data1(5)=>mem_q_1(5), rd_data1(4)=>mem_q_1(4), rd_data1(3)=>
      mem_q_1(3), rd_data1(2)=>mem_q_1(2), rd_data1(1)=>mem_q_1(1), 
      rd_data1(0)=>mem_q_1(0), addr1(7)=>column(7), addr1(6)=>column(6), 
      addr1(5)=>column(5), addr1(4)=>column(4), addr1(3)=>column(3), 
      addr1(2)=>column(2), addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1
      =>i_clock_int, rd_clk1=>DANGLING(31), wr_ena1=>mem_wrn(1), rd_ena1=>
      DANGLING(32), ena1=>DANGLING(33), rst1=>DANGLING(34), regce1=>DANGLING
      (35));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1(7)=>i_pixel_int(7), 
      wr_data1(6)=>i_pixel_int(6), wr_data1(5)=>i_pixel_int(5), wr_data1(4)
      =>i_pixel_int(4), wr_data1(3)=>i_pixel_int(3), wr_data1(2)=>
      i_pixel_int(2), wr_data1(1)=>i_pixel_int(1), wr_data1(0)=>
      i_pixel_int(0), rd_data1(7)=>mem_q_2(7), rd_data1(6)=>mem_q_2(6), 
      rd_data1(5)=>mem_q_2(5), rd_data1(4)=>mem_q_2(4), rd_data1(3)=>
      mem_q_2(3), rd_data1(2)=>mem_q_2(2), rd_data1(1)=>mem_q_2(1), 
      rd_data1(0)=>mem_q_2(0), addr1(7)=>column(7), addr1(6)=>column(6), 
      addr1(5)=>column(5), addr1(4)=>column(4), addr1(3)=>column(3), 
      addr1(2)=>column(2), addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1
      =>i_clock_int, rd_clk1=>DANGLING(36), wr_ena1=>mem_wrn(2), rd_ena1=>
      DANGLING(37), ena1=>DANGLING(38), rst1=>DANGLING(39), regce1=>DANGLING
      (40));
   o_mode_dup0(1) <= NOT i_reset_int;
   not_first_bubble <= NOT first_bubble;
   reg_out_o_row_obuf_7 : cycloneii_lcell_ff port map ( regout=>nx23314z1, 
      datain=>row(7), clk=>i_clock_int);
   reg_out_o_row_obuf_6 : cycloneii_lcell_ff port map ( regout=>nx22317z1, 
      datain=>row(6), clk=>i_clock_int);
   reg_out_o_row_obuf_5 : cycloneii_lcell_ff port map ( regout=>nx21320z1, 
      datain=>row(5), clk=>i_clock_int);
   reg_out_o_row_obuf_4 : cycloneii_lcell_ff port map ( regout=>nx20323z1, 
      datain=>row(4), clk=>i_clock_int);
   reg_out_o_row_obuf_3 : cycloneii_lcell_ff port map ( regout=>nx19326z1, 
      datain=>row(3), clk=>i_clock_int);
   reg_out_o_row_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx18329z1, 
      datain=>row(2), clk=>i_clock_int);
   reg_out_o_row_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx17332z1, 
      datain=>row(1), clk=>i_clock_int);
   reg_out_o_row_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx16335z1, 
      datain=>row(0), clk=>i_clock_int);
   reg_out_o_image1_obuf_2_7 : cycloneii_lcell_ff port map ( regout=>
      nx37917z1, datain=>o_image2_2_dup0_7, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_6 : cycloneii_lcell_ff port map ( regout=>
      nx36920z1, datain=>o_image2_2_dup0_6, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_5 : cycloneii_lcell_ff port map ( regout=>
      nx35923z1, datain=>o_image2_2_dup0_5, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_4 : cycloneii_lcell_ff port map ( regout=>
      nx34926z1, datain=>o_image2_2_dup0_4, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_3 : cycloneii_lcell_ff port map ( regout=>
      nx33929z1, datain=>o_image2_2_dup0_3, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_2 : cycloneii_lcell_ff port map ( regout=>
      nx32932z1, datain=>o_image2_2_dup0_2, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_1 : cycloneii_lcell_ff port map ( regout=>
      nx31935z1, datain=>o_image2_2_dup0_1, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_2_0 : cycloneii_lcell_ff port map ( regout=>
      nx30938z1, datain=>o_image2_2_dup0_0, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_7 : cycloneii_lcell_ff port map ( regout=>
      nx43052z1, datain=>o_image2_1_dup0_7, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_6 : cycloneii_lcell_ff port map ( regout=>
      nx42055z1, datain=>o_image2_1_dup0_6, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_5 : cycloneii_lcell_ff port map ( regout=>
      nx41058z1, datain=>o_image2_1_dup0_5, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_4 : cycloneii_lcell_ff port map ( regout=>
      nx40061z1, datain=>o_image2_1_dup0_4, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_3 : cycloneii_lcell_ff port map ( regout=>
      nx39064z1, datain=>o_image2_1_dup0_3, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_2 : cycloneii_lcell_ff port map ( regout=>
      nx38067z1, datain=>o_image2_1_dup0_2, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_1 : cycloneii_lcell_ff port map ( regout=>
      nx37070z1, datain=>o_image2_1_dup0_1, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_1_0 : cycloneii_lcell_ff port map ( regout=>
      nx36073z1, datain=>o_image2_1_dup0_0, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_7 : cycloneii_lcell_ff port map ( regout=>
      nx48187z1, datain=>o_image2_dup0(7), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_6 : cycloneii_lcell_ff port map ( regout=>
      nx47190z1, datain=>o_image2_dup0(6), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_5 : cycloneii_lcell_ff port map ( regout=>
      nx46193z1, datain=>o_image2_dup0(5), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_4 : cycloneii_lcell_ff port map ( regout=>
      nx45196z1, datain=>o_image2_dup0(4), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_3 : cycloneii_lcell_ff port map ( regout=>
      nx44199z1, datain=>o_image2_dup0(3), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_2 : cycloneii_lcell_ff port map ( regout=>
      nx43202z1, datain=>o_image2_dup0(2), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_1 : cycloneii_lcell_ff port map ( regout=>
      nx42205z1, datain=>o_image2_dup0(1), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image1_obuf_0_0 : cycloneii_lcell_ff port map ( regout=>
      nx41208z1, datain=>o_image2_dup0(0), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_7 : cycloneii_lcell_ff port map ( regout=>
      nx62764z1, datain=>o_image1_2_dup0_7, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_6 : cycloneii_lcell_ff port map ( regout=>
      nx63761z1, datain=>o_image1_2_dup0_6, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_5 : cycloneii_lcell_ff port map ( regout=>
      nx64758z1, datain=>o_image1_2_dup0_5, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_4 : cycloneii_lcell_ff port map ( regout=>nx219z1, 
      datain=>o_image1_2_dup0_4, clk=>i_clock_int, ena=>first_bubble);
   reg_out_o_image0_obuf_2_3 : cycloneii_lcell_ff port map ( regout=>
      nx1216z1, datain=>o_image1_2_dup0_3, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_2 : cycloneii_lcell_ff port map ( regout=>
      nx2213z1, datain=>o_image1_2_dup0_2, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_1 : cycloneii_lcell_ff port map ( regout=>
      nx3210z1, datain=>o_image1_2_dup0_1, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_2_0 : cycloneii_lcell_ff port map ( regout=>
      nx4207z1, datain=>o_image1_2_dup0_0, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_7 : cycloneii_lcell_ff port map ( regout=>
      nx57629z1, datain=>o_image1_1_dup0_7, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_6 : cycloneii_lcell_ff port map ( regout=>
      nx58626z1, datain=>o_image1_1_dup0_6, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_5 : cycloneii_lcell_ff port map ( regout=>
      nx59623z1, datain=>o_image1_1_dup0_5, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_4 : cycloneii_lcell_ff port map ( regout=>
      nx60620z1, datain=>o_image1_1_dup0_4, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_3 : cycloneii_lcell_ff port map ( regout=>
      nx61617z1, datain=>o_image1_1_dup0_3, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_2 : cycloneii_lcell_ff port map ( regout=>
      nx62614z1, datain=>o_image1_1_dup0_2, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_1 : cycloneii_lcell_ff port map ( regout=>
      nx63611z1, datain=>o_image1_1_dup0_1, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_1_0 : cycloneii_lcell_ff port map ( regout=>
      nx64608z1, datain=>o_image1_1_dup0_0, clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_7 : cycloneii_lcell_ff port map ( regout=>
      nx52494z1, datain=>o_image1_dup0(7), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_6 : cycloneii_lcell_ff port map ( regout=>
      nx53491z1, datain=>o_image1_dup0(6), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_5 : cycloneii_lcell_ff port map ( regout=>
      nx54488z1, datain=>o_image1_dup0(5), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_4 : cycloneii_lcell_ff port map ( regout=>
      nx55485z1, datain=>o_image1_dup0(4), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_3 : cycloneii_lcell_ff port map ( regout=>
      nx56482z1, datain=>o_image1_dup0(3), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_2 : cycloneii_lcell_ff port map ( regout=>
      nx57479z1, datain=>o_image1_dup0(2), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_1 : cycloneii_lcell_ff port map ( regout=>
      nx58476z1, datain=>o_image1_dup0(1), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_image0_obuf_0_0 : cycloneii_lcell_ff port map ( regout=>
      nx59473z1, datain=>o_image1_dup0(0), clk=>i_clock_int, ena=>
      first_bubble);
   reg_out_o_column_obuf_7 : cycloneii_lcell_ff port map ( regout=>nx11636z1, 
      datain=>column(7), clk=>i_clock_int);
   reg_out_o_column_obuf_6 : cycloneii_lcell_ff port map ( regout=>nx10639z1, 
      datain=>column(6), clk=>i_clock_int);
   reg_out_o_column_obuf_5 : cycloneii_lcell_ff port map ( regout=>nx9642z1, 
      datain=>column(5), clk=>i_clock_int);
   reg_out_o_column_obuf_4 : cycloneii_lcell_ff port map ( regout=>nx8645z1, 
      datain=>column(4), clk=>i_clock_int);
   reg_out_o_column_obuf_3 : cycloneii_lcell_ff port map ( regout=>nx7648z1, 
      datain=>column(3), clk=>i_clock_int);
   reg_out_o_column_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx6651z1, 
      datain=>column(2), clk=>i_clock_int);
   reg_out_o_column_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx5654z1, 
      datain=>column(1), clk=>i_clock_int);
   reg_out_o_column_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx4657z1, 
      datain=>column(0), clk=>i_clock_int);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_dup0, datain
      =>nx60567z1, clk=>i_clock_int, sclr=>not_first_bubble);
   reg_mem_wrn_current_2 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current(1), clk=>i_clock_int, ena
      =>nx41103z1, sclr=>nx41103z4);
   reg_mem_wrn_current_1 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>i_clock_int, ena
      =>nx41103z1, sclr=>nx41103z4);
   nx39109z1 <= '1';
   reg_mem_wrn_current_0 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current(2), sdata=>nx39109z1, clk
      =>i_clock_int, ena=>nx39109z2, sclr=>nx8852z1, sload=>nx39109z3);
   reg_mem_wrn_2 : cycloneii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>mem_wrn_current(2), clk=>i_clock_int, sclr=>nx16760z1);
   reg_mem_wrn_1 : cycloneii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>mem_wrn_current(1), clk=>i_clock_int, sclr=>nx16760z1);
   nx15763z1 <= '1';
   reg_mem_wrn_0 : cycloneii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>mem_wrn_current(0), sdata=>nx15763z1, clk=>i_clock_int, sclr=>
      nx15763z2, sload=>nx15763z3);
   reg_in_i_valid_ibuf : cycloneii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid_int, clk=>i_clock_int);
   reg_busySignalDelayed : cycloneii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>i_clock_int);
   reg_busySignal : cycloneii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>i_clock_int, sclr=>nx8852z2);
   reg_buffer2_2_7 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_7, 
      datain=>nx57224z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_6 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_6, 
      datain=>nx56227z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_5 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_5, 
      datain=>nx55230z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_4 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_4, 
      datain=>nx54233z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_3 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_3, 
      datain=>nx53236z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_2 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_2, 
      datain=>nx52239z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_1 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_1, 
      datain=>nx51242z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_2_0 : cycloneii_lcell_ff port map ( regout=>o_image2_2_dup0_0, 
      datain=>nx50245z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_7 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_7, 
      datain=>nx62359z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_6 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_6, 
      datain=>nx61362z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_5 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_5, 
      datain=>nx60365z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_4 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_4, 
      datain=>nx59368z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_3 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_3, 
      datain=>nx58371z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_2 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_2, 
      datain=>nx57374z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_1 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_1, 
      datain=>nx56377z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_1_0 : cycloneii_lcell_ff port map ( regout=>o_image2_1_dup0_0, 
      datain=>nx55380z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_7 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(7), 
      datain=>nx63578z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_6 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(6), 
      datain=>nx64575z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_5 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(5), 
      datain=>nx36z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_4 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(4), 
      datain=>nx1033z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_3 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(3), 
      datain=>nx2030z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_2 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(2), 
      datain=>nx3027z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_1 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(1), 
      datain=>nx4024z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer2_0_0 : cycloneii_lcell_ff port map ( regout=>o_image2_dup0(0), 
      datain=>nx5021z1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_7 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_7, 
      datain=>o_image2_2_dup0_7, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_6 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_6, 
      datain=>o_image2_2_dup0_6, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_5 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_5, 
      datain=>o_image2_2_dup0_5, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_4 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_4, 
      datain=>o_image2_2_dup0_4, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_3 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_3, 
      datain=>o_image2_2_dup0_3, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_2 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_2, 
      datain=>o_image2_2_dup0_2, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_1 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_1, 
      datain=>o_image2_2_dup0_1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_2_0 : cycloneii_lcell_ff port map ( regout=>o_image1_2_dup0_0, 
      datain=>o_image2_2_dup0_0, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_7 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_7, 
      datain=>o_image2_1_dup0_7, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_6 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_6, 
      datain=>o_image2_1_dup0_6, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_5 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_5, 
      datain=>o_image2_1_dup0_5, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_4 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_4, 
      datain=>o_image2_1_dup0_4, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_3 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_3, 
      datain=>o_image2_1_dup0_3, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_2 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_2, 
      datain=>o_image2_1_dup0_2, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_1 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_1, 
      datain=>o_image2_1_dup0_1, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_1_0 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_0, 
      datain=>o_image2_1_dup0_0, clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_7 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(7), 
      datain=>o_image2_dup0(7), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_6 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(6), 
      datain=>o_image2_dup0(6), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_5 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(5), 
      datain=>o_image2_dup0(5), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_4 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(4), 
      datain=>o_image2_dup0(4), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_3 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(3), 
      datain=>o_image2_dup0(3), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_2 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(2), 
      datain=>o_image2_dup0(2), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_1 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(1), 
      datain=>o_image2_dup0(1), clk=>i_clock_int, ena=>first_bubble);
   reg_buffer1_0_0 : cycloneii_lcell_ff port map ( regout=>o_image1_dup0(0), 
      datain=>o_image2_dup0(0), clk=>i_clock_int, ena=>first_bubble);
   o_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR442, datain=>o_valid_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR534(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR534(0), datain=>o_mode_dup0(0));
   o_image2_obuf_2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(7), datain=>o_image2_2_dup0_7
   );
   o_image2_obuf_2_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(6), datain=>o_image2_2_dup0_6
   );
   o_image2_obuf_2_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(5), datain=>o_image2_2_dup0_5
   );
   o_image2_obuf_2_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(4), datain=>o_image2_2_dup0_4
   );
   o_image2_obuf_2_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(3), datain=>o_image2_2_dup0_3
   );
   o_image2_obuf_2_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(2), datain=>o_image2_2_dup0_2
   );
   o_image2_obuf_2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(1), datain=>o_image2_2_dup0_1
   );
   o_image2_obuf_2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR545(0), datain=>o_image2_2_dup0_0
   );
   o_image2_obuf_1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(7), datain=>o_image2_1_dup0_7
   );
   o_image2_obuf_1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(6), datain=>o_image2_1_dup0_6
   );
   o_image2_obuf_1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(5), datain=>o_image2_1_dup0_5
   );
   o_image2_obuf_1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(4), datain=>o_image2_1_dup0_4
   );
   o_image2_obuf_1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(3), datain=>o_image2_1_dup0_3
   );
   o_image2_obuf_1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(2), datain=>o_image2_1_dup0_2
   );
   o_image2_obuf_1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(1), datain=>o_image2_1_dup0_1
   );
   o_image2_obuf_1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR544(0), datain=>o_image2_1_dup0_0
   );
   o_image2_obuf_0_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(7), datain=>o_image2_dup0(7));
   o_image2_obuf_0_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(6), datain=>o_image2_dup0(6));
   o_image2_obuf_0_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(5), datain=>o_image2_dup0(5));
   o_image2_obuf_0_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(4), datain=>o_image2_dup0(4));
   o_image2_obuf_0_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(3), datain=>o_image2_dup0(3));
   o_image2_obuf_0_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(2), datain=>o_image2_dup0(2));
   o_image2_obuf_0_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(1), datain=>o_image2_dup0(1));
   o_image2_obuf_0_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR543(0), datain=>o_image2_dup0(0));
   ix13876z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR431);
   ix11636z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(7), datain=>nx11636z1);
   ix5021z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx5021z1, datab=>nx5021z2, datac=>mem_q_0(0), 
      datad=>nx63578z4);
   ix10639z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(6), datain=>nx10639z1);
   ix9642z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(5), datain=>nx9642z1);
   ix8645z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(4), datain=>nx8645z1);
   ix7648z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(3), datain=>nx7648z1);
   ix6651z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(2), datain=>nx6651z1);
   ix5654z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(1), datain=>nx5654z1);
   ix4024z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx4024z1, datab=>nx4024z2, datac=>mem_q_0(1), 
      datad=>nx63578z4);
   ix4657z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR535(0), datain=>nx4657z1);
   ix23314z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(7), datain=>nx23314z1);
   ix22317z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(6), datain=>nx22317z1);
   ix21320z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(5), datain=>nx21320z1);
   ix20323z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(4), datain=>nx20323z1);
   ix19326z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(3), datain=>nx19326z1);
   ix18329z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(2), datain=>nx18329z1);
   ix3027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx3027z1, datab=>nx3027z2, datac=>mem_q_0(2), 
      datad=>nx63578z4);
   ix2030z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx2030z1, datab=>nx2030z2, datac=>mem_q_0(3), 
      datad=>nx63578z4);
   ix17332z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(1), datain=>nx17332z1);
   ix1033z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx1033z1, datab=>nx1033z2, datac=>mem_q_0(4), 
      datad=>nx63578z4);
   ix16335z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR536(0), datain=>nx16335z1);
   ix36z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx36z1, datab=>nx36z2, datac=>mem_q_0(5), datad=>
      nx63578z4);
   ix52494z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(7), datain=>nx52494z1);
   ix53491z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(6), datain=>nx53491z1);
   ix54488z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(5), datain=>nx54488z1);
   ix55485z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(4), datain=>nx55485z1);
   ix64575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx64575z1, datab=>nx64575z2, datac=>mem_q_0(6), 
      datad=>nx63578z4);
   ix56482z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(3), datain=>nx56482z1);
   ix57479z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(2), datain=>nx57479z1);
   ix58476z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(1), datain=>nx58476z1);
   ix59473z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR537(0), datain=>nx59473z1);
   ix57629z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(7), datain=>nx57629z1);
   ix58626z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(6), datain=>nx58626z1);
   ix59623z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(5), datain=>nx59623z1);
   ix63578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx63578z1, datab=>nx63578z2, datac=>mem_q_0(7), 
      datad=>nx63578z4);
   ix60620z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(4), datain=>nx60620z1);
   ix61617z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(3), datain=>nx61617z1);
   ix62614z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(2), datain=>nx62614z1);
   ix63611z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(1), datain=>nx63611z1);
   ix64608z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR538(0), datain=>nx64608z1);
   ix62764z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(7), datain=>nx62764z1);
   ix55380z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx55380z1, datab=>nx55380z2, datac=>mem_q_1(0), 
      datad=>nx62359z4);
   ix63761z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(6), datain=>nx63761z1);
   ix64758z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(5), datain=>nx64758z1);
   ix219z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(4), datain=>nx219z1);
   ix1216z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(3), datain=>nx1216z1);
   ix2213z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(2), datain=>nx2213z1);
   ix3210z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(1), datain=>nx3210z1);
   ix4207z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR539(0), datain=>nx4207z1);
   ix56377z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx56377z1, datab=>nx56377z2, datac=>mem_q_1(1), 
      datad=>nx62359z4);
   ix48187z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(7), datain=>nx48187z1);
   ix47190z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(6), datain=>nx47190z1);
   ix46193z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(5), datain=>nx46193z1);
   ix45196z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(4), datain=>nx45196z1);
   ix44199z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(3), datain=>nx44199z1);
   ix43202z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(2), datain=>nx43202z1);
   ix42205z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(1), datain=>nx42205z1);
   ix57374z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx57374z1, datab=>nx57374z2, datac=>mem_q_1(2), 
      datad=>nx62359z4);
   ix41208z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR540(0), datain=>nx41208z1);
   ix43052z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(7), datain=>nx43052z1);
   ix42055z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(6), datain=>nx42055z1);
   ix41058z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(5), datain=>nx41058z1);
   ix40061z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(4), datain=>nx40061z1);
   ix39064z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(3), datain=>nx39064z1);
   ix58371z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx58371z1, datab=>nx58371z2, datac=>mem_q_1(3), 
      datad=>nx62359z4);
   ix38067z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(2), datain=>nx38067z1);
   ix37070z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(1), datain=>nx37070z1);
   ix36073z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR541(0), datain=>nx36073z1);
   ix37917z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(7), datain=>nx37917z1);
   ix36920z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(6), datain=>nx36920z1);
   ix35923z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(5), datain=>nx35923z1);
   ix34926z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(4), datain=>nx34926z1);
   ix59368z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx59368z1, datab=>nx59368z2, datac=>mem_q_1(4), 
      datad=>nx62359z4);
   ix33929z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(3), datain=>nx33929z1);
   ix32932z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(2), datain=>nx32932z1);
   ix31935z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(1), datain=>nx31935z1);
   ix30938z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR542(0), datain=>nx30938z1);
   ix60365z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx60365z1, datab=>nx60365z2, datac=>mem_q_1(5), 
      datad=>nx62359z4);
   ix61362z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx61362z1, datab=>nx61362z2, datac=>mem_q_1(6), 
      datad=>nx62359z4);
   ix62359z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx62359z1, datab=>nx62359z2, datac=>mem_q_1(7), 
      datad=>nx62359z4);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR432);
   i_pixel_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR533(7));
   i_pixel_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR533(6));
   i_pixel_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR533(5));
   i_pixel_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR533(4));
   i_pixel_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR533(3));
   i_pixel_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR533(2));
   i_pixel_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR533(1));
   i_pixel_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR533(0));
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR441);
   ix8852z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx8852z5, dataa=>column(3), datab=>column(2));
   ix41103z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"01ff") 
       port map ( combout=>nx41103z2, dataa=>mem_wrn_current(2), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(0), datad=>i_valid_int);
   ix41103z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0707") 
       port map ( combout=>nx41103z3, dataa=>first_bubble, datab=>nx8852z3, 
      datac=>i_valid_int);
   ix60567z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z6, dataa=>column(3), datab=>column(2), 
      datac=>column(1));
   ix62359z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d5d5") 
       port map ( combout=>nx62359z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx63578z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix60567z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx60567z5, dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>nx60567z2);
   ix60567z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx60567z4, dataa=>o_valid_dup0, datab=>column(7), 
      datac=>nx60567z2);
   ix60567z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z3, dataa=>row(4), datab=>row(3), datac=>
      row(2), datad=>row(1));
   ix8852z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z7, dataa=>row(3), datab=>row(2), datac=>
      row(1), datad=>row(0));
   ix8852z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z6, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>row(4));
   ix8852z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z4, dataa=>column(7), datab=>column(6), 
      datac=>column(5), datad=>column(4));
   ix39109z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"efee") 
       port map ( combout=>nx39109z2, dataa=>nx8852z2, datab=>i_reset_int, 
      datac=>nx41103z3, datad=>nx41103z2);
   ix62359z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx62359z2, dataa=>buffer2_4n2ss1(7), datab=>
      mem_q_2(7), datac=>nx62359z3);
   ix61362z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx61362z2, dataa=>buffer2_4n2ss1(6), datab=>
      mem_q_2(6), datac=>nx62359z3);
   ix60365z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx60365z2, dataa=>buffer2_4n2ss1(5), datab=>
      mem_q_2(5), datac=>nx62359z3);
   ix59368z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx59368z2, dataa=>buffer2_4n2ss1(4), datab=>
      mem_q_2(4), datac=>nx62359z3);
   ix58371z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx58371z2, dataa=>buffer2_4n2ss1(3), datab=>
      mem_q_2(3), datac=>nx62359z3);
   ix57374z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx57374z2, dataa=>buffer2_4n2ss1(2), datab=>
      mem_q_2(2), datac=>nx62359z3);
   ix56377z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx56377z2, dataa=>buffer2_4n2ss1(1), datab=>
      mem_q_2(1), datac=>nx62359z3);
   ix55380z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx55380z2, dataa=>buffer2_4n2ss1(0), datab=>
      mem_q_2(0), datac=>nx62359z3);
   ix63578z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx63578z2, dataa=>buffer2_4n2ss1(7), datab=>
      mem_q_2(7), datac=>nx63578z3);
   ix64575z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx64575z2, dataa=>buffer2_4n2ss1(6), datab=>
      mem_q_2(6), datac=>nx63578z3);
   ix36z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx36z2, dataa=>buffer2_4n2ss1(5), datab=>
      mem_q_2(5), datac=>nx63578z3);
   ix1033z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx1033z2, dataa=>buffer2_4n2ss1(4), datab=>
      mem_q_2(4), datac=>nx63578z3);
   ix2030z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx2030z2, dataa=>buffer2_4n2ss1(3), datab=>
      mem_q_2(3), datac=>nx63578z3);
   ix3027z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx3027z2, dataa=>buffer2_4n2ss1(2), datab=>
      mem_q_2(2), datac=>nx63578z3);
   ix4024z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx4024z2, dataa=>buffer2_4n2ss1(1), datab=>
      mem_q_2(1), datac=>nx63578z3);
   ix5021z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx5021z2, dataa=>buffer2_4n2ss1(0), datab=>
      mem_q_2(0), datac=>nx63578z3);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefc") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>nx60567z4, 
      datac=>nx60567z5, datad=>nx60567z6);
   ix8852z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z3, dataa=>column(1), datab=>column(0), 
      datac=>nx8852z4, datad=>nx8852z5);
   ix62359z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>nx62359z4, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"1313") 
       port map ( combout=>nx63578z4, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix41103z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"aeaa") 
       port map ( combout=>nx41103z4, dataa=>nx8852z1, datab=>i_valid_int, 
      datac=>nx41103z3, datad=>nx41103z2);
   ix33254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx33254z1, dataa=>busySignal, datab=>i_valid_int
   );
   ix8852z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z2, dataa=>first_bubble, datab=>nx8852z3, 
      datac=>nx8852z6, datad=>nx8852z7);
   ix60567z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z2, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>nx60567z3);
   ix5021z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(0), dataa=>nx60567z2, datab=>
      mem_q_1(0), datac=>i_pixel_int(0));
   ix4024z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(1), dataa=>nx60567z2, datab=>
      mem_q_1(1), datac=>i_pixel_int(1));
   ix3027z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(2), dataa=>nx60567z2, datab=>
      mem_q_1(2), datac=>i_pixel_int(2));
   ix2030z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(3), dataa=>nx60567z2, datab=>
      mem_q_1(3), datac=>i_pixel_int(3));
   ix1033z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(4), dataa=>nx60567z2, datab=>
      mem_q_1(4), datac=>i_pixel_int(4));
   ix36z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(5), dataa=>nx60567z2, datab=>
      mem_q_1(5), datac=>i_pixel_int(5));
   ix64575z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(6), dataa=>nx60567z2, datab=>
      mem_q_1(6), datac=>i_pixel_int(6));
   ix63578z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1(7), dataa=>nx60567z2, datab=>
      mem_q_1(7), datac=>i_pixel_int(7));
   ix15763z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0010") 
       port map ( combout=>nx15763z3, dataa=>nx15763z4, datab=>nx8852z2, 
      datac=>i_valid_int, datad=>i_reset_int);
   ix8852z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>not_rtlc3_X_0_n252, dataa=>first_bubble, datab=>
      nx8852z3, datac=>i_valid_int);
   ix15763z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx15763z4, dataa=>mem_wrn_current(2), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(0));
   ix8852z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx8852z1, dataa=>nx8852z2, datab=>i_reset_int);
   ix47893z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>o_mode_dup0(0), dataa=>busySignal, datab=>
      busySignalDelayed, datac=>i_valid_int, datad=>i_reset_int);
   ix50245z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx50245z1, dataa=>i_pixel_int(0), datab=>
      mem_q_2(0), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix51242z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx51242z1, dataa=>i_pixel_int(1), datab=>
      mem_q_2(1), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix52239z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx52239z1, dataa=>i_pixel_int(2), datab=>
      mem_q_2(2), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix53236z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx53236z1, dataa=>i_pixel_int(3), datab=>
      mem_q_2(3), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix54233z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx54233z1, dataa=>i_pixel_int(4), datab=>
      mem_q_2(4), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix55230z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx55230z1, dataa=>i_pixel_int(5), datab=>
      mem_q_2(5), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix56227z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx56227z1, dataa=>i_pixel_int(6), datab=>
      mem_q_2(6), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix57224z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaac") 
       port map ( combout=>nx57224z1, dataa=>i_pixel_int(7), datab=>
      mem_q_2(7), datac=>nx60567z2, datad=>mem_wrn_current(2));
   ix39109z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx39109z3, dataa=>i_valid_int, datab=>
      mem_wrn_current(0), datac=>mem_wrn_current(1), datad=>
      mem_wrn_current(2));
   ix41103z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff2") 
       port map ( combout=>nx41103z1, dataa=>nx41103z2, datab=>nx41103z3, 
      datac=>i_reset_int, datad=>nx8852z2);
   ix16760z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx16760z1, dataa=>nx41103z2, datab=>i_reset_int, 
      datac=>nx8852z2);
   ix15763z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdfd") 
       port map ( combout=>nx15763z2, dataa=>i_valid_int, datab=>i_reset_int, 
      datac=>nx8852z2);
   ix47386z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx47386z1, dataa=>nx8852z3, datab=>first_bubble, 
      datac=>i_reset_int, datad=>nx8852z2);
end main ;

