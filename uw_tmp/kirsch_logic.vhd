
-- 
-- Definition of  kirsch
-- 
--      Mon Jul 21 19:35:58 2014
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
      p_rtlc5n55 : IN std_logic) ;
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
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>p_rtlc5n55, 
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
      cnt_en : IN std_logic ;
      px1 : OUT std_logic ;
      px23 : OUT std_logic ;
      p_i_valid : IN std_logic ;
      p_rtlc2n121 : IN std_logic) ;
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
   px1 <= nx51271z1 ;
   px23 <= nx57253z3 ;
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
      generic map (lut_mask => X"e0ee") 
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>sclear, datac=>
      p_rtlc2n121, datad=>p_i_valid);
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
   signal ena1_EXMPLR559: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR559, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR559 <= '1';
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
   signal ena1_EXMPLR589: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR589, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR589 <= '1';
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
   signal ena1_EXMPLR619: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR619, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR619 <= '1';
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
      p_first_bubble : IN std_logic ;
      p_mem_data_7 : IN std_logic ;
      p_mem_data_6 : IN std_logic ;
      p_mem_data_5 : IN std_logic ;
      p_mem_data_4 : IN std_logic ;
      p_mem_data_3 : IN std_logic ;
      p_mem_data_2 : IN std_logic ;
      p_mem_data_1 : IN std_logic ;
      p_mem_data_0 : IN std_logic ;
      px1 : OUT std_logic ;
      px23 : OUT std_logic ;
      p_rtlc2n272 : OUT std_logic) ;
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
         p_i_reset : IN std_logic ;
         p_rtlc5n55 : IN std_logic) ;
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
         px1 : OUT std_logic ;
         px23 : OUT std_logic ;
         p_i_valid : IN std_logic ;
         p_rtlc2n121 : IN std_logic) ;
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
   signal o_valid_EXMPLR627, o_column_0_EXMPLR628: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR723: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR724: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR725: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR726: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR727: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR728: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx8852z1, nx15763z4, not_first_bubble, not_rtlc2_X_0_n252, 
      nx47386z1, nx15763z3, nx15763z2, nx16760z1: std_logic ;
   
   signal buffer2_3n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx60567z2, nx8852z2, nx33254z1, nx57224z1, nx39109z3, nx41103z4, 
      nx63578z3, nx62359z3, nx8852z3, nx60567z1, nx5021z1, nx4024z1, 
      nx3027z1, nx2030z1, nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, 
      nx56377z1, nx57374z1, nx58371z1, nx59368z1, nx60365z1, nx61362z1, 
      nx62359z1, nx10639z1, nx41103z1, nx39109z2, nx8852z4, nx8852z6, 
      nx8852z7, nx60567z3, nx63578z2, nx62359z2, nx60567z4, nx60567z5, 
      nx41103z3, nx41103z2, nx8852z5, nx39109z1, nx15763z1: std_logic ;
   
   signal DANGLING : std_logic_vector (40 downto 0 );

begin
   o_valid <= o_valid_EXMPLR627 ;
   o_image1_0(7) <= o_image1_0_EXMPLR723(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR723(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR723(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR723(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR723(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR723(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR723(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR723(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR724(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR724(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR724(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR724(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR724(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR724(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR724(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR724(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR725(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR725(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR725(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR725(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR725(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR725(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR725(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR725(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR726(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR726(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR726(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR726(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR726(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR726(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR726(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR726(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR727(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR727(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR727(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR727(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR727(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR727(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR727(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR727(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR728(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR728(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR728(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR728(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR728(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR728(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR728(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR728(0) ;
   p_rtlc2n272 <= nx47386z1 ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock, q(7)=>
      row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), q(2)=>
      row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx8852z1, updn=>DANGLING(12), 
      cnt_en=>not_rtlc2_X_0_n252, p_i_reset=>i_reset, p_rtlc5n55=>nx8852z2);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>
      o_column_0_EXMPLR628, clk_en=>DANGLING(13), aclear=>DANGLING(14), 
      sload=>DANGLING(15), data(7)=>DANGLING(16), data(6)=>DANGLING(17), 
      data(5)=>DANGLING(18), data(4)=>DANGLING(19), data(3)=>DANGLING(20), 
      data(2)=>DANGLING(21), data(1)=>DANGLING(22), data(0)=>DANGLING(23), 
      aset=>DANGLING(24), sclear=>nx47386z1, updn=>DANGLING(25), cnt_en=>
      p_first_bubble, px1=>px1, px23=>px23, p_i_valid=>i_valid, p_rtlc2n121
      =>nx8852z1);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>p_mem_data_7, wr_data1(6)
      =>p_mem_data_6, wr_data1(5)=>p_mem_data_5, wr_data1(4)=>p_mem_data_4, 
      wr_data1(3)=>p_mem_data_3, wr_data1(2)=>p_mem_data_2, wr_data1(1)=>
      p_mem_data_1, wr_data1(0)=>p_mem_data_0, rd_data1(7)=>mem_q_0(7), 
      rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), rd_data1(4)=>
      mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>mem_q_0(2), 
      rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR628, wr_clk1=>i_clock, rd_clk1=>DANGLING(26
      ), wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(27), ena1=>DANGLING(28), 
      rst1=>DANGLING(29), regce1=>DANGLING(30));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1(7)=>p_mem_data_7, wr_data1(6)
      =>p_mem_data_6, wr_data1(5)=>p_mem_data_5, wr_data1(4)=>p_mem_data_4, 
      wr_data1(3)=>p_mem_data_3, wr_data1(2)=>p_mem_data_2, wr_data1(1)=>
      p_mem_data_1, wr_data1(0)=>p_mem_data_0, rd_data1(7)=>mem_q_1(7), 
      rd_data1(6)=>mem_q_1(6), rd_data1(5)=>mem_q_1(5), rd_data1(4)=>
      mem_q_1(4), rd_data1(3)=>mem_q_1(3), rd_data1(2)=>mem_q_1(2), 
      rd_data1(1)=>mem_q_1(1), rd_data1(0)=>mem_q_1(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR628, wr_clk1=>i_clock, rd_clk1=>DANGLING(31
      ), wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(32), ena1=>DANGLING(33), 
      rst1=>DANGLING(34), regce1=>DANGLING(35));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1(7)=>p_mem_data_7, wr_data1(6)
      =>p_mem_data_6, wr_data1(5)=>p_mem_data_5, wr_data1(4)=>p_mem_data_4, 
      wr_data1(3)=>p_mem_data_3, wr_data1(2)=>p_mem_data_2, wr_data1(1)=>
      p_mem_data_1, wr_data1(0)=>p_mem_data_0, rd_data1(7)=>mem_q_2(7), 
      rd_data1(6)=>mem_q_2(6), rd_data1(5)=>mem_q_2(5), rd_data1(4)=>
      mem_q_2(4), rd_data1(3)=>mem_q_2(3), rd_data1(2)=>mem_q_2(2), 
      rd_data1(1)=>mem_q_2(1), rd_data1(0)=>mem_q_2(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR628, wr_clk1=>i_clock, rd_clk1=>DANGLING(36
      ), wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(37), ena1=>DANGLING(38), 
      rst1=>DANGLING(39), regce1=>DANGLING(40));
   o_mode(1) <= NOT i_reset;
   not_first_bubble <= NOT p_first_bubble;
   o_column(1) <= NOT column(1);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_EXMPLR627, 
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
      nx41103z1, sclr=>nx41103z4);
   reg_mem_wrn_current_1 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>i_clock, ena=>
      nx41103z1, sclr=>nx41103z4);
   nx39109z1 <= '1';
   reg_mem_wrn_current_0 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current(2), sdata=>nx39109z1, clk
      =>i_clock, ena=>nx39109z2, sclr=>nx8852z1, sload=>nx39109z3);
   reg_mem_wrn_2 : cycloneii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>mem_wrn_current(2), clk=>i_clock, sclr=>nx16760z1);
   reg_mem_wrn_1 : cycloneii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>mem_wrn_current(1), clk=>i_clock, sclr=>nx16760z1);
   nx15763z1 <= '1';
   reg_mem_wrn_0 : cycloneii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>mem_wrn_current(0), sdata=>nx15763z1, clk=>i_clock, sclr=>nx15763z2, 
      sload=>nx15763z3);
   reg_busySignalDelayed : cycloneii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>i_clock);
   reg_busySignal : cycloneii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>i_clock, sclr=>nx8852z2);
   reg_buffer2_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(7), datain=>mem_q_2(7), sdata=>p_mem_data_7, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(6), datain=>mem_q_2(6), sdata=>p_mem_data_6, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(5), datain=>mem_q_2(5), sdata=>p_mem_data_5, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(4), datain=>mem_q_2(4), sdata=>p_mem_data_4, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(3), datain=>mem_q_2(3), sdata=>p_mem_data_3, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(2), datain=>mem_q_2(2), sdata=>p_mem_data_2, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(1), datain=>mem_q_2(1), sdata=>p_mem_data_1, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR728(0), datain=>mem_q_2(0), sdata=>p_mem_data_0, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(7), datain=>nx62359z1, sdata=>mem_q_1(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(6), datain=>nx61362z1, sdata=>mem_q_1(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(5), datain=>nx60365z1, sdata=>mem_q_1(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(4), datain=>nx59368z1, sdata=>mem_q_1(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(3), datain=>nx58371z1, sdata=>mem_q_1(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(2), datain=>nx57374z1, sdata=>mem_q_1(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(1), datain=>nx56377z1, sdata=>mem_q_1(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_1_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR727(0), datain=>nx55380z1, sdata=>mem_q_1(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx62359z3);
   reg_buffer2_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(7), datain=>nx63578z1, sdata=>mem_q_0(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(6), datain=>nx64575z1, sdata=>mem_q_0(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(5), datain=>nx36z1, sdata=>mem_q_0(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(4), datain=>nx1033z1, sdata=>mem_q_0(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(3), datain=>nx2030z1, sdata=>mem_q_0(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(2), datain=>nx3027z1, sdata=>mem_q_0(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(1), datain=>nx4024z1, sdata=>mem_q_0(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer2_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR726(0), datain=>nx5021z1, sdata=>mem_q_0(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>nx63578z3);
   reg_buffer1_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(7), datain=>o_image2_2_EXMPLR728(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(6), datain=>o_image2_2_EXMPLR728(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(5), datain=>o_image2_2_EXMPLR728(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(4), datain=>o_image2_2_EXMPLR728(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(3), datain=>o_image2_2_EXMPLR728(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(2), datain=>o_image2_2_EXMPLR728(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(1), datain=>o_image2_2_EXMPLR728(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR725(0), datain=>o_image2_2_EXMPLR728(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(7), datain=>o_image2_1_EXMPLR727(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(6), datain=>o_image2_1_EXMPLR727(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(5), datain=>o_image2_1_EXMPLR727(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(4), datain=>o_image2_1_EXMPLR727(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(3), datain=>o_image2_1_EXMPLR727(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(2), datain=>o_image2_1_EXMPLR727(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(1), datain=>o_image2_1_EXMPLR727(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR724(0), datain=>o_image2_1_EXMPLR727(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(7), datain=>o_image2_0_EXMPLR726(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(6), datain=>o_image2_0_EXMPLR726(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(5), datain=>o_image2_0_EXMPLR726(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(4), datain=>o_image2_0_EXMPLR726(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(3), datain=>o_image2_0_EXMPLR726(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(2), datain=>o_image2_0_EXMPLR726(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(1), datain=>o_image2_0_EXMPLR726(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR723(0), datain=>o_image2_0_EXMPLR726(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer0_2_7 : cycloneii_lcell_ff port map ( regout=>o_image0_2(7), 
      datain=>o_image1_2_EXMPLR725(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_6 : cycloneii_lcell_ff port map ( regout=>o_image0_2(6), 
      datain=>o_image1_2_EXMPLR725(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_5 : cycloneii_lcell_ff port map ( regout=>o_image0_2(5), 
      datain=>o_image1_2_EXMPLR725(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_4 : cycloneii_lcell_ff port map ( regout=>o_image0_2(4), 
      datain=>o_image1_2_EXMPLR725(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_3 : cycloneii_lcell_ff port map ( regout=>o_image0_2(3), 
      datain=>o_image1_2_EXMPLR725(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_2 : cycloneii_lcell_ff port map ( regout=>o_image0_2(2), 
      datain=>o_image1_2_EXMPLR725(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_1 : cycloneii_lcell_ff port map ( regout=>o_image0_2(1), 
      datain=>o_image1_2_EXMPLR725(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_0 : cycloneii_lcell_ff port map ( regout=>o_image0_2(0), 
      datain=>o_image1_2_EXMPLR725(0), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_7 : cycloneii_lcell_ff port map ( regout=>o_image0_1(7), 
      datain=>o_image1_1_EXMPLR724(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_6 : cycloneii_lcell_ff port map ( regout=>o_image0_1(6), 
      datain=>o_image1_1_EXMPLR724(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_5 : cycloneii_lcell_ff port map ( regout=>o_image0_1(5), 
      datain=>o_image1_1_EXMPLR724(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_4 : cycloneii_lcell_ff port map ( regout=>o_image0_1(4), 
      datain=>o_image1_1_EXMPLR724(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_3 : cycloneii_lcell_ff port map ( regout=>o_image0_1(3), 
      datain=>o_image1_1_EXMPLR724(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_2 : cycloneii_lcell_ff port map ( regout=>o_image0_1(2), 
      datain=>o_image1_1_EXMPLR724(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_1 : cycloneii_lcell_ff port map ( regout=>o_image0_1(1), 
      datain=>o_image1_1_EXMPLR724(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_0 : cycloneii_lcell_ff port map ( regout=>o_image0_1(0), 
      datain=>o_image1_1_EXMPLR724(0), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_7 : cycloneii_lcell_ff port map ( regout=>o_image0_0(7), 
      datain=>o_image1_0_EXMPLR723(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_6 : cycloneii_lcell_ff port map ( regout=>o_image0_0(6), 
      datain=>o_image1_0_EXMPLR723(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_5 : cycloneii_lcell_ff port map ( regout=>o_image0_0(5), 
      datain=>o_image1_0_EXMPLR723(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_4 : cycloneii_lcell_ff port map ( regout=>o_image0_0(4), 
      datain=>o_image1_0_EXMPLR723(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_3 : cycloneii_lcell_ff port map ( regout=>o_image0_0(3), 
      datain=>o_image1_0_EXMPLR723(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_2 : cycloneii_lcell_ff port map ( regout=>o_image0_0(2), 
      datain=>o_image1_0_EXMPLR723(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_1 : cycloneii_lcell_ff port map ( regout=>o_image0_0(1), 
      datain=>o_image1_0_EXMPLR723(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_0 : cycloneii_lcell_ff port map ( regout=>o_image0_0(0), 
      datain=>o_image1_0_EXMPLR723(0), clk=>i_clock, ena=>p_first_bubble);
   ix8852z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx8852z5, dataa=>column(4), datab=>column(3));
   ix41103z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5557") 
       port map ( combout=>nx41103z2, dataa=>i_valid, datab=>
      mem_wrn_current(2), datac=>mem_wrn_current(1), datad=>
      mem_wrn_current(0));
   ix41103z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>nx41103z3, dataa=>i_valid, datab=>p_first_bubble, 
      datac=>nx8852z3);
   ix60567z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z5, dataa=>column(4), datab=>column(3), 
      datac=>column(2), datad=>column(1));
   ix60567z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z4, dataa=>column(7), datab=>column(6), 
      datac=>column(5));
   ix62359z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d5d5") 
       port map ( combout=>nx62359z2, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx63578z2, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
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
       port map ( combout=>nx8852z4, dataa=>o_column_0_EXMPLR628, datab=>
      column(7), datac=>column(6), datad=>column(5));
   ix39109z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"efee") 
       port map ( combout=>nx39109z2, dataa=>i_reset, datab=>nx8852z2, datac
      =>nx41103z3, datad=>nx41103z2);
   ix10639z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx10639z1, dataa=>column(3), datab=>column(2), 
      datac=>column(1));
   ix62359z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx62359z1, dataa=>buffer2_3n2ss1(7), datab=>
      mem_q_2(7), datac=>nx62359z2);
   ix61362z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx61362z1, dataa=>buffer2_3n2ss1(6), datab=>
      mem_q_2(6), datac=>nx62359z2);
   ix60365z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx60365z1, dataa=>buffer2_3n2ss1(5), datab=>
      mem_q_2(5), datac=>nx62359z2);
   ix59368z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx59368z1, dataa=>buffer2_3n2ss1(4), datab=>
      mem_q_2(4), datac=>nx62359z2);
   ix58371z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx58371z1, dataa=>buffer2_3n2ss1(3), datab=>
      mem_q_2(3), datac=>nx62359z2);
   ix57374z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx57374z1, dataa=>buffer2_3n2ss1(2), datab=>
      mem_q_2(2), datac=>nx62359z2);
   ix56377z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx56377z1, dataa=>buffer2_3n2ss1(1), datab=>
      mem_q_2(1), datac=>nx62359z2);
   ix55380z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx55380z1, dataa=>buffer2_3n2ss1(0), datab=>
      mem_q_2(0), datac=>nx62359z2);
   ix63578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx63578z1, dataa=>buffer2_3n2ss1(7), datab=>
      mem_q_2(7), datac=>nx63578z2);
   ix64575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx64575z1, dataa=>buffer2_3n2ss1(6), datab=>
      mem_q_2(6), datac=>nx63578z2);
   ix36z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx36z1, dataa=>buffer2_3n2ss1(5), datab=>
      mem_q_2(5), datac=>nx63578z2);
   ix1033z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx1033z1, dataa=>buffer2_3n2ss1(4), datab=>
      mem_q_2(4), datac=>nx63578z2);
   ix2030z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx2030z1, dataa=>buffer2_3n2ss1(3), datab=>
      mem_q_2(3), datac=>nx63578z2);
   ix3027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx3027z1, dataa=>buffer2_3n2ss1(2), datab=>
      mem_q_2(2), datac=>nx63578z2);
   ix4024z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx4024z1, dataa=>buffer2_3n2ss1(1), datab=>
      mem_q_2(1), datac=>nx63578z2);
   ix5021z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx5021z1, dataa=>buffer2_3n2ss1(0), datab=>
      mem_q_2(0), datac=>nx63578z2);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeea") 
       port map ( combout=>nx60567z1, dataa=>o_valid_EXMPLR627, datab=>
      nx60567z2, datac=>nx60567z4, datad=>nx60567z5);
   ix8852z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z3, dataa=>column(2), datab=>column(1), 
      datac=>nx8852z4, datad=>nx8852z5);
   ix62359z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>nx62359z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1313") 
       port map ( combout=>nx63578z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix41103z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"cecc") 
       port map ( combout=>nx41103z4, dataa=>i_valid, datab=>nx8852z1, datac
      =>nx41103z3, datad=>nx41103z2);
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
   ix5021z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(0), dataa=>p_mem_data_0, datab=>
      nx60567z2, datac=>mem_q_1(0));
   ix4024z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(1), dataa=>p_mem_data_1, datab=>
      nx60567z2, datac=>mem_q_1(1));
   ix3027z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(2), dataa=>p_mem_data_2, datab=>
      nx60567z2, datac=>mem_q_1(2));
   ix2030z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(3), dataa=>p_mem_data_3, datab=>
      nx60567z2, datac=>mem_q_1(3));
   ix1033z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(4), dataa=>p_mem_data_4, datab=>
      nx60567z2, datac=>mem_q_1(4));
   ix36z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(5), dataa=>p_mem_data_5, datab=>
      nx60567z2, datac=>mem_q_1(5));
   ix64575z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(6), dataa=>p_mem_data_6, datab=>
      nx60567z2, datac=>mem_q_1(6));
   ix63578z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>buffer2_3n2ss1(7), dataa=>p_mem_data_7, datab=>
      nx60567z2, datac=>mem_q_1(7));
   ix15763z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx15763z3, dataa=>i_valid, datab=>i_reset, datac
      =>nx15763z4, datad=>nx8852z2);
   ix8852z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>not_rtlc2_X_0_n252, dataa=>i_valid, datab=>
      p_first_bubble, datac=>nx8852z3);
   ix15763z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx15763z4, dataa=>mem_wrn_current(2), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(0));
   ix8852z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx8852z1, dataa=>i_reset, datab=>nx8852z2);
   ix6651z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>o_column(2), dataa=>column(2), datab=>column(1));
   ix7648z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a9a9") 
       port map ( combout=>o_column(3), dataa=>column(3), datab=>column(2), 
      datac=>column(1));
   ix8645z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa9") 
       port map ( combout=>o_column(4), dataa=>column(4), datab=>column(3), 
      datac=>column(2), datad=>column(1));
   ix9642z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a9a9") 
       port map ( combout=>o_column(5), dataa=>column(5), datab=>column(4), 
      datac=>nx10639z1);
   ix10639z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa9") 
       port map ( combout=>o_column(6), dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>nx10639z1);
   ix11636z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa9") 
       port map ( combout=>o_column(7), dataa=>column(7), datab=>column(6), 
      datac=>column(5), datad=>nx60567z5);
   ix15976z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>o_mode(0), dataa=>i_valid, datab=>i_reset, datac
      =>busySignal, datad=>busySignalDelayed);
   ix39109z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx39109z3, dataa=>mem_wrn_current(0), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(2), datad=>i_valid);
   ix41103z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff2") 
       port map ( combout=>nx41103z1, dataa=>nx41103z2, datab=>nx41103z3, 
      datac=>nx8852z2, datad=>i_reset);
   ix16760z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx16760z1, dataa=>nx41103z2, datab=>nx8852z2, 
      datac=>i_reset);
   ix15763z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdfd") 
       port map ( combout=>nx15763z2, dataa=>i_valid, datab=>nx8852z2, datac
      =>i_reset);
   ix47386z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx47386z1, dataa=>nx8852z3, datab=>p_first_bubble, 
      datac=>nx8852z2, datad=>i_reset);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_12_0 ;

architecture IMPLEMENTATION of sub_12_0 is 
   signal nx63795z33, nx63795z30, nx63795z27, nx63795z24, nx63795z21, 
      nx63795z18, nx63795z15, nx63795z12, nx63795z9, nx63795z6, nx63795z3, 
      nx23445z2, nx_sub_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx23445z2, dataa=>a(11), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z3);
   nx_sub_12_0_vcc_net <= '1';
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z3, dataa=>b(10), datab=>
      a(10), datad=>nx_sub_12_0_vcc_net, cin=>nx63795z6);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z9);
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z9, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z12);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z12, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z15);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z15, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z18);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z18, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z21);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z21, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z24);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z24, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z27);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z27, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z30);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_12_0_vcc_net, cin=>nx23445z2
   );
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z30, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z33);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx63795z33, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_14_0 is 
   port (
      a : IN std_logic_vector (13 DOWNTO 0) ;
      b : IN std_logic_vector (13 DOWNTO 0) ;
      d : OUT std_logic ;
      px128 : IN std_logic) ;
end gt_14_0 ;

architecture IMPLEMENTATION of gt_14_0 is 
   signal nx100z40, nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, 
      nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_14_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e800",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(13), datab=>px128, datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z4);
   nx_gt_14_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(12), datab=>a(12), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z34, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z37);
   ix100z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z37, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z40);
   ix100z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z40, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_14_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_13_0 is 
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_13_0 ;

architecture IMPLEMENTATION of gt_13_0 is 
   signal nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, 
      nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_13_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(12), datab=>a(12), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z4);
   nx_gt_13_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z34, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z37);
   ix100z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z37, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_13_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn824 : IN std_logic ;
      p_rtlcn864 : IN std_logic) ;
end add_12_0 ;

architecture IMPLEMENTATION of add_12_0 is 
   signal nx63795z32, nx63795z29, nx63795z26, nx63795z23, nx63795z20, 
      nx63795z17, nx63795z14, nx63795z11, nx63795z8, nx63795z6, nx63795z4, 
      nx_add_12_0_vcc_net: std_logic ;

begin
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z4, dataa=>b(10), datab=>
      p_rtlcn824, datad=>nx_add_12_0_vcc_net, cin=>nx63795z6);
   nx_add_12_0_vcc_net <= '1';
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z8, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z11);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z11, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z14);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z14, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z17);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z17, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z20);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z20, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z23);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z23, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z26);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z26, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z29);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z29, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z32);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx63795z32, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_12_0_vcc_net);
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>p_rtlcn824, datab=>p_rtlcn864, 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z4);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>
      p_rtlcn824, datad=>nx_add_12_0_vcc_net, cin=>nx63795z8);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_12_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn905 : IN std_logic ;
      p_rtlcn945 : IN std_logic) ;
end add_12_1 ;

architecture IMPLEMENTATION of add_12_1 is 
   signal nx63795z32, nx63795z29, nx63795z26, nx63795z23, nx63795z20, 
      nx63795z17, nx63795z14, nx63795z11, nx63795z8, nx63795z6, nx63795z4, 
      nx_add_12_1_vcc_net: std_logic ;

begin
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z4, dataa=>b(10), datab=>
      p_rtlcn905, datad=>nx_add_12_1_vcc_net, cin=>nx63795z6);
   nx_add_12_1_vcc_net <= '1';
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z8, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z11);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z11, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z14);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z14, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z17);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z17, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z20);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z20, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z23);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z23, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z26);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z26, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z29);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z29, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z32);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx63795z32, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_12_1_vcc_net);
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>p_rtlcn905, datab=>p_rtlcn945, 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z4);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>
      p_rtlcn905, datad=>nx_add_12_1_vcc_net, cin=>nx63795z8);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_0_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z4);
   nx_add_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_0_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_1 ;

architecture IMPLEMENTATION of add_8_1 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_1_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z4);
   nx_add_8_1_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_1_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_1 ;

architecture IMPLEMENTATION of add_9_1 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_1_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
      nx_add_9_1_vcc_net, cin=>nx45949z3);
   nx_add_9_1_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_1_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_0 ;

architecture IMPLEMENTATION of sub_10_0 is 
   signal nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, 
      nx46946z13, nx46946z10, nx46946z7, nx46946z4, nx23445z2, 
      nx_sub_10_0_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z4);
   nx_sub_10_0_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z4, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z7);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z7, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z10);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z10, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z13);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z13, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z16);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z16, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z19);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z19, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z22);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z22, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z25);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_0_vcc_net, cin=>nx23445z2
   );
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z25, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z28);
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx46946z28, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_1 ;

architecture IMPLEMENTATION of sub_10_1 is 
   signal nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, 
      nx46946z13, nx46946z10, nx46946z7, nx46946z4, nx23445z2, 
      nx_sub_10_1_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z4);
   nx_sub_10_1_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z4, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z7);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z7, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z10);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z10, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z13);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z13, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z16);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z16, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z19);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z19, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z22);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z22, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z25);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_1_vcc_net, cin=>nx23445z2
   );
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z25, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z28);
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx46946z28, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_10_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_2 ;

architecture IMPLEMENTATION of add_8_2 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_2_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z4);
   nx_add_8_2_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_2_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_2 ;

architecture IMPLEMENTATION of add_9_2 is 
   signal nx45949z17, nx45949z15, nx45949z13, nx45949z11, nx45949z9, 
      nx45949z7, nx45949z5, nx45949z3, nx23445z2, nx_add_9_2_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(7), datad=>
      nx_add_9_2_vcc_net, cin=>nx45949z3);
   nx_add_9_2_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>a(6), datab=>a(7), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z5);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z5, dataa=>a(5), datab=>a(6), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z7);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z7, dataa=>a(4), datab=>a(5), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z9);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z9, dataa=>a(3), datab=>a(4), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z11);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z11, dataa=>a(2), datab=>a(3), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z13);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z13, dataa=>a(1), datab=>a(2), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z15);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_2_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z15, dataa=>a(0), datab=>a(1), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z17);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z17, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_p12_0 : IN std_logic) ;
end sub_10_2 ;

architecture IMPLEMENTATION of sub_10_2 is 
   signal nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, 
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx46946z29, 
      nx_sub_10_2_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>a(9), datad=>
      nx_sub_10_2_vcc_net, cin=>nx46946z3);
   nx_sub_10_2_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z6);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z6, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z9);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z9, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z12);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z12, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z15);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z15, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z18);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_2_vcc_net, cin=>nx23445z2
   );
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z18, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z21);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z21, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z24);
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z24, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z27);
   ix46946z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx46946z29, dataa=>a(0), datad=>nx_sub_10_2_vcc_net
   );
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"9671",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx46946z27, dataa=>b(0), datab=>
      p_p12_0, datad=>nx_sub_10_2_vcc_net, cin=>nx46946z29);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_p11_0 : IN std_logic) ;
end sub_10_3 ;

architecture IMPLEMENTATION of sub_10_3 is 
   signal nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, 
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx46946z29, 
      nx_sub_10_3_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>a(9), datad=>
      nx_sub_10_3_vcc_net, cin=>nx46946z3);
   nx_sub_10_3_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z6);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z6, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z9);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z9, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z12);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z12, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z15);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z15, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z18);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_3_vcc_net, cin=>nx23445z2
   );
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z18, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z21);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z21, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z24);
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z24, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z27);
   ix46946z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx46946z29, dataa=>a(0), datad=>nx_sub_10_3_vcc_net
   );
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"9671",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx46946z27, dataa=>b(0), datab=>
      p_p11_0, datad=>nx_sub_10_3_vcc_net, cin=>nx46946z29);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity flow_notri is 
   port (
      p_i_valid_ix261 : IN std_logic_vector (0 DOWNTO 0) ;
      p_i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_i_row : IN std_logic_vector (7 DOWNTO 0) ;
      p_o_valid : OUT std_logic ;
      p_debug_valid : OUT std_logic ;
      p_i_clock : IN std_logic ;
      p_i2 : IN std_logic_vector (7 DOWNTO 0) ;
      p_i1 : IN std_logic_vector (7 DOWNTO 0) ;
      p_b3 : IN std_logic_vector (7 DOWNTO 0) ;
      p_b2 : IN std_logic_vector (7 DOWNTO 0) ;
      p_b1 : IN std_logic_vector (7 DOWNTO 0) ;
      p_t3 : IN std_logic_vector (7 DOWNTO 0) ;
      p_t2 : IN std_logic_vector (7 DOWNTO 0) ;
      p_t1 : IN std_logic_vector (7 DOWNTO 0) ;
      p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      p_o_edge : OUT std_logic ;
      p_debug_num_6 : OUT std_logic ;
      p_debug_num_7 : OUT std_logic ;
      p_debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_i_reset : IN std_logic ;
      p_debug_num_2 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_debug_num_1 : OUT std_logic_vector (10 DOWNTO 0) ;
      p_debug_num_0 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_ix259_ix248_nx13 : OUT std_logic ;
      p_ix259_ix249_nx13 : OUT std_logic ;
      p_ix259_ix250_nx13 : OUT std_logic ;
      p_ix259_ix251_nx13 : OUT std_logic ;
      p_ix259_ix252_nx13 : OUT std_logic ;
      p_ix259_ix253_nx13 : OUT std_logic ;
      p_ix259_ix254_nx13 : OUT std_logic ;
      p_ix259_ix255_nx13 : OUT std_logic ;
      p_not_rtlc5n47 : OUT std_logic ;
      p_p23_10 : OUT std_logic ;
      p_p23_9 : OUT std_logic ;
      p_p23_8 : OUT std_logic ;
      p_p23_7 : OUT std_logic ;
      p_p23_6 : OUT std_logic ;
      p_p23_5 : OUT std_logic ;
      p_p23_4 : OUT std_logic ;
      p_p23_3 : OUT std_logic ;
      p_p23_2 : OUT std_logic ;
      p_p23_1 : OUT std_logic ;
      p_p23_0 : OUT std_logic ;
      p_p21_4n0r2_12 : OUT std_logic ;
      p_p21_4n0r2_11 : OUT std_logic ;
      p_p21_4n0r2_10 : OUT std_logic ;
      p_p21_4n0r2_9 : OUT std_logic ;
      p_p21_4n0r2_8 : OUT std_logic ;
      p_p21_4n0r2_7 : OUT std_logic ;
      p_p21_4n0r2_6 : OUT std_logic ;
      p_p21_4n0r2_5 : OUT std_logic ;
      p_p21_4n0r2_4 : OUT std_logic ;
      p_p21_4n0r2_3 : OUT std_logic ;
      p_p21_4n0r2_2 : OUT std_logic ;
      p_p21_4n0r2_1 : OUT std_logic ;
      p_p21_4n0r3_0 : OUT std_logic ;
      p_p22_4n0r2_12 : OUT std_logic ;
      p_p22_4n0r2_11 : OUT std_logic ;
      p_p22_4n0r2_10 : OUT std_logic ;
      p_p22_4n0r2_9 : OUT std_logic ;
      p_p22_4n0r2_8 : OUT std_logic ;
      p_p22_4n0r2_7 : OUT std_logic ;
      p_p22_4n0r2_6 : OUT std_logic ;
      p_p22_4n0r2_5 : OUT std_logic ;
      p_p22_4n0r2_4 : OUT std_logic ;
      p_p22_4n0r2_3 : OUT std_logic ;
      p_p22_4n0r2_2 : OUT std_logic ;
      p_p22_4n0r2_1 : OUT std_logic ;
      p_p22_4n0r3_0 : OUT std_logic ;
      p_p5m_1 : OUT std_logic ;
      p_p5m_0 : OUT std_logic) ;
end flow_notri ;

architecture main_unfold_1331 of flow_notri is 
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component gt_14_0
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic ;
         px128 : IN std_logic) ;
   end component ;
   component gt_13_0
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn824 : IN std_logic ;
         p_rtlcn864 : IN std_logic) ;
   end component ;
   component add_12_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn905 : IN std_logic ;
         p_rtlcn945 : IN std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_p12_0 : IN std_logic) ;
   end component ;
   component sub_10_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_p11_0 : IN std_logic) ;
   end component ;
   signal p40, p_debug_valid_EXMPLR742: std_logic ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx6397z2, p22_4n0r3_0, nx6397z1, nx10173z2, p21_4n0r3_0, nx10173z1, 
      p12_9, p12_1, p12_2, p12_3, p12_4, p12_5, p12_6, p12_7, p12_8: 
   std_logic ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p11_9, p11_1, p11_2, p11_3, p11_4, p11_5, p11_6, p11_7, p11_8: 
   std_logic ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal max_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal p_o_edge_EXMPLR808: std_logic ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p11_0: std_logic ;
   
   signal p22_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p22_4n0r3_1, p22_4n0r3_2, p22_4n0r3_3, p22_4n0r3_4, p22_4n0r3_5, 
      p22_4n0r3_6, p22_4n0r3_7, p22_4n0r3_8, p22_4n0r3_9: std_logic ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p12_0: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p21_4n0r3_1, p21_4n0r3_2, p21_4n0r3_3, p21_4n0r3_4, p21_4n0r3_5, 
      p21_4n0r3_6, p21_4n0r3_7, p21_4n0r3_8, p21_4n0r3_9, 
      p_debug_num_6_EXMPLR809, p_debug_num_7_EXMPLR810, state_1, state_2, 
      state_0, state_3, nx25033z2, p_debug_num_3_0_EXMPLR811, 
      p_debug_num_3_1_EXMPLR812, p_debug_num_3_2_EXMPLR813, 
      p_debug_num_3_3_EXMPLR814, p_debug_num_3_4_EXMPLR815, 
      p_debug_num_3_5_EXMPLR816, p_debug_num_3_6_EXMPLR817, 
      p_debug_num_3_7_EXMPLR818, p_debug_num_3_8_EXMPLR819, 
      p_debug_num_3_9_EXMPLR820, p_debug_num_3_10_EXMPLR821, 
      p_debug_num_3_11_EXMPLR822, p_debug_num_3_12_EXMPLR823, 
      p_debug_num_4_0_EXMPLR824, p_debug_num_4_1_EXMPLR825, 
      p_debug_num_4_2_EXMPLR826, p_debug_num_4_3_EXMPLR827, 
      p_debug_num_4_4_EXMPLR828, p_debug_num_4_5_EXMPLR829, 
      p_debug_num_4_6_EXMPLR830, p_debug_num_4_7_EXMPLR831, 
      p_debug_num_4_8_EXMPLR832, p_debug_num_4_9_EXMPLR833, 
      p_debug_num_4_10_EXMPLR834, p_debug_num_4_11_EXMPLR835, 
      p_debug_num_4_12_EXMPLR836, max_fwd, nx25836z4: std_logic ;
   
   signal prev_max: std_logic_vector (13 DOWNTO 0) ;
   
   signal p43: std_logic_vector (13 DOWNTO 0) ;
   
   signal p45, p_debug_num_2_0_EXMPLR838, p_debug_num_2_1_EXMPLR839, 
      p_debug_num_2_2_EXMPLR840, p_debug_num_2_3_EXMPLR841, 
      p_debug_num_2_4_EXMPLR842, p_debug_num_2_5_EXMPLR843, 
      p_debug_num_2_6_EXMPLR844, p_debug_num_2_7_EXMPLR845, 
      p_debug_num_2_8_EXMPLR846, p_debug_num_2_9_EXMPLR847, 
      p_debug_num_2_10_EXMPLR848, p_debug_num_2_11_EXMPLR849, 
      p_debug_num_1_0_EXMPLR850, p_debug_num_1_1_EXMPLR851, 
      p_debug_num_1_2_EXMPLR852, p_debug_num_1_3_EXMPLR853, 
      p_debug_num_1_4_EXMPLR854, p_debug_num_1_5_EXMPLR855, 
      p_debug_num_1_6_EXMPLR856, p_debug_num_1_7_EXMPLR857, 
      p_debug_num_1_8_EXMPLR858, p_debug_num_1_9_EXMPLR859, 
      p_debug_num_1_10_EXMPLR860, p_debug_num_0_0_EXMPLR861, 
      p_debug_num_0_1_EXMPLR862, p_debug_num_0_2_EXMPLR863, 
      p_debug_num_0_3_EXMPLR864, p_debug_num_0_4_EXMPLR865, 
      p_debug_num_0_5_EXMPLR866, p_debug_num_0_6_EXMPLR867, 
      p_debug_num_0_7_EXMPLR868, p_debug_num_0_8_EXMPLR869, 
      p_debug_num_0_9_EXMPLR870, p_debug_num_0_10_EXMPLR871, 
      p_debug_num_0_11_EXMPLR872, p_debug_num_0_12_EXMPLR873, nx29125z1, 
      nx53946z1, nx48811z1, nx52949z1, nx47814z1, nx51952z1, nx46817z1, 
      nx50955z1, nx45820z1, nx49958z1, nx44823z1, nx48961z1, nx43826z1, 
      nx47964z1, nx42829z1, nx46967z1, nx41832z1, nx64969z1, nx4568z1, 
      nx9703z1, nx430z1, nx5565z1, nx10700z1: std_logic ;
   
   signal ix261_ix258_nx7: std_logic_vector (0 DOWNTO 0) ;
   
   signal nx48462z1, p4s_0n0s1_12, nx27830z1, nx25033z1, nx25836z2, nx5049z2, 
      nx30752z1, nx26026z1, nx25836z3, p_debug_num_2_12_EXMPLR877, PWR, 
      nx25836z15, nx25836z7, nx5049z1, nx29521z1, nx25836z1, nx26833z1, 
      nx26833z2, nx25836z8, nx25836z9, nx25836z10, nx25836z11, nx25836z12, 
      nx25836z13, nx25836z14, nx25836z16, nx26026z2, nx25836z6, nx28524z1, 
      NOT_state_3, nx47310z1, nx25836z5, NOT_debug_num_1_11: std_logic ;
   
   signal DANGLING : std_logic_vector (36 downto 0 );

begin
   p_o_edge <= p_o_edge_EXMPLR808 ;
   p_debug_num_6 <= p_debug_num_6_EXMPLR809 ;
   p_debug_num_7 <= p_debug_num_7_EXMPLR810 ;
   p_debug_num_2(0) <= p_debug_num_2_0_EXMPLR838 ;
   p_debug_num_2(1) <= p_debug_num_2_1_EXMPLR839 ;
   p_debug_num_2(2) <= p_debug_num_2_2_EXMPLR840 ;
   p_debug_num_2(3) <= p_debug_num_2_3_EXMPLR841 ;
   p_debug_num_2(4) <= p_debug_num_2_4_EXMPLR842 ;
   p_debug_num_2(5) <= p_debug_num_2_5_EXMPLR843 ;
   p_debug_num_2(6) <= p_debug_num_2_6_EXMPLR844 ;
   p_debug_num_2(7) <= p_debug_num_2_7_EXMPLR845 ;
   p_debug_num_2(8) <= p_debug_num_2_8_EXMPLR846 ;
   p_debug_num_2(9) <= p_debug_num_2_9_EXMPLR847 ;
   p_debug_num_2(10) <= p_debug_num_2_10_EXMPLR848 ;
   p_debug_num_2(11) <= p_debug_num_2_11_EXMPLR849 ;
   p_debug_num_0(0) <= p_debug_num_0_0_EXMPLR861 ;
   p_debug_num_0(1) <= p_debug_num_0_1_EXMPLR862 ;
   p_debug_num_0(2) <= p_debug_num_0_2_EXMPLR863 ;
   p_debug_num_0(3) <= p_debug_num_0_3_EXMPLR864 ;
   p_debug_num_0(4) <= p_debug_num_0_4_EXMPLR865 ;
   p_debug_num_0(5) <= p_debug_num_0_5_EXMPLR866 ;
   p_debug_num_0(6) <= p_debug_num_0_6_EXMPLR867 ;
   p_debug_num_0(7) <= p_debug_num_0_7_EXMPLR868 ;
   p_debug_num_0(8) <= p_debug_num_0_8_EXMPLR869 ;
   p_debug_num_0(9) <= p_debug_num_0_9_EXMPLR870 ;
   p_debug_num_0(10) <= p_debug_num_0_10_EXMPLR871 ;
   p_debug_num_0(11) <= p_debug_num_0_11_EXMPLR872 ;
   p_debug_num_2(12) <= p_debug_num_2_12_EXMPLR877 ;
   p_debug_num_0(12) <= p_debug_num_0_12_EXMPLR873 ;
   p_not_rtlc5n47 <= nx25033z1 ;
   p_p23_10 <= p23(10) ;
   p_p23_9 <= p23(9) ;
   p_p23_8 <= p23(8) ;
   p_p23_7 <= p23(7) ;
   p_p23_6 <= p23(6) ;
   p_p23_5 <= p23(5) ;
   p_p23_4 <= p23(4) ;
   p_p23_3 <= p23(3) ;
   p_p23_2 <= p23(2) ;
   p_p23_1 <= p23(1) ;
   p_p23_0 <= p23(0) ;
   p_p21_4n0r2_12 <= p21_4n0r2(12) ;
   p_p21_4n0r2_11 <= p21_4n0r2(11) ;
   p_p21_4n0r2_10 <= p21_4n0r2(10) ;
   p_p21_4n0r2_9 <= p21_4n0r2(9) ;
   p_p21_4n0r2_8 <= p21_4n0r2(8) ;
   p_p21_4n0r2_7 <= p21_4n0r2(7) ;
   p_p21_4n0r2_6 <= p21_4n0r2(6) ;
   p_p21_4n0r2_5 <= p21_4n0r2(5) ;
   p_p21_4n0r2_4 <= p21_4n0r2(4) ;
   p_p21_4n0r2_3 <= p21_4n0r2(3) ;
   p_p21_4n0r2_2 <= p21_4n0r2(2) ;
   p_p21_4n0r2_1 <= p21_4n0r2(1) ;
   p_p21_4n0r3_0 <= p21_4n0r3_0 ;
   p_p22_4n0r2_12 <= p22_4n0r2(12) ;
   p_p22_4n0r2_11 <= p22_4n0r2(11) ;
   p_p22_4n0r2_10 <= p22_4n0r2(10) ;
   p_p22_4n0r2_9 <= p22_4n0r2(9) ;
   p_p22_4n0r2_8 <= p22_4n0r2(8) ;
   p_p22_4n0r2_7 <= p22_4n0r2(7) ;
   p_p22_4n0r2_6 <= p22_4n0r2(6) ;
   p_p22_4n0r2_5 <= p22_4n0r2(5) ;
   p_p22_4n0r2_4 <= p22_4n0r2(4) ;
   p_p22_4n0r2_3 <= p22_4n0r2(3) ;
   p_p22_4n0r2_2 <= p22_4n0r2(2) ;
   p_p22_4n0r2_1 <= p22_4n0r2(1) ;
   p_p22_4n0r3_0 <= p22_4n0r3_0 ;
   debug_num_2_sub12_0 : sub_12_0 port map ( cin=>DANGLING(0), a(11)=>
      p_debug_num_0_11_EXMPLR872, a(10)=>p_debug_num_0_10_EXMPLR871, a(9)=>
      p_debug_num_0_9_EXMPLR870, a(8)=>p_debug_num_0_8_EXMPLR869, a(7)=>
      p_debug_num_0_7_EXMPLR868, a(6)=>p_debug_num_0_6_EXMPLR867, a(5)=>
      p_debug_num_0_5_EXMPLR866, a(4)=>p_debug_num_0_4_EXMPLR865, a(3)=>
      p_debug_num_0_3_EXMPLR864, a(2)=>p_debug_num_0_2_EXMPLR863, a(1)=>
      p_debug_num_0_1_EXMPLR862, a(0)=>p_debug_num_0_0_EXMPLR861, b(11)=>
      DANGLING(1), b(10)=>p_debug_num_1_10_EXMPLR860, b(9)=>
      p_debug_num_1_9_EXMPLR859, b(8)=>p_debug_num_1_8_EXMPLR858, b(7)=>
      p_debug_num_1_7_EXMPLR857, b(6)=>p_debug_num_1_6_EXMPLR856, b(5)=>
      p_debug_num_1_5_EXMPLR855, b(4)=>p_debug_num_1_4_EXMPLR854, b(3)=>
      p_debug_num_1_3_EXMPLR853, b(2)=>p_debug_num_1_2_EXMPLR852, b(1)=>
      p_debug_num_1_1_EXMPLR851, b(0)=>p_debug_num_1_0_EXMPLR850, d(11)=>
      p_debug_num_2_11_EXMPLR849, d(10)=>p_debug_num_2_10_EXMPLR848, d(9)=>
      p_debug_num_2_9_EXMPLR847, d(8)=>p_debug_num_2_8_EXMPLR846, d(7)=>
      p_debug_num_2_7_EXMPLR845, d(6)=>p_debug_num_2_6_EXMPLR844, d(5)=>
      p_debug_num_2_5_EXMPLR843, d(4)=>p_debug_num_2_4_EXMPLR842, d(3)=>
      p_debug_num_2_3_EXMPLR841, d(2)=>p_debug_num_2_2_EXMPLR840, d(1)=>
      p_debug_num_2_1_EXMPLR839, d(0)=>p_debug_num_2_0_EXMPLR838, cout=>
      nx29125z1);
   ix25836z8934 : gt_14_0 port map ( a(13)=>p43(13), a(12)=>p43(12), a(11)=>
      p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), 
      a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), 
      a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>prev_max(12), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>nx25836z4, px128=>nx25836z5);
   ix25033z19901 : gt_13_0 port map ( a(12)=>p_debug_num_4_12_EXMPLR836, 
      a(11)=>p_debug_num_4_11_EXMPLR835, a(10)=>p_debug_num_4_10_EXMPLR834, 
      a(9)=>p_debug_num_4_9_EXMPLR833, a(8)=>p_debug_num_4_8_EXMPLR832, a(7)
      =>p_debug_num_4_7_EXMPLR831, a(6)=>p_debug_num_4_6_EXMPLR830, a(5)=>
      p_debug_num_4_5_EXMPLR829, a(4)=>p_debug_num_4_4_EXMPLR828, a(3)=>
      p_debug_num_4_3_EXMPLR827, a(2)=>p_debug_num_4_2_EXMPLR826, a(1)=>
      p_debug_num_4_1_EXMPLR825, a(0)=>p_debug_num_4_0_EXMPLR824, b(12)=>
      p_debug_num_3_12_EXMPLR823, b(11)=>p_debug_num_3_11_EXMPLR822, b(10)=>
      p_debug_num_3_10_EXMPLR821, b(9)=>p_debug_num_3_9_EXMPLR820, b(8)=>
      p_debug_num_3_8_EXMPLR819, b(7)=>p_debug_num_3_7_EXMPLR818, b(6)=>
      p_debug_num_3_6_EXMPLR817, b(5)=>p_debug_num_3_5_EXMPLR816, b(4)=>
      p_debug_num_3_4_EXMPLR815, b(3)=>p_debug_num_3_3_EXMPLR814, b(2)=>
      p_debug_num_3_2_EXMPLR813, b(1)=>p_debug_num_3_1_EXMPLR812, b(0)=>
      p_debug_num_3_0_EXMPLR811, d=>nx25033z2);
   p21_add12_4i1 : add_12_0 port map ( cin=>DANGLING(2), a(11)=>DANGLING(3), 
      a(10)=>DANGLING(4), a(9)=>DANGLING(5), a(8)=>p21_4n0r3_9, a(7)=>
      p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, a(4)=>p21_4n0r3_5, 
      a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>p21_4n0r3_2, a(0)=>
      p21_4n0r3_1, b(11)=>DANGLING(6), b(10)=>p21_4n0r4(11), b(9)=>
      p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>p21_4n0r4(8), b(6)=>
      p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>p21_4n0r4(5), b(3)=>
      p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>p21_4n0r4(2), b(0)=>p12_0, 
      d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), d(9)=>p21_4n0r2(10), d(8)
      =>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>p21_4n0r2(7), d(5)=>
      p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>p21_4n0r2(4), d(2)=>
      p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>p21_4n0r2(1), cout=>DANGLING(7
      ), p_rtlcn824=>nx10173z1, p_rtlcn864=>nx10173z2);
   p22_add12_4i2 : add_12_1 port map ( cin=>DANGLING(8), a(11)=>DANGLING(9), 
      a(10)=>DANGLING(10), a(9)=>DANGLING(11), a(8)=>p22_4n0r3_9, a(7)=>
      p22_4n0r3_8, a(6)=>p22_4n0r3_7, a(5)=>p22_4n0r3_6, a(4)=>p22_4n0r3_5, 
      a(3)=>p22_4n0r3_4, a(2)=>p22_4n0r3_3, a(1)=>p22_4n0r3_2, a(0)=>
      p22_4n0r3_1, b(11)=>DANGLING(12), b(10)=>p22_4n0r4(11), b(9)=>
      p22_4n0r4(10), b(8)=>p22_4n0r4(9), b(7)=>p22_4n0r4(8), b(6)=>
      p22_4n0r4(7), b(5)=>p22_4n0r4(6), b(4)=>p22_4n0r4(5), b(3)=>
      p22_4n0r4(4), b(2)=>p22_4n0r4(3), b(1)=>p22_4n0r4(2), b(0)=>p11_0, 
      d(11)=>p22_4n0r2(12), d(10)=>p22_4n0r2(11), d(9)=>p22_4n0r2(10), d(8)
      =>p22_4n0r2(9), d(7)=>p22_4n0r2(8), d(6)=>p22_4n0r2(7), d(5)=>
      p22_4n0r2(6), d(4)=>p22_4n0r2(5), d(3)=>p22_4n0r2(4), d(2)=>
      p22_4n0r2(3), d(1)=>p22_4n0r2(2), d(0)=>p22_4n0r2(1), cout=>DANGLING(
      13), p_rtlcn905=>nx6397z1, p_rtlcn945=>nx6397z2);
   p11_add8_0i1 : add_8_0 port map ( cin=>DANGLING(14), a(7)=>p_t1(7), a(6)
      =>p_t1(6), a(5)=>p_t1(5), a(4)=>p_t1(4), a(3)=>p_t1(3), a(2)=>p_t1(2), 
      a(1)=>p_t1(1), a(0)=>p_t1(0), b(7)=>p_t2(7), b(6)=>p_t2(6), b(5)=>
      p_t2(5), b(4)=>p_t2(4), b(3)=>p_t2(3), b(2)=>p_t2(2), b(1)=>p_t2(1), 
      b(0)=>p_t2(0), d(7)=>p11_0n0s2(0), d(6)=>p11_0n0s2(1), d(5)=>
      p11_0n0s2(2), d(4)=>p11_0n0s2(3), d(3)=>p11_0n0s2(4), d(2)=>
      p11_0n0s2(5), d(1)=>p11_0n0s2(6), d(0)=>p11_0n0s2(7), cout=>
      p11_0n0s2(8));
   p11_add9_1 : add_9_0 port map ( cin=>DANGLING(15), a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(0), a(6)=>p11_0n0s2(1), a(5)=>p11_0n0s2(2), a(4)=>
      p11_0n0s2(3), a(3)=>p11_0n0s2(4), a(2)=>p11_0n0s2(5), a(1)=>
      p11_0n0s2(6), a(0)=>p11_0n0s2(7), b(8)=>DANGLING(16), b(7)=>p_t3(7), 
      b(6)=>p_t3(6), b(5)=>p_t3(5), b(4)=>p_t3(4), b(3)=>p_t3(3), b(2)=>
      p_t3(2), b(1)=>p_t3(1), b(0)=>p_t3(0), d(8)=>p11_8, d(7)=>p11_7, d(6)
      =>p11_6, d(5)=>p11_5, d(4)=>p11_4, d(3)=>p11_3, d(2)=>p11_2, d(1)=>
      p11_1, d(0)=>p11_0, cout=>p11_9);
   p12_add8_0i2 : add_8_1 port map ( cin=>DANGLING(17), a(7)=>p_b1(7), a(6)
      =>p_b1(6), a(5)=>p_b1(5), a(4)=>p_b1(4), a(3)=>p_b1(3), a(2)=>p_b1(2), 
      a(1)=>p_b1(1), a(0)=>p_b1(0), b(7)=>p_b2(7), b(6)=>p_b2(6), b(5)=>
      p_b2(5), b(4)=>p_b2(4), b(3)=>p_b2(3), b(2)=>p_b2(2), b(1)=>p_b2(1), 
      b(0)=>p_b2(0), d(7)=>p12_0n0s2(0), d(6)=>p12_0n0s2(1), d(5)=>
      p12_0n0s2(2), d(4)=>p12_0n0s2(3), d(3)=>p12_0n0s2(4), d(2)=>
      p12_0n0s2(5), d(1)=>p12_0n0s2(6), d(0)=>p12_0n0s2(7), cout=>
      p12_0n0s2(8));
   p12_add9_2 : add_9_1 port map ( cin=>DANGLING(18), a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(0), a(6)=>p12_0n0s2(1), a(5)=>p12_0n0s2(2), a(4)=>
      p12_0n0s2(3), a(3)=>p12_0n0s2(4), a(2)=>p12_0n0s2(5), a(1)=>
      p12_0n0s2(6), a(0)=>p12_0n0s2(7), b(8)=>DANGLING(19), b(7)=>p_b3(7), 
      b(6)=>p_b3(6), b(5)=>p_b3(5), b(4)=>p_b3(4), b(3)=>p_b3(3), b(2)=>
      p_b3(2), b(1)=>p_b3(1), b(0)=>p_b3(0), d(8)=>p12_8, d(7)=>p12_7, d(6)
      =>p12_6, d(5)=>p12_5, d(4)=>p12_4, d(3)=>p12_3, d(2)=>p12_2, d(1)=>
      p12_1, d(0)=>p12_0, cout=>p12_9);
   p21_sub10_4i3 : sub_10_0 port map ( cin=>DANGLING(20), a(9)=>p11_9, a(8)
      =>p11_8, a(7)=>p11_7, a(6)=>p11_6, a(5)=>p11_5, a(4)=>p11_4, a(3)=>
      p11_3, a(2)=>p11_2, a(1)=>p11_1, a(0)=>p11_0, b(9)=>p12_9, b(8)=>p12_8, 
      b(7)=>p12_7, b(6)=>p12_6, b(5)=>p12_5, b(4)=>p12_4, b(3)=>p12_3, b(2)
      =>p12_2, b(1)=>p12_1, b(0)=>p12_0, d(9)=>p21_4n0r3_9, d(8)=>
      p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>p21_4n0r3_6, d(5)=>p21_4n0r3_5, 
      d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, d(2)=>p21_4n0r3_2, d(1)=>
      p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>nx10173z1);
   p22_sub10_4i5 : sub_10_1 port map ( cin=>DANGLING(21), a(9)=>p12_9, a(8)
      =>p12_8, a(7)=>p12_7, a(6)=>p12_6, a(5)=>p12_5, a(4)=>p12_4, a(3)=>
      p12_3, a(2)=>p12_2, a(1)=>p12_1, a(0)=>p12_0, b(9)=>p11_9, b(8)=>p11_8, 
      b(7)=>p11_7, b(6)=>p11_6, b(5)=>p11_5, b(4)=>p11_4, b(3)=>p11_3, b(2)
      =>p11_2, b(1)=>p11_1, b(0)=>p11_0, d(9)=>p22_4n0r3_9, d(8)=>
      p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>p22_4n0r3_6, d(5)=>p22_4n0r3_5, 
      d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, d(2)=>p22_4n0r3_2, d(1)=>
      p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>nx6397z1);
   p13_add8_0i3 : add_8_2 port map ( cin=>DANGLING(22), a(7)=>p_i1(7), a(6)
      =>p_i1(6), a(5)=>p_i1(5), a(4)=>p_i1(4), a(3)=>p_i1(3), a(2)=>p_i1(2), 
      a(1)=>p_i1(1), a(0)=>p_i1(0), b(7)=>p_i2(7), b(6)=>p_i2(6), b(5)=>
      p_i2(5), b(4)=>p_i2(4), b(3)=>p_i2(3), b(2)=>p_i2(2), b(1)=>p_i2(1), 
      b(0)=>p_i2(0), d(7)=>p13_0n0s2(0), d(6)=>p13_0n0s2(1), d(5)=>
      p13_0n0s2(2), d(4)=>p13_0n0s2(3), d(3)=>p13_0n0s2(4), d(2)=>
      p13_0n0s2(5), d(1)=>p13_0n0s2(6), d(0)=>p13_0n0s2(7), cout=>
      p13_0n0s2(8));
   p13_add9_3 : add_9_2 port map ( cin=>DANGLING(23), a(8)=>DANGLING(24), 
      a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(0), a(5)=>p13_0n0s2(1), a(4)=>
      p13_0n0s2(2), a(3)=>p13_0n0s2(3), a(2)=>p13_0n0s2(4), a(1)=>
      p13_0n0s2(5), a(0)=>p13_0n0s2(6), b(8)=>DANGLING(25), b(7)=>DANGLING(
      26), b(6)=>DANGLING(27), b(5)=>DANGLING(28), b(4)=>DANGLING(29), b(3)
      =>DANGLING(30), b(2)=>DANGLING(31), b(1)=>DANGLING(32), b(0)=>
      p13_0n0s2(7), d(8)=>p13(1), d(7)=>p13(2), d(6)=>p13(3), d(5)=>p13(4), 
      d(4)=>p13(5), d(3)=>p13(6), d(2)=>p13(7), d(1)=>p13(8), d(0)=>p13(9), 
      cout=>p13(10));
   p21_sub11_4i4 : sub_10_2 port map ( cin=>DANGLING(33), a(9)=>p11_9, a(8)
      =>p11_8, a(7)=>p11_7, a(6)=>p11_6, a(5)=>p11_5, a(4)=>p11_4, a(3)=>
      p11_3, a(2)=>p11_2, a(1)=>p11_1, a(0)=>p11_0, b(9)=>DANGLING(34), b(8)
      =>p12_9, b(7)=>p12_8, b(6)=>p12_7, b(5)=>p12_6, b(4)=>p12_5, b(3)=>
      p12_4, b(2)=>p12_3, b(1)=>p12_2, b(0)=>p12_1, d(9)=>p21_4n0r4(11), 
      d(8)=>p21_4n0r4(10), d(7)=>p21_4n0r4(9), d(6)=>p21_4n0r4(8), d(5)=>
      p21_4n0r4(7), d(4)=>p21_4n0r4(6), d(3)=>p21_4n0r4(5), d(2)=>
      p21_4n0r4(4), d(1)=>p21_4n0r4(3), d(0)=>p21_4n0r4(2), cout=>nx10173z2, 
      p_p12_0=>p12_0);
   p22_sub11_4i6 : sub_10_3 port map ( cin=>DANGLING(35), a(9)=>p12_9, a(8)
      =>p12_8, a(7)=>p12_7, a(6)=>p12_6, a(5)=>p12_5, a(4)=>p12_4, a(3)=>
      p12_3, a(2)=>p12_2, a(1)=>p12_1, a(0)=>p12_0, b(9)=>DANGLING(36), b(8)
      =>p11_9, b(7)=>p11_8, b(6)=>p11_7, b(5)=>p11_6, b(4)=>p11_5, b(3)=>
      p11_4, b(2)=>p11_3, b(1)=>p11_2, b(0)=>p11_1, d(9)=>p22_4n0r4(11), 
      d(8)=>p22_4n0r4(10), d(7)=>p22_4n0r4(9), d(6)=>p22_4n0r4(8), d(5)=>
      p22_4n0r4(7), d(4)=>p22_4n0r4(6), d(3)=>p22_4n0r4(5), d(2)=>
      p22_4n0r4(4), d(1)=>p22_4n0r4(3), d(0)=>p22_4n0r4(2), cout=>nx6397z2, 
      p_p11_0=>p11_0);
   nx25033z1 <= NOT nx25033z2;
   PWR <= '1';
   state_0 <= NOT nx28524z1;
   NOT_state_3 <= NOT state_3;
   p_debug_num_6_EXMPLR809 <= NOT nx47310z1;
   p43(13) <= NOT nx25836z5;
   NOT_debug_num_1_11 <= '1';
   reg_tmp_o_edge : cycloneii_lcell_ff port map ( regout=>p_o_edge_EXMPLR808, 
      datain=>p_debug_num_7_EXMPLR810, sdata=>p_debug_num_6_EXMPLR809, clk=>
      p_i_clock, ena=>PWR, sload=>nx30752z1);
   reg_state_3 : cycloneii_lcell_ff port map ( regout=>state_3, datain=>
      state_2, clk=>p_i_clock, ena=>nx29521z1, sclr=>p_i_reset);
   reg_state_2 : cycloneii_lcell_ff port map ( regout=>state_2, datain=>
      state_1, clk=>p_i_clock, ena=>nx29521z1, sclr=>p_i_reset);
   reg_state_1 : cycloneii_lcell_ff port map ( regout=>state_1, datain=>
      state_0, clk=>p_i_clock, ena=>nx29521z1, sclr=>p_i_reset);
   reg_state_0 : cycloneii_lcell_ff port map ( regout=>nx28524z1, datain=>
      NOT_state_3, clk=>p_i_clock, ena=>nx29521z1, sclr=>p_i_reset);
   reg_prev_max_9 : cycloneii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_8 : cycloneii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_7 : cycloneii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_6 : cycloneii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_5 : cycloneii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_4 : cycloneii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_3 : cycloneii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_2 : cycloneii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_13 : cycloneii_lcell_ff port map ( regout=>prev_max(13), 
      datain=>p43(13), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_12 : cycloneii_lcell_ff port map ( regout=>prev_max(12), 
      datain=>p43(12), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_11 : cycloneii_lcell_ff port map ( regout=>prev_max(11), 
      datain=>p43(11), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_10 : cycloneii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_1 : cycloneii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_max_0 : cycloneii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_prev_edge : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_7_EXMPLR810, datain=>p_debug_num_6_EXMPLR809, clk=>
      p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_p45 : cycloneii_lcell_ff port map ( regout=>p45, datain=>
      p_debug_valid_EXMPLR742, clk=>p_i_clock);
   reg_p43_9 : cycloneii_lcell_ff port map ( regout=>p43(9), datain=>
      p_debug_num_2_9_EXMPLR847, clk=>p_i_clock);
   reg_p43_8 : cycloneii_lcell_ff port map ( regout=>p43(8), datain=>
      p_debug_num_2_8_EXMPLR846, clk=>p_i_clock);
   reg_p43_7 : cycloneii_lcell_ff port map ( regout=>p43(7), datain=>
      p_debug_num_2_7_EXMPLR845, clk=>p_i_clock);
   reg_p43_6 : cycloneii_lcell_ff port map ( regout=>p43(6), datain=>
      p_debug_num_2_6_EXMPLR844, clk=>p_i_clock);
   reg_p43_5 : cycloneii_lcell_ff port map ( regout=>p43(5), datain=>
      p_debug_num_2_5_EXMPLR843, clk=>p_i_clock);
   reg_p43_4 : cycloneii_lcell_ff port map ( regout=>p43(4), datain=>
      p_debug_num_2_4_EXMPLR842, clk=>p_i_clock);
   reg_p43_3 : cycloneii_lcell_ff port map ( regout=>p43(3), datain=>
      p_debug_num_2_3_EXMPLR841, clk=>p_i_clock);
   reg_p43_2 : cycloneii_lcell_ff port map ( regout=>p43(2), datain=>
      p_debug_num_2_2_EXMPLR840, clk=>p_i_clock);
   reg_p43_13 : cycloneii_lcell_ff port map ( regout=>nx25836z5, datain=>
      nx29125z1, clk=>p_i_clock, sclr=>p_debug_num_0_12_EXMPLR873);
   reg_p43_12 : cycloneii_lcell_ff port map ( regout=>p43(12), datain=>
      p4s_0n0s1_12, clk=>p_i_clock);
   reg_p43_11 : cycloneii_lcell_ff port map ( regout=>p43(11), datain=>
      p_debug_num_2_11_EXMPLR849, clk=>p_i_clock);
   reg_p43_10 : cycloneii_lcell_ff port map ( regout=>p43(10), datain=>
      p_debug_num_2_10_EXMPLR848, clk=>p_i_clock);
   reg_p43_1 : cycloneii_lcell_ff port map ( regout=>p43(1), datain=>
      p_debug_num_2_1_EXMPLR839, clk=>p_i_clock);
   reg_p43_0 : cycloneii_lcell_ff port map ( regout=>p43(0), datain=>
      p_debug_num_2_0_EXMPLR838, clk=>p_i_clock);
   reg_p41 : cycloneii_lcell_ff port map ( regout=>nx47310z1, datain=>
      NOT_debug_num_1_11, clk=>p_i_clock, sclr=>nx26026z1);
   reg_p35 : cycloneii_lcell_ff port map ( regout=>p_debug_valid_EXMPLR742, 
      datain=>nx25033z1, clk=>p_i_clock);
   reg_p32_9 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_9_EXMPLR859, datain=>p23(9), clk=>p_i_clock);
   reg_p32_8 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_8_EXMPLR858, datain=>p23(8), clk=>p_i_clock);
   reg_p32_7 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_7_EXMPLR857, datain=>p23(7), clk=>p_i_clock);
   reg_p32_6 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_6_EXMPLR856, datain=>p23(6), clk=>p_i_clock);
   reg_p32_5 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_5_EXMPLR855, datain=>p23(5), clk=>p_i_clock);
   reg_p32_4 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_4_EXMPLR854, datain=>p23(4), clk=>p_i_clock);
   reg_p32_3 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_3_EXMPLR853, datain=>p23(3), clk=>p_i_clock);
   reg_p32_2 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_2_EXMPLR852, datain=>p23(2), clk=>p_i_clock);
   reg_p32_10 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_10_EXMPLR860, datain=>p23(10), clk=>p_i_clock);
   reg_p32_1 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_1_EXMPLR851, datain=>p23(1), clk=>p_i_clock);
   reg_p32_0 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_1_0_EXMPLR850, datain=>p23(0), clk=>p_i_clock);
   reg_p31_9 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_9_EXMPLR870, datain=>p_debug_num_3_9_EXMPLR820, sdata=>
      p_debug_num_4_9_EXMPLR833, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_8 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_8_EXMPLR869, datain=>p_debug_num_3_8_EXMPLR819, sdata=>
      p_debug_num_4_8_EXMPLR832, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_7 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_7_EXMPLR868, datain=>p_debug_num_3_7_EXMPLR818, sdata=>
      p_debug_num_4_7_EXMPLR831, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_6 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_6_EXMPLR867, datain=>p_debug_num_3_6_EXMPLR817, sdata=>
      p_debug_num_4_6_EXMPLR830, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_5 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_5_EXMPLR866, datain=>p_debug_num_3_5_EXMPLR816, sdata=>
      p_debug_num_4_5_EXMPLR829, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_4 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_4_EXMPLR865, datain=>p_debug_num_3_4_EXMPLR815, sdata=>
      p_debug_num_4_4_EXMPLR828, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_3 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_3_EXMPLR864, datain=>p_debug_num_3_3_EXMPLR814, sdata=>
      p_debug_num_4_3_EXMPLR827, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_2 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_2_EXMPLR863, datain=>p_debug_num_3_2_EXMPLR813, sdata=>
      p_debug_num_4_2_EXMPLR826, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_12 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_12_EXMPLR873, datain=>p_debug_num_3_12_EXMPLR823, sdata
      =>p_debug_num_4_12_EXMPLR836, clk=>p_i_clock, ena=>PWR, sload=>
      nx25033z2);
   reg_p31_11 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_11_EXMPLR872, datain=>p_debug_num_3_11_EXMPLR822, sdata
      =>p_debug_num_4_11_EXMPLR835, clk=>p_i_clock, ena=>PWR, sload=>
      nx25033z2);
   reg_p31_10 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_10_EXMPLR871, datain=>p_debug_num_3_10_EXMPLR821, sdata
      =>p_debug_num_4_10_EXMPLR834, clk=>p_i_clock, ena=>PWR, sload=>
      nx25033z2);
   reg_p31_1 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_1_EXMPLR862, datain=>p_debug_num_3_1_EXMPLR812, sdata=>
      p_debug_num_4_1_EXMPLR825, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p31_0 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_0_0_EXMPLR861, datain=>p_debug_num_3_0_EXMPLR811, sdata=>
      p_debug_num_4_0_EXMPLR824, clk=>p_i_clock, ena=>PWR, sload=>nx25033z2
   );
   reg_p23_9 : cycloneii_lcell_ff port map ( regout=>p23(9), datain=>p13(1), 
      clk=>p_i_clock);
   reg_p23_8 : cycloneii_lcell_ff port map ( regout=>p23(8), datain=>p13(2), 
      clk=>p_i_clock);
   reg_p23_7 : cycloneii_lcell_ff port map ( regout=>p23(7), datain=>p13(3), 
      clk=>p_i_clock);
   reg_p23_6 : cycloneii_lcell_ff port map ( regout=>p23(6), datain=>p13(4), 
      clk=>p_i_clock);
   reg_p23_5 : cycloneii_lcell_ff port map ( regout=>p23(5), datain=>p13(5), 
      clk=>p_i_clock);
   reg_p23_4 : cycloneii_lcell_ff port map ( regout=>p23(4), datain=>p13(6), 
      clk=>p_i_clock);
   reg_p23_3 : cycloneii_lcell_ff port map ( regout=>p23(3), datain=>p13(7), 
      clk=>p_i_clock);
   reg_p23_2 : cycloneii_lcell_ff port map ( regout=>p23(2), datain=>p13(8), 
      clk=>p_i_clock);
   reg_p23_10 : cycloneii_lcell_ff port map ( regout=>p23(10), datain=>
      p13(10), clk=>p_i_clock);
   reg_p23_1 : cycloneii_lcell_ff port map ( regout=>p23(1), datain=>p13(9), 
      clk=>p_i_clock);
   reg_p23_0 : cycloneii_lcell_ff port map ( regout=>p23(0), datain=>
      p13_0n0s2(7), clk=>p_i_clock);
   reg_p22_9 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_9_EXMPLR833, datain=>p22_4n0r2(9), clk=>p_i_clock);
   reg_p22_8 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_8_EXMPLR832, datain=>p22_4n0r2(8), clk=>p_i_clock);
   reg_p22_7 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_7_EXMPLR831, datain=>p22_4n0r2(7), clk=>p_i_clock);
   reg_p22_6 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_6_EXMPLR830, datain=>p22_4n0r2(6), clk=>p_i_clock);
   reg_p22_5 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_5_EXMPLR829, datain=>p22_4n0r2(5), clk=>p_i_clock);
   reg_p22_4 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_4_EXMPLR828, datain=>p22_4n0r2(4), clk=>p_i_clock);
   reg_p22_3 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_3_EXMPLR827, datain=>p22_4n0r2(3), clk=>p_i_clock);
   reg_p22_2 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_2_EXMPLR826, datain=>p22_4n0r2(2), clk=>p_i_clock);
   reg_p22_12 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_12_EXMPLR836, datain=>p22_4n0r2(12), clk=>p_i_clock);
   reg_p22_11 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_11_EXMPLR835, datain=>p22_4n0r2(11), clk=>p_i_clock);
   reg_p22_10 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_10_EXMPLR834, datain=>p22_4n0r2(10), clk=>p_i_clock);
   reg_p22_1 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_1_EXMPLR825, datain=>p22_4n0r2(1), clk=>p_i_clock);
   reg_p22_0 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_4_0_EXMPLR824, datain=>p22_4n0r3_0, clk=>p_i_clock);
   reg_p21_9 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_9_EXMPLR820, datain=>p21_4n0r2(9), clk=>p_i_clock);
   reg_p21_8 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_8_EXMPLR819, datain=>p21_4n0r2(8), clk=>p_i_clock);
   reg_p21_7 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_7_EXMPLR818, datain=>p21_4n0r2(7), clk=>p_i_clock);
   reg_p21_6 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_6_EXMPLR817, datain=>p21_4n0r2(6), clk=>p_i_clock);
   reg_p21_5 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_5_EXMPLR816, datain=>p21_4n0r2(5), clk=>p_i_clock);
   reg_p21_4 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_4_EXMPLR815, datain=>p21_4n0r2(4), clk=>p_i_clock);
   reg_p21_3 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_3_EXMPLR814, datain=>p21_4n0r2(3), clk=>p_i_clock);
   reg_p21_2 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_2_EXMPLR813, datain=>p21_4n0r2(2), clk=>p_i_clock);
   reg_p21_12 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_12_EXMPLR823, datain=>p21_4n0r2(12), clk=>p_i_clock);
   reg_p21_11 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_11_EXMPLR822, datain=>p21_4n0r2(11), clk=>p_i_clock);
   reg_p21_10 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_10_EXMPLR821, datain=>p21_4n0r2(10), clk=>p_i_clock);
   reg_p21_1 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_1_EXMPLR812, datain=>p21_4n0r2(1), clk=>p_i_clock);
   reg_p21_0 : cycloneii_lcell_ff port map ( regout=>
      p_debug_num_3_0_EXMPLR811, datain=>p21_4n0r3_0, clk=>p_i_clock);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>p_o_valid, datain=>
      state_3, clk=>p_i_clock, sclr=>p_i_reset);
   reg_max_fwd : cycloneii_lcell_ff port map ( regout=>max_fwd, datain=>p45, 
      clk=>p_i_clock, ena=>nx5049z1, sclr=>nx5049z2);
   reg_max_dir_2 : cycloneii_lcell_ff port map ( regout=>max_dir(2), datain
      =>nx25836z1, clk=>p_i_clock);
   reg_max_dir_1 : cycloneii_lcell_ff port map ( regout=>max_dir(1), datain
      =>nx26833z1, clk=>p_i_clock);
   reg_max_dir_0 : cycloneii_lcell_ff port map ( regout=>max_dir(0), datain
      =>nx27830z1, clk=>p_i_clock, ena=>nx25836z3);
   ix261_reg_p40 : cycloneii_lcell_ff port map ( regout=>p40, datain=>
      nx48462z1, clk=>p_i_clock);
   ix261_reg_p30 : cycloneii_lcell_ff port map ( regout=>nx48462z1, datain=>
      ix261_ix258_nx7(0), clk=>p_i_clock);
   ix261_reg_p20 : cycloneii_lcell_ff port map ( regout=>ix261_ix258_nx7(0), 
      datain=>p_i_valid_ix261(0), clk=>p_i_clock);
   ix260_reg_p5m_1 : cycloneii_lcell_ff port map ( regout=>p_p5m_1, datain=>
      nx9703z1, clk=>p_i_clock);
   ix260_reg_p5m_0 : cycloneii_lcell_ff port map ( regout=>p_p5m_0, datain=>
      nx10700z1, clk=>p_i_clock);
   ix260_reg_p4m_1 : cycloneii_lcell_ff port map ( regout=>nx9703z1, datain
      =>nx4568z1, clk=>p_i_clock);
   ix260_reg_p4m_0 : cycloneii_lcell_ff port map ( regout=>nx10700z1, datain
      =>nx5565z1, clk=>p_i_clock);
   ix260_reg_p3m_1 : cycloneii_lcell_ff port map ( regout=>nx4568z1, datain
      =>nx64969z1, clk=>p_i_clock);
   ix260_reg_p3m_0 : cycloneii_lcell_ff port map ( regout=>nx5565z1, datain
      =>nx430z1, clk=>p_i_clock);
   ix260_reg_p2m_1 : cycloneii_lcell_ff port map ( regout=>nx64969z1, datain
      =>p_i_mode(1), clk=>p_i_clock);
   ix260_reg_p2m_0 : cycloneii_lcell_ff port map ( regout=>nx430z1, datain=>
      p_i_mode(0), clk=>p_i_clock);
   ix259_reg_p4r_7 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix248_nx13, datain=>nx48811z1, clk=>p_i_clock);
   ix259_reg_p4r_6 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix249_nx13, datain=>nx47814z1, clk=>p_i_clock);
   ix259_reg_p4r_5 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix250_nx13, datain=>nx46817z1, clk=>p_i_clock);
   ix259_reg_p4r_4 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix251_nx13, datain=>nx45820z1, clk=>p_i_clock);
   ix259_reg_p4r_3 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix252_nx13, datain=>nx44823z1, clk=>p_i_clock);
   ix259_reg_p4r_2 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix253_nx13, datain=>nx43826z1, clk=>p_i_clock);
   ix259_reg_p4r_1 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix254_nx13, datain=>nx42829z1, clk=>p_i_clock);
   ix259_reg_p4r_0 : cycloneii_lcell_ff port map ( regout=>
      p_ix259_ix255_nx13, datain=>nx41832z1, clk=>p_i_clock);
   ix259_reg_p3r_7 : cycloneii_lcell_ff port map ( regout=>nx48811z1, datain
      =>nx53946z1, clk=>p_i_clock);
   ix259_reg_p3r_6 : cycloneii_lcell_ff port map ( regout=>nx47814z1, datain
      =>nx52949z1, clk=>p_i_clock);
   ix259_reg_p3r_5 : cycloneii_lcell_ff port map ( regout=>nx46817z1, datain
      =>nx51952z1, clk=>p_i_clock);
   ix259_reg_p3r_4 : cycloneii_lcell_ff port map ( regout=>nx45820z1, datain
      =>nx50955z1, clk=>p_i_clock);
   ix259_reg_p3r_3 : cycloneii_lcell_ff port map ( regout=>nx44823z1, datain
      =>nx49958z1, clk=>p_i_clock);
   ix259_reg_p3r_2 : cycloneii_lcell_ff port map ( regout=>nx43826z1, datain
      =>nx48961z1, clk=>p_i_clock);
   ix259_reg_p3r_1 : cycloneii_lcell_ff port map ( regout=>nx42829z1, datain
      =>nx47964z1, clk=>p_i_clock);
   ix259_reg_p3r_0 : cycloneii_lcell_ff port map ( regout=>nx41832z1, datain
      =>nx46967z1, clk=>p_i_clock);
   ix259_reg_p2r_7 : cycloneii_lcell_ff port map ( regout=>nx53946z1, datain
      =>p_i_row(7), clk=>p_i_clock);
   ix259_reg_p2r_6 : cycloneii_lcell_ff port map ( regout=>nx52949z1, datain
      =>p_i_row(6), clk=>p_i_clock);
   ix259_reg_p2r_5 : cycloneii_lcell_ff port map ( regout=>nx51952z1, datain
      =>p_i_row(5), clk=>p_i_clock);
   ix259_reg_p2r_4 : cycloneii_lcell_ff port map ( regout=>nx50955z1, datain
      =>p_i_row(4), clk=>p_i_clock);
   ix259_reg_p2r_3 : cycloneii_lcell_ff port map ( regout=>nx49958z1, datain
      =>p_i_row(3), clk=>p_i_clock);
   ix259_reg_p2r_2 : cycloneii_lcell_ff port map ( regout=>nx48961z1, datain
      =>p_i_row(2), clk=>p_i_clock);
   ix259_reg_p2r_1 : cycloneii_lcell_ff port map ( regout=>nx47964z1, datain
      =>p_i_row(1), clk=>p_i_clock);
   ix259_reg_p2r_0 : cycloneii_lcell_ff port map ( regout=>nx46967z1, datain
      =>p_i_row(0), clk=>p_i_clock);
   ix25836z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx25836z6, dataa=>nx25836z7, datab=>nx25836z12, 
      datac=>nx25836z13, datad=>nx25836z14);
   ix26026z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx26026z2, dataa=>p_debug_num_2_7_EXMPLR845, 
      datab=>p_debug_num_2_8_EXMPLR846, datac=>p_debug_num_2_11_EXMPLR849);
   ix25836z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx25836z16, dataa=>state_1, datab=>state_2);
   ix25836z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx25836z14, dataa=>prev_max(4), datab=>
      prev_max(5), datac=>p43(4), datad=>p43(5));
   ix25836z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx25836z13, dataa=>prev_max(2), datab=>
      prev_max(3), datac=>p43(2), datad=>p43(3));
   ix25836z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx25836z12, dataa=>prev_max(0), datab=>
      prev_max(1), datac=>p43(0), datad=>p43(1));
   ix25836z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"de7b") 
       port map ( combout=>nx25836z11, dataa=>prev_max(12), datab=>
      prev_max(13), datac=>p43(12), datad=>nx25836z5);
   ix25836z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx25836z10, dataa=>prev_max(10), datab=>
      prev_max(11), datac=>p43(10), datad=>p43(11));
   ix25836z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx25836z9, dataa=>prev_max(8), datab=>prev_max(9), 
      datac=>p43(8), datad=>p43(9));
   ix25836z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx25836z8, dataa=>prev_max(6), datab=>prev_max(7), 
      datac=>p43(6), datad=>p43(7));
   ix26833z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx26833z2, dataa=>state_2, datab=>state_3);
   ix26833z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2e2a") 
       port map ( combout=>nx26833z1, dataa=>max_dir(1), datab=>nx25836z3, 
      datac=>nx25836z15, datad=>nx26833z2);
   ix25836z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e222") 
       port map ( combout=>nx25836z1, dataa=>max_dir(2), datab=>nx25836z2, 
      datac=>nx28524z1, datad=>nx25836z16);
   ix29521z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx29521z1, dataa=>p40, datab=>p_i_reset);
   ix5049z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx5049z1, dataa=>state_3, datab=>p_i_reset, datac
      =>nx25836z3);
   ix25836z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx25836z7, dataa=>nx25836z8, datab=>nx25836z9, 
      datac=>nx25836z10, datad=>nx25836z11);
   ix25836z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx25836z15, dataa=>state_1, datab=>nx28524z1);
   ix26026z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>p_debug_num_2_12_EXMPLR877, dataa=>
      p_debug_num_0_12_EXMPLR873, datab=>nx29125z1);
   ix25836z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"dccc") 
       port map ( combout=>nx25836z3, dataa=>max_fwd, datab=>nx25836z4, 
      datac=>p45, datad=>nx25836z6);
   ix26026z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0f0e") 
       port map ( combout=>nx26026z1, dataa=>p_debug_num_2_9_EXMPLR847, 
      datab=>p_debug_num_2_10_EXMPLR848, datac=>p_debug_num_2_12_EXMPLR877, 
      datad=>nx26026z2);
   ix30752z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx30752z1, dataa=>state_3, datab=>nx25836z3);
   ix5049z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx5049z2, dataa=>state_3, datab=>p_i_reset);
   ix25836z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0e0") 
       port map ( combout=>nx25836z2, dataa=>state_2, datab=>state_3, datac
      =>nx25836z3, datad=>nx25836z15);
   ix27830z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx27830z1, dataa=>nx28524z1, datab=>p45);
   ix8159z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>p_o_dir(0), dataa=>p_o_edge_EXMPLR808, datab=>
      max_dir(0));
   ix7162z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>p_o_dir(1), dataa=>max_dir(1), datab=>
      p_o_edge_EXMPLR808);
   ix6165z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>p_o_dir(2), dataa=>max_dir(2), datab=>
      p_o_edge_EXMPLR808);
   ix28128z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>p4s_0n0s1_12, dataa=>p_debug_num_0_12_EXMPLR873, 
      datab=>nx29125z1);
end main_unfold_1331 ;

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
      debug_column : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_6 : OUT std_logic ;
      debug_num_7 : OUT std_logic ;
      debug_num_8 : OUT std_logic) ;
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
         p_first_bubble : IN std_logic ;
         p_mem_data_7 : IN std_logic ;
         p_mem_data_6 : IN std_logic ;
         p_mem_data_5 : IN std_logic ;
         p_mem_data_4 : IN std_logic ;
         p_mem_data_3 : IN std_logic ;
         p_mem_data_2 : IN std_logic ;
         p_mem_data_1 : IN std_logic ;
         p_mem_data_0 : IN std_logic ;
         px1 : OUT std_logic ;
         px23 : OUT std_logic ;
         p_rtlc2n272 : OUT std_logic) ;
   end component ;
   component flow_notri
      port (
         p_i_valid_ix261 : IN std_logic_vector (0 DOWNTO 0) ;
         p_i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_i_row : IN std_logic_vector (7 DOWNTO 0) ;
         p_o_valid : OUT std_logic ;
         p_debug_valid : OUT std_logic ;
         p_i_clock : IN std_logic ;
         p_i2 : IN std_logic_vector (7 DOWNTO 0) ;
         p_i1 : IN std_logic_vector (7 DOWNTO 0) ;
         p_b3 : IN std_logic_vector (7 DOWNTO 0) ;
         p_b2 : IN std_logic_vector (7 DOWNTO 0) ;
         p_b1 : IN std_logic_vector (7 DOWNTO 0) ;
         p_t3 : IN std_logic_vector (7 DOWNTO 0) ;
         p_t2 : IN std_logic_vector (7 DOWNTO 0) ;
         p_t1 : IN std_logic_vector (7 DOWNTO 0) ;
         p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         p_o_edge : OUT std_logic ;
         p_debug_num_6 : OUT std_logic ;
         p_debug_num_7 : OUT std_logic ;
         p_debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_i_reset : IN std_logic ;
         p_debug_num_2 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_debug_num_1 : OUT std_logic_vector (10 DOWNTO 0) ;
         p_debug_num_0 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_ix259_ix248_nx13 : OUT std_logic ;
         p_ix259_ix249_nx13 : OUT std_logic ;
         p_ix259_ix250_nx13 : OUT std_logic ;
         p_ix259_ix251_nx13 : OUT std_logic ;
         p_ix259_ix252_nx13 : OUT std_logic ;
         p_ix259_ix253_nx13 : OUT std_logic ;
         p_ix259_ix254_nx13 : OUT std_logic ;
         p_ix259_ix255_nx13 : OUT std_logic ;
         p_not_rtlc5n47 : OUT std_logic ;
         p_p23_10 : OUT std_logic ;
         p_p23_9 : OUT std_logic ;
         p_p23_8 : OUT std_logic ;
         p_p23_7 : OUT std_logic ;
         p_p23_6 : OUT std_logic ;
         p_p23_5 : OUT std_logic ;
         p_p23_4 : OUT std_logic ;
         p_p23_3 : OUT std_logic ;
         p_p23_2 : OUT std_logic ;
         p_p23_1 : OUT std_logic ;
         p_p23_0 : OUT std_logic ;
         p_p21_4n0r2_12 : OUT std_logic ;
         p_p21_4n0r2_11 : OUT std_logic ;
         p_p21_4n0r2_10 : OUT std_logic ;
         p_p21_4n0r2_9 : OUT std_logic ;
         p_p21_4n0r2_8 : OUT std_logic ;
         p_p21_4n0r2_7 : OUT std_logic ;
         p_p21_4n0r2_6 : OUT std_logic ;
         p_p21_4n0r2_5 : OUT std_logic ;
         p_p21_4n0r2_4 : OUT std_logic ;
         p_p21_4n0r2_3 : OUT std_logic ;
         p_p21_4n0r2_2 : OUT std_logic ;
         p_p21_4n0r2_1 : OUT std_logic ;
         p_p21_4n0r3_0 : OUT std_logic ;
         p_p22_4n0r2_12 : OUT std_logic ;
         p_p22_4n0r2_11 : OUT std_logic ;
         p_p22_4n0r2_10 : OUT std_logic ;
         p_p22_4n0r2_9 : OUT std_logic ;
         p_p22_4n0r2_8 : OUT std_logic ;
         p_p22_4n0r2_7 : OUT std_logic ;
         p_p22_4n0r2_6 : OUT std_logic ;
         p_p22_4n0r2_5 : OUT std_logic ;
         p_p22_4n0r2_4 : OUT std_logic ;
         p_p22_4n0r2_3 : OUT std_logic ;
         p_p22_4n0r2_2 : OUT std_logic ;
         p_p22_4n0r2_1 : OUT std_logic ;
         p_p22_4n0r3_0 : OUT std_logic ;
         p_p5m_1 : OUT std_logic ;
         p_p5m_0 : OUT std_logic) ;
   end component ;
   signal i_clock_EXMPLR895, i_reset_EXMPLR896, i_valid_EXMPLR897: std_logic
    ;
   
   signal i_pixel_EXMPLR1107: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0, o_edge_dup0: std_logic ;
   
   signal o_dir_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_column_dup0: std_logic_vector (7 DOWNTO 1) ;
   
   signal debug_num_0_dup0: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_2_dup0: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR1108: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_6_dup0, debug_num_7_dup0: std_logic ;
   
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
      o_image2_2_dup0_0, i_clock_int, i_reset_int, i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR919, o_edge_EXMPLR920: std_logic ;
   
   signal o_dir_EXMPLR1109: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR1110: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR1111: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR1112: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR1113: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR1114: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR1115: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR1116: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR1117: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR1118: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR1119: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR1120: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_column_EXMPLR1121: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR1122: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR1123: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_valid_EXMPLR1038: std_logic ;
   
   signal debug_num_0_EXMPLR1124: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_1_12_EXMPLR1052, debug_num_1_11_EXMPLR1053: std_logic ;
   
   signal debug_num_1_EXMPLR1125: std_logic_vector (10 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR1126: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR1127: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR1128: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR1104, debug_num_7_EXMPLR1105, 
      debug_num_8_EXMPLR1106: std_logic ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_t1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_dup0: std_logic_vector (17 DOWNTO 17) ;
   
   signal nx20836z1, nx7906z1, nx36102z1, nx20836z2, nx64956z1, first_bubble, 
      mem_data_7, mem_data_6, mem_data_5, mem_data_4, mem_data_3, mem_data_2, 
      mem_data_1, mem_data_0, nx45613z1, nx44616z1, nx43619z1, nx42622z1, 
      nx41625z1, nx40628z1, nx39631z1, nx38634z1, nx10452z1, nx10452z2, 
      nx10452z3, not_rtlc5n47_dup_306, p23_10_dup_309, p23_9_dup_394, 
      p23_8_dup_397, p23_7_dup_400, p23_6_dup_403, p23_5_dup_406, 
      p23_4_dup_409, p23_3_dup_412, p23_2_dup_415, p23_1_dup_418, 
      p23_0_dup_421, p21_4n0r2_12_dup_424, p21_4n0r2_11_dup_427, 
      p21_4n0r2_10_dup_430, p21_4n0r2_9_dup_433, p21_4n0r2_8_dup_436, 
      p21_4n0r2_7_dup_439, p21_4n0r2_6_dup_442, p21_4n0r2_5_dup_445, 
      p21_4n0r2_4_dup_448, p21_4n0r2_3_dup_451, p21_4n0r2_2_dup_454, 
      p21_4n0r2_1_dup_457, p21_4n0r3_0_dup_460, p22_4n0r2_12_dup_463, 
      p22_4n0r2_11_dup_466, p22_4n0r2_10_dup_469, p22_4n0r2_9_dup_472, 
      p22_4n0r2_8_dup_475, p22_4n0r2_7_dup_478, p22_4n0r2_6_dup_481, 
      p22_4n0r2_5_dup_484, p22_4n0r2_4_dup_487, p22_4n0r2_3_dup_490, 
      p22_4n0r2_2_dup_493, p22_4n0r2_1_dup_496, p22_4n0r3_0_dup_499, 
      p5m_1_dup_509, p5m_0_dup_512, nx23306z1, nx24303z1, nx25300z1, 
      nx26297z1, nx27294z1, nx28291z1, nx29288z1, nx30285z1, nx31282z1, 
      nx32279z1, nx54327z1, nx55324z1, nx56321z1, nx33811z1, nx32814z1, 
      nx31817z1, nx30820z1, nx29823z1, nx28826z1, nx27829z1, nx26832z1, 
      nx25835z1, nx24838z1, nx59462z1, nx60459z1, nx61456z1, nx48563z1, 
      nx49560z1, nx50557z1, nx51554z1, nx52551z1, nx53548z1, nx54545z1, 
      nx55542z1, nx56539z1, nx57536z1, nx4196z1, nx6038z1, nx4807z1, 
      nx30938z1, nx31935z1, nx32932z1, nx33929z1, nx34926z1, nx35923z1, 
      nx36920z1, nx37917z1, nx36073z1, nx37070z1, nx38067z1, nx39064z1, 
      nx40061z1, nx41058z1, nx42055z1, nx43052z1, nx41208z1, nx42205z1, 
      nx43202z1, nx44199z1, nx45196z1, nx46193z1, nx47190z1, nx48187z1, 
      nx4207z1, nx3210z1, nx2213z1, nx1216z1, nx219z1, nx64758z1, nx63761z1, 
      nx62764z1, nx64608z1, nx63611z1, nx62614z1, nx61617z1, nx60620z1, 
      nx59623z1, nx58626z1, nx57629z1, nx59473z1, nx58476z1, nx57479z1, 
      nx56482z1, nx55485z1, nx54488z1, nx53491z1, nx52494z1, nx16335z1, 
      nx17332z1, nx18329z1, nx19326z1, nx20323z1, nx21320z1, nx22317z1, 
      nx23314z1, nx63959z1, NOT_f_state_3: std_logic ;
   
   signal DANGLING : std_logic_vector (56 downto 0 );

begin
   i_clock_EXMPLR895 <= i_clock ;
   i_reset_EXMPLR896 <= i_reset ;
   i_valid_EXMPLR897 <= i_valid ;
   i_pixel_EXMPLR1107(7) <= i_pixel(7) ;
   i_pixel_EXMPLR1107(6) <= i_pixel(6) ;
   i_pixel_EXMPLR1107(5) <= i_pixel(5) ;
   i_pixel_EXMPLR1107(4) <= i_pixel(4) ;
   i_pixel_EXMPLR1107(3) <= i_pixel(3) ;
   i_pixel_EXMPLR1107(2) <= i_pixel(2) ;
   i_pixel_EXMPLR1107(1) <= i_pixel(1) ;
   i_pixel_EXMPLR1107(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR919 ;
   o_edge <= o_edge_EXMPLR920 ;
   o_dir(2) <= o_dir_EXMPLR1109(2) ;
   o_dir(1) <= o_dir_EXMPLR1109(1) ;
   o_dir(0) <= o_dir_EXMPLR1109(0) ;
   o_mode(1) <= o_mode_EXMPLR1110(1) ;
   o_mode(0) <= o_mode_EXMPLR1110(0) ;
   o_row(7) <= o_row_EXMPLR1111(7) ;
   o_row(6) <= o_row_EXMPLR1111(6) ;
   o_row(5) <= o_row_EXMPLR1111(5) ;
   o_row(4) <= o_row_EXMPLR1111(4) ;
   o_row(3) <= o_row_EXMPLR1111(3) ;
   o_row(2) <= o_row_EXMPLR1111(2) ;
   o_row(1) <= o_row_EXMPLR1111(1) ;
   o_row(0) <= o_row_EXMPLR1111(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR1112(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR1112(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR1112(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR1112(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR1112(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR1112(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR1112(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR1112(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR1113(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR1113(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR1113(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR1113(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR1113(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR1113(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR1113(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR1113(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR1114(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR1114(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR1114(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR1114(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR1114(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR1114(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR1114(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR1114(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR1115(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR1115(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR1115(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR1115(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR1115(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR1115(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR1115(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR1115(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR1116(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR1116(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR1116(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR1116(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR1116(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR1116(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR1116(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR1116(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR1117(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR1117(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR1117(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR1117(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR1117(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR1117(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR1117(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR1117(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR1118(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR1118(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR1118(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR1118(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR1118(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR1118(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR1118(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR1118(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR1119(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR1119(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR1119(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR1119(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR1119(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR1119(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR1119(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR1119(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR1120(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR1120(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR1120(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR1120(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR1120(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR1120(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR1120(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR1120(0) ;
   debug_column(7) <= debug_column_EXMPLR1121(7) ;
   debug_column(6) <= debug_column_EXMPLR1121(6) ;
   debug_column(5) <= debug_column_EXMPLR1121(5) ;
   debug_column(4) <= debug_column_EXMPLR1121(4) ;
   debug_column(3) <= debug_column_EXMPLR1121(3) ;
   debug_column(2) <= debug_column_EXMPLR1121(2) ;
   debug_column(1) <= debug_column_EXMPLR1121(1) ;
   debug_column(0) <= debug_column_EXMPLR1121(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR1122(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR1122(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR1122(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR1122(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR1122(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR1122(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR1122(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR1122(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR1122(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR1122(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR1122(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR1122(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR1122(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR1122(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR1122(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR1122(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR1122(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR1122(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR1123(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR1123(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR1123(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR1123(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR1123(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR1123(0) ;
   debug_valid <= debug_valid_EXMPLR1038 ;
   debug_num_0(12) <= debug_num_0_EXMPLR1124(12) ;
   debug_num_0(11) <= debug_num_0_EXMPLR1124(11) ;
   debug_num_0(10) <= debug_num_0_EXMPLR1124(10) ;
   debug_num_0(9) <= debug_num_0_EXMPLR1124(9) ;
   debug_num_0(8) <= debug_num_0_EXMPLR1124(8) ;
   debug_num_0(7) <= debug_num_0_EXMPLR1124(7) ;
   debug_num_0(6) <= debug_num_0_EXMPLR1124(6) ;
   debug_num_0(5) <= debug_num_0_EXMPLR1124(5) ;
   debug_num_0(4) <= debug_num_0_EXMPLR1124(4) ;
   debug_num_0(3) <= debug_num_0_EXMPLR1124(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR1124(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR1124(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR1124(0) ;
   debug_num_1(12) <= debug_num_1_12_EXMPLR1052 ;
   debug_num_1(11) <= debug_num_1_11_EXMPLR1053 ;
   debug_num_1(10) <= debug_num_1_EXMPLR1125(10) ;
   debug_num_1(9) <= debug_num_1_EXMPLR1125(9) ;
   debug_num_1(8) <= debug_num_1_EXMPLR1125(8) ;
   debug_num_1(7) <= debug_num_1_EXMPLR1125(7) ;
   debug_num_1(6) <= debug_num_1_EXMPLR1125(6) ;
   debug_num_1(5) <= debug_num_1_EXMPLR1125(5) ;
   debug_num_1(4) <= debug_num_1_EXMPLR1125(4) ;
   debug_num_1(3) <= debug_num_1_EXMPLR1125(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR1125(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR1125(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR1125(0) ;
   debug_num_2(12) <= debug_num_2_EXMPLR1126(12) ;
   debug_num_2(11) <= debug_num_2_EXMPLR1126(11) ;
   debug_num_2(10) <= debug_num_2_EXMPLR1126(10) ;
   debug_num_2(9) <= debug_num_2_EXMPLR1126(9) ;
   debug_num_2(8) <= debug_num_2_EXMPLR1126(8) ;
   debug_num_2(7) <= debug_num_2_EXMPLR1126(7) ;
   debug_num_2(6) <= debug_num_2_EXMPLR1126(6) ;
   debug_num_2(5) <= debug_num_2_EXMPLR1126(5) ;
   debug_num_2(4) <= debug_num_2_EXMPLR1126(4) ;
   debug_num_2(3) <= debug_num_2_EXMPLR1126(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR1126(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR1126(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR1126(0) ;
   debug_num_3(12) <= debug_num_3_EXMPLR1127(12) ;
   debug_num_3(11) <= debug_num_3_EXMPLR1127(11) ;
   debug_num_3(10) <= debug_num_3_EXMPLR1127(10) ;
   debug_num_3(9) <= debug_num_3_EXMPLR1127(9) ;
   debug_num_3(8) <= debug_num_3_EXMPLR1127(8) ;
   debug_num_3(7) <= debug_num_3_EXMPLR1127(7) ;
   debug_num_3(6) <= debug_num_3_EXMPLR1127(6) ;
   debug_num_3(5) <= debug_num_3_EXMPLR1127(5) ;
   debug_num_3(4) <= debug_num_3_EXMPLR1127(4) ;
   debug_num_3(3) <= debug_num_3_EXMPLR1127(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR1127(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR1127(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR1127(0) ;
   debug_num_4(12) <= debug_num_4_EXMPLR1128(12) ;
   debug_num_4(11) <= debug_num_4_EXMPLR1128(11) ;
   debug_num_4(10) <= debug_num_4_EXMPLR1128(10) ;
   debug_num_4(9) <= debug_num_4_EXMPLR1128(9) ;
   debug_num_4(8) <= debug_num_4_EXMPLR1128(8) ;
   debug_num_4(7) <= debug_num_4_EXMPLR1128(7) ;
   debug_num_4(6) <= debug_num_4_EXMPLR1128(6) ;
   debug_num_4(5) <= debug_num_4_EXMPLR1128(5) ;
   debug_num_4(4) <= debug_num_4_EXMPLR1128(4) ;
   debug_num_4(3) <= debug_num_4_EXMPLR1128(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR1128(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR1128(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR1128(0) ;
   debug_num_5(12) <= debug_num_5_EXMPLR1108(12) ;
   debug_num_5(11) <= debug_num_5_EXMPLR1108(11) ;
   debug_num_5(10) <= debug_num_5_EXMPLR1108(10) ;
   debug_num_5(9) <= debug_num_5_EXMPLR1108(9) ;
   debug_num_5(8) <= debug_num_5_EXMPLR1108(8) ;
   debug_num_5(7) <= debug_num_5_EXMPLR1108(7) ;
   debug_num_5(6) <= debug_num_5_EXMPLR1108(6) ;
   debug_num_5(5) <= debug_num_5_EXMPLR1108(5) ;
   debug_num_5(4) <= debug_num_5_EXMPLR1108(4) ;
   debug_num_5(3) <= debug_num_5_EXMPLR1108(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR1108(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR1108(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR1108(0) ;
   debug_num_6 <= debug_num_6_EXMPLR1104 ;
   debug_num_7 <= debug_num_7_EXMPLR1105 ;
   debug_num_8 <= debug_num_8_EXMPLR1106 ;
   u_memory : memory port map ( i_valid=>i_valid_int, i_reset=>i_reset_int, 
      i_pixel(7)=>DANGLING(0), i_pixel(6)=>DANGLING(1), i_pixel(5)=>DANGLING
      (2), i_pixel(4)=>DANGLING(3), i_pixel(3)=>DANGLING(4), i_pixel(2)=>
      DANGLING(5), i_pixel(1)=>DANGLING(6), i_pixel(0)=>DANGLING(7), i_clock
      =>i_clock_int, o_valid=>m_o_valid, o_mode(1)=>m_o_mode(1), o_mode(0)=>
      m_o_mode(0), o_column(7)=>debug_column_dup0(7), o_column(6)=>
      debug_column_dup0(6), o_column(5)=>debug_column_dup0(5), o_column(4)=>
      debug_column_dup0(4), o_column(3)=>debug_column_dup0(3), o_column(2)=>
      debug_column_dup0(2), o_column(1)=>debug_column_dup0(1), o_column(0)=>
      DANGLING(8), o_row(7)=>m_o_row(7), o_row(6)=>m_o_row(6), o_row(5)=>
      m_o_row(5), o_row(4)=>m_o_row(4), o_row(3)=>m_o_row(3), o_row(2)=>
      m_o_row(2), o_row(1)=>m_o_row(1), o_row(0)=>m_o_row(0), o_image0_0(7)
      =>o_image0_dup0(7), o_image0_0(6)=>o_image0_dup0(6), o_image0_0(5)=>
      o_image0_dup0(5), o_image0_0(4)=>o_image0_dup0(4), o_image0_0(3)=>
      o_image0_dup0(3), o_image0_0(2)=>o_image0_dup0(2), o_image0_0(1)=>
      o_image0_dup0(1), o_image0_0(0)=>o_image0_dup0(0), o_image0_1(7)=>
      o_image0_1_dup0_7, o_image0_1(6)=>o_image0_1_dup0_6, o_image0_1(5)=>
      o_image0_1_dup0_5, o_image0_1(4)=>o_image0_1_dup0_4, o_image0_1(3)=>
      o_image0_1_dup0_3, o_image0_1(2)=>o_image0_1_dup0_2, o_image0_1(1)=>
      o_image0_1_dup0_1, o_image0_1(0)=>o_image0_1_dup0_0, o_image0_2(7)=>
      o_image0_2_dup0_7, o_image0_2(6)=>o_image0_2_dup0_6, o_image0_2(5)=>
      o_image0_2_dup0_5, o_image0_2(4)=>o_image0_2_dup0_4, o_image0_2(3)=>
      o_image0_2_dup0_3, o_image0_2(2)=>o_image0_2_dup0_2, o_image0_2(1)=>
      o_image0_2_dup0_1, o_image0_2(0)=>o_image0_2_dup0_0, o_image1_0(7)=>
      o_image1_dup0(7), o_image1_0(6)=>o_image1_dup0(6), o_image1_0(5)=>
      o_image1_dup0(5), o_image1_0(4)=>o_image1_dup0(4), o_image1_0(3)=>
      o_image1_dup0(3), o_image1_0(2)=>o_image1_dup0(2), o_image1_0(1)=>
      o_image1_dup0(1), o_image1_0(0)=>o_image1_dup0(0), o_image1_1(7)=>
      o_image1_1_dup0_7, o_image1_1(6)=>o_image1_1_dup0_6, o_image1_1(5)=>
      o_image1_1_dup0_5, o_image1_1(4)=>o_image1_1_dup0_4, o_image1_1(3)=>
      o_image1_1_dup0_3, o_image1_1(2)=>o_image1_1_dup0_2, o_image1_1(1)=>
      o_image1_1_dup0_1, o_image1_1(0)=>o_image1_1_dup0_0, o_image1_2(7)=>
      o_image1_2_dup0_7, o_image1_2(6)=>o_image1_2_dup0_6, o_image1_2(5)=>
      o_image1_2_dup0_5, o_image1_2(4)=>o_image1_2_dup0_4, o_image1_2(3)=>
      o_image1_2_dup0_3, o_image1_2(2)=>o_image1_2_dup0_2, o_image1_2(1)=>
      o_image1_2_dup0_1, o_image1_2(0)=>o_image1_2_dup0_0, o_image2_0(7)=>
      o_image2_dup0(7), o_image2_0(6)=>o_image2_dup0(6), o_image2_0(5)=>
      o_image2_dup0(5), o_image2_0(4)=>o_image2_dup0(4), o_image2_0(3)=>
      o_image2_dup0(3), o_image2_0(2)=>o_image2_dup0(2), o_image2_0(1)=>
      o_image2_dup0(1), o_image2_0(0)=>o_image2_dup0(0), o_image2_1(7)=>
      o_image2_1_dup0_7, o_image2_1(6)=>o_image2_1_dup0_6, o_image2_1(5)=>
      o_image2_1_dup0_5, o_image2_1(4)=>o_image2_1_dup0_4, o_image2_1(3)=>
      o_image2_1_dup0_3, o_image2_1(2)=>o_image2_1_dup0_2, o_image2_1(1)=>
      o_image2_1_dup0_1, o_image2_1(0)=>o_image2_1_dup0_0, o_image2_2(7)=>
      o_image2_2_dup0_7, o_image2_2(6)=>o_image2_2_dup0_6, o_image2_2(5)=>
      o_image2_2_dup0_5, o_image2_2(4)=>o_image2_2_dup0_4, o_image2_2(3)=>
      o_image2_2_dup0_3, o_image2_2(2)=>o_image2_2_dup0_2, o_image2_2(1)=>
      o_image2_2_dup0_1, o_image2_2(0)=>o_image2_2_dup0_0, p_first_bubble=>
      first_bubble, p_mem_data_7=>mem_data_7, p_mem_data_6=>mem_data_6, 
      p_mem_data_5=>mem_data_5, p_mem_data_4=>mem_data_4, p_mem_data_3=>
      mem_data_3, p_mem_data_2=>mem_data_2, p_mem_data_1=>mem_data_1, 
      p_mem_data_0=>mem_data_0, px1=>nx10452z1, px23=>nx10452z2, p_rtlc2n272
      =>nx10452z3);
   u_flow : flow_notri port map ( p_i_valid_ix261(0)=>nx20836z1, p_i_mode(1)
      =>f_i_mode(1), p_i_mode(0)=>f_i_mode(0), p_o_row(7)=>DANGLING(9), 
      p_o_row(6)=>DANGLING(10), p_o_row(5)=>DANGLING(11), p_o_row(4)=>
      DANGLING(12), p_o_row(3)=>DANGLING(13), p_o_row(2)=>DANGLING(14), 
      p_o_row(1)=>DANGLING(15), p_o_row(0)=>DANGLING(16), p_i_row(7)=>
      f_i_row(7), p_i_row(6)=>f_i_row(6), p_i_row(5)=>f_i_row(5), p_i_row(4)
      =>f_i_row(4), p_i_row(3)=>f_i_row(3), p_i_row(2)=>f_i_row(2), 
      p_i_row(1)=>f_i_row(1), p_i_row(0)=>f_i_row(0), p_o_valid=>
      o_valid_dup0, p_debug_valid=>DANGLING(17), p_i_clock=>i_clock_int, 
      p_i2(7)=>f_i2(7), p_i2(6)=>f_i2(6), p_i2(5)=>f_i2(5), p_i2(4)=>f_i2(4), 
      p_i2(3)=>f_i2(3), p_i2(2)=>f_i2(2), p_i2(1)=>f_i2(1), p_i2(0)=>f_i2(0), 
      p_i1(7)=>f_i1(7), p_i1(6)=>f_i1(6), p_i1(5)=>f_i1(5), p_i1(4)=>f_i1(4), 
      p_i1(3)=>f_i1(3), p_i1(2)=>f_i1(2), p_i1(1)=>f_i1(1), p_i1(0)=>f_i1(0), 
      p_b3(7)=>f_b3(7), p_b3(6)=>f_b3(6), p_b3(5)=>f_b3(5), p_b3(4)=>f_b3(4), 
      p_b3(3)=>f_b3(3), p_b3(2)=>f_b3(2), p_b3(1)=>f_b3(1), p_b3(0)=>f_b3(0), 
      p_b2(7)=>f_b2(7), p_b2(6)=>f_b2(6), p_b2(5)=>f_b2(5), p_b2(4)=>f_b2(4), 
      p_b2(3)=>f_b2(3), p_b2(2)=>f_b2(2), p_b2(1)=>f_b2(1), p_b2(0)=>f_b2(0), 
      p_b1(7)=>f_b1(7), p_b1(6)=>f_b1(6), p_b1(5)=>f_b1(5), p_b1(4)=>f_b1(4), 
      p_b1(3)=>f_b1(3), p_b1(2)=>f_b1(2), p_b1(1)=>f_b1(1), p_b1(0)=>f_b1(0), 
      p_t3(7)=>f_t3(7), p_t3(6)=>f_t3(6), p_t3(5)=>f_t3(5), p_t3(4)=>f_t3(4), 
      p_t3(3)=>f_t3(3), p_t3(2)=>f_t3(2), p_t3(1)=>f_t3(1), p_t3(0)=>f_t3(0), 
      p_t2(7)=>f_t2(7), p_t2(6)=>f_t2(6), p_t2(5)=>f_t2(5), p_t2(4)=>f_t2(4), 
      p_t2(3)=>f_t2(3), p_t2(2)=>f_t2(2), p_t2(1)=>f_t2(1), p_t2(0)=>f_t2(0), 
      p_t1(7)=>f_t1(7), p_t1(6)=>f_t1(6), p_t1(5)=>f_t1(5), p_t1(4)=>f_t1(4), 
      p_t1(3)=>f_t1(3), p_t1(2)=>f_t1(2), p_t1(1)=>f_t1(1), p_t1(0)=>f_t1(0), 
      p_o_mode(1)=>DANGLING(18), p_o_mode(0)=>DANGLING(19), p_o_dir(2)=>
      o_dir_dup0(2), p_o_dir(1)=>o_dir_dup0(1), p_o_dir(0)=>o_dir_dup0(0), 
      p_o_edge=>o_edge_dup0, p_debug_num_6=>debug_num_6_dup0, p_debug_num_7
      =>debug_num_7_dup0, p_debug_num_3(12)=>DANGLING(20), p_debug_num_3(11)
      =>DANGLING(21), p_debug_num_3(10)=>DANGLING(22), p_debug_num_3(9)=>
      DANGLING(23), p_debug_num_3(8)=>DANGLING(24), p_debug_num_3(7)=>
      DANGLING(25), p_debug_num_3(6)=>DANGLING(26), p_debug_num_3(5)=>
      DANGLING(27), p_debug_num_3(4)=>DANGLING(28), p_debug_num_3(3)=>
      DANGLING(29), p_debug_num_3(2)=>DANGLING(30), p_debug_num_3(1)=>
      DANGLING(31), p_debug_num_3(0)=>DANGLING(32), p_debug_num_4(12)=>
      DANGLING(33), p_debug_num_4(11)=>DANGLING(34), p_debug_num_4(10)=>
      DANGLING(35), p_debug_num_4(9)=>DANGLING(36), p_debug_num_4(8)=>
      DANGLING(37), p_debug_num_4(7)=>DANGLING(38), p_debug_num_4(6)=>
      DANGLING(39), p_debug_num_4(5)=>DANGLING(40), p_debug_num_4(4)=>
      DANGLING(41), p_debug_num_4(3)=>DANGLING(42), p_debug_num_4(2)=>
      DANGLING(43), p_debug_num_4(1)=>DANGLING(44), p_debug_num_4(0)=>
      DANGLING(45), p_i_reset=>i_reset_int, p_debug_num_2(12)=>
      debug_num_2_dup0(12), p_debug_num_2(11)=>debug_num_2_dup0(11), 
      p_debug_num_2(10)=>debug_num_2_dup0(10), p_debug_num_2(9)=>
      debug_num_2_dup0(9), p_debug_num_2(8)=>debug_num_2_dup0(8), 
      p_debug_num_2(7)=>debug_num_2_dup0(7), p_debug_num_2(6)=>
      debug_num_2_dup0(6), p_debug_num_2(5)=>debug_num_2_dup0(5), 
      p_debug_num_2(4)=>debug_num_2_dup0(4), p_debug_num_2(3)=>
      debug_num_2_dup0(3), p_debug_num_2(2)=>debug_num_2_dup0(2), 
      p_debug_num_2(1)=>debug_num_2_dup0(1), p_debug_num_2(0)=>
      debug_num_2_dup0(0), p_debug_num_1(10)=>DANGLING(46), p_debug_num_1(9)
      =>DANGLING(47), p_debug_num_1(8)=>DANGLING(48), p_debug_num_1(7)=>
      DANGLING(49), p_debug_num_1(6)=>DANGLING(50), p_debug_num_1(5)=>
      DANGLING(51), p_debug_num_1(4)=>DANGLING(52), p_debug_num_1(3)=>
      DANGLING(53), p_debug_num_1(2)=>DANGLING(54), p_debug_num_1(1)=>
      DANGLING(55), p_debug_num_1(0)=>DANGLING(56), p_debug_num_0(12)=>
      debug_num_0_dup0(12), p_debug_num_0(11)=>debug_num_0_dup0(11), 
      p_debug_num_0(10)=>debug_num_0_dup0(10), p_debug_num_0(9)=>
      debug_num_0_dup0(9), p_debug_num_0(8)=>debug_num_0_dup0(8), 
      p_debug_num_0(7)=>debug_num_0_dup0(7), p_debug_num_0(6)=>
      debug_num_0_dup0(6), p_debug_num_0(5)=>debug_num_0_dup0(5), 
      p_debug_num_0(4)=>debug_num_0_dup0(4), p_debug_num_0(3)=>
      debug_num_0_dup0(3), p_debug_num_0(2)=>debug_num_0_dup0(2), 
      p_debug_num_0(1)=>debug_num_0_dup0(1), p_debug_num_0(0)=>
      debug_num_0_dup0(0), p_ix259_ix248_nx13=>nx45613z1, p_ix259_ix249_nx13
      =>nx44616z1, p_ix259_ix250_nx13=>nx43619z1, p_ix259_ix251_nx13=>
      nx42622z1, p_ix259_ix252_nx13=>nx41625z1, p_ix259_ix253_nx13=>
      nx40628z1, p_ix259_ix254_nx13=>nx39631z1, p_ix259_ix255_nx13=>
      nx38634z1, p_not_rtlc5n47=>not_rtlc5n47_dup_306, p_p23_10=>
      p23_10_dup_309, p_p23_9=>p23_9_dup_394, p_p23_8=>p23_8_dup_397, 
      p_p23_7=>p23_7_dup_400, p_p23_6=>p23_6_dup_403, p_p23_5=>p23_5_dup_406, 
      p_p23_4=>p23_4_dup_409, p_p23_3=>p23_3_dup_412, p_p23_2=>p23_2_dup_415, 
      p_p23_1=>p23_1_dup_418, p_p23_0=>p23_0_dup_421, p_p21_4n0r2_12=>
      p21_4n0r2_12_dup_424, p_p21_4n0r2_11=>p21_4n0r2_11_dup_427, 
      p_p21_4n0r2_10=>p21_4n0r2_10_dup_430, p_p21_4n0r2_9=>
      p21_4n0r2_9_dup_433, p_p21_4n0r2_8=>p21_4n0r2_8_dup_436, p_p21_4n0r2_7
      =>p21_4n0r2_7_dup_439, p_p21_4n0r2_6=>p21_4n0r2_6_dup_442, 
      p_p21_4n0r2_5=>p21_4n0r2_5_dup_445, p_p21_4n0r2_4=>p21_4n0r2_4_dup_448, 
      p_p21_4n0r2_3=>p21_4n0r2_3_dup_451, p_p21_4n0r2_2=>p21_4n0r2_2_dup_454, 
      p_p21_4n0r2_1=>p21_4n0r2_1_dup_457, p_p21_4n0r3_0=>p21_4n0r3_0_dup_460, 
      p_p22_4n0r2_12=>p22_4n0r2_12_dup_463, p_p22_4n0r2_11=>
      p22_4n0r2_11_dup_466, p_p22_4n0r2_10=>p22_4n0r2_10_dup_469, 
      p_p22_4n0r2_9=>p22_4n0r2_9_dup_472, p_p22_4n0r2_8=>p22_4n0r2_8_dup_475, 
      p_p22_4n0r2_7=>p22_4n0r2_7_dup_478, p_p22_4n0r2_6=>p22_4n0r2_6_dup_481, 
      p_p22_4n0r2_5=>p22_4n0r2_5_dup_484, p_p22_4n0r2_4=>p22_4n0r2_4_dup_487, 
      p_p22_4n0r2_3=>p22_4n0r2_3_dup_490, p_p22_4n0r2_2=>p22_4n0r2_2_dup_493, 
      p_p22_4n0r2_1=>p22_4n0r2_1_dup_496, p_p22_4n0r3_0=>p22_4n0r3_0_dup_499, 
      p_p5m_1=>p5m_1_dup_509, p_p5m_0=>p5m_0_dup_512);
   o_mode_dup0(1) <= NOT i_reset_int;
   debug_led_red_dup0(17) <= '0';
   f_state(0) <= NOT nx63959z1;
   NOT_f_state_3 <= NOT f_state(3);
   u_flow_debug_num_5_triBus6_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(9), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(8), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(7), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(6), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(5), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(4), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(12), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(11), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(10), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_flow_debug_num_5_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1108(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
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
   reg_out_debug_valid_obuf : cycloneii_lcell_ff port map ( regout=>nx6038z1, 
      datain=>not_rtlc5n47_dup_306, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx32279z1, datain=>p22_4n0r2_9_dup_472, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx31282z1, datain=>p22_4n0r2_8_dup_475, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_7 : cycloneii_lcell_ff port map ( regout=>
      nx30285z1, datain=>p22_4n0r2_7_dup_478, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx29288z1, datain=>p22_4n0r2_6_dup_481, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx28291z1, datain=>p22_4n0r2_5_dup_484, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx27294z1, datain=>p22_4n0r2_4_dup_487, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx26297z1, datain=>p22_4n0r2_3_dup_490, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx25300z1, datain=>p22_4n0r2_2_dup_493, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_12 : cycloneii_lcell_ff port map ( regout=>
      nx56321z1, datain=>p22_4n0r2_12_dup_463, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_11 : cycloneii_lcell_ff port map ( regout=>
      nx55324z1, datain=>p22_4n0r2_11_dup_466, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx54327z1, datain=>p22_4n0r2_10_dup_469, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx24303z1, datain=>p22_4n0r2_1_dup_496, clk=>i_clock_int);
   reg_out_debug_num_4_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx23306z1, datain=>p22_4n0r3_0_dup_499, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx24838z1, datain=>p21_4n0r2_9_dup_433, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx25835z1, datain=>p21_4n0r2_8_dup_436, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_7 : cycloneii_lcell_ff port map ( regout=>
      nx26832z1, datain=>p21_4n0r2_7_dup_439, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx27829z1, datain=>p21_4n0r2_6_dup_442, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx28826z1, datain=>p21_4n0r2_5_dup_445, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx29823z1, datain=>p21_4n0r2_4_dup_448, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx30820z1, datain=>p21_4n0r2_3_dup_451, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx31817z1, datain=>p21_4n0r2_2_dup_454, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_12 : cycloneii_lcell_ff port map ( regout=>
      nx61456z1, datain=>p21_4n0r2_12_dup_424, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_11 : cycloneii_lcell_ff port map ( regout=>
      nx60459z1, datain=>p21_4n0r2_11_dup_427, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx59462z1, datain=>p21_4n0r2_10_dup_430, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx32814z1, datain=>p21_4n0r2_1_dup_457, clk=>i_clock_int);
   reg_out_debug_num_3_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx33811z1, datain=>p21_4n0r3_0_dup_460, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx57536z1, datain=>p23_9_dup_394, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx56539z1, datain=>p23_8_dup_397, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_7 : cycloneii_lcell_ff port map ( regout=>
      nx55542z1, datain=>p23_7_dup_400, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx54545z1, datain=>p23_6_dup_403, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx53548z1, datain=>p23_5_dup_406, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx52551z1, datain=>p23_4_dup_409, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx51554z1, datain=>p23_3_dup_412, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx50557z1, datain=>p23_2_dup_415, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx4196z1, datain=>p23_10_dup_309, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx49560z1, datain=>p23_1_dup_418, clk=>i_clock_int);
   reg_out_debug_num_1_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx48563z1, datain=>p23_0_dup_421, clk=>i_clock_int);
   reg_out_debug_column_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx4807z1, datain=>nx10452z1, clk=>i_clock_int, ena=>nx10452z2, sclr=>
      nx10452z3);
   reg_in_i_valid_ibuf : cycloneii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid_int, clk=>i_clock_int);
   reg_in_i_pixel_ibuf_7 : cycloneii_lcell_ff port map ( regout=>mem_data_7, 
      datain=>i_pixel_int(7), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_6 : cycloneii_lcell_ff port map ( regout=>mem_data_6, 
      datain=>i_pixel_int(6), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_5 : cycloneii_lcell_ff port map ( regout=>mem_data_5, 
      datain=>i_pixel_int(5), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_4 : cycloneii_lcell_ff port map ( regout=>mem_data_4, 
      datain=>i_pixel_int(4), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_3 : cycloneii_lcell_ff port map ( regout=>mem_data_3, 
      datain=>i_pixel_int(3), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_2 : cycloneii_lcell_ff port map ( regout=>mem_data_2, 
      datain=>i_pixel_int(2), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_1 : cycloneii_lcell_ff port map ( regout=>mem_data_1, 
      datain=>i_pixel_int(1), clk=>i_clock_int);
   reg_in_i_pixel_ibuf_0 : cycloneii_lcell_ff port map ( regout=>mem_data_0, 
      datain=>i_pixel_int(0), clk=>i_clock_int);
   reg_f_t3_next_7 : cycloneii_lcell_ff port map ( regout=>f_t3_next(7), 
      datain=>f_i1_next(7), sdata=>o_image1_dup0(7), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_6 : cycloneii_lcell_ff port map ( regout=>f_t3_next(6), 
      datain=>f_i1_next(6), sdata=>o_image1_dup0(6), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_5 : cycloneii_lcell_ff port map ( regout=>f_t3_next(5), 
      datain=>f_i1_next(5), sdata=>o_image1_dup0(5), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_4 : cycloneii_lcell_ff port map ( regout=>f_t3_next(4), 
      datain=>f_i1_next(4), sdata=>o_image1_dup0(4), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_3 : cycloneii_lcell_ff port map ( regout=>f_t3_next(3), 
      datain=>f_i1_next(3), sdata=>o_image1_dup0(3), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_2 : cycloneii_lcell_ff port map ( regout=>f_t3_next(2), 
      datain=>f_i1_next(2), sdata=>o_image1_dup0(2), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_1 : cycloneii_lcell_ff port map ( regout=>f_t3_next(1), 
      datain=>f_i1_next(1), sdata=>o_image1_dup0(1), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t3_next_0 : cycloneii_lcell_ff port map ( regout=>f_t3_next(0), 
      datain=>f_i1_next(0), sdata=>o_image1_dup0(0), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_7 : cycloneii_lcell_ff port map ( regout=>f_t2_next(7), 
      datain=>f_t3_next(7), sdata=>o_image0_dup0(7), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_6 : cycloneii_lcell_ff port map ( regout=>f_t2_next(6), 
      datain=>f_t3_next(6), sdata=>o_image0_dup0(6), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_5 : cycloneii_lcell_ff port map ( regout=>f_t2_next(5), 
      datain=>f_t3_next(5), sdata=>o_image0_dup0(5), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_4 : cycloneii_lcell_ff port map ( regout=>f_t2_next(4), 
      datain=>f_t3_next(4), sdata=>o_image0_dup0(4), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_3 : cycloneii_lcell_ff port map ( regout=>f_t2_next(3), 
      datain=>f_t3_next(3), sdata=>o_image0_dup0(3), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_2 : cycloneii_lcell_ff port map ( regout=>f_t2_next(2), 
      datain=>f_t3_next(2), sdata=>o_image0_dup0(2), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_1 : cycloneii_lcell_ff port map ( regout=>f_t2_next(1), 
      datain=>f_t3_next(1), sdata=>o_image0_dup0(1), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t2_next_0 : cycloneii_lcell_ff port map ( regout=>f_t2_next(0), 
      datain=>f_t3_next(0), sdata=>o_image0_dup0(0), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_7 : cycloneii_lcell_ff port map ( regout=>f_t1_next(7), 
      datain=>f_t2_next(7), sdata=>o_image0_1_dup0_7, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_6 : cycloneii_lcell_ff port map ( regout=>f_t1_next(6), 
      datain=>f_t2_next(6), sdata=>o_image0_1_dup0_6, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_5 : cycloneii_lcell_ff port map ( regout=>f_t1_next(5), 
      datain=>f_t2_next(5), sdata=>o_image0_1_dup0_5, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_4 : cycloneii_lcell_ff port map ( regout=>f_t1_next(4), 
      datain=>f_t2_next(4), sdata=>o_image0_1_dup0_4, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_3 : cycloneii_lcell_ff port map ( regout=>f_t1_next(3), 
      datain=>f_t2_next(3), sdata=>o_image0_1_dup0_3, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_2 : cycloneii_lcell_ff port map ( regout=>f_t1_next(2), 
      datain=>f_t2_next(2), sdata=>o_image0_1_dup0_2, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_1 : cycloneii_lcell_ff port map ( regout=>f_t1_next(1), 
      datain=>f_t2_next(1), sdata=>o_image0_1_dup0_1, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_t1_next_0 : cycloneii_lcell_ff port map ( regout=>f_t1_next(0), 
      datain=>f_t2_next(0), sdata=>o_image0_1_dup0_0, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
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
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_6 : cycloneii_lcell_ff port map ( regout=>f_i2_next(6), 
      datain=>f_t1_next(6), sdata=>o_image0_2_dup0_6, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_5 : cycloneii_lcell_ff port map ( regout=>f_i2_next(5), 
      datain=>f_t1_next(5), sdata=>o_image0_2_dup0_5, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_4 : cycloneii_lcell_ff port map ( regout=>f_i2_next(4), 
      datain=>f_t1_next(4), sdata=>o_image0_2_dup0_4, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_3 : cycloneii_lcell_ff port map ( regout=>f_i2_next(3), 
      datain=>f_t1_next(3), sdata=>o_image0_2_dup0_3, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_2 : cycloneii_lcell_ff port map ( regout=>f_i2_next(2), 
      datain=>f_t1_next(2), sdata=>o_image0_2_dup0_2, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_1 : cycloneii_lcell_ff port map ( regout=>f_i2_next(1), 
      datain=>f_t1_next(1), sdata=>o_image0_2_dup0_1, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i2_next_0 : cycloneii_lcell_ff port map ( regout=>f_i2_next(0), 
      datain=>f_t1_next(0), sdata=>o_image0_2_dup0_0, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_7 : cycloneii_lcell_ff port map ( regout=>f_i1_next(7), 
      datain=>f_b1_next(7), sdata=>o_image2_dup0(7), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_6 : cycloneii_lcell_ff port map ( regout=>f_i1_next(6), 
      datain=>f_b1_next(6), sdata=>o_image2_dup0(6), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_5 : cycloneii_lcell_ff port map ( regout=>f_i1_next(5), 
      datain=>f_b1_next(5), sdata=>o_image2_dup0(5), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_4 : cycloneii_lcell_ff port map ( regout=>f_i1_next(4), 
      datain=>f_b1_next(4), sdata=>o_image2_dup0(4), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_3 : cycloneii_lcell_ff port map ( regout=>f_i1_next(3), 
      datain=>f_b1_next(3), sdata=>o_image2_dup0(3), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_2 : cycloneii_lcell_ff port map ( regout=>f_i1_next(2), 
      datain=>f_b1_next(2), sdata=>o_image2_dup0(2), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_1 : cycloneii_lcell_ff port map ( regout=>f_i1_next(1), 
      datain=>f_b1_next(1), sdata=>o_image2_dup0(1), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_i1_next_0 : cycloneii_lcell_ff port map ( regout=>f_i1_next(0), 
      datain=>f_b1_next(0), sdata=>o_image2_dup0(0), clk=>i_clock_int, ena=>
      nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_7 : cycloneii_lcell_ff port map ( regout=>f_b3_next(7), 
      datain=>f_i2_next(7), sdata=>o_image1_2_dup0_7, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_6 : cycloneii_lcell_ff port map ( regout=>f_b3_next(6), 
      datain=>f_i2_next(6), sdata=>o_image1_2_dup0_6, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_5 : cycloneii_lcell_ff port map ( regout=>f_b3_next(5), 
      datain=>f_i2_next(5), sdata=>o_image1_2_dup0_5, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_4 : cycloneii_lcell_ff port map ( regout=>f_b3_next(4), 
      datain=>f_i2_next(4), sdata=>o_image1_2_dup0_4, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_3 : cycloneii_lcell_ff port map ( regout=>f_b3_next(3), 
      datain=>f_i2_next(3), sdata=>o_image1_2_dup0_3, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_2 : cycloneii_lcell_ff port map ( regout=>f_b3_next(2), 
      datain=>f_i2_next(2), sdata=>o_image1_2_dup0_2, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_1 : cycloneii_lcell_ff port map ( regout=>f_b3_next(1), 
      datain=>f_i2_next(1), sdata=>o_image1_2_dup0_1, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b3_next_0 : cycloneii_lcell_ff port map ( regout=>f_b3_next(0), 
      datain=>f_i2_next(0), sdata=>o_image1_2_dup0_0, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_7 : cycloneii_lcell_ff port map ( regout=>f_b2_next(7), 
      datain=>f_b3_next(7), sdata=>o_image2_2_dup0_7, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_6 : cycloneii_lcell_ff port map ( regout=>f_b2_next(6), 
      datain=>f_b3_next(6), sdata=>o_image2_2_dup0_6, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_5 : cycloneii_lcell_ff port map ( regout=>f_b2_next(5), 
      datain=>f_b3_next(5), sdata=>o_image2_2_dup0_5, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_4 : cycloneii_lcell_ff port map ( regout=>f_b2_next(4), 
      datain=>f_b3_next(4), sdata=>o_image2_2_dup0_4, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_3 : cycloneii_lcell_ff port map ( regout=>f_b2_next(3), 
      datain=>f_b3_next(3), sdata=>o_image2_2_dup0_3, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_2 : cycloneii_lcell_ff port map ( regout=>f_b2_next(2), 
      datain=>f_b3_next(2), sdata=>o_image2_2_dup0_2, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_1 : cycloneii_lcell_ff port map ( regout=>f_b2_next(1), 
      datain=>f_b3_next(1), sdata=>o_image2_2_dup0_1, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b2_next_0 : cycloneii_lcell_ff port map ( regout=>f_b2_next(0), 
      datain=>f_b3_next(0), sdata=>o_image2_2_dup0_0, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_7 : cycloneii_lcell_ff port map ( regout=>f_b1_next(7), 
      datain=>f_b2_next(7), sdata=>o_image2_1_dup0_7, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_6 : cycloneii_lcell_ff port map ( regout=>f_b1_next(6), 
      datain=>f_b2_next(6), sdata=>o_image2_1_dup0_6, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_5 : cycloneii_lcell_ff port map ( regout=>f_b1_next(5), 
      datain=>f_b2_next(5), sdata=>o_image2_1_dup0_5, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_4 : cycloneii_lcell_ff port map ( regout=>f_b1_next(4), 
      datain=>f_b2_next(4), sdata=>o_image2_1_dup0_4, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_3 : cycloneii_lcell_ff port map ( regout=>f_b1_next(3), 
      datain=>f_b2_next(3), sdata=>o_image2_1_dup0_3, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_2 : cycloneii_lcell_ff port map ( regout=>f_b1_next(2), 
      datain=>f_b2_next(2), sdata=>o_image2_1_dup0_2, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_1 : cycloneii_lcell_ff port map ( regout=>f_b1_next(1), 
      datain=>f_b2_next(1), sdata=>o_image2_1_dup0_1, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   reg_f_b1_next_0 : cycloneii_lcell_ff port map ( regout=>f_b1_next(0), 
      datain=>f_b2_next(0), sdata=>o_image2_1_dup0_0, clk=>i_clock_int, ena
      =>nx7906z1, sload=>nx20836z2);
   o_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR919, datain=>o_valid_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1110(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1110(0), datain=>o_mode_dup0(0));
   o_image2_obuf_2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR1120(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR1120(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR1120(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR1120(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR1120(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR1120(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR1120(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR1120(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR1119(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR1119(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR1119(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR1119(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR1119(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR1119(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR1119(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR1119(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR1118(7), datain=>o_image2_dup0(7)
   );
   o_image2_obuf_0_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(6), datain=>o_image2_dup0(6)
   );
   o_image2_obuf_0_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(5), datain=>o_image2_dup0(5)
   );
   o_image2_obuf_0_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(4), datain=>o_image2_dup0(4)
   );
   o_image2_obuf_0_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(3), datain=>o_image2_dup0(3)
   );
   o_image2_obuf_0_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(2), datain=>o_image2_dup0(2)
   );
   o_image2_obuf_0_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(1), datain=>o_image2_dup0(1)
   );
   o_image2_obuf_0_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1118(0), datain=>o_image2_dup0(0)
   );
   o_edge_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR920, datain=>o_edge_dup0);
   o_dir_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1109(2), datain=>o_dir_dup0(2));
   o_dir_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1109(1), datain=>o_dir_dup0(1));
   o_dir_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1109(0), datain=>o_dir_dup0(0));
   ix15183z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR897);
   ix37378z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR1107(7));
   ix36381z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR1107(6));
   ix35384z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR1107(5));
   ix34387z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR1107(4));
   ix33390z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR1107(3));
   ix32393z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR1107(2));
   ix31396z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR1107(1));
   ix30399z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR1107(0));
   ix23314z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(7), datain=>nx23314z1);
   ix22317z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(6), datain=>nx22317z1);
   ix21320z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(5), datain=>nx21320z1);
   ix20323z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(4), datain=>nx20323z1);
   ix19326z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(3), datain=>nx19326z1);
   ix18329z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(2), datain=>nx18329z1);
   ix17332z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(1), datain=>nx17332z1);
   ix16335z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1111(0), datain=>nx16335z1);
   ix52494z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(7), datain=>nx52494z1);
   ix53491z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(6), datain=>nx53491z1);
   ix54488z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(5), datain=>nx54488z1);
   ix55485z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(4), datain=>nx55485z1);
   ix56482z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(3), datain=>nx56482z1);
   ix57479z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(2), datain=>nx57479z1);
   ix58476z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(1), datain=>nx58476z1);
   ix59473z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1112(0), datain=>nx59473z1);
   ix57629z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(7), datain=>nx57629z1);
   ix58626z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(6), datain=>nx58626z1);
   ix59623z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(5), datain=>nx59623z1);
   ix60620z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(4), datain=>nx60620z1);
   ix61617z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(3), datain=>nx61617z1);
   ix62614z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(2), datain=>nx62614z1);
   ix63611z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(1), datain=>nx63611z1);
   ix64608z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR1113(0), datain=>nx64608z1);
   ix62764z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(7), datain=>nx62764z1);
   ix63761z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(6), datain=>nx63761z1);
   ix64758z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(5), datain=>nx64758z1);
   ix219z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(4), datain=>nx219z1);
   ix1216z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(3), datain=>nx1216z1);
   ix2213z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(2), datain=>nx2213z1);
   ix3210z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(1), datain=>nx3210z1);
   ix4207z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1114(0), datain=>nx4207z1);
   ix48187z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(7), datain=>nx48187z1);
   ix47190z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(6), datain=>nx47190z1);
   ix46193z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(5), datain=>nx46193z1);
   ix45196z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(4), datain=>nx45196z1);
   ix44199z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(3), datain=>nx44199z1);
   ix43202z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(2), datain=>nx43202z1);
   ix42205z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(1), datain=>nx42205z1);
   ix41208z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1115(0), datain=>nx41208z1);
   ix43052z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(7), datain=>nx43052z1);
   ix42055z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(6), datain=>nx42055z1);
   ix41058z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(5), datain=>nx41058z1);
   ix40061z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(4), datain=>nx40061z1);
   ix39064z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(3), datain=>nx39064z1);
   ix38067z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(2), datain=>nx38067z1);
   ix37070z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(1), datain=>nx37070z1);
   ix36073z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR1116(0), datain=>nx36073z1);
   ix37917z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(7), datain=>nx37917z1);
   ix36920z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(6), datain=>nx36920z1);
   ix35923z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(5), datain=>nx35923z1);
   ix34926z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(4), datain=>nx34926z1);
   ix33929z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(3), datain=>nx33929z1);
   ix32932z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(2), datain=>nx32932z1);
   ix31935z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(1), datain=>nx31935z1);
   ix30938z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1117(0), datain=>nx30938z1);
   ix4807z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(0), datain=>nx4807z1);
   ix6038z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_valid_EXMPLR1038, datain=>nx6038z1);
   ix4196z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(10), datain=>nx4196z1);
   ix57536z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(9), datain=>nx57536z1);
   ix56539z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(8), datain=>nx56539z1);
   ix55542z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(7), datain=>nx55542z1);
   ix54545z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(6), datain=>nx54545z1);
   ix53548z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(5), datain=>nx53548z1);
   ix52551z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(4), datain=>nx52551z1);
   ix51554z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(3), datain=>nx51554z1);
   ix50557z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(2), datain=>nx50557z1);
   ix49560z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(1), datain=>nx49560z1);
   ix48563z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1125(0), datain=>nx48563z1);
   ix61456z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(12), datain=>nx61456z1);
   ix60459z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(11), datain=>nx60459z1);
   ix59462z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(10), datain=>nx59462z1);
   ix24838z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(9), datain=>nx24838z1);
   ix25835z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(8), datain=>nx25835z1);
   ix26832z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(7), datain=>nx26832z1);
   ix27829z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(6), datain=>nx27829z1);
   ix28826z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(5), datain=>nx28826z1);
   ix29823z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(4), datain=>nx29823z1);
   ix30820z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(3), datain=>nx30820z1);
   ix31817z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(2), datain=>nx31817z1);
   ix32814z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(1), datain=>nx32814z1);
   ix33811z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1127(0), datain=>nx33811z1);
   ix56321z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(12), datain=>nx56321z1);
   ix55324z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(11), datain=>nx55324z1);
   ix54327z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(10), datain=>nx54327z1);
   ix32279z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(9), datain=>nx32279z1);
   ix31282z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(8), datain=>nx31282z1);
   ix30285z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(7), datain=>nx30285z1);
   ix29288z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(6), datain=>nx29288z1);
   ix28291z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(5), datain=>nx28291z1);
   ix27294z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(4), datain=>nx27294z1);
   ix26297z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(3), datain=>nx26297z1);
   ix25300z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(2), datain=>nx25300z1);
   ix24303z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(1), datain=>nx24303z1);
   ix23306z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1128(0), datain=>nx23306z1);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR896);
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR895);
   debug_num_8_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR1106, datain=>
      debug_led_red_dup0(17));
   debug_num_7_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR1105, datain=>debug_num_7_dup0);
   debug_num_6_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR1104, datain=>debug_num_6_dup0);
   debug_num_2_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(9), datain=>
      debug_num_2_dup0(9));
   debug_num_2_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(8), datain=>
      debug_num_2_dup0(8));
   debug_num_2_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(7), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1126(6), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1126(5), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1126(4), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1126(3), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1126(2), datain=>
      debug_num_2_dup0(2));
   debug_num_2_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(12), datain=>
      debug_num_2_dup0(12));
   debug_num_2_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(11), datain=>
      debug_num_2_dup0(11));
   debug_num_2_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(10), datain=>
      debug_num_2_dup0(10));
   debug_num_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1126(1), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1126(0), datain=>
      debug_num_2_dup0(0));
   debug_num_1_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_12_EXMPLR1052, datain=>
      debug_led_red_dup0(17));
   debug_num_1_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_11_EXMPLR1053, datain=>
      debug_led_red_dup0(17));
   debug_num_0_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(9), datain=>
      debug_num_0_dup0(9));
   debug_num_0_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(8), datain=>
      debug_num_0_dup0(8));
   debug_num_0_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(7), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1124(6), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1124(5), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1124(4), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1124(3), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1124(2), datain=>
      debug_num_0_dup0(2));
   debug_num_0_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(12), datain=>
      debug_num_0_dup0(12));
   debug_num_0_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(11), datain=>
      debug_num_0_dup0(11));
   debug_num_0_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(10), datain=>
      debug_num_0_dup0(10));
   debug_num_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1124(1), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1124(0), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1122(9), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(8), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(7), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(6), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(5), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(4), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(3), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(2), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(17), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(16), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(15), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(14), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(13), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(12), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(11), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(10), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(1), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1122(0), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1123(5), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1123(4), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1123(3), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1123(2), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1123(1), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1123(0), datain=>
      debug_led_red_dup0(17));
   debug_column_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(7), datain=>
      debug_column_dup0(7));
   debug_column_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(6), datain=>
      debug_column_dup0(6));
   debug_column_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(5), datain=>
      debug_column_dup0(5));
   debug_column_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(4), datain=>
      debug_column_dup0(4));
   debug_column_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(3), datain=>
      debug_column_dup0(3));
   debug_column_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(2), datain=>
      debug_column_dup0(2));
   debug_column_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1121(1), datain=>
      debug_column_dup0(1));
   ix20836z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"4e4e") 
       port map ( combout=>f_i_mode(1), dataa=>nx20836z2, datab=>
      f_i_mode_next(1), datac=>i_reset_int);
   ix64956z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbfb") 
       port map ( combout=>nx64956z1, dataa=>m_o_valid, datab=>nx20836z2, 
      datac=>i_reset_int);
   ix20836z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx20836z2, dataa=>f_state(3), datab=>f_state(2), 
      datac=>f_state(1), datad=>nx63959z1);
   ix36102z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx36102z1, dataa=>m_o_valid, datab=>nx20836z2, 
      datac=>i_reset_int);
   ix7906z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0b0b") 
       port map ( combout=>nx7906z1, dataa=>m_o_valid, datab=>nx20836z2, 
      datac=>i_reset_int);
   ix20836z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx20836z1, dataa=>m_o_valid, datab=>nx20836z2);
   ix20836z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_mode(0), dataa=>m_o_mode(0), datab=>
      f_i_mode_next(0), datac=>nx20836z2);
   ix20836z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(0), dataa=>m_o_row(0), datab=>
      f_i_row_next(0), datac=>nx20836z2);
   ix20836z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(1), dataa=>m_o_row(1), datab=>
      f_i_row_next(1), datac=>nx20836z2);
   ix20836z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(2), dataa=>m_o_row(2), datab=>
      f_i_row_next(2), datac=>nx20836z2);
   ix20836z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(3), dataa=>m_o_row(3), datab=>
      f_i_row_next(3), datac=>nx20836z2);
   ix20836z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(4), dataa=>m_o_row(4), datab=>
      f_i_row_next(4), datac=>nx20836z2);
   ix20836z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(5), dataa=>m_o_row(5), datab=>
      f_i_row_next(5), datac=>nx20836z2);
   ix20836z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(6), dataa=>m_o_row(6), datab=>
      f_i_row_next(6), datac=>nx20836z2);
   ix20836z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(7), dataa=>m_o_row(7), datab=>
      f_i_row_next(7), datac=>nx20836z2);
   ix20836z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(0), dataa=>f_i2_next(0), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_0);
   ix20836z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(1), dataa=>f_i2_next(1), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_1);
   ix20836z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(2), dataa=>f_i2_next(2), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_2);
   ix20836z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(3), dataa=>f_i2_next(3), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_3);
   ix20836z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(4), dataa=>f_i2_next(4), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_4);
   ix20836z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(5), dataa=>f_i2_next(5), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_5);
   ix20836z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(6), dataa=>f_i2_next(6), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_6);
   ix20836z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(7), dataa=>f_i2_next(7), datab=>nx20836z2, 
      datac=>o_image1_2_dup0_7);
   ix20836z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(0), dataa=>f_i1_next(0), datab=>nx20836z2, 
      datac=>o_image1_dup0(0));
   ix20836z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(1), dataa=>f_i1_next(1), datab=>nx20836z2, 
      datac=>o_image1_dup0(1));
   ix20836z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(2), dataa=>f_i1_next(2), datab=>nx20836z2, 
      datac=>o_image1_dup0(2));
   ix20836z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(3), dataa=>f_i1_next(3), datab=>nx20836z2, 
      datac=>o_image1_dup0(3));
   ix20836z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(4), dataa=>f_i1_next(4), datab=>nx20836z2, 
      datac=>o_image1_dup0(4));
   ix20836z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(5), dataa=>f_i1_next(5), datab=>nx20836z2, 
      datac=>o_image1_dup0(5));
   ix20836z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(6), dataa=>f_i1_next(6), datab=>nx20836z2, 
      datac=>o_image1_dup0(6));
   ix20836z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(7), dataa=>f_i1_next(7), datab=>nx20836z2, 
      datac=>o_image1_dup0(7));
   ix20836z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(0), dataa=>f_b3_next(0), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_0);
   ix20836z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(1), dataa=>f_b3_next(1), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_1);
   ix20836z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(2), dataa=>f_b3_next(2), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_2);
   ix20836z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(3), dataa=>f_b3_next(3), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_3);
   ix20836z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(4), dataa=>f_b3_next(4), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_4);
   ix20836z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(5), dataa=>f_b3_next(5), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_5);
   ix20836z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(6), dataa=>f_b3_next(6), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_6);
   ix20836z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(7), dataa=>f_b3_next(7), datab=>nx20836z2, 
      datac=>o_image2_2_dup0_7);
   ix20836z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(0), dataa=>f_b2_next(0), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_0);
   ix20836z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(1), dataa=>f_b2_next(1), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_1);
   ix20836z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(2), dataa=>f_b2_next(2), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_2);
   ix20836z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(3), dataa=>f_b2_next(3), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_3);
   ix20836z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(4), dataa=>f_b2_next(4), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_4);
   ix20836z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(5), dataa=>f_b2_next(5), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_5);
   ix20836z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(6), dataa=>f_b2_next(6), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_6);
   ix20836z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(7), dataa=>f_b2_next(7), datab=>nx20836z2, 
      datac=>o_image2_1_dup0_7);
   ix20836z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(0), dataa=>f_b1_next(0), datab=>nx20836z2, 
      datac=>o_image2_dup0(0));
   ix20836z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(1), dataa=>f_b1_next(1), datab=>nx20836z2, 
      datac=>o_image2_dup0(1));
   ix20836z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(2), dataa=>f_b1_next(2), datab=>nx20836z2, 
      datac=>o_image2_dup0(2));
   ix20836z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(3), dataa=>f_b1_next(3), datab=>nx20836z2, 
      datac=>o_image2_dup0(3));
   ix20836z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(4), dataa=>f_b1_next(4), datab=>nx20836z2, 
      datac=>o_image2_dup0(4));
   ix20836z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(5), dataa=>f_b1_next(5), datab=>nx20836z2, 
      datac=>o_image2_dup0(5));
   ix20836z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(6), dataa=>f_b1_next(6), datab=>nx20836z2, 
      datac=>o_image2_dup0(6));
   ix20836z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(7), dataa=>f_b1_next(7), datab=>nx20836z2, 
      datac=>o_image2_dup0(7));
   ix20836z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(0), dataa=>f_t3_next(0), datab=>nx20836z2, 
      datac=>o_image0_dup0(0));
   ix20836z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(1), dataa=>f_t3_next(1), datab=>nx20836z2, 
      datac=>o_image0_dup0(1));
   ix20836z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(2), dataa=>f_t3_next(2), datab=>nx20836z2, 
      datac=>o_image0_dup0(2));
   ix20836z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(3), dataa=>f_t3_next(3), datab=>nx20836z2, 
      datac=>o_image0_dup0(3));
   ix20836z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(4), dataa=>f_t3_next(4), datab=>nx20836z2, 
      datac=>o_image0_dup0(4));
   ix20836z52980 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(5), dataa=>f_t3_next(5), datab=>nx20836z2, 
      datac=>o_image0_dup0(5));
   ix20836z52981 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(6), dataa=>f_t3_next(6), datab=>nx20836z2, 
      datac=>o_image0_dup0(6));
   ix20836z52982 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(7), dataa=>f_t3_next(7), datab=>nx20836z2, 
      datac=>o_image0_dup0(7));
   ix20836z52983 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(0), dataa=>f_t2_next(0), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_0);
   ix20836z52984 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(1), dataa=>f_t2_next(1), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_1);
   ix20836z52985 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(2), dataa=>f_t2_next(2), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_2);
   ix20836z52986 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(3), dataa=>f_t2_next(3), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_3);
   ix20836z52987 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(4), dataa=>f_t2_next(4), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_4);
   ix20836z52988 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(5), dataa=>f_t2_next(5), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_5);
   ix20836z52989 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(6), dataa=>f_t2_next(6), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_6);
   ix20836z52990 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(7), dataa=>f_t2_next(7), datab=>nx20836z2, 
      datac=>o_image0_1_dup0_7);
   ix20836z52991 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(0), dataa=>f_t1_next(0), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_0);
   ix20836z52992 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(1), dataa=>f_t1_next(1), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_1);
   ix20836z52993 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(2), dataa=>f_t1_next(2), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_2);
   ix20836z52994 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(3), dataa=>f_t1_next(3), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_3);
   ix20836z52995 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(4), dataa=>f_t1_next(4), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_4);
   ix20836z52996 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(5), dataa=>f_t1_next(5), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_5);
   ix20836z52997 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(6), dataa=>f_t1_next(6), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_6);
   ix20836z52998 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(7), dataa=>f_t1_next(7), datab=>nx20836z2, 
      datac=>o_image0_2_dup0_7);
   ix47893z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefa") 
       port map ( combout=>o_mode_dup0(0), dataa=>m_o_mode(0), datab=>
      p5m_0_dup_512, datac=>i_reset_int, datad=>p5m_1_dup_509);
end main ;

