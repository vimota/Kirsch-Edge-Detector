
-- 
-- Definition of  kirsch
-- 
--      Tue Jul 22 01:54:43 2014
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
      p_i_valid : IN std_logic ;
      p_NOT_rtlc2n263 : IN std_logic) ;
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
      generic map (lut_mask => X"abab") 
       port map ( combout=>nx57253z3, dataa=>sclear, datab=>p_NOT_rtlc2n263, 
      datac=>p_i_valid);
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
      px23 : OUT std_logic) ;
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
   signal ena1_EXMPLR543: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR543, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR543 <= '1';
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
   signal ena1_EXMPLR573: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR573, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR573 <= '1';
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
   signal ena1_EXMPLR603: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR603, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR603 <= '1';
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
      p_rtlc2n264 : OUT std_logic) ;
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
         p_i_valid : IN std_logic ;
         p_NOT_rtlc2n263 : IN std_logic) ;
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
         px23 : OUT std_logic) ;
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
   signal o_valid_EXMPLR611, o_column_0_EXMPLR612: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR706: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_7_EXMPLR653, o_image1_1_6_EXMPLR654, 
      o_image1_1_5_EXMPLR655, o_image1_1_4_EXMPLR656, o_image1_1_3_EXMPLR657, 
      o_image1_1_2_EXMPLR658, o_image1_1_1_EXMPLR659, o_image1_1_dup0_0: 
   std_logic ;
   
   signal o_image1_2_EXMPLR707: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR708: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR709: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR710: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx8852z1, not_first_bubble, nx47386z7, nx15763z2, nx16760z1, 
      nx60567z2, nx47386z2, nx33254z1, nx57224z1, nx41103z2, nx41103z3, 
      nx60567z1, b_1, b_1_dup_360, nx47386z1, nx5021z1, nx4024z1, nx3027z1, 
      nx2030z1, nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, nx56377z1, 
      nx57374z1, nx58371z1, nx59368z1, nx60365z1, nx61362z1, nx62359z1, 
      nx60567z5, nx60567z4, nx41103z1, nx47386z3, NOT_b_0, NOT_b_0_dup_361, 
      nx47386z4, nx47386z5, nx47386z6, nx8852z2, nx60567z3, nx62359z2, 
      nx61362z2, nx60365z2, nx59368z2, nx58371z2, nx57374z2, nx56377z2, 
      nx56377z3, nx55380z2, nx55380z3, nx63578z2, nx64575z2, nx36z2, 
      nx1033z2, nx2030z2, nx3027z2, nx4024z2, nx4024z3, nx5021z2, nx5021z3, 
      nx16760z2, nx39109z1, nx15763z1: std_logic ;
   
   signal DANGLING : std_logic_vector (40 downto 0 );

begin
   o_valid <= o_valid_EXMPLR611 ;
   o_image1_0(7) <= o_image1_0_EXMPLR706(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR706(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR706(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR706(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR706(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR706(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR706(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR706(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR707(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR707(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR707(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR707(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR707(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR707(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR707(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR707(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR708(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR708(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR708(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR708(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR708(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR708(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR708(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR708(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR709(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR709(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR709(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR709(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR709(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR709(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR709(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR709(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR710(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR710(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR710(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR710(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR710(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR710(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR710(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR710(0) ;
   p_rtlc2n264 <= nx47386z7 ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock, q(7)=>
      row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), q(2)=>
      row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx8852z1, updn=>DANGLING(12), 
      cnt_en=>DANGLING(13), p_i_valid=>i_valid, p_NOT_rtlc2n263=>nx47386z3);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>
      o_column_0_EXMPLR612, clk_en=>nx47386z1, aclear=>DANGLING(14), sload=>
      DANGLING(15), data(7)=>DANGLING(16), data(6)=>DANGLING(17), data(5)=>
      DANGLING(18), data(4)=>DANGLING(19), data(3)=>DANGLING(20), data(2)=>
      DANGLING(21), data(1)=>DANGLING(22), data(0)=>DANGLING(23), aset=>
      DANGLING(24), sclear=>nx47386z7, updn=>DANGLING(25), cnt_en=>
      p_first_bubble, px1=>px1, px23=>px23);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>p_mem_data_7, wr_data1(6)
      =>p_mem_data_6, wr_data1(5)=>p_mem_data_5, wr_data1(4)=>p_mem_data_4, 
      wr_data1(3)=>p_mem_data_3, wr_data1(2)=>p_mem_data_2, wr_data1(1)=>
      p_mem_data_1, wr_data1(0)=>p_mem_data_0, rd_data1(7)=>mem_q_0(7), 
      rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), rd_data1(4)=>
      mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>mem_q_0(2), 
      rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR612, wr_clk1=>i_clock, rd_clk1=>DANGLING(26
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
      addr1(0)=>o_column_0_EXMPLR612, wr_clk1=>i_clock, rd_clk1=>DANGLING(31
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
      addr1(0)=>o_column_0_EXMPLR612, wr_clk1=>i_clock, rd_clk1=>DANGLING(36
      ), wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(37), ena1=>DANGLING(38), 
      rst1=>DANGLING(39), regce1=>DANGLING(40));
   o_mode(1) <= NOT i_reset;
   not_first_bubble <= NOT p_first_bubble;
   o_column(1) <= NOT column(1);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_EXMPLR611, 
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
      nx41103z1, sclr=>nx41103z3);
   reg_mem_wrn_current_1 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>i_clock, ena=>
      nx41103z1, sclr=>nx41103z3);
   nx39109z1 <= '1';
   reg_mem_wrn_current_0 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current(2), sdata=>nx39109z1, clk
      =>i_clock, ena=>nx41103z1, sclr=>nx8852z1, sload=>nx41103z2);
   reg_mem_wrn_2 : cycloneii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>mem_wrn_current(2), clk=>i_clock, sclr=>nx16760z1);
   reg_mem_wrn_1 : cycloneii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>mem_wrn_current(1), clk=>i_clock, sclr=>nx16760z1);
   nx15763z1 <= '1';
   reg_mem_wrn_0 : cycloneii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>mem_wrn_current(0), sdata=>nx15763z1, clk=>i_clock, sclr=>nx47386z1, 
      sload=>nx15763z2);
   reg_busySignalDelayed : cycloneii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>i_clock);
   reg_busySignal : cycloneii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>i_clock, sclr=>nx47386z2);
   reg_buffer2_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(7), datain=>mem_q_2(7), sdata=>p_mem_data_7, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(6), datain=>mem_q_2(6), sdata=>p_mem_data_6, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(5), datain=>mem_q_2(5), sdata=>p_mem_data_5, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(4), datain=>mem_q_2(4), sdata=>p_mem_data_4, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(3), datain=>mem_q_2(3), sdata=>p_mem_data_3, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(2), datain=>mem_q_2(2), sdata=>p_mem_data_2, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(1), datain=>mem_q_2(1), sdata=>p_mem_data_1, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR710(0), datain=>mem_q_2(0), sdata=>p_mem_data_0, clk
      =>i_clock, ena=>p_first_bubble, sload=>nx57224z1);
   reg_buffer2_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(7), datain=>nx62359z1, sdata=>mem_q_1(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(6), datain=>nx61362z1, sdata=>mem_q_1(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(5), datain=>nx60365z1, sdata=>mem_q_1(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(4), datain=>nx59368z1, sdata=>mem_q_1(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(3), datain=>nx58371z1, sdata=>mem_q_1(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(2), datain=>nx57374z1, sdata=>mem_q_1(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(1), datain=>nx56377z1, sdata=>mem_q_1(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_1_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR709(0), datain=>nx55380z1, sdata=>mem_q_1(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1_dup_360);
   reg_buffer2_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(7), datain=>nx63578z1, sdata=>mem_q_0(7), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(6), datain=>nx64575z1, sdata=>mem_q_0(6), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(5), datain=>nx36z1, sdata=>mem_q_0(5), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(4), datain=>nx1033z1, sdata=>mem_q_0(4), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(3), datain=>nx2030z1, sdata=>mem_q_0(3), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(2), datain=>nx3027z1, sdata=>mem_q_0(2), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(1), datain=>nx4024z1, sdata=>mem_q_0(1), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer2_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR708(0), datain=>nx5021z1, sdata=>mem_q_0(0), clk=>
      i_clock, ena=>p_first_bubble, sload=>b_1);
   reg_buffer1_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(7), datain=>o_image2_2_EXMPLR710(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(6), datain=>o_image2_2_EXMPLR710(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(5), datain=>o_image2_2_EXMPLR710(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(4), datain=>o_image2_2_EXMPLR710(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(3), datain=>o_image2_2_EXMPLR710(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(2), datain=>o_image2_2_EXMPLR710(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(1), datain=>o_image2_2_EXMPLR710(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR707(0), datain=>o_image2_2_EXMPLR710(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_7_EXMPLR653, datain=>o_image2_1_EXMPLR709(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_6_EXMPLR654, datain=>o_image2_1_EXMPLR709(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_5_EXMPLR655, datain=>o_image2_1_EXMPLR709(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_4_EXMPLR656, datain=>o_image2_1_EXMPLR709(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_3_EXMPLR657, datain=>o_image2_1_EXMPLR709(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_2_EXMPLR658, datain=>o_image2_1_EXMPLR709(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_1_EXMPLR659, datain=>o_image2_1_EXMPLR709(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_1_0 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_0, 
      datain=>o_image2_1_EXMPLR709(0), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer1_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(7), datain=>o_image2_0_EXMPLR708(7), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(6), datain=>o_image2_0_EXMPLR708(6), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(5), datain=>o_image2_0_EXMPLR708(5), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(4), datain=>o_image2_0_EXMPLR708(4), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(3), datain=>o_image2_0_EXMPLR708(3), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(2), datain=>o_image2_0_EXMPLR708(2), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(1), datain=>o_image2_0_EXMPLR708(1), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer1_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR706(0), datain=>o_image2_0_EXMPLR708(0), clk=>i_clock, 
      ena=>p_first_bubble);
   reg_buffer0_2_7 : cycloneii_lcell_ff port map ( regout=>o_image0_2(7), 
      datain=>o_image1_2_EXMPLR707(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_6 : cycloneii_lcell_ff port map ( regout=>o_image0_2(6), 
      datain=>o_image1_2_EXMPLR707(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_5 : cycloneii_lcell_ff port map ( regout=>o_image0_2(5), 
      datain=>o_image1_2_EXMPLR707(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_4 : cycloneii_lcell_ff port map ( regout=>o_image0_2(4), 
      datain=>o_image1_2_EXMPLR707(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_3 : cycloneii_lcell_ff port map ( regout=>o_image0_2(3), 
      datain=>o_image1_2_EXMPLR707(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_2 : cycloneii_lcell_ff port map ( regout=>o_image0_2(2), 
      datain=>o_image1_2_EXMPLR707(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_1 : cycloneii_lcell_ff port map ( regout=>o_image0_2(1), 
      datain=>o_image1_2_EXMPLR707(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_2_0 : cycloneii_lcell_ff port map ( regout=>o_image0_2(0), 
      datain=>o_image1_2_EXMPLR707(0), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_7 : cycloneii_lcell_ff port map ( regout=>o_image0_1(7), 
      datain=>o_image1_1_7_EXMPLR653, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_6 : cycloneii_lcell_ff port map ( regout=>o_image0_1(6), 
      datain=>o_image1_1_6_EXMPLR654, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_5 : cycloneii_lcell_ff port map ( regout=>o_image0_1(5), 
      datain=>o_image1_1_5_EXMPLR655, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_4 : cycloneii_lcell_ff port map ( regout=>o_image0_1(4), 
      datain=>o_image1_1_4_EXMPLR656, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_3 : cycloneii_lcell_ff port map ( regout=>o_image0_1(3), 
      datain=>o_image1_1_3_EXMPLR657, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_2 : cycloneii_lcell_ff port map ( regout=>o_image0_1(2), 
      datain=>o_image1_1_2_EXMPLR658, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_1 : cycloneii_lcell_ff port map ( regout=>o_image0_1(1), 
      datain=>o_image1_1_1_EXMPLR659, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_1_0 : cycloneii_lcell_ff port map ( regout=>o_image0_1(0), 
      datain=>o_image1_1_dup0_0, clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_7 : cycloneii_lcell_ff port map ( regout=>o_image0_0(7), 
      datain=>o_image1_0_EXMPLR706(7), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_6 : cycloneii_lcell_ff port map ( regout=>o_image0_0(6), 
      datain=>o_image1_0_EXMPLR706(6), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_5 : cycloneii_lcell_ff port map ( regout=>o_image0_0(5), 
      datain=>o_image1_0_EXMPLR706(5), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_4 : cycloneii_lcell_ff port map ( regout=>o_image0_0(4), 
      datain=>o_image1_0_EXMPLR706(4), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_3 : cycloneii_lcell_ff port map ( regout=>o_image0_0(3), 
      datain=>o_image1_0_EXMPLR706(3), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_2 : cycloneii_lcell_ff port map ( regout=>o_image0_0(2), 
      datain=>o_image1_0_EXMPLR706(2), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_1 : cycloneii_lcell_ff port map ( regout=>o_image0_0(1), 
      datain=>o_image1_0_EXMPLR706(1), clk=>i_clock, ena=>p_first_bubble);
   reg_buffer0_0_0 : cycloneii_lcell_ff port map ( regout=>o_image0_0(0), 
      datain=>o_image1_0_EXMPLR706(0), clk=>i_clock, ena=>p_first_bubble);
   ix16760z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx16760z2, dataa=>mem_wrn_current(2), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(0));
   ix5021z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4000") 
       port map ( combout=>nx5021z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2, datad=>mem_q_1(0));
   ix5021z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx5021z2, dataa=>p_mem_data_0, datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix4024z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4000") 
       port map ( combout=>nx4024z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2, datad=>mem_q_1(1));
   ix4024z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx4024z2, dataa=>p_mem_data_1, datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix3027z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx3027z2, dataa=>nx60567z2, datab=>mem_q_1(2), 
      datac=>mem_q_2(2), datad=>NOT_b_0);
   ix2030z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx2030z2, dataa=>nx60567z2, datab=>mem_q_1(3), 
      datac=>mem_q_2(3), datad=>NOT_b_0);
   ix1033z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx1033z2, dataa=>nx60567z2, datab=>mem_q_1(4), 
      datac=>mem_q_2(4), datad=>NOT_b_0);
   ix36z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx36z2, dataa=>nx60567z2, datab=>mem_q_1(5), 
      datac=>mem_q_2(5), datad=>NOT_b_0);
   ix64575z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx64575z2, dataa=>nx60567z2, datab=>mem_q_1(6), 
      datac=>mem_q_2(6), datad=>NOT_b_0);
   ix63578z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx63578z2, dataa=>nx60567z2, datab=>mem_q_1(7), 
      datac=>mem_q_2(7), datad=>NOT_b_0);
   ix55380z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx55380z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2, datad=>mem_q_0(0));
   ix55380z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx55380z2, dataa=>p_mem_data_0, datab=>
      mem_wrn_current(1), datac=>nx60567z2);
   ix56377z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx56377z3, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2, datad=>mem_q_0(1));
   ix56377z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx56377z2, dataa=>p_mem_data_1, datab=>
      mem_wrn_current(1), datac=>nx60567z2);
   ix57374z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx57374z2, dataa=>nx60567z2, datab=>mem_q_0(2), 
      datac=>mem_q_2(2), datad=>NOT_b_0_dup_361);
   ix58371z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx58371z2, dataa=>nx60567z2, datab=>mem_q_0(3), 
      datac=>mem_q_2(3), datad=>NOT_b_0_dup_361);
   ix59368z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx59368z2, dataa=>nx60567z2, datab=>mem_q_0(4), 
      datac=>mem_q_2(4), datad=>NOT_b_0_dup_361);
   ix60365z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx60365z2, dataa=>nx60567z2, datab=>mem_q_0(5), 
      datac=>mem_q_2(5), datad=>NOT_b_0_dup_361);
   ix61362z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx61362z2, dataa=>nx60567z2, datab=>mem_q_0(6), 
      datac=>mem_q_2(6), datad=>NOT_b_0_dup_361);
   ix62359z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx62359z2, dataa=>nx60567z2, datab=>mem_q_0(7), 
      datac=>mem_q_2(7), datad=>NOT_b_0_dup_361);
   ix60567z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z3, dataa=>row(4), datab=>row(3), datac=>
      row(2), datad=>row(1));
   ix8852z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z2, dataa=>row(3), datab=>row(2), datac=>
      row(1), datad=>row(0));
   ix47386z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx47386z6, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>row(4));
   ix47386z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx47386z5, dataa=>column(4), datab=>column(3), 
      datac=>column(2), datad=>column(1));
   ix47386z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx47386z4, dataa=>o_column_0_EXMPLR612, datab=>
      column(7), datac=>column(6), datad=>column(5));
   ix62359z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d5d5") 
       port map ( combout=>NOT_b_0_dup_361, dataa=>mem_wrn_current(1), datab
      =>mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>NOT_b_0, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix47386z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx47386z3, dataa=>p_first_bubble, datab=>
      nx47386z4, datac=>nx47386z5);
   ix41103z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcfd") 
       port map ( combout=>nx41103z1, dataa=>i_valid, datab=>nx8852z1, datac
      =>nx41103z2, datad=>nx47386z3);
   ix60567z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z4, dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>nx60567z5);
   ix60567z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z5, dataa=>column(3), datab=>column(2), 
      datac=>column(1));
   ix62359z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx62359z1, dataa=>p_mem_data_7, datab=>nx60567z2, 
      datac=>NOT_b_0_dup_361, datad=>nx62359z2);
   ix61362z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx61362z1, dataa=>p_mem_data_6, datab=>nx60567z2, 
      datac=>NOT_b_0_dup_361, datad=>nx61362z2);
   ix60365z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx60365z1, dataa=>p_mem_data_5, datab=>nx60567z2, 
      datac=>NOT_b_0_dup_361, datad=>nx60365z2);
   ix59368z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx59368z1, dataa=>p_mem_data_4, datab=>nx60567z2, 
      datac=>NOT_b_0_dup_361, datad=>nx59368z2);
   ix58371z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx58371z1, dataa=>p_mem_data_3, datab=>nx60567z2, 
      datac=>NOT_b_0_dup_361, datad=>nx58371z2);
   ix57374z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx57374z1, dataa=>p_mem_data_2, datab=>nx60567z2, 
      datac=>NOT_b_0_dup_361, datad=>nx57374z2);
   ix56377z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx56377z1, dataa=>mem_q_2(1), datab=>
      NOT_b_0_dup_361, datac=>nx56377z2, datad=>nx56377z3);
   ix55380z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx55380z1, dataa=>mem_q_2(0), datab=>
      NOT_b_0_dup_361, datac=>nx55380z2, datad=>nx55380z3);
   ix63578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx63578z1, dataa=>p_mem_data_7, datab=>nx60567z2, 
      datac=>NOT_b_0, datad=>nx63578z2);
   ix64575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx64575z1, dataa=>p_mem_data_6, datab=>nx60567z2, 
      datac=>NOT_b_0, datad=>nx64575z2);
   ix36z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx36z1, dataa=>p_mem_data_5, datab=>nx60567z2, 
      datac=>NOT_b_0, datad=>nx36z2);
   ix1033z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx1033z1, dataa=>p_mem_data_4, datab=>nx60567z2, 
      datac=>NOT_b_0, datad=>nx1033z2);
   ix2030z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx2030z1, dataa=>p_mem_data_3, datab=>nx60567z2, 
      datac=>NOT_b_0, datad=>nx2030z2);
   ix3027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx3027z1, dataa=>p_mem_data_2, datab=>nx60567z2, 
      datac=>NOT_b_0, datad=>nx3027z2);
   ix4024z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx4024z1, dataa=>mem_q_2(1), datab=>NOT_b_0, 
      datac=>nx4024z2, datad=>nx4024z3);
   ix5021z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx5021z1, dataa=>mem_q_2(0), datab=>NOT_b_0, 
      datac=>nx5021z2, datad=>nx5021z3);
   ix47386z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdfd") 
       port map ( combout=>nx47386z1, dataa=>i_valid, datab=>i_reset, datac
      =>nx47386z2);
   ix62359z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>b_1_dup_360, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1313") 
       port map ( combout=>b_1, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"faea") 
       port map ( combout=>nx60567z1, dataa=>o_valid_EXMPLR611, datab=>
      column(7), datac=>nx60567z2, datad=>nx60567z4);
   ix41103z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx41103z3, dataa=>i_reset, datab=>nx47386z2, 
      datac=>nx41103z2);
   ix41103z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41103z2, dataa=>i_valid, datab=>
      mem_wrn_current(2), datac=>mem_wrn_current(1), datad=>
      mem_wrn_current(0));
   ix57224z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx57224z1, dataa=>mem_wrn_current(2), datab=>
      nx60567z2);
   ix33254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx33254z1, dataa=>i_valid, datab=>busySignal);
   ix47386z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx47386z2, dataa=>nx47386z3, datab=>nx47386z6, 
      datac=>nx8852z2);
   ix60567z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z2, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>nx60567z3);
   ix16760z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffd") 
       port map ( combout=>nx16760z1, dataa=>i_valid, datab=>i_reset, datac
      =>nx47386z2, datad=>nx16760z2);
   ix15763z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1010") 
       port map ( combout=>nx15763z2, dataa=>i_reset, datab=>nx47386z2, 
      datac=>nx41103z2);
   ix47386z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx47386z7, dataa=>i_reset, datab=>p_first_bubble, 
      datac=>nx47386z4, datad=>nx47386z5);
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
      datac=>nx60567z5);
   ix10639z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa9") 
       port map ( combout=>o_column(6), dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>nx60567z5);
   ix11636z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>o_column(7), dataa=>column(7), datab=>nx60567z4);
   ix15976z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>o_mode(0), dataa=>i_valid, datab=>i_reset, datac
      =>busySignal, datad=>busySignalDelayed);
   ix8852z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaea") 
       port map ( combout=>nx8852z1, dataa=>i_reset, datab=>nx8852z2, datac
      =>nx47386z6, datad=>nx47386z3);
end main_unfold_1492 ;

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
      d : OUT std_logic) ;
end gt_14_0 ;

architecture IMPLEMENTATION of gt_14_0 is 
   signal nx100z40, nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, 
      nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_14_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(13), datab=>a(13), datad=>
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
      p_rtlcn826 : IN std_logic ;
      p_rtlcn866 : IN std_logic) ;
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
      p_rtlcn826, datad=>nx_add_12_0_vcc_net, cin=>nx63795z6);
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
       port map ( combout=>d(11), dataa=>p_rtlcn826, datab=>p_rtlcn866, 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z4);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>
      p_rtlcn826, datad=>nx_add_12_0_vcc_net, cin=>nx63795z8);
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
      p_rtlcn907 : IN std_logic ;
      p_rtlcn947 : IN std_logic) ;
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
      p_rtlcn907, datad=>nx_add_12_1_vcc_net, cin=>nx63795z6);
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
       port map ( combout=>d(11), dataa=>p_rtlcn907, datab=>p_rtlcn947, 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z4);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>
      p_rtlcn907, datad=>nx_add_12_1_vcc_net, cin=>nx63795z8);
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

entity flow is 
   port (
      t1 : IN std_logic_vector (7 DOWNTO 0) ;
      t2 : IN std_logic_vector (7 DOWNTO 0) ;
      t3 : IN std_logic_vector (7 DOWNTO 0) ;
      b1 : IN std_logic_vector (7 DOWNTO 0) ;
      b2 : IN std_logic_vector (7 DOWNTO 0) ;
      b3 : IN std_logic_vector (7 DOWNTO 0) ;
      i1 : IN std_logic_vector (7 DOWNTO 0) ;
      i2 : IN std_logic_vector (7 DOWNTO 0) ;
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      i_row : IN std_logic_vector (7 DOWNTO 0) ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_edge : OUT std_logic ;
      o_valid : OUT std_logic ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_ix258_ix248_nx13 : OUT std_logic ;
      p_ix258_ix249_nx13 : OUT std_logic ;
      p_ix258_ix250_nx13 : OUT std_logic ;
      p_ix258_ix251_nx13 : OUT std_logic ;
      p_ix258_ix252_nx13 : OUT std_logic ;
      p_ix258_ix253_nx13 : OUT std_logic ;
      p_ix258_ix254_nx13 : OUT std_logic ;
      p_ix258_ix255_nx13 : OUT std_logic ;
      p_p5m_1 : OUT std_logic ;
      p_p5m_0 : OUT std_logic) ;
end flow ;

architecture main of flow is 
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
         d : OUT std_logic) ;
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
         p_rtlcn826 : IN std_logic ;
         p_rtlcn866 : IN std_logic) ;
   end component ;
   component add_12_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn907 : IN std_logic ;
         p_rtlcn947 : IN std_logic) ;
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
   signal o_edge_EXMPLR789: std_logic_vector (2 DOWNTO 2) ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21: std_logic_vector (12 DOWNTO 0) ;
   
   signal p22: std_logic_vector (12 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p20: std_logic ;
   
   signal p31: std_logic_vector (12 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p30, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (13 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (13 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (13 DOWNTO 0) ;
   
   signal max_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx26026z3, nx47310z3, p21_4n0r3_9, p21_4n0r3_8, p21_4n0r3_7, 
      p21_4n0r3_6, p21_4n0r3_5, p21_4n0r3_4, p21_4n0r3_3, p21_4n0r3_2, 
      p21_4n0r3_1, p21_4n0r3_0: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p22_4n0r3_9, p22_4n0r3_8, p22_4n0r3_7, p22_4n0r3_6, p22_4n0r3_5, 
      p22_4n0r3_4, p22_4n0r3_3, p22_4n0r3_2, p22_4n0r3_1, p22_4n0r3_0: 
   std_logic ;
   
   signal p22_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal nx45188z1, nx10173z1, nx10173z2, nx6397z1, nx6397z2, nx15811z1, 
      nx20946z1, nx16808z1, nx21943z1, nx17805z1, nx22940z1, nx18802z1, 
      nx23937z1, nx19799z1, nx24934z1, nx20796z1, nx25931z1, nx21793z1, 
      nx26928z1, nx22790z1, nx27925z1, nx41013z1, nx46148z1, nx14253z1, 
      nx42010z1, nx47145z1, nx13256z1, nx47310z2, nx26026z1, nx5049z1, 
      nx30752z1, nx27830z1, nx25033z1, PWR, nx47310z5, nx47310z1, nx29521z1, 
      nx25836z1, nx26833z1, nx26833z2, nx26026z2, nx25836z2, nx47310z6, 
      nx47310z7, nx47310z8, nx47310z9, nx47310z10, nx47310z11, nx47310z12, 
      nx25836z3, nx26026z4, nx26833z3, nx47310z4, nx28524z1, NOT_state_3: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (36 downto 0 );

begin
   o_edge <= o_edge_EXMPLR789(2) ;
   p4s_sub12_0 : sub_12_0 port map ( cin=>DANGLING(0), a(11)=>p31(11), a(10)
      =>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>DANGLING(1), b(10)=>p32(10), b(9)=>p32(9), b(8)=>
      p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>
      p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>nx26026z3);
   ix47310z8933 : gt_14_0 port map ( a(13)=>p43(13), a(12)=>p43(12), a(11)=>
      p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), 
      a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), 
      a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>prev_max(12), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>nx47310z3);
   ix45188z19900 : gt_13_0 port map ( a(12)=>p22(12), a(11)=>p22(11), a(10)
      =>p22(10), a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), 
      a(5)=>p22(5), a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), 
      a(0)=>p22(0), b(12)=>p21(12), b(11)=>p21(11), b(10)=>p21(10), b(9)=>
      p21(9), b(8)=>p21(8), b(7)=>p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>
      p21(4), b(3)=>p21(3), b(2)=>p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>
      nx45188z1);
   p21_add12_4i1 : add_12_0 port map ( cin=>DANGLING(2), a(11)=>DANGLING(3), 
      a(10)=>DANGLING(4), a(9)=>DANGLING(5), a(8)=>p21_4n0r3_9, a(7)=>
      p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, a(4)=>p21_4n0r3_5, 
      a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>p21_4n0r3_2, a(0)=>
      p21_4n0r3_1, b(11)=>DANGLING(6), b(10)=>p21_4n0r4(11), b(9)=>
      p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>p21_4n0r4(8), b(6)=>
      p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>p21_4n0r4(5), b(3)=>
      p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>p21_4n0r4(2), b(0)=>p12(0), 
      d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), d(9)=>p21_4n0r2(10), d(8)
      =>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>p21_4n0r2(7), d(5)=>
      p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>p21_4n0r2(4), d(2)=>
      p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>p21_4n0r2(1), cout=>DANGLING(7
      ), p_rtlcn826=>nx10173z1, p_rtlcn866=>nx10173z2);
   p22_add12_4i2 : add_12_1 port map ( cin=>DANGLING(8), a(11)=>DANGLING(9), 
      a(10)=>DANGLING(10), a(9)=>DANGLING(11), a(8)=>p22_4n0r3_9, a(7)=>
      p22_4n0r3_8, a(6)=>p22_4n0r3_7, a(5)=>p22_4n0r3_6, a(4)=>p22_4n0r3_5, 
      a(3)=>p22_4n0r3_4, a(2)=>p22_4n0r3_3, a(1)=>p22_4n0r3_2, a(0)=>
      p22_4n0r3_1, b(11)=>DANGLING(12), b(10)=>p22_4n0r4(11), b(9)=>
      p22_4n0r4(10), b(8)=>p22_4n0r4(9), b(7)=>p22_4n0r4(8), b(6)=>
      p22_4n0r4(7), b(5)=>p22_4n0r4(6), b(4)=>p22_4n0r4(5), b(3)=>
      p22_4n0r4(4), b(2)=>p22_4n0r4(3), b(1)=>p22_4n0r4(2), b(0)=>p11(0), 
      d(11)=>p22_4n0r2(12), d(10)=>p22_4n0r2(11), d(9)=>p22_4n0r2(10), d(8)
      =>p22_4n0r2(9), d(7)=>p22_4n0r2(8), d(6)=>p22_4n0r2(7), d(5)=>
      p22_4n0r2(6), d(4)=>p22_4n0r2(5), d(3)=>p22_4n0r2(4), d(2)=>
      p22_4n0r2(3), d(1)=>p22_4n0r2(2), d(0)=>p22_4n0r2(1), cout=>DANGLING(
      13), p_rtlcn907=>nx6397z1, p_rtlcn947=>nx6397z2);
   p11_add8_0i1 : add_8_0 port map ( cin=>DANGLING(14), a(7)=>t1(7), a(6)=>
      t1(6), a(5)=>t1(5), a(4)=>t1(4), a(3)=>t1(3), a(2)=>t1(2), a(1)=>t1(1), 
      a(0)=>t1(0), b(7)=>t2(7), b(6)=>t2(6), b(5)=>t2(5), b(4)=>t2(4), b(3)
      =>t2(3), b(2)=>t2(2), b(1)=>t2(1), b(0)=>t2(0), d(7)=>p11_0n0s2(7), 
      d(6)=>p11_0n0s2(6), d(5)=>p11_0n0s2(5), d(4)=>p11_0n0s2(4), d(3)=>
      p11_0n0s2(3), d(2)=>p11_0n0s2(2), d(1)=>p11_0n0s2(1), d(0)=>
      p11_0n0s2(0), cout=>p11_0n0s2(8));
   p11_add9_1 : add_9_0 port map ( cin=>DANGLING(15), a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(7), a(6)=>p11_0n0s2(6), a(5)=>p11_0n0s2(5), a(4)=>
      p11_0n0s2(4), a(3)=>p11_0n0s2(3), a(2)=>p11_0n0s2(2), a(1)=>
      p11_0n0s2(1), a(0)=>p11_0n0s2(0), b(8)=>DANGLING(16), b(7)=>t3(7), 
      b(6)=>t3(6), b(5)=>t3(5), b(4)=>t3(4), b(3)=>t3(3), b(2)=>t3(2), b(1)
      =>t3(1), b(0)=>t3(0), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>
      p11(5), d(4)=>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>
      p11(0), cout=>p11(9));
   p12_add8_0i2 : add_8_1 port map ( cin=>DANGLING(17), a(7)=>b1(7), a(6)=>
      b1(6), a(5)=>b1(5), a(4)=>b1(4), a(3)=>b1(3), a(2)=>b1(2), a(1)=>b1(1), 
      a(0)=>b1(0), b(7)=>b2(7), b(6)=>b2(6), b(5)=>b2(5), b(4)=>b2(4), b(3)
      =>b2(3), b(2)=>b2(2), b(1)=>b2(1), b(0)=>b2(0), d(7)=>p12_0n0s2(7), 
      d(6)=>p12_0n0s2(6), d(5)=>p12_0n0s2(5), d(4)=>p12_0n0s2(4), d(3)=>
      p12_0n0s2(3), d(2)=>p12_0n0s2(2), d(1)=>p12_0n0s2(1), d(0)=>
      p12_0n0s2(0), cout=>p12_0n0s2(8));
   p12_add9_2 : add_9_1 port map ( cin=>DANGLING(18), a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(7), a(6)=>p12_0n0s2(6), a(5)=>p12_0n0s2(5), a(4)=>
      p12_0n0s2(4), a(3)=>p12_0n0s2(3), a(2)=>p12_0n0s2(2), a(1)=>
      p12_0n0s2(1), a(0)=>p12_0n0s2(0), b(8)=>DANGLING(19), b(7)=>b3(7), 
      b(6)=>b3(6), b(5)=>b3(5), b(4)=>b3(4), b(3)=>b3(3), b(2)=>b3(2), b(1)
      =>b3(1), b(0)=>b3(0), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>
      p12(5), d(4)=>p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>
      p12(0), cout=>p12(9));
   p21_sub10_4i3 : sub_10_0 port map ( cin=>DANGLING(20), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_4n0r3_9, 
      d(8)=>p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>p21_4n0r3_6, d(5)=>
      p21_4n0r3_5, d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, d(2)=>p21_4n0r3_2, 
      d(1)=>p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>nx10173z1);
   p22_sub10_4i5 : sub_10_1 port map ( cin=>DANGLING(21), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_4n0r3_9, 
      d(8)=>p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>p22_4n0r3_6, d(5)=>
      p22_4n0r3_5, d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, d(2)=>p22_4n0r3_2, 
      d(1)=>p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>nx6397z1);
   p13_add8_0i3 : add_8_2 port map ( cin=>DANGLING(22), a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9_2 port map ( cin=>DANGLING(23), a(8)=>DANGLING(24), 
      a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>DANGLING(25), b(7)=>DANGLING(
      26), b(6)=>DANGLING(27), b(5)=>DANGLING(28), b(4)=>DANGLING(29), b(3)
      =>DANGLING(30), b(2)=>DANGLING(31), b(1)=>DANGLING(32), b(0)=>
      p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>p13(7), d(5)=>p13(6), 
      d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>p13(2), d(0)=>p13(1), 
      cout=>p13(10));
   p21_sub11_4i4 : sub_10_2 port map ( cin=>DANGLING(33), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>DANGLING(34), 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_4n0r4(11), d(8)=>p21_4n0r4(10), d(7)=>p21_4n0r4(9), d(6)=>
      p21_4n0r4(8), d(5)=>p21_4n0r4(7), d(4)=>p21_4n0r4(6), d(3)=>
      p21_4n0r4(5), d(2)=>p21_4n0r4(4), d(1)=>p21_4n0r4(3), d(0)=>
      p21_4n0r4(2), cout=>nx10173z2, p_p12_0=>p12(0));
   p22_sub11_4i6 : sub_10_3 port map ( cin=>DANGLING(35), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>DANGLING(36), 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_4n0r4(11), d(8)=>p22_4n0r4(10), d(7)=>p22_4n0r4(9), d(6)=>
      p22_4n0r4(8), d(5)=>p22_4n0r4(7), d(4)=>p22_4n0r4(6), d(3)=>
      p22_4n0r4(5), d(2)=>p22_4n0r4(4), d(1)=>p22_4n0r4(3), d(0)=>
      p22_4n0r4(2), cout=>nx6397z2, p_p11_0=>p11(0));
   nx25033z1 <= NOT nx45188z1;
   PWR <= '1';
   state(0) <= NOT nx28524z1;
   NOT_state_3 <= NOT state(3);
   reg_tmp_o_edge : cycloneii_lcell_ff port map ( regout=>
      o_edge_EXMPLR789(2), datain=>prev_edge, sdata=>p41, clk=>i_clock, ena
      =>PWR, sload=>nx30752z1);
   reg_state_3 : cycloneii_lcell_ff port map ( regout=>state(3), datain=>
      state(2), clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_state_2 : cycloneii_lcell_ff port map ( regout=>state(2), datain=>
      state(1), clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_state_1 : cycloneii_lcell_ff port map ( regout=>state(1), datain=>
      state(0), clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_state_0 : cycloneii_lcell_ff port map ( regout=>nx28524z1, datain=>
      NOT_state_3, clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_prev_max_9 : cycloneii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_8 : cycloneii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_7 : cycloneii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_6 : cycloneii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_5 : cycloneii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_4 : cycloneii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_3 : cycloneii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_2 : cycloneii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_13 : cycloneii_lcell_ff port map ( regout=>prev_max(13), 
      datain=>p43(13), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_12 : cycloneii_lcell_ff port map ( regout=>prev_max(12), 
      datain=>p43(12), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_11 : cycloneii_lcell_ff port map ( regout=>prev_max(11), 
      datain=>p43(11), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_10 : cycloneii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_1 : cycloneii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_0 : cycloneii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_edge : cycloneii_lcell_ff port map ( regout=>prev_edge, datain=>
      p41, clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_p45 : cycloneii_lcell_ff port map ( regout=>p45, datain=>p35, clk=>
      i_clock);
   reg_p43_9 : cycloneii_lcell_ff port map ( regout=>p43(9), datain=>p4s(9), 
      clk=>i_clock);
   reg_p43_8 : cycloneii_lcell_ff port map ( regout=>p43(8), datain=>p4s(8), 
      clk=>i_clock);
   reg_p43_7 : cycloneii_lcell_ff port map ( regout=>p43(7), datain=>p4s(7), 
      clk=>i_clock);
   reg_p43_6 : cycloneii_lcell_ff port map ( regout=>p43(6), datain=>p4s(6), 
      clk=>i_clock);
   reg_p43_5 : cycloneii_lcell_ff port map ( regout=>p43(5), datain=>p4s(5), 
      clk=>i_clock);
   reg_p43_4 : cycloneii_lcell_ff port map ( regout=>p43(4), datain=>p4s(4), 
      clk=>i_clock);
   reg_p43_3 : cycloneii_lcell_ff port map ( regout=>p43(3), datain=>p4s(3), 
      clk=>i_clock);
   reg_p43_2 : cycloneii_lcell_ff port map ( regout=>p43(2), datain=>p4s(2), 
      clk=>i_clock);
   reg_p43_13 : cycloneii_lcell_ff port map ( regout=>p43(13), datain=>
      p4s(13), clk=>i_clock);
   reg_p43_12 : cycloneii_lcell_ff port map ( regout=>p43(12), datain=>
      p4s(12), clk=>i_clock);
   reg_p43_11 : cycloneii_lcell_ff port map ( regout=>p43(11), datain=>
      p4s(11), clk=>i_clock);
   reg_p43_10 : cycloneii_lcell_ff port map ( regout=>p43(10), datain=>
      p4s(10), clk=>i_clock);
   reg_p43_1 : cycloneii_lcell_ff port map ( regout=>p43(1), datain=>p4s(1), 
      clk=>i_clock);
   reg_p43_0 : cycloneii_lcell_ff port map ( regout=>p43(0), datain=>p4s(0), 
      clk=>i_clock);
   reg_p41 : cycloneii_lcell_ff port map ( regout=>p41, datain=>nx26026z1, 
      clk=>i_clock);
   reg_p40 : cycloneii_lcell_ff port map ( regout=>p40, datain=>p30, clk=>
      i_clock);
   reg_p35 : cycloneii_lcell_ff port map ( regout=>p35, datain=>nx25033z1, 
      clk=>i_clock);
   reg_p32_9 : cycloneii_lcell_ff port map ( regout=>p32(9), datain=>p23(9), 
      clk=>i_clock);
   reg_p32_8 : cycloneii_lcell_ff port map ( regout=>p32(8), datain=>p23(8), 
      clk=>i_clock);
   reg_p32_7 : cycloneii_lcell_ff port map ( regout=>p32(7), datain=>p23(7), 
      clk=>i_clock);
   reg_p32_6 : cycloneii_lcell_ff port map ( regout=>p32(6), datain=>p23(6), 
      clk=>i_clock);
   reg_p32_5 : cycloneii_lcell_ff port map ( regout=>p32(5), datain=>p23(5), 
      clk=>i_clock);
   reg_p32_4 : cycloneii_lcell_ff port map ( regout=>p32(4), datain=>p23(4), 
      clk=>i_clock);
   reg_p32_3 : cycloneii_lcell_ff port map ( regout=>p32(3), datain=>p23(3), 
      clk=>i_clock);
   reg_p32_2 : cycloneii_lcell_ff port map ( regout=>p32(2), datain=>p23(2), 
      clk=>i_clock);
   reg_p32_10 : cycloneii_lcell_ff port map ( regout=>p32(10), datain=>
      p23(10), clk=>i_clock);
   reg_p32_1 : cycloneii_lcell_ff port map ( regout=>p32(1), datain=>p23(1), 
      clk=>i_clock);
   reg_p32_0 : cycloneii_lcell_ff port map ( regout=>p32(0), datain=>p23(0), 
      clk=>i_clock);
   reg_p31_9 : cycloneii_lcell_ff port map ( regout=>p31(9), datain=>p21(9), 
      sdata=>p22(9), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_8 : cycloneii_lcell_ff port map ( regout=>p31(8), datain=>p21(8), 
      sdata=>p22(8), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_7 : cycloneii_lcell_ff port map ( regout=>p31(7), datain=>p21(7), 
      sdata=>p22(7), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_6 : cycloneii_lcell_ff port map ( regout=>p31(6), datain=>p21(6), 
      sdata=>p22(6), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_5 : cycloneii_lcell_ff port map ( regout=>p31(5), datain=>p21(5), 
      sdata=>p22(5), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_4 : cycloneii_lcell_ff port map ( regout=>p31(4), datain=>p21(4), 
      sdata=>p22(4), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_3 : cycloneii_lcell_ff port map ( regout=>p31(3), datain=>p21(3), 
      sdata=>p22(3), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_2 : cycloneii_lcell_ff port map ( regout=>p31(2), datain=>p21(2), 
      sdata=>p22(2), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_12 : cycloneii_lcell_ff port map ( regout=>p31(12), datain=>
      p21(12), sdata=>p22(12), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_11 : cycloneii_lcell_ff port map ( regout=>p31(11), datain=>
      p21(11), sdata=>p22(11), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_10 : cycloneii_lcell_ff port map ( regout=>p31(10), datain=>
      p21(10), sdata=>p22(10), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_1 : cycloneii_lcell_ff port map ( regout=>p31(1), datain=>p21(1), 
      sdata=>p22(1), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_0 : cycloneii_lcell_ff port map ( regout=>p31(0), datain=>p21(0), 
      sdata=>p22(0), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p30 : cycloneii_lcell_ff port map ( regout=>p30, datain=>p20, clk=>
      i_clock);
   reg_p23_9 : cycloneii_lcell_ff port map ( regout=>p23(9), datain=>p13(9), 
      clk=>i_clock);
   reg_p23_8 : cycloneii_lcell_ff port map ( regout=>p23(8), datain=>p13(8), 
      clk=>i_clock);
   reg_p23_7 : cycloneii_lcell_ff port map ( regout=>p23(7), datain=>p13(7), 
      clk=>i_clock);
   reg_p23_6 : cycloneii_lcell_ff port map ( regout=>p23(6), datain=>p13(6), 
      clk=>i_clock);
   reg_p23_5 : cycloneii_lcell_ff port map ( regout=>p23(5), datain=>p13(5), 
      clk=>i_clock);
   reg_p23_4 : cycloneii_lcell_ff port map ( regout=>p23(4), datain=>p13(4), 
      clk=>i_clock);
   reg_p23_3 : cycloneii_lcell_ff port map ( regout=>p23(3), datain=>p13(3), 
      clk=>i_clock);
   reg_p23_2 : cycloneii_lcell_ff port map ( regout=>p23(2), datain=>p13(2), 
      clk=>i_clock);
   reg_p23_10 : cycloneii_lcell_ff port map ( regout=>p23(10), datain=>
      p13(10), clk=>i_clock);
   reg_p23_1 : cycloneii_lcell_ff port map ( regout=>p23(1), datain=>p13(1), 
      clk=>i_clock);
   reg_p23_0 : cycloneii_lcell_ff port map ( regout=>p23(0), datain=>
      p13_0n0s2(0), clk=>i_clock);
   reg_p22_9 : cycloneii_lcell_ff port map ( regout=>p22(9), datain=>
      p22_4n0r2(9), clk=>i_clock);
   reg_p22_8 : cycloneii_lcell_ff port map ( regout=>p22(8), datain=>
      p22_4n0r2(8), clk=>i_clock);
   reg_p22_7 : cycloneii_lcell_ff port map ( regout=>p22(7), datain=>
      p22_4n0r2(7), clk=>i_clock);
   reg_p22_6 : cycloneii_lcell_ff port map ( regout=>p22(6), datain=>
      p22_4n0r2(6), clk=>i_clock);
   reg_p22_5 : cycloneii_lcell_ff port map ( regout=>p22(5), datain=>
      p22_4n0r2(5), clk=>i_clock);
   reg_p22_4 : cycloneii_lcell_ff port map ( regout=>p22(4), datain=>
      p22_4n0r2(4), clk=>i_clock);
   reg_p22_3 : cycloneii_lcell_ff port map ( regout=>p22(3), datain=>
      p22_4n0r2(3), clk=>i_clock);
   reg_p22_2 : cycloneii_lcell_ff port map ( regout=>p22(2), datain=>
      p22_4n0r2(2), clk=>i_clock);
   reg_p22_12 : cycloneii_lcell_ff port map ( regout=>p22(12), datain=>
      p22_4n0r2(12), clk=>i_clock);
   reg_p22_11 : cycloneii_lcell_ff port map ( regout=>p22(11), datain=>
      p22_4n0r2(11), clk=>i_clock);
   reg_p22_10 : cycloneii_lcell_ff port map ( regout=>p22(10), datain=>
      p22_4n0r2(10), clk=>i_clock);
   reg_p22_1 : cycloneii_lcell_ff port map ( regout=>p22(1), datain=>
      p22_4n0r2(1), clk=>i_clock);
   reg_p22_0 : cycloneii_lcell_ff port map ( regout=>p22(0), datain=>
      p22_4n0r3_0, clk=>i_clock);
   reg_p21_9 : cycloneii_lcell_ff port map ( regout=>p21(9), datain=>
      p21_4n0r2(9), clk=>i_clock);
   reg_p21_8 : cycloneii_lcell_ff port map ( regout=>p21(8), datain=>
      p21_4n0r2(8), clk=>i_clock);
   reg_p21_7 : cycloneii_lcell_ff port map ( regout=>p21(7), datain=>
      p21_4n0r2(7), clk=>i_clock);
   reg_p21_6 : cycloneii_lcell_ff port map ( regout=>p21(6), datain=>
      p21_4n0r2(6), clk=>i_clock);
   reg_p21_5 : cycloneii_lcell_ff port map ( regout=>p21(5), datain=>
      p21_4n0r2(5), clk=>i_clock);
   reg_p21_4 : cycloneii_lcell_ff port map ( regout=>p21(4), datain=>
      p21_4n0r2(4), clk=>i_clock);
   reg_p21_3 : cycloneii_lcell_ff port map ( regout=>p21(3), datain=>
      p21_4n0r2(3), clk=>i_clock);
   reg_p21_2 : cycloneii_lcell_ff port map ( regout=>p21(2), datain=>
      p21_4n0r2(2), clk=>i_clock);
   reg_p21_12 : cycloneii_lcell_ff port map ( regout=>p21(12), datain=>
      p21_4n0r2(12), clk=>i_clock);
   reg_p21_11 : cycloneii_lcell_ff port map ( regout=>p21(11), datain=>
      p21_4n0r2(11), clk=>i_clock);
   reg_p21_10 : cycloneii_lcell_ff port map ( regout=>p21(10), datain=>
      p21_4n0r2(10), clk=>i_clock);
   reg_p21_1 : cycloneii_lcell_ff port map ( regout=>p21(1), datain=>
      p21_4n0r2(1), clk=>i_clock);
   reg_p21_0 : cycloneii_lcell_ff port map ( regout=>p21(0), datain=>
      p21_4n0r3_0, clk=>i_clock);
   reg_p20 : cycloneii_lcell_ff port map ( regout=>p20, datain=>i_valid, clk
      =>i_clock);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid, datain=>
      state(3), clk=>i_clock, sclr=>i_reset);
   reg_max_fwd : cycloneii_lcell_ff port map ( regout=>max_fwd, datain=>p45, 
      clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_max_dir_2 : cycloneii_lcell_ff port map ( regout=>max_dir(2), datain
      =>nx25836z1, clk=>i_clock);
   reg_max_dir_1 : cycloneii_lcell_ff port map ( regout=>max_dir(1), datain
      =>nx26833z1, clk=>i_clock);
   reg_max_dir_0 : cycloneii_lcell_ff port map ( regout=>max_dir(0), datain
      =>nx27830z1, clk=>i_clock, ena=>nx47310z2);
   ix259_reg_p5m_1 : cycloneii_lcell_ff port map ( regout=>p_p5m_1, datain=>
      nx14253z1, clk=>i_clock);
   ix259_reg_p5m_0 : cycloneii_lcell_ff port map ( regout=>p_p5m_0, datain=>
      nx13256z1, clk=>i_clock);
   ix259_reg_p4m_1 : cycloneii_lcell_ff port map ( regout=>nx14253z1, datain
      =>nx46148z1, clk=>i_clock);
   ix259_reg_p4m_0 : cycloneii_lcell_ff port map ( regout=>nx13256z1, datain
      =>nx47145z1, clk=>i_clock);
   ix259_reg_p3m_1 : cycloneii_lcell_ff port map ( regout=>nx46148z1, datain
      =>nx41013z1, clk=>i_clock);
   ix259_reg_p3m_0 : cycloneii_lcell_ff port map ( regout=>nx47145z1, datain
      =>nx42010z1, clk=>i_clock);
   ix259_reg_p2m_1 : cycloneii_lcell_ff port map ( regout=>nx41013z1, datain
      =>i_mode(1), clk=>i_clock);
   ix259_reg_p2m_0 : cycloneii_lcell_ff port map ( regout=>nx42010z1, datain
      =>i_mode(0), clk=>i_clock);
   ix258_reg_p4r_7 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix248_nx13, datain=>nx20946z1, clk=>i_clock);
   ix258_reg_p4r_6 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix249_nx13, datain=>nx21943z1, clk=>i_clock);
   ix258_reg_p4r_5 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix250_nx13, datain=>nx22940z1, clk=>i_clock);
   ix258_reg_p4r_4 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix251_nx13, datain=>nx23937z1, clk=>i_clock);
   ix258_reg_p4r_3 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix252_nx13, datain=>nx24934z1, clk=>i_clock);
   ix258_reg_p4r_2 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix253_nx13, datain=>nx25931z1, clk=>i_clock);
   ix258_reg_p4r_1 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix254_nx13, datain=>nx26928z1, clk=>i_clock);
   ix258_reg_p4r_0 : cycloneii_lcell_ff port map ( regout=>
      p_ix258_ix255_nx13, datain=>nx27925z1, clk=>i_clock);
   ix258_reg_p3r_7 : cycloneii_lcell_ff port map ( regout=>nx20946z1, datain
      =>nx15811z1, clk=>i_clock);
   ix258_reg_p3r_6 : cycloneii_lcell_ff port map ( regout=>nx21943z1, datain
      =>nx16808z1, clk=>i_clock);
   ix258_reg_p3r_5 : cycloneii_lcell_ff port map ( regout=>nx22940z1, datain
      =>nx17805z1, clk=>i_clock);
   ix258_reg_p3r_4 : cycloneii_lcell_ff port map ( regout=>nx23937z1, datain
      =>nx18802z1, clk=>i_clock);
   ix258_reg_p3r_3 : cycloneii_lcell_ff port map ( regout=>nx24934z1, datain
      =>nx19799z1, clk=>i_clock);
   ix258_reg_p3r_2 : cycloneii_lcell_ff port map ( regout=>nx25931z1, datain
      =>nx20796z1, clk=>i_clock);
   ix258_reg_p3r_1 : cycloneii_lcell_ff port map ( regout=>nx26928z1, datain
      =>nx21793z1, clk=>i_clock);
   ix258_reg_p3r_0 : cycloneii_lcell_ff port map ( regout=>nx27925z1, datain
      =>nx22790z1, clk=>i_clock);
   ix258_reg_p2r_7 : cycloneii_lcell_ff port map ( regout=>nx15811z1, datain
      =>i_row(7), clk=>i_clock);
   ix258_reg_p2r_6 : cycloneii_lcell_ff port map ( regout=>nx16808z1, datain
      =>i_row(6), clk=>i_clock);
   ix258_reg_p2r_5 : cycloneii_lcell_ff port map ( regout=>nx17805z1, datain
      =>i_row(5), clk=>i_clock);
   ix258_reg_p2r_4 : cycloneii_lcell_ff port map ( regout=>nx18802z1, datain
      =>i_row(4), clk=>i_clock);
   ix258_reg_p2r_3 : cycloneii_lcell_ff port map ( regout=>nx19799z1, datain
      =>i_row(3), clk=>i_clock);
   ix258_reg_p2r_2 : cycloneii_lcell_ff port map ( regout=>nx20796z1, datain
      =>i_row(2), clk=>i_clock);
   ix258_reg_p2r_1 : cycloneii_lcell_ff port map ( regout=>nx21793z1, datain
      =>i_row(1), clk=>i_clock);
   ix258_reg_p2r_0 : cycloneii_lcell_ff port map ( regout=>nx22790z1, datain
      =>i_row(0), clk=>i_clock);
   ix47310z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx47310z4, dataa=>nx47310z5, datab=>nx47310z10, 
      datac=>nx47310z11, datad=>nx47310z12);
   ix26833z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx26833z3, dataa=>state(1), datab=>nx28524z1);
   ix26026z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx26026z4, dataa=>p4s(9), datab=>p4s(8), datac=>
      p4s(7));
   ix25836z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"c0aa") 
       port map ( combout=>nx25836z3, dataa=>max_dir(2), datab=>state(1), 
      datac=>nx28524z1, datad=>nx47310z2);
   ix47310z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z12, dataa=>p43(1), datab=>p43(0), datac=>
      prev_max(1), datad=>prev_max(0));
   ix47310z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z11, dataa=>p43(3), datab=>p43(2), datac=>
      prev_max(3), datad=>prev_max(2));
   ix47310z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z10, dataa=>p43(5), datab=>p43(4), datac=>
      prev_max(5), datad=>prev_max(4));
   ix47310z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z9, dataa=>p43(7), datab=>p43(6), datac=>
      prev_max(7), datad=>prev_max(6));
   ix47310z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z8, dataa=>p43(9), datab=>p43(8), datac=>
      prev_max(9), datad=>prev_max(8));
   ix47310z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z7, dataa=>p43(11), datab=>p43(10), datac
      =>prev_max(11), datad=>prev_max(10));
   ix47310z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z6, dataa=>p43(13), datab=>p43(12), datac
      =>prev_max(13), datad=>prev_max(12));
   ix25836z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx25836z2, dataa=>max_dir(2), datab=>state(3), 
      datac=>nx47310z2);
   ix26026z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx26026z2, dataa=>p31(12), datab=>p30, datac=>
      nx26026z3);
   ix26833z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx26833z2, dataa=>state(3), datab=>state(2));
   ix26833z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ea22") 
       port map ( combout=>nx26833z1, dataa=>max_dir(1), datab=>nx47310z2, 
      datac=>nx26833z2, datad=>nx26833z3);
   ix25836z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff40") 
       port map ( combout=>nx25836z1, dataa=>state(2), datab=>nx28524z1, 
      datac=>nx25836z2, datad=>nx25836z3);
   ix29521z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx29521z1, dataa=>i_reset, datab=>p40);
   ix47310z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx47310z1, dataa=>i_reset, datab=>p40, datac=>
      state(3), datad=>nx47310z2);
   ix47310z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx47310z5, dataa=>nx47310z6, datab=>nx47310z7, 
      datac=>nx47310z8, datad=>nx47310z9);
   ix27830z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx27830z1, dataa=>p45, datab=>nx28524z1);
   ix30752z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx30752z1, dataa=>state(3), datab=>nx47310z2);
   ix5049z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbfb") 
       port map ( combout=>nx5049z1, dataa=>i_reset, datab=>p40, datac=>
      state(3));
   ix26026z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0e0") 
       port map ( combout=>nx26026z1, dataa=>p4s(11), datab=>p4s(10), datac
      =>nx26026z2, datad=>nx26026z4);
   ix47310z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx47310z2, dataa=>p45, datab=>max_fwd, datac=>
      nx47310z3, datad=>nx47310z4);
   ix28128z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>p4s(12), dataa=>p31(12), datab=>nx26026z3);
   ix29125z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>p4s(13), dataa=>p31(12), datab=>nx26026z3);
   ix63886z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(0), dataa=>o_edge_EXMPLR789(2), datab=>
      max_dir(0));
   ix62889z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(1), dataa=>o_edge_EXMPLR789(2), datab=>
      max_dir(1));
   ix61892z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(2), dataa=>o_edge_EXMPLR789(2), datab=>
      max_dir(2));
end main ;

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
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_column : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_6 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_7 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_8 : OUT std_logic_vector (3 DOWNTO 0)) ;
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
         p_rtlc2n264 : OUT std_logic) ;
   end component ;
   component flow
      port (
         t1 : IN std_logic_vector (7 DOWNTO 0) ;
         t2 : IN std_logic_vector (7 DOWNTO 0) ;
         t3 : IN std_logic_vector (7 DOWNTO 0) ;
         b1 : IN std_logic_vector (7 DOWNTO 0) ;
         b2 : IN std_logic_vector (7 DOWNTO 0) ;
         b3 : IN std_logic_vector (7 DOWNTO 0) ;
         i1 : IN std_logic_vector (7 DOWNTO 0) ;
         i2 : IN std_logic_vector (7 DOWNTO 0) ;
         i_clock : IN std_logic ;
         i_reset : IN std_logic ;
         i_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         i_row : IN std_logic_vector (7 DOWNTO 0) ;
         o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         o_edge : OUT std_logic ;
         o_valid : OUT std_logic ;
         o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_ix258_ix248_nx13 : OUT std_logic ;
         p_ix258_ix249_nx13 : OUT std_logic ;
         p_ix258_ix250_nx13 : OUT std_logic ;
         p_ix258_ix251_nx13 : OUT std_logic ;
         p_ix258_ix252_nx13 : OUT std_logic ;
         p_ix258_ix253_nx13 : OUT std_logic ;
         p_ix258_ix254_nx13 : OUT std_logic ;
         p_ix258_ix255_nx13 : OUT std_logic ;
         p_p5m_1 : OUT std_logic ;
         p_p5m_0 : OUT std_logic) ;
   end component ;
   signal i_clock_EXMPLR819, i_reset_EXMPLR820, i_valid_EXMPLR821: std_logic
    ;
   
   signal i_pixel_EXMPLR913: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0, o_edge_dup0: std_logic ;
   
   signal o_dir_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_column_dup0: std_logic_vector (7 DOWNTO 1) ;
   
   signal debug_num_0_EXMPLR914: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR915: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR916: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR917: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR918: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR919: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR920: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_7_EXMPLR921: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_8_EXMPLR922: std_logic_vector (3 DOWNTO 0) ;
   
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
   
   signal m_o_image0_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image0_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image0_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image1_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image1_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image2_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image2_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image2_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_int, i_reset_int, i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR866, o_edge_EXMPLR867: std_logic ;
   
   signal o_dir_EXMPLR923: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR924: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR925: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_column_EXMPLR926: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR927: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR928: std_logic_vector (5 DOWNTO 0) ;
   
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
   
   signal nx20836z1, nx57127z1, nx35105z1, nx57127z2, nx64956z1, 
      first_bubble, mem_data_7, mem_data_6, mem_data_5, mem_data_4, 
      mem_data_3, mem_data_2, mem_data_1, mem_data_0, nx45613z1, nx44616z1, 
      nx43619z1, nx42622z1, nx41625z1, nx40628z1, nx39631z1, nx38634z1, 
      nx10452z1, nx10452z2, nx10452z3, p5m_1_dup_82, p5m_0_dup_86, nx4807z1, 
      nx16335z1, nx17332z1, nx18329z1, nx19326z1, nx20323z1, nx21320z1, 
      nx22317z1, nx23314z1, nx63959z1, NOT_f_state_3: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   i_clock_EXMPLR819 <= i_clock ;
   i_reset_EXMPLR820 <= i_reset ;
   i_valid_EXMPLR821 <= i_valid ;
   i_pixel_EXMPLR913(7) <= i_pixel(7) ;
   i_pixel_EXMPLR913(6) <= i_pixel(6) ;
   i_pixel_EXMPLR913(5) <= i_pixel(5) ;
   i_pixel_EXMPLR913(4) <= i_pixel(4) ;
   i_pixel_EXMPLR913(3) <= i_pixel(3) ;
   i_pixel_EXMPLR913(2) <= i_pixel(2) ;
   i_pixel_EXMPLR913(1) <= i_pixel(1) ;
   i_pixel_EXMPLR913(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR866 ;
   o_edge <= o_edge_EXMPLR867 ;
   o_dir(2) <= o_dir_EXMPLR923(2) ;
   o_dir(1) <= o_dir_EXMPLR923(1) ;
   o_dir(0) <= o_dir_EXMPLR923(0) ;
   o_mode(1) <= o_mode_EXMPLR924(1) ;
   o_mode(0) <= o_mode_EXMPLR924(0) ;
   o_row(7) <= o_row_EXMPLR925(7) ;
   o_row(6) <= o_row_EXMPLR925(6) ;
   o_row(5) <= o_row_EXMPLR925(5) ;
   o_row(4) <= o_row_EXMPLR925(4) ;
   o_row(3) <= o_row_EXMPLR925(3) ;
   o_row(2) <= o_row_EXMPLR925(2) ;
   o_row(1) <= o_row_EXMPLR925(1) ;
   o_row(0) <= o_row_EXMPLR925(0) ;
   debug_column(7) <= debug_column_EXMPLR926(7) ;
   debug_column(6) <= debug_column_EXMPLR926(6) ;
   debug_column(5) <= debug_column_EXMPLR926(5) ;
   debug_column(4) <= debug_column_EXMPLR926(4) ;
   debug_column(3) <= debug_column_EXMPLR926(3) ;
   debug_column(2) <= debug_column_EXMPLR926(2) ;
   debug_column(1) <= debug_column_EXMPLR926(1) ;
   debug_column(0) <= debug_column_EXMPLR926(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR927(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR927(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR927(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR927(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR927(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR927(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR927(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR927(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR927(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR927(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR927(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR927(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR927(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR927(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR927(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR927(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR927(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR927(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR928(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR928(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR928(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR928(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR928(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR928(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR914(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR914(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR914(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR914(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR915(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR915(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR915(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR915(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR916(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR916(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR916(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR916(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR917(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR917(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR917(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR917(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR918(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR918(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR918(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR918(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR919(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR919(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR919(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR919(0) ;
   debug_num_6(3) <= debug_num_6_EXMPLR920(3) ;
   debug_num_6(2) <= debug_num_6_EXMPLR920(2) ;
   debug_num_6(1) <= debug_num_6_EXMPLR920(1) ;
   debug_num_6(0) <= debug_num_6_EXMPLR920(0) ;
   debug_num_7(3) <= debug_num_7_EXMPLR921(3) ;
   debug_num_7(2) <= debug_num_7_EXMPLR921(2) ;
   debug_num_7(1) <= debug_num_7_EXMPLR921(1) ;
   debug_num_7(0) <= debug_num_7_EXMPLR921(0) ;
   debug_num_8(3) <= debug_num_8_EXMPLR922(3) ;
   debug_num_8(2) <= debug_num_8_EXMPLR922(2) ;
   debug_num_8(1) <= debug_num_8_EXMPLR922(1) ;
   debug_num_8(0) <= debug_num_8_EXMPLR922(0) ;
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
      =>m_o_image0_0(7), o_image0_0(6)=>m_o_image0_0(6), o_image0_0(5)=>
      m_o_image0_0(5), o_image0_0(4)=>m_o_image0_0(4), o_image0_0(3)=>
      m_o_image0_0(3), o_image0_0(2)=>m_o_image0_0(2), o_image0_0(1)=>
      m_o_image0_0(1), o_image0_0(0)=>m_o_image0_0(0), o_image0_1(7)=>
      m_o_image0_1(7), o_image0_1(6)=>m_o_image0_1(6), o_image0_1(5)=>
      m_o_image0_1(5), o_image0_1(4)=>m_o_image0_1(4), o_image0_1(3)=>
      m_o_image0_1(3), o_image0_1(2)=>m_o_image0_1(2), o_image0_1(1)=>
      m_o_image0_1(1), o_image0_1(0)=>m_o_image0_1(0), o_image0_2(7)=>
      m_o_image0_2(7), o_image0_2(6)=>m_o_image0_2(6), o_image0_2(5)=>
      m_o_image0_2(5), o_image0_2(4)=>m_o_image0_2(4), o_image0_2(3)=>
      m_o_image0_2(3), o_image0_2(2)=>m_o_image0_2(2), o_image0_2(1)=>
      m_o_image0_2(1), o_image0_2(0)=>m_o_image0_2(0), o_image1_0(7)=>
      m_o_image1_0(7), o_image1_0(6)=>m_o_image1_0(6), o_image1_0(5)=>
      m_o_image1_0(5), o_image1_0(4)=>m_o_image1_0(4), o_image1_0(3)=>
      m_o_image1_0(3), o_image1_0(2)=>m_o_image1_0(2), o_image1_0(1)=>
      m_o_image1_0(1), o_image1_0(0)=>m_o_image1_0(0), o_image1_1(7)=>
      DANGLING(9), o_image1_1(6)=>DANGLING(10), o_image1_1(5)=>DANGLING(11), 
      o_image1_1(4)=>DANGLING(12), o_image1_1(3)=>DANGLING(13), 
      o_image1_1(2)=>DANGLING(14), o_image1_1(1)=>DANGLING(15), 
      o_image1_1(0)=>DANGLING(16), o_image1_2(7)=>m_o_image1_2(7), 
      o_image1_2(6)=>m_o_image1_2(6), o_image1_2(5)=>m_o_image1_2(5), 
      o_image1_2(4)=>m_o_image1_2(4), o_image1_2(3)=>m_o_image1_2(3), 
      o_image1_2(2)=>m_o_image1_2(2), o_image1_2(1)=>m_o_image1_2(1), 
      o_image1_2(0)=>m_o_image1_2(0), o_image2_0(7)=>m_o_image2_0(7), 
      o_image2_0(6)=>m_o_image2_0(6), o_image2_0(5)=>m_o_image2_0(5), 
      o_image2_0(4)=>m_o_image2_0(4), o_image2_0(3)=>m_o_image2_0(3), 
      o_image2_0(2)=>m_o_image2_0(2), o_image2_0(1)=>m_o_image2_0(1), 
      o_image2_0(0)=>m_o_image2_0(0), o_image2_1(7)=>m_o_image2_1(7), 
      o_image2_1(6)=>m_o_image2_1(6), o_image2_1(5)=>m_o_image2_1(5), 
      o_image2_1(4)=>m_o_image2_1(4), o_image2_1(3)=>m_o_image2_1(3), 
      o_image2_1(2)=>m_o_image2_1(2), o_image2_1(1)=>m_o_image2_1(1), 
      o_image2_1(0)=>m_o_image2_1(0), o_image2_2(7)=>m_o_image2_2(7), 
      o_image2_2(6)=>m_o_image2_2(6), o_image2_2(5)=>m_o_image2_2(5), 
      o_image2_2(4)=>m_o_image2_2(4), o_image2_2(3)=>m_o_image2_2(3), 
      o_image2_2(2)=>m_o_image2_2(2), o_image2_2(1)=>m_o_image2_2(1), 
      o_image2_2(0)=>m_o_image2_2(0), p_first_bubble=>first_bubble, 
      p_mem_data_7=>mem_data_7, p_mem_data_6=>mem_data_6, p_mem_data_5=>
      mem_data_5, p_mem_data_4=>mem_data_4, p_mem_data_3=>mem_data_3, 
      p_mem_data_2=>mem_data_2, p_mem_data_1=>mem_data_1, p_mem_data_0=>
      mem_data_0, px1=>nx10452z1, px23=>nx10452z2, p_rtlc2n264=>nx10452z3);
   u_flow : flow port map ( t1(7)=>f_t1(7), t1(6)=>f_t1(6), t1(5)=>f_t1(5), 
      t1(4)=>f_t1(4), t1(3)=>f_t1(3), t1(2)=>f_t1(2), t1(1)=>f_t1(1), t1(0)
      =>f_t1(0), t2(7)=>f_t2(7), t2(6)=>f_t2(6), t2(5)=>f_t2(5), t2(4)=>
      f_t2(4), t2(3)=>f_t2(3), t2(2)=>f_t2(2), t2(1)=>f_t2(1), t2(0)=>
      f_t2(0), t3(7)=>f_t3(7), t3(6)=>f_t3(6), t3(5)=>f_t3(5), t3(4)=>
      f_t3(4), t3(3)=>f_t3(3), t3(2)=>f_t3(2), t3(1)=>f_t3(1), t3(0)=>
      f_t3(0), b1(7)=>f_b1(7), b1(6)=>f_b1(6), b1(5)=>f_b1(5), b1(4)=>
      f_b1(4), b1(3)=>f_b1(3), b1(2)=>f_b1(2), b1(1)=>f_b1(1), b1(0)=>
      f_b1(0), b2(7)=>f_b2(7), b2(6)=>f_b2(6), b2(5)=>f_b2(5), b2(4)=>
      f_b2(4), b2(3)=>f_b2(3), b2(2)=>f_b2(2), b2(1)=>f_b2(1), b2(0)=>
      f_b2(0), b3(7)=>f_b3(7), b3(6)=>f_b3(6), b3(5)=>f_b3(5), b3(4)=>
      f_b3(4), b3(3)=>f_b3(3), b3(2)=>f_b3(2), b3(1)=>f_b3(1), b3(0)=>
      f_b3(0), i1(7)=>f_i1(7), i1(6)=>f_i1(6), i1(5)=>f_i1(5), i1(4)=>
      f_i1(4), i1(3)=>f_i1(3), i1(2)=>f_i1(2), i1(1)=>f_i1(1), i1(0)=>
      f_i1(0), i2(7)=>f_i2(7), i2(6)=>f_i2(6), i2(5)=>f_i2(5), i2(4)=>
      f_i2(4), i2(3)=>f_i2(3), i2(2)=>f_i2(2), i2(1)=>f_i2(1), i2(0)=>
      f_i2(0), i_clock=>i_clock_int, i_reset=>i_reset_int, i_valid=>
      nx20836z1, i_mode(1)=>f_i_mode(1), i_mode(0)=>f_i_mode(0), i_row(7)=>
      f_i_row(7), i_row(6)=>f_i_row(6), i_row(5)=>f_i_row(5), i_row(4)=>
      f_i_row(4), i_row(3)=>f_i_row(3), i_row(2)=>f_i_row(2), i_row(1)=>
      f_i_row(1), i_row(0)=>f_i_row(0), o_dir(2)=>o_dir_dup0(2), o_dir(1)=>
      o_dir_dup0(1), o_dir(0)=>o_dir_dup0(0), o_edge=>o_edge_dup0, o_valid=>
      o_valid_dup0, o_mode(1)=>DANGLING(17), o_mode(0)=>DANGLING(18), 
      o_row(7)=>DANGLING(19), o_row(6)=>DANGLING(20), o_row(5)=>DANGLING(21), 
      o_row(4)=>DANGLING(22), o_row(3)=>DANGLING(23), o_row(2)=>DANGLING(24), 
      o_row(1)=>DANGLING(25), o_row(0)=>DANGLING(26), p_ix258_ix248_nx13=>
      nx45613z1, p_ix258_ix249_nx13=>nx44616z1, p_ix258_ix250_nx13=>
      nx43619z1, p_ix258_ix251_nx13=>nx42622z1, p_ix258_ix252_nx13=>
      nx41625z1, p_ix258_ix253_nx13=>nx40628z1, p_ix258_ix254_nx13=>
      nx39631z1, p_ix258_ix255_nx13=>nx38634z1, p_p5m_1=>p5m_1_dup_82, 
      p_p5m_0=>p5m_0_dup_86);
   o_mode_dup0(1) <= NOT i_reset_int;
   debug_led_red_dup0(17) <= '0';
   f_state(0) <= NOT nx63959z1;
   NOT_f_state_3 <= NOT f_state(3);
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
      datain=>f_i1_next(7), sdata=>m_o_image1_0(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_6 : cycloneii_lcell_ff port map ( regout=>f_t3_next(6), 
      datain=>f_i1_next(6), sdata=>m_o_image1_0(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_5 : cycloneii_lcell_ff port map ( regout=>f_t3_next(5), 
      datain=>f_i1_next(5), sdata=>m_o_image1_0(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_4 : cycloneii_lcell_ff port map ( regout=>f_t3_next(4), 
      datain=>f_i1_next(4), sdata=>m_o_image1_0(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_3 : cycloneii_lcell_ff port map ( regout=>f_t3_next(3), 
      datain=>f_i1_next(3), sdata=>m_o_image1_0(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_2 : cycloneii_lcell_ff port map ( regout=>f_t3_next(2), 
      datain=>f_i1_next(2), sdata=>m_o_image1_0(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_1 : cycloneii_lcell_ff port map ( regout=>f_t3_next(1), 
      datain=>f_i1_next(1), sdata=>m_o_image1_0(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_0 : cycloneii_lcell_ff port map ( regout=>f_t3_next(0), 
      datain=>f_i1_next(0), sdata=>m_o_image1_0(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_7 : cycloneii_lcell_ff port map ( regout=>f_t2_next(7), 
      datain=>f_t3_next(7), sdata=>m_o_image0_0(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_6 : cycloneii_lcell_ff port map ( regout=>f_t2_next(6), 
      datain=>f_t3_next(6), sdata=>m_o_image0_0(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_5 : cycloneii_lcell_ff port map ( regout=>f_t2_next(5), 
      datain=>f_t3_next(5), sdata=>m_o_image0_0(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_4 : cycloneii_lcell_ff port map ( regout=>f_t2_next(4), 
      datain=>f_t3_next(4), sdata=>m_o_image0_0(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_3 : cycloneii_lcell_ff port map ( regout=>f_t2_next(3), 
      datain=>f_t3_next(3), sdata=>m_o_image0_0(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_2 : cycloneii_lcell_ff port map ( regout=>f_t2_next(2), 
      datain=>f_t3_next(2), sdata=>m_o_image0_0(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_1 : cycloneii_lcell_ff port map ( regout=>f_t2_next(1), 
      datain=>f_t3_next(1), sdata=>m_o_image0_0(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_0 : cycloneii_lcell_ff port map ( regout=>f_t2_next(0), 
      datain=>f_t3_next(0), sdata=>m_o_image0_0(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_7 : cycloneii_lcell_ff port map ( regout=>f_t1_next(7), 
      datain=>f_t2_next(7), sdata=>m_o_image0_1(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_6 : cycloneii_lcell_ff port map ( regout=>f_t1_next(6), 
      datain=>f_t2_next(6), sdata=>m_o_image0_1(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_5 : cycloneii_lcell_ff port map ( regout=>f_t1_next(5), 
      datain=>f_t2_next(5), sdata=>m_o_image0_1(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_4 : cycloneii_lcell_ff port map ( regout=>f_t1_next(4), 
      datain=>f_t2_next(4), sdata=>m_o_image0_1(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_3 : cycloneii_lcell_ff port map ( regout=>f_t1_next(3), 
      datain=>f_t2_next(3), sdata=>m_o_image0_1(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_2 : cycloneii_lcell_ff port map ( regout=>f_t1_next(2), 
      datain=>f_t2_next(2), sdata=>m_o_image0_1(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_1 : cycloneii_lcell_ff port map ( regout=>f_t1_next(1), 
      datain=>f_t2_next(1), sdata=>m_o_image0_1(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_0 : cycloneii_lcell_ff port map ( regout=>f_t1_next(0), 
      datain=>f_t2_next(0), sdata=>m_o_image0_1(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_state_3 : cycloneii_lcell_ff port map ( regout=>f_state(3), datain
      =>f_state(2), clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_state_2 : cycloneii_lcell_ff port map ( regout=>f_state(2), datain
      =>f_state(1), clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_state_1 : cycloneii_lcell_ff port map ( regout=>f_state(1), datain
      =>f_state(0), clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_state_0 : cycloneii_lcell_ff port map ( regout=>nx63959z1, datain=>
      NOT_f_state_3, clk=>i_clock_int, ena=>nx64956z1, sclr=>i_reset_int);
   reg_f_i_row_next_7 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(7), datain=>m_o_row(7), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_6 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(6), datain=>m_o_row(6), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_5 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(5), datain=>m_o_row(5), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_4 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(4), datain=>m_o_row(4), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_3 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(3), datain=>m_o_row(3), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_2 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(2), datain=>m_o_row(2), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_1 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(1), datain=>m_o_row(1), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_row_next_0 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(0), datain=>m_o_row(0), clk=>i_clock_int, ena=>nx35105z1
   );
   reg_f_i_mode_next_1 : cycloneii_lcell_ff port map ( regout=>
      f_i_mode_next(1), datain=>m_o_mode(1), clk=>i_clock_int, ena=>
      nx35105z1);
   reg_f_i_mode_next_0 : cycloneii_lcell_ff port map ( regout=>
      f_i_mode_next(0), datain=>m_o_mode(0), clk=>i_clock_int, ena=>
      nx35105z1);
   reg_f_i2_next_7 : cycloneii_lcell_ff port map ( regout=>f_i2_next(7), 
      datain=>f_t1_next(7), sdata=>m_o_image0_2(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_6 : cycloneii_lcell_ff port map ( regout=>f_i2_next(6), 
      datain=>f_t1_next(6), sdata=>m_o_image0_2(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_5 : cycloneii_lcell_ff port map ( regout=>f_i2_next(5), 
      datain=>f_t1_next(5), sdata=>m_o_image0_2(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_4 : cycloneii_lcell_ff port map ( regout=>f_i2_next(4), 
      datain=>f_t1_next(4), sdata=>m_o_image0_2(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_3 : cycloneii_lcell_ff port map ( regout=>f_i2_next(3), 
      datain=>f_t1_next(3), sdata=>m_o_image0_2(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_2 : cycloneii_lcell_ff port map ( regout=>f_i2_next(2), 
      datain=>f_t1_next(2), sdata=>m_o_image0_2(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_1 : cycloneii_lcell_ff port map ( regout=>f_i2_next(1), 
      datain=>f_t1_next(1), sdata=>m_o_image0_2(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_0 : cycloneii_lcell_ff port map ( regout=>f_i2_next(0), 
      datain=>f_t1_next(0), sdata=>m_o_image0_2(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_7 : cycloneii_lcell_ff port map ( regout=>f_i1_next(7), 
      datain=>f_b1_next(7), sdata=>m_o_image2_0(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_6 : cycloneii_lcell_ff port map ( regout=>f_i1_next(6), 
      datain=>f_b1_next(6), sdata=>m_o_image2_0(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_5 : cycloneii_lcell_ff port map ( regout=>f_i1_next(5), 
      datain=>f_b1_next(5), sdata=>m_o_image2_0(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_4 : cycloneii_lcell_ff port map ( regout=>f_i1_next(4), 
      datain=>f_b1_next(4), sdata=>m_o_image2_0(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_3 : cycloneii_lcell_ff port map ( regout=>f_i1_next(3), 
      datain=>f_b1_next(3), sdata=>m_o_image2_0(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_2 : cycloneii_lcell_ff port map ( regout=>f_i1_next(2), 
      datain=>f_b1_next(2), sdata=>m_o_image2_0(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_1 : cycloneii_lcell_ff port map ( regout=>f_i1_next(1), 
      datain=>f_b1_next(1), sdata=>m_o_image2_0(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_0 : cycloneii_lcell_ff port map ( regout=>f_i1_next(0), 
      datain=>f_b1_next(0), sdata=>m_o_image2_0(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_7 : cycloneii_lcell_ff port map ( regout=>f_b3_next(7), 
      datain=>f_i2_next(7), sdata=>m_o_image1_2(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_6 : cycloneii_lcell_ff port map ( regout=>f_b3_next(6), 
      datain=>f_i2_next(6), sdata=>m_o_image1_2(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_5 : cycloneii_lcell_ff port map ( regout=>f_b3_next(5), 
      datain=>f_i2_next(5), sdata=>m_o_image1_2(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_4 : cycloneii_lcell_ff port map ( regout=>f_b3_next(4), 
      datain=>f_i2_next(4), sdata=>m_o_image1_2(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_3 : cycloneii_lcell_ff port map ( regout=>f_b3_next(3), 
      datain=>f_i2_next(3), sdata=>m_o_image1_2(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_2 : cycloneii_lcell_ff port map ( regout=>f_b3_next(2), 
      datain=>f_i2_next(2), sdata=>m_o_image1_2(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_1 : cycloneii_lcell_ff port map ( regout=>f_b3_next(1), 
      datain=>f_i2_next(1), sdata=>m_o_image1_2(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_0 : cycloneii_lcell_ff port map ( regout=>f_b3_next(0), 
      datain=>f_i2_next(0), sdata=>m_o_image1_2(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_7 : cycloneii_lcell_ff port map ( regout=>f_b2_next(7), 
      datain=>f_b3_next(7), sdata=>m_o_image2_2(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_6 : cycloneii_lcell_ff port map ( regout=>f_b2_next(6), 
      datain=>f_b3_next(6), sdata=>m_o_image2_2(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_5 : cycloneii_lcell_ff port map ( regout=>f_b2_next(5), 
      datain=>f_b3_next(5), sdata=>m_o_image2_2(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_4 : cycloneii_lcell_ff port map ( regout=>f_b2_next(4), 
      datain=>f_b3_next(4), sdata=>m_o_image2_2(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_3 : cycloneii_lcell_ff port map ( regout=>f_b2_next(3), 
      datain=>f_b3_next(3), sdata=>m_o_image2_2(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_2 : cycloneii_lcell_ff port map ( regout=>f_b2_next(2), 
      datain=>f_b3_next(2), sdata=>m_o_image2_2(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_1 : cycloneii_lcell_ff port map ( regout=>f_b2_next(1), 
      datain=>f_b3_next(1), sdata=>m_o_image2_2(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_0 : cycloneii_lcell_ff port map ( regout=>f_b2_next(0), 
      datain=>f_b3_next(0), sdata=>m_o_image2_2(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_7 : cycloneii_lcell_ff port map ( regout=>f_b1_next(7), 
      datain=>f_b2_next(7), sdata=>m_o_image2_1(7), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_6 : cycloneii_lcell_ff port map ( regout=>f_b1_next(6), 
      datain=>f_b2_next(6), sdata=>m_o_image2_1(6), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_5 : cycloneii_lcell_ff port map ( regout=>f_b1_next(5), 
      datain=>f_b2_next(5), sdata=>m_o_image2_1(5), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_4 : cycloneii_lcell_ff port map ( regout=>f_b1_next(4), 
      datain=>f_b2_next(4), sdata=>m_o_image2_1(4), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_3 : cycloneii_lcell_ff port map ( regout=>f_b1_next(3), 
      datain=>f_b2_next(3), sdata=>m_o_image2_1(3), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_2 : cycloneii_lcell_ff port map ( regout=>f_b1_next(2), 
      datain=>f_b2_next(2), sdata=>m_o_image2_1(2), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_1 : cycloneii_lcell_ff port map ( regout=>f_b1_next(1), 
      datain=>f_b2_next(1), sdata=>m_o_image2_1(1), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_0 : cycloneii_lcell_ff port map ( regout=>f_b1_next(0), 
      datain=>f_b2_next(0), sdata=>m_o_image2_1(0), clk=>i_clock_int, ena=>
      nx57127z1, sload=>nx57127z2);
   o_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR866, datain=>o_valid_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR924(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR924(0), datain=>o_mode_dup0(0));
   o_edge_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR867, datain=>o_edge_dup0);
   o_dir_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR923(2), datain=>o_dir_dup0(2));
   o_dir_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR923(1), datain=>o_dir_dup0(1));
   o_dir_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR923(0), datain=>o_dir_dup0(0));
   ix15183z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR821);
   ix37378z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR913(7));
   ix36381z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR913(6));
   ix35384z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR913(5));
   ix34387z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR913(4));
   ix33390z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR913(3));
   ix32393z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR913(2));
   ix31396z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR913(1));
   ix30399z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR913(0));
   ix23314z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(7), datain=>nx23314z1);
   ix22317z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(6), datain=>nx22317z1);
   ix21320z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(5), datain=>nx21320z1);
   ix20323z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(4), datain=>nx20323z1);
   ix19326z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(3), datain=>nx19326z1);
   ix18329z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(2), datain=>nx18329z1);
   ix17332z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(1), datain=>nx17332z1);
   ix16335z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR925(0), datain=>nx16335z1);
   ix4807z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR926(0), datain=>nx4807z1);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR820);
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR819);
   debug_num_8_triBus11_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR922(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_8_triBus11_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR922(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_8_triBus11_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR922(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_8_triBus11_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR922(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_7_triBus10_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR921(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_7_triBus10_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR921(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_7_triBus10_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR921(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_7_triBus10_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR921(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_6_triBus9_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR920(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_6_triBus9_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR920(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_6_triBus9_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR920(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_6_triBus9_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR920(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_5_triBus8_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR919(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_5_triBus8_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR919(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_5_triBus8_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR919(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_5_triBus8_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR919(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_4_triBus7_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR918(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_4_triBus7_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR918(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_4_triBus7_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR918(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_4_triBus7_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR918(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_3_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR917(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_3_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR917(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_3_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR917(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_3_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR917(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_2_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR916(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_2_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR916(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_2_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR916(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_2_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR916(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_1_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR915(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_1_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR915(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_1_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR915(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_1_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR915(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_0_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR914(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_0_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR914(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_0_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR914(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_num_0_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR914(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   debug_led_red_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR927(9), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(8), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(7), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(6), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(5), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(4), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(3), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(2), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(17), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(16), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(15), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(14), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(13), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(12), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(11), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(10), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(1), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR927(0), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR928(5), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR928(4), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR928(3), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR928(2), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR928(1), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR928(0), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(7), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(6), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(5), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(4), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(3), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(2), datain=>
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
       port map ( padio=>debug_column_EXMPLR926(1), datain=>
      debug_column_dup0(1));
   ix20836z52988 : cycloneii_lcell_comb
      generic map (lut_mask => X"4e4e") 
       port map ( combout=>f_i_mode(1), dataa=>nx57127z2, datab=>
      f_i_mode_next(1), datac=>i_reset_int);
   ix64956z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbfb") 
       port map ( combout=>nx64956z1, dataa=>m_o_valid, datab=>nx57127z2, 
      datac=>i_reset_int);
   ix57127z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx57127z2, dataa=>f_state(3), datab=>f_state(2), 
      datac=>f_state(1), datad=>nx63959z1);
   ix35105z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx35105z1, dataa=>m_o_valid, datab=>nx57127z2, 
      datac=>i_reset_int);
   ix57127z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0b0b") 
       port map ( combout=>nx57127z1, dataa=>m_o_valid, datab=>nx57127z2, 
      datac=>i_reset_int);
   ix20836z52987 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx20836z1, dataa=>m_o_valid, datab=>nx57127z2);
   ix20836z52989 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_mode(0), dataa=>m_o_mode(0), datab=>
      f_i_mode_next(0), datac=>nx57127z2);
   ix20836z52997 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(0), dataa=>m_o_row(0), datab=>
      f_i_row_next(0), datac=>nx57127z2);
   ix20836z52996 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(1), dataa=>m_o_row(1), datab=>
      f_i_row_next(1), datac=>nx57127z2);
   ix20836z52995 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(2), dataa=>m_o_row(2), datab=>
      f_i_row_next(2), datac=>nx57127z2);
   ix20836z52994 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(3), dataa=>m_o_row(3), datab=>
      f_i_row_next(3), datac=>nx57127z2);
   ix20836z52993 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(4), dataa=>m_o_row(4), datab=>
      f_i_row_next(4), datac=>nx57127z2);
   ix20836z52992 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(5), dataa=>m_o_row(5), datab=>
      f_i_row_next(5), datac=>nx57127z2);
   ix20836z52991 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(6), dataa=>m_o_row(6), datab=>
      f_i_row_next(6), datac=>nx57127z2);
   ix20836z52990 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(7), dataa=>m_o_row(7), datab=>
      f_i_row_next(7), datac=>nx57127z2);
   ix20836z52986 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(0), dataa=>f_i2_next(0), datab=>nx57127z2, 
      datac=>m_o_image1_2(0));
   ix20836z52985 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(1), dataa=>f_i2_next(1), datab=>nx57127z2, 
      datac=>m_o_image1_2(1));
   ix20836z52984 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(2), dataa=>f_i2_next(2), datab=>nx57127z2, 
      datac=>m_o_image1_2(2));
   ix20836z52983 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(3), dataa=>f_i2_next(3), datab=>nx57127z2, 
      datac=>m_o_image1_2(3));
   ix20836z52982 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(4), dataa=>f_i2_next(4), datab=>nx57127z2, 
      datac=>m_o_image1_2(4));
   ix20836z52981 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(5), dataa=>f_i2_next(5), datab=>nx57127z2, 
      datac=>m_o_image1_2(5));
   ix20836z52980 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(6), dataa=>f_i2_next(6), datab=>nx57127z2, 
      datac=>m_o_image1_2(6));
   ix20836z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(7), dataa=>f_i2_next(7), datab=>nx57127z2, 
      datac=>m_o_image1_2(7));
   ix20836z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(0), dataa=>f_i1_next(0), datab=>nx57127z2, 
      datac=>m_o_image1_0(0));
   ix20836z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(1), dataa=>f_i1_next(1), datab=>nx57127z2, 
      datac=>m_o_image1_0(1));
   ix20836z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(2), dataa=>f_i1_next(2), datab=>nx57127z2, 
      datac=>m_o_image1_0(2));
   ix20836z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(3), dataa=>f_i1_next(3), datab=>nx57127z2, 
      datac=>m_o_image1_0(3));
   ix20836z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(4), dataa=>f_i1_next(4), datab=>nx57127z2, 
      datac=>m_o_image1_0(4));
   ix20836z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(5), dataa=>f_i1_next(5), datab=>nx57127z2, 
      datac=>m_o_image1_0(5));
   ix20836z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(6), dataa=>f_i1_next(6), datab=>nx57127z2, 
      datac=>m_o_image1_0(6));
   ix20836z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(7), dataa=>f_i1_next(7), datab=>nx57127z2, 
      datac=>m_o_image1_0(7));
   ix20836z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(0), dataa=>f_b3_next(0), datab=>nx57127z2, 
      datac=>m_o_image2_2(0));
   ix20836z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(1), dataa=>f_b3_next(1), datab=>nx57127z2, 
      datac=>m_o_image2_2(1));
   ix20836z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(2), dataa=>f_b3_next(2), datab=>nx57127z2, 
      datac=>m_o_image2_2(2));
   ix20836z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(3), dataa=>f_b3_next(3), datab=>nx57127z2, 
      datac=>m_o_image2_2(3));
   ix20836z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(4), dataa=>f_b3_next(4), datab=>nx57127z2, 
      datac=>m_o_image2_2(4));
   ix20836z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(5), dataa=>f_b3_next(5), datab=>nx57127z2, 
      datac=>m_o_image2_2(5));
   ix20836z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(6), dataa=>f_b3_next(6), datab=>nx57127z2, 
      datac=>m_o_image2_2(6));
   ix20836z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(7), dataa=>f_b3_next(7), datab=>nx57127z2, 
      datac=>m_o_image2_2(7));
   ix20836z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(0), dataa=>f_b2_next(0), datab=>nx57127z2, 
      datac=>m_o_image2_1(0));
   ix20836z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(1), dataa=>f_b2_next(1), datab=>nx57127z2, 
      datac=>m_o_image2_1(1));
   ix20836z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(2), dataa=>f_b2_next(2), datab=>nx57127z2, 
      datac=>m_o_image2_1(2));
   ix20836z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(3), dataa=>f_b2_next(3), datab=>nx57127z2, 
      datac=>m_o_image2_1(3));
   ix20836z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(4), dataa=>f_b2_next(4), datab=>nx57127z2, 
      datac=>m_o_image2_1(4));
   ix20836z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(5), dataa=>f_b2_next(5), datab=>nx57127z2, 
      datac=>m_o_image2_1(5));
   ix20836z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(6), dataa=>f_b2_next(6), datab=>nx57127z2, 
      datac=>m_o_image2_1(6));
   ix20836z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(7), dataa=>f_b2_next(7), datab=>nx57127z2, 
      datac=>m_o_image2_1(7));
   ix20836z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(0), dataa=>f_b1_next(0), datab=>nx57127z2, 
      datac=>m_o_image2_0(0));
   ix20836z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(1), dataa=>f_b1_next(1), datab=>nx57127z2, 
      datac=>m_o_image2_0(1));
   ix20836z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(2), dataa=>f_b1_next(2), datab=>nx57127z2, 
      datac=>m_o_image2_0(2));
   ix20836z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(3), dataa=>f_b1_next(3), datab=>nx57127z2, 
      datac=>m_o_image2_0(3));
   ix20836z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(4), dataa=>f_b1_next(4), datab=>nx57127z2, 
      datac=>m_o_image2_0(4));
   ix20836z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(5), dataa=>f_b1_next(5), datab=>nx57127z2, 
      datac=>m_o_image2_0(5));
   ix20836z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(6), dataa=>f_b1_next(6), datab=>nx57127z2, 
      datac=>m_o_image2_0(6));
   ix20836z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(7), dataa=>f_b1_next(7), datab=>nx57127z2, 
      datac=>m_o_image2_0(7));
   ix20836z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(0), dataa=>f_t3_next(0), datab=>nx57127z2, 
      datac=>m_o_image0_0(0));
   ix20836z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(1), dataa=>f_t3_next(1), datab=>nx57127z2, 
      datac=>m_o_image0_0(1));
   ix20836z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(2), dataa=>f_t3_next(2), datab=>nx57127z2, 
      datac=>m_o_image0_0(2));
   ix20836z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(3), dataa=>f_t3_next(3), datab=>nx57127z2, 
      datac=>m_o_image0_0(3));
   ix20836z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(4), dataa=>f_t3_next(4), datab=>nx57127z2, 
      datac=>m_o_image0_0(4));
   ix20836z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(5), dataa=>f_t3_next(5), datab=>nx57127z2, 
      datac=>m_o_image0_0(5));
   ix20836z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(6), dataa=>f_t3_next(6), datab=>nx57127z2, 
      datac=>m_o_image0_0(6));
   ix20836z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(7), dataa=>f_t3_next(7), datab=>nx57127z2, 
      datac=>m_o_image0_0(7));
   ix20836z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(0), dataa=>f_t2_next(0), datab=>nx57127z2, 
      datac=>m_o_image0_1(0));
   ix20836z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(1), dataa=>f_t2_next(1), datab=>nx57127z2, 
      datac=>m_o_image0_1(1));
   ix20836z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(2), dataa=>f_t2_next(2), datab=>nx57127z2, 
      datac=>m_o_image0_1(2));
   ix20836z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(3), dataa=>f_t2_next(3), datab=>nx57127z2, 
      datac=>m_o_image0_1(3));
   ix20836z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(4), dataa=>f_t2_next(4), datab=>nx57127z2, 
      datac=>m_o_image0_1(4));
   ix20836z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(5), dataa=>f_t2_next(5), datab=>nx57127z2, 
      datac=>m_o_image0_1(5));
   ix20836z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(6), dataa=>f_t2_next(6), datab=>nx57127z2, 
      datac=>m_o_image0_1(6));
   ix20836z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(7), dataa=>f_t2_next(7), datab=>nx57127z2, 
      datac=>m_o_image0_1(7));
   ix20836z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(0), dataa=>f_t1_next(0), datab=>nx57127z2, 
      datac=>m_o_image0_2(0));
   ix20836z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(1), dataa=>f_t1_next(1), datab=>nx57127z2, 
      datac=>m_o_image0_2(1));
   ix20836z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(2), dataa=>f_t1_next(2), datab=>nx57127z2, 
      datac=>m_o_image0_2(2));
   ix20836z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(3), dataa=>f_t1_next(3), datab=>nx57127z2, 
      datac=>m_o_image0_2(3));
   ix20836z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(4), dataa=>f_t1_next(4), datab=>nx57127z2, 
      datac=>m_o_image0_2(4));
   ix20836z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(5), dataa=>f_t1_next(5), datab=>nx57127z2, 
      datac=>m_o_image0_2(5));
   ix20836z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(6), dataa=>f_t1_next(6), datab=>nx57127z2, 
      datac=>m_o_image0_2(6));
   ix20836z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(7), dataa=>f_t1_next(7), datab=>nx57127z2, 
      datac=>m_o_image0_2(7));
   ix47893z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"feee") 
       port map ( combout=>o_mode_dup0(0), dataa=>m_o_mode(0), datab=>
      i_reset_int, datac=>p5m_0_dup_86, datad=>p5m_1_dup_82);
end main ;

