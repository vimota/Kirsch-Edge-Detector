
-- 
-- Definition of  kirsch
-- 
--      Sun Jul 20 19:40:48 2014
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
      p_i_valid : IN std_logic ;
      p_rtlc3n271 : IN std_logic ;
      p_rtlc3n121_repl : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal GND_EXMPLR601, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
      nx58250z8, nx58250z10, nx58250z12, nx58250z14, nx58250z16, nx58250z1, 
      nx57253z1, nx56256z1, nx55259z1, nx54262z1, nx53265z1, nx52268z1, 
      nx51271z1, nx58250z17, nx58250z15, nx58250z13, nx58250z11, nx58250z9, 
      nx58250z7, nx58250z5, nx58250z3, nx58250z2, nx58250z18, nx58250z19: 
   std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z4 ;
   q(5) <= nx58250z6 ;
   q(4) <= nx58250z8 ;
   q(3) <= nx58250z10 ;
   q(2) <= nx58250z12 ;
   q(1) <= nx58250z14 ;
   q(0) <= nx58250z16 ;
   GND_EXMPLR601 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n121_repl);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffff00ff0000") 
       port map ( combout=>nx57253z3, datad=>p_i_valid, datae=>p_rtlc3n271, 
      dataf=>sclear);
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
      cin=>GND_EXMPLR601);
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
      p_i_valid : IN std_logic ;
      p_rtlc3n121 : IN std_logic ;
      p_rtlc3n272_repl : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal GND_EXMPLR603, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
      nx58250z8, nx58250z10, nx58250z12, nx58250z14, nx58250z16, nx58250z1, 
      nx57253z1, nx56256z1, nx55259z1, nx54262z1, nx53265z1, nx52268z1, 
      nx51271z1, nx58250z17, nx58250z15, nx58250z13, nx58250z11, nx58250z9, 
      nx58250z7, nx58250z5, nx58250z3, nx58250z2, nx58250z18, nx58250z19: 
   std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z4 ;
   q(5) <= nx58250z6 ;
   q(4) <= nx58250z8 ;
   q(3) <= nx58250z10 ;
   q(2) <= nx58250z12 ;
   q(1) <= nx58250z14 ;
   q(0) <= nx58250z16 ;
   GND_EXMPLR603 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc3n272_repl);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff0fff0fff0f0000") 
       port map ( combout=>nx57253z3, datac=>p_i_valid, datad=>p_rtlc3n121, 
      datae=>sclear, dataf=>cnt_en);
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
      cin=>GND_EXMPLR603);
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
   signal ena1_EXMPLR631: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR631, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR631 <= '1';
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
   signal ena1_EXMPLR661: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR661, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR661 <= '1';
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
   signal ena1_EXMPLR691: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR691, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR691 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
      GND : IN std_logic ;
      p_ix183_ix179_nx7_repl0 : OUT std_logic ;
      p_ix183_ix180_nx7_repl0 : OUT std_logic) ;
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
         p_rtlc3n271 : IN std_logic ;
         p_rtlc3n121_repl : IN std_logic) ;
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
         p_i_valid : IN std_logic ;
         p_rtlc3n121 : IN std_logic ;
         p_rtlc3n272_repl : IN std_logic) ;
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
   signal o_valid_EXMPLR709: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc0n0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR797: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR798: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR799: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR800: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR801: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR802: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_EXMPLR803: std_logic_vector (1 DOWNTO 0) ;
   
   signal mem_wrn_current_3n4ss1_2, mem_wrn_current_3n4ss1_1, nx47386z4, 
      nx47386z2, nx47386z1: std_logic ;
   
   signal buffer2_4n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx60567z3, nx57224z1, nx17757z1, nx16760z1, nx15763z1, nx33254z1, 
      nx60567z1, nx39109z2, nx62359z1, nx61362z1, nx60365z1, nx59368z1, 
      nx58371z1, nx57374z1, nx56377z1, nx55380z1, nx63578z1, nx64575z1, 
      nx36z1, nx1033z1, nx2030z1, nx3027z1, nx4024z1, nx5021z1, nx39109z1, 
      nx47386z5, nx60567z2, nx60567z4, nx47386z3, first_bubble_repl, 
      nx8852z1, nx47386z6: std_logic ;
   
   signal DANGLING : std_logic_vector (41 downto 0 );

begin
   o_valid <= o_valid_EXMPLR709 ;
   o_image1_0(7) <= o_image1_0_EXMPLR797(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR797(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR797(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR797(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR797(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR797(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR797(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR797(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR798(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR798(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR798(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR798(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR798(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR798(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR798(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR798(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR799(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR799(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR799(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR799(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR799(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR799(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR799(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR799(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR800(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR800(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR800(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR800(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR800(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR800(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR800(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR800(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR801(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR801(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR801(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR801(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR801(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR801(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR801(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR801(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR802(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR802(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR802(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR802(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR802(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR802(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR802(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR802(0) ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock, q(7)=>
      row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), q(2)=>
      row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx47386z4, updn=>DANGLING(12
      ), cnt_en=>DANGLING(13), p_i_valid=>i_valid, p_rtlc3n271=>nx47386z2, 
      p_rtlc3n121_repl=>nx8852z1);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>column(0), 
      clk_en=>DANGLING(14), aclear=>DANGLING(15), sload=>DANGLING(16), 
      data(7)=>DANGLING(17), data(6)=>DANGLING(18), data(5)=>DANGLING(19), 
      data(4)=>DANGLING(20), data(3)=>DANGLING(21), data(2)=>DANGLING(22), 
      data(1)=>DANGLING(23), data(0)=>DANGLING(24), aset=>DANGLING(25), 
      sclear=>nx47386z1, updn=>DANGLING(26), cnt_en=>first_bubble, p_i_valid
      =>i_valid, p_rtlc3n121=>nx47386z4, p_rtlc3n272_repl=>nx47386z6);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1=>rtlc0n0, rd_data1(7)=>
      mem_q_0(7), rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), 
      rd_data1(4)=>mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>
      mem_q_0(2), rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)
      =>column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(27
      ), wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(28), ena1=>DANGLING(29), 
      rst1=>DANGLING(30), regce1=>DANGLING(31));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1=>rtlc0n0, rd_data1(7)=>
      mem_q_1(7), rd_data1(6)=>mem_q_1(6), rd_data1(5)=>mem_q_1(5), 
      rd_data1(4)=>mem_q_1(4), rd_data1(3)=>mem_q_1(3), rd_data1(2)=>
      mem_q_1(2), rd_data1(1)=>mem_q_1(1), rd_data1(0)=>mem_q_1(0), addr1(7)
      =>column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(32
      ), wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(33), ena1=>DANGLING(34), 
      rst1=>DANGLING(35), regce1=>DANGLING(36));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1=>rtlc0n0, rd_data1(7)=>
      mem_q_2(7), rd_data1(6)=>mem_q_2(6), rd_data1(5)=>mem_q_2(5), 
      rd_data1(4)=>mem_q_2(4), rd_data1(3)=>mem_q_2(3), rd_data1(2)=>
      mem_q_2(2), rd_data1(1)=>mem_q_2(1), rd_data1(0)=>mem_q_2(0), addr1(7)
      =>column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(37
      ), wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(38), ena1=>DANGLING(39), 
      rst1=>DANGLING(40), regce1=>DANGLING(41));
   lat_ix36864z13 : latch port map ( q=>rtlc0n0(7), d=>i_pixel(7), ena=>
      i_valid);
   lat_ix36864z14 : latch port map ( q=>rtlc0n0(6), d=>i_pixel(6), ena=>
      i_valid);
   lat_ix36864z15 : latch port map ( q=>rtlc0n0(5), d=>i_pixel(5), ena=>
      i_valid);
   lat_ix36864z16 : latch port map ( q=>rtlc0n0(4), d=>i_pixel(4), ena=>
      i_valid);
   lat_ix36864z17 : latch port map ( q=>rtlc0n0(3), d=>i_pixel(3), ena=>
      i_valid);
   lat_ix36864z18 : latch port map ( q=>rtlc0n0(2), d=>i_pixel(2), ena=>
      i_valid);
   lat_ix36864z19 : latch port map ( q=>rtlc0n0(1), d=>i_pixel(1), ena=>
      i_valid);
   lat_ix36864z20 : latch port map ( q=>rtlc0n0(0), d=>i_pixel(0), ena=>
      i_valid);
   o_mode_EXMPLR803(1) <= NOT i_reset;
   reg_o_valid : stratixii_lcell_ff port map ( regout=>o_valid_EXMPLR709, 
      datain=>nx60567z1, clk=>i_clock);
   reg_o_row_7 : stratixii_lcell_ff port map ( regout=>o_row(7), datain=>
      row(7), clk=>i_clock);
   reg_o_row_6 : stratixii_lcell_ff port map ( regout=>o_row(6), datain=>
      row(6), clk=>i_clock);
   reg_o_row_5 : stratixii_lcell_ff port map ( regout=>o_row(5), datain=>
      row(5), clk=>i_clock);
   reg_o_row_4 : stratixii_lcell_ff port map ( regout=>o_row(4), datain=>
      row(4), clk=>i_clock);
   reg_o_row_3 : stratixii_lcell_ff port map ( regout=>o_row(3), datain=>
      row(3), clk=>i_clock);
   reg_o_row_2 : stratixii_lcell_ff port map ( regout=>o_row(2), datain=>
      row(2), clk=>i_clock);
   reg_o_row_1 : stratixii_lcell_ff port map ( regout=>o_row(1), datain=>
      row(1), clk=>i_clock);
   reg_o_row_0 : stratixii_lcell_ff port map ( regout=>o_row(0), datain=>
      row(0), clk=>i_clock);
   reg_mem_wrn_current_2 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current_3n4ss1_2, clk=>i_clock, 
      ena=>nx39109z2, sclr=>nx8852z1);
   reg_mem_wrn_current_1 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current_3n4ss1_1, clk=>i_clock, 
      ena=>nx39109z2, sclr=>nx8852z1);
   reg_mem_wrn_current_0 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>nx39109z1, clk=>i_clock, ena=>nx39109z2);
   reg_mem_wrn_2 : stratixii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>nx17757z1, clk=>i_clock);
   reg_mem_wrn_1 : stratixii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>nx16760z1, clk=>i_clock);
   reg_mem_wrn_0 : stratixii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>nx15763z1, clk=>i_clock);
   reg_first_bubble_repl : stratixii_lcell_ff port map ( regout=>
      first_bubble_repl, datain=>i_valid, clk=>i_clock);
   reg_first_bubble : stratixii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid, clk=>i_clock);
   reg_busySignalDelayed : stratixii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>i_clock);
   reg_busySignal : stratixii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>i_clock);
   reg_buffer2_2_7 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(7), datain=>mem_q_2(7), adatasdata=>rtlc0n0(7), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_6 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(6), datain=>mem_q_2(6), adatasdata=>rtlc0n0(6), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_5 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(5), datain=>mem_q_2(5), adatasdata=>rtlc0n0(5), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_4 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(4), datain=>mem_q_2(4), adatasdata=>rtlc0n0(4), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_3 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(3), datain=>mem_q_2(3), adatasdata=>rtlc0n0(3), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_2 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(2), datain=>mem_q_2(2), adatasdata=>rtlc0n0(2), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_1 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(1), datain=>mem_q_2(1), adatasdata=>rtlc0n0(1), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_0 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR802(0), datain=>mem_q_2(0), adatasdata=>rtlc0n0(0), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_1_7 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(7), datain=>nx62359z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_6 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(6), datain=>nx61362z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_5 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(5), datain=>nx60365z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_4 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(4), datain=>nx59368z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_3 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(3), datain=>nx58371z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_2 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(2), datain=>nx57374z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_1 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(1), datain=>nx56377z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_0 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR801(0), datain=>nx55380z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_7 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(7), datain=>nx63578z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_6 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(6), datain=>nx64575z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_5 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(5), datain=>nx36z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_4 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(4), datain=>nx1033z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_3 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(3), datain=>nx2030z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_2 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(2), datain=>nx3027z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_1 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(1), datain=>nx4024z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_0 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR800(0), datain=>nx5021z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer1_2_7 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(7), datain=>o_image2_2_EXMPLR802(7), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_6 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(6), datain=>o_image2_2_EXMPLR802(6), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_5 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(5), datain=>o_image2_2_EXMPLR802(5), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_4 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(4), datain=>o_image2_2_EXMPLR802(4), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_3 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(3), datain=>o_image2_2_EXMPLR802(3), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_2 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(2), datain=>o_image2_2_EXMPLR802(2), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_1 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(1), datain=>o_image2_2_EXMPLR802(1), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_0 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR799(0), datain=>o_image2_2_EXMPLR802(0), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_7 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(7), datain=>o_image2_1_EXMPLR801(7), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_6 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(6), datain=>o_image2_1_EXMPLR801(6), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_5 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(5), datain=>o_image2_1_EXMPLR801(5), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_4 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(4), datain=>o_image2_1_EXMPLR801(4), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_3 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(3), datain=>o_image2_1_EXMPLR801(3), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_2 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(2), datain=>o_image2_1_EXMPLR801(2), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_1 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(1), datain=>o_image2_1_EXMPLR801(1), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_0 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR798(0), datain=>o_image2_1_EXMPLR801(0), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_7 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(7), datain=>o_image2_0_EXMPLR800(7), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_6 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(6), datain=>o_image2_0_EXMPLR800(6), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_5 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(5), datain=>o_image2_0_EXMPLR800(5), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_4 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(4), datain=>o_image2_0_EXMPLR800(4), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_3 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(3), datain=>o_image2_0_EXMPLR800(3), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_2 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(2), datain=>o_image2_0_EXMPLR800(2), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_1 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(1), datain=>o_image2_0_EXMPLR800(1), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_0 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR797(0), datain=>o_image2_0_EXMPLR800(0), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer0_2_7 : stratixii_lcell_ff port map ( regout=>o_image0_2(7), 
      datain=>o_image1_2_EXMPLR799(7), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_6 : stratixii_lcell_ff port map ( regout=>o_image0_2(6), 
      datain=>o_image1_2_EXMPLR799(6), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_5 : stratixii_lcell_ff port map ( regout=>o_image0_2(5), 
      datain=>o_image1_2_EXMPLR799(5), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_4 : stratixii_lcell_ff port map ( regout=>o_image0_2(4), 
      datain=>o_image1_2_EXMPLR799(4), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_3 : stratixii_lcell_ff port map ( regout=>o_image0_2(3), 
      datain=>o_image1_2_EXMPLR799(3), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_2 : stratixii_lcell_ff port map ( regout=>o_image0_2(2), 
      datain=>o_image1_2_EXMPLR799(2), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_1 : stratixii_lcell_ff port map ( regout=>o_image0_2(1), 
      datain=>o_image1_2_EXMPLR799(1), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_0 : stratixii_lcell_ff port map ( regout=>o_image0_2(0), 
      datain=>o_image1_2_EXMPLR799(0), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_7 : stratixii_lcell_ff port map ( regout=>o_image0_1(7), 
      datain=>o_image1_1_EXMPLR798(7), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_6 : stratixii_lcell_ff port map ( regout=>o_image0_1(6), 
      datain=>o_image1_1_EXMPLR798(6), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_5 : stratixii_lcell_ff port map ( regout=>o_image0_1(5), 
      datain=>o_image1_1_EXMPLR798(5), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_4 : stratixii_lcell_ff port map ( regout=>o_image0_1(4), 
      datain=>o_image1_1_EXMPLR798(4), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_3 : stratixii_lcell_ff port map ( regout=>o_image0_1(3), 
      datain=>o_image1_1_EXMPLR798(3), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_2 : stratixii_lcell_ff port map ( regout=>o_image0_1(2), 
      datain=>o_image1_1_EXMPLR798(2), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_1 : stratixii_lcell_ff port map ( regout=>o_image0_1(1), 
      datain=>o_image1_1_EXMPLR798(1), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_0 : stratixii_lcell_ff port map ( regout=>o_image0_1(0), 
      datain=>o_image1_1_EXMPLR798(0), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_7 : stratixii_lcell_ff port map ( regout=>o_image0_0(7), 
      datain=>o_image1_0_EXMPLR797(7), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_6 : stratixii_lcell_ff port map ( regout=>o_image0_0(6), 
      datain=>o_image1_0_EXMPLR797(6), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_5 : stratixii_lcell_ff port map ( regout=>o_image0_0(5), 
      datain=>o_image1_0_EXMPLR797(5), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_4 : stratixii_lcell_ff port map ( regout=>o_image0_0(4), 
      datain=>o_image1_0_EXMPLR797(4), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_3 : stratixii_lcell_ff port map ( regout=>o_image0_0(3), 
      datain=>o_image1_0_EXMPLR797(3), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_2 : stratixii_lcell_ff port map ( regout=>o_image0_0(2), 
      datain=>o_image1_0_EXMPLR797(2), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_1 : stratixii_lcell_ff port map ( regout=>o_image0_0(1), 
      datain=>o_image1_0_EXMPLR797(1), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_0 : stratixii_lcell_ff port map ( regout=>o_image0_0(0), 
      datain=>o_image1_0_EXMPLR797(0), clk=>i_clock, ena=>first_bubble_repl
   );
   ix47386z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx47386z3, datac=>column(4), datad=>column(5), 
      datae=>column(6), dataf=>column(7));
   ix60567z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx60567z4, datac=>row(3), datad=>row(4), datae=>
      row(5), dataf=>row(6));
   ix60567z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx60567z2, datab=>column(1), datac=>column(2), 
      datad=>column(3), datae=>column(4), dataf=>column(5));
   ix47386z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"8000000000000000") 
       port map ( combout=>nx47386z5, dataa=>row(2), datab=>row(3), datac=>
      row(4), datad=>row(5), datae=>row(6), dataf=>row(7));
   ix39109z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff00ff00ff0000") 
       port map ( combout=>nx39109z1, datad=>nx47386z4, datae=>
      mem_wrn_current(2), dataf=>i_valid);
   ix5021z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx5021z1, dataa=>mem_q_2(0), datab=>mem_q_0(0), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(0), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix4024z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx4024z1, dataa=>mem_q_2(1), datab=>mem_q_0(1), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(1), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix3027z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx3027z1, dataa=>mem_q_2(2), datab=>mem_q_0(2), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(2), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix2030z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx2030z1, dataa=>mem_q_2(3), datab=>mem_q_0(3), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(3), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix1033z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx1033z1, dataa=>mem_q_2(4), datab=>mem_q_0(4), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(4), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix36z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx36z1, dataa=>mem_q_2(5), datab=>mem_q_0(5), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(5), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix64575z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx64575z1, dataa=>mem_q_2(6), datab=>mem_q_0(6), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(6), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix63578z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx63578z1, dataa=>mem_q_2(7), datab=>mem_q_0(7), 
      datac=>nx60567z3, datad=>buffer2_4n2ss1(7), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix55380z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx55380z1, dataa=>mem_q_2(0), datab=>mem_q_1(0), 
      datac=>nx60567z3, datad=>rtlc0n0(0), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix56377z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx56377z1, dataa=>mem_q_2(1), datab=>mem_q_1(1), 
      datac=>nx60567z3, datad=>rtlc0n0(1), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix57374z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx57374z1, dataa=>mem_q_2(2), datab=>mem_q_1(2), 
      datac=>nx60567z3, datad=>rtlc0n0(2), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix58371z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx58371z1, dataa=>mem_q_2(3), datab=>mem_q_1(3), 
      datac=>nx60567z3, datad=>rtlc0n0(3), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix59368z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx59368z1, dataa=>mem_q_2(4), datab=>mem_q_1(4), 
      datac=>nx60567z3, datad=>rtlc0n0(4), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix60365z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx60365z1, dataa=>mem_q_2(5), datab=>mem_q_1(5), 
      datac=>nx60567z3, datad=>rtlc0n0(5), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix61362z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx61362z1, dataa=>mem_q_2(6), datab=>mem_q_1(6), 
      datac=>nx60567z3, datad=>rtlc0n0(6), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix62359z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0cfc0acaccccc") 
       port map ( combout=>nx62359z1, dataa=>mem_q_2(7), datab=>mem_q_1(7), 
      datac=>nx60567z3, datad=>rtlc0n0(7), datae=>mem_wrn_current(0), dataf
      =>mem_wrn_current(1));
   ix39109z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"cccccccfeeeeeeee") 
       port map ( combout=>nx39109z2, dataa=>nx47386z2, datab=>nx47386z4, 
      datac=>mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>
      mem_wrn_current(2), dataf=>i_valid);
   ix60567z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ccc80000") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>nx60567z3, 
      datac=>column(6), datad=>column(7), datae=>first_bubble, dataf=>
      o_valid_EXMPLR709);
   ix33254z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"7fff7fff7fff0000") 
       port map ( combout=>nx33254z1, dataa=>nx47386z5, datab=>nx47386z2, 
      datac=>row(0), datad=>row(1), datae=>busySignal, dataf=>i_valid);
   ix15763z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"3030303300000000") 
       port map ( combout=>nx15763z1, datab=>nx47386z4, datac=>
      mem_wrn_current(0), datad=>mem_wrn_current(1), datae=>
      mem_wrn_current(2), dataf=>i_valid);
   ix16760z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx16760z1, datad=>nx47386z4, datae=>
      mem_wrn_current(1), dataf=>i_valid);
   ix17757z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx17757z1, datad=>nx47386z4, datae=>
      mem_wrn_current(2), dataf=>i_valid);
   ix57224z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx57224z1, datae=>nx60567z3, dataf=>
      mem_wrn_current(2));
   ix60567z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx60567z3, datac=>nx60567z4, datad=>row(1), datae
      =>row(2), dataf=>row(7));
   ix5021z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(0), datad=>mem_q_1(0), datae=>
      nx60567z3, dataf=>rtlc0n0(0));
   ix4024z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(1), datad=>mem_q_1(1), datae=>
      nx60567z3, dataf=>rtlc0n0(1));
   ix3027z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(2), datad=>mem_q_1(2), datae=>
      nx60567z3, dataf=>rtlc0n0(2));
   ix2030z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(3), datad=>mem_q_1(3), datae=>
      nx60567z3, dataf=>rtlc0n0(3));
   ix1033z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(4), datad=>mem_q_1(4), datae=>
      nx60567z3, dataf=>rtlc0n0(4));
   ix36z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(5), datad=>mem_q_1(5), datae=>
      nx60567z3, dataf=>rtlc0n0(5));
   ix64575z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(6), datad=>mem_q_1(6), datae=>
      nx60567z3, dataf=>rtlc0n0(6));
   ix63578z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_4n2ss1(7), datad=>mem_q_1(7), datae=>
      nx60567z3, dataf=>rtlc0n0(7));
   ix531_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z6, datae=>nx47386z2, dataf=>nx47386z4);
   ix47386z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z1, datae=>nx47386z2, dataf=>nx47386z4);
   ix47386z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"8000000000000000") 
       port map ( combout=>nx47386z2, dataa=>nx47386z3, datab=>column(0), 
      datac=>column(1), datad=>column(2), datae=>column(3), dataf=>
      first_bubble);
   ix528_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffc0000000") 
       port map ( combout=>nx8852z1, datab=>nx47386z5, datac=>nx47386z2, 
      datad=>row(0), datae=>row(1), dataf=>i_reset);
   ix47386z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffc0000000") 
       port map ( combout=>nx47386z4, datab=>nx47386z5, datac=>nx47386z2, 
      datad=>row(0), datae=>row(1), dataf=>i_reset);
   ix40106z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>mem_wrn_current_3n4ss1_1, datae=>
      mem_wrn_current(0), dataf=>i_valid);
   ix41103z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>mem_wrn_current_3n4ss1_2, datae=>
      mem_wrn_current(1), dataf=>i_valid);
   ix13701z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>o_mode_EXMPLR803(0), datac=>busySignalDelayed, 
      datad=>busySignal, datae=>i_reset, dataf=>i_valid);
   ix183_reg_p2m_1 : stratixii_lcell_ff port map ( regout=>
      p_ix183_ix179_nx7_repl0, datain=>o_mode_EXMPLR803(1), clk=>i_clock);
   ix183_reg_p2m_0 : stratixii_lcell_ff port map ( regout=>
      p_ix183_ix180_nx7_repl0, datain=>o_mode_EXMPLR803(0), clk=>i_clock);

end main_unfold_1492 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity sub_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_12_0 ;

architecture IMPLEMENTATION of sub_12_0 is 
   signal nx41160z3, nx37326z3, nx37326z4, nx15260z3, nx15260z4, nx41091z3, 
      nx41091z4, nx37395z3, nx37395z4, nx61156z3, nx61156z4, nx17330z3, 
      nx17330z4, nx35256z3, nx35256z4, nx43230z3, nx43230z4, nx9356z3, 
      nx9356z4, nx3594z2, nx3594z3, nx16544z3, nx16544z4: std_logic ;

begin
   nx41160z3 <= '0';
   ix97_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(2), cout=>nx41091z3, shareout=>nx41091z4, datac
      =>b(2), datad=>a(2), cin=>nx15260z3, sharein=>nx15260z4);
   ix86_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(1), cout=>nx15260z3, shareout=>nx15260z4, datac
      =>b(1), datad=>a(1), cin=>nx37326z3, sharein=>nx37326z4);
   ix75_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ff0f00000ff0",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx37326z3, shareout=>nx37326z4, datac
      =>b(0), datad=>a(0), cin=>nx41160z3, sharein=>nx41160z3);
   ix196_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"000000000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(11), datac=>b(11), datad=>a(11), cin=>nx16544z3, 
      sharein=>nx16544z4);
   ix185_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(10), cout=>nx16544z3, shareout=>nx16544z4, datac
      =>b(11), datad=>a(10), cin=>nx3594z2, sharein=>nx3594z3);
   ix174_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx3594z2, shareout=>nx3594z3, datac=>
      b(9), datad=>a(9), cin=>nx9356z3, sharein=>nx9356z4);
   ix163_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx9356z3, shareout=>nx9356z4, datac=>
      b(8), datad=>a(8), cin=>nx43230z3, sharein=>nx43230z4);
   ix152_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx43230z3, shareout=>nx43230z4, datac
      =>b(7), datad=>a(7), cin=>nx35256z3, sharein=>nx35256z4);
   ix141_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx35256z3, shareout=>nx35256z4, datac
      =>b(6), datad=>a(6), cin=>nx17330z3, sharein=>nx17330z4);
   ix130_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(5), cout=>nx17330z3, shareout=>nx17330z4, datac
      =>b(5), datad=>a(5), cin=>nx61156z3, sharein=>nx61156z4);
   ix119_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(4), cout=>nx61156z3, shareout=>nx61156z4, datac
      =>b(4), datad=>a(4), cin=>nx37395z3, sharein=>nx37395z4);
   ix108_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(3), cout=>nx37395z3, shareout=>nx37395z4, datac
      =>b(3), datad=>a(3), cin=>nx41091z3, sharein=>nx41091z4);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_10_0 ;

architecture IMPLEMENTATION of add_10_0 is 
   signal nx46946z22, nx46946z20, nx46946z18, nx46946z16, nx46946z14, 
      nx46946z12, nx46946z10, nx46946z8, nx46946z6, nx46946z4, nx46946z3: 
   std_logic ;

begin
   nx46946z22 <= '0';
   nx46946z3 <= '0';
   ix46946z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(7), cout=>nx46946z6, dataa=>a(6), datad=>a(7), 
      cin=>nx46946z8);
   ix46946z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(6), cout=>nx46946z8, dataa=>a(6), dataf=>a(5), 
      cin=>nx46946z10);
   ix46946z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(5), cout=>nx46946z10, dataa=>a(4), datad=>a(5), 
      cin=>nx46946z12);
   ix46946z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(4), cout=>nx46946z12, dataa=>a(4), dataf=>a(3), 
      cin=>nx46946z14);
   ix46946z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(3), cout=>nx46946z14, dataa=>a(2), datad=>a(3), 
      cin=>nx46946z16);
   ix46946z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(2), cout=>nx46946z16, dataa=>a(2), dataf=>a(1), 
      cin=>nx46946z18);
   ix46946z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(1), cout=>nx46946z18, dataa=>a(0), datad=>a(1), 
      cin=>nx46946z20);
   ix46946z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(0), cout=>nx46946z20, dataa=>a(0), dataf=>b(0), 
      cin=>nx46946z22);
   ix46946z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(9), dataa=>a(8), datad=>nx46946z3, cin=>
      nx46946z4);
   ix46946z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(8), cout=>nx46946z4, dataa=>a(8), dataf=>a(7), 
      cin=>nx46946z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity sub_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_0 ;

architecture IMPLEMENTATION of sub_10_0 is 
   signal nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
      nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
      nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
      nx43230z4, nx9356z1, nx9356z2: std_logic ;

begin
   nx11426z3 <= '0';
   ix97_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(3), cout=>nx41091z3, shareout=>nx41091z4, datac
      =>b(3), datad=>a(3), cin=>nx15260z3, sharein=>nx15260z4);
   ix86_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(2), cout=>nx15260z3, shareout=>nx15260z4, datac
      =>b(2), datad=>a(2), cin=>nx37326z3, sharein=>nx37326z4);
   ix75_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(1), cout=>nx37326z3, shareout=>nx37326z4, datac
      =>b(1), datad=>a(1), cin=>nx41160z3, sharein=>nx41160z4);
   ix64_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ff0f00000ff0",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx41160z3, shareout=>nx41160z4, datac
      =>b(0), datad=>a(0), cin=>nx11426z3, sharein=>nx11426z3);
   ix174_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>cout, cin=>nx9356z1, sharein=>nx9356z2);
   ix163_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx9356z1, shareout=>nx9356z2, datac=>
      b(9), datad=>a(9), cin=>nx43230z3, sharein=>nx43230z4);
   ix152_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx43230z3, shareout=>nx43230z4, datac
      =>b(8), datad=>a(8), cin=>nx35256z3, sharein=>nx35256z4);
   ix141_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx35256z3, shareout=>nx35256z4, datac
      =>b(7), datad=>a(7), cin=>nx17330z3, sharein=>nx17330z4);
   ix130_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx17330z3, shareout=>nx17330z4, datac
      =>b(6), datad=>a(6), cin=>nx61156z3, sharein=>nx61156z4);
   ix119_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(5), cout=>nx61156z3, shareout=>nx61156z4, datac
      =>b(5), datad=>a(5), cin=>nx37395z3, sharein=>nx37395z4);
   ix108_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(4), cout=>nx37395z3, shareout=>nx37395z4, datac
      =>b(4), datad=>a(4), cin=>nx41091z3, sharein=>nx41091z4);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_10_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_p21_4n0r4_10 : IN std_logic ;
      p_rtlcn1061 : IN std_logic) ;
end add_10_1 ;

architecture IMPLEMENTATION of add_10_1 is 
   signal nx46946z30, nx46946z27, nx46946z24, nx46946z21, nx46946z18, 
      nx46946z15, nx46946z12, nx46946z9, nx46946z6, nx46946z4: std_logic ;

begin
   nx46946z30 <= '0';
   ix46946z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx46946z9, datad=>a(6), dataf=>b(6), 
      cin=>nx46946z12);
   ix46946z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx46946z12, datad=>a(5), dataf=>b(5), 
      cin=>nx46946z15);
   ix46946z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx46946z15, datad=>a(4), dataf=>b(4), 
      cin=>nx46946z18);
   ix46946z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx46946z18, datad=>a(3), dataf=>b(3), 
      cin=>nx46946z21);
   ix46946z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx46946z21, datad=>a(2), dataf=>b(2), 
      cin=>nx46946z24);
   ix46946z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx46946z24, datad=>a(1), dataf=>b(1), 
      cin=>nx46946z27);
   ix46946z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx46946z27, datad=>a(0), dataf=>b(0), 
      cin=>nx46946z30);
   ix46946z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00001111") 
       port map ( sumout=>d(9), dataa=>p_p21_4n0r4_10, datab=>p_rtlcn1061, 
      dataf=>b(9), cin=>nx46946z4);
   ix46946z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00009999") 
       port map ( sumout=>d(8), cout=>nx46946z4, dataa=>p_p21_4n0r4_10, 
      datab=>p_rtlcn1061, dataf=>b(8), cin=>nx46946z6);
   ix46946z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx46946z6, datad=>a(7), dataf=>b(7), 
      cin=>nx46946z9);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_10_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_10_2 ;

architecture IMPLEMENTATION of add_10_2 is 
   signal nx46946z22, nx46946z20, nx46946z18, nx46946z16, nx46946z14, 
      nx46946z12, nx46946z10, nx46946z8, nx46946z6, nx46946z4, nx46946z3: 
   std_logic ;

begin
   nx46946z22 <= '0';
   nx46946z3 <= '0';
   ix46946z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(7), cout=>nx46946z6, dataa=>a(6), datad=>a(7), 
      cin=>nx46946z8);
   ix46946z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(6), cout=>nx46946z8, dataa=>a(6), dataf=>a(5), 
      cin=>nx46946z10);
   ix46946z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(5), cout=>nx46946z10, dataa=>a(4), datad=>a(5), 
      cin=>nx46946z12);
   ix46946z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(4), cout=>nx46946z12, dataa=>a(4), dataf=>a(3), 
      cin=>nx46946z14);
   ix46946z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(3), cout=>nx46946z14, dataa=>a(2), datad=>a(3), 
      cin=>nx46946z16);
   ix46946z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(2), cout=>nx46946z16, dataa=>a(2), dataf=>a(1), 
      cin=>nx46946z18);
   ix46946z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(1), cout=>nx46946z18, dataa=>a(0), datad=>a(1), 
      cin=>nx46946z20);
   ix46946z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(0), cout=>nx46946z20, dataa=>a(0), dataf=>b(0), 
      cin=>nx46946z22);
   ix46946z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(9), dataa=>a(8), datad=>nx46946z3, cin=>
      nx46946z4);
   ix46946z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(8), cout=>nx46946z4, dataa=>a(8), dataf=>a(7), 
      cin=>nx46946z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity sub_10_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_1 ;

architecture IMPLEMENTATION of sub_10_1 is 
   signal nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
      nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
      nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
      nx43230z4, nx9356z1, nx9356z2: std_logic ;

begin
   nx11426z3 <= '0';
   ix97_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(3), cout=>nx41091z3, shareout=>nx41091z4, datac
      =>b(3), datad=>a(3), cin=>nx15260z3, sharein=>nx15260z4);
   ix86_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(2), cout=>nx15260z3, shareout=>nx15260z4, datac
      =>b(2), datad=>a(2), cin=>nx37326z3, sharein=>nx37326z4);
   ix75_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(1), cout=>nx37326z3, shareout=>nx37326z4, datac
      =>b(1), datad=>a(1), cin=>nx41160z3, sharein=>nx41160z4);
   ix64_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ff0f00000ff0",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx41160z3, shareout=>nx41160z4, datac
      =>b(0), datad=>a(0), cin=>nx11426z3, sharein=>nx11426z3);
   ix174_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>cout, cin=>nx9356z1, sharein=>nx9356z2);
   ix163_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx9356z1, shareout=>nx9356z2, datac=>
      b(9), datad=>a(9), cin=>nx43230z3, sharein=>nx43230z4);
   ix152_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx43230z3, shareout=>nx43230z4, datac
      =>b(8), datad=>a(8), cin=>nx35256z3, sharein=>nx35256z4);
   ix141_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx35256z3, shareout=>nx35256z4, datac
      =>b(7), datad=>a(7), cin=>nx17330z3, sharein=>nx17330z4);
   ix130_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx17330z3, shareout=>nx17330z4, datac
      =>b(6), datad=>a(6), cin=>nx61156z3, sharein=>nx61156z4);
   ix119_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(5), cout=>nx61156z3, shareout=>nx61156z4, datac
      =>b(5), datad=>a(5), cin=>nx37395z3, sharein=>nx37395z4);
   ix108_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(4), cout=>nx37395z3, shareout=>nx37395z4, datac
      =>b(4), datad=>a(4), cin=>nx41091z3, sharein=>nx41091z4);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_10_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_p22_4n0r4_10 : IN std_logic ;
      p_rtlcn1142 : IN std_logic) ;
end add_10_3 ;

architecture IMPLEMENTATION of add_10_3 is 
   signal nx46946z30, nx46946z27, nx46946z24, nx46946z21, nx46946z18, 
      nx46946z15, nx46946z12, nx46946z9, nx46946z6, nx46946z4: std_logic ;

begin
   nx46946z30 <= '0';
   ix46946z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx46946z9, datad=>a(6), dataf=>b(6), 
      cin=>nx46946z12);
   ix46946z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx46946z12, datad=>a(5), dataf=>b(5), 
      cin=>nx46946z15);
   ix46946z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx46946z15, datad=>a(4), dataf=>b(4), 
      cin=>nx46946z18);
   ix46946z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx46946z18, datad=>a(3), dataf=>b(3), 
      cin=>nx46946z21);
   ix46946z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx46946z21, datad=>a(2), dataf=>b(2), 
      cin=>nx46946z24);
   ix46946z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx46946z24, datad=>a(1), dataf=>b(1), 
      cin=>nx46946z27);
   ix46946z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx46946z27, datad=>a(0), dataf=>b(0), 
      cin=>nx46946z30);
   ix46946z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00001111") 
       port map ( sumout=>d(9), dataa=>p_p22_4n0r4_10, datab=>p_rtlcn1142, 
      dataf=>b(9), cin=>nx46946z4);
   ix46946z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00009999") 
       port map ( sumout=>d(8), cout=>nx46946z4, dataa=>p_p22_4n0r4_10, 
      datab=>p_rtlcn1142, dataf=>b(8), cin=>nx46946z6);
   ix46946z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx46946z6, datad=>a(7), dataf=>b(7), 
      cin=>nx46946z9);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_f_i1_next_7 : IN std_logic ;
      p_rtlc1n11 : IN std_logic ;
      p_o_image1_0_dup0_7 : IN std_logic ;
      p_f_i1_next_6 : IN std_logic ;
      p_o_image1_0_dup0_6 : IN std_logic ;
      p_f_i1_next_5 : IN std_logic ;
      p_o_image1_0_dup0_5 : IN std_logic ;
      p_f_i1_next_4 : IN std_logic ;
      p_o_image1_0_dup0_4 : IN std_logic ;
      p_f_i1_next_3 : IN std_logic ;
      p_o_image1_0_dup0_3 : IN std_logic ;
      p_f_i1_next_2 : IN std_logic ;
      p_o_image1_0_dup0_2 : IN std_logic ;
      p_f_i1_next_1 : IN std_logic ;
      p_o_image1_0_dup0_1 : IN std_logic ;
      p_f_i1_next_0 : IN std_logic ;
      p_o_image1_0_dup0_0 : IN std_logic ;
      p_f_i2_next_7 : IN std_logic ;
      p_o_image1_2_dup0_7 : IN std_logic ;
      p_f_i2_next_5 : IN std_logic ;
      p_o_image1_2_dup0_5 : IN std_logic ;
      p_f_i2_next_3 : IN std_logic ;
      p_o_image1_2_dup0_3 : IN std_logic ;
      p_f_i2_next_1 : IN std_logic ;
      p_o_image1_2_dup0_1 : IN std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z14, nx44952z12, nx44952z11, nx44952z9, nx44952z8, 
      nx44952z6, nx44952z5, nx44952z3, nx25450z2, nx25450z1: std_logic ;

begin
   nx44952z14 <= '0';
   nx25450z1 <= '0';
   ix98_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx25450z1, cin=>nx25450z2);
   ix44952z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(7), cout=>nx25450z2, dataa=>p_rtlc1n11, datab=>
      p_f_i2_next_7, datac=>p_f_i1_next_7, datad=>p_o_image1_0_dup0_7, dataf
      =>p_o_image1_2_dup0_7, cin=>nx44952z3);
   ix44952z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(6), cout=>nx44952z3, dataa=>p_rtlc1n11, datac=>
      p_f_i1_next_6, datad=>p_o_image1_0_dup0_6, dataf=>b(6), cin=>nx44952z5
   );
   ix44952z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(5), cout=>nx44952z5, dataa=>p_rtlc1n11, datab=>
      p_f_i2_next_5, datac=>p_f_i1_next_5, datad=>p_o_image1_0_dup0_5, dataf
      =>p_o_image1_2_dup0_5, cin=>nx44952z6);
   ix44952z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(4), cout=>nx44952z6, dataa=>p_rtlc1n11, datac=>
      p_f_i1_next_4, datad=>p_o_image1_0_dup0_4, dataf=>b(4), cin=>nx44952z8
   );
   ix44952z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(3), cout=>nx44952z8, dataa=>p_rtlc1n11, datab=>
      p_f_i2_next_3, datac=>p_f_i1_next_3, datad=>p_o_image1_0_dup0_3, dataf
      =>p_o_image1_2_dup0_3, cin=>nx44952z9);
   ix44952z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(2), cout=>nx44952z9, dataa=>p_rtlc1n11, datac=>
      p_f_i1_next_2, datad=>p_o_image1_0_dup0_2, dataf=>b(2), cin=>
      nx44952z11);
   ix44952z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(1), cout=>nx44952z11, dataa=>p_rtlc1n11, datab=>
      p_f_i2_next_1, datac=>p_f_i1_next_1, datad=>p_o_image1_0_dup0_1, dataf
      =>p_o_image1_2_dup0_1, cin=>nx44952z12);
   ix44952z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(0), cout=>nx44952z12, dataa=>p_rtlc1n11, datac=>
      p_f_i1_next_0, datad=>p_o_image1_0_dup0_0, dataf=>b(0), cin=>
      nx44952z14);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z20, nx45949z18, nx45949z16, nx45949z14, nx45949z12, 
      nx45949z10, nx45949z8, nx45949z6, nx45949z4, nx45949z2: std_logic ;

begin
   nx45949z20 <= '0';
   nx45949z2 <= '0';
   ix45949z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx45949z4, datad=>nx45949z2, dataf=>
      a(5), cin=>nx45949z6);
   ix45949z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx45949z6, datad=>a(6), dataf=>a(4), 
      cin=>nx45949z8);
   ix45949z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx45949z8, datad=>a(5), dataf=>a(3), 
      cin=>nx45949z10);
   ix45949z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx45949z10, datad=>a(4), dataf=>a(2), 
      cin=>nx45949z12);
   ix45949z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx45949z12, datad=>a(3), dataf=>a(1), 
      cin=>nx45949z14);
   ix45949z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx45949z14, datad=>a(2), dataf=>a(0), 
      cin=>nx45949z16);
   ix45949z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx45949z16, datad=>a(1), dataf=>b(1), 
      cin=>nx45949z18);
   ix45949z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx45949z18, datad=>a(0), dataf=>b(0), 
      cin=>nx45949z20);
   ix45949z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), datad=>nx45949z2, dataf=>a(6), cin=>
      nx45949z4);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity modgen_adderblock_3_0 is 
   port (
      a0 : IN std_logic_vector (7 DOWNTO 0) ;
      a1 : IN std_logic_vector (7 DOWNTO 0) ;
      a2 : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0)) ;
end modgen_adderblock_3_0 ;

architecture IMPLEMENTATION of modgen_adderblock_3_0 is 
   signal nx35620z1, nx42866z1, nx42866z2, nx9720z1, nx9720z2, nx3230z1, 
      nx3230z2, nx49356z1, nx49356z2, nx29130z1, nx29130z2, nx23456z1, 
      nx23456z2, nx55030z1, nx55030z2, nx48770z1, nx48770z2, nx3816z1, 
      nx3816z2: std_logic ;

begin
   nx35620z1 <= '0';
   ix99_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx48770z1, shareout=>nx48770z2, datab
      =>a0(7), datac=>a2(7), datad=>a1(7), cin=>nx55030z1, sharein=>
      nx55030z2);
   ix88_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx55030z1, shareout=>nx55030z2, datab
      =>a0(6), datac=>a2(6), datad=>a1(6), cin=>nx23456z1, sharein=>
      nx23456z2);
   ix77_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(5), cout=>nx23456z1, shareout=>nx23456z2, datab
      =>a0(5), datac=>a2(5), datad=>a1(5), cin=>nx29130z1, sharein=>
      nx29130z2);
   ix66_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(4), cout=>nx29130z1, shareout=>nx29130z2, datab
      =>a0(4), datac=>a2(4), datad=>a1(4), cin=>nx49356z1, sharein=>
      nx49356z2);
   ix55_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(3), cout=>nx49356z1, shareout=>nx49356z2, datab
      =>a0(3), datac=>a2(3), datad=>a1(3), cin=>nx3230z1, sharein=>nx3230z2
   );
   ix44_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(2), cout=>nx3230z1, shareout=>nx3230z2, datab=>
      a0(2), datac=>a2(2), datad=>a1(2), cin=>nx9720z1, sharein=>nx9720z2);
   ix33_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(1), cout=>nx9720z1, shareout=>nx9720z2, datab=>
      a0(1), datac=>a2(1), datad=>a1(1), cin=>nx42866z1, sharein=>nx42866z2
   );
   ix22_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx42866z1, shareout=>nx42866z2, datab
      =>a0(0), datac=>a2(0), datad=>a1(0), cin=>nx35620z1, sharein=>
      nx35620z1);
   ix121_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>d(9), cin=>nx3816z1, sharein=>nx3816z2);
   ix110_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx3816z1, shareout=>nx3816z2, cin=>
      nx48770z1, sharein=>nx48770z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity modgen_adderblock_3_1 is 
   port (
      a0 : IN std_logic_vector (7 DOWNTO 0) ;
      a1 : IN std_logic_vector (7 DOWNTO 0) ;
      a2 : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0)) ;
end modgen_adderblock_3_1 ;

architecture IMPLEMENTATION of modgen_adderblock_3_1 is 
   signal nx35620z1, nx42866z1, nx42866z2, nx9720z1, nx9720z2, nx3230z1, 
      nx3230z2, nx49356z1, nx49356z2, nx29130z1, nx29130z2, nx23456z1, 
      nx23456z2, nx55030z1, nx55030z2, nx48770z1, nx48770z2, nx3816z1, 
      nx3816z2: std_logic ;

begin
   nx35620z1 <= '0';
   ix99_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx48770z1, shareout=>nx48770z2, datab
      =>a0(7), datac=>a2(7), datad=>a1(7), cin=>nx55030z1, sharein=>
      nx55030z2);
   ix88_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx55030z1, shareout=>nx55030z2, datab
      =>a0(6), datac=>a2(6), datad=>a1(6), cin=>nx23456z1, sharein=>
      nx23456z2);
   ix77_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(5), cout=>nx23456z1, shareout=>nx23456z2, datab
      =>a0(5), datac=>a2(5), datad=>a1(5), cin=>nx29130z1, sharein=>
      nx29130z2);
   ix66_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(4), cout=>nx29130z1, shareout=>nx29130z2, datab
      =>a0(4), datac=>a2(4), datad=>a1(4), cin=>nx49356z1, sharein=>
      nx49356z2);
   ix55_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(3), cout=>nx49356z1, shareout=>nx49356z2, datab
      =>a0(3), datac=>a2(3), datad=>a1(3), cin=>nx3230z1, sharein=>nx3230z2
   );
   ix44_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(2), cout=>nx3230z1, shareout=>nx3230z2, datab=>
      a0(2), datac=>a2(2), datad=>a1(2), cin=>nx9720z1, sharein=>nx9720z2);
   ix33_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(1), cout=>nx9720z1, shareout=>nx9720z2, datab=>
      a0(1), datac=>a2(1), datad=>a1(1), cin=>nx42866z1, sharein=>nx42866z2
   );
   ix22_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx42866z1, shareout=>nx42866z2, datab
      =>a0(0), datac=>a2(0), datad=>a1(0), cin=>nx35620z1, sharein=>
      nx35620z1);
   ix121_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>d(9), cin=>nx3816z1, sharein=>nx3816z2);
   ix110_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx3816z1, shareout=>nx3816z2, cin=>
      nx48770z1, sharein=>nx48770z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
      GND : OUT std_logic ;
      p_ix183_ix179_nx7_repl0 : IN std_logic ;
      p_ix183_ix180_nx7_repl0 : IN std_logic ;
      p_f_i1_next_7 : IN std_logic ;
      p_rtlc1n11 : IN std_logic ;
      p_o_image1_0_dup0_7 : IN std_logic ;
      p_f_i1_next_6 : IN std_logic ;
      p_o_image1_0_dup0_6 : IN std_logic ;
      p_f_i1_next_5 : IN std_logic ;
      p_o_image1_0_dup0_5 : IN std_logic ;
      p_f_i1_next_4 : IN std_logic ;
      p_o_image1_0_dup0_4 : IN std_logic ;
      p_f_i1_next_3 : IN std_logic ;
      p_o_image1_0_dup0_3 : IN std_logic ;
      p_f_i1_next_2 : IN std_logic ;
      p_o_image1_0_dup0_2 : IN std_logic ;
      p_f_i1_next_1 : IN std_logic ;
      p_o_image1_0_dup0_1 : IN std_logic ;
      p_f_i1_next_0 : IN std_logic ;
      p_o_image1_0_dup0_0 : IN std_logic ;
      p_f_i2_next_7 : IN std_logic ;
      p_o_image1_2_dup0_7 : IN std_logic ;
      p_f_i2_next_5 : IN std_logic ;
      p_o_image1_2_dup0_5 : IN std_logic ;
      p_f_i2_next_3 : IN std_logic ;
      p_o_image1_2_dup0_3 : IN std_logic ;
      p_f_i2_next_1 : IN std_logic ;
      p_o_image1_2_dup0_1 : IN std_logic ;
      p_ix184_ix181_nx7_repl0 : IN std_logic) ;
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
   component add_10_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
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
   component add_10_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_p21_4n0r4_10 : IN std_logic ;
         p_rtlcn1061 : IN std_logic) ;
   end component ;
   component add_10_2
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
   component add_10_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_p22_4n0r4_10 : IN std_logic ;
         p_rtlcn1142 : IN std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_f_i1_next_7 : IN std_logic ;
         p_rtlc1n11 : IN std_logic ;
         p_o_image1_0_dup0_7 : IN std_logic ;
         p_f_i1_next_6 : IN std_logic ;
         p_o_image1_0_dup0_6 : IN std_logic ;
         p_f_i1_next_5 : IN std_logic ;
         p_o_image1_0_dup0_5 : IN std_logic ;
         p_f_i1_next_4 : IN std_logic ;
         p_o_image1_0_dup0_4 : IN std_logic ;
         p_f_i1_next_3 : IN std_logic ;
         p_o_image1_0_dup0_3 : IN std_logic ;
         p_f_i1_next_2 : IN std_logic ;
         p_o_image1_0_dup0_2 : IN std_logic ;
         p_f_i1_next_1 : IN std_logic ;
         p_o_image1_0_dup0_1 : IN std_logic ;
         p_f_i1_next_0 : IN std_logic ;
         p_o_image1_0_dup0_0 : IN std_logic ;
         p_f_i2_next_7 : IN std_logic ;
         p_o_image1_2_dup0_7 : IN std_logic ;
         p_f_i2_next_5 : IN std_logic ;
         p_o_image1_2_dup0_5 : IN std_logic ;
         p_f_i2_next_3 : IN std_logic ;
         p_o_image1_2_dup0_3 : IN std_logic ;
         p_f_i2_next_1 : IN std_logic ;
         p_o_image1_2_dup0_1 : IN std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_adderblock_3_0
      port (
         a0 : IN std_logic_vector (7 DOWNTO 0) ;
         a1 : IN std_logic_vector (7 DOWNTO 0) ;
         a2 : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   component modgen_adderblock_3_1
      port (
         a0 : IN std_logic_vector (7 DOWNTO 0) ;
         a1 : IN std_logic_vector (7 DOWNTO 0) ;
         a2 : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   signal o_dir_EXMPLR956: std_logic_vector (2 DOWNTO 0) ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13_10, p13_9, p13_8, p13_7, p13_6, p13_5, p13_4, p13_3, p13_2: 
   std_logic ;
   
   signal p21: std_logic_vector (11 DOWNTO 0) ;
   
   signal p22: std_logic_vector (11 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p31: std_logic_vector (11 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (11 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (11 DOWNTO 0) ;
   
   signal p50: std_logic ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal prev_max: std_logic_vector (10 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p21_4n0r4: std_logic_vector (10 DOWNTO 1) ;
   
   signal p22_4n0r4: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21_4n0r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx52975z1, nx51978z1, nx44434z1, nx45431z1, nx46428z1, nx47425z1, 
      nx48422z1, nx49419z1, nx50416z1, nx51413z1: std_logic ;
   
   signal p22_4n0r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx47840z1, nx46843z1, nx12683z1, nx11686z1, nx10689z1, nx9692z1, 
      nx8695z1, nx7698z1, nx6701z1, nx5704z1, nx51413z2, nx5704z2, nx34765z1, 
      nx29630z1, nx24495z1, nx33768z1, nx28633z1, nx23498z1, nx32771z1, 
      nx27636z1, nx22501z1, nx31774z1, nx26639z1, nx21504z1, nx30777z1, 
      nx25642z1, nx20507z1, nx29780z1, nx24645z1, nx19510z1, nx28783z1, 
      nx23648z1, nx18513z1, nx27786z1, nx22651z1, nx17516z1, nx4428z1, 
      nx64829z1, nx3431z1, nx63832z1, nx53186z1, nx25836z2, nx45188z2, 
      nx26026z1, nx28524z2, nx26530z1, nx27527z1, nx28524z1, nx29521z1, 
      nx25836z1, nx26833z1, nx45188z1, nx44191z1, nx49569z1, nx50566z1, 
      nx51563z1, nx52560z1, nx53557z1, nx54554z1, nx55551z1, nx56548z1, 
      nx57545z1, nx58542z1, nx45188z4, nx45188z6, nx35078z4, nx35078z1, 
      nx25836z7, nx25836z3, nx45188z3, nx45188z5, nx45188z7, nx25836z4, 
      nx25836z5, nx25836z6, nx35078z3, nx35078z5, nx35078z6, nx35078z2, 
      nx60988z1: std_logic ;
   
   signal DANGLING : std_logic_vector (62 downto 0 );

begin
   o_dir(2) <= o_dir_EXMPLR956(2) ;
   o_dir(1) <= o_dir_EXMPLR956(1) ;
   o_dir(0) <= o_dir_EXMPLR956(0) ;
   p4s_sub12_0 : sub_12_0 port map ( cin=>DANGLING(0), a(11)=>p31(11), a(10)
      =>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>p32(10), b(10)=>DANGLING(1), b(9)=>p32(9), b(8)=>
      p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>
      p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>DANGLING(2));
   p21_add10_4i1 : add_10_0 port map ( cin=>DANGLING(3), a(9)=>DANGLING(4), 
      a(8)=>p12(9), a(7)=>p12(8), a(6)=>p12(7), a(5)=>p12(6), a(4)=>p12(5), 
      a(3)=>p12(4), a(2)=>p12(3), a(1)=>p12(2), a(0)=>p12(1), b(9)=>DANGLING
      (5), b(8)=>DANGLING(6), b(7)=>DANGLING(7), b(6)=>DANGLING(8), b(5)=>
      DANGLING(9), b(4)=>DANGLING(10), b(3)=>DANGLING(11), b(2)=>DANGLING(12
      ), b(1)=>DANGLING(13), b(0)=>p12(0), d(9)=>p21_4n0r4(10), d(8)=>
      p21_4n0r4(9), d(7)=>p21_4n0r4(8), d(6)=>p21_4n0r4(7), d(5)=>
      p21_4n0r4(6), d(4)=>p21_4n0r4(5), d(3)=>p21_4n0r4(4), d(2)=>
      p21_4n0r4(3), d(1)=>p21_4n0r4(2), d(0)=>p21_4n0r4(1), cout=>DANGLING(
      14));
   p21_sub10_4i2 : sub_10_0 port map ( cin=>DANGLING(15), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p21_4n0r4(9), 
      b(8)=>p21_4n0r4(8), b(7)=>p21_4n0r4(7), b(6)=>p21_4n0r4(6), b(5)=>
      p21_4n0r4(5), b(4)=>p21_4n0r4(4), b(3)=>p21_4n0r4(3), b(2)=>
      p21_4n0r4(2), b(1)=>p21_4n0r4(1), b(0)=>p12(0), d(9)=>p21_4n0r3(9), 
      d(8)=>p21_4n0r3(8), d(7)=>p21_4n0r3(7), d(6)=>p21_4n0r3(6), d(5)=>
      p21_4n0r3(5), d(4)=>p21_4n0r3(4), d(3)=>p21_4n0r3(3), d(2)=>
      p21_4n0r3(2), d(1)=>p21_4n0r3(1), d(0)=>p21_4n0r3(0), cout=>nx51413z2
   );
   ix51413z41662 : add_10_1 port map ( cin=>DANGLING(16), a(9)=>DANGLING(17), 
      a(8)=>DANGLING(18), a(7)=>p21_4n0r3(9), a(6)=>p21_4n0r3(8), a(5)=>
      p21_4n0r3(7), a(4)=>p21_4n0r3(6), a(3)=>p21_4n0r3(5), a(2)=>
      p21_4n0r3(4), a(1)=>p21_4n0r3(3), a(0)=>p21_4n0r3(2), b(9)=>p11(9), 
      b(8)=>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), 
      b(3)=>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>
      nx52975z1, d(8)=>nx51978z1, d(7)=>nx44434z1, d(6)=>nx45431z1, d(5)=>
      nx46428z1, d(4)=>nx47425z1, d(3)=>nx48422z1, d(2)=>nx49419z1, d(1)=>
      nx50416z1, d(0)=>nx51413z1, cout=>DANGLING(19), p_p21_4n0r4_10=>
      p21_4n0r4(10), p_rtlcn1061=>nx51413z2);
   p22_add10_4i3 : add_10_2 port map ( cin=>DANGLING(20), a(9)=>DANGLING(21), 
      a(8)=>p11(9), a(7)=>p11(8), a(6)=>p11(7), a(5)=>p11(6), a(4)=>p11(5), 
      a(3)=>p11(4), a(2)=>p11(3), a(1)=>p11(2), a(0)=>p11(1), b(9)=>DANGLING
      (22), b(8)=>DANGLING(23), b(7)=>DANGLING(24), b(6)=>DANGLING(25), b(5)
      =>DANGLING(26), b(4)=>DANGLING(27), b(3)=>DANGLING(28), b(2)=>DANGLING
      (29), b(1)=>DANGLING(30), b(0)=>p11(0), d(9)=>p22_4n0r4(10), d(8)=>
      p22_4n0r4(9), d(7)=>p22_4n0r4(8), d(6)=>p22_4n0r4(7), d(5)=>
      p22_4n0r4(6), d(4)=>p22_4n0r4(5), d(3)=>p22_4n0r4(4), d(2)=>
      p22_4n0r4(3), d(1)=>p22_4n0r4(2), d(0)=>p22_4n0r4(1), cout=>DANGLING(
      31));
   p22_sub10_4i4 : sub_10_1 port map ( cin=>DANGLING(32), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p22_4n0r4(9), 
      b(8)=>p22_4n0r4(8), b(7)=>p22_4n0r4(7), b(6)=>p22_4n0r4(6), b(5)=>
      p22_4n0r4(5), b(4)=>p22_4n0r4(4), b(3)=>p22_4n0r4(3), b(2)=>
      p22_4n0r4(2), b(1)=>p22_4n0r4(1), b(0)=>p11(0), d(9)=>p22_4n0r3(9), 
      d(8)=>p22_4n0r3(8), d(7)=>p22_4n0r3(7), d(6)=>p22_4n0r3(6), d(5)=>
      p22_4n0r3(5), d(4)=>p22_4n0r3(4), d(3)=>p22_4n0r3(3), d(2)=>
      p22_4n0r3(2), d(1)=>p22_4n0r3(1), d(0)=>p22_4n0r3(0), cout=>nx5704z2);
   ix5704z41664 : add_10_3 port map ( cin=>DANGLING(33), a(9)=>DANGLING(34), 
      a(8)=>DANGLING(35), a(7)=>p22_4n0r3(9), a(6)=>p22_4n0r3(8), a(5)=>
      p22_4n0r3(7), a(4)=>p22_4n0r3(6), a(3)=>p22_4n0r3(5), a(2)=>
      p22_4n0r3(4), a(1)=>p22_4n0r3(3), a(0)=>p22_4n0r3(2), b(9)=>p12(9), 
      b(8)=>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), 
      b(3)=>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>
      nx47840z1, d(8)=>nx46843z1, d(7)=>nx12683z1, d(6)=>nx11686z1, d(5)=>
      nx10689z1, d(4)=>nx9692z1, d(3)=>nx8695z1, d(2)=>nx7698z1, d(1)=>
      nx6701z1, d(0)=>nx5704z1, cout=>DANGLING(36), p_p22_4n0r4_10=>
      p22_4n0r4(10), p_rtlcn1142=>nx5704z2);
   p13_add8_0i3 : add_8_0 port map ( cin=>DANGLING(37), a(7)=>DANGLING(38), 
      a(6)=>DANGLING(39), a(5)=>DANGLING(40), a(4)=>DANGLING(41), a(3)=>
      DANGLING(42), a(2)=>DANGLING(43), a(1)=>DANGLING(44), a(0)=>DANGLING(
      45), b(7)=>DANGLING(46), b(6)=>i2(6), b(5)=>DANGLING(47), b(4)=>i2(4), 
      b(3)=>DANGLING(48), b(2)=>i2(2), b(1)=>DANGLING(49), b(0)=>i2(0), d(7)
      =>p13_0n0s2(7), d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>
      p13_0n0s2(4), d(3)=>p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>
      p13_0n0s2(1), d(0)=>p13_0n0s2(0), cout=>p13_0n0s2(8), p_f_i1_next_7=>
      p_f_i1_next_7, p_rtlc1n11=>p_rtlc1n11, p_o_image1_0_dup0_7=>
      p_o_image1_0_dup0_7, p_f_i1_next_6=>p_f_i1_next_6, p_o_image1_0_dup0_6
      =>p_o_image1_0_dup0_6, p_f_i1_next_5=>p_f_i1_next_5, 
      p_o_image1_0_dup0_5=>p_o_image1_0_dup0_5, p_f_i1_next_4=>p_f_i1_next_4, 
      p_o_image1_0_dup0_4=>p_o_image1_0_dup0_4, p_f_i1_next_3=>p_f_i1_next_3, 
      p_o_image1_0_dup0_3=>p_o_image1_0_dup0_3, p_f_i1_next_2=>p_f_i1_next_2, 
      p_o_image1_0_dup0_2=>p_o_image1_0_dup0_2, p_f_i1_next_1=>p_f_i1_next_1, 
      p_o_image1_0_dup0_1=>p_o_image1_0_dup0_1, p_f_i1_next_0=>p_f_i1_next_0, 
      p_o_image1_0_dup0_0=>p_o_image1_0_dup0_0, p_f_i2_next_7=>p_f_i2_next_7, 
      p_o_image1_2_dup0_7=>p_o_image1_2_dup0_7, p_f_i2_next_5=>p_f_i2_next_5, 
      p_o_image1_2_dup0_5=>p_o_image1_2_dup0_5, p_f_i2_next_3=>p_f_i2_next_3, 
      p_o_image1_2_dup0_3=>p_o_image1_2_dup0_3, p_f_i2_next_1=>p_f_i2_next_1, 
      p_o_image1_2_dup0_1=>p_o_image1_2_dup0_1);
   p13_add9_3 : add_9_0 port map ( cin=>DANGLING(50), a(8)=>DANGLING(51), 
      a(7)=>DANGLING(52), a(6)=>p13_0n0s2(8), a(5)=>p13_0n0s2(7), a(4)=>
      p13_0n0s2(6), a(3)=>p13_0n0s2(5), a(2)=>p13_0n0s2(4), a(1)=>
      p13_0n0s2(3), a(0)=>p13_0n0s2(2), b(8)=>DANGLING(53), b(7)=>DANGLING(
      54), b(6)=>DANGLING(55), b(5)=>DANGLING(56), b(4)=>DANGLING(57), b(3)
      =>DANGLING(58), b(2)=>DANGLING(59), b(1)=>p13_0n0s2(1), b(0)=>
      p13_0n0s2(0), d(8)=>p13_10, d(7)=>p13_9, d(6)=>p13_8, d(5)=>p13_7, 
      d(4)=>p13_6, d(3)=>p13_5, d(2)=>p13_4, d(1)=>p13_3, d(0)=>p13_2, cout
      =>DANGLING(60));
   modgen_adderblock : modgen_adderblock_3_0 port map ( a0(7)=>b1(7), a0(6)
      =>b1(6), a0(5)=>b1(5), a0(4)=>b1(4), a0(3)=>b1(3), a0(2)=>b1(2), a0(1)
      =>b1(1), a0(0)=>b1(0), a1(7)=>b2(7), a1(6)=>b2(6), a1(5)=>b2(5), a1(4)
      =>b2(4), a1(3)=>b2(3), a1(2)=>b2(2), a1(1)=>b2(1), a1(0)=>b2(0), a2(8)
      =>DANGLING(61), a2(7)=>b3(7), a2(6)=>b3(6), a2(5)=>b3(5), a2(4)=>b3(4), 
      a2(3)=>b3(3), a2(2)=>b3(2), a2(1)=>b3(1), a2(0)=>b3(0), d(9)=>p12(9), 
      d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)=>p12(4), 
      d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>p12(0));
   modgen_adderblock_dup_0 : modgen_adderblock_3_1 port map ( a0(7)=>t1(7), 
      a0(6)=>t1(6), a0(5)=>t1(5), a0(4)=>t1(4), a0(3)=>t1(3), a0(2)=>t1(2), 
      a0(1)=>t1(1), a0(0)=>t1(0), a1(7)=>t2(7), a1(6)=>t2(6), a1(5)=>t2(5), 
      a1(4)=>t2(4), a1(3)=>t2(3), a1(2)=>t2(2), a1(1)=>t2(1), a1(0)=>t2(0), 
      a2(8)=>DANGLING(62), a2(7)=>t3(7), a2(6)=>t3(6), a2(5)=>t3(5), a2(4)=>
      t3(4), a2(3)=>t3(3), a2(2)=>t3(2), a2(1)=>t3(1), a2(0)=>t3(0), d(9)=>
      p11(9), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>p11(5), d(4)=>
      p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>p11(0));
   reg_state_3 : stratixii_lcell_ff port map ( regout=>state(3), datain=>
      nx26530z1, clk=>i_clock, ena=>nx28524z2);
   reg_state_2 : stratixii_lcell_ff port map ( regout=>state(2), datain=>
      nx27527z1, clk=>i_clock, ena=>nx28524z2);
   reg_state_1 : stratixii_lcell_ff port map ( regout=>state(1), datain=>
      nx28524z1, clk=>i_clock, ena=>nx28524z2);
   reg_state_0 : stratixii_lcell_ff port map ( regout=>state(0), datain=>
      nx29521z1, clk=>i_clock, ena=>nx28524z2);
   reg_prev_max_9 : stratixii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_8 : stratixii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_7 : stratixii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_6 : stratixii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_5 : stratixii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_4 : stratixii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_3 : stratixii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_2 : stratixii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_10 : stratixii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_1 : stratixii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>i_clock, ena=>nx60988z1);
   reg_prev_max_0 : stratixii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>i_clock, ena=>nx60988z1);
   reg_prev_edge : stratixii_lcell_ff port map ( regout=>o_edge, datain=>p41, 
      clk=>i_clock, ena=>nx60988z1);
   reg_p50 : stratixii_lcell_ff port map ( regout=>p50, datain=>p40, clk=>
      i_clock);
   reg_p45 : stratixii_lcell_ff port map ( regout=>p45, datain=>p35, clk=>
      i_clock);
   reg_p43_9 : stratixii_lcell_ff port map ( regout=>p43(9), datain=>p4s(9), 
      clk=>i_clock);
   reg_p43_8 : stratixii_lcell_ff port map ( regout=>p43(8), datain=>p4s(8), 
      clk=>i_clock);
   reg_p43_7 : stratixii_lcell_ff port map ( regout=>p43(7), datain=>p4s(7), 
      clk=>i_clock);
   reg_p43_6 : stratixii_lcell_ff port map ( regout=>p43(6), datain=>p4s(6), 
      clk=>i_clock);
   reg_p43_5 : stratixii_lcell_ff port map ( regout=>p43(5), datain=>p4s(5), 
      clk=>i_clock);
   reg_p43_4 : stratixii_lcell_ff port map ( regout=>p43(4), datain=>p4s(4), 
      clk=>i_clock);
   reg_p43_3 : stratixii_lcell_ff port map ( regout=>p43(3), datain=>p4s(3), 
      clk=>i_clock);
   reg_p43_2 : stratixii_lcell_ff port map ( regout=>p43(2), datain=>p4s(2), 
      clk=>i_clock);
   reg_p43_11 : stratixii_lcell_ff port map ( regout=>p43(11), datain=>
      p4s(11), clk=>i_clock);
   reg_p43_10 : stratixii_lcell_ff port map ( regout=>p43(10), datain=>
      p4s(10), clk=>i_clock);
   reg_p43_1 : stratixii_lcell_ff port map ( regout=>p43(1), datain=>p4s(1), 
      clk=>i_clock);
   reg_p43_0 : stratixii_lcell_ff port map ( regout=>p43(0), datain=>p4s(0), 
      clk=>i_clock);
   reg_p41 : stratixii_lcell_ff port map ( regout=>p41, datain=>nx26026z1, 
      clk=>i_clock);
   reg_p35 : stratixii_lcell_ff port map ( regout=>p35, datain=>nx45188z2, 
      clk=>i_clock);
   reg_p32_9 : stratixii_lcell_ff port map ( regout=>p32(9), datain=>p23(9), 
      clk=>i_clock);
   reg_p32_8 : stratixii_lcell_ff port map ( regout=>p32(8), datain=>p23(8), 
      clk=>i_clock);
   reg_p32_7 : stratixii_lcell_ff port map ( regout=>p32(7), datain=>p23(7), 
      clk=>i_clock);
   reg_p32_6 : stratixii_lcell_ff port map ( regout=>p32(6), datain=>p23(6), 
      clk=>i_clock);
   reg_p32_5 : stratixii_lcell_ff port map ( regout=>p32(5), datain=>p23(5), 
      clk=>i_clock);
   reg_p32_4 : stratixii_lcell_ff port map ( regout=>p32(4), datain=>p23(4), 
      clk=>i_clock);
   reg_p32_3 : stratixii_lcell_ff port map ( regout=>p32(3), datain=>p23(3), 
      clk=>i_clock);
   reg_p32_2 : stratixii_lcell_ff port map ( regout=>p32(2), datain=>p23(2), 
      clk=>i_clock);
   reg_p32_10 : stratixii_lcell_ff port map ( regout=>p32(10), datain=>
      p23(10), clk=>i_clock);
   reg_p32_1 : stratixii_lcell_ff port map ( regout=>p32(1), datain=>p23(1), 
      clk=>i_clock);
   reg_p32_0 : stratixii_lcell_ff port map ( regout=>p32(0), datain=>p23(0), 
      clk=>i_clock);
   reg_p31_9 : stratixii_lcell_ff port map ( regout=>p31(9), datain=>
      nx49569z1, clk=>i_clock);
   reg_p31_8 : stratixii_lcell_ff port map ( regout=>p31(8), datain=>
      nx50566z1, clk=>i_clock);
   reg_p31_7 : stratixii_lcell_ff port map ( regout=>p31(7), datain=>
      nx51563z1, clk=>i_clock);
   reg_p31_6 : stratixii_lcell_ff port map ( regout=>p31(6), datain=>
      nx52560z1, clk=>i_clock);
   reg_p31_5 : stratixii_lcell_ff port map ( regout=>p31(5), datain=>
      nx53557z1, clk=>i_clock);
   reg_p31_4 : stratixii_lcell_ff port map ( regout=>p31(4), datain=>
      nx54554z1, clk=>i_clock);
   reg_p31_3 : stratixii_lcell_ff port map ( regout=>p31(3), datain=>
      nx55551z1, clk=>i_clock);
   reg_p31_2 : stratixii_lcell_ff port map ( regout=>p31(2), datain=>
      nx56548z1, clk=>i_clock);
   reg_p31_11 : stratixii_lcell_ff port map ( regout=>p31(11), datain=>
      nx45188z1, clk=>i_clock);
   reg_p31_10 : stratixii_lcell_ff port map ( regout=>p31(10), datain=>
      nx44191z1, clk=>i_clock);
   reg_p31_1 : stratixii_lcell_ff port map ( regout=>p31(1), datain=>
      nx57545z1, clk=>i_clock);
   reg_p31_0 : stratixii_lcell_ff port map ( regout=>p31(0), datain=>
      nx58542z1, clk=>i_clock);
   reg_p23_9 : stratixii_lcell_ff port map ( regout=>p23(9), datain=>p13_9, 
      clk=>i_clock);
   reg_p23_8 : stratixii_lcell_ff port map ( regout=>p23(8), datain=>p13_8, 
      clk=>i_clock);
   reg_p23_7 : stratixii_lcell_ff port map ( regout=>p23(7), datain=>p13_7, 
      clk=>i_clock);
   reg_p23_6 : stratixii_lcell_ff port map ( regout=>p23(6), datain=>p13_6, 
      clk=>i_clock);
   reg_p23_5 : stratixii_lcell_ff port map ( regout=>p23(5), datain=>p13_5, 
      clk=>i_clock);
   reg_p23_4 : stratixii_lcell_ff port map ( regout=>p23(4), datain=>p13_4, 
      clk=>i_clock);
   reg_p23_3 : stratixii_lcell_ff port map ( regout=>p23(3), datain=>p13_3, 
      clk=>i_clock);
   reg_p23_2 : stratixii_lcell_ff port map ( regout=>p23(2), datain=>p13_2, 
      clk=>i_clock);
   reg_p23_10 : stratixii_lcell_ff port map ( regout=>p23(10), datain=>
      p13_10, clk=>i_clock);
   reg_p23_1 : stratixii_lcell_ff port map ( regout=>p23(1), datain=>
      p13_0n0s2(1), clk=>i_clock);
   reg_p23_0 : stratixii_lcell_ff port map ( regout=>p23(0), datain=>
      p13_0n0s2(0), clk=>i_clock);
   reg_p22_9 : stratixii_lcell_ff port map ( regout=>p22(9), datain=>
      nx12683z1, clk=>i_clock);
   reg_p22_8 : stratixii_lcell_ff port map ( regout=>p22(8), datain=>
      nx11686z1, clk=>i_clock);
   reg_p22_7 : stratixii_lcell_ff port map ( regout=>p22(7), datain=>
      nx10689z1, clk=>i_clock);
   reg_p22_6 : stratixii_lcell_ff port map ( regout=>p22(6), datain=>
      nx9692z1, clk=>i_clock);
   reg_p22_5 : stratixii_lcell_ff port map ( regout=>p22(5), datain=>
      nx8695z1, clk=>i_clock);
   reg_p22_4 : stratixii_lcell_ff port map ( regout=>p22(4), datain=>
      nx7698z1, clk=>i_clock);
   reg_p22_3 : stratixii_lcell_ff port map ( regout=>p22(3), datain=>
      nx6701z1, clk=>i_clock);
   reg_p22_2 : stratixii_lcell_ff port map ( regout=>p22(2), datain=>
      nx5704z1, clk=>i_clock);
   reg_p22_11 : stratixii_lcell_ff port map ( regout=>p22(11), datain=>
      nx47840z1, clk=>i_clock);
   reg_p22_10 : stratixii_lcell_ff port map ( regout=>p22(10), datain=>
      nx46843z1, clk=>i_clock);
   reg_p22_1 : stratixii_lcell_ff port map ( regout=>p22(1), datain=>
      p22_4n0r3(1), clk=>i_clock);
   reg_p22_0 : stratixii_lcell_ff port map ( regout=>p22(0), datain=>
      p22_4n0r3(0), clk=>i_clock);
   reg_p21_9 : stratixii_lcell_ff port map ( regout=>p21(9), datain=>
      nx44434z1, clk=>i_clock);
   reg_p21_8 : stratixii_lcell_ff port map ( regout=>p21(8), datain=>
      nx45431z1, clk=>i_clock);
   reg_p21_7 : stratixii_lcell_ff port map ( regout=>p21(7), datain=>
      nx46428z1, clk=>i_clock);
   reg_p21_6 : stratixii_lcell_ff port map ( regout=>p21(6), datain=>
      nx47425z1, clk=>i_clock);
   reg_p21_5 : stratixii_lcell_ff port map ( regout=>p21(5), datain=>
      nx48422z1, clk=>i_clock);
   reg_p21_4 : stratixii_lcell_ff port map ( regout=>p21(4), datain=>
      nx49419z1, clk=>i_clock);
   reg_p21_3 : stratixii_lcell_ff port map ( regout=>p21(3), datain=>
      nx50416z1, clk=>i_clock);
   reg_p21_2 : stratixii_lcell_ff port map ( regout=>p21(2), datain=>
      nx51413z1, clk=>i_clock);
   reg_p21_11 : stratixii_lcell_ff port map ( regout=>p21(11), datain=>
      nx52975z1, clk=>i_clock);
   reg_p21_10 : stratixii_lcell_ff port map ( regout=>p21(10), datain=>
      nx51978z1, clk=>i_clock);
   reg_p21_1 : stratixii_lcell_ff port map ( regout=>p21(1), datain=>
      p21_4n0r3(1), clk=>i_clock);
   reg_p21_0 : stratixii_lcell_ff port map ( regout=>p21(0), datain=>
      p21_4n0r3(0), clk=>i_clock);
   reg_max_dir_2 : stratixii_lcell_ff port map ( regout=>o_dir_EXMPLR956(2), 
      datain=>nx25836z1, clk=>i_clock);
   reg_max_dir_1 : stratixii_lcell_ff port map ( regout=>o_dir_EXMPLR956(1), 
      datain=>nx26833z1, clk=>i_clock);
   reg_max_dir_0 : stratixii_lcell_ff port map ( regout=>o_dir_EXMPLR956(0), 
      datain=>p45, clk=>i_clock, ena=>nx60988z1);
   ix35078z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"7fbfdfeff7fbfdfe") 
       port map ( combout=>nx35078z2, dataa=>prev_max(0), datab=>prev_max(2), 
      datac=>prev_max(3), datad=>p43(0), datae=>p43(2), dataf=>p43(3));
   ix35078z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx35078z6, datac=>prev_max(6), datad=>prev_max(7), 
      datae=>p43(6), dataf=>p43(7));
   ix35078z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"cffffcffffcffffc") 
       port map ( combout=>nx35078z5, datab=>nx35078z6, datac=>prev_max(8), 
      datad=>prev_max(9), datae=>p43(8), dataf=>p43(9));
   ix35078z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000084210000") 
       port map ( combout=>nx35078z3, dataa=>prev_max(4), datab=>prev_max(5), 
      datac=>p43(4), datad=>p43(5), datae=>p45, dataf=>o_dir_EXMPLR956(0));
   ix25836z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z6, datab=>nx25836z7, datac=>prev_max(3), 
      datad=>prev_max(4), datae=>p43(3), dataf=>p43(4));
   ix25836z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z5, datab=>nx25836z6, datac=>prev_max(5), 
      datad=>prev_max(6), datae=>p43(5), dataf=>p43(6));
   ix25836z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z4, datab=>nx25836z5, datac=>prev_max(7), 
      datad=>prev_max(8), datae=>p43(7), dataf=>p43(8));
   ix45188z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f000ff00fff0") 
       port map ( combout=>nx45188z7, datac=>p22(0), datad=>p22(1), datae=>
      p21(0), dataf=>p21(1));
   ix45188z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z5, datab=>nx45188z6, datac=>p22(4), datad
      =>p22(5), datae=>p21(4), dataf=>p21(5));
   ix45188z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z3, datab=>nx45188z4, datac=>p22(8), datad
      =>p22(9), datae=>p21(8), dataf=>p21(9));
   ix25836z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z3, datab=>nx25836z4, datac=>prev_max(9), 
      datad=>prev_max(10), datae=>p43(9), dataf=>p43(10));
   ix25836z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"7f3f1f0f07030100") 
       port map ( combout=>nx25836z7, dataa=>prev_max(0), datab=>prev_max(1), 
      datac=>prev_max(2), datad=>p43(0), datae=>p43(1), dataf=>p43(2));
   ix35078z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0030000000000030") 
       port map ( combout=>nx35078z1, datab=>nx35078z2, datac=>nx35078z3, 
      datad=>nx35078z4, datae=>prev_max(1), dataf=>p43(1));
   ix35078z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffff0fffff0") 
       port map ( combout=>nx35078z4, datac=>nx35078z5, datad=>prev_max(10), 
      datae=>p43(10), dataf=>p43(11));
   ix45188z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z6, datab=>nx45188z7, datac=>p22(2), datad
      =>p22(3), datae=>p21(2), dataf=>p21(3));
   ix45188z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z4, datab=>nx45188z5, datac=>p22(6), datad
      =>p22(7), datae=>p21(6), dataf=>p21(7));
   ix58542z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx58542z1, datad=>nx45188z2, datae=>p22(0), dataf
      =>p21(0));
   ix57545z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx57545z1, datad=>nx45188z2, datae=>p22(1), dataf
      =>p21(1));
   ix56548z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx56548z1, datad=>nx45188z2, datae=>p22(2), dataf
      =>p21(2));
   ix55551z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx55551z1, datad=>nx45188z2, datae=>p22(3), dataf
      =>p21(3));
   ix54554z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx54554z1, datad=>nx45188z2, datae=>p22(4), dataf
      =>p21(4));
   ix53557z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx53557z1, datad=>nx45188z2, datae=>p22(5), dataf
      =>p21(5));
   ix52560z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx52560z1, datad=>nx45188z2, datae=>p22(6), dataf
      =>p21(6));
   ix51563z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx51563z1, datad=>nx45188z2, datae=>p22(7), dataf
      =>p21(7));
   ix50566z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx50566z1, datad=>nx45188z2, datae=>p22(8), dataf
      =>p21(8));
   ix49569z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx49569z1, datad=>nx45188z2, datae=>p22(9), dataf
      =>p21(9));
   ix44191z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx44191z1, datad=>nx45188z2, datae=>p22(10), 
      dataf=>p21(10));
   ix45188z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx45188z1, datad=>nx45188z2, datae=>p22(11), 
      dataf=>p21(11));
   ix26833z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"5757575702020200") 
       port map ( combout=>nx26833z1, dataa=>nx25836z2, datab=>state(0), 
      datac=>state(1), datad=>state(2), datae=>state(3), dataf=>
      o_dir_EXMPLR956(1));
   ix25836z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"7577757720222020") 
       port map ( combout=>nx25836z1, dataa=>nx25836z2, datab=>state(0), 
      datac=>state(1), datad=>state(2), datae=>state(3), dataf=>
      o_dir_EXMPLR956(2));
   ix29521z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx29521z1, datae=>state(3), dataf=>i_reset);
   ix28524z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>nx28524z1, datae=>state(0), dataf=>i_reset);
   ix27527z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>nx27527z1, datae=>state(1), dataf=>i_reset);
   ix26530z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>nx26530z1, datae=>state(2), dataf=>i_reset);
   ix28524z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx28524z2, datae=>p40, dataf=>i_reset);
   ix26026z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffffffc0") 
       port map ( combout=>nx26026z1, datab=>p4s(7), datac=>p4s(8), datad=>
      p4s(9), datae=>p4s(10), dataf=>p4s(11));
   ix45188z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"3f000300ff3fff03") 
       port map ( combout=>nx45188z2, datab=>nx45188z3, datac=>p22(10), 
      datad=>p22(11), datae=>p21(10), dataf=>p21(11));
   ix232_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ffffff00") 
       port map ( combout=>nx60988z1, datad=>nx25836z3, datae=>nx35078z1, 
      dataf=>p43(11));
   ix25836z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ffffff00") 
       port map ( combout=>nx25836z2, datad=>nx25836z3, datae=>nx35078z1, 
      dataf=>p43(11));
   ix15976z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>o_mode(0), datae=>p5m(0), dataf=>i_reset);
   ix16973z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>o_mode(1), datae=>p5m(1), dataf=>i_reset);
   ix51998z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ff000000") 
       port map ( combout=>o_valid, datad=>state(3), datae=>p50, dataf=>
      i_reset);
   ix184_reg_p40 : stratixii_lcell_ff port map ( regout=>p40, datain=>
      nx53186z1, clk=>i_clock);
   ix184_reg_p30 : stratixii_lcell_ff port map ( regout=>nx53186z1, datain=>
      p_ix184_ix181_nx7_repl0, clk=>i_clock);
   ix183_reg_p5m_1 : stratixii_lcell_ff port map ( regout=>p5m(1), datain=>
      nx64829z1, clk=>i_clock);
   ix183_reg_p5m_0 : stratixii_lcell_ff port map ( regout=>p5m(0), datain=>
      nx63832z1, clk=>i_clock);
   ix183_reg_p4m_1 : stratixii_lcell_ff port map ( regout=>nx64829z1, datain
      =>nx4428z1, clk=>i_clock);
   ix183_reg_p4m_0 : stratixii_lcell_ff port map ( regout=>nx63832z1, datain
      =>nx3431z1, clk=>i_clock);
   ix183_reg_p3m_1 : stratixii_lcell_ff port map ( regout=>nx4428z1, datain
      =>p_ix183_ix179_nx7_repl0, clk=>i_clock);
   ix183_reg_p3m_0 : stratixii_lcell_ff port map ( regout=>nx3431z1, datain
      =>p_ix183_ix180_nx7_repl0, clk=>i_clock);
   ix182_reg_p5r_7 : stratixii_lcell_ff port map ( regout=>o_row(7), datain
      =>nx24495z1, clk=>i_clock);
   ix182_reg_p5r_6 : stratixii_lcell_ff port map ( regout=>o_row(6), datain
      =>nx23498z1, clk=>i_clock);
   ix182_reg_p5r_5 : stratixii_lcell_ff port map ( regout=>o_row(5), datain
      =>nx22501z1, clk=>i_clock);
   ix182_reg_p5r_4 : stratixii_lcell_ff port map ( regout=>o_row(4), datain
      =>nx21504z1, clk=>i_clock);
   ix182_reg_p5r_3 : stratixii_lcell_ff port map ( regout=>o_row(3), datain
      =>nx20507z1, clk=>i_clock);
   ix182_reg_p5r_2 : stratixii_lcell_ff port map ( regout=>o_row(2), datain
      =>nx19510z1, clk=>i_clock);
   ix182_reg_p5r_1 : stratixii_lcell_ff port map ( regout=>o_row(1), datain
      =>nx18513z1, clk=>i_clock);
   ix182_reg_p5r_0 : stratixii_lcell_ff port map ( regout=>o_row(0), datain
      =>nx17516z1, clk=>i_clock);
   ix182_reg_p4r_7 : stratixii_lcell_ff port map ( regout=>nx24495z1, datain
      =>nx29630z1, clk=>i_clock);
   ix182_reg_p4r_6 : stratixii_lcell_ff port map ( regout=>nx23498z1, datain
      =>nx28633z1, clk=>i_clock);
   ix182_reg_p4r_5 : stratixii_lcell_ff port map ( regout=>nx22501z1, datain
      =>nx27636z1, clk=>i_clock);
   ix182_reg_p4r_4 : stratixii_lcell_ff port map ( regout=>nx21504z1, datain
      =>nx26639z1, clk=>i_clock);
   ix182_reg_p4r_3 : stratixii_lcell_ff port map ( regout=>nx20507z1, datain
      =>nx25642z1, clk=>i_clock);
   ix182_reg_p4r_2 : stratixii_lcell_ff port map ( regout=>nx19510z1, datain
      =>nx24645z1, clk=>i_clock);
   ix182_reg_p4r_1 : stratixii_lcell_ff port map ( regout=>nx18513z1, datain
      =>nx23648z1, clk=>i_clock);
   ix182_reg_p4r_0 : stratixii_lcell_ff port map ( regout=>nx17516z1, datain
      =>nx22651z1, clk=>i_clock);
   ix182_reg_p3r_7 : stratixii_lcell_ff port map ( regout=>nx29630z1, datain
      =>nx34765z1, clk=>i_clock);
   ix182_reg_p3r_6 : stratixii_lcell_ff port map ( regout=>nx28633z1, datain
      =>nx33768z1, clk=>i_clock);
   ix182_reg_p3r_5 : stratixii_lcell_ff port map ( regout=>nx27636z1, datain
      =>nx32771z1, clk=>i_clock);
   ix182_reg_p3r_4 : stratixii_lcell_ff port map ( regout=>nx26639z1, datain
      =>nx31774z1, clk=>i_clock);
   ix182_reg_p3r_3 : stratixii_lcell_ff port map ( regout=>nx25642z1, datain
      =>nx30777z1, clk=>i_clock);
   ix182_reg_p3r_2 : stratixii_lcell_ff port map ( regout=>nx24645z1, datain
      =>nx29780z1, clk=>i_clock);
   ix182_reg_p3r_1 : stratixii_lcell_ff port map ( regout=>nx23648z1, datain
      =>nx28783z1, clk=>i_clock);
   ix182_reg_p3r_0 : stratixii_lcell_ff port map ( regout=>nx22651z1, datain
      =>nx27786z1, clk=>i_clock);
   ix182_reg_p2r_7 : stratixii_lcell_ff port map ( regout=>nx34765z1, datain
      =>i_row(7), clk=>i_clock);
   ix182_reg_p2r_6 : stratixii_lcell_ff port map ( regout=>nx33768z1, datain
      =>i_row(6), clk=>i_clock);
   ix182_reg_p2r_5 : stratixii_lcell_ff port map ( regout=>nx32771z1, datain
      =>i_row(5), clk=>i_clock);
   ix182_reg_p2r_4 : stratixii_lcell_ff port map ( regout=>nx31774z1, datain
      =>i_row(4), clk=>i_clock);
   ix182_reg_p2r_3 : stratixii_lcell_ff port map ( regout=>nx30777z1, datain
      =>i_row(3), clk=>i_clock);
   ix182_reg_p2r_2 : stratixii_lcell_ff port map ( regout=>nx29780z1, datain
      =>i_row(2), clk=>i_clock);
   ix182_reg_p2r_1 : stratixii_lcell_ff port map ( regout=>nx28783z1, datain
      =>i_row(1), clk=>i_clock);
   ix182_reg_p2r_0 : stratixii_lcell_ff port map ( regout=>nx27786z1, datain
      =>i_row(0), clk=>i_clock);
end main ;

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
         GND : IN std_logic ;
         p_ix183_ix179_nx7_repl0 : OUT std_logic ;
         p_ix183_ix180_nx7_repl0 : OUT std_logic) ;
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
         GND : OUT std_logic ;
         p_ix183_ix179_nx7_repl0 : IN std_logic ;
         p_ix183_ix180_nx7_repl0 : IN std_logic ;
         p_f_i1_next_7 : IN std_logic ;
         p_rtlc1n11 : IN std_logic ;
         p_o_image1_0_dup0_7 : IN std_logic ;
         p_f_i1_next_6 : IN std_logic ;
         p_o_image1_0_dup0_6 : IN std_logic ;
         p_f_i1_next_5 : IN std_logic ;
         p_o_image1_0_dup0_5 : IN std_logic ;
         p_f_i1_next_4 : IN std_logic ;
         p_o_image1_0_dup0_4 : IN std_logic ;
         p_f_i1_next_3 : IN std_logic ;
         p_o_image1_0_dup0_3 : IN std_logic ;
         p_f_i1_next_2 : IN std_logic ;
         p_o_image1_0_dup0_2 : IN std_logic ;
         p_f_i1_next_1 : IN std_logic ;
         p_o_image1_0_dup0_1 : IN std_logic ;
         p_f_i1_next_0 : IN std_logic ;
         p_o_image1_0_dup0_0 : IN std_logic ;
         p_f_i2_next_7 : IN std_logic ;
         p_o_image1_2_dup0_7 : IN std_logic ;
         p_f_i2_next_5 : IN std_logic ;
         p_o_image1_2_dup0_5 : IN std_logic ;
         p_f_i2_next_3 : IN std_logic ;
         p_o_image1_2_dup0_3 : IN std_logic ;
         p_f_i2_next_1 : IN std_logic ;
         p_o_image1_2_dup0_1 : IN std_logic ;
         p_ix184_ix181_nx7_repl0 : IN std_logic) ;
   end component ;
   signal i_clock_EXMPLR1000, i_reset_EXMPLR1001, i_valid_EXMPLR1002: 
   std_logic ;
   
   signal i_pixel_EXMPLR1146: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0, o_edge_dup0: std_logic ;
   
   signal o_dir_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
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
   
   signal o_valid_EXMPLR1011, o_edge_EXMPLR1012: std_logic ;
   
   signal o_dir_EXMPLR1147: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR1148: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR1149: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR1150: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR1151: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR1152: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR1153: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR1154: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR1155: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR1156: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR1157: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR1158: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR1159: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR1160: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR1161: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR1162: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR1163: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR1164: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR1165: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR1166: std_logic_vector (3 DOWNTO 0) ;
   
   signal f_t1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_6, f_i2_4, f_i2_2, f_i2_0, debug_num_5_dup0_1: std_logic ;
   
   signal debug_num_5_dup0: std_logic_vector (17 DOWNTO 17) ;
   
   signal nx20836z1, nx51192z1, nx57127z1, nx63959z2, nx61965z1, nx62962z1, 
      nx63959z1, nx64956z1, ix183_ix179_nx7_repl0, ix183_ix180_nx7_repl0, 
      ix184_ix181_nx7_repl0, nx57127z2: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   i_clock_EXMPLR1000 <= i_clock ;
   i_reset_EXMPLR1001 <= i_reset ;
   i_valid_EXMPLR1002 <= i_valid ;
   i_pixel_EXMPLR1146(7) <= i_pixel(7) ;
   i_pixel_EXMPLR1146(6) <= i_pixel(6) ;
   i_pixel_EXMPLR1146(5) <= i_pixel(5) ;
   i_pixel_EXMPLR1146(4) <= i_pixel(4) ;
   i_pixel_EXMPLR1146(3) <= i_pixel(3) ;
   i_pixel_EXMPLR1146(2) <= i_pixel(2) ;
   i_pixel_EXMPLR1146(1) <= i_pixel(1) ;
   i_pixel_EXMPLR1146(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR1011 ;
   o_edge <= o_edge_EXMPLR1012 ;
   o_dir(2) <= o_dir_EXMPLR1147(2) ;
   o_dir(1) <= o_dir_EXMPLR1147(1) ;
   o_dir(0) <= o_dir_EXMPLR1147(0) ;
   o_mode(1) <= o_mode_EXMPLR1148(1) ;
   o_mode(0) <= o_mode_EXMPLR1148(0) ;
   o_row(7) <= o_row_EXMPLR1149(7) ;
   o_row(6) <= o_row_EXMPLR1149(6) ;
   o_row(5) <= o_row_EXMPLR1149(5) ;
   o_row(4) <= o_row_EXMPLR1149(4) ;
   o_row(3) <= o_row_EXMPLR1149(3) ;
   o_row(2) <= o_row_EXMPLR1149(2) ;
   o_row(1) <= o_row_EXMPLR1149(1) ;
   o_row(0) <= o_row_EXMPLR1149(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR1150(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR1150(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR1150(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR1150(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR1150(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR1150(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR1150(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR1150(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR1151(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR1151(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR1151(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR1151(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR1151(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR1151(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR1151(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR1151(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR1152(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR1152(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR1152(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR1152(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR1152(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR1152(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR1152(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR1152(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR1153(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR1153(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR1153(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR1153(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR1153(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR1153(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR1153(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR1153(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR1154(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR1154(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR1154(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR1154(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR1154(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR1154(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR1154(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR1154(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR1155(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR1155(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR1155(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR1155(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR1155(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR1155(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR1155(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR1155(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR1156(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR1156(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR1156(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR1156(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR1156(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR1156(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR1156(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR1156(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR1157(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR1157(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR1157(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR1157(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR1157(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR1157(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR1157(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR1157(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR1158(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR1158(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR1158(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR1158(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR1158(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR1158(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR1158(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR1158(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR1159(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR1159(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR1159(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR1159(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR1159(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR1159(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR1159(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR1159(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR1159(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR1159(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR1159(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR1159(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR1159(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR1159(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR1159(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR1159(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR1159(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR1159(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR1160(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR1160(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR1160(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR1160(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR1160(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR1160(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR1161(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR1161(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR1161(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR1161(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR1162(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR1162(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR1162(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR1162(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR1163(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR1163(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR1163(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR1163(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR1164(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR1164(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR1164(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR1164(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR1165(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR1165(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR1165(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR1165(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR1166(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR1166(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR1166(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR1166(0) ;
   u_memory : memory port map ( i_valid=>i_valid_int, i_reset=>i_reset_int, 
      i_pixel(7)=>i_pixel_int(7), i_pixel(6)=>i_pixel_int(6), i_pixel(5)=>
      i_pixel_int(5), i_pixel(4)=>i_pixel_int(4), i_pixel(3)=>i_pixel_int(3), 
      i_pixel(2)=>i_pixel_int(2), i_pixel(1)=>i_pixel_int(1), i_pixel(0)=>
      i_pixel_int(0), i_clock=>i_clock_int, o_valid=>m_o_valid, o_mode(1)=>
      DANGLING(0), o_mode(0)=>DANGLING(1), o_column(7)=>DANGLING(2), 
      o_column(6)=>DANGLING(3), o_column(5)=>DANGLING(4), o_column(4)=>
      DANGLING(5), o_column(3)=>DANGLING(6), o_column(2)=>DANGLING(7), 
      o_column(1)=>DANGLING(8), o_column(0)=>DANGLING(9), o_row(7)=>
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
      o_image2_2(0)=>o_image2_2_dup0_0, GND=>DANGLING(10), 
      p_ix183_ix179_nx7_repl0=>ix183_ix179_nx7_repl0, 
      p_ix183_ix180_nx7_repl0=>ix183_ix180_nx7_repl0);
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
      f_b3(0), i1(7)=>DANGLING(11), i1(6)=>DANGLING(12), i1(5)=>DANGLING(13), 
      i1(4)=>DANGLING(14), i1(3)=>DANGLING(15), i1(2)=>DANGLING(16), i1(1)=>
      DANGLING(17), i1(0)=>DANGLING(18), i2(7)=>DANGLING(19), i2(6)=>f_i2_6, 
      i2(5)=>DANGLING(20), i2(4)=>f_i2_4, i2(3)=>DANGLING(21), i2(2)=>f_i2_2, 
      i2(1)=>DANGLING(22), i2(0)=>f_i2_0, i_clock=>i_clock_int, i_reset=>
      i_reset_int, i_valid=>DANGLING(23), i_mode(1)=>DANGLING(24), i_mode(0)
      =>DANGLING(25), i_row(7)=>m_o_row(7), i_row(6)=>m_o_row(6), i_row(5)=>
      m_o_row(5), i_row(4)=>m_o_row(4), i_row(3)=>m_o_row(3), i_row(2)=>
      m_o_row(2), i_row(1)=>m_o_row(1), i_row(0)=>m_o_row(0), o_dir(2)=>
      o_dir_dup0(2), o_dir(1)=>o_dir_dup0(1), o_dir(0)=>o_dir_dup0(0), 
      o_edge=>o_edge_dup0, o_valid=>o_valid_dup0, o_mode(1)=>o_mode_dup0(1), 
      o_mode(0)=>o_mode_dup0(0), o_row(7)=>o_row_dup0(7), o_row(6)=>
      o_row_dup0(6), o_row(5)=>o_row_dup0(5), o_row(4)=>o_row_dup0(4), 
      o_row(3)=>o_row_dup0(3), o_row(2)=>o_row_dup0(2), o_row(1)=>
      o_row_dup0(1), o_row(0)=>o_row_dup0(0), GND=>DANGLING(26), 
      p_ix183_ix179_nx7_repl0=>ix183_ix179_nx7_repl0, 
      p_ix183_ix180_nx7_repl0=>ix183_ix180_nx7_repl0, p_f_i1_next_7=>
      f_i1_next(7), p_rtlc1n11=>nx20836z1, p_o_image1_0_dup0_7=>
      o_image1_dup0(7), p_f_i1_next_6=>f_i1_next(6), p_o_image1_0_dup0_6=>
      o_image1_dup0(6), p_f_i1_next_5=>f_i1_next(5), p_o_image1_0_dup0_5=>
      o_image1_dup0(5), p_f_i1_next_4=>f_i1_next(4), p_o_image1_0_dup0_4=>
      o_image1_dup0(4), p_f_i1_next_3=>f_i1_next(3), p_o_image1_0_dup0_3=>
      o_image1_dup0(3), p_f_i1_next_2=>f_i1_next(2), p_o_image1_0_dup0_2=>
      o_image1_dup0(2), p_f_i1_next_1=>f_i1_next(1), p_o_image1_0_dup0_1=>
      o_image1_dup0(1), p_f_i1_next_0=>f_i1_next(0), p_o_image1_0_dup0_0=>
      o_image1_dup0(0), p_f_i2_next_7=>f_i2_next(7), p_o_image1_2_dup0_7=>
      o_image1_2_dup0_7, p_f_i2_next_5=>f_i2_next(5), p_o_image1_2_dup0_5=>
      o_image1_2_dup0_5, p_f_i2_next_3=>f_i2_next(3), p_o_image1_2_dup0_3=>
      o_image1_2_dup0_3, p_f_i2_next_1=>f_i2_next(1), p_o_image1_2_dup0_1=>
      o_image1_2_dup0_1, p_ix184_ix181_nx7_repl0=>ix184_ix181_nx7_repl0);
   debug_num_5_dup0_1 <= '1';
   debug_num_5_dup0(17) <= '0';
   reg_f_t3_next_7 : stratixii_lcell_ff port map ( regout=>f_t3_next(7), 
      datain=>f_i1_next(7), adatasdata=>o_image1_dup0(7), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_6 : stratixii_lcell_ff port map ( regout=>f_t3_next(6), 
      datain=>f_i1_next(6), adatasdata=>o_image1_dup0(6), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_5 : stratixii_lcell_ff port map ( regout=>f_t3_next(5), 
      datain=>f_i1_next(5), adatasdata=>o_image1_dup0(5), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_4 : stratixii_lcell_ff port map ( regout=>f_t3_next(4), 
      datain=>f_i1_next(4), adatasdata=>o_image1_dup0(4), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_3 : stratixii_lcell_ff port map ( regout=>f_t3_next(3), 
      datain=>f_i1_next(3), adatasdata=>o_image1_dup0(3), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_2 : stratixii_lcell_ff port map ( regout=>f_t3_next(2), 
      datain=>f_i1_next(2), adatasdata=>o_image1_dup0(2), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_1 : stratixii_lcell_ff port map ( regout=>f_t3_next(1), 
      datain=>f_i1_next(1), adatasdata=>o_image1_dup0(1), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_0 : stratixii_lcell_ff port map ( regout=>f_t3_next(0), 
      datain=>f_i1_next(0), adatasdata=>o_image1_dup0(0), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_7 : stratixii_lcell_ff port map ( regout=>f_t2_next(7), 
      datain=>f_t3_next(7), adatasdata=>o_image0_dup0(7), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_6 : stratixii_lcell_ff port map ( regout=>f_t2_next(6), 
      datain=>f_t3_next(6), adatasdata=>o_image0_dup0(6), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_5 : stratixii_lcell_ff port map ( regout=>f_t2_next(5), 
      datain=>f_t3_next(5), adatasdata=>o_image0_dup0(5), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_4 : stratixii_lcell_ff port map ( regout=>f_t2_next(4), 
      datain=>f_t3_next(4), adatasdata=>o_image0_dup0(4), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_3 : stratixii_lcell_ff port map ( regout=>f_t2_next(3), 
      datain=>f_t3_next(3), adatasdata=>o_image0_dup0(3), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_2 : stratixii_lcell_ff port map ( regout=>f_t2_next(2), 
      datain=>f_t3_next(2), adatasdata=>o_image0_dup0(2), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_1 : stratixii_lcell_ff port map ( regout=>f_t2_next(1), 
      datain=>f_t3_next(1), adatasdata=>o_image0_dup0(1), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_0 : stratixii_lcell_ff port map ( regout=>f_t2_next(0), 
      datain=>f_t3_next(0), adatasdata=>o_image0_dup0(0), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_7 : stratixii_lcell_ff port map ( regout=>f_t1_next(7), 
      datain=>f_t2_next(7), adatasdata=>o_image0_1_dup0_7, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_6 : stratixii_lcell_ff port map ( regout=>f_t1_next(6), 
      datain=>f_t2_next(6), adatasdata=>o_image0_1_dup0_6, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_5 : stratixii_lcell_ff port map ( regout=>f_t1_next(5), 
      datain=>f_t2_next(5), adatasdata=>o_image0_1_dup0_5, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_4 : stratixii_lcell_ff port map ( regout=>f_t1_next(4), 
      datain=>f_t2_next(4), adatasdata=>o_image0_1_dup0_4, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_3 : stratixii_lcell_ff port map ( regout=>f_t1_next(3), 
      datain=>f_t2_next(3), adatasdata=>o_image0_1_dup0_3, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_2 : stratixii_lcell_ff port map ( regout=>f_t1_next(2), 
      datain=>f_t2_next(2), adatasdata=>o_image0_1_dup0_2, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_1 : stratixii_lcell_ff port map ( regout=>f_t1_next(1), 
      datain=>f_t2_next(1), adatasdata=>o_image0_1_dup0_1, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_0 : stratixii_lcell_ff port map ( regout=>f_t1_next(0), 
      datain=>f_t2_next(0), adatasdata=>o_image0_1_dup0_0, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_state_3 : stratixii_lcell_ff port map ( regout=>f_state(3), datain
      =>nx61965z1, clk=>i_clock_int, ena=>nx63959z2);
   reg_f_state_2 : stratixii_lcell_ff port map ( regout=>f_state(2), datain
      =>nx62962z1, clk=>i_clock_int, ena=>nx63959z2);
   reg_f_state_1 : stratixii_lcell_ff port map ( regout=>f_state(1), datain
      =>nx63959z1, clk=>i_clock_int, ena=>nx63959z2);
   reg_f_state_0 : stratixii_lcell_ff port map ( regout=>f_state(0), datain
      =>nx64956z1, clk=>i_clock_int, ena=>nx63959z2);
   reg_f_i2_next_7 : stratixii_lcell_ff port map ( regout=>f_i2_next(7), 
      datain=>f_t1_next(7), adatasdata=>o_image0_2_dup0_7, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_6 : stratixii_lcell_ff port map ( regout=>f_i2_next(6), 
      datain=>f_t1_next(6), adatasdata=>o_image0_2_dup0_6, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_5 : stratixii_lcell_ff port map ( regout=>f_i2_next(5), 
      datain=>f_t1_next(5), adatasdata=>o_image0_2_dup0_5, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_4 : stratixii_lcell_ff port map ( regout=>f_i2_next(4), 
      datain=>f_t1_next(4), adatasdata=>o_image0_2_dup0_4, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_3 : stratixii_lcell_ff port map ( regout=>f_i2_next(3), 
      datain=>f_t1_next(3), adatasdata=>o_image0_2_dup0_3, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_2 : stratixii_lcell_ff port map ( regout=>f_i2_next(2), 
      datain=>f_t1_next(2), adatasdata=>o_image0_2_dup0_2, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_1 : stratixii_lcell_ff port map ( regout=>f_i2_next(1), 
      datain=>f_t1_next(1), adatasdata=>o_image0_2_dup0_1, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_0 : stratixii_lcell_ff port map ( regout=>f_i2_next(0), 
      datain=>f_t1_next(0), adatasdata=>o_image0_2_dup0_0, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_7 : stratixii_lcell_ff port map ( regout=>f_i1_next(7), 
      datain=>f_b1_next(7), adatasdata=>o_image2_dup0(7), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_6 : stratixii_lcell_ff port map ( regout=>f_i1_next(6), 
      datain=>f_b1_next(6), adatasdata=>o_image2_dup0(6), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_5 : stratixii_lcell_ff port map ( regout=>f_i1_next(5), 
      datain=>f_b1_next(5), adatasdata=>o_image2_dup0(5), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_4 : stratixii_lcell_ff port map ( regout=>f_i1_next(4), 
      datain=>f_b1_next(4), adatasdata=>o_image2_dup0(4), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_3 : stratixii_lcell_ff port map ( regout=>f_i1_next(3), 
      datain=>f_b1_next(3), adatasdata=>o_image2_dup0(3), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_2 : stratixii_lcell_ff port map ( regout=>f_i1_next(2), 
      datain=>f_b1_next(2), adatasdata=>o_image2_dup0(2), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_1 : stratixii_lcell_ff port map ( regout=>f_i1_next(1), 
      datain=>f_b1_next(1), adatasdata=>o_image2_dup0(1), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_0 : stratixii_lcell_ff port map ( regout=>f_i1_next(0), 
      datain=>f_b1_next(0), adatasdata=>o_image2_dup0(0), clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_7 : stratixii_lcell_ff port map ( regout=>f_b3_next(7), 
      datain=>f_i2_next(7), adatasdata=>o_image1_2_dup0_7, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_6 : stratixii_lcell_ff port map ( regout=>f_b3_next(6), 
      datain=>f_i2_next(6), adatasdata=>o_image1_2_dup0_6, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_5 : stratixii_lcell_ff port map ( regout=>f_b3_next(5), 
      datain=>f_i2_next(5), adatasdata=>o_image1_2_dup0_5, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_4 : stratixii_lcell_ff port map ( regout=>f_b3_next(4), 
      datain=>f_i2_next(4), adatasdata=>o_image1_2_dup0_4, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_3 : stratixii_lcell_ff port map ( regout=>f_b3_next(3), 
      datain=>f_i2_next(3), adatasdata=>o_image1_2_dup0_3, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_2 : stratixii_lcell_ff port map ( regout=>f_b3_next(2), 
      datain=>f_i2_next(2), adatasdata=>o_image1_2_dup0_2, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_1 : stratixii_lcell_ff port map ( regout=>f_b3_next(1), 
      datain=>f_i2_next(1), adatasdata=>o_image1_2_dup0_1, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_0 : stratixii_lcell_ff port map ( regout=>f_b3_next(0), 
      datain=>f_i2_next(0), adatasdata=>o_image1_2_dup0_0, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_7 : stratixii_lcell_ff port map ( regout=>f_b2_next(7), 
      datain=>f_b3_next(7), adatasdata=>o_image2_2_dup0_7, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_6 : stratixii_lcell_ff port map ( regout=>f_b2_next(6), 
      datain=>f_b3_next(6), adatasdata=>o_image2_2_dup0_6, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_5 : stratixii_lcell_ff port map ( regout=>f_b2_next(5), 
      datain=>f_b3_next(5), adatasdata=>o_image2_2_dup0_5, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_4 : stratixii_lcell_ff port map ( regout=>f_b2_next(4), 
      datain=>f_b3_next(4), adatasdata=>o_image2_2_dup0_4, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_3 : stratixii_lcell_ff port map ( regout=>f_b2_next(3), 
      datain=>f_b3_next(3), adatasdata=>o_image2_2_dup0_3, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_2 : stratixii_lcell_ff port map ( regout=>f_b2_next(2), 
      datain=>f_b3_next(2), adatasdata=>o_image2_2_dup0_2, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_1 : stratixii_lcell_ff port map ( regout=>f_b2_next(1), 
      datain=>f_b3_next(1), adatasdata=>o_image2_2_dup0_1, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_0 : stratixii_lcell_ff port map ( regout=>f_b2_next(0), 
      datain=>f_b3_next(0), adatasdata=>o_image2_2_dup0_0, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_7 : stratixii_lcell_ff port map ( regout=>f_b1_next(7), 
      datain=>f_b2_next(7), adatasdata=>o_image2_1_dup0_7, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_6 : stratixii_lcell_ff port map ( regout=>f_b1_next(6), 
      datain=>f_b2_next(6), adatasdata=>o_image2_1_dup0_6, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_5 : stratixii_lcell_ff port map ( regout=>f_b1_next(5), 
      datain=>f_b2_next(5), adatasdata=>o_image2_1_dup0_5, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_4 : stratixii_lcell_ff port map ( regout=>f_b1_next(4), 
      datain=>f_b2_next(4), adatasdata=>o_image2_1_dup0_4, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_3 : stratixii_lcell_ff port map ( regout=>f_b1_next(3), 
      datain=>f_b2_next(3), adatasdata=>o_image2_1_dup0_3, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_2 : stratixii_lcell_ff port map ( regout=>f_b1_next(2), 
      datain=>f_b2_next(2), adatasdata=>o_image2_1_dup0_2, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_1 : stratixii_lcell_ff port map ( regout=>f_b1_next(1), 
      datain=>f_b2_next(1), adatasdata=>o_image2_1_dup0_1, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_0 : stratixii_lcell_ff port map ( regout=>f_b1_next(0), 
      datain=>f_b2_next(0), adatasdata=>o_image2_1_dup0_0, clk=>i_clock_int, 
      ena=>nx57127z1, sload=>nx57127z2);
   o_valid_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR1011, datain=>o_valid_dup0);
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1149(0), datain=>o_row_dup0(0));
   o_mode_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1148(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1148(0), datain=>o_mode_dup0(0));
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR1158(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR1158(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR1158(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR1158(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR1158(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR1158(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR1158(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR1158(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR1157(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR1157(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR1157(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR1157(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR1157(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR1157(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR1157(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR1157(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR1156(7), datain=>o_image2_dup0(7)
   );
   o_image2_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(6), datain=>o_image2_dup0(6)
   );
   o_image2_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(5), datain=>o_image2_dup0(5)
   );
   o_image2_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(4), datain=>o_image2_dup0(4)
   );
   o_image2_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(3), datain=>o_image2_dup0(3)
   );
   o_image2_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(2), datain=>o_image2_dup0(2)
   );
   o_image2_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(1), datain=>o_image2_dup0(1)
   );
   o_image2_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR1156(0), datain=>o_image2_dup0(0)
   );
   o_image1_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR1155(7), datain=>o_image1_2_dup0_7
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
       port map ( padio=>o_image1_2_EXMPLR1155(6), datain=>o_image1_2_dup0_6
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
       port map ( padio=>o_image1_2_EXMPLR1155(5), datain=>o_image1_2_dup0_5
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
       port map ( padio=>o_image1_2_EXMPLR1155(4), datain=>o_image1_2_dup0_4
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
       port map ( padio=>o_image1_2_EXMPLR1155(3), datain=>o_image1_2_dup0_3
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
       port map ( padio=>o_image1_2_EXMPLR1155(2), datain=>o_image1_2_dup0_2
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
       port map ( padio=>o_image1_2_EXMPLR1155(1), datain=>o_image1_2_dup0_1
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
       port map ( padio=>o_image1_2_EXMPLR1155(0), datain=>o_image1_2_dup0_0
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
       port map ( padio=>o_image1_1_EXMPLR1154(7), datain=>o_image1_1_dup0_7
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
       port map ( padio=>o_image1_1_EXMPLR1154(6), datain=>o_image1_1_dup0_6
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
       port map ( padio=>o_image1_1_EXMPLR1154(5), datain=>o_image1_1_dup0_5
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
       port map ( padio=>o_image1_1_EXMPLR1154(4), datain=>o_image1_1_dup0_4
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
       port map ( padio=>o_image1_1_EXMPLR1154(3), datain=>o_image1_1_dup0_3
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
       port map ( padio=>o_image1_1_EXMPLR1154(2), datain=>o_image1_1_dup0_2
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
       port map ( padio=>o_image1_1_EXMPLR1154(1), datain=>o_image1_1_dup0_1
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
       port map ( padio=>o_image1_1_EXMPLR1154(0), datain=>o_image1_1_dup0_0
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
       port map ( padio=>o_image1_0_EXMPLR1153(7), datain=>o_image1_dup0(7)
   );
   o_image1_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(6), datain=>o_image1_dup0(6)
   );
   o_image1_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(5), datain=>o_image1_dup0(5)
   );
   o_image1_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(4), datain=>o_image1_dup0(4)
   );
   o_image1_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(3), datain=>o_image1_dup0(3)
   );
   o_image1_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(2), datain=>o_image1_dup0(2)
   );
   o_image1_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(1), datain=>o_image1_dup0(1)
   );
   o_image1_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR1153(0), datain=>o_image1_dup0(0)
   );
   o_image0_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR1152(7), datain=>o_image0_2_dup0_7
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
       port map ( padio=>o_image0_2_EXMPLR1152(6), datain=>o_image0_2_dup0_6
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
       port map ( padio=>o_image0_2_EXMPLR1152(5), datain=>o_image0_2_dup0_5
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
       port map ( padio=>o_image0_2_EXMPLR1152(4), datain=>o_image0_2_dup0_4
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
       port map ( padio=>o_image0_2_EXMPLR1152(3), datain=>o_image0_2_dup0_3
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
       port map ( padio=>o_image0_2_EXMPLR1152(2), datain=>o_image0_2_dup0_2
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
       port map ( padio=>o_image0_2_EXMPLR1152(1), datain=>o_image0_2_dup0_1
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
       port map ( padio=>o_image0_2_EXMPLR1152(0), datain=>o_image0_2_dup0_0
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
       port map ( padio=>o_image0_1_EXMPLR1151(7), datain=>o_image0_1_dup0_7
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
       port map ( padio=>o_image0_1_EXMPLR1151(6), datain=>o_image0_1_dup0_6
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
       port map ( padio=>o_image0_1_EXMPLR1151(5), datain=>o_image0_1_dup0_5
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
       port map ( padio=>o_image0_1_EXMPLR1151(4), datain=>o_image0_1_dup0_4
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
       port map ( padio=>o_image0_1_EXMPLR1151(3), datain=>o_image0_1_dup0_3
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
       port map ( padio=>o_image0_1_EXMPLR1151(2), datain=>o_image0_1_dup0_2
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
       port map ( padio=>o_image0_1_EXMPLR1151(1), datain=>o_image0_1_dup0_1
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
       port map ( padio=>o_image0_1_EXMPLR1151(0), datain=>o_image0_1_dup0_0
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
       port map ( padio=>o_image0_0_EXMPLR1150(7), datain=>o_image0_dup0(7)
   );
   o_image0_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(6), datain=>o_image0_dup0(6)
   );
   o_image0_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(5), datain=>o_image0_dup0(5)
   );
   o_image0_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(4), datain=>o_image0_dup0(4)
   );
   o_image0_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(3), datain=>o_image0_dup0(3)
   );
   o_image0_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(2), datain=>o_image0_dup0(2)
   );
   o_image0_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(1), datain=>o_image0_dup0(1)
   );
   o_image0_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR1150(0), datain=>o_image0_dup0(0)
   );
   o_edge_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR1012, datain=>o_edge_dup0);
   o_dir_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1147(2), datain=>o_dir_dup0(2));
   o_dir_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1147(1), datain=>o_dir_dup0(1));
   o_dir_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1147(0), datain=>o_dir_dup0(0));
   ix20836z37235 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(6), datad=>o_image2_1_dup0_6, datae=>
      nx20836z1, dataf=>f_b2_next(6));
   ix20836z37234 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(7), datad=>o_image2_1_dup0_7, datae=>
      nx20836z1, dataf=>f_b2_next(7));
   ix20836z37233 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(0), datad=>o_image2_dup0(0), datae=>
      nx20836z1, dataf=>f_b1_next(0));
   ix20836z37232 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(1), datad=>o_image2_dup0(1), datae=>
      nx20836z1, dataf=>f_b1_next(1));
   ix20836z37231 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(2), datad=>o_image2_dup0(2), datae=>
      nx20836z1, dataf=>f_b1_next(2));
   ix20836z37230 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(3), datad=>o_image2_dup0(3), datae=>
      nx20836z1, dataf=>f_b1_next(3));
   ix20836z37229 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(4), datad=>o_image2_dup0(4), datae=>
      nx20836z1, dataf=>f_b1_next(4));
   ix20836z37228 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(5), datad=>o_image2_dup0(5), datae=>
      nx20836z1, dataf=>f_b1_next(5));
   ix20836z37227 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(6), datad=>o_image2_dup0(6), datae=>
      nx20836z1, dataf=>f_b1_next(6));
   ix20836z37226 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(7), datad=>o_image2_dup0(7), datae=>
      nx20836z1, dataf=>f_b1_next(7));
   ix20836z37225 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(0), datad=>o_image0_dup0(0), datae=>
      nx20836z1, dataf=>f_t3_next(0));
   ix20836z37224 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(1), datad=>o_image0_dup0(1), datae=>
      nx20836z1, dataf=>f_t3_next(1));
   ix20836z37223 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(2), datad=>o_image0_dup0(2), datae=>
      nx20836z1, dataf=>f_t3_next(2));
   ix20836z37222 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(3), datad=>o_image0_dup0(3), datae=>
      nx20836z1, dataf=>f_t3_next(3));
   ix20836z37221 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(4), datad=>o_image0_dup0(4), datae=>
      nx20836z1, dataf=>f_t3_next(4));
   ix20836z37220 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(5), datad=>o_image0_dup0(5), datae=>
      nx20836z1, dataf=>f_t3_next(5));
   ix20836z37219 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(6), datad=>o_image0_dup0(6), datae=>
      nx20836z1, dataf=>f_t3_next(6));
   ix20836z37218 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(7), datad=>o_image0_dup0(7), datae=>
      nx20836z1, dataf=>f_t3_next(7));
   ix20836z37217 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(0), datad=>o_image0_1_dup0_0, datae=>
      nx20836z1, dataf=>f_t2_next(0));
   ix20836z37216 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(1), datad=>o_image0_1_dup0_1, datae=>
      nx20836z1, dataf=>f_t2_next(1));
   ix20836z37215 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(2), datad=>o_image0_1_dup0_2, datae=>
      nx20836z1, dataf=>f_t2_next(2));
   ix20836z37214 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(3), datad=>o_image0_1_dup0_3, datae=>
      nx20836z1, dataf=>f_t2_next(3));
   ix20836z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(4), datad=>o_image0_1_dup0_4, datae=>
      nx20836z1, dataf=>f_t2_next(4));
   ix20836z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(5), datad=>o_image0_1_dup0_5, datae=>
      nx20836z1, dataf=>f_t2_next(5));
   ix20836z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(6), datad=>o_image0_1_dup0_6, datae=>
      nx20836z1, dataf=>f_t2_next(6));
   ix20836z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(7), datad=>o_image0_1_dup0_7, datae=>
      nx20836z1, dataf=>f_t2_next(7));
   ix20836z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(0), datad=>o_image0_2_dup0_0, datae=>
      nx20836z1, dataf=>f_t1_next(0));
   ix20836z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(1), datad=>o_image0_2_dup0_1, datae=>
      nx20836z1, dataf=>f_t1_next(1));
   ix20836z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(2), datad=>o_image0_2_dup0_2, datae=>
      nx20836z1, dataf=>f_t1_next(2));
   ix20836z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(3), datad=>o_image0_2_dup0_3, datae=>
      nx20836z1, dataf=>f_t1_next(3));
   ix20836z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(4), datad=>o_image0_2_dup0_4, datae=>
      nx20836z1, dataf=>f_t1_next(4));
   ix20836z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(5), datad=>o_image0_2_dup0_5, datae=>
      nx20836z1, dataf=>f_t1_next(5));
   ix20836z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(6), datad=>o_image0_2_dup0_6, datae=>
      nx20836z1, dataf=>f_t1_next(6));
   ix20836z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(7), datad=>o_image0_2_dup0_7, datae=>
      nx20836z1, dataf=>f_t1_next(7));
   ix184_reg_p20 : stratixii_lcell_ff port map ( regout=>
      ix184_ix181_nx7_repl0, datain=>nx51192z1, clk=>i_clock_int);
   ix64956z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx64956z1, datae=>i_reset_int, dataf=>f_state(3)
   );
   ix63959z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx63959z1, datae=>i_reset_int, dataf=>f_state(0)
   );
   ix62962z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx62962z1, datae=>i_reset_int, dataf=>f_state(1)
   );
   ix61965z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx61965z1, datae=>i_reset_int, dataf=>f_state(2)
   );
   ix63959z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx63959z2, datae=>i_reset_int, dataf=>m_o_valid);
   ix57127z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx57127z1, datae=>i_reset_int, dataf=>m_o_valid);
   ix51192z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffff0000ffff") 
       port map ( combout=>nx51192z1, datae=>nx20836z1, dataf=>m_o_valid);
   ix130_repl : stratixii_lcell_comb
      generic map (lut_mask => X"00000000000000f0") 
       port map ( combout=>nx57127z2, datac=>f_state(0), datad=>f_state(1), 
      datae=>f_state(2), dataf=>f_state(3));
   ix20836z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000000000f0") 
       port map ( combout=>nx20836z1, datac=>f_state(0), datad=>f_state(1), 
      datae=>f_state(2), dataf=>f_state(3));
   ix20836z37253 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_0, datad=>o_image1_2_dup0_0, datae=>
      nx20836z1, dataf=>f_i2_next(0));
   ix20836z37252 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_2, datad=>o_image1_2_dup0_2, datae=>
      nx20836z1, dataf=>f_i2_next(2));
   ix20836z37251 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_4, datad=>o_image1_2_dup0_4, datae=>
      nx20836z1, dataf=>f_i2_next(4));
   ix20836z37250 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_6, datad=>o_image1_2_dup0_6, datae=>
      nx20836z1, dataf=>f_i2_next(6));
   ix20836z37249 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(0), datad=>o_image2_2_dup0_0, datae=>
      nx20836z1, dataf=>f_b3_next(0));
   ix20836z37248 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(1), datad=>o_image2_2_dup0_1, datae=>
      nx20836z1, dataf=>f_b3_next(1));
   ix20836z37247 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(2), datad=>o_image2_2_dup0_2, datae=>
      nx20836z1, dataf=>f_b3_next(2));
   ix20836z37246 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(3), datad=>o_image2_2_dup0_3, datae=>
      nx20836z1, dataf=>f_b3_next(3));
   ix20836z37245 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(4), datad=>o_image2_2_dup0_4, datae=>
      nx20836z1, dataf=>f_b3_next(4));
   ix20836z37244 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(5), datad=>o_image2_2_dup0_5, datae=>
      nx20836z1, dataf=>f_b3_next(5));
   ix20836z37243 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(6), datad=>o_image2_2_dup0_6, datae=>
      nx20836z1, dataf=>f_b3_next(6));
   ix20836z37242 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(7), datad=>o_image2_2_dup0_7, datae=>
      nx20836z1, dataf=>f_b3_next(7));
   ix20836z37241 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(0), datad=>o_image2_1_dup0_0, datae=>
      nx20836z1, dataf=>f_b2_next(0));
   ix20836z37240 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(1), datad=>o_image2_1_dup0_1, datae=>
      nx20836z1, dataf=>f_b2_next(1));
   ix20836z37239 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(2), datad=>o_image2_1_dup0_2, datae=>
      nx20836z1, dataf=>f_b2_next(2));
   ix20836z37238 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(3), datad=>o_image2_1_dup0_3, datae=>
      nx20836z1, dataf=>f_b2_next(3));
   ix20836z37237 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(4), datad=>o_image2_1_dup0_4, datae=>
      nx20836z1, dataf=>f_b2_next(4));
   ix20836z37236 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(5), datad=>o_image2_1_dup0_5, datae=>
      nx20836z1, dataf=>f_b2_next(5));
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR1002);
   i_reset_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR1001);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR1146(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR1146(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR1146(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR1146(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR1146(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR1146(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR1146(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR1146(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR1000);
   debug_num_5_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1166(3), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR1166(2), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR1166(1), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR1166(0), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR1165(3), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR1165(2), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR1165(1), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR1165(0), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR1164(3), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR1164(2), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR1164(1), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR1164(0), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1163(3), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1163(2), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1163(1), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR1163(0), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR1162(3), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR1162(2), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR1162(1), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR1162(0), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1161(3), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1161(2), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1161(1), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR1161(0), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(9), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(8), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(7), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(6), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(5), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(4), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(3), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(2), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(17), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(16), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(15), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(14), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(13), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(12), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(11), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(10), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(1), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1159(0), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1160(5), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1160(4), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1160(3), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1160(2), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1160(1), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1160(0), datain=>
      debug_num_5_dup0(17));
end main ;

