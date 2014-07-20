
-- 
-- Definition of  memory
-- 
--      Sat Jul 19 23:25:17 2014
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
   signal nx58250z1, q_7_EXMPLR241, nx57253z1, q_6_EXMPLR242, nx56256z1, 
      q_5_EXMPLR243, nx55259z1, q_4_EXMPLR244, nx54262z1, q_3_EXMPLR245, 
      nx53265z1, q_2_EXMPLR246, nx52268z1, q_1_EXMPLR247, nx51271z1, 
      q_0_EXMPLR248, nx58250z10, nx58250z9, nx58250z8, nx58250z7, nx58250z6, 
      nx58250z5, nx58250z4, nx58250z3, nx58250z2, GND_EXMPLR249, nx58250z11, 
      nx58250z12: std_logic ;

begin
   q(7) <= q_7_EXMPLR241 ;
   q(6) <= q_6_EXMPLR242 ;
   q(5) <= q_5_EXMPLR243 ;
   q(4) <= q_4_EXMPLR244 ;
   q(3) <= q_3_EXMPLR245 ;
   q(2) <= q_2_EXMPLR246 ;
   q(1) <= q_1_EXMPLR247 ;
   q(0) <= q_0_EXMPLR248 ;
   GND_EXMPLR249 <= '0';
   nx58250z2 <= '0';
   nx58250z11 <= '1';
   nx58250z12 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>q_7_EXMPLR241, datain=>
      nx58250z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>q_6_EXMPLR242, datain=>
      nx57253z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>q_5_EXMPLR243, datain=>
      nx56256z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>q_4_EXMPLR244, datain=>
      nx55259z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>q_3_EXMPLR245, datain=>
      nx54262z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>q_2_EXMPLR246, datain=>
      nx53265z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>q_1_EXMPLR247, datain=>
      nx52268z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>q_0_EXMPLR248, datain=>
      nx51271z1, clk=>clock, ena=>p_not_rtlc0n196_repl);
   ix58250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx58250z1, datad=>q_7_EXMPLR241, dataf=>nx58250z2, 
      cin=>nx58250z3);
   ix58250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx57253z1, cout=>nx58250z3, dataa=>nx58250z2, 
      datad=>q_6_EXMPLR242, cin=>nx58250z4);
   ix58250z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z2, 
      datad=>q_5_EXMPLR243, cin=>nx58250z5);
   ix58250z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx55259z1, cout=>nx58250z5, dataa=>nx58250z2, 
      datad=>q_4_EXMPLR244, cin=>nx58250z6);
   ix58250z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx54262z1, cout=>nx58250z6, dataa=>nx58250z2, 
      datad=>q_3_EXMPLR245, cin=>nx58250z7);
   ix58250z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx53265z1, cout=>nx58250z7, dataa=>nx58250z2, 
      datad=>q_2_EXMPLR246, cin=>nx58250z8);
   ix58250z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx52268z1, cout=>nx58250z8, dataa=>nx58250z2, 
      datad=>q_1_EXMPLR247, cin=>nx58250z9);
   ix58250z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx58250z10, datad=>nx58250z11, dataf=>nx58250z12, 
      cin=>GND_EXMPLR249);
   ix58250z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx51271z1, cout=>nx58250z9, datad=>q_0_EXMPLR248, 
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
      cnt_en : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal GND_EXMPLR251, nx1041z1, nx58250z4, nx58250z6, nx58250z8, 
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
   GND_EXMPLR251 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
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
      cin=>GND_EXMPLR251);
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
   signal ena1_EXMPLR280: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR280, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR280 <= '1';
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
   signal ena1_EXMPLR310: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR310, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR310 <= '1';
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
   signal ena1_EXMPLR340: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR340, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR340 <= '1';
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
      o_pixel : OUT std_logic_vector (7 DOWNTO 0)) ;
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
   signal i_valid_EXMPLR385: std_logic ;
   
   signal i_pixel_EXMPLR492: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_EXMPLR394: std_logic ;
   
   signal o_column_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_pixel_EXMPLR493: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble: std_logic ;
   
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
   
   signal i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_int: std_logic ;
   
   signal o_column_EXMPLR494: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_row_EXMPLR495: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR496: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR497: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR498: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR499: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR500: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR501: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR502: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR503: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR504: std_logic_vector (7 DOWNTO 0) ;
   
   signal GND_EXMPLR491, mem_wrn_current_0n4ss1_0, nx40106z3, nx45024z1, 
      nx40106z2, nx45024z2, nx17757z1, nx16760z1, nx15763z1, nx40106z1, 
      nx45024z3, not_rtlc0n196_repl, first_bubble_repl, nx63578z1, 
      mem_wrn_current_1_repl, mem_wrn_current_2_repl: std_logic ;
   
   signal DANGLING : std_logic_vector (42 downto 0 );

begin
   i_valid_EXMPLR385 <= i_valid ;
   i_pixel_EXMPLR492(7) <= i_pixel(7) ;
   i_pixel_EXMPLR492(6) <= i_pixel(6) ;
   i_pixel_EXMPLR492(5) <= i_pixel(5) ;
   i_pixel_EXMPLR492(4) <= i_pixel(4) ;
   i_pixel_EXMPLR492(3) <= i_pixel(3) ;
   i_pixel_EXMPLR492(2) <= i_pixel(2) ;
   i_pixel_EXMPLR492(1) <= i_pixel(1) ;
   i_pixel_EXMPLR492(0) <= i_pixel(0) ;
   i_clock_EXMPLR394 <= i_clock ;
   o_column(7) <= o_column_EXMPLR494(7) ;
   o_column(6) <= o_column_EXMPLR494(6) ;
   o_column(5) <= o_column_EXMPLR494(5) ;
   o_column(4) <= o_column_EXMPLR494(4) ;
   o_column(3) <= o_column_EXMPLR494(3) ;
   o_column(2) <= o_column_EXMPLR494(2) ;
   o_column(1) <= o_column_EXMPLR494(1) ;
   o_column(0) <= o_column_EXMPLR494(0) ;
   o_row(7) <= o_row_EXMPLR495(7) ;
   o_row(6) <= o_row_EXMPLR495(6) ;
   o_row(5) <= o_row_EXMPLR495(5) ;
   o_row(4) <= o_row_EXMPLR495(4) ;
   o_row(3) <= o_row_EXMPLR495(3) ;
   o_row(2) <= o_row_EXMPLR495(2) ;
   o_row(1) <= o_row_EXMPLR495(1) ;
   o_row(0) <= o_row_EXMPLR495(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR496(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR496(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR496(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR496(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR496(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR496(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR496(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR496(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR497(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR497(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR497(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR497(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR497(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR497(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR497(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR497(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR498(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR498(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR498(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR498(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR498(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR498(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR498(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR498(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR499(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR499(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR499(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR499(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR499(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR499(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR499(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR499(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR500(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR500(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR500(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR500(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR500(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR500(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR500(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR500(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR501(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR501(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR501(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR501(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR501(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR501(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR501(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR501(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR502(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR502(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR502(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR502(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR502(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR502(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR502(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR502(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR503(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR503(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR503(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR503(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR503(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR503(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR503(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR503(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR504(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR504(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR504(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR504(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR504(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR504(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR504(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR504(0) ;
   o_pixel(7) <= o_pixel_EXMPLR493(7) ;
   o_pixel(6) <= o_pixel_EXMPLR493(6) ;
   o_pixel(5) <= o_pixel_EXMPLR493(5) ;
   o_pixel(4) <= o_pixel_EXMPLR493(4) ;
   o_pixel(3) <= o_pixel_EXMPLR493(3) ;
   o_pixel(2) <= o_pixel_EXMPLR493(2) ;
   o_pixel(1) <= o_pixel_EXMPLR493(1) ;
   o_pixel(0) <= o_pixel_EXMPLR493(0) ;
   modgen_counter_o_row : modgen_counter_8_0 port map ( clock=>i_clock_int, 
      q(7)=>o_row_dup0(7), q(6)=>o_row_dup0(6), q(5)=>o_row_dup0(5), q(4)=>
      o_row_dup0(4), q(3)=>o_row_dup0(3), q(2)=>o_row_dup0(2), q(1)=>
      o_row_dup0(1), q(0)=>o_row_dup0(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>DANGLING(12), updn=>DANGLING
      (13), cnt_en=>DANGLING(14), p_not_rtlc0n196_repl=>not_rtlc0n196_repl);
   modgen_counter_o_column : modgen_counter_8_1 port map ( clock=>
      i_clock_int, q(7)=>o_column_dup0(7), q(6)=>o_column_dup0(6), q(5)=>
      o_column_dup0(5), q(4)=>o_column_dup0(4), q(3)=>o_column_dup0(3), q(2)
      =>o_column_dup0(2), q(1)=>o_column_dup0(1), q(0)=>o_column_dup0(0), 
      clk_en=>nx45024z1, aclear=>DANGLING(15), sload=>DANGLING(16), data(7)
      =>DANGLING(17), data(6)=>DANGLING(18), data(5)=>DANGLING(19), data(4)
      =>DANGLING(20), data(3)=>DANGLING(21), data(2)=>DANGLING(22), data(1)
      =>DANGLING(23), data(0)=>DANGLING(24), aset=>DANGLING(25), sclear=>
      nx45024z2, updn=>DANGLING(26), cnt_en=>DANGLING(27));
   mem : ram_dq_8_0 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)=>
      mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_0(7), 
      rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), rd_data1(4)=>
      mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>mem_q_0(2), 
      rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)=>
      o_column_dup0(7), addr1(6)=>o_column_dup0(6), addr1(5)=>
      o_column_dup0(5), addr1(4)=>o_column_dup0(4), addr1(3)=>
      o_column_dup0(3), addr1(2)=>o_column_dup0(2), addr1(1)=>
      o_column_dup0(1), addr1(0)=>o_column_dup0(0), wr_clk1=>i_clock_int, 
      rd_clk1=>DANGLING(28), wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(29), 
      ena1=>DANGLING(30), rst1=>DANGLING(31), regce1=>DANGLING(32));
   mem_0 : ram_dq_8_1 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)=>
      mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_1(7), 
      rd_data1(6)=>mem_q_1(6), rd_data1(5)=>mem_q_1(5), rd_data1(4)=>
      mem_q_1(4), rd_data1(3)=>mem_q_1(3), rd_data1(2)=>mem_q_1(2), 
      rd_data1(1)=>mem_q_1(1), rd_data1(0)=>mem_q_1(0), addr1(7)=>
      o_column_dup0(7), addr1(6)=>o_column_dup0(6), addr1(5)=>
      o_column_dup0(5), addr1(4)=>o_column_dup0(4), addr1(3)=>
      o_column_dup0(3), addr1(2)=>o_column_dup0(2), addr1(1)=>
      o_column_dup0(1), addr1(0)=>o_column_dup0(0), wr_clk1=>i_clock_int, 
      rd_clk1=>DANGLING(33), wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(34), 
      ena1=>DANGLING(35), rst1=>DANGLING(36), regce1=>DANGLING(37));
   mem_1 : ram_dq_8_2 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)=>
      mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_2(7), 
      rd_data1(6)=>mem_q_2(6), rd_data1(5)=>mem_q_2(5), rd_data1(4)=>
      mem_q_2(4), rd_data1(3)=>mem_q_2(3), rd_data1(2)=>mem_q_2(2), 
      rd_data1(1)=>mem_q_2(1), rd_data1(0)=>mem_q_2(0), addr1(7)=>
      o_column_dup0(7), addr1(6)=>o_column_dup0(6), addr1(5)=>
      o_column_dup0(5), addr1(4)=>o_column_dup0(4), addr1(3)=>
      o_column_dup0(3), addr1(2)=>o_column_dup0(2), addr1(1)=>
      o_column_dup0(1), addr1(0)=>o_column_dup0(0), wr_clk1=>i_clock_int, 
      rd_clk1=>DANGLING(38), wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(39), 
      ena1=>DANGLING(40), rst1=>DANGLING(41), regce1=>DANGLING(42));
   GND_EXMPLR491 <= '0';
   reg_mem_wrn_current_2_repl : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current_2_repl, datain=>mem_wrn_current(1), clk=>i_clock_int, 
      ena=>nx40106z1);
   reg_mem_wrn_current_2 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current(1), clk=>i_clock_int, ena
      =>nx40106z1);
   reg_mem_wrn_current_1_repl : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current_1_repl, datain=>mem_wrn_current(0), clk=>i_clock_int, 
      ena=>nx40106z1);
   reg_mem_wrn_current_1 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>i_clock_int, ena
      =>nx40106z1);
   reg_mem_wrn_current_0 : stratixii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current_0n4ss1_0, clk=>i_clock_int, 
      ena=>nx40106z1);
   reg_mem_wrn_2 : stratixii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>nx17757z1, clk=>i_clock_int);
   reg_mem_wrn_1 : stratixii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>nx16760z1, clk=>i_clock_int);
   reg_mem_wrn_0 : stratixii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>nx15763z1, clk=>i_clock_int);
   reg_mem_data_7 : stratixii_lcell_ff port map ( regout=>mem_data(7), 
      datain=>i_pixel_int(7), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_6 : stratixii_lcell_ff port map ( regout=>mem_data(6), 
      datain=>i_pixel_int(6), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_5 : stratixii_lcell_ff port map ( regout=>mem_data(5), 
      datain=>i_pixel_int(5), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_4 : stratixii_lcell_ff port map ( regout=>mem_data(4), 
      datain=>i_pixel_int(4), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_3 : stratixii_lcell_ff port map ( regout=>mem_data(3), 
      datain=>i_pixel_int(3), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_2 : stratixii_lcell_ff port map ( regout=>mem_data(2), 
      datain=>i_pixel_int(2), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_1 : stratixii_lcell_ff port map ( regout=>mem_data(1), 
      datain=>i_pixel_int(1), clk=>i_clock_int, ena=>i_valid_int);
   reg_mem_data_0 : stratixii_lcell_ff port map ( regout=>mem_data(0), 
      datain=>i_pixel_int(0), clk=>i_clock_int, ena=>i_valid_int);
   reg_first_bubble_repl : stratixii_lcell_ff port map ( regout=>
      first_bubble_repl, datain=>i_valid_int, clk=>i_clock_int);
   reg_first_bubble : stratixii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid_int, clk=>i_clock_int);
   reg_buffer2_2_7 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_7, 
      datain=>mem_q_2(7), adatasdata=>mem_data(7), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_6 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_6, 
      datain=>mem_q_2(6), adatasdata=>mem_data(6), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_5 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_5, 
      datain=>mem_q_2(5), adatasdata=>mem_data(5), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_4 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_4, 
      datain=>mem_q_2(4), adatasdata=>mem_data(4), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_3 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_3, 
      datain=>mem_q_2(3), adatasdata=>mem_data(3), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_2 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_2, 
      datain=>mem_q_2(2), adatasdata=>mem_data(2), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_1 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_1, 
      datain=>mem_q_2(1), adatasdata=>mem_data(1), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_2_0 : stratixii_lcell_ff port map ( regout=>o_image2_2_dup0_0, 
      datain=>mem_q_2(0), adatasdata=>mem_data(0), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_2_repl);
   reg_buffer2_1_7 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_7, 
      datain=>mem_q_1(7), adatasdata=>mem_data(7), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_6 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_6, 
      datain=>mem_q_1(6), adatasdata=>mem_data(6), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_5 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_5, 
      datain=>mem_q_1(5), adatasdata=>mem_data(5), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_4 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_4, 
      datain=>mem_q_1(4), adatasdata=>mem_data(4), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_3 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_3, 
      datain=>mem_q_1(3), adatasdata=>mem_data(3), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_2 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_2, 
      datain=>mem_q_1(2), adatasdata=>mem_data(2), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_1 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_1, 
      datain=>mem_q_1(1), adatasdata=>mem_data(1), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_1_0 : stratixii_lcell_ff port map ( regout=>o_image2_1_dup0_0, 
      datain=>mem_q_1(0), adatasdata=>mem_data(0), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>mem_wrn_current_1_repl);
   reg_buffer2_0_7 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(7), 
      datain=>mem_data(7), adatasdata=>mem_q_0(7), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_6 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(6), 
      datain=>mem_data(6), adatasdata=>mem_q_0(6), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_5 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(5), 
      datain=>mem_data(5), adatasdata=>mem_q_0(5), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_4 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(4), 
      datain=>mem_data(4), adatasdata=>mem_q_0(4), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_3 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(3), 
      datain=>mem_data(3), adatasdata=>mem_q_0(3), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_2 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(2), 
      datain=>mem_data(2), adatasdata=>mem_q_0(2), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_1 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(1), 
      datain=>mem_data(1), adatasdata=>mem_q_0(1), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
   reg_buffer2_0_0 : stratixii_lcell_ff port map ( regout=>o_image2_dup0(0), 
      datain=>mem_data(0), adatasdata=>mem_q_0(0), clk=>i_clock_int, ena=>
      first_bubble_repl, sload=>nx63578z1);
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
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR495(0), datain=>o_row_dup0(0));
   o_pixel_triBus1_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(7), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(6), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(5), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(4), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(3), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(2), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(1), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_pixel_triBus1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR493(0), datain=>GND_EXMPLR491, oe=>
      GND_EXMPLR491);
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR504(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR504(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR504(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR504(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR504(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR504(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR504(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR504(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR503(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR503(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR503(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR503(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR503(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR503(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR503(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR503(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR502(7), datain=>o_image2_dup0(7));
   o_image2_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(6), datain=>o_image2_dup0(6));
   o_image2_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(5), datain=>o_image2_dup0(5));
   o_image2_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(4), datain=>o_image2_dup0(4));
   o_image2_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(3), datain=>o_image2_dup0(3));
   o_image2_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(2), datain=>o_image2_dup0(2));
   o_image2_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(1), datain=>o_image2_dup0(1));
   o_image2_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_0_EXMPLR502(0), datain=>o_image2_dup0(0));
   o_image1_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_EXMPLR501(7), datain=>o_image1_2_dup0_7
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
       port map ( padio=>o_image1_2_EXMPLR501(6), datain=>o_image1_2_dup0_6
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
       port map ( padio=>o_image1_2_EXMPLR501(5), datain=>o_image1_2_dup0_5
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
       port map ( padio=>o_image1_2_EXMPLR501(4), datain=>o_image1_2_dup0_4
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
       port map ( padio=>o_image1_2_EXMPLR501(3), datain=>o_image1_2_dup0_3
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
       port map ( padio=>o_image1_2_EXMPLR501(2), datain=>o_image1_2_dup0_2
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
       port map ( padio=>o_image1_2_EXMPLR501(1), datain=>o_image1_2_dup0_1
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
       port map ( padio=>o_image1_2_EXMPLR501(0), datain=>o_image1_2_dup0_0
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
       port map ( padio=>o_image1_1_EXMPLR500(7), datain=>o_image1_1_dup0_7
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
       port map ( padio=>o_image1_1_EXMPLR500(6), datain=>o_image1_1_dup0_6
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
       port map ( padio=>o_image1_1_EXMPLR500(5), datain=>o_image1_1_dup0_5
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
       port map ( padio=>o_image1_1_EXMPLR500(4), datain=>o_image1_1_dup0_4
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
       port map ( padio=>o_image1_1_EXMPLR500(3), datain=>o_image1_1_dup0_3
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
       port map ( padio=>o_image1_1_EXMPLR500(2), datain=>o_image1_1_dup0_2
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
       port map ( padio=>o_image1_1_EXMPLR500(1), datain=>o_image1_1_dup0_1
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
       port map ( padio=>o_image1_1_EXMPLR500(0), datain=>o_image1_1_dup0_0
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
       port map ( padio=>o_image1_0_EXMPLR499(7), datain=>o_image1_dup0(7));
   o_image1_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(6), datain=>o_image1_dup0(6));
   o_image1_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(5), datain=>o_image1_dup0(5));
   o_image1_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(4), datain=>o_image1_dup0(4));
   o_image1_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(3), datain=>o_image1_dup0(3));
   o_image1_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(2), datain=>o_image1_dup0(2));
   o_image1_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(1), datain=>o_image1_dup0(1));
   o_image1_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_0_EXMPLR499(0), datain=>o_image1_dup0(0));
   o_image0_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_EXMPLR498(7), datain=>o_image0_2_dup0_7
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
       port map ( padio=>o_image0_2_EXMPLR498(6), datain=>o_image0_2_dup0_6
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
       port map ( padio=>o_image0_2_EXMPLR498(5), datain=>o_image0_2_dup0_5
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
       port map ( padio=>o_image0_2_EXMPLR498(4), datain=>o_image0_2_dup0_4
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
       port map ( padio=>o_image0_2_EXMPLR498(3), datain=>o_image0_2_dup0_3
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
       port map ( padio=>o_image0_2_EXMPLR498(2), datain=>o_image0_2_dup0_2
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
       port map ( padio=>o_image0_2_EXMPLR498(1), datain=>o_image0_2_dup0_1
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
       port map ( padio=>o_image0_2_EXMPLR498(0), datain=>o_image0_2_dup0_0
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
       port map ( padio=>o_image0_1_EXMPLR497(7), datain=>o_image0_1_dup0_7
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
       port map ( padio=>o_image0_1_EXMPLR497(6), datain=>o_image0_1_dup0_6
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
       port map ( padio=>o_image0_1_EXMPLR497(5), datain=>o_image0_1_dup0_5
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
       port map ( padio=>o_image0_1_EXMPLR497(4), datain=>o_image0_1_dup0_4
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
       port map ( padio=>o_image0_1_EXMPLR497(3), datain=>o_image0_1_dup0_3
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
       port map ( padio=>o_image0_1_EXMPLR497(2), datain=>o_image0_1_dup0_2
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
       port map ( padio=>o_image0_1_EXMPLR497(1), datain=>o_image0_1_dup0_1
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
       port map ( padio=>o_image0_1_EXMPLR497(0), datain=>o_image0_1_dup0_0
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
       port map ( padio=>o_image0_0_EXMPLR496(7), datain=>o_image0_dup0(7));
   o_image0_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(6), datain=>o_image0_dup0(6));
   o_image0_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(5), datain=>o_image0_dup0(5));
   o_image0_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(4), datain=>o_image0_dup0(4));
   o_image0_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(3), datain=>o_image0_dup0(3));
   o_image0_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(2), datain=>o_image0_dup0(2));
   o_image0_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(1), datain=>o_image0_dup0(1));
   o_image0_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_0_EXMPLR496(0), datain=>o_image0_dup0(0));
   o_column_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(7), datain=>o_column_dup0(7));
   o_column_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(6), datain=>o_column_dup0(6));
   o_column_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(5), datain=>o_column_dup0(5));
   o_column_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(4), datain=>o_column_dup0(4));
   o_column_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(3), datain=>o_column_dup0(3));
   o_column_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(2), datain=>o_column_dup0(2));
   o_column_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(1), datain=>o_column_dup0(1));
   o_column_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR494(0), datain=>o_column_dup0(0));
   ix45024z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"8000000000000000") 
       port map ( combout=>nx45024z3, dataa=>o_column_dup0(2), datab=>
      o_column_dup0(3), datac=>o_column_dup0(4), datad=>o_column_dup0(5), 
      datae=>o_column_dup0(6), dataf=>o_column_dup0(7));
   ix40106z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ffff00f0") 
       port map ( combout=>nx40106z1, datac=>i_valid_int, datad=>nx40106z2, 
      datae=>nx40106z3, dataf=>mem_wrn_current(0));
   ix15763z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f000f000f000f0f0") 
       port map ( combout=>nx15763z1, datac=>i_valid_int, datad=>
      mem_wrn_current(0), datae=>mem_wrn_current(1), dataf=>
      mem_wrn_current(2));
   ix16760z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>nx16760z1, datae=>i_valid_int, dataf=>
      mem_wrn_current(1));
   ix17757z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>nx17757z1, datae=>i_valid_int, dataf=>
      mem_wrn_current(2));
   ix45024z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00000000000000") 
       port map ( combout=>nx45024z2, datad=>nx45024z3, datae=>
      o_column_dup0(0), dataf=>o_column_dup0(1));
   ix65_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx63578z1, datae=>mem_wrn_current(1), dataf=>
      mem_wrn_current(2));
   ix40106z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx40106z2, datae=>mem_wrn_current(1), dataf=>
      mem_wrn_current(2));
   ix45024z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx45024z1, datae=>i_valid_int, dataf=>
      first_bubble);
   ix63_repl : stratixii_lcell_comb
      generic map (lut_mask => X"0c00000000000000") 
       port map ( combout=>not_rtlc0n196_repl, datab=>nx45024z3, datac=>
      i_valid_int, datad=>first_bubble, datae=>o_column_dup0(0), dataf=>
      o_column_dup0(1));
   ix40106z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"0c00000000000000") 
       port map ( combout=>nx40106z3, datab=>nx45024z3, datac=>i_valid_int, 
      datad=>first_bubble, datae=>o_column_dup0(0), dataf=>o_column_dup0(1)
   );
   ix39109z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>mem_wrn_current_0n4ss1_0, datae=>i_valid_int, 
      dataf=>mem_wrn_current(2));
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR385);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR492(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR492(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR492(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR492(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR492(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR492(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR492(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR492(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR394);
end main ;

