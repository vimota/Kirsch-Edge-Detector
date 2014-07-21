
-- 
-- Definition of  kirsch
-- 
--      Mon Jul 21 14:05:07 2014
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
      p_i_reset : IN std_logic ;
      p_rtlc6n55 : IN std_logic) ;
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
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>p_rtlc6n55, 
      datac=>p_i_reset);
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
      cnt_en : IN std_logic) ;
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
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx57253z3, dataa=>clk_en, datab=>sclear, datac=>
      cnt_en);
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
   signal ena1_EXMPLR563: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR563, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR563 <= '1';
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
   signal ena1_EXMPLR593: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR593, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR593 <= '1';
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
   signal ena1_EXMPLR623: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR623, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR623 <= '1';
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
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      p_first_bubble : IN std_logic) ;
end memory ;

architecture main_unfold_1492 of memory is 
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
         p_i_reset : IN std_logic ;
         p_rtlc6n55 : IN std_logic) ;
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
         cnt_en : IN std_logic) ;
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
   signal o_valid_EXMPLR639: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR727: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR728: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR729: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR730: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR731: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR732: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc0n0: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx8852z1, not_first_bubble, not_rtlc3_X_0_n252, nx47386z2, 
      nx15763z2, nx17757z1, buffer2_4n2ss1_1, buffer2_4n2ss1_0, nx60567z2, 
      nx8852z2, nx33254z1, nx57224z1, nx39109z3, nx40106z1, nx8852z3, 
      nx60567z1, b_1, b_1_dup_354, nx47386z1, nx5021z1, nx4024z1, nx3027z1, 
      nx2030z1, nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, nx56377z1, 
      nx57374z1, nx58371z1, nx59368z1, nx60365z1, nx61362z1, nx62359z1, 
      nx39109z2, nx3027z2, nx2030z2, nx1033z2, nx36z2, nx64575z2, nx63578z2, 
      nx55380z2, nx8852z4, nx8852z6, nx8852z7, nx60567z3, nx55380z3, 
      nx55380z4, nx60567z4, nx60567z5, nx63578z4, nx62359z2, nx60567z6, 
      nx17757z2, nx8852z5, nx39109z1, nx15763z1, nx63578z3, nx64575z3, 
      nx36z3, nx1033z3, nx2030z3, nx3027z3, nx4024z2, nx5021z2: std_logic ;
   
   signal DANGLING : std_logic_vector (39 downto 0 );

begin
   o_valid <= o_valid_EXMPLR639 ;
   o_image1_0(7) <= o_image1_0_EXMPLR727(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR727(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR727(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR727(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR727(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR727(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR727(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR727(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR728(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR728(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR728(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR728(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR728(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR728(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR728(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR728(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR729(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR729(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR729(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR729(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR729(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR729(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR729(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR729(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR730(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR730(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR730(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR730(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR730(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR730(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR730(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR730(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR731(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR731(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR731(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR731(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR731(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR731(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR731(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR731(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR732(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR732(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR732(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR732(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR732(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR732(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR732(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR732(0) ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock, q(7)=>
      row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), q(2)=>
      row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx8852z1, updn=>DANGLING(12), 
      cnt_en=>not_rtlc3_X_0_n252, p_i_reset=>i_reset, p_rtlc6n55=>nx8852z2);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>column(0), 
      clk_en=>nx47386z1, aclear=>DANGLING(13), sload=>DANGLING(14), data(7)
      =>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), data(4)
      =>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), data(1)
      =>DANGLING(21), data(0)=>DANGLING(22), aset=>DANGLING(23), sclear=>
      nx47386z2, updn=>DANGLING(24), cnt_en=>p_first_bubble);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1=>rtlc0n0, rd_data1(7)=>
      mem_q_0(7), rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), 
      rd_data1(4)=>mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>
      mem_q_0(2), rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)
      =>column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(25
      ), wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(26), ena1=>DANGLING(27), 
      rst1=>DANGLING(28), regce1=>DANGLING(29));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1=>rtlc0n0, rd_data1(7)=>
      mem_q_1(7), rd_data1(6)=>mem_q_1(6), rd_data1(5)=>mem_q_1(5), 
      rd_data1(4)=>mem_q_1(4), rd_data1(3)=>mem_q_1(3), rd_data1(2)=>
      mem_q_1(2), rd_data1(1)=>mem_q_1(1), rd_data1(0)=>mem_q_1(0), addr1(7)
      =>column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(30
      ), wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(31), ena1=>DANGLING(32), 
      rst1=>DANGLING(33), regce1=>DANGLING(34));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1=>rtlc0n0, rd_data1(7)=>
      mem_q_2(7), rd_data1(6)=>mem_q_2(6), rd_data1(5)=>mem_q_2(5), 
      rd_data1(4)=>mem_q_2(4), rd_data1(3)=>mem_q_2(3), rd_data1(2)=>
      mem_q_2(2), rd_data1(1)=>mem_q_2(1), rd_data1(0)=>mem_q_2(0), addr1(7)
      =>column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(35
      ), wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(36), ena1=>DANGLING(37), 
      rst1=>DANGLING(38), regce1=>DANGLING(39));
   o_mode(1) <= NOT i_reset;
   not_first_bubble <= NOT p_first_bubble;
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_EXMPLR639, 
      datain=>nx60567z1, clk=>i_clock, sclr=>not_first_bubble);
   reg_o_row_7 : cycloneii_lcell_ff port map ( regout=>o_row(7), datain=>
      row(7), clk=>i_clock);
   reg_o_row_6 : cycloneii_lcell_ff port map ( regout=>o_row(6), datain=>
      row(6), clk=>i_clock);
   reg_o_row_5 : cycloneii_lcell_ff port map ( regout=>o_row(5), datain=>
      row(5), clk=>i_clock);
   reg_o_row_4 : cycloneii_lcell_ff port map ( regout=>o_row(4), datain=>
      row(4), clk=>i_clock);
   reg_o_row_3 : cycloneii_lcell_ff port map ( regout=>o_row(3), datain=>
      row(3), clk=>i_clock);
   reg_o_row_2 : cycloneii_lcell_ff port map ( regout=>o_row(2), datain=>
      row(2), clk=>i_clock);
   reg_o_row_1 : cycloneii_lcell_ff port map ( regout=>o_row(1), datain=>
      row(1), clk=>i_clock);
   reg_o_row_0 : cycloneii_lcell_ff port map ( regout=>o_row(0), datain=>
      row(0), clk=>i_clock);
   reg_mem_wrn_current_2 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current(1), clk=>i_clock, ena=>
      nx39109z2, sclr=>nx40106z1);
   reg_mem_wrn_current_1 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>i_clock, ena=>
      nx39109z2, sclr=>nx40106z1);
   nx39109z1 <= '1';
   reg_mem_wrn_current_0 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current(2), sdata=>nx39109z1, clk
      =>i_clock, ena=>nx39109z2, sclr=>nx8852z1, sload=>nx39109z3);
   reg_mem_wrn_2 : cycloneii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>mem_wrn_current(2), clk=>i_clock, sclr=>nx17757z1);
   reg_mem_wrn_1 : cycloneii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>mem_wrn_current(1), clk=>i_clock, sclr=>nx17757z1);
   nx15763z1 <= '1';
   reg_mem_wrn_0 : cycloneii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>mem_wrn_current(0), sdata=>nx15763z1, clk=>i_clock, sclr=>nx47386z1, 
      sload=>nx15763z2);
   reg_busySignalDelayed : cycloneii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>i_clock);
   reg_busySignal : cycloneii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>i_clock, sclr=>nx8852z2);
   reg_buffer2_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(7), datain=>mem_q_2(7), sdata=>rtlc0n0(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(6), datain=>mem_q_2(6), sdata=>rtlc0n0(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(5), datain=>mem_q_2(5), sdata=>rtlc0n0(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(4), datain=>mem_q_2(4), sdata=>rtlc0n0(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(3), datain=>mem_q_2(3), sdata=>rtlc0n0(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(2), datain=>mem_q_2(2), sdata=>rtlc0n0(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(1), datain=>mem_q_2(1), sdata=>rtlc0n0(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR732(0), datain=>mem_q_2(0), sdata=>rtlc0n0(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(7), datain=>nx62359z1, sdata=>mem_q_1(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(6), datain=>nx61362z1, sdata=>mem_q_1(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(5), datain=>nx60365z1, sdata=>mem_q_1(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(4), datain=>nx59368z1, sdata=>mem_q_1(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(3), datain=>nx58371z1, sdata=>mem_q_1(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(2), datain=>nx57374z1, sdata=>mem_q_1(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(1), datain=>nx56377z1, sdata=>mem_q_1(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_1_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR731(0), datain=>nx55380z1, sdata=>mem_q_1(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_354);
   reg_buffer2_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(7), datain=>nx63578z1, sdata=>mem_q_0(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(6), datain=>nx64575z1, sdata=>mem_q_0(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(5), datain=>nx36z1, sdata=>mem_q_0(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(4), datain=>nx1033z1, sdata=>mem_q_0(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(3), datain=>nx2030z1, sdata=>mem_q_0(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(2), datain=>nx3027z1, sdata=>mem_q_0(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(1), datain=>nx4024z1, sdata=>mem_q_0(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR730(0), datain=>nx5021z1, sdata=>mem_q_0(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer1_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(7), datain=>o_image2_2_EXMPLR732(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(6), datain=>o_image2_2_EXMPLR732(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(5), datain=>o_image2_2_EXMPLR732(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(4), datain=>o_image2_2_EXMPLR732(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(3), datain=>o_image2_2_EXMPLR732(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(2), datain=>o_image2_2_EXMPLR732(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(1), datain=>o_image2_2_EXMPLR732(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR729(0), datain=>o_image2_2_EXMPLR732(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(7), datain=>o_image2_1_EXMPLR731(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(6), datain=>o_image2_1_EXMPLR731(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(5), datain=>o_image2_1_EXMPLR731(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(4), datain=>o_image2_1_EXMPLR731(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(3), datain=>o_image2_1_EXMPLR731(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(2), datain=>o_image2_1_EXMPLR731(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(1), datain=>o_image2_1_EXMPLR731(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR728(0), datain=>o_image2_1_EXMPLR731(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(7), datain=>o_image2_0_EXMPLR730(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(6), datain=>o_image2_0_EXMPLR730(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(5), datain=>o_image2_0_EXMPLR730(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(4), datain=>o_image2_0_EXMPLR730(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(3), datain=>o_image2_0_EXMPLR730(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(2), datain=>o_image2_0_EXMPLR730(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(1), datain=>o_image2_0_EXMPLR730(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR727(0), datain=>o_image2_0_EXMPLR730(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer0_2_7 : cycloneii_lcell_ff port map ( regout=>o_image0_2(7), 
      datain=>o_image1_2_EXMPLR729(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_6 : cycloneii_lcell_ff port map ( regout=>o_image0_2(6), 
      datain=>o_image1_2_EXMPLR729(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_5 : cycloneii_lcell_ff port map ( regout=>o_image0_2(5), 
      datain=>o_image1_2_EXMPLR729(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_4 : cycloneii_lcell_ff port map ( regout=>o_image0_2(4), 
      datain=>o_image1_2_EXMPLR729(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_3 : cycloneii_lcell_ff port map ( regout=>o_image0_2(3), 
      datain=>o_image1_2_EXMPLR729(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_2 : cycloneii_lcell_ff port map ( regout=>o_image0_2(2), 
      datain=>o_image1_2_EXMPLR729(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_1 : cycloneii_lcell_ff port map ( regout=>o_image0_2(1), 
      datain=>o_image1_2_EXMPLR729(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_0 : cycloneii_lcell_ff port map ( regout=>o_image0_2(0), 
      datain=>o_image1_2_EXMPLR729(0), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_7 : cycloneii_lcell_ff port map ( regout=>o_image0_1(7), 
      datain=>o_image1_1_EXMPLR728(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_6 : cycloneii_lcell_ff port map ( regout=>o_image0_1(6), 
      datain=>o_image1_1_EXMPLR728(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_5 : cycloneii_lcell_ff port map ( regout=>o_image0_1(5), 
      datain=>o_image1_1_EXMPLR728(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_4 : cycloneii_lcell_ff port map ( regout=>o_image0_1(4), 
      datain=>o_image1_1_EXMPLR728(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_3 : cycloneii_lcell_ff port map ( regout=>o_image0_1(3), 
      datain=>o_image1_1_EXMPLR728(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_2 : cycloneii_lcell_ff port map ( regout=>o_image0_1(2), 
      datain=>o_image1_1_EXMPLR728(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_1 : cycloneii_lcell_ff port map ( regout=>o_image0_1(1), 
      datain=>o_image1_1_EXMPLR728(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_0 : cycloneii_lcell_ff port map ( regout=>o_image0_1(0), 
      datain=>o_image1_1_EXMPLR728(0), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_7 : cycloneii_lcell_ff port map ( regout=>o_image0_0(7), 
      datain=>o_image1_0_EXMPLR727(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_6 : cycloneii_lcell_ff port map ( regout=>o_image0_0(6), 
      datain=>o_image1_0_EXMPLR727(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_5 : cycloneii_lcell_ff port map ( regout=>o_image0_0(5), 
      datain=>o_image1_0_EXMPLR727(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_4 : cycloneii_lcell_ff port map ( regout=>o_image0_0(4), 
      datain=>o_image1_0_EXMPLR727(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_3 : cycloneii_lcell_ff port map ( regout=>o_image0_0(3), 
      datain=>o_image1_0_EXMPLR727(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_2 : cycloneii_lcell_ff port map ( regout=>o_image0_0(2), 
      datain=>o_image1_0_EXMPLR727(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_1 : cycloneii_lcell_ff port map ( regout=>o_image0_0(1), 
      datain=>o_image1_0_EXMPLR727(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_0 : cycloneii_lcell_ff port map ( regout=>o_image0_0(0), 
      datain=>o_image1_0_EXMPLR727(0), clk=>i_clock, ena=>p_first_bubble);
   ix8852z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx8852z5, dataa=>column(3), datab=>column(2));
   ix17757z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx17757z2, dataa=>mem_wrn_current(2), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(0));
   ix60567z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z6, dataa=>column(3), datab=>column(2), 
      datac=>column(1));
   ix62359z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d5d5") 
       port map ( combout=>nx62359z2, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx63578z4, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix60567z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx60567z5, dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>nx60567z2);
   ix60567z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx60567z4, dataa=>o_valid_EXMPLR639, datab=>
      column(7), datac=>nx60567z2);
   ix55380z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx55380z4, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2, datad=>mem_q_1(0));
   ix55380z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"7250") 
       port map ( combout=>nx55380z3, dataa=>mem_wrn_current(1), datab=>
      nx60567z2, datac=>mem_q_2(0), datad=>rtlc0n0(0));
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
   ix55380z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx55380z2, dataa=>mem_wrn_current(0), datab=>
      nx60567z2);
   ix39109z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx39109z2, dataa=>i_reset, datab=>
      not_rtlc3_X_0_n252, datac=>nx8852z2, datad=>nx39109z3);
   ix62359z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx62359z1, dataa=>mem_q_2(7), datab=>nx63578z2, 
      datac=>nx62359z2);
   ix61362z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx61362z1, dataa=>mem_q_2(6), datab=>nx64575z2, 
      datac=>nx62359z2);
   ix60365z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx60365z1, dataa=>mem_q_2(5), datab=>nx36z2, 
      datac=>nx62359z2);
   ix59368z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx59368z1, dataa=>mem_q_2(4), datab=>nx1033z2, 
      datac=>nx62359z2);
   ix58371z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx58371z1, dataa=>mem_q_2(3), datab=>nx2030z2, 
      datac=>nx62359z2);
   ix57374z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx57374z1, dataa=>mem_q_2(2), datab=>nx3027z2, 
      datac=>nx62359z2);
   ix56377z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx56377z1, dataa=>buffer2_4n2ss1_1, datab=>
      mem_q_2(1), datac=>nx62359z2);
   ix55380z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff2") 
       port map ( combout=>nx55380z1, dataa=>mem_q_2(0), datab=>nx55380z2, 
      datac=>nx55380z3, datad=>nx55380z4);
   ix63578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx63578z1, dataa=>mem_q_2(7), datab=>nx63578z2, 
      datac=>nx63578z4);
   ix64575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx64575z1, dataa=>mem_q_2(6), datab=>nx64575z2, 
      datac=>nx63578z4);
   ix36z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx36z1, dataa=>mem_q_2(5), datab=>nx36z2, datac=>
      nx63578z4);
   ix1033z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx1033z1, dataa=>mem_q_2(4), datab=>nx1033z2, 
      datac=>nx63578z4);
   ix2030z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx2030z1, dataa=>mem_q_2(3), datab=>nx2030z2, 
      datac=>nx63578z4);
   ix3027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx3027z1, dataa=>mem_q_2(2), datab=>nx3027z2, 
      datac=>nx63578z4);
   ix4024z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx4024z1, dataa=>buffer2_4n2ss1_1, datab=>
      mem_q_2(1), datac=>nx63578z4);
   ix5021z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx5021z1, dataa=>buffer2_4n2ss1_0, datab=>
      mem_q_2(0), datac=>nx63578z4);
   ix47386z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdfd") 
       port map ( combout=>nx47386z1, dataa=>i_valid, datab=>i_reset, datac
      =>nx8852z2);
   ix62359z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>b_1_dup_354, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1313") 
       port map ( combout=>b_1, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefc") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>nx60567z4, 
      datac=>nx60567z5, datad=>nx60567z6);
   ix8852z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z3, dataa=>column(1), datab=>column(0), 
      datac=>nx8852z4, datad=>nx8852z5);
   ix40106z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx40106z1, dataa=>i_reset, datab=>nx8852z2, datac
      =>nx39109z3);
   ix39109z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx39109z3, dataa=>i_valid, datab=>
      mem_wrn_current(2), datac=>mem_wrn_current(1), datad=>
      mem_wrn_current(0));
   ix57224z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx57224z1, dataa=>mem_wrn_current(2), datab=>
      nx60567z2);
   ix33254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx33254z1, dataa=>i_valid, datab=>busySignal);
   ix8852z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z2, dataa=>p_first_bubble, datab=>nx8852z3, 
      datac=>nx8852z6, datad=>nx8852z7);
   ix60567z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z2, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>nx60567z3);
   ix17757z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffd") 
       port map ( combout=>nx17757z1, dataa=>i_valid, datab=>i_reset, datac
      =>nx8852z2, datad=>nx17757z2);
   ix15763z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1010") 
       port map ( combout=>nx15763z2, dataa=>i_reset, datab=>nx8852z2, datac
      =>nx39109z3);
   ix47386z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx47386z2, dataa=>i_reset, datab=>p_first_bubble, 
      datac=>nx8852z3);
   ix8852z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>not_rtlc3_X_0_n252, dataa=>i_valid, datab=>
      p_first_bubble, datac=>nx8852z3);
   ix8852z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx8852z1, dataa=>i_reset, datab=>nx8852z2);
   ix36864z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(0), dataa=>i_valid, datab=>i_pixel(0), 
      datac=>rtlc0n0(0));
   ix36864z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(1), dataa=>i_valid, datab=>i_pixel(1), 
      datac=>rtlc0n0(1));
   ix36864z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(2), dataa=>i_valid, datab=>i_pixel(2), 
      datac=>rtlc0n0(2));
   ix36864z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(3), dataa=>i_valid, datab=>i_pixel(3), 
      datac=>rtlc0n0(3));
   ix36864z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(4), dataa=>i_valid, datab=>i_pixel(4), 
      datac=>rtlc0n0(4));
   ix36864z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(5), dataa=>i_valid, datab=>i_pixel(5), 
      datac=>rtlc0n0(5));
   ix36864z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(6), dataa=>i_valid, datab=>i_pixel(6), 
      datac=>rtlc0n0(6));
   ix36864z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>rtlc0n0(7), dataa=>i_valid, datab=>i_pixel(7), 
      datac=>rtlc0n0(7));
   ix15976z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>o_mode(0), dataa=>i_valid, datab=>i_reset, datac
      =>busySignal, datad=>busySignalDelayed);
   ix1364_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx63578z3, dataa=>i_valid, datab=>i_pixel(7), 
      datac=>rtlc0n0(7));
   ix63578z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx63578z2, dataa=>nx60567z2, datab=>mem_q_1(7), 
      datac=>nx63578z3);
   ix1362_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx64575z3, dataa=>i_valid, datab=>i_pixel(6), 
      datac=>rtlc0n0(6));
   ix64575z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx64575z2, dataa=>nx60567z2, datab=>mem_q_1(6), 
      datac=>nx64575z3);
   ix1360_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx36z3, dataa=>i_valid, datab=>i_pixel(5), datac
      =>rtlc0n0(5));
   ix36z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx36z2, dataa=>nx60567z2, datab=>mem_q_1(5), 
      datac=>nx36z3);
   ix1358_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx1033z3, dataa=>i_valid, datab=>i_pixel(4), 
      datac=>rtlc0n0(4));
   ix1033z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx1033z2, dataa=>nx60567z2, datab=>mem_q_1(4), 
      datac=>nx1033z3);
   ix1356_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx2030z3, dataa=>i_valid, datab=>i_pixel(3), 
      datac=>rtlc0n0(3));
   ix2030z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx2030z2, dataa=>nx60567z2, datab=>mem_q_1(3), 
      datac=>nx2030z3);
   ix1354_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx3027z3, dataa=>i_valid, datab=>i_pixel(2), 
      datac=>rtlc0n0(2));
   ix3027z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx3027z2, dataa=>nx60567z2, datab=>mem_q_1(2), 
      datac=>nx3027z3);
   ix1352_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx4024z2, dataa=>i_valid, datab=>i_pixel(1), 
      datac=>rtlc0n0(1));
   ix4024z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1_1, dataa=>nx60567z2, datab=>
      mem_q_1(1), datac=>nx4024z2);
   ix1350_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx5021z2, dataa=>i_valid, datab=>i_pixel(0), 
      datac=>rtlc0n0(0));
   ix5021z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>buffer2_4n2ss1_0, dataa=>nx60567z2, datab=>
      mem_q_1(0), datac=>nx5021z2);
end main_unfold_1492 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_6 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_7 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_8 : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component memory
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
         o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
         p_first_bubble : IN std_logic) ;
   end component ;
   signal i_clock_EXMPLR747, i_reset_EXMPLR748, i_valid_EXMPLR749: std_logic
    ;
   
   signal i_pixel_EXMPLR942: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0: std_logic ;
   
   signal debug_num_8_EXMPLR943: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal m_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal m_o_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_valid: std_logic ;
   
   signal f_t1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_mode_next: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_image0_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_dup0_7, o_image0_1_dup0_6, o_image0_1_dup0_5, 
      o_image0_1_dup0_4, o_image0_1_dup0_3, o_image0_1_dup0_2, 
      o_image0_1_dup0_1, o_image0_1_dup0_0, o_image0_2_dup0_7, 
      o_image0_2_dup0_6, o_image0_2_dup0_5, o_image0_2_dup0_4, 
      o_image0_2_dup0_3, o_image0_2_dup0_2, o_image0_2_dup0_1, 
      o_image0_2_dup0_0: std_logic ;
   
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
      o_image2_2_dup0_0, u_flow_p40: std_logic ;
   
   signal u_flow_p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_flow_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal nx35265z1, nx30130z1, nx45613z1, nx34268z1, nx29133z1, nx44616z1, 
      nx33271z1, nx28136z1, nx43619z1, nx32274z1, nx27139z1, nx42622z1, 
      nx31277z1, nx26142z1, nx41625z1, nx30280z1, nx25145z1, nx40628z1, 
      nx29283z1, nx24148z1, nx39631z1, nx28286z1, nx23151z1, nx38634z1, 
      nx10063z1, nx4928z1, nx65329z1, nx9066z1, nx3931z1, nx64332z1, 
      nx61281z1, nx62278z1, i_clock_int, i_reset_int, i_valid_int: std_logic
    ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR766, o_edge_EXMPLR767: std_logic ;
   
   signal o_dir_EXMPLR944: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR945: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR946: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR947: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR948: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR949: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR950: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR951: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR952: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR953: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR954: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR955: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR956: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR957: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_valid_EXMPLR877: std_logic ;
   
   signal debug_num_0_EXMPLR958: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR959: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR960: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR961: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR962: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR963: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR964: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_7_EXMPLR965: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_valid_dup0: std_logic ;
   
   signal debug_num_0_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_1_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_2_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_3_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_4_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_6_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_7_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_dup0: std_logic_vector (2 DOWNTO 2) ;
   
   signal nx57127z1, nx36102z1, nx60284z1, nx64956z1, nx54514z1, 
      first_bubble, nx30938z1, nx31935z1, nx32932z1, nx33929z1, nx34926z1, 
      nx35923z1, nx36920z1, nx37917z1, nx36073z1, nx37070z1, nx38067z1, 
      nx39064z1, nx40061z1, nx41058z1, nx42055z1, nx43052z1, nx41208z1, 
      nx42205z1, nx43202z1, nx44199z1, nx45196z1, nx46193z1, nx47190z1, 
      nx48187z1, nx4207z1, nx3210z1, nx2213z1, nx1216z1, nx219z1, nx64758z1, 
      nx63761z1, nx62764z1, nx64608z1, nx63611z1, nx62614z1, nx61617z1, 
      nx60620z1, nx59623z1, nx58626z1, nx57629z1, nx59473z1, nx58476z1, 
      nx57479z1, nx56482z1, nx55485z1, nx54488z1, nx53491z1, nx52494z1, 
      nx16335z1, nx17332z1, nx18329z1, nx19326z1, nx20323z1, nx21320z1, 
      nx22317z1, nx23314z1, nx63959z1, NOT_f_state_3, nx55511z1, 
      NOT_u_flow_state_3: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   i_clock_EXMPLR747 <= i_clock ;
   i_reset_EXMPLR748 <= i_reset ;
   i_valid_EXMPLR749 <= i_valid ;
   i_pixel_EXMPLR942(7) <= i_pixel(7) ;
   i_pixel_EXMPLR942(6) <= i_pixel(6) ;
   i_pixel_EXMPLR942(5) <= i_pixel(5) ;
   i_pixel_EXMPLR942(4) <= i_pixel(4) ;
   i_pixel_EXMPLR942(3) <= i_pixel(3) ;
   i_pixel_EXMPLR942(2) <= i_pixel(2) ;
   i_pixel_EXMPLR942(1) <= i_pixel(1) ;
   i_pixel_EXMPLR942(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR766 ;
   o_edge <= o_edge_EXMPLR767 ;
   o_dir(2) <= o_dir_EXMPLR944(2) ;
   o_dir(1) <= o_dir_EXMPLR944(1) ;
   o_dir(0) <= o_dir_EXMPLR944(0) ;
   o_mode(1) <= o_mode_EXMPLR945(1) ;
   o_mode(0) <= o_mode_EXMPLR945(0) ;
   o_row(7) <= o_row_EXMPLR946(7) ;
   o_row(6) <= o_row_EXMPLR946(6) ;
   o_row(5) <= o_row_EXMPLR946(5) ;
   o_row(4) <= o_row_EXMPLR946(4) ;
   o_row(3) <= o_row_EXMPLR946(3) ;
   o_row(2) <= o_row_EXMPLR946(2) ;
   o_row(1) <= o_row_EXMPLR946(1) ;
   o_row(0) <= o_row_EXMPLR946(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR947(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR947(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR947(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR947(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR947(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR947(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR947(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR947(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR948(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR948(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR948(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR948(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR948(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR948(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR948(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR948(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR949(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR949(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR949(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR949(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR949(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR949(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR949(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR949(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR950(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR950(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR950(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR950(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR950(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR950(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR950(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR950(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR951(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR951(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR951(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR951(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR951(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR951(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR951(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR951(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR952(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR952(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR952(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR952(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR952(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR952(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR952(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR952(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR953(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR953(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR953(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR953(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR953(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR953(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR953(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR953(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR954(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR954(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR954(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR954(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR954(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR954(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR954(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR954(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR955(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR955(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR955(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR955(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR955(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR955(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR955(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR955(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR956(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR956(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR956(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR956(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR956(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR956(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR956(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR956(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR956(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR956(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR956(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR956(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR956(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR956(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR956(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR956(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR956(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR956(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR957(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR957(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR957(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR957(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR957(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR957(0) ;
   debug_valid <= debug_valid_EXMPLR877 ;
   debug_num_0(7) <= debug_num_0_EXMPLR958(7) ;
   debug_num_0(6) <= debug_num_0_EXMPLR958(6) ;
   debug_num_0(5) <= debug_num_0_EXMPLR958(5) ;
   debug_num_0(4) <= debug_num_0_EXMPLR958(4) ;
   debug_num_0(3) <= debug_num_0_EXMPLR958(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR958(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR958(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR958(0) ;
   debug_num_1(7) <= debug_num_1_EXMPLR959(7) ;
   debug_num_1(6) <= debug_num_1_EXMPLR959(6) ;
   debug_num_1(5) <= debug_num_1_EXMPLR959(5) ;
   debug_num_1(4) <= debug_num_1_EXMPLR959(4) ;
   debug_num_1(3) <= debug_num_1_EXMPLR959(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR959(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR959(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR959(0) ;
   debug_num_2(7) <= debug_num_2_EXMPLR960(7) ;
   debug_num_2(6) <= debug_num_2_EXMPLR960(6) ;
   debug_num_2(5) <= debug_num_2_EXMPLR960(5) ;
   debug_num_2(4) <= debug_num_2_EXMPLR960(4) ;
   debug_num_2(3) <= debug_num_2_EXMPLR960(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR960(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR960(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR960(0) ;
   debug_num_3(7) <= debug_num_3_EXMPLR961(7) ;
   debug_num_3(6) <= debug_num_3_EXMPLR961(6) ;
   debug_num_3(5) <= debug_num_3_EXMPLR961(5) ;
   debug_num_3(4) <= debug_num_3_EXMPLR961(4) ;
   debug_num_3(3) <= debug_num_3_EXMPLR961(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR961(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR961(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR961(0) ;
   debug_num_4(7) <= debug_num_4_EXMPLR962(7) ;
   debug_num_4(6) <= debug_num_4_EXMPLR962(6) ;
   debug_num_4(5) <= debug_num_4_EXMPLR962(5) ;
   debug_num_4(4) <= debug_num_4_EXMPLR962(4) ;
   debug_num_4(3) <= debug_num_4_EXMPLR962(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR962(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR962(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR962(0) ;
   debug_num_5(7) <= debug_num_5_EXMPLR963(7) ;
   debug_num_5(6) <= debug_num_5_EXMPLR963(6) ;
   debug_num_5(5) <= debug_num_5_EXMPLR963(5) ;
   debug_num_5(4) <= debug_num_5_EXMPLR963(4) ;
   debug_num_5(3) <= debug_num_5_EXMPLR963(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR963(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR963(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR963(0) ;
   debug_num_6(7) <= debug_num_6_EXMPLR964(7) ;
   debug_num_6(6) <= debug_num_6_EXMPLR964(6) ;
   debug_num_6(5) <= debug_num_6_EXMPLR964(5) ;
   debug_num_6(4) <= debug_num_6_EXMPLR964(4) ;
   debug_num_6(3) <= debug_num_6_EXMPLR964(3) ;
   debug_num_6(2) <= debug_num_6_EXMPLR964(2) ;
   debug_num_6(1) <= debug_num_6_EXMPLR964(1) ;
   debug_num_6(0) <= debug_num_6_EXMPLR964(0) ;
   debug_num_7(7) <= debug_num_7_EXMPLR965(7) ;
   debug_num_7(6) <= debug_num_7_EXMPLR965(6) ;
   debug_num_7(5) <= debug_num_7_EXMPLR965(5) ;
   debug_num_7(4) <= debug_num_7_EXMPLR965(4) ;
   debug_num_7(3) <= debug_num_7_EXMPLR965(3) ;
   debug_num_7(2) <= debug_num_7_EXMPLR965(2) ;
   debug_num_7(1) <= debug_num_7_EXMPLR965(1) ;
   debug_num_7(0) <= debug_num_7_EXMPLR965(0) ;
   debug_num_8(7) <= debug_num_8_EXMPLR943(7) ;
   debug_num_8(6) <= debug_num_8_EXMPLR943(6) ;
   debug_num_8(5) <= debug_num_8_EXMPLR943(5) ;
   debug_num_8(4) <= debug_num_8_EXMPLR943(4) ;
   debug_num_8(3) <= debug_num_8_EXMPLR943(3) ;
   debug_num_8(2) <= debug_num_8_EXMPLR943(2) ;
   debug_num_8(1) <= debug_num_8_EXMPLR943(1) ;
   debug_num_8(0) <= debug_num_8_EXMPLR943(0) ;
   u_memory : memory port map ( i_valid=>i_valid_int, i_reset=>i_reset_int, 
      i_pixel(7)=>i_pixel_int(7), i_pixel(6)=>i_pixel_int(6), i_pixel(5)=>
      i_pixel_int(5), i_pixel(4)=>i_pixel_int(4), i_pixel(3)=>i_pixel_int(3), 
      i_pixel(2)=>i_pixel_int(2), i_pixel(1)=>i_pixel_int(1), i_pixel(0)=>
      i_pixel_int(0), i_clock=>i_clock_int, o_valid=>m_o_valid, o_mode(1)=>
      m_o_mode(1), o_mode(0)=>m_o_mode(0), o_column(7)=>DANGLING(0), 
      o_column(6)=>DANGLING(1), o_column(5)=>DANGLING(2), o_column(4)=>
      DANGLING(3), o_column(3)=>DANGLING(4), o_column(2)=>DANGLING(5), 
      o_column(1)=>DANGLING(6), o_column(0)=>DANGLING(7), o_row(7)=>
      m_o_row(7), o_row(6)=>m_o_row(6), o_row(5)=>m_o_row(5), o_row(4)=>
      m_o_row(4), o_row(3)=>m_o_row(3), o_row(2)=>m_o_row(2), o_row(1)=>
      m_o_row(1), o_row(0)=>m_o_row(0), o_image0_0(7)=>o_image0_dup0(7), 
      o_image0_0(6)=>o_image0_dup0(6), o_image0_0(5)=>o_image0_dup0(5), 
      o_image0_0(4)=>o_image0_dup0(4), o_image0_0(3)=>o_image0_dup0(3), 
      o_image0_0(2)=>o_image0_dup0(2), o_image0_0(1)=>o_image0_dup0(1), 
      o_image0_0(0)=>o_image0_dup0(0), o_image0_1(7)=>o_image0_1_dup0_7, 
      o_image0_1(6)=>o_image0_1_dup0_6, o_image0_1(5)=>o_image0_1_dup0_5, 
      o_image0_1(4)=>o_image0_1_dup0_4, o_image0_1(3)=>o_image0_1_dup0_3, 
      o_image0_1(2)=>o_image0_1_dup0_2, o_image0_1(1)=>o_image0_1_dup0_1, 
      o_image0_1(0)=>o_image0_1_dup0_0, o_image0_2(7)=>o_image0_2_dup0_7, 
      o_image0_2(6)=>o_image0_2_dup0_6, o_image0_2(5)=>o_image0_2_dup0_5, 
      o_image0_2(4)=>o_image0_2_dup0_4, o_image0_2(3)=>o_image0_2_dup0_3, 
      o_image0_2(2)=>o_image0_2_dup0_2, o_image0_2(1)=>o_image0_2_dup0_1, 
      o_image0_2(0)=>o_image0_2_dup0_0, o_image1_0(7)=>o_image1_dup0(7), 
      o_image1_0(6)=>o_image1_dup0(6), o_image1_0(5)=>o_image1_dup0(5), 
      o_image1_0(4)=>o_image1_dup0(4), o_image1_0(3)=>o_image1_dup0(3), 
      o_image1_0(2)=>o_image1_dup0(2), o_image1_0(1)=>o_image1_dup0(1), 
      o_image1_0(0)=>o_image1_dup0(0), o_image1_1(7)=>o_image1_1_dup0_7, 
      o_image1_1(6)=>o_image1_1_dup0_6, o_image1_1(5)=>o_image1_1_dup0_5, 
      o_image1_1(4)=>o_image1_1_dup0_4, o_image1_1(3)=>o_image1_1_dup0_3, 
      o_image1_1(2)=>o_image1_1_dup0_2, o_image1_1(1)=>o_image1_1_dup0_1, 
      o_image1_1(0)=>o_image1_1_dup0_0, o_image1_2(7)=>o_image1_2_dup0_7, 
      o_image1_2(6)=>o_image1_2_dup0_6, o_image1_2(5)=>o_image1_2_dup0_5, 
      o_image1_2(4)=>o_image1_2_dup0_4, o_image1_2(3)=>o_image1_2_dup0_3, 
      o_image1_2(2)=>o_image1_2_dup0_2, o_image1_2(1)=>o_image1_2_dup0_1, 
      o_image1_2(0)=>o_image1_2_dup0_0, o_image2_0(7)=>o_image2_dup0(7), 
      o_image2_0(6)=>o_image2_dup0(6), o_image2_0(5)=>o_image2_dup0(5), 
      o_image2_0(4)=>o_image2_dup0(4), o_image2_0(3)=>o_image2_dup0(3), 
      o_image2_0(2)=>o_image2_dup0(2), o_image2_0(1)=>o_image2_dup0(1), 
      o_image2_0(0)=>o_image2_dup0(0), o_image2_1(7)=>o_image2_1_dup0_7, 
      o_image2_1(6)=>o_image2_1_dup0_6, o_image2_1(5)=>o_image2_1_dup0_5, 
      o_image2_1(4)=>o_image2_1_dup0_4, o_image2_1(3)=>o_image2_1_dup0_3, 
      o_image2_1(2)=>o_image2_1_dup0_2, o_image2_1(1)=>o_image2_1_dup0_1, 
      o_image2_1(0)=>o_image2_1_dup0_0, o_image2_2(7)=>o_image2_2_dup0_7, 
      o_image2_2(6)=>o_image2_2_dup0_6, o_image2_2(5)=>o_image2_2_dup0_5, 
      o_image2_2(4)=>o_image2_2_dup0_4, o_image2_2(3)=>o_image2_2_dup0_3, 
      o_image2_2(2)=>o_image2_2_dup0_2, o_image2_2(1)=>o_image2_2_dup0_1, 
      o_image2_2(0)=>o_image2_2_dup0_0, p_first_bubble=>first_bubble);
   o_mode_dup0(1) <= NOT i_reset_int;
   debug_led_red_dup0(2) <= '0';
   f_state(0) <= NOT nx63959z1;
   NOT_f_state_3 <= NOT f_state(3);
   u_flow_state(0) <= NOT nx55511z1;
   NOT_u_flow_state_3 <= NOT u_flow_state(3);
   u_flow_reg_state_3 : cycloneii_lcell_ff port map ( regout=>
      u_flow_state(3), datain=>u_flow_state(2), clk=>i_clock_int, ena=>
      nx54514z1, sclr=>i_reset_int);
   u_flow_reg_state_2 : cycloneii_lcell_ff port map ( regout=>
      u_flow_state(2), datain=>u_flow_state(1), clk=>i_clock_int, ena=>
      nx54514z1, sclr=>i_reset_int);
   u_flow_reg_state_1 : cycloneii_lcell_ff port map ( regout=>
      u_flow_state(1), datain=>u_flow_state(0), clk=>i_clock_int, ena=>
      nx54514z1, sclr=>i_reset_int);
   u_flow_reg_state_0 : cycloneii_lcell_ff port map ( regout=>nx55511z1, 
      datain=>NOT_u_flow_state_3, clk=>i_clock_int, ena=>nx54514z1, sclr=>
      i_reset_int);
   u_flow_reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_dup0, 
      datain=>u_flow_state(3), clk=>i_clock_int, sclr=>i_reset_int);
   u_flow_ix15_reg_p40 : cycloneii_lcell_ff port map ( regout=>u_flow_p40, 
      datain=>nx62278z1, clk=>i_clock_int);
   u_flow_ix15_reg_p30 : cycloneii_lcell_ff port map ( regout=>nx62278z1, 
      datain=>nx61281z1, clk=>i_clock_int);
   u_flow_ix15_reg_p20 : cycloneii_lcell_ff port map ( regout=>nx61281z1, 
      datain=>debug_valid_dup0, clk=>i_clock_int);
   u_flow_ix14_reg_p5m_1 : cycloneii_lcell_ff port map ( regout=>
      u_flow_p5m(1), datain=>nx65329z1, clk=>i_clock_int);
   u_flow_ix14_reg_p5m_0 : cycloneii_lcell_ff port map ( regout=>
      u_flow_p5m(0), datain=>nx64332z1, clk=>i_clock_int);
   u_flow_ix14_reg_p4m_1 : cycloneii_lcell_ff port map ( regout=>nx65329z1, 
      datain=>nx4928z1, clk=>i_clock_int);
   u_flow_ix14_reg_p4m_0 : cycloneii_lcell_ff port map ( regout=>nx64332z1, 
      datain=>nx3931z1, clk=>i_clock_int);
   u_flow_ix14_reg_p3m_1 : cycloneii_lcell_ff port map ( regout=>nx4928z1, 
      datain=>nx10063z1, clk=>i_clock_int);
   u_flow_ix14_reg_p3m_0 : cycloneii_lcell_ff port map ( regout=>nx3931z1, 
      datain=>nx9066z1, clk=>i_clock_int);
   u_flow_ix14_reg_p2m_1 : cycloneii_lcell_ff port map ( regout=>nx10063z1, 
      datain=>f_i_mode(1), clk=>i_clock_int);
   u_flow_ix14_reg_p2m_0 : cycloneii_lcell_ff port map ( regout=>nx9066z1, 
      datain=>f_i_mode(0), clk=>i_clock_int);
   u_flow_ix13_reg_p4r_7 : cycloneii_lcell_ff port map ( regout=>nx45613z1, 
      datain=>nx30130z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_6 : cycloneii_lcell_ff port map ( regout=>nx44616z1, 
      datain=>nx29133z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_5 : cycloneii_lcell_ff port map ( regout=>nx43619z1, 
      datain=>nx28136z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_4 : cycloneii_lcell_ff port map ( regout=>nx42622z1, 
      datain=>nx27139z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_3 : cycloneii_lcell_ff port map ( regout=>nx41625z1, 
      datain=>nx26142z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_2 : cycloneii_lcell_ff port map ( regout=>nx40628z1, 
      datain=>nx25145z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_1 : cycloneii_lcell_ff port map ( regout=>nx39631z1, 
      datain=>nx24148z1, clk=>i_clock_int);
   u_flow_ix13_reg_p4r_0 : cycloneii_lcell_ff port map ( regout=>nx38634z1, 
      datain=>nx23151z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_7 : cycloneii_lcell_ff port map ( regout=>nx30130z1, 
      datain=>nx35265z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_6 : cycloneii_lcell_ff port map ( regout=>nx29133z1, 
      datain=>nx34268z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_5 : cycloneii_lcell_ff port map ( regout=>nx28136z1, 
      datain=>nx33271z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_4 : cycloneii_lcell_ff port map ( regout=>nx27139z1, 
      datain=>nx32274z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_3 : cycloneii_lcell_ff port map ( regout=>nx26142z1, 
      datain=>nx31277z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_2 : cycloneii_lcell_ff port map ( regout=>nx25145z1, 
      datain=>nx30280z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_1 : cycloneii_lcell_ff port map ( regout=>nx24148z1, 
      datain=>nx29283z1, clk=>i_clock_int);
   u_flow_ix13_reg_p3r_0 : cycloneii_lcell_ff port map ( regout=>nx23151z1, 
      datain=>nx28286z1, clk=>i_clock_int);
   u_flow_ix13_reg_p2r_7 : cycloneii_lcell_ff port map ( regout=>nx35265z1, 
      datain=>f_i_row(7), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_6 : cycloneii_lcell_ff port map ( regout=>nx34268z1, 
      datain=>f_i_row(6), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_5 : cycloneii_lcell_ff port map ( regout=>nx33271z1, 
      datain=>f_i_row(5), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_4 : cycloneii_lcell_ff port map ( regout=>nx32274z1, 
      datain=>f_i_row(4), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_3 : cycloneii_lcell_ff port map ( regout=>nx31277z1, 
      datain=>f_i_row(3), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_2 : cycloneii_lcell_ff port map ( regout=>nx30280z1, 
      datain=>f_i_row(2), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_1 : cycloneii_lcell_ff port map ( regout=>nx29283z1, 
      datain=>f_i_row(1), clk=>i_clock_int);
   u_flow_ix13_reg_p2r_0 : cycloneii_lcell_ff port map ( regout=>nx28286z1, 
      datain=>f_i_row(0), clk=>i_clock_int);
   reg_out_o_row_obuf_7 : cycloneii_lcell_ff port map ( regout=>nx23314z1, 
      datain=>nx45613z1, clk=>i_clock_int);
   reg_out_o_row_obuf_6 : cycloneii_lcell_ff port map ( regout=>nx22317z1, 
      datain=>nx44616z1, clk=>i_clock_int);
   reg_out_o_row_obuf_5 : cycloneii_lcell_ff port map ( regout=>nx21320z1, 
      datain=>nx43619z1, clk=>i_clock_int);
   reg_out_o_row_obuf_4 : cycloneii_lcell_ff port map ( regout=>nx20323z1, 
      datain=>nx42622z1, clk=>i_clock_int);
   reg_out_o_row_obuf_3 : cycloneii_lcell_ff port map ( regout=>nx19326z1, 
      datain=>nx41625z1, clk=>i_clock_int);
   reg_out_o_row_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx18329z1, 
      datain=>nx40628z1, clk=>i_clock_int);
   reg_out_o_row_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx17332z1, 
      datain=>nx39631z1, clk=>i_clock_int);
   reg_out_o_row_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx16335z1, 
      datain=>nx38634z1, clk=>i_clock_int);
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
   reg_in_i_valid_ibuf : cycloneii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid_int, clk=>i_clock_int);
   reg_f_t3_next_7 : cycloneii_lcell_ff port map ( regout=>f_t3_next(7), 
      datain=>f_i1_next(7), sdata=>o_image1_dup0(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_6 : cycloneii_lcell_ff port map ( regout=>f_t3_next(6), 
      datain=>f_i1_next(6), sdata=>o_image1_dup0(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_5 : cycloneii_lcell_ff port map ( regout=>f_t3_next(5), 
      datain=>f_i1_next(5), sdata=>o_image1_dup0(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_4 : cycloneii_lcell_ff port map ( regout=>f_t3_next(4), 
      datain=>f_i1_next(4), sdata=>o_image1_dup0(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_3 : cycloneii_lcell_ff port map ( regout=>f_t3_next(3), 
      datain=>f_i1_next(3), sdata=>o_image1_dup0(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_2 : cycloneii_lcell_ff port map ( regout=>f_t3_next(2), 
      datain=>f_i1_next(2), sdata=>o_image1_dup0(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_1 : cycloneii_lcell_ff port map ( regout=>f_t3_next(1), 
      datain=>f_i1_next(1), sdata=>o_image1_dup0(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t3_next_0 : cycloneii_lcell_ff port map ( regout=>f_t3_next(0), 
      datain=>f_i1_next(0), sdata=>o_image1_dup0(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_7 : cycloneii_lcell_ff port map ( regout=>f_t2_next(7), 
      datain=>f_t3_next(7), sdata=>o_image0_dup0(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_6 : cycloneii_lcell_ff port map ( regout=>f_t2_next(6), 
      datain=>f_t3_next(6), sdata=>o_image0_dup0(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_5 : cycloneii_lcell_ff port map ( regout=>f_t2_next(5), 
      datain=>f_t3_next(5), sdata=>o_image0_dup0(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_4 : cycloneii_lcell_ff port map ( regout=>f_t2_next(4), 
      datain=>f_t3_next(4), sdata=>o_image0_dup0(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_3 : cycloneii_lcell_ff port map ( regout=>f_t2_next(3), 
      datain=>f_t3_next(3), sdata=>o_image0_dup0(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_2 : cycloneii_lcell_ff port map ( regout=>f_t2_next(2), 
      datain=>f_t3_next(2), sdata=>o_image0_dup0(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_1 : cycloneii_lcell_ff port map ( regout=>f_t2_next(1), 
      datain=>f_t3_next(1), sdata=>o_image0_dup0(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t2_next_0 : cycloneii_lcell_ff port map ( regout=>f_t2_next(0), 
      datain=>f_t3_next(0), sdata=>o_image0_dup0(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_7 : cycloneii_lcell_ff port map ( regout=>f_t1_next(7), 
      datain=>f_t2_next(7), sdata=>o_image0_1_dup0_7, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_6 : cycloneii_lcell_ff port map ( regout=>f_t1_next(6), 
      datain=>f_t2_next(6), sdata=>o_image0_1_dup0_6, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_5 : cycloneii_lcell_ff port map ( regout=>f_t1_next(5), 
      datain=>f_t2_next(5), sdata=>o_image0_1_dup0_5, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_4 : cycloneii_lcell_ff port map ( regout=>f_t1_next(4), 
      datain=>f_t2_next(4), sdata=>o_image0_1_dup0_4, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_3 : cycloneii_lcell_ff port map ( regout=>f_t1_next(3), 
      datain=>f_t2_next(3), sdata=>o_image0_1_dup0_3, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_2 : cycloneii_lcell_ff port map ( regout=>f_t1_next(2), 
      datain=>f_t2_next(2), sdata=>o_image0_1_dup0_2, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_1 : cycloneii_lcell_ff port map ( regout=>f_t1_next(1), 
      datain=>f_t2_next(1), sdata=>o_image0_1_dup0_1, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_t1_next_0 : cycloneii_lcell_ff port map ( regout=>f_t1_next(0), 
      datain=>f_t2_next(0), sdata=>o_image0_1_dup0_0, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_state_3 : cycloneii_lcell_ff port map ( regout=>f_state(3), datain
      =>f_state(2), clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_state_2 : cycloneii_lcell_ff port map ( regout=>f_state(2), datain
      =>f_state(1), clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_state_1 : cycloneii_lcell_ff port map ( regout=>f_state(1), datain
      =>f_state(0), clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_state_0 : cycloneii_lcell_ff port map ( regout=>nx63959z1, datain=>
      NOT_f_state_3, clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_i_row_next_7 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(7), datain=>m_o_row(7), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_6 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(6), datain=>m_o_row(6), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_5 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(5), datain=>m_o_row(5), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_4 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(4), datain=>m_o_row(4), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_3 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(3), datain=>m_o_row(3), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_2 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(2), datain=>m_o_row(2), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_1 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(1), datain=>m_o_row(1), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_row_next_0 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(0), datain=>m_o_row(0), clk=>i_clock_int, ena=>nx36102z1
   );
   reg_f_i_mode_next_1 : cycloneii_lcell_ff port map ( regout=>
      f_i_mode_next(1), datain=>m_o_mode(1), clk=>i_clock_int, ena=>
      nx36102z1);
   reg_f_i_mode_next_0 : cycloneii_lcell_ff port map ( regout=>
      f_i_mode_next(0), datain=>m_o_mode(0), clk=>i_clock_int, ena=>
      nx36102z1);
   reg_f_i2_next_7 : cycloneii_lcell_ff port map ( regout=>f_i2_next(7), 
      datain=>f_t1_next(7), sdata=>o_image0_2_dup0_7, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_6 : cycloneii_lcell_ff port map ( regout=>f_i2_next(6), 
      datain=>f_t1_next(6), sdata=>o_image0_2_dup0_6, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_5 : cycloneii_lcell_ff port map ( regout=>f_i2_next(5), 
      datain=>f_t1_next(5), sdata=>o_image0_2_dup0_5, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_4 : cycloneii_lcell_ff port map ( regout=>f_i2_next(4), 
      datain=>f_t1_next(4), sdata=>o_image0_2_dup0_4, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_3 : cycloneii_lcell_ff port map ( regout=>f_i2_next(3), 
      datain=>f_t1_next(3), sdata=>o_image0_2_dup0_3, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_2 : cycloneii_lcell_ff port map ( regout=>f_i2_next(2), 
      datain=>f_t1_next(2), sdata=>o_image0_2_dup0_2, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_1 : cycloneii_lcell_ff port map ( regout=>f_i2_next(1), 
      datain=>f_t1_next(1), sdata=>o_image0_2_dup0_1, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i2_next_0 : cycloneii_lcell_ff port map ( regout=>f_i2_next(0), 
      datain=>f_t1_next(0), sdata=>o_image0_2_dup0_0, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_7 : cycloneii_lcell_ff port map ( regout=>f_i1_next(7), 
      datain=>f_b1_next(7), sdata=>o_image2_dup0(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_6 : cycloneii_lcell_ff port map ( regout=>f_i1_next(6), 
      datain=>f_b1_next(6), sdata=>o_image2_dup0(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_5 : cycloneii_lcell_ff port map ( regout=>f_i1_next(5), 
      datain=>f_b1_next(5), sdata=>o_image2_dup0(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_4 : cycloneii_lcell_ff port map ( regout=>f_i1_next(4), 
      datain=>f_b1_next(4), sdata=>o_image2_dup0(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_3 : cycloneii_lcell_ff port map ( regout=>f_i1_next(3), 
      datain=>f_b1_next(3), sdata=>o_image2_dup0(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_2 : cycloneii_lcell_ff port map ( regout=>f_i1_next(2), 
      datain=>f_b1_next(2), sdata=>o_image2_dup0(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_1 : cycloneii_lcell_ff port map ( regout=>f_i1_next(1), 
      datain=>f_b1_next(1), sdata=>o_image2_dup0(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_i1_next_0 : cycloneii_lcell_ff port map ( regout=>f_i1_next(0), 
      datain=>f_b1_next(0), sdata=>o_image2_dup0(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_7 : cycloneii_lcell_ff port map ( regout=>f_b3_next(7), 
      datain=>f_i2_next(7), sdata=>o_image1_2_dup0_7, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_6 : cycloneii_lcell_ff port map ( regout=>f_b3_next(6), 
      datain=>f_i2_next(6), sdata=>o_image1_2_dup0_6, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_5 : cycloneii_lcell_ff port map ( regout=>f_b3_next(5), 
      datain=>f_i2_next(5), sdata=>o_image1_2_dup0_5, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_4 : cycloneii_lcell_ff port map ( regout=>f_b3_next(4), 
      datain=>f_i2_next(4), sdata=>o_image1_2_dup0_4, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_3 : cycloneii_lcell_ff port map ( regout=>f_b3_next(3), 
      datain=>f_i2_next(3), sdata=>o_image1_2_dup0_3, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_2 : cycloneii_lcell_ff port map ( regout=>f_b3_next(2), 
      datain=>f_i2_next(2), sdata=>o_image1_2_dup0_2, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_1 : cycloneii_lcell_ff port map ( regout=>f_b3_next(1), 
      datain=>f_i2_next(1), sdata=>o_image1_2_dup0_1, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b3_next_0 : cycloneii_lcell_ff port map ( regout=>f_b3_next(0), 
      datain=>f_i2_next(0), sdata=>o_image1_2_dup0_0, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_7 : cycloneii_lcell_ff port map ( regout=>f_b2_next(7), 
      datain=>f_b3_next(7), sdata=>o_image2_2_dup0_7, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_6 : cycloneii_lcell_ff port map ( regout=>f_b2_next(6), 
      datain=>f_b3_next(6), sdata=>o_image2_2_dup0_6, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_5 : cycloneii_lcell_ff port map ( regout=>f_b2_next(5), 
      datain=>f_b3_next(5), sdata=>o_image2_2_dup0_5, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_4 : cycloneii_lcell_ff port map ( regout=>f_b2_next(4), 
      datain=>f_b3_next(4), sdata=>o_image2_2_dup0_4, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_3 : cycloneii_lcell_ff port map ( regout=>f_b2_next(3), 
      datain=>f_b3_next(3), sdata=>o_image2_2_dup0_3, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_2 : cycloneii_lcell_ff port map ( regout=>f_b2_next(2), 
      datain=>f_b3_next(2), sdata=>o_image2_2_dup0_2, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_1 : cycloneii_lcell_ff port map ( regout=>f_b2_next(1), 
      datain=>f_b3_next(1), sdata=>o_image2_2_dup0_1, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b2_next_0 : cycloneii_lcell_ff port map ( regout=>f_b2_next(0), 
      datain=>f_b3_next(0), sdata=>o_image2_2_dup0_0, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_7 : cycloneii_lcell_ff port map ( regout=>f_b1_next(7), 
      datain=>f_b2_next(7), sdata=>o_image2_1_dup0_7, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_6 : cycloneii_lcell_ff port map ( regout=>f_b1_next(6), 
      datain=>f_b2_next(6), sdata=>o_image2_1_dup0_6, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_5 : cycloneii_lcell_ff port map ( regout=>f_b1_next(5), 
      datain=>f_b2_next(5), sdata=>o_image2_1_dup0_5, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_4 : cycloneii_lcell_ff port map ( regout=>f_b1_next(4), 
      datain=>f_b2_next(4), sdata=>o_image2_1_dup0_4, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_3 : cycloneii_lcell_ff port map ( regout=>f_b1_next(3), 
      datain=>f_b2_next(3), sdata=>o_image2_1_dup0_3, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_2 : cycloneii_lcell_ff port map ( regout=>f_b1_next(2), 
      datain=>f_b2_next(2), sdata=>o_image2_1_dup0_2, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_1 : cycloneii_lcell_ff port map ( regout=>f_b1_next(1), 
      datain=>f_b2_next(1), sdata=>o_image2_1_dup0_1, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   reg_f_b1_next_0 : cycloneii_lcell_ff port map ( regout=>f_b1_next(0), 
      datain=>f_b2_next(0), sdata=>o_image2_1_dup0_0, clk=>i_clock_int, ena
      =>nx57127z1, sload=>nx60284z1);
   o_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR766, datain=>o_valid_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR945(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR945(0), datain=>o_mode_dup0(0));
   o_image2_obuf_2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR955(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR955(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR955(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR955(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR955(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR955(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR955(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR955(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR954(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR954(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR954(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR954(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR954(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR954(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR954(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR954(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR953(7), datain=>o_image2_dup0(7));
   o_image2_obuf_0_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(6), datain=>o_image2_dup0(6));
   o_image2_obuf_0_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(5), datain=>o_image2_dup0(5));
   o_image2_obuf_0_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(4), datain=>o_image2_dup0(4));
   o_image2_obuf_0_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(3), datain=>o_image2_dup0(3));
   o_image2_obuf_0_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(2), datain=>o_image2_dup0(2));
   o_image2_obuf_0_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(1), datain=>o_image2_dup0(1));
   o_image2_obuf_0_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR953(0), datain=>o_image2_dup0(0));
   o_edge_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR767, datain=>debug_led_red_dup0(2));
   o_dir_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR944(2), datain=>debug_led_red_dup0(2));
   o_dir_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR944(1), datain=>debug_led_red_dup0(2));
   o_dir_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR944(0), datain=>debug_led_red_dup0(2));
   ix15183z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR749);
   ix23314z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(7), datain=>nx23314z1);
   ix22317z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(6), datain=>nx22317z1);
   ix21320z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(5), datain=>nx21320z1);
   ix20323z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(4), datain=>nx20323z1);
   ix19326z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(3), datain=>nx19326z1);
   ix18329z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(2), datain=>nx18329z1);
   ix17332z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(1), datain=>nx17332z1);
   ix16335z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR946(0), datain=>nx16335z1);
   ix52494z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(7), datain=>nx52494z1);
   ix53491z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(6), datain=>nx53491z1);
   ix54488z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(5), datain=>nx54488z1);
   ix55485z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(4), datain=>nx55485z1);
   ix56482z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(3), datain=>nx56482z1);
   ix57479z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(2), datain=>nx57479z1);
   ix58476z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(1), datain=>nx58476z1);
   ix59473z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR947(0), datain=>nx59473z1);
   ix57629z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(7), datain=>nx57629z1);
   ix58626z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(6), datain=>nx58626z1);
   ix59623z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(5), datain=>nx59623z1);
   ix60620z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(4), datain=>nx60620z1);
   ix61617z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(3), datain=>nx61617z1);
   ix62614z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(2), datain=>nx62614z1);
   ix63611z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(1), datain=>nx63611z1);
   ix64608z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR948(0), datain=>nx64608z1);
   ix62764z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(7), datain=>nx62764z1);
   ix63761z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(6), datain=>nx63761z1);
   ix64758z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(5), datain=>nx64758z1);
   ix219z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(4), datain=>nx219z1);
   ix1216z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(3), datain=>nx1216z1);
   ix2213z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(2), datain=>nx2213z1);
   ix3210z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(1), datain=>nx3210z1);
   ix4207z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR949(0), datain=>nx4207z1);
   ix48187z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(7), datain=>nx48187z1);
   ix47190z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(6), datain=>nx47190z1);
   ix46193z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(5), datain=>nx46193z1);
   ix45196z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(4), datain=>nx45196z1);
   ix44199z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(3), datain=>nx44199z1);
   ix43202z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(2), datain=>nx43202z1);
   ix42205z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(1), datain=>nx42205z1);
   ix41208z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR950(0), datain=>nx41208z1);
   ix43052z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(7), datain=>nx43052z1);
   ix42055z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(6), datain=>nx42055z1);
   ix41058z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(5), datain=>nx41058z1);
   ix40061z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(4), datain=>nx40061z1);
   ix39064z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(3), datain=>nx39064z1);
   ix38067z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(2), datain=>nx38067z1);
   ix37070z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(1), datain=>nx37070z1);
   ix36073z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR951(0), datain=>nx36073z1);
   ix37917z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(7), datain=>nx37917z1);
   ix36920z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(6), datain=>nx36920z1);
   ix35923z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(5), datain=>nx35923z1);
   ix34926z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(4), datain=>nx34926z1);
   ix33929z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(3), datain=>nx33929z1);
   ix32932z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(2), datain=>nx32932z1);
   ix31935z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(1), datain=>nx31935z1);
   ix30938z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR952(0), datain=>nx30938z1);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR748);
   i_pixel_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR942(7));
   i_pixel_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR942(6));
   i_pixel_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR942(5));
   i_pixel_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR942(4));
   i_pixel_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR942(3));
   i_pixel_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR942(2));
   i_pixel_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR942(1));
   i_pixel_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR942(0));
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR747);
   debug_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_valid_EXMPLR877, datain=>debug_valid_dup0);
   debug_num_8_triBus11_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(7), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(6), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(5), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(4), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(3), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(2), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(1), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_8_triBus11_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR943(0), datain=>
      debug_led_red_dup0(2), oe=>debug_led_red_dup0(2));
   debug_num_7_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(7), datain=>
      debug_num_7_dup0(7));
   debug_num_7_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(6), datain=>
      debug_num_7_dup0(6));
   debug_num_7_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(5), datain=>
      debug_num_7_dup0(5));
   debug_num_7_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(4), datain=>
      debug_num_7_dup0(4));
   debug_num_7_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(3), datain=>
      debug_num_7_dup0(3));
   debug_num_7_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(2), datain=>
      debug_num_7_dup0(2));
   debug_num_7_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(1), datain=>
      debug_num_7_dup0(1));
   debug_num_7_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR965(0), datain=>
      debug_num_7_dup0(0));
   debug_num_6_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(7), datain=>
      debug_num_6_dup0(7));
   debug_num_6_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(6), datain=>
      debug_num_6_dup0(6));
   debug_num_6_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(5), datain=>
      debug_num_6_dup0(5));
   debug_num_6_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(4), datain=>
      debug_num_6_dup0(4));
   debug_num_6_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(3), datain=>
      debug_num_6_dup0(3));
   debug_num_6_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(2), datain=>
      debug_num_6_dup0(2));
   debug_num_6_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(1), datain=>
      debug_num_6_dup0(1));
   debug_num_6_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR964(0), datain=>
      debug_num_6_dup0(0));
   debug_num_5_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(7), datain=>
      debug_num_5_dup0(7));
   debug_num_5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(6), datain=>
      debug_num_5_dup0(6));
   debug_num_5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(5), datain=>
      debug_num_5_dup0(5));
   debug_num_5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(4), datain=>
      debug_num_5_dup0(4));
   debug_num_5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(3), datain=>
      debug_num_5_dup0(3));
   debug_num_5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(2), datain=>
      debug_num_5_dup0(2));
   debug_num_5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(1), datain=>
      debug_num_5_dup0(1));
   debug_num_5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR963(0), datain=>
      debug_num_5_dup0(0));
   debug_num_4_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(7), datain=>
      debug_num_4_dup0(7));
   debug_num_4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(6), datain=>
      debug_num_4_dup0(6));
   debug_num_4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(5), datain=>
      debug_num_4_dup0(5));
   debug_num_4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(4), datain=>
      debug_num_4_dup0(4));
   debug_num_4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(3), datain=>
      debug_num_4_dup0(3));
   debug_num_4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(2), datain=>
      debug_num_4_dup0(2));
   debug_num_4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(1), datain=>
      debug_num_4_dup0(1));
   debug_num_4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR962(0), datain=>
      debug_num_4_dup0(0));
   debug_num_3_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(7), datain=>
      debug_num_3_dup0(7));
   debug_num_3_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(6), datain=>
      debug_num_3_dup0(6));
   debug_num_3_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(5), datain=>
      debug_num_3_dup0(5));
   debug_num_3_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(4), datain=>
      debug_num_3_dup0(4));
   debug_num_3_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(3), datain=>
      debug_num_3_dup0(3));
   debug_num_3_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(2), datain=>
      debug_num_3_dup0(2));
   debug_num_3_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(1), datain=>
      debug_num_3_dup0(1));
   debug_num_3_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR961(0), datain=>
      debug_num_3_dup0(0));
   debug_num_2_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(7), datain=>
      debug_num_2_dup0(7));
   debug_num_2_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(6), datain=>
      debug_num_2_dup0(6));
   debug_num_2_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(5), datain=>
      debug_num_2_dup0(5));
   debug_num_2_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(4), datain=>
      debug_num_2_dup0(4));
   debug_num_2_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(3), datain=>
      debug_num_2_dup0(3));
   debug_num_2_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(2), datain=>
      debug_num_2_dup0(2));
   debug_num_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(1), datain=>
      debug_num_2_dup0(1));
   debug_num_2_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR960(0), datain=>
      debug_num_2_dup0(0));
   debug_num_1_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(7), datain=>
      debug_num_1_dup0(7));
   debug_num_1_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(6), datain=>
      debug_num_1_dup0(6));
   debug_num_1_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(5), datain=>
      debug_num_1_dup0(5));
   debug_num_1_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(4), datain=>
      debug_num_1_dup0(4));
   debug_num_1_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(3), datain=>
      debug_num_1_dup0(3));
   debug_num_1_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(2), datain=>
      debug_num_1_dup0(2));
   debug_num_1_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(1), datain=>
      debug_num_1_dup0(1));
   debug_num_1_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR959(0), datain=>
      debug_num_1_dup0(0));
   debug_num_0_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(7), datain=>
      debug_num_0_dup0(7));
   debug_num_0_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(6), datain=>
      debug_num_0_dup0(6));
   debug_num_0_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(5), datain=>
      debug_num_0_dup0(5));
   debug_num_0_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(4), datain=>
      debug_num_0_dup0(4));
   debug_num_0_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(3), datain=>
      debug_num_0_dup0(3));
   debug_num_0_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(2), datain=>
      debug_num_0_dup0(2));
   debug_num_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(1), datain=>
      debug_num_0_dup0(1));
   debug_num_0_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR958(0), datain=>
      debug_num_0_dup0(0));
   debug_led_red_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(9), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(8), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(7), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(6), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(5), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(4), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(3), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(2), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(17), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(16), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(15), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(14), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(13), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(12), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(11), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(10), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(1), datain=>
      debug_led_red_dup0(2));
   debug_led_red_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(0), datain=>
      debug_led_red_dup0(2));
   debug_led_grn_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(5), datain=>
      debug_led_red_dup0(2));
   debug_led_grn_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(4), datain=>
      debug_led_red_dup0(2));
   debug_led_grn_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(3), datain=>
      debug_led_red_dup0(2));
   debug_led_grn_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(2), datain=>
      debug_led_red_dup0(2));
   debug_led_grn_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(1), datain=>
      debug_led_red_dup0(2));
   debug_led_grn_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(0), datain=>
      debug_led_red_dup0(2));
   ix54514z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx54514z1, dataa=>u_flow_p40, datab=>i_reset_int
   );
   ix64956z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbfb") 
       port map ( combout=>nx64956z1, dataa=>m_o_valid, datab=>nx60284z1, 
      datac=>i_reset_int);
   ix60284z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx60284z1, dataa=>f_state(3), datab=>f_state(2), 
      datac=>f_state(1), datad=>nx63959z1);
   ix36102z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx36102z1, dataa=>m_o_valid, datab=>nx60284z1, 
      datac=>i_reset_int);
   ix57127z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0b0b") 
       port map ( combout=>nx57127z1, dataa=>m_o_valid, datab=>nx60284z1, 
      datac=>i_reset_int);
   ix14201z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_mode(0), dataa=>m_o_mode(0), datab=>
      f_i_mode_next(0), datac=>nx60284z1);
   ix33421z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(0), dataa=>m_o_row(0), datab=>
      f_i_row_next(0), datac=>nx60284z1);
   ix34418z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(1), dataa=>m_o_row(1), datab=>
      f_i_row_next(1), datac=>nx60284z1);
   ix35415z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(2), dataa=>m_o_row(2), datab=>
      f_i_row_next(2), datac=>nx60284z1);
   ix36412z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(3), dataa=>m_o_row(3), datab=>
      f_i_row_next(3), datac=>nx60284z1);
   ix37409z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(4), dataa=>m_o_row(4), datab=>
      f_i_row_next(4), datac=>nx60284z1);
   ix38406z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(5), dataa=>m_o_row(5), datab=>
      f_i_row_next(5), datac=>nx60284z1);
   ix39403z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(6), dataa=>m_o_row(6), datab=>
      f_i_row_next(6), datac=>nx60284z1);
   ix40400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(7), dataa=>m_o_row(7), datab=>
      f_i_row_next(7), datac=>nx60284z1);
   ix23512z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(0), dataa=>f_i2_next(0), datab=>
      nx60284z1, datac=>o_image1_2_dup0_0);
   ix24509z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(1), dataa=>f_i2_next(1), datab=>
      nx60284z1, datac=>o_image1_2_dup0_1);
   ix25506z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(2), dataa=>f_i2_next(2), datab=>
      nx60284z1, datac=>o_image1_2_dup0_2);
   ix26503z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(3), dataa=>f_i2_next(3), datab=>
      nx60284z1, datac=>o_image1_2_dup0_3);
   ix27500z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(4), dataa=>f_i2_next(4), datab=>
      nx60284z1, datac=>o_image1_2_dup0_4);
   ix28497z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(5), dataa=>f_i2_next(5), datab=>
      nx60284z1, datac=>o_image1_2_dup0_5);
   ix29494z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(6), dataa=>f_i2_next(6), datab=>
      nx60284z1, datac=>o_image1_2_dup0_6);
   ix30491z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_7_dup0(7), dataa=>f_i2_next(7), datab=>
      nx60284z1, datac=>o_image1_2_dup0_7);
   ix759z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(0), dataa=>f_i1_next(0), datab=>
      nx60284z1, datac=>o_image1_dup0(0));
   ix1756z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(1), dataa=>f_i1_next(1), datab=>
      nx60284z1, datac=>o_image1_dup0(1));
   ix2753z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(2), dataa=>f_i1_next(2), datab=>
      nx60284z1, datac=>o_image1_dup0(2));
   ix3750z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(3), dataa=>f_i1_next(3), datab=>
      nx60284z1, datac=>o_image1_dup0(3));
   ix4747z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(4), dataa=>f_i1_next(4), datab=>
      nx60284z1, datac=>o_image1_dup0(4));
   ix5744z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(5), dataa=>f_i1_next(5), datab=>
      nx60284z1, datac=>o_image1_dup0(5));
   ix6741z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(6), dataa=>f_i1_next(6), datab=>
      nx60284z1, datac=>o_image1_dup0(6));
   ix7738z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_6_dup0(7), dataa=>f_i1_next(7), datab=>
      nx60284z1, datac=>o_image1_dup0(7));
   ix21994z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(0), dataa=>f_b3_next(0), datab=>
      nx60284z1, datac=>o_image2_2_dup0_0);
   ix20997z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(1), dataa=>f_b3_next(1), datab=>
      nx60284z1, datac=>o_image2_2_dup0_1);
   ix20000z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(2), dataa=>f_b3_next(2), datab=>
      nx60284z1, datac=>o_image2_2_dup0_2);
   ix19003z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(3), dataa=>f_b3_next(3), datab=>
      nx60284z1, datac=>o_image2_2_dup0_3);
   ix18006z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(4), dataa=>f_b3_next(4), datab=>
      nx60284z1, datac=>o_image2_2_dup0_4);
   ix17009z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(5), dataa=>f_b3_next(5), datab=>
      nx60284z1, datac=>o_image2_2_dup0_5);
   ix16012z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(6), dataa=>f_b3_next(6), datab=>
      nx60284z1, datac=>o_image2_2_dup0_6);
   ix15015z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_5_dup0(7), dataa=>f_b3_next(7), datab=>
      nx60284z1, datac=>o_image2_2_dup0_7);
   ix20789z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(0), dataa=>f_b2_next(0), datab=>
      nx60284z1, datac=>o_image2_1_dup0_0);
   ix21786z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(1), dataa=>f_b2_next(1), datab=>
      nx60284z1, datac=>o_image2_1_dup0_1);
   ix22783z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(2), dataa=>f_b2_next(2), datab=>
      nx60284z1, datac=>o_image2_1_dup0_2);
   ix23780z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(3), dataa=>f_b2_next(3), datab=>
      nx60284z1, datac=>o_image2_1_dup0_3);
   ix24777z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(4), dataa=>f_b2_next(4), datab=>
      nx60284z1, datac=>o_image2_1_dup0_4);
   ix25774z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(5), dataa=>f_b2_next(5), datab=>
      nx60284z1, datac=>o_image2_1_dup0_5);
   ix26771z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(6), dataa=>f_b2_next(6), datab=>
      nx60284z1, datac=>o_image2_1_dup0_6);
   ix27768z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_4_dup0(7), dataa=>f_b2_next(7), datab=>
      nx60284z1, datac=>o_image2_1_dup0_7);
   ix1964z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(0), dataa=>f_b1_next(0), datab=>
      nx60284z1, datac=>o_image2_dup0(0));
   ix967z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(1), dataa=>f_b1_next(1), datab=>
      nx60284z1, datac=>o_image2_dup0(1));
   ix65506z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(2), dataa=>f_b1_next(2), datab=>
      nx60284z1, datac=>o_image2_dup0(2));
   ix64509z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(3), dataa=>f_b1_next(3), datab=>
      nx60284z1, datac=>o_image2_dup0(3));
   ix63512z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(4), dataa=>f_b1_next(4), datab=>
      nx60284z1, datac=>o_image2_dup0(4));
   ix62515z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(5), dataa=>f_b1_next(5), datab=>
      nx60284z1, datac=>o_image2_dup0(5));
   ix61518z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(6), dataa=>f_b1_next(6), datab=>
      nx60284z1, datac=>o_image2_dup0(6));
   ix60521z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_3_dup0(7), dataa=>f_b1_next(7), datab=>
      nx60284z1, datac=>o_image2_dup0(7));
   ix40819z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(0), dataa=>f_t3_next(0), datab=>
      nx60284z1, datac=>o_image0_dup0(0));
   ix41816z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(1), dataa=>f_t3_next(1), datab=>
      nx60284z1, datac=>o_image0_dup0(1));
   ix42813z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(2), dataa=>f_t3_next(2), datab=>
      nx60284z1, datac=>o_image0_dup0(2));
   ix43810z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(3), dataa=>f_t3_next(3), datab=>
      nx60284z1, datac=>o_image0_dup0(3));
   ix44807z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(4), dataa=>f_t3_next(4), datab=>
      nx60284z1, datac=>o_image0_dup0(4));
   ix45804z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(5), dataa=>f_t3_next(5), datab=>
      nx60284z1, datac=>o_image0_dup0(5));
   ix46801z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(6), dataa=>f_t3_next(6), datab=>
      nx60284z1, datac=>o_image0_dup0(6));
   ix47798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_2_dup0(7), dataa=>f_t3_next(7), datab=>
      nx60284z1, datac=>o_image0_dup0(7));
   ix47470z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(0), dataa=>f_t2_next(0), datab=>
      nx60284z1, datac=>o_image0_1_dup0_0);
   ix46473z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(1), dataa=>f_t2_next(1), datab=>
      nx60284z1, datac=>o_image0_1_dup0_1);
   ix45476z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(2), dataa=>f_t2_next(2), datab=>
      nx60284z1, datac=>o_image0_1_dup0_2);
   ix44479z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(3), dataa=>f_t2_next(3), datab=>
      nx60284z1, datac=>o_image0_1_dup0_3);
   ix43482z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(4), dataa=>f_t2_next(4), datab=>
      nx60284z1, datac=>o_image0_1_dup0_4);
   ix42485z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(5), dataa=>f_t2_next(5), datab=>
      nx60284z1, datac=>o_image0_1_dup0_5);
   ix41488z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(6), dataa=>f_t2_next(6), datab=>
      nx60284z1, datac=>o_image0_1_dup0_6);
   ix40491z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_1_dup0(7), dataa=>f_t2_next(7), datab=>
      nx60284z1, datac=>o_image0_1_dup0_7);
   ix60849z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(0), dataa=>f_t1_next(0), datab=>
      nx60284z1, datac=>o_image0_2_dup0_0);
   ix61846z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(1), dataa=>f_t1_next(1), datab=>
      nx60284z1, datac=>o_image0_2_dup0_1);
   ix62843z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(2), dataa=>f_t1_next(2), datab=>
      nx60284z1, datac=>o_image0_2_dup0_2);
   ix63840z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(3), dataa=>f_t1_next(3), datab=>
      nx60284z1, datac=>o_image0_2_dup0_3);
   ix64837z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(4), dataa=>f_t1_next(4), datab=>
      nx60284z1, datac=>o_image0_2_dup0_4);
   ix298z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(5), dataa=>f_t1_next(5), datab=>
      nx60284z1, datac=>o_image0_2_dup0_5);
   ix1295z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(6), dataa=>f_t1_next(6), datab=>
      nx60284z1, datac=>o_image0_2_dup0_6);
   ix2292z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>debug_num_0_dup0(7), dataa=>f_t1_next(7), datab=>
      nx60284z1, datac=>o_image0_2_dup0_7);
   ix60284z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>debug_valid_dup0, dataa=>m_o_valid, datab=>
      nx60284z1);
   ix15198z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4e4e") 
       port map ( combout=>f_i_mode(1), dataa=>nx60284z1, datab=>
      f_i_mode_next(1), datac=>i_reset_int);
   ix47893z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"feee") 
       port map ( combout=>o_mode_dup0(0), dataa=>i_reset_int, datab=>
      m_o_mode(0), datac=>u_flow_p5m(0), datad=>u_flow_p5m(1));
end main ;

