
-- 
-- Definition of  kirsch
-- 
--      Sun Jul 20 17:24:55 2014
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
   signal GND_EXMPLR444, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
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
   GND_EXMPLR444 <= '0';
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
      cin=>GND_EXMPLR444);
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
   signal GND_EXMPLR446, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
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
   GND_EXMPLR446 <= '0';
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
      cin=>GND_EXMPLR446);
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
   signal ena1_EXMPLR474: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR474, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR474 <= '1';
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
   signal ena1_EXMPLR504: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR504, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR504 <= '1';
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
   signal ena1_EXMPLR534: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR534, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR534 <= '1';
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
   signal o_valid_EXMPLR552: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc0n0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR649: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR650: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR651: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR652: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR653: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR654: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn_current_3n4ss1_2, mem_wrn_current_3n4ss1_1, nx47386z4, 
      nx47386z1: std_logic ;
   
   signal buffer2_4n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx60567z3, nx57224z1, nx17757z1, nx16760z1, nx15763z1, nx33254z1, 
      nx60567z1, nx47386z2, nx39109z2, nx62359z1, nx61362z1, nx60365z1, 
      nx59368z1, nx58371z1, nx57374z1, nx56377z1, nx55380z1, nx63578z1, 
      nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, nx4024z1, nx5021z1, 
      nx39109z1, nx47386z5, nx60567z2, nx60567z4, nx47386z3, 
      first_bubble_repl, nx47386z6, nx8852z1: std_logic ;
   
   signal DANGLING : std_logic_vector (41 downto 0 );

begin
   o_valid <= o_valid_EXMPLR552 ;
   o_image1_0(7) <= o_image1_0_EXMPLR649(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR649(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR649(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR649(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR649(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR649(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR649(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR649(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR650(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR650(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR650(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR650(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR650(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR650(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR650(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR650(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR651(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR651(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR651(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR651(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR651(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR651(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR651(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR651(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR652(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR652(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR652(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR652(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR652(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR652(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR652(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR652(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR653(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR653(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR653(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR653(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR653(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR653(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR653(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR653(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR654(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR654(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR654(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR654(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR654(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR654(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR654(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR654(0) ;
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
   o_mode(1) <= NOT i_reset;
   reg_o_valid : stratixii_lcell_ff port map ( regout=>o_valid_EXMPLR552, 
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
   reg_o_column_7 : stratixii_lcell_ff port map ( regout=>o_column(7), 
      datain=>column(7), clk=>i_clock);
   reg_o_column_6 : stratixii_lcell_ff port map ( regout=>o_column(6), 
      datain=>column(6), clk=>i_clock);
   reg_o_column_5 : stratixii_lcell_ff port map ( regout=>o_column(5), 
      datain=>column(5), clk=>i_clock);
   reg_o_column_4 : stratixii_lcell_ff port map ( regout=>o_column(4), 
      datain=>column(4), clk=>i_clock);
   reg_o_column_3 : stratixii_lcell_ff port map ( regout=>o_column(3), 
      datain=>column(3), clk=>i_clock);
   reg_o_column_2 : stratixii_lcell_ff port map ( regout=>o_column(2), 
      datain=>column(2), clk=>i_clock);
   reg_o_column_1 : stratixii_lcell_ff port map ( regout=>o_column(1), 
      datain=>column(1), clk=>i_clock);
   reg_o_column_0 : stratixii_lcell_ff port map ( regout=>o_column(0), 
      datain=>column(0), clk=>i_clock);
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
      o_image2_2_EXMPLR654(7), datain=>mem_q_2(7), adatasdata=>rtlc0n0(7), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_6 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(6), datain=>mem_q_2(6), adatasdata=>rtlc0n0(6), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_5 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(5), datain=>mem_q_2(5), adatasdata=>rtlc0n0(5), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_4 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(4), datain=>mem_q_2(4), adatasdata=>rtlc0n0(4), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_3 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(3), datain=>mem_q_2(3), adatasdata=>rtlc0n0(3), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_2 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(2), datain=>mem_q_2(2), adatasdata=>rtlc0n0(2), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_1 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(1), datain=>mem_q_2(1), adatasdata=>rtlc0n0(1), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_0 : stratixii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR654(0), datain=>mem_q_2(0), adatasdata=>rtlc0n0(0), 
      clk=>i_clock, ena=>first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_1_7 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(7), datain=>nx62359z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_6 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(6), datain=>nx61362z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_5 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(5), datain=>nx60365z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_4 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(4), datain=>nx59368z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_3 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(3), datain=>nx58371z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_2 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(2), datain=>nx57374z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_1 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(1), datain=>nx56377z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_1_0 : stratixii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR653(0), datain=>nx55380z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_7 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(7), datain=>nx63578z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_6 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(6), datain=>nx64575z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_5 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(5), datain=>nx36z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_4 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(4), datain=>nx1033z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_3 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(3), datain=>nx2030z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_2 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(2), datain=>nx3027z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_1 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(1), datain=>nx4024z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer2_0_0 : stratixii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR652(0), datain=>nx5021z1, clk=>i_clock, ena=>
      first_bubble_repl);
   reg_buffer1_2_7 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(7), datain=>o_image2_2_EXMPLR654(7), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_6 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(6), datain=>o_image2_2_EXMPLR654(6), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_5 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(5), datain=>o_image2_2_EXMPLR654(5), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_4 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(4), datain=>o_image2_2_EXMPLR654(4), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_3 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(3), datain=>o_image2_2_EXMPLR654(3), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_2 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(2), datain=>o_image2_2_EXMPLR654(2), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_1 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(1), datain=>o_image2_2_EXMPLR654(1), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_2_0 : stratixii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR651(0), datain=>o_image2_2_EXMPLR654(0), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_7 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(7), datain=>o_image2_1_EXMPLR653(7), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_6 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(6), datain=>o_image2_1_EXMPLR653(6), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_5 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(5), datain=>o_image2_1_EXMPLR653(5), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_4 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(4), datain=>o_image2_1_EXMPLR653(4), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_3 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(3), datain=>o_image2_1_EXMPLR653(3), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_2 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(2), datain=>o_image2_1_EXMPLR653(2), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_1 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(1), datain=>o_image2_1_EXMPLR653(1), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_1_0 : stratixii_lcell_ff port map ( regout=>
      o_image1_1_EXMPLR650(0), datain=>o_image2_1_EXMPLR653(0), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_7 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(7), datain=>o_image2_0_EXMPLR652(7), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_6 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(6), datain=>o_image2_0_EXMPLR652(6), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_5 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(5), datain=>o_image2_0_EXMPLR652(5), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_4 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(4), datain=>o_image2_0_EXMPLR652(4), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_3 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(3), datain=>o_image2_0_EXMPLR652(3), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_2 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(2), datain=>o_image2_0_EXMPLR652(2), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_1 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(1), datain=>o_image2_0_EXMPLR652(1), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer1_0_0 : stratixii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR649(0), datain=>o_image2_0_EXMPLR652(0), clk=>i_clock, 
      ena=>first_bubble_repl);
   reg_buffer0_2_7 : stratixii_lcell_ff port map ( regout=>o_image0_2(7), 
      datain=>o_image1_2_EXMPLR651(7), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_6 : stratixii_lcell_ff port map ( regout=>o_image0_2(6), 
      datain=>o_image1_2_EXMPLR651(6), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_5 : stratixii_lcell_ff port map ( regout=>o_image0_2(5), 
      datain=>o_image1_2_EXMPLR651(5), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_4 : stratixii_lcell_ff port map ( regout=>o_image0_2(4), 
      datain=>o_image1_2_EXMPLR651(4), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_3 : stratixii_lcell_ff port map ( regout=>o_image0_2(3), 
      datain=>o_image1_2_EXMPLR651(3), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_2 : stratixii_lcell_ff port map ( regout=>o_image0_2(2), 
      datain=>o_image1_2_EXMPLR651(2), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_1 : stratixii_lcell_ff port map ( regout=>o_image0_2(1), 
      datain=>o_image1_2_EXMPLR651(1), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_2_0 : stratixii_lcell_ff port map ( regout=>o_image0_2(0), 
      datain=>o_image1_2_EXMPLR651(0), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_7 : stratixii_lcell_ff port map ( regout=>o_image0_1(7), 
      datain=>o_image1_1_EXMPLR650(7), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_6 : stratixii_lcell_ff port map ( regout=>o_image0_1(6), 
      datain=>o_image1_1_EXMPLR650(6), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_5 : stratixii_lcell_ff port map ( regout=>o_image0_1(5), 
      datain=>o_image1_1_EXMPLR650(5), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_4 : stratixii_lcell_ff port map ( regout=>o_image0_1(4), 
      datain=>o_image1_1_EXMPLR650(4), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_3 : stratixii_lcell_ff port map ( regout=>o_image0_1(3), 
      datain=>o_image1_1_EXMPLR650(3), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_2 : stratixii_lcell_ff port map ( regout=>o_image0_1(2), 
      datain=>o_image1_1_EXMPLR650(2), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_1 : stratixii_lcell_ff port map ( regout=>o_image0_1(1), 
      datain=>o_image1_1_EXMPLR650(1), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_1_0 : stratixii_lcell_ff port map ( regout=>o_image0_1(0), 
      datain=>o_image1_1_EXMPLR650(0), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_7 : stratixii_lcell_ff port map ( regout=>o_image0_0(7), 
      datain=>o_image1_0_EXMPLR649(7), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_6 : stratixii_lcell_ff port map ( regout=>o_image0_0(6), 
      datain=>o_image1_0_EXMPLR649(6), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_5 : stratixii_lcell_ff port map ( regout=>o_image0_0(5), 
      datain=>o_image1_0_EXMPLR649(5), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_4 : stratixii_lcell_ff port map ( regout=>o_image0_0(4), 
      datain=>o_image1_0_EXMPLR649(4), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_3 : stratixii_lcell_ff port map ( regout=>o_image0_0(3), 
      datain=>o_image1_0_EXMPLR649(3), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_2 : stratixii_lcell_ff port map ( regout=>o_image0_0(2), 
      datain=>o_image1_0_EXMPLR649(2), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_1 : stratixii_lcell_ff port map ( regout=>o_image0_0(1), 
      datain=>o_image1_0_EXMPLR649(1), clk=>i_clock, ena=>first_bubble_repl
   );
   reg_buffer0_0_0 : stratixii_lcell_ff port map ( regout=>o_image0_0(0), 
      datain=>o_image1_0_EXMPLR649(0), clk=>i_clock, ena=>first_bubble_repl
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
   ix47386z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"8000000000000000") 
       port map ( combout=>nx47386z2, dataa=>nx47386z3, datab=>column(0), 
      datac=>column(1), datad=>column(2), datae=>column(3), dataf=>
      first_bubble);
   ix60567z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ccc80000") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>nx60567z3, 
      datac=>column(6), datad=>column(7), datae=>first_bubble, dataf=>
      o_valid_EXMPLR552);
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
   ix530_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z6, datae=>nx47386z2, dataf=>nx47386z4);
   ix47386z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z1, datae=>nx47386z2, dataf=>nx47386z4);
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
   ix15976z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>o_mode(0), datac=>busySignalDelayed, datad=>
      busySignal, datae=>i_reset, dataf=>i_valid);
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
         o_image2_2 : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal i_clock_EXMPLR697, i_reset_EXMPLR698, i_valid_EXMPLR699: std_logic
    ;
   
   signal i_pixel_EXMPLR851: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0, o_edge_EXMPLR708: std_logic ;
   
   signal o_dir_EXMPLR852: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
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
      o_image2_2_dup0_0, i_clock_int, i_reset_int, i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR712: std_logic ;
   
   signal o_mode_EXMPLR853: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR854: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_column_EXMPLR855: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR856: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR857: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR858: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR859: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR860: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR861: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR862: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR863: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR864: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR865: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR866: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR867: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR868: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR869: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR870: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR871: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR872: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_dup0_1: std_logic ;
   
   signal debug_num_5_dup0: std_logic_vector (17 DOWNTO 17) ;

begin
   i_clock_EXMPLR697 <= i_clock ;
   i_reset_EXMPLR698 <= i_reset ;
   i_valid_EXMPLR699 <= i_valid ;
   i_pixel_EXMPLR851(7) <= i_pixel(7) ;
   i_pixel_EXMPLR851(6) <= i_pixel(6) ;
   i_pixel_EXMPLR851(5) <= i_pixel(5) ;
   i_pixel_EXMPLR851(4) <= i_pixel(4) ;
   i_pixel_EXMPLR851(3) <= i_pixel(3) ;
   i_pixel_EXMPLR851(2) <= i_pixel(2) ;
   i_pixel_EXMPLR851(1) <= i_pixel(1) ;
   i_pixel_EXMPLR851(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR712 ;
   o_edge <= o_edge_EXMPLR708 ;
   o_dir(2) <= o_dir_EXMPLR852(2) ;
   o_dir(1) <= o_dir_EXMPLR852(1) ;
   o_dir(0) <= o_dir_EXMPLR852(0) ;
   o_mode(1) <= o_mode_EXMPLR853(1) ;
   o_mode(0) <= o_mode_EXMPLR853(0) ;
   o_row(7) <= o_row_EXMPLR854(7) ;
   o_row(6) <= o_row_EXMPLR854(6) ;
   o_row(5) <= o_row_EXMPLR854(5) ;
   o_row(4) <= o_row_EXMPLR854(4) ;
   o_row(3) <= o_row_EXMPLR854(3) ;
   o_row(2) <= o_row_EXMPLR854(2) ;
   o_row(1) <= o_row_EXMPLR854(1) ;
   o_row(0) <= o_row_EXMPLR854(0) ;
   o_column(7) <= o_column_EXMPLR855(7) ;
   o_column(6) <= o_column_EXMPLR855(6) ;
   o_column(5) <= o_column_EXMPLR855(5) ;
   o_column(4) <= o_column_EXMPLR855(4) ;
   o_column(3) <= o_column_EXMPLR855(3) ;
   o_column(2) <= o_column_EXMPLR855(2) ;
   o_column(1) <= o_column_EXMPLR855(1) ;
   o_column(0) <= o_column_EXMPLR855(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR856(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR856(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR856(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR856(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR856(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR856(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR856(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR856(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR857(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR857(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR857(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR857(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR857(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR857(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR857(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR857(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR858(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR858(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR858(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR858(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR858(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR858(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR858(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR858(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR859(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR859(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR859(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR859(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR859(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR859(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR859(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR859(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR860(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR860(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR860(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR860(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR860(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR860(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR860(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR860(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR861(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR861(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR861(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR861(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR861(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR861(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR861(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR861(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR862(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR862(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR862(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR862(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR862(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR862(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR862(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR862(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR863(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR863(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR863(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR863(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR863(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR863(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR863(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR863(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR864(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR864(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR864(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR864(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR864(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR864(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR864(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR864(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR865(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR865(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR865(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR865(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR865(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR865(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR865(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR865(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR865(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR865(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR865(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR865(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR865(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR865(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR865(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR865(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR865(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR865(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR866(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR866(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR866(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR866(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR866(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR866(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR867(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR867(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR867(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR867(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR868(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR868(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR868(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR868(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR869(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR869(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR869(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR869(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR870(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR870(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR870(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR870(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR871(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR871(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR871(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR871(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR872(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR872(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR872(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR872(0) ;
   u_memory : memory port map ( i_valid=>i_valid_int, i_reset=>i_reset_int, 
      i_pixel(7)=>i_pixel_int(7), i_pixel(6)=>i_pixel_int(6), i_pixel(5)=>
      i_pixel_int(5), i_pixel(4)=>i_pixel_int(4), i_pixel(3)=>i_pixel_int(3), 
      i_pixel(2)=>i_pixel_int(2), i_pixel(1)=>i_pixel_int(1), i_pixel(0)=>
      i_pixel_int(0), i_clock=>i_clock_int, o_valid=>o_valid_dup0, o_mode(1)
      =>o_mode_dup0(1), o_mode(0)=>o_mode_dup0(0), o_column(7)=>
      o_column_dup0(7), o_column(6)=>o_column_dup0(6), o_column(5)=>
      o_column_dup0(5), o_column(4)=>o_column_dup0(4), o_column(3)=>
      o_column_dup0(3), o_column(2)=>o_column_dup0(2), o_column(1)=>
      o_column_dup0(1), o_column(0)=>o_column_dup0(0), o_row(7)=>
      o_row_dup0(7), o_row(6)=>o_row_dup0(6), o_row(5)=>o_row_dup0(5), 
      o_row(4)=>o_row_dup0(4), o_row(3)=>o_row_dup0(3), o_row(2)=>
      o_row_dup0(2), o_row(1)=>o_row_dup0(1), o_row(0)=>o_row_dup0(0), 
      o_image0_0(7)=>o_image0_dup0(7), o_image0_0(6)=>o_image0_dup0(6), 
      o_image0_0(5)=>o_image0_dup0(5), o_image0_0(4)=>o_image0_dup0(4), 
      o_image0_0(3)=>o_image0_dup0(3), o_image0_0(2)=>o_image0_dup0(2), 
      o_image0_0(1)=>o_image0_dup0(1), o_image0_0(0)=>o_image0_dup0(0), 
      o_image0_1(7)=>o_image0_1_dup0_7, o_image0_1(6)=>o_image0_1_dup0_6, 
      o_image0_1(5)=>o_image0_1_dup0_5, o_image0_1(4)=>o_image0_1_dup0_4, 
      o_image0_1(3)=>o_image0_1_dup0_3, o_image0_1(2)=>o_image0_1_dup0_2, 
      o_image0_1(1)=>o_image0_1_dup0_1, o_image0_1(0)=>o_image0_1_dup0_0, 
      o_image0_2(7)=>o_image0_2_dup0_7, o_image0_2(6)=>o_image0_2_dup0_6, 
      o_image0_2(5)=>o_image0_2_dup0_5, o_image0_2(4)=>o_image0_2_dup0_4, 
      o_image0_2(3)=>o_image0_2_dup0_3, o_image0_2(2)=>o_image0_2_dup0_2, 
      o_image0_2(1)=>o_image0_2_dup0_1, o_image0_2(0)=>o_image0_2_dup0_0, 
      o_image1_0(7)=>o_image1_dup0(7), o_image1_0(6)=>o_image1_dup0(6), 
      o_image1_0(5)=>o_image1_dup0(5), o_image1_0(4)=>o_image1_dup0(4), 
      o_image1_0(3)=>o_image1_dup0(3), o_image1_0(2)=>o_image1_dup0(2), 
      o_image1_0(1)=>o_image1_dup0(1), o_image1_0(0)=>o_image1_dup0(0), 
      o_image1_1(7)=>o_image1_1_dup0_7, o_image1_1(6)=>o_image1_1_dup0_6, 
      o_image1_1(5)=>o_image1_1_dup0_5, o_image1_1(4)=>o_image1_1_dup0_4, 
      o_image1_1(3)=>o_image1_1_dup0_3, o_image1_1(2)=>o_image1_1_dup0_2, 
      o_image1_1(1)=>o_image1_1_dup0_1, o_image1_1(0)=>o_image1_1_dup0_0, 
      o_image1_2(7)=>o_image1_2_dup0_7, o_image1_2(6)=>o_image1_2_dup0_6, 
      o_image1_2(5)=>o_image1_2_dup0_5, o_image1_2(4)=>o_image1_2_dup0_4, 
      o_image1_2(3)=>o_image1_2_dup0_3, o_image1_2(2)=>o_image1_2_dup0_2, 
      o_image1_2(1)=>o_image1_2_dup0_1, o_image1_2(0)=>o_image1_2_dup0_0, 
      o_image2_0(7)=>o_image2_dup0(7), o_image2_0(6)=>o_image2_dup0(6), 
      o_image2_0(5)=>o_image2_dup0(5), o_image2_0(4)=>o_image2_dup0(4), 
      o_image2_0(3)=>o_image2_dup0(3), o_image2_0(2)=>o_image2_dup0(2), 
      o_image2_0(1)=>o_image2_dup0(1), o_image2_0(0)=>o_image2_dup0(0), 
      o_image2_1(7)=>o_image2_1_dup0_7, o_image2_1(6)=>o_image2_1_dup0_6, 
      o_image2_1(5)=>o_image2_1_dup0_5, o_image2_1(4)=>o_image2_1_dup0_4, 
      o_image2_1(3)=>o_image2_1_dup0_3, o_image2_1(2)=>o_image2_1_dup0_2, 
      o_image2_1(1)=>o_image2_1_dup0_1, o_image2_1(0)=>o_image2_1_dup0_0, 
      o_image2_2(7)=>o_image2_2_dup0_7, o_image2_2(6)=>o_image2_2_dup0_6, 
      o_image2_2(5)=>o_image2_2_dup0_5, o_image2_2(4)=>o_image2_2_dup0_4, 
      o_image2_2(3)=>o_image2_2_dup0_3, o_image2_2(2)=>o_image2_2_dup0_2, 
      o_image2_2(1)=>o_image2_2_dup0_1, o_image2_2(0)=>o_image2_2_dup0_0);
   debug_num_5_dup0_1 <= '1';
   debug_num_5_dup0(17) <= '0';
   o_valid_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR712, datain=>o_valid_dup0);
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR854(0), datain=>o_row_dup0(0));
   o_mode_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR853(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR853(0), datain=>o_mode_dup0(0));
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR864(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR864(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR864(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR864(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR864(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR864(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR864(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR864(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR863(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR863(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR863(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR863(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR863(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR863(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR863(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR863(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR862(7), datain=>o_image2_dup0(7));
   o_image2_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(6), datain=>o_image2_dup0(6));
   o_image2_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(5), datain=>o_image2_dup0(5));
   o_image2_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(4), datain=>o_image2_dup0(4));
   o_image2_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(3), datain=>o_image2_dup0(3));
   o_image2_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(2), datain=>o_image2_dup0(2));
   o_image2_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(1), datain=>o_image2_dup0(1));
   o_image2_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR862(0), datain=>o_image2_dup0(0));
   o_image1_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR861(7), datain=>o_image1_2_dup0_7
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
       port map ( padio=>o_image1_2_EXMPLR861(6), datain=>o_image1_2_dup0_6
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
       port map ( padio=>o_image1_2_EXMPLR861(5), datain=>o_image1_2_dup0_5
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
       port map ( padio=>o_image1_2_EXMPLR861(4), datain=>o_image1_2_dup0_4
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
       port map ( padio=>o_image1_2_EXMPLR861(3), datain=>o_image1_2_dup0_3
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
       port map ( padio=>o_image1_2_EXMPLR861(2), datain=>o_image1_2_dup0_2
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
       port map ( padio=>o_image1_2_EXMPLR861(1), datain=>o_image1_2_dup0_1
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
       port map ( padio=>o_image1_2_EXMPLR861(0), datain=>o_image1_2_dup0_0
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
       port map ( padio=>o_image1_1_EXMPLR860(7), datain=>o_image1_1_dup0_7
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
       port map ( padio=>o_image1_1_EXMPLR860(6), datain=>o_image1_1_dup0_6
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
       port map ( padio=>o_image1_1_EXMPLR860(5), datain=>o_image1_1_dup0_5
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
       port map ( padio=>o_image1_1_EXMPLR860(4), datain=>o_image1_1_dup0_4
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
       port map ( padio=>o_image1_1_EXMPLR860(3), datain=>o_image1_1_dup0_3
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
       port map ( padio=>o_image1_1_EXMPLR860(2), datain=>o_image1_1_dup0_2
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
       port map ( padio=>o_image1_1_EXMPLR860(1), datain=>o_image1_1_dup0_1
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
       port map ( padio=>o_image1_1_EXMPLR860(0), datain=>o_image1_1_dup0_0
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
       port map ( padio=>o_image1_0_EXMPLR859(7), datain=>o_image1_dup0(7));
   o_image1_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(6), datain=>o_image1_dup0(6));
   o_image1_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(5), datain=>o_image1_dup0(5));
   o_image1_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(4), datain=>o_image1_dup0(4));
   o_image1_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(3), datain=>o_image1_dup0(3));
   o_image1_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(2), datain=>o_image1_dup0(2));
   o_image1_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(1), datain=>o_image1_dup0(1));
   o_image1_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR859(0), datain=>o_image1_dup0(0));
   o_image0_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR858(7), datain=>o_image0_2_dup0_7
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
       port map ( padio=>o_image0_2_EXMPLR858(6), datain=>o_image0_2_dup0_6
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
       port map ( padio=>o_image0_2_EXMPLR858(5), datain=>o_image0_2_dup0_5
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
       port map ( padio=>o_image0_2_EXMPLR858(4), datain=>o_image0_2_dup0_4
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
       port map ( padio=>o_image0_2_EXMPLR858(3), datain=>o_image0_2_dup0_3
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
       port map ( padio=>o_image0_2_EXMPLR858(2), datain=>o_image0_2_dup0_2
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
       port map ( padio=>o_image0_2_EXMPLR858(1), datain=>o_image0_2_dup0_1
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
       port map ( padio=>o_image0_2_EXMPLR858(0), datain=>o_image0_2_dup0_0
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
       port map ( padio=>o_image0_1_EXMPLR857(7), datain=>o_image0_1_dup0_7
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
       port map ( padio=>o_image0_1_EXMPLR857(6), datain=>o_image0_1_dup0_6
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
       port map ( padio=>o_image0_1_EXMPLR857(5), datain=>o_image0_1_dup0_5
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
       port map ( padio=>o_image0_1_EXMPLR857(4), datain=>o_image0_1_dup0_4
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
       port map ( padio=>o_image0_1_EXMPLR857(3), datain=>o_image0_1_dup0_3
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
       port map ( padio=>o_image0_1_EXMPLR857(2), datain=>o_image0_1_dup0_2
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
       port map ( padio=>o_image0_1_EXMPLR857(1), datain=>o_image0_1_dup0_1
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
       port map ( padio=>o_image0_1_EXMPLR857(0), datain=>o_image0_1_dup0_0
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
       port map ( padio=>o_image0_0_EXMPLR856(7), datain=>o_image0_dup0(7));
   o_image0_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(6), datain=>o_image0_dup0(6));
   o_image0_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(5), datain=>o_image0_dup0(5));
   o_image0_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(4), datain=>o_image0_dup0(4));
   o_image0_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(3), datain=>o_image0_dup0(3));
   o_image0_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(2), datain=>o_image0_dup0(2));
   o_image0_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(1), datain=>o_image0_dup0(1));
   o_image0_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR856(0), datain=>o_image0_dup0(0));
   o_dir_triBus1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR852(2), datain=>debug_num_5_dup0(17), 
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
       port map ( padio=>o_dir_EXMPLR852(1), datain=>debug_num_5_dup0(17), 
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
       port map ( padio=>o_dir_EXMPLR852(0), datain=>debug_num_5_dup0(17), 
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
       port map ( padio=>o_column_EXMPLR855(7), datain=>o_column_dup0(7));
   o_column_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(6), datain=>o_column_dup0(6));
   o_column_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(5), datain=>o_column_dup0(5));
   o_column_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(4), datain=>o_column_dup0(4));
   o_column_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(3), datain=>o_column_dup0(3));
   o_column_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(2), datain=>o_column_dup0(2));
   o_column_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(1), datain=>o_column_dup0(1));
   o_column_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR855(0), datain=>o_column_dup0(0));
   ix45767z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR708, datain=>debug_num_5_dup0(17), oe
      =>debug_num_5_dup0(17));
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR699);
   i_reset_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR698);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR851(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR851(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR851(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR851(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR851(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR851(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR851(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR851(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR697);
   debug_num_5_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR872(3), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR872(2), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR872(1), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR872(0), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR871(3), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR871(2), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR871(1), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR871(0), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR870(3), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR870(2), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR870(1), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR870(0), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR869(3), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR869(2), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR869(1), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR869(0), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR868(3), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR868(2), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR868(1), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR868(0), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR867(3), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR867(2), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR867(1), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR867(0), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(9), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(8), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(7), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(6), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(5), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(4), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(3), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(2), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(17), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(16), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(15), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(14), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(13), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(12), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(11), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(10), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(1), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR865(0), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR866(5), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR866(4), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR866(3), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR866(2), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR866(1), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR866(0), datain=>
      debug_num_5_dup0(17));
end main ;

