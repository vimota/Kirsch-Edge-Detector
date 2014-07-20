
-- 
-- Definition of  memory
-- 
--      Sun Jul 20 01:02:46 2014
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
      p_i_valid_int : IN std_logic ;
      px581 : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal GND_EXMPLR319, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
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
   GND_EXMPLR319 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffff00ff0000") 
       port map ( combout=>nx57253z3, datad=>p_i_valid_int, datae=>px581, 
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
      cin=>GND_EXMPLR319);
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
      p_i_valid_int : IN std_logic ;
      p_i_reset_int : IN std_logic ;
      p_rtlc0n255_repl : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal GND_EXMPLR321, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
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
   GND_EXMPLR321 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc0n255_repl);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff0fff0fff0f0000") 
       port map ( combout=>nx57253z3, datac=>p_i_valid_int, datad=>
      p_i_reset_int, datae=>sclear, dataf=>cnt_en);
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
      cin=>GND_EXMPLR321);
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
   signal ena1_EXMPLR349: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR349, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR349 <= '1';
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
   signal ena1_EXMPLR379: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR379, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR379 <= '1';
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
   signal ena1_EXMPLR409: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR409, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR409 <= '1';
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
         p_i_valid_int : IN std_logic ;
         px581 : IN std_logic) ;
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
         p_i_valid_int : IN std_logic ;
         p_i_reset_int : IN std_logic ;
         p_rtlc0n255_repl : IN std_logic) ;
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
   signal i_valid_EXMPLR454, i_reset_EXMPLR455: std_logic ;
   
   signal i_pixel_EXMPLR554: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_EXMPLR464, o_valid_dup0: std_logic ;
   
   signal o_column_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
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
      o_image2_2_dup0_0: std_logic ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_valid_int, i_reset_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_int, o_valid_EXMPLR465: std_logic ;
   
   signal o_column_EXMPLR555: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_row_EXMPLR556: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR557: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR558: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR559: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR560: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR561: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR562: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR563: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR564: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR565: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn_current_0n4ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal nx47386z1, nx46897z1: std_logic ;
   
   signal buffer2_1n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx60567z3, nx57224z1, nx17757z1, nx16760z1, nx15763z1, nx60567z1, 
      nx39109z1, nx15763z2, nx62359z1, nx61362z1, nx60365z1, nx59368z1, 
      nx58371z1, nx57374z1, nx56377z1, nx55380z1, nx63578z1, nx64575z1, 
      nx36z1, nx1033z1, nx2030z1, nx3027z1, nx4024z1, nx5021z1, nx60567z2, 
      nx60567z4, nx47386z2, nx47386z3, first_bubble_repl, nx47386z4: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (41 downto 0 );

begin
   i_valid_EXMPLR454 <= i_valid ;
   i_reset_EXMPLR455 <= i_reset ;
   i_pixel_EXMPLR554(7) <= i_pixel(7) ;
   i_pixel_EXMPLR554(6) <= i_pixel(6) ;
   i_pixel_EXMPLR554(5) <= i_pixel(5) ;
   i_pixel_EXMPLR554(4) <= i_pixel(4) ;
   i_pixel_EXMPLR554(3) <= i_pixel(3) ;
   i_pixel_EXMPLR554(2) <= i_pixel(2) ;
   i_pixel_EXMPLR554(1) <= i_pixel(1) ;
   i_pixel_EXMPLR554(0) <= i_pixel(0) ;
   i_clock_EXMPLR464 <= i_clock ;
   o_valid <= o_valid_EXMPLR465 ;
   o_column(7) <= o_column_EXMPLR555(7) ;
   o_column(6) <= o_column_EXMPLR555(6) ;
   o_column(5) <= o_column_EXMPLR555(5) ;
   o_column(4) <= o_column_EXMPLR555(4) ;
   o_column(3) <= o_column_EXMPLR555(3) ;
   o_column(2) <= o_column_EXMPLR555(2) ;
   o_column(1) <= o_column_EXMPLR555(1) ;
   o_column(0) <= o_column_EXMPLR555(0) ;
   o_row(7) <= o_row_EXMPLR556(7) ;
   o_row(6) <= o_row_EXMPLR556(6) ;
   o_row(5) <= o_row_EXMPLR556(5) ;
   o_row(4) <= o_row_EXMPLR556(4) ;
   o_row(3) <= o_row_EXMPLR556(3) ;
   o_row(2) <= o_row_EXMPLR556(2) ;
   o_row(1) <= o_row_EXMPLR556(1) ;
   o_row(0) <= o_row_EXMPLR556(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR557(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR557(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR557(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR557(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR557(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR557(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR557(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR557(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR558(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR558(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR558(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR558(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR558(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR558(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR558(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR558(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR559(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR559(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR559(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR559(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR559(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR559(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR559(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR559(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR560(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR560(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR560(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR560(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR560(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR560(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR560(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR560(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR561(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR561(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR561(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR561(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR561(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR561(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR561(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR561(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR562(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR562(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR562(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR562(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR562(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR562(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR562(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR562(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR563(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR563(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR563(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR563(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR563(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR563(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR563(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR563(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR564(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR564(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR564(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR564(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR564(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR564(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR564(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR564(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR565(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR565(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR565(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR565(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR565(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR565(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR565(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR565(0) ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock_int, 
      q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), 
      q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear
      =>DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>i_reset_int, updn=>DANGLING(
      12), cnt_en=>DANGLING(13), p_i_valid_int=>i_valid_int, px581=>
      nx47386z2);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock_int, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>column(0), 
      clk_en=>DANGLING(14), aclear=>DANGLING(15), sload=>DANGLING(16), 
      data(7)=>DANGLING(17), data(6)=>DANGLING(18), data(5)=>DANGLING(19), 
      data(4)=>DANGLING(20), data(3)=>DANGLING(21), data(2)=>DANGLING(22), 
      data(1)=>DANGLING(23), data(0)=>DANGLING(24), aset=>DANGLING(25), 
      sclear=>nx47386z1, updn=>DANGLING(26), cnt_en=>first_bubble, 
      p_i_valid_int=>i_valid_int, p_i_reset_int=>i_reset_int, 
      p_rtlc0n255_repl=>nx47386z4);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_0(7), 
      rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), rd_data1(4)=>
      mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>mem_q_0(2), 
      rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>column(0), wr_clk1=>i_clock_int, rd_clk1=>DANGLING(27), 
      wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(28), ena1=>DANGLING(29), rst1=>
      DANGLING(30), regce1=>DANGLING(31));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_1(7), 
      rd_data1(6)=>mem_q_1(6), rd_data1(5)=>mem_q_1(5), rd_data1(4)=>
      mem_q_1(4), rd_data1(3)=>mem_q_1(3), rd_data1(2)=>mem_q_1(2), 
      rd_data1(1)=>mem_q_1(1), rd_data1(0)=>mem_q_1(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>column(0), wr_clk1=>i_clock_int, rd_clk1=>DANGLING(32), 
      wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(33), ena1=>DANGLING(34), rst1=>
      DANGLING(35), regce1=>DANGLING(36));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_2(7), 
      rd_data1(6)=>mem_q_2(6), rd_data1(5)=>mem_q_2(5), rd_data1(4)=>
      mem_q_2(4), rd_data1(3)=>mem_q_2(3), rd_data1(2)=>mem_q_2(2), 
      rd_data1(1)=>mem_q_2(1), rd_data1(0)=>mem_q_2(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>column(0), wr_clk1=>i_clock_int, rd_clk1=>DANGLING(37), 
      wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(38), ena1=>DANGLING(39), rst1=>
      DANGLING(40), regce1=>DANGLING(41));
   reg_o_valid : stratixii_lcell_ff port map ( regout=>o_valid_dup0, datain
      =>nx60567z1, clk=>i_clock_int);
   reg_o_row_7 : stratixii_lcell_ff port map ( regout=>o_row_dup0(7), datain
      =>row(7), clk=>i_clock_int);
   reg_o_row_6 : stratixii_lcell_ff port map ( regout=>o_row_dup0(6), datain
      =>row(6), clk=>i_clock_int);
   reg_o_row_5 : stratixii_lcell_ff port map ( regout=>o_row_dup0(5), datain
      =>row(5), clk=>i_clock_int);
   reg_o_row_4 : stratixii_lcell_ff port map ( regout=>o_row_dup0(4), datain
      =>row(4), clk=>i_clock_int);
   reg_o_row_3 : stratixii_lcell_ff port map ( regout=>o_row_dup0(3), datain
      =>row(3), clk=>i_clock_int);
   reg_o_row_2 : stratixii_lcell_ff port map ( regout=>o_row_dup0(2), datain
      =>row(2), clk=>i_clock_int);
   reg_o_row_1 : stratixii_lcell_ff port map ( regout=>o_row_dup0(1), datain
      =>row(1), clk=>i_clock_int);
   reg_o_row_0 : stratixii_lcell_ff port map ( regout=>o_row_dup0(0), datain
      =>row(0), clk=>i_clock_int);
   reg_o_column_7 : stratixii_lcell_ff port map ( regout=>o_column_dup0(7), 
      datain=>column(7), clk=>i_clock_int);
   reg_o_column_6 : stratixii_lcell_ff port map ( regout=>o_column_dup0(6), 
      datain=>column(6), clk=>i_clock_int);
   reg_o_column_5 : stratixii_lcell_ff port map ( regout=>o_column_dup0(5), 
      datain=>column(5), clk=>i_clock_int);
   reg_o_column_4 : stratixii_lcell_ff port map ( regout=>o_column_dup0(4), 
      datain=>column(4), clk=>i_clock_int);
   reg_o_column_3 : stratixii_lcell_ff port map ( regout=>o_column_dup0(3), 
      datain=>column(3), clk=>i_clock_int);
   reg_o_column_2 : stratixii_lcell_ff port map ( regout=>o_column_dup0(2), 
      datain=>column(2), clk=>i_clock_int);
   reg_o_column_1 : stratixii_lcell_ff port map ( regout=>o_column_dup0(1), 
      datain=>column(1), clk=>i_clock_int);
   reg_o_column_0 : stratixii_lcell_ff port map ( regout=>o_column_dup0(0), 
      datain=>column(0), clk=>i_clock_int);
   reg_mem_wrn_current_2 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current_0n4ss1(2), clk=>
      i_clock_int, ena=>nx39109z1, sclr=>i_reset_int);
   reg_mem_wrn_current_1 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current_0n4ss1(1), clk=>
      i_clock_int, ena=>nx39109z1, sclr=>i_reset_int);
   reg_mem_wrn_current_0 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current_0n4ss1(0), clk=>
      i_clock_int, ena=>nx39109z1, sclr=>i_reset_int);
   reg_mem_wrn_2 : stratixii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>nx17757z1, clk=>i_clock_int);
   reg_mem_wrn_1 : stratixii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>nx16760z1, clk=>i_clock_int);
   reg_mem_wrn_0 : stratixii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>nx15763z1, clk=>i_clock_int);
   reg_mem_data_7 : stratixii_lcell_ff port map ( regout=>mem_data(7), 
      datain=>i_pixel_int(7), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_6 : stratixii_lcell_ff port map ( regout=>mem_data(6), 
      datain=>i_pixel_int(6), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_5 : stratixii_lcell_ff port map ( regout=>mem_data(5), 
      datain=>i_pixel_int(5), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_4 : stratixii_lcell_ff port map ( regout=>mem_data(4), 
      datain=>i_pixel_int(4), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_3 : stratixii_lcell_ff port map ( regout=>mem_data(3), 
      datain=>i_pixel_int(3), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_2 : stratixii_lcell_ff port map ( regout=>mem_data(2), 
      datain=>i_pixel_int(2), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_1 : stratixii_lcell_ff port map ( regout=>mem_data(1), 
      datain=>i_pixel_int(1), clk=>i_clock_int, ena=>nx46897z1);
   reg_mem_data_0 : stratixii_lcell_ff port map ( regout=>mem_data(0), 
      datain=>i_pixel_int(0), clk=>i_clock_int, ena=>nx46897z1);
   reg_first_bubble_repl : stratixii_lcell_ff port map ( regout=>
      first_bubble_repl, datain=>i_valid_int, clk=>i_clock_int, sclr=>
      i_reset_int);
   reg_first_bubble : stratixii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid_int, clk=>i_clock_int, sclr=>i_reset_int);
   reg_buffer2_2_7 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_7, 
      datain=>mem_q_2(7), adatasdata=>mem_data(7), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_6 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_6, 
      datain=>mem_q_2(6), adatasdata=>mem_data(6), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_5 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_5, 
      datain=>mem_q_2(5), adatasdata=>mem_data(5), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_4 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_4, 
      datain=>mem_q_2(4), adatasdata=>mem_data(4), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_3 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_3, 
      datain=>mem_q_2(3), adatasdata=>mem_data(3), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_2 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_2, 
      datain=>mem_q_2(2), adatasdata=>mem_data(2), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_1 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_1, 
      datain=>mem_q_2(1), adatasdata=>mem_data(1), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_2_0 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_0, 
      datain=>mem_q_2(0), adatasdata=>mem_data(0), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx57224z1);
   reg_buffer2_1_7 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_7, 
      datain=>nx62359z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_6 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_6, 
      datain=>nx61362z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_5 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_5, 
      datain=>nx60365z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_4 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_4, 
      datain=>nx59368z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_3 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_3, 
      datain=>nx58371z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_2 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_2, 
      datain=>nx57374z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_1 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_1, 
      datain=>nx56377z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_1_0 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_0, 
      datain=>nx55380z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_7 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(7), 
      datain=>nx63578z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_6 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(6), 
      datain=>nx64575z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_5 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(5), 
      datain=>nx36z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_4 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(4), 
      datain=>nx1033z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_3 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(3), 
      datain=>nx2030z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_2 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(2), 
      datain=>nx3027z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_1 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(1), 
      datain=>nx4024z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer2_0_0 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(0), 
      datain=>nx5021z1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_7 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_7, 
      datain=>o_image2_2_dup0_7, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_6 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_6, 
      datain=>o_image2_2_dup0_6, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_5 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_5, 
      datain=>o_image2_2_dup0_5, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_4 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_4, 
      datain=>o_image2_2_dup0_4, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_3 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_3, 
      datain=>o_image2_2_dup0_3, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_2 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_2, 
      datain=>o_image2_2_dup0_2, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_1 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_1, 
      datain=>o_image2_2_dup0_1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_2_0 : stratixii_lcell_ff port map ( regout=>o_image1_2_dup0_0, 
      datain=>o_image2_2_dup0_0, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_7 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_7, 
      datain=>o_image2_1_dup0_7, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_6 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_6, 
      datain=>o_image2_1_dup0_6, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_5 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_5, 
      datain=>o_image2_1_dup0_5, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_4 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_4, 
      datain=>o_image2_1_dup0_4, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_3 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_3, 
      datain=>o_image2_1_dup0_3, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_2 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_2, 
      datain=>o_image2_1_dup0_2, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_1 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_1, 
      datain=>o_image2_1_dup0_1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_1_0 : stratixii_lcell_ff port map ( regout=>o_image1_1_dup0_0, 
      datain=>o_image2_1_dup0_0, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_7 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(7), 
      datain=>o_image2_dup0(7), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_6 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(6), 
      datain=>o_image2_dup0(6), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_5 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(5), 
      datain=>o_image2_dup0(5), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_4 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(4), 
      datain=>o_image2_dup0(4), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_3 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(3), 
      datain=>o_image2_dup0(3), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_2 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(2), 
      datain=>o_image2_dup0(2), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_1 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(1), 
      datain=>o_image2_dup0(1), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer1_0_0 : stratixii_lcell_ff port map ( regout=>o_image1_dup0(0), 
      datain=>o_image2_dup0(0), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_7 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_7, 
      datain=>o_image1_2_dup0_7, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_6 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_6, 
      datain=>o_image1_2_dup0_6, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_5 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_5, 
      datain=>o_image1_2_dup0_5, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_4 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_4, 
      datain=>o_image1_2_dup0_4, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_3 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_3, 
      datain=>o_image1_2_dup0_3, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_2 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_2, 
      datain=>o_image1_2_dup0_2, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_1 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_1, 
      datain=>o_image1_2_dup0_1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_2_0 : stratixii_lcell_ff port map ( regout=>o_image0_2_dup0_0, 
      datain=>o_image1_2_dup0_0, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_7 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_7, 
      datain=>o_image1_1_dup0_7, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_6 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_6, 
      datain=>o_image1_1_dup0_6, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_5 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_5, 
      datain=>o_image1_1_dup0_5, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_4 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_4, 
      datain=>o_image1_1_dup0_4, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_3 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_3, 
      datain=>o_image1_1_dup0_3, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_2 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_2, 
      datain=>o_image1_1_dup0_2, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_1 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_1, 
      datain=>o_image1_1_dup0_1, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_1_0 : stratixii_lcell_ff port map ( regout=>o_image0_1_dup0_0, 
      datain=>o_image1_1_dup0_0, clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_7 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(7), 
      datain=>o_image1_dup0(7), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_6 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(6), 
      datain=>o_image1_dup0(6), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_5 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(5), 
      datain=>o_image1_dup0(5), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_4 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(4), 
      datain=>o_image1_dup0(4), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_3 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(3), 
      datain=>o_image1_dup0(3), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_2 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(2), 
      datain=>o_image1_dup0(2), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_1 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(1), 
      datain=>o_image1_dup0(1), clk=>i_clock_int, ena=>first_bubble_repl);
   reg_buffer0_0_0 : stratixii_lcell_ff port map ( regout=>o_image0_dup0(0), 
      datain=>o_image1_dup0(0), clk=>i_clock_int, ena=>first_bubble_repl);
   o_valid_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR465, datain=>o_valid_dup0);
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR556(0), datain=>o_row_dup0(0));
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR565(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR565(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR565(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR565(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR565(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR565(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR565(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR565(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR564(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR564(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR564(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR564(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR564(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR564(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR564(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR564(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR563(7), datain=>o_image2_dup0(7));
   o_image2_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(6), datain=>o_image2_dup0(6));
   o_image2_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(5), datain=>o_image2_dup0(5));
   o_image2_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(4), datain=>o_image2_dup0(4));
   o_image2_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(3), datain=>o_image2_dup0(3));
   o_image2_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(2), datain=>o_image2_dup0(2));
   o_image2_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(1), datain=>o_image2_dup0(1));
   o_image2_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR563(0), datain=>o_image2_dup0(0));
   o_image1_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR562(7), datain=>o_image1_2_dup0_7
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
       port map ( padio=>o_image1_2_EXMPLR562(6), datain=>o_image1_2_dup0_6
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
       port map ( padio=>o_image1_2_EXMPLR562(5), datain=>o_image1_2_dup0_5
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
       port map ( padio=>o_image1_2_EXMPLR562(4), datain=>o_image1_2_dup0_4
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
       port map ( padio=>o_image1_2_EXMPLR562(3), datain=>o_image1_2_dup0_3
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
       port map ( padio=>o_image1_2_EXMPLR562(2), datain=>o_image1_2_dup0_2
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
       port map ( padio=>o_image1_2_EXMPLR562(1), datain=>o_image1_2_dup0_1
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
       port map ( padio=>o_image1_2_EXMPLR562(0), datain=>o_image1_2_dup0_0
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
       port map ( padio=>o_image1_1_EXMPLR561(7), datain=>o_image1_1_dup0_7
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
       port map ( padio=>o_image1_1_EXMPLR561(6), datain=>o_image1_1_dup0_6
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
       port map ( padio=>o_image1_1_EXMPLR561(5), datain=>o_image1_1_dup0_5
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
       port map ( padio=>o_image1_1_EXMPLR561(4), datain=>o_image1_1_dup0_4
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
       port map ( padio=>o_image1_1_EXMPLR561(3), datain=>o_image1_1_dup0_3
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
       port map ( padio=>o_image1_1_EXMPLR561(2), datain=>o_image1_1_dup0_2
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
       port map ( padio=>o_image1_1_EXMPLR561(1), datain=>o_image1_1_dup0_1
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
       port map ( padio=>o_image1_1_EXMPLR561(0), datain=>o_image1_1_dup0_0
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
       port map ( padio=>o_image1_0_EXMPLR560(7), datain=>o_image1_dup0(7));
   o_image1_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(6), datain=>o_image1_dup0(6));
   o_image1_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(5), datain=>o_image1_dup0(5));
   o_image1_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(4), datain=>o_image1_dup0(4));
   o_image1_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(3), datain=>o_image1_dup0(3));
   o_image1_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(2), datain=>o_image1_dup0(2));
   o_image1_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(1), datain=>o_image1_dup0(1));
   o_image1_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR560(0), datain=>o_image1_dup0(0));
   o_image0_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR559(7), datain=>o_image0_2_dup0_7
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
       port map ( padio=>o_image0_2_EXMPLR559(6), datain=>o_image0_2_dup0_6
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
       port map ( padio=>o_image0_2_EXMPLR559(5), datain=>o_image0_2_dup0_5
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
       port map ( padio=>o_image0_2_EXMPLR559(4), datain=>o_image0_2_dup0_4
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
       port map ( padio=>o_image0_2_EXMPLR559(3), datain=>o_image0_2_dup0_3
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
       port map ( padio=>o_image0_2_EXMPLR559(2), datain=>o_image0_2_dup0_2
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
       port map ( padio=>o_image0_2_EXMPLR559(1), datain=>o_image0_2_dup0_1
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
       port map ( padio=>o_image0_2_EXMPLR559(0), datain=>o_image0_2_dup0_0
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
       port map ( padio=>o_image0_1_EXMPLR558(7), datain=>o_image0_1_dup0_7
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
       port map ( padio=>o_image0_1_EXMPLR558(6), datain=>o_image0_1_dup0_6
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
       port map ( padio=>o_image0_1_EXMPLR558(5), datain=>o_image0_1_dup0_5
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
       port map ( padio=>o_image0_1_EXMPLR558(4), datain=>o_image0_1_dup0_4
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
       port map ( padio=>o_image0_1_EXMPLR558(3), datain=>o_image0_1_dup0_3
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
       port map ( padio=>o_image0_1_EXMPLR558(2), datain=>o_image0_1_dup0_2
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
       port map ( padio=>o_image0_1_EXMPLR558(1), datain=>o_image0_1_dup0_1
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
       port map ( padio=>o_image0_1_EXMPLR558(0), datain=>o_image0_1_dup0_0
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
       port map ( padio=>o_image0_0_EXMPLR557(7), datain=>o_image0_dup0(7));
   o_image0_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(6), datain=>o_image0_dup0(6));
   o_image0_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(5), datain=>o_image0_dup0(5));
   o_image0_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(4), datain=>o_image0_dup0(4));
   o_image0_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(3), datain=>o_image0_dup0(3));
   o_image0_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(2), datain=>o_image0_dup0(2));
   o_image0_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(1), datain=>o_image0_dup0(1));
   o_image0_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR557(0), datain=>o_image0_dup0(0));
   o_column_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(7), datain=>o_column_dup0(7));
   o_column_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(6), datain=>o_column_dup0(6));
   o_column_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(5), datain=>o_column_dup0(5));
   o_column_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(4), datain=>o_column_dup0(4));
   o_column_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(3), datain=>o_column_dup0(3));
   o_column_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(2), datain=>o_column_dup0(2));
   o_column_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(1), datain=>o_column_dup0(1));
   o_column_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR555(0), datain=>o_column_dup0(0));
   ix47386z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx47386z3, datac=>column(4), datad=>column(5), 
      datae=>column(6), dataf=>column(7));
   ix47386z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"8000000000000000") 
       port map ( combout=>nx47386z2, dataa=>nx47386z3, datab=>column(0), 
      datac=>column(1), datad=>column(2), datae=>column(3), dataf=>
      first_bubble);
   ix60567z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx60567z4, datac=>row(3), datad=>row(4), datae=>
      row(5), dataf=>row(6));
   ix60567z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx60567z2, datab=>column(1), datac=>column(2), 
      datad=>column(3), datae=>column(4), dataf=>column(5));
   ix5021z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx5021z1, dataa=>mem_q_2(0), datab=>mem_q_0(0), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(0), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix4024z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx4024z1, dataa=>mem_q_2(1), datab=>mem_q_0(1), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(1), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix3027z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx3027z1, dataa=>mem_q_2(2), datab=>mem_q_0(2), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(2), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix2030z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx2030z1, dataa=>mem_q_2(3), datab=>mem_q_0(3), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(3), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix1033z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx1033z1, dataa=>mem_q_2(4), datab=>mem_q_0(4), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(4), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix36z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx36z1, dataa=>mem_q_2(5), datab=>mem_q_0(5), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(5), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix64575z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx64575z1, dataa=>mem_q_2(6), datab=>mem_q_0(6), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(6), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix63578z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afa0acacff00cccc") 
       port map ( combout=>nx63578z1, dataa=>mem_q_2(7), datab=>mem_q_0(7), 
      datac=>nx60567z3, datad=>buffer2_1n2ss1(7), datae=>mem_wrn_current(0), 
      dataf=>mem_wrn_current(1));
   ix55380z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx55380z1, dataa=>mem_q_2(0), datab=>mem_q_1(0), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(0));
   ix56377z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx56377z1, dataa=>mem_q_2(1), datab=>mem_q_1(1), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(1));
   ix57374z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx57374z1, dataa=>mem_q_2(2), datab=>mem_q_1(2), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(2));
   ix58371z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx58371z1, dataa=>mem_q_2(3), datab=>mem_q_1(3), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(3));
   ix59368z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx59368z1, dataa=>mem_q_2(4), datab=>mem_q_1(4), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(4));
   ix60365z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx60365z1, dataa=>mem_q_2(5), datab=>mem_q_1(5), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(5));
   ix61362z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx61362z1, dataa=>mem_q_2(6), datab=>mem_q_1(6), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(6));
   ix62359z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"afcfaccca0c0accc") 
       port map ( combout=>nx62359z1, dataa=>mem_q_2(7), datab=>mem_q_1(7), 
      datac=>nx60567z3, datad=>mem_wrn_current(0), datae=>mem_wrn_current(1), 
      dataf=>mem_data(7));
   ix15763z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ffffffff") 
       port map ( combout=>nx15763z2, datae=>i_reset_int, dataf=>i_valid_int
   );
   ix39109z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"cececececececefe") 
       port map ( combout=>nx39109z1, dataa=>nx47386z2, datab=>i_reset_int, 
      datac=>i_valid_int, datad=>mem_wrn_current(0), datae=>
      mem_wrn_current(1), dataf=>mem_wrn_current(2));
   ix60567z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ccc80000") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>nx60567z3, 
      datac=>column(6), datad=>column(7), datae=>first_bubble, dataf=>
      o_valid_dup0);
   ix15763z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0f000f000f000f0f") 
       port map ( combout=>nx15763z1, datac=>nx15763z2, datad=>
      mem_wrn_current(0), datae=>mem_wrn_current(1), dataf=>
      mem_wrn_current(2));
   ix16760z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx16760z1, datad=>i_reset_int, datae=>i_valid_int, 
      dataf=>mem_wrn_current(1));
   ix17757z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx17757z1, datad=>i_reset_int, datae=>i_valid_int, 
      dataf=>mem_wrn_current(2));
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
       port map ( combout=>buffer2_1n2ss1(0), datad=>mem_q_1(0), datae=>
      nx60567z3, dataf=>mem_data(0));
   ix4024z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(1), datad=>mem_q_1(1), datae=>
      nx60567z3, dataf=>mem_data(1));
   ix3027z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(2), datad=>mem_q_1(2), datae=>
      nx60567z3, dataf=>mem_data(2));
   ix2030z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(3), datad=>mem_q_1(3), datae=>
      nx60567z3, dataf=>mem_data(3));
   ix1033z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(4), datad=>mem_q_1(4), datae=>
      nx60567z3, dataf=>mem_data(4));
   ix36z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(5), datad=>mem_q_1(5), datae=>
      nx60567z3, dataf=>mem_data(5));
   ix64575z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(6), datad=>mem_q_1(6), datae=>
      nx60567z3, dataf=>mem_data(6));
   ix63578z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>buffer2_1n2ss1(7), datad=>mem_q_1(7), datae=>
      nx60567z3, dataf=>mem_data(7));
   ix524_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z4, datae=>nx47386z2, dataf=>i_reset_int);
   ix47386z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z1, datae=>nx47386z2, dataf=>i_reset_int);
   ix39109z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>mem_wrn_current_0n4ss1(0), datae=>i_valid_int, 
      dataf=>mem_wrn_current(2));
   ix40106z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>mem_wrn_current_0n4ss1(1), datae=>i_valid_int, 
      dataf=>mem_wrn_current(0));
   ix41103z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>mem_wrn_current_0n4ss1(2), datae=>i_valid_int, 
      dataf=>mem_wrn_current(1));
   ix46897z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx46897z1, datae=>i_reset_int, dataf=>i_valid_int
   );
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR454);
   i_reset_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR455);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR554(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR554(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR554(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR554(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR554(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR554(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR554(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR554(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR464);
end main ;

