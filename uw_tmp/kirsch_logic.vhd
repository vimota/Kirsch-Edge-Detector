
-- 
-- Definition of  kirsch
-- 
--      Sat Jul 19 23:39:11 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
      p_not_rtlc0n196_repl : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx58250z1, q_7_EXMPLR339, nx57253z1, q_6_EXMPLR340, nx56256z1, 
      q_5_EXMPLR341, nx55259z1, q_4_EXMPLR342, nx54262z1, q_3_EXMPLR343, 
      nx53265z1, q_2_EXMPLR344, nx52268z1, q_1_EXMPLR345, nx51271z1, 
      q_0_EXMPLR346, nx58250z10, nx58250z9, nx58250z8, nx58250z7, nx58250z6, 
      nx58250z5, nx58250z4, nx58250z3, nx58250z2, GND_EXMPLR347, nx58250z11, 
      nx58250z12: std_logic ;

begin
   q(7) <= q_7_EXMPLR339 ;
   q(6) <= q_6_EXMPLR340 ;
   q(5) <= q_5_EXMPLR341 ;
   q(4) <= q_4_EXMPLR342 ;
   q(3) <= q_3_EXMPLR343 ;
   q(2) <= q_2_EXMPLR344 ;
   q(1) <= q_1_EXMPLR345 ;
   q(0) <= q_0_EXMPLR346 ;
   GND_EXMPLR347 <= '0';
   nx58250z2 <= '0';
   nx58250z11 <= '1';
   nx58250z12 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>q_7_EXMPLR339, datain=>
      nx58250z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>q_6_EXMPLR340, datain=>
      nx57253z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>q_5_EXMPLR341, datain=>
      nx56256z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>q_4_EXMPLR342, datain=>
      nx55259z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>q_3_EXMPLR343, datain=>
      nx54262z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>q_2_EXMPLR344, datain=>
      nx53265z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>q_1_EXMPLR345, datain=>
      nx52268z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>q_0_EXMPLR346, datain=>
      nx51271z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   ix58250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx58250z1, datad=>q_7_EXMPLR339, dataf=>nx58250z2, 
      cin=>nx58250z3);
   ix58250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx57253z1, cout=>nx58250z3, dataa=>nx58250z2, 
      datad=>q_6_EXMPLR340, cin=>nx58250z4);
   ix58250z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z2, 
      datad=>q_5_EXMPLR341, cin=>nx58250z5);
   ix58250z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx55259z1, cout=>nx58250z5, dataa=>nx58250z2, 
      datad=>q_4_EXMPLR342, cin=>nx58250z6);
   ix58250z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx54262z1, cout=>nx58250z6, dataa=>nx58250z2, 
      datad=>q_3_EXMPLR343, cin=>nx58250z7);
   ix58250z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx53265z1, cout=>nx58250z7, dataa=>nx58250z2, 
      datad=>q_2_EXMPLR344, cin=>nx58250z8);
   ix58250z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx52268z1, cout=>nx58250z8, dataa=>nx58250z2, 
      datad=>q_1_EXMPLR345, cin=>nx58250z9);
   ix58250z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx58250z10, datad=>nx58250z11, dataf=>nx58250z12, 
      cin=>GND_EXMPLR347);
   ix58250z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx51271z1, cout=>nx58250z9, datad=>q_0_EXMPLR346, 
      dataf=>nx58250z2, cin=>nx58250z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
      p_rtlcs0_repl : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal GND_EXMPLR349, nx1041z1, nx58250z4, nx58250z6, nx58250z8, 
      nx58250z10, nx58250z12, nx58250z14, nx58250z16, nx58250z1, nx57253z1, 
      nx56256z1, nx55259z1, nx54262z1, nx53265z1, nx52268z1, nx51271z1, 
      nx58250z17, nx58250z15, nx58250z13, nx58250z11, nx58250z9, nx58250z7, 
      nx58250z5, nx58250z3, nx58250z2, nx58250z18, nx58250z19: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z4 ;
   q(5) <= nx58250z6 ;
   q(4) <= nx58250z8 ;
   q(3) <= nx58250z10 ;
   q(2) <= nx58250z12 ;
   q(1) <= nx58250z14 ;
   q(0) <= nx58250z16 ;
   GND_EXMPLR349 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>p_rtlcs0_repl);
   ix58250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx57253z1, cout=>nx58250z3, dataa=>nx58250z2, 
      datad=>nx58250z4, cin=>nx58250z5);
   ix58250z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx56256z1, cout=>nx58250z5, dataa=>nx58250z2, 
      datad=>nx58250z6, cin=>nx58250z7);
   ix58250z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx55259z1, cout=>nx58250z7, dataa=>nx58250z2, 
      datad=>nx58250z8, cin=>nx58250z9);
   ix58250z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx54262z1, cout=>nx58250z9, dataa=>nx58250z2, 
      datad=>nx58250z10, cin=>nx58250z11);
   ix58250z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx53265z1, cout=>nx58250z11, dataa=>nx58250z2, 
      datad=>nx58250z12, cin=>nx58250z13);
   ix58250z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx52268z1, cout=>nx58250z13, dataa=>nx58250z2, 
      datad=>nx58250z14, cin=>nx58250z15);
   ix58250z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx58250z17, datad=>nx58250z18, dataf=>nx58250z19, 
      cin=>GND_EXMPLR349);
   ix58250z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx51271z1, cout=>nx58250z15, datad=>nx58250z16, 
      dataf=>nx58250z2, cin=>nx58250z17);
   ix58250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx58250z1, datad=>nx1041z1, dataf=>nx58250z2, cin
      =>nx58250z3);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal ena1_EXMPLR377: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR377, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR377 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal ena1_EXMPLR407: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR407, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR407 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal ena1_EXMPLR437: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR437, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR437 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity memory_notri is 
   port (
      p_o_image0_9_7 : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_image0_9_1 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image0_9_2 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image0_9_3 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image0_9_4 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image0_9_5 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image0_9_6 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image0_8_7 : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_image0_8_1 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image0_8_2 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image0_8_3 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image0_8_4 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image0_8_5 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image0_8_6 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image0_7 : OUT std_logic_vector (2 DOWNTO 1) ;
      p_o_image0_1 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image0_2 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image0_3 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image0_4 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image0_5 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image0_6 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image1_9_7 : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_image1_9_1 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image1_9_2 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image1_9_3 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image1_9_4 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image1_9_5 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image1_9_6 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image1_8_7 : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_image1_8_1 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image1_8_2 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image1_8_3 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image1_8_4 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image1_8_5 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image1_8_6 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image1_7 : OUT std_logic_vector (2 DOWNTO 1) ;
      p_o_image1_1 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image1_2 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image1_3 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image1_4 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image1_5 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image1_6 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image2_9_7 : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_image2_9_1 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image2_9_2 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image2_9_3 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image2_9_4 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image2_9_5 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image2_9_6 : OUT std_logic_vector (0 DOWNTO 0) ;
      p_o_image2_8_7 : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_image2_8_1 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image2_8_2 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image2_8_3 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image2_8_4 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image2_8_5 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image2_8_6 : OUT std_logic_vector (1 DOWNTO 1) ;
      p_o_image2_7 : OUT std_logic_vector (2 DOWNTO 1) ;
      p_o_image2_1 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image2_2 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image2_3 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image2_4 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image2_5 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_o_image2_6 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_i_valid_rtlc_32_or_1 : IN std_logic_vector (2 DOWNTO 2) ;
      p_i_clock : IN std_logic ;
      p_o_column : OUT std_logic_vector (7 DOWNTO 0)) ;
end memory_notri ;

architecture main_unfold_1492 of memory_notri is 
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
         p_not_rtlc0n196_repl : IN std_logic) ;
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
         p_rtlcs0_repl : IN std_logic) ;
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
   signal p_o_image1_0_0_EXMPLR465, p_o_image1_0_1_EXMPLR466, 
      p_o_image1_0_2_EXMPLR467, p_o_image1_0_3_EXMPLR468, 
      p_o_image1_0_4_EXMPLR469, p_o_image1_0_5_EXMPLR470, 
      p_o_image1_0_6_EXMPLR471, p_o_image1_0_7_EXMPLR472, 
      p_o_image1_1_0_EXMPLR473, p_o_image1_1_1_EXMPLR474, 
      p_o_image1_1_2_EXMPLR475, p_o_image1_1_3_EXMPLR476, 
      p_o_image1_1_4_EXMPLR477, p_o_image1_1_5_EXMPLR478, 
      p_o_image1_1_6_EXMPLR479, p_o_image1_1_7_EXMPLR480, 
      p_o_image1_2_0_EXMPLR481: std_logic ;
   
   signal p_o_image1: std_logic_vector (2 DOWNTO 2) ;
   
   signal p_o_image1_2_2_EXMPLR483, p_o_image1_2_3_EXMPLR484, 
      p_o_image1_2_4_EXMPLR485, p_o_image1_2_5_EXMPLR486, 
      p_o_image1_2_6_EXMPLR487, p_o_image1_2_7_EXMPLR488, 
      p_o_image2_0_0_EXMPLR489, p_o_image2_0_1_EXMPLR490, 
      p_o_image2_0_2_EXMPLR491, p_o_image2_0_3_EXMPLR492, 
      p_o_image2_0_4_EXMPLR493, p_o_image2_0_5_EXMPLR494, 
      p_o_image2_0_6_EXMPLR495, p_o_image2_0_7_EXMPLR496, 
      p_o_image2_1_0_EXMPLR497, p_o_image2_1_1_EXMPLR498, 
      p_o_image2_1_2_EXMPLR499, p_o_image2_1_3_EXMPLR500, 
      p_o_image2_1_4_EXMPLR501, p_o_image2_1_5_EXMPLR502, 
      p_o_image2_1_6_EXMPLR503, p_o_image2_1_7_EXMPLR504, 
      p_o_image2_2_0_EXMPLR505, p_o_image2_2_1_EXMPLR506, 
      p_o_image2_2_2_EXMPLR507, p_o_image2_2_3_EXMPLR508, 
      p_o_image2_2_4_EXMPLR509, p_o_image2_2_5_EXMPLR510, 
      p_o_image2_2_6_EXMPLR511, p_o_image2_2_7_EXMPLR512, first_bubble, 
      p_o_row_7_EXMPLR522, p_o_row_6_EXMPLR523, p_o_row_5_EXMPLR524, 
      p_o_row_4_EXMPLR525, p_o_row_3_EXMPLR526, p_o_row_2_EXMPLR527, 
      p_o_row_1_EXMPLR528: std_logic ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_q_2_0, mem_q_2_1, mem_q_2_2, mem_q_2_3, mem_q_2_4, mem_q_2_5, 
      mem_q_2_6, mem_q_2_7: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_q_1_0, mem_q_1_1, mem_q_1_2, mem_q_1_3, mem_q_1_4, mem_q_1_5, 
      mem_q_1_6, mem_q_1_7, mem_q_0_0, mem_q_0_1, mem_q_0_2, mem_q_0_3, 
      mem_q_0_4, mem_q_0_5, mem_q_0_6, mem_q_0_7: std_logic ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal p_o_column_0_EXMPLR531, p_o_column_1_EXMPLR532, 
      p_o_column_2_EXMPLR533, p_o_column_3_EXMPLR534, p_o_column_4_EXMPLR535, 
      p_o_column_5_EXMPLR536, p_o_column_6_EXMPLR537, p_o_column_7_EXMPLR538, 
      nx15763z1, nx16760z1, nx17757z1, mem_wrn_current_0n4ss1_0, nx50245z1: 
   std_logic ;
   
   signal buffer2_1n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx5021z2, nx40106z3, nx40106z2, nx45024z1, nx40106z1, nx62359z1, 
      nx61362z1, nx60365z1, nx59368z1, nx58371z1, nx57374z1, nx56377z1, 
      nx55380z1, nx63578z1, nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, 
      nx4024z1, nx5021z1, nx5021z3, nx43683z1, first_bubble_repl, 
      not_rtlc0n196_repl, nx45024z2: std_logic ;
   
   signal DANGLING : std_logic_vector (43 downto 0 );

begin
   p_o_image1_9_7(1) <= p_o_image1_0_0_EXMPLR465 ;
   p_o_image1_9_1(0) <= p_o_image1_0_1_EXMPLR466 ;
   p_o_image1_9_2(0) <= p_o_image1_0_2_EXMPLR467 ;
   p_o_image1_9_3(0) <= p_o_image1_0_3_EXMPLR468 ;
   p_o_image1_9_4(0) <= p_o_image1_0_4_EXMPLR469 ;
   p_o_image1_9_5(0) <= p_o_image1_0_5_EXMPLR470 ;
   p_o_image1_9_6(0) <= p_o_image1_0_6_EXMPLR471 ;
   p_o_image1_9_7(0) <= p_o_image1_0_7_EXMPLR472 ;
   p_o_image1_8_7(1) <= p_o_image1_1_0_EXMPLR473 ;
   p_o_image1_8_1(1) <= p_o_image1_1_1_EXMPLR474 ;
   p_o_image1_8_2(1) <= p_o_image1_1_2_EXMPLR475 ;
   p_o_image1_8_3(1) <= p_o_image1_1_3_EXMPLR476 ;
   p_o_image1_8_4(1) <= p_o_image1_1_4_EXMPLR477 ;
   p_o_image1_8_5(1) <= p_o_image1_1_5_EXMPLR478 ;
   p_o_image1_8_6(1) <= p_o_image1_1_6_EXMPLR479 ;
   p_o_image1_8_7(0) <= p_o_image1_1_7_EXMPLR480 ;
   p_o_image1_7(2) <= p_o_image1_2_0_EXMPLR481 ;
   p_o_image1_1(2) <= p_o_image1(2) ;
   p_o_image1_2(2) <= p_o_image1_2_2_EXMPLR483 ;
   p_o_image1_3(2) <= p_o_image1_2_3_EXMPLR484 ;
   p_o_image1_4(2) <= p_o_image1_2_4_EXMPLR485 ;
   p_o_image1_5(2) <= p_o_image1_2_5_EXMPLR486 ;
   p_o_image1_6(2) <= p_o_image1_2_6_EXMPLR487 ;
   p_o_image1_7(1) <= p_o_image1_2_7_EXMPLR488 ;
   p_o_image2_9_7(1) <= p_o_image2_0_0_EXMPLR489 ;
   p_o_image2_9_1(0) <= p_o_image2_0_1_EXMPLR490 ;
   p_o_image2_9_2(0) <= p_o_image2_0_2_EXMPLR491 ;
   p_o_image2_9_3(0) <= p_o_image2_0_3_EXMPLR492 ;
   p_o_image2_9_4(0) <= p_o_image2_0_4_EXMPLR493 ;
   p_o_image2_9_5(0) <= p_o_image2_0_5_EXMPLR494 ;
   p_o_image2_9_6(0) <= p_o_image2_0_6_EXMPLR495 ;
   p_o_image2_9_7(0) <= p_o_image2_0_7_EXMPLR496 ;
   p_o_image2_8_7(1) <= p_o_image2_1_0_EXMPLR497 ;
   p_o_image2_8_1(1) <= p_o_image2_1_1_EXMPLR498 ;
   p_o_image2_8_2(1) <= p_o_image2_1_2_EXMPLR499 ;
   p_o_image2_8_3(1) <= p_o_image2_1_3_EXMPLR500 ;
   p_o_image2_8_4(1) <= p_o_image2_1_4_EXMPLR501 ;
   p_o_image2_8_5(1) <= p_o_image2_1_5_EXMPLR502 ;
   p_o_image2_8_6(1) <= p_o_image2_1_6_EXMPLR503 ;
   p_o_image2_8_7(0) <= p_o_image2_1_7_EXMPLR504 ;
   p_o_image2_7(2) <= p_o_image2_2_0_EXMPLR505 ;
   p_o_image2_1(2) <= p_o_image2_2_1_EXMPLR506 ;
   p_o_image2_2(2) <= p_o_image2_2_2_EXMPLR507 ;
   p_o_image2_3(2) <= p_o_image2_2_3_EXMPLR508 ;
   p_o_image2_4(2) <= p_o_image2_2_4_EXMPLR509 ;
   p_o_image2_5(2) <= p_o_image2_2_5_EXMPLR510 ;
   p_o_image2_6(2) <= p_o_image2_2_6_EXMPLR511 ;
   p_o_image2_7(1) <= p_o_image2_2_7_EXMPLR512 ;
   p_o_row(7) <= p_o_row_7_EXMPLR522 ;
   p_o_row(6) <= p_o_row_6_EXMPLR523 ;
   p_o_row(5) <= p_o_row_5_EXMPLR524 ;
   p_o_row(4) <= p_o_row_4_EXMPLR525 ;
   p_o_row(3) <= p_o_row_3_EXMPLR526 ;
   p_o_row(2) <= p_o_row_2_EXMPLR527 ;
   p_o_row(1) <= p_o_row_1_EXMPLR528 ;
   p_o_column(0) <= p_o_column_0_EXMPLR531 ;
   p_o_column(1) <= p_o_column_1_EXMPLR532 ;
   p_o_column(2) <= p_o_column_2_EXMPLR533 ;
   p_o_column(3) <= p_o_column_3_EXMPLR534 ;
   p_o_column(4) <= p_o_column_4_EXMPLR535 ;
   p_o_column(5) <= p_o_column_5_EXMPLR536 ;
   p_o_column(6) <= p_o_column_6_EXMPLR537 ;
   p_o_column(7) <= p_o_column_7_EXMPLR538 ;
   modgen_counter_o_row : modgen_counter_8_0 port map ( clock=>p_i_clock, 
      q(7)=>p_o_row_7_EXMPLR522, q(6)=>p_o_row_6_EXMPLR523, q(5)=>
      p_o_row_5_EXMPLR524, q(4)=>p_o_row_4_EXMPLR525, q(3)=>
      p_o_row_3_EXMPLR526, q(2)=>p_o_row_2_EXMPLR527, q(1)=>
      p_o_row_1_EXMPLR528, q(0)=>p_o_row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>DANGLING(12), updn=>DANGLING
      (13), cnt_en=>DANGLING(14), p_not_rtlc0n196_repl=>not_rtlc0n196_repl);
   modgen_counter_o_column : modgen_counter_8_1 port map ( clock=>p_i_clock, 
      q(7)=>p_o_column_7_EXMPLR538, q(6)=>p_o_column_6_EXMPLR537, q(5)=>
      p_o_column_5_EXMPLR536, q(4)=>p_o_column_4_EXMPLR535, q(3)=>
      p_o_column_3_EXMPLR534, q(2)=>p_o_column_2_EXMPLR533, q(1)=>
      p_o_column_1_EXMPLR532, q(0)=>p_o_column_0_EXMPLR531, clk_en=>
      nx45024z1, aclear=>DANGLING(15), sload=>DANGLING(16), data(7)=>
      DANGLING(17), data(6)=>DANGLING(18), data(5)=>DANGLING(19), data(4)=>
      DANGLING(20), data(3)=>DANGLING(21), data(2)=>DANGLING(22), data(1)=>
      DANGLING(23), data(0)=>DANGLING(24), aset=>DANGLING(25), sclear=>
      DANGLING(26), updn=>DANGLING(27), cnt_en=>DANGLING(28), p_rtlcs0_repl
      =>nx45024z2);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_0_7, 
      rd_data1(6)=>mem_q_0_6, rd_data1(5)=>mem_q_0_5, rd_data1(4)=>mem_q_0_4, 
      rd_data1(3)=>mem_q_0_3, rd_data1(2)=>mem_q_0_2, rd_data1(1)=>mem_q_0_1, 
      rd_data1(0)=>mem_q_0_0, addr1(7)=>p_o_column_7_EXMPLR538, addr1(6)=>
      p_o_column_6_EXMPLR537, addr1(5)=>p_o_column_5_EXMPLR536, addr1(4)=>
      p_o_column_4_EXMPLR535, addr1(3)=>p_o_column_3_EXMPLR534, addr1(2)=>
      p_o_column_2_EXMPLR533, addr1(1)=>p_o_column_1_EXMPLR532, addr1(0)=>
      p_o_column_0_EXMPLR531, wr_clk1=>p_i_clock, rd_clk1=>DANGLING(29), 
      wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(30), ena1=>DANGLING(31), rst1=>
      DANGLING(32), regce1=>DANGLING(33));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_1_7, 
      rd_data1(6)=>mem_q_1_6, rd_data1(5)=>mem_q_1_5, rd_data1(4)=>mem_q_1_4, 
      rd_data1(3)=>mem_q_1_3, rd_data1(2)=>mem_q_1_2, rd_data1(1)=>mem_q_1_1, 
      rd_data1(0)=>mem_q_1_0, addr1(7)=>p_o_column_7_EXMPLR538, addr1(6)=>
      p_o_column_6_EXMPLR537, addr1(5)=>p_o_column_5_EXMPLR536, addr1(4)=>
      p_o_column_4_EXMPLR535, addr1(3)=>p_o_column_3_EXMPLR534, addr1(2)=>
      p_o_column_2_EXMPLR533, addr1(1)=>p_o_column_1_EXMPLR532, addr1(0)=>
      p_o_column_0_EXMPLR531, wr_clk1=>p_i_clock, rd_clk1=>DANGLING(34), 
      wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(35), ena1=>DANGLING(36), rst1=>
      DANGLING(37), regce1=>DANGLING(38));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_2_7, 
      rd_data1(6)=>mem_q_2_6, rd_data1(5)=>mem_q_2_5, rd_data1(4)=>mem_q_2_4, 
      rd_data1(3)=>mem_q_2_3, rd_data1(2)=>mem_q_2_2, rd_data1(1)=>mem_q_2_1, 
      rd_data1(0)=>mem_q_2_0, addr1(7)=>p_o_column_7_EXMPLR538, addr1(6)=>
      p_o_column_6_EXMPLR537, addr1(5)=>p_o_column_5_EXMPLR536, addr1(4)=>
      p_o_column_4_EXMPLR535, addr1(3)=>p_o_column_3_EXMPLR534, addr1(2)=>
      p_o_column_2_EXMPLR533, addr1(1)=>p_o_column_1_EXMPLR532, addr1(0)=>
      p_o_column_0_EXMPLR531, wr_clk1=>p_i_clock, rd_clk1=>DANGLING(39), 
      wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(40), ena1=>DANGLING(41), rst1=>
      DANGLING(42), regce1=>DANGLING(43));
   reg_mem_wrn_current_2 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current(1), clk=>p_i_clock, ena=>
      nx40106z1);
   reg_mem_wrn_current_1 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>p_i_clock, ena=>
      nx40106z1);
   reg_mem_wrn_current_0 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current_0n4ss1_0, clk=>p_i_clock, 
      ena=>nx40106z1);
   reg_mem_wrn_2 : stratixii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>nx17757z1, clk=>p_i_clock);
   reg_mem_wrn_1 : stratixii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>nx16760z1, clk=>p_i_clock);
   reg_mem_wrn_0 : stratixii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>nx15763z1, clk=>p_i_clock);
   reg_mem_data_7 : stratixii_lcell_ff port map ( regout=>mem_data(7), 
      datain=>p_i_pixel(7), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_6 : stratixii_lcell_ff port map ( regout=>mem_data(6), 
      datain=>p_i_pixel(6), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_5 : stratixii_lcell_ff port map ( regout=>mem_data(5), 
      datain=>p_i_pixel(5), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_4 : stratixii_lcell_ff port map ( regout=>mem_data(4), 
      datain=>p_i_pixel(4), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_3 : stratixii_lcell_ff port map ( regout=>mem_data(3), 
      datain=>p_i_pixel(3), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_2 : stratixii_lcell_ff port map ( regout=>mem_data(2), 
      datain=>p_i_pixel(2), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_1 : stratixii_lcell_ff port map ( regout=>mem_data(1), 
      datain=>p_i_pixel(1), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_mem_data_0 : stratixii_lcell_ff port map ( regout=>mem_data(0), 
      datain=>p_i_pixel(0), clk=>p_i_clock, ena=>p_i_valid_rtlc_32_or_1(2));
   reg_first_bubble_repl : stratixii_lcell_ff port map ( regout=>
      first_bubble_repl, datain=>p_i_valid_rtlc_32_or_1(2), clk=>p_i_clock);
   reg_first_bubble : stratixii_lcell_ff port map ( regout=>first_bubble, 
      datain=>p_i_valid_rtlc_32_or_1(2), clk=>p_i_clock);
   reg_buffer2_2_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_7_EXMPLR512, datain=>mem_q_2_7, adatasdata=>mem_data(7), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_6_EXMPLR511, datain=>mem_q_2_6, adatasdata=>mem_data(6), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_5_EXMPLR510, datain=>mem_q_2_5, adatasdata=>mem_data(5), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_4_EXMPLR509, datain=>mem_q_2_4, adatasdata=>mem_data(4), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_3_EXMPLR508, datain=>mem_q_2_3, adatasdata=>mem_data(3), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_2_EXMPLR507, datain=>mem_q_2_2, adatasdata=>mem_data(2), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_1_EXMPLR506, datain=>mem_q_2_1, adatasdata=>mem_data(1), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_2_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_0_EXMPLR505, datain=>mem_q_2_0, adatasdata=>mem_data(0), 
      clk=>p_i_clock, ena=>first_bubble_repl, sload=>nx50245z1);
   reg_buffer2_1_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_7_EXMPLR504, datain=>nx62359z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_6_EXMPLR503, datain=>nx61362z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_5_EXMPLR502, datain=>nx60365z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_4_EXMPLR501, datain=>nx59368z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_3_EXMPLR500, datain=>nx58371z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_2_EXMPLR499, datain=>nx57374z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_1_EXMPLR498, datain=>nx56377z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_0_EXMPLR497, datain=>nx55380z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_7_EXMPLR496, datain=>nx63578z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_6_EXMPLR495, datain=>nx64575z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_5_EXMPLR494, datain=>nx36z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_4_EXMPLR493, datain=>nx1033z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_3_EXMPLR492, datain=>nx2030z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_2_EXMPLR491, datain=>nx3027z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_1_EXMPLR490, datain=>nx4024z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_0_EXMPLR489, datain=>nx5021z1, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer1_2_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_7_EXMPLR488, datain=>p_o_image2_2_7_EXMPLR512, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_2_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_6_EXMPLR487, datain=>p_o_image2_2_6_EXMPLR511, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_2_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_5_EXMPLR486, datain=>p_o_image2_2_5_EXMPLR510, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_2_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_4_EXMPLR485, datain=>p_o_image2_2_4_EXMPLR509, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_2_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_3_EXMPLR484, datain=>p_o_image2_2_3_EXMPLR508, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_2_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_2_EXMPLR483, datain=>p_o_image2_2_2_EXMPLR507, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_2_1 : stratixii_lcell_ff port map ( regout=>p_o_image1(2), 
      datain=>p_o_image2_2_1_EXMPLR506, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer1_2_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_0_EXMPLR481, datain=>p_o_image2_2_0_EXMPLR505, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_7_EXMPLR480, datain=>p_o_image2_1_7_EXMPLR504, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_6_EXMPLR479, datain=>p_o_image2_1_6_EXMPLR503, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_5_EXMPLR478, datain=>p_o_image2_1_5_EXMPLR502, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_4_EXMPLR477, datain=>p_o_image2_1_4_EXMPLR501, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_3_EXMPLR476, datain=>p_o_image2_1_3_EXMPLR500, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_2_EXMPLR475, datain=>p_o_image2_1_2_EXMPLR499, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_1_EXMPLR474, datain=>p_o_image2_1_1_EXMPLR498, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_1_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_0_EXMPLR473, datain=>p_o_image2_1_0_EXMPLR497, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_7_EXMPLR472, datain=>p_o_image2_0_7_EXMPLR496, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_6_EXMPLR471, datain=>p_o_image2_0_6_EXMPLR495, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_5_EXMPLR470, datain=>p_o_image2_0_5_EXMPLR494, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_4_EXMPLR469, datain=>p_o_image2_0_4_EXMPLR493, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_3_EXMPLR468, datain=>p_o_image2_0_3_EXMPLR492, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_2_EXMPLR467, datain=>p_o_image2_0_2_EXMPLR491, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_1_EXMPLR466, datain=>p_o_image2_0_1_EXMPLR490, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer1_0_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_0_EXMPLR465, datain=>p_o_image2_0_0_EXMPLR489, clk=>
      p_i_clock, ena=>first_bubble_repl);
   reg_buffer0_2_7 : stratixii_lcell_ff port map ( regout=>p_o_image0_7(1), 
      datain=>p_o_image1_2_7_EXMPLR488, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_2_6 : stratixii_lcell_ff port map ( regout=>p_o_image0_6(2), 
      datain=>p_o_image1_2_6_EXMPLR487, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_2_5 : stratixii_lcell_ff port map ( regout=>p_o_image0_5(2), 
      datain=>p_o_image1_2_5_EXMPLR486, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_2_4 : stratixii_lcell_ff port map ( regout=>p_o_image0_4(2), 
      datain=>p_o_image1_2_4_EXMPLR485, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_2_3 : stratixii_lcell_ff port map ( regout=>p_o_image0_3(2), 
      datain=>p_o_image1_2_3_EXMPLR484, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_2_2 : stratixii_lcell_ff port map ( regout=>p_o_image0_2(2), 
      datain=>p_o_image1_2_2_EXMPLR483, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_2_1 : stratixii_lcell_ff port map ( regout=>p_o_image0_1(2), 
      datain=>p_o_image1(2), clk=>p_i_clock, ena=>first_bubble_repl);
   reg_buffer0_2_0 : stratixii_lcell_ff port map ( regout=>p_o_image0_7(2), 
      datain=>p_o_image1_2_0_EXMPLR481, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_7 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_7(0), 
      datain=>p_o_image1_1_7_EXMPLR480, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_6 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_6(1), 
      datain=>p_o_image1_1_6_EXMPLR479, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_5 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_5(1), 
      datain=>p_o_image1_1_5_EXMPLR478, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_4 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_4(1), 
      datain=>p_o_image1_1_4_EXMPLR477, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_3 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_3(1), 
      datain=>p_o_image1_1_3_EXMPLR476, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_2 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_2(1), 
      datain=>p_o_image1_1_2_EXMPLR475, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_1 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_1(1), 
      datain=>p_o_image1_1_1_EXMPLR474, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_1_0 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_7(1), 
      datain=>p_o_image1_1_0_EXMPLR473, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_7 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_7(0), 
      datain=>p_o_image1_0_7_EXMPLR472, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_6 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_6(0), 
      datain=>p_o_image1_0_6_EXMPLR471, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_5 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_5(0), 
      datain=>p_o_image1_0_5_EXMPLR470, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_4 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_4(0), 
      datain=>p_o_image1_0_4_EXMPLR469, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_3 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_3(0), 
      datain=>p_o_image1_0_3_EXMPLR468, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_2 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_2(0), 
      datain=>p_o_image1_0_2_EXMPLR467, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_1 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_1(0), 
      datain=>p_o_image1_0_1_EXMPLR466, clk=>p_i_clock, ena=>
      first_bubble_repl);
   reg_buffer0_0_0 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_7(1), 
      datain=>p_o_image1_0_0_EXMPLR465, clk=>p_i_clock, ena=>
      first_bubble_repl);
   ix43683z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx43683z1, datac=>p_o_column_3_EXMPLR534, datad=>
      p_o_column_2_EXMPLR533, datae=>p_o_column_1_EXMPLR532, dataf=>
      p_o_column_0_EXMPLR531);
   ix5021z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx5021z3, datac=>p_o_row_3_EXMPLR526, datad=>
      p_o_row_4_EXMPLR525, datae=>p_o_row_5_EXMPLR524, dataf=>
      p_o_row_6_EXMPLR523);
   ix5021z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx5021z1, dataa=>mem_q_0_0, datab=>mem_q_2_0, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(0));
   ix4024z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx4024z1, dataa=>mem_q_0_1, datab=>mem_q_2_1, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(1));
   ix3027z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx3027z1, dataa=>mem_q_0_2, datab=>mem_q_2_2, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(2));
   ix2030z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx2030z1, dataa=>mem_q_0_3, datab=>mem_q_2_3, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(3));
   ix1033z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx1033z1, dataa=>mem_q_0_4, datab=>mem_q_2_4, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(4));
   ix36z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx36z1, dataa=>mem_q_0_5, datab=>mem_q_2_5, datac
      =>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(5));
   ix64575z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx64575z1, dataa=>mem_q_0_6, datab=>mem_q_2_6, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(6));
   ix63578z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccfafafacc0a0a0a") 
       port map ( combout=>nx63578z1, dataa=>mem_q_0_7, datab=>mem_q_2_7, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>nx5021z2, 
      dataf=>buffer2_1n1ss1(7));
   ix55380z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx55380z1, dataa=>mem_data(0), datab=>mem_q_1_0, 
      datac=>mem_q_2_0, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix56377z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx56377z1, dataa=>mem_data(1), datab=>mem_q_1_1, 
      datac=>mem_q_2_1, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix57374z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx57374z1, dataa=>mem_data(2), datab=>mem_q_1_2, 
      datac=>mem_q_2_2, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix58371z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx58371z1, dataa=>mem_data(3), datab=>mem_q_1_3, 
      datac=>mem_q_2_3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix59368z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx59368z1, dataa=>mem_data(4), datab=>mem_q_1_4, 
      datac=>mem_q_2_4, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix60365z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx60365z1, dataa=>mem_data(5), datab=>mem_q_1_5, 
      datac=>mem_q_2_5, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix61362z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx61362z1, dataa=>mem_data(6), datab=>mem_q_1_6, 
      datac=>mem_q_2_6, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix62359z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ccf0ccaaaacccc") 
       port map ( combout=>nx62359z1, dataa=>mem_data(7), datab=>mem_q_1_7, 
      datac=>mem_q_2_7, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>nx5021z2);
   ix40106z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0f0f0f0f0f0f0fc") 
       port map ( combout=>nx40106z1, datab=>p_i_valid_rtlc_32_or_1(2), 
      datac=>nx40106z2, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_wrn_current(2));
   ix45024z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx45024z1, datae=>p_i_valid_rtlc_32_or_1(2), 
      dataf=>first_bubble);
   ix414_repl : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>not_rtlc0n196_repl, datad=>
      p_i_valid_rtlc_32_or_1(2), datae=>nx40106z3, dataf=>first_bubble);
   ix40106z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx40106z2, datad=>p_i_valid_rtlc_32_or_1(2), 
      datae=>nx40106z3, dataf=>first_bubble);
   ix413_repl : stratixii_lcell_comb
      generic map (lut_mask => X"c000000000000000") 
       port map ( combout=>nx45024z2, datab=>nx43683z1, datac=>
      p_o_column_7_EXMPLR538, datad=>p_o_column_6_EXMPLR537, datae=>
      p_o_column_5_EXMPLR536, dataf=>p_o_column_4_EXMPLR535);
   ix40106z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000000000000000") 
       port map ( combout=>nx40106z3, datab=>nx43683z1, datac=>
      p_o_column_7_EXMPLR538, datad=>p_o_column_6_EXMPLR537, datae=>
      p_o_column_5_EXMPLR536, dataf=>p_o_column_4_EXMPLR535);
   ix5021z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx5021z2, datac=>nx5021z3, datad=>
      p_o_row_1_EXMPLR528, datae=>p_o_row_2_EXMPLR527, dataf=>
      p_o_row_7_EXMPLR522);
   ix5021z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(0), datad=>mem_data(0), datae=>
      mem_q_1_0, dataf=>nx5021z2);
   ix4024z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(1), datad=>mem_data(1), datae=>
      mem_q_1_1, dataf=>nx5021z2);
   ix3027z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(2), datad=>mem_data(2), datae=>
      mem_q_1_2, dataf=>nx5021z2);
   ix2030z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(3), datad=>mem_data(3), datae=>
      mem_q_1_3, dataf=>nx5021z2);
   ix1033z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(4), datad=>mem_data(4), datae=>
      mem_q_1_4, dataf=>nx5021z2);
   ix36z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(5), datad=>mem_data(5), datae=>
      mem_q_1_5, dataf=>nx5021z2);
   ix64575z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(6), datad=>mem_data(6), datae=>
      mem_q_1_6, dataf=>nx5021z2);
   ix63578z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>buffer2_1n1ss1(7), datad=>mem_data(7), datae=>
      mem_q_1_7, dataf=>nx5021z2);
   ix50245z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx50245z1, datae=>mem_wrn_current(2), dataf=>
      nx5021z2);
   ix39109z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>mem_wrn_current_0n4ss1_0, datae=>
      p_i_valid_rtlc_32_or_1(2), dataf=>mem_wrn_current(2));
   ix17757z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>nx17757z1, datae=>p_i_valid_rtlc_32_or_1(2), 
      dataf=>mem_wrn_current(2));
   ix16760z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>nx16760z1, datae=>p_i_valid_rtlc_32_or_1(2), 
      dataf=>mem_wrn_current(1));
   ix15763z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f000f000f000f0f0") 
       port map ( combout=>nx15763z1, datac=>p_i_valid_rtlc_32_or_1(2), 
      datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), dataf=>
      mem_wrn_current(2));
end main_unfold_1492 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
      o_pixel : OUT std_logic_vector (7 DOWNTO 0) ;
      o_column : OUT std_logic_vector (7 DOWNTO 0) ;
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
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component memory_notri
      port (
         p_o_image0_9_7 : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_image0_9_1 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image0_9_2 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image0_9_3 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image0_9_4 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image0_9_5 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image0_9_6 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image0_8_7 : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_image0_8_1 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image0_8_2 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image0_8_3 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image0_8_4 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image0_8_5 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image0_8_6 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image0_7 : OUT std_logic_vector (2 DOWNTO 1) ;
         p_o_image0_1 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image0_2 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image0_3 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image0_4 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image0_5 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image0_6 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image1_9_7 : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_image1_9_1 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image1_9_2 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image1_9_3 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image1_9_4 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image1_9_5 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image1_9_6 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image1_8_7 : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_image1_8_1 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image1_8_2 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image1_8_3 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image1_8_4 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image1_8_5 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image1_8_6 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image1_7 : OUT std_logic_vector (2 DOWNTO 1) ;
         p_o_image1_1 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image1_2 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image1_3 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image1_4 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image1_5 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image1_6 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image2_9_7 : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_image2_9_1 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image2_9_2 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image2_9_3 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image2_9_4 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image2_9_5 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image2_9_6 : OUT std_logic_vector (0 DOWNTO 0) ;
         p_o_image2_8_7 : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_image2_8_1 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image2_8_2 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image2_8_3 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image2_8_4 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image2_8_5 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image2_8_6 : OUT std_logic_vector (1 DOWNTO 1) ;
         p_o_image2_7 : OUT std_logic_vector (2 DOWNTO 1) ;
         p_o_image2_1 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image2_2 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image2_3 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image2_4 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image2_5 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_o_image2_6 : OUT std_logic_vector (2 DOWNTO 2) ;
         p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_i_valid_rtlc_32_or_1 : IN std_logic_vector (2 DOWNTO 2) ;
         p_i_clock : IN std_logic ;
         p_o_column : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal i_clock_EXMPLR581, i_valid_EXMPLR582: std_logic ;
   
   signal i_pixel_EXMPLR742: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR591, o_edge_EXMPLR592: std_logic ;
   
   signal o_dir_EXMPLR743: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR744: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_pixel_EXMPLR745: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_column_dup0: std_logic_vector (7 DOWNTO 0) ;
   
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
      o_image2_2_dup0_0, i_clock_int, i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_row_EXMPLR746: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_column_EXMPLR747: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR748: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR749: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR750: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR751: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR752: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR753: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR754: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR755: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR756: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR757: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR758: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR759: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR760: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR761: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR762: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR763: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR764: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_dup0_1: std_logic ;
   
   signal debug_num_5_dup0: std_logic_vector (17 DOWNTO 17) ;

begin
   i_clock_EXMPLR581 <= i_clock ;
   i_valid_EXMPLR582 <= i_valid ;
   i_pixel_EXMPLR742(7) <= i_pixel(7) ;
   i_pixel_EXMPLR742(6) <= i_pixel(6) ;
   i_pixel_EXMPLR742(5) <= i_pixel(5) ;
   i_pixel_EXMPLR742(4) <= i_pixel(4) ;
   i_pixel_EXMPLR742(3) <= i_pixel(3) ;
   i_pixel_EXMPLR742(2) <= i_pixel(2) ;
   i_pixel_EXMPLR742(1) <= i_pixel(1) ;
   i_pixel_EXMPLR742(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR591 ;
   o_edge <= o_edge_EXMPLR592 ;
   o_dir(2) <= o_dir_EXMPLR743(2) ;
   o_dir(1) <= o_dir_EXMPLR743(1) ;
   o_dir(0) <= o_dir_EXMPLR743(0) ;
   o_mode(1) <= o_mode_EXMPLR744(1) ;
   o_mode(0) <= o_mode_EXMPLR744(0) ;
   o_row(7) <= o_row_EXMPLR746(7) ;
   o_row(6) <= o_row_EXMPLR746(6) ;
   o_row(5) <= o_row_EXMPLR746(5) ;
   o_row(4) <= o_row_EXMPLR746(4) ;
   o_row(3) <= o_row_EXMPLR746(3) ;
   o_row(2) <= o_row_EXMPLR746(2) ;
   o_row(1) <= o_row_EXMPLR746(1) ;
   o_row(0) <= o_row_EXMPLR746(0) ;
   o_pixel(7) <= o_pixel_EXMPLR745(7) ;
   o_pixel(6) <= o_pixel_EXMPLR745(6) ;
   o_pixel(5) <= o_pixel_EXMPLR745(5) ;
   o_pixel(4) <= o_pixel_EXMPLR745(4) ;
   o_pixel(3) <= o_pixel_EXMPLR745(3) ;
   o_pixel(2) <= o_pixel_EXMPLR745(2) ;
   o_pixel(1) <= o_pixel_EXMPLR745(1) ;
   o_pixel(0) <= o_pixel_EXMPLR745(0) ;
   o_column(7) <= o_column_EXMPLR747(7) ;
   o_column(6) <= o_column_EXMPLR747(6) ;
   o_column(5) <= o_column_EXMPLR747(5) ;
   o_column(4) <= o_column_EXMPLR747(4) ;
   o_column(3) <= o_column_EXMPLR747(3) ;
   o_column(2) <= o_column_EXMPLR747(2) ;
   o_column(1) <= o_column_EXMPLR747(1) ;
   o_column(0) <= o_column_EXMPLR747(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR748(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR748(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR748(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR748(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR748(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR748(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR748(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR748(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR749(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR749(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR749(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR749(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR749(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR749(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR749(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR749(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR750(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR750(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR750(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR750(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR750(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR750(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR750(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR750(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR751(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR751(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR751(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR751(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR751(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR751(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR751(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR751(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR752(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR752(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR752(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR752(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR752(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR752(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR752(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR752(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR753(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR753(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR753(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR753(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR753(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR753(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR753(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR753(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR754(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR754(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR754(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR754(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR754(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR754(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR754(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR754(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR755(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR755(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR755(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR755(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR755(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR755(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR755(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR755(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR756(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR756(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR756(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR756(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR756(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR756(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR756(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR756(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR757(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR757(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR757(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR757(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR757(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR757(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR757(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR757(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR757(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR757(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR757(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR757(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR757(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR757(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR757(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR757(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR757(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR757(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR758(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR758(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR758(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR758(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR758(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR758(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR759(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR759(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR759(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR759(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR760(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR760(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR760(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR760(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR761(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR761(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR761(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR761(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR762(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR762(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR762(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR762(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR763(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR763(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR763(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR763(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR764(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR764(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR764(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR764(0) ;
   u_memory : memory_notri port map ( p_o_image0_9_7(1)=>o_image0_dup0(0), 
      p_o_image0_9_7(0)=>o_image0_dup0(7), p_o_image0_9_1(0)=>
      o_image0_dup0(1), p_o_image0_9_2(0)=>o_image0_dup0(2), 
      p_o_image0_9_3(0)=>o_image0_dup0(3), p_o_image0_9_4(0)=>
      o_image0_dup0(4), p_o_image0_9_5(0)=>o_image0_dup0(5), 
      p_o_image0_9_6(0)=>o_image0_dup0(6), p_o_image0_8_7(1)=>
      o_image0_1_dup0_0, p_o_image0_8_7(0)=>o_image0_1_dup0_7, 
      p_o_image0_8_1(1)=>o_image0_1_dup0_1, p_o_image0_8_2(1)=>
      o_image0_1_dup0_2, p_o_image0_8_3(1)=>o_image0_1_dup0_3, 
      p_o_image0_8_4(1)=>o_image0_1_dup0_4, p_o_image0_8_5(1)=>
      o_image0_1_dup0_5, p_o_image0_8_6(1)=>o_image0_1_dup0_6, 
      p_o_image0_7(2)=>o_image0_2_dup0_0, p_o_image0_7(1)=>o_image0_2_dup0_7, 
      p_o_image0_1(2)=>o_image0_2_dup0_1, p_o_image0_2(2)=>o_image0_2_dup0_2, 
      p_o_image0_3(2)=>o_image0_2_dup0_3, p_o_image0_4(2)=>o_image0_2_dup0_4, 
      p_o_image0_5(2)=>o_image0_2_dup0_5, p_o_image0_6(2)=>o_image0_2_dup0_6, 
      p_o_image1_9_7(1)=>o_image1_dup0(0), p_o_image1_9_7(0)=>
      o_image1_dup0(7), p_o_image1_9_1(0)=>o_image1_dup0(1), 
      p_o_image1_9_2(0)=>o_image1_dup0(2), p_o_image1_9_3(0)=>
      o_image1_dup0(3), p_o_image1_9_4(0)=>o_image1_dup0(4), 
      p_o_image1_9_5(0)=>o_image1_dup0(5), p_o_image1_9_6(0)=>
      o_image1_dup0(6), p_o_image1_8_7(1)=>o_image1_1_dup0_0, 
      p_o_image1_8_7(0)=>o_image1_1_dup0_7, p_o_image1_8_1(1)=>
      o_image1_1_dup0_1, p_o_image1_8_2(1)=>o_image1_1_dup0_2, 
      p_o_image1_8_3(1)=>o_image1_1_dup0_3, p_o_image1_8_4(1)=>
      o_image1_1_dup0_4, p_o_image1_8_5(1)=>o_image1_1_dup0_5, 
      p_o_image1_8_6(1)=>o_image1_1_dup0_6, p_o_image1_7(2)=>
      o_image1_2_dup0_0, p_o_image1_7(1)=>o_image1_2_dup0_7, p_o_image1_1(2)
      =>o_image1_2_dup0_1, p_o_image1_2(2)=>o_image1_2_dup0_2, 
      p_o_image1_3(2)=>o_image1_2_dup0_3, p_o_image1_4(2)=>o_image1_2_dup0_4, 
      p_o_image1_5(2)=>o_image1_2_dup0_5, p_o_image1_6(2)=>o_image1_2_dup0_6, 
      p_o_image2_9_7(1)=>o_image2_dup0(0), p_o_image2_9_7(0)=>
      o_image2_dup0(7), p_o_image2_9_1(0)=>o_image2_dup0(1), 
      p_o_image2_9_2(0)=>o_image2_dup0(2), p_o_image2_9_3(0)=>
      o_image2_dup0(3), p_o_image2_9_4(0)=>o_image2_dup0(4), 
      p_o_image2_9_5(0)=>o_image2_dup0(5), p_o_image2_9_6(0)=>
      o_image2_dup0(6), p_o_image2_8_7(1)=>o_image2_1_dup0_0, 
      p_o_image2_8_7(0)=>o_image2_1_dup0_7, p_o_image2_8_1(1)=>
      o_image2_1_dup0_1, p_o_image2_8_2(1)=>o_image2_1_dup0_2, 
      p_o_image2_8_3(1)=>o_image2_1_dup0_3, p_o_image2_8_4(1)=>
      o_image2_1_dup0_4, p_o_image2_8_5(1)=>o_image2_1_dup0_5, 
      p_o_image2_8_6(1)=>o_image2_1_dup0_6, p_o_image2_7(2)=>
      o_image2_2_dup0_0, p_o_image2_7(1)=>o_image2_2_dup0_7, p_o_image2_1(2)
      =>o_image2_2_dup0_1, p_o_image2_2(2)=>o_image2_2_dup0_2, 
      p_o_image2_3(2)=>o_image2_2_dup0_3, p_o_image2_4(2)=>o_image2_2_dup0_4, 
      p_o_image2_5(2)=>o_image2_2_dup0_5, p_o_image2_6(2)=>o_image2_2_dup0_6, 
      p_i_pixel(7)=>i_pixel_int(7), p_i_pixel(6)=>i_pixel_int(6), 
      p_i_pixel(5)=>i_pixel_int(5), p_i_pixel(4)=>i_pixel_int(4), 
      p_i_pixel(3)=>i_pixel_int(3), p_i_pixel(2)=>i_pixel_int(2), 
      p_i_pixel(1)=>i_pixel_int(1), p_i_pixel(0)=>i_pixel_int(0), p_o_row(7)
      =>o_row_dup0(7), p_o_row(6)=>o_row_dup0(6), p_o_row(5)=>o_row_dup0(5), 
      p_o_row(4)=>o_row_dup0(4), p_o_row(3)=>o_row_dup0(3), p_o_row(2)=>
      o_row_dup0(2), p_o_row(1)=>o_row_dup0(1), p_o_row(0)=>o_row_dup0(0), 
      p_i_valid_rtlc_32_or_1(2)=>i_valid_int, p_i_clock=>i_clock_int, 
      p_o_column(7)=>o_column_dup0(7), p_o_column(6)=>o_column_dup0(6), 
      p_o_column(5)=>o_column_dup0(5), p_o_column(4)=>o_column_dup0(4), 
      p_o_column(3)=>o_column_dup0(3), p_o_column(2)=>o_column_dup0(2), 
      p_o_column(1)=>o_column_dup0(1), p_o_column(0)=>o_column_dup0(0));
   debug_num_5_dup0_1 <= '1';
   debug_num_5_dup0(17) <= '0';
   u_memory_o_pixel_triBus1_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(7), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(6), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(5), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(4), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(3), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(2), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(1), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   u_memory_o_pixel_triBus1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR745(0), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR746(0), datain=>o_row_dup0(0));
   o_mode_triBus2_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR744(1), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   o_mode_triBus2_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR744(0), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(7), datain=>o_image2_2_dup0_7
   );
   o_image2_obuf_2_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(6), datain=>o_image2_2_dup0_6
   );
   o_image2_obuf_2_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(5), datain=>o_image2_2_dup0_5
   );
   o_image2_obuf_2_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(4), datain=>o_image2_2_dup0_4
   );
   o_image2_obuf_2_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(3), datain=>o_image2_2_dup0_3
   );
   o_image2_obuf_2_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(2), datain=>o_image2_2_dup0_2
   );
   o_image2_obuf_2_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(1), datain=>o_image2_2_dup0_1
   );
   o_image2_obuf_2_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR756(0), datain=>o_image2_2_dup0_0
   );
   o_image2_obuf_1_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(7), datain=>o_image2_1_dup0_7
   );
   o_image2_obuf_1_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(6), datain=>o_image2_1_dup0_6
   );
   o_image2_obuf_1_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(5), datain=>o_image2_1_dup0_5
   );
   o_image2_obuf_1_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(4), datain=>o_image2_1_dup0_4
   );
   o_image2_obuf_1_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(3), datain=>o_image2_1_dup0_3
   );
   o_image2_obuf_1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(2), datain=>o_image2_1_dup0_2
   );
   o_image2_obuf_1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(1), datain=>o_image2_1_dup0_1
   );
   o_image2_obuf_1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_1_EXMPLR755(0), datain=>o_image2_1_dup0_0
   );
   o_image2_obuf_0_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(7), datain=>o_image2_dup0(7));
   o_image2_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(6), datain=>o_image2_dup0(6));
   o_image2_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(5), datain=>o_image2_dup0(5));
   o_image2_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(4), datain=>o_image2_dup0(4));
   o_image2_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(3), datain=>o_image2_dup0(3));
   o_image2_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(2), datain=>o_image2_dup0(2));
   o_image2_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(1), datain=>o_image2_dup0(1));
   o_image2_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR754(0), datain=>o_image2_dup0(0));
   o_image1_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(7), datain=>o_image1_2_dup0_7
   );
   o_image1_obuf_2_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(6), datain=>o_image1_2_dup0_6
   );
   o_image1_obuf_2_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(5), datain=>o_image1_2_dup0_5
   );
   o_image1_obuf_2_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(4), datain=>o_image1_2_dup0_4
   );
   o_image1_obuf_2_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(3), datain=>o_image1_2_dup0_3
   );
   o_image1_obuf_2_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(2), datain=>o_image1_2_dup0_2
   );
   o_image1_obuf_2_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(1), datain=>o_image1_2_dup0_1
   );
   o_image1_obuf_2_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR753(0), datain=>o_image1_2_dup0_0
   );
   o_image1_obuf_1_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(7), datain=>o_image1_1_dup0_7
   );
   o_image1_obuf_1_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(6), datain=>o_image1_1_dup0_6
   );
   o_image1_obuf_1_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(5), datain=>o_image1_1_dup0_5
   );
   o_image1_obuf_1_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(4), datain=>o_image1_1_dup0_4
   );
   o_image1_obuf_1_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(3), datain=>o_image1_1_dup0_3
   );
   o_image1_obuf_1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(2), datain=>o_image1_1_dup0_2
   );
   o_image1_obuf_1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(1), datain=>o_image1_1_dup0_1
   );
   o_image1_obuf_1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_1_EXMPLR752(0), datain=>o_image1_1_dup0_0
   );
   o_image1_obuf_0_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(7), datain=>o_image1_dup0(7));
   o_image1_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(6), datain=>o_image1_dup0(6));
   o_image1_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(5), datain=>o_image1_dup0(5));
   o_image1_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(4), datain=>o_image1_dup0(4));
   o_image1_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(3), datain=>o_image1_dup0(3));
   o_image1_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(2), datain=>o_image1_dup0(2));
   o_image1_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(1), datain=>o_image1_dup0(1));
   o_image1_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR751(0), datain=>o_image1_dup0(0));
   o_image0_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(7), datain=>o_image0_2_dup0_7
   );
   o_image0_obuf_2_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(6), datain=>o_image0_2_dup0_6
   );
   o_image0_obuf_2_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(5), datain=>o_image0_2_dup0_5
   );
   o_image0_obuf_2_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(4), datain=>o_image0_2_dup0_4
   );
   o_image0_obuf_2_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(3), datain=>o_image0_2_dup0_3
   );
   o_image0_obuf_2_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(2), datain=>o_image0_2_dup0_2
   );
   o_image0_obuf_2_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(1), datain=>o_image0_2_dup0_1
   );
   o_image0_obuf_2_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR750(0), datain=>o_image0_2_dup0_0
   );
   o_image0_obuf_1_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(7), datain=>o_image0_1_dup0_7
   );
   o_image0_obuf_1_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(6), datain=>o_image0_1_dup0_6
   );
   o_image0_obuf_1_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(5), datain=>o_image0_1_dup0_5
   );
   o_image0_obuf_1_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(4), datain=>o_image0_1_dup0_4
   );
   o_image0_obuf_1_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(3), datain=>o_image0_1_dup0_3
   );
   o_image0_obuf_1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(2), datain=>o_image0_1_dup0_2
   );
   o_image0_obuf_1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(1), datain=>o_image0_1_dup0_1
   );
   o_image0_obuf_1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_1_EXMPLR749(0), datain=>o_image0_1_dup0_0
   );
   o_image0_obuf_0_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(7), datain=>o_image0_dup0(7));
   o_image0_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(6), datain=>o_image0_dup0(6));
   o_image0_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(5), datain=>o_image0_dup0(5));
   o_image0_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(4), datain=>o_image0_dup0(4));
   o_image0_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(3), datain=>o_image0_dup0(3));
   o_image0_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(2), datain=>o_image0_dup0(2));
   o_image0_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(1), datain=>o_image0_dup0(1));
   o_image0_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR748(0), datain=>o_image0_dup0(0));
   o_dir_triBus1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR743(2), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   o_dir_triBus1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR743(1), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   o_dir_triBus1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR743(0), datain=>debug_num_5_dup0(17), 
      oe=>debug_num_5_dup0(17));
   o_column_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(7), datain=>o_column_dup0(7));
   o_column_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(6), datain=>o_column_dup0(6));
   o_column_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(5), datain=>o_column_dup0(5));
   o_column_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(4), datain=>o_column_dup0(4));
   o_column_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(3), datain=>o_column_dup0(3));
   o_column_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(2), datain=>o_column_dup0(2));
   o_column_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(1), datain=>o_column_dup0(1));
   o_column_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR747(0), datain=>o_column_dup0(0));
   ix45767z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR592, datain=>debug_num_5_dup0(17), oe
      =>debug_num_5_dup0(17));
   ix51998z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR591, datain=>debug_num_5_dup0(17), oe
      =>debug_num_5_dup0(17));
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR582);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR742(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR742(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR742(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR742(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR742(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR742(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR742(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR742(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR581);
   debug_num_5_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR764(3), datain=>
      debug_num_5_dup0_1);
   debug_num_5_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR764(2), datain=>
      debug_num_5_dup0_1);
   debug_num_5_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR764(1), datain=>
      debug_num_5_dup0_1);
   debug_num_5_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR764(0), datain=>
      debug_num_5_dup0(17));
   debug_num_4_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR763(3), datain=>
      debug_num_5_dup0_1);
   debug_num_4_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR763(2), datain=>
      debug_num_5_dup0_1);
   debug_num_4_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR763(1), datain=>
      debug_num_5_dup0(17));
   debug_num_4_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR763(0), datain=>
      debug_num_5_dup0(17));
   debug_num_3_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR762(3), datain=>
      debug_num_5_dup0_1);
   debug_num_3_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR762(2), datain=>
      debug_num_5_dup0_1);
   debug_num_3_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR762(1), datain=>
      debug_num_5_dup0_1);
   debug_num_3_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR762(0), datain=>
      debug_num_5_dup0(17));
   debug_num_2_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR761(3), datain=>
      debug_num_5_dup0(17));
   debug_num_2_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR761(2), datain=>
      debug_num_5_dup0(17));
   debug_num_2_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR761(1), datain=>
      debug_num_5_dup0_1);
   debug_num_2_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR761(0), datain=>
      debug_num_5_dup0_1);
   debug_num_1_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR760(3), datain=>
      debug_num_5_dup0(17));
   debug_num_1_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR760(2), datain=>
      debug_num_5_dup0(17));
   debug_num_1_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR760(1), datain=>
      debug_num_5_dup0_1);
   debug_num_1_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR760(0), datain=>
      debug_num_5_dup0(17));
   debug_num_0_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR759(3), datain=>
      debug_num_5_dup0(17));
   debug_num_0_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR759(2), datain=>
      debug_num_5_dup0_1);
   debug_num_0_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR759(1), datain=>
      debug_num_5_dup0_1);
   debug_num_0_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR759(0), datain=>
      debug_num_5_dup0_1);
   debug_led_red_obuf_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(9), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(8), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(7), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(6), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(5), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(4), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(3), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(2), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_17 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(17), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_16 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(16), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_15 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(15), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_14 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(14), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_13 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(13), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(12), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(11), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(10), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(1), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR757(0), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR758(5), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR758(4), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR758(3), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR758(2), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR758(1), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR758(0), datain=>
      debug_num_5_dup0(17));
end main ;

