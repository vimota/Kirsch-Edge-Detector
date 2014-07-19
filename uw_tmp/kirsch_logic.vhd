
-- 
-- Definition of  kirsch
-- 
--      Sat Jul 19 19:47:12 2014
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
      cnt_en : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx58250z1, q_7_EXMPLR144, nx57253z1, q_6_EXMPLR145, nx56256z1, 
      q_5_EXMPLR146, nx55259z1, q_4_EXMPLR147, nx54262z1, q_3_EXMPLR148, 
      nx53265z1, q_2_EXMPLR149, nx52268z1, q_1_EXMPLR150, nx51271z1, 
      q_0_EXMPLR151, nx58250z10, nx58250z9, nx58250z8, nx58250z7, nx58250z6, 
      nx58250z5, nx58250z4, nx58250z3, nx58250z2, GND_EXMPLR152, nx58250z11, 
      nx58250z12: std_logic ;

begin
   q(7) <= q_7_EXMPLR144 ;
   q(6) <= q_6_EXMPLR145 ;
   q(5) <= q_5_EXMPLR146 ;
   q(4) <= q_4_EXMPLR147 ;
   q(3) <= q_3_EXMPLR148 ;
   q(2) <= q_2_EXMPLR149 ;
   q(1) <= q_1_EXMPLR150 ;
   q(0) <= q_0_EXMPLR151 ;
   GND_EXMPLR152 <= '0';
   nx58250z2 <= '0';
   nx58250z11 <= '1';
   nx58250z12 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>q_7_EXMPLR144, datain=>
      nx58250z1, clk=>clock, ena=>cnt_en);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>q_6_EXMPLR145, datain=>
      nx57253z1, clk=>clock, ena=>cnt_en);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>q_5_EXMPLR146, datain=>
      nx56256z1, clk=>clock, ena=>cnt_en);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>q_4_EXMPLR147, datain=>
      nx55259z1, clk=>clock, ena=>cnt_en);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>q_3_EXMPLR148, datain=>
      nx54262z1, clk=>clock, ena=>cnt_en);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>q_2_EXMPLR149, datain=>
      nx53265z1, clk=>clock, ena=>cnt_en);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>q_1_EXMPLR150, datain=>
      nx52268z1, clk=>clock, ena=>cnt_en);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>q_0_EXMPLR151, datain=>
      nx51271z1, clk=>clock, ena=>cnt_en);
   ix58250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx58250z1, datad=>q_7_EXMPLR144, dataf=>nx58250z2, 
      cin=>nx58250z3);
   ix58250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx57253z1, cout=>nx58250z3, dataa=>nx58250z2, 
      datad=>q_6_EXMPLR145, cin=>nx58250z4);
   ix58250z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z2, 
      datad=>q_5_EXMPLR146, cin=>nx58250z5);
   ix58250z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx55259z1, cout=>nx58250z5, dataa=>nx58250z2, 
      datad=>q_4_EXMPLR147, cin=>nx58250z6);
   ix58250z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx54262z1, cout=>nx58250z6, dataa=>nx58250z2, 
      datad=>q_3_EXMPLR148, cin=>nx58250z7);
   ix58250z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx53265z1, cout=>nx58250z7, dataa=>nx58250z2, 
      datad=>q_2_EXMPLR149, cin=>nx58250z8);
   ix58250z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx52268z1, cout=>nx58250z8, dataa=>nx58250z2, 
      datad=>q_1_EXMPLR150, cin=>nx58250z9);
   ix58250z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx58250z10, datad=>nx58250z11, dataf=>nx58250z12, 
      cin=>GND_EXMPLR152);
   ix58250z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx51271z1, cout=>nx58250z9, datad=>q_0_EXMPLR151, 
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
   signal GND_EXMPLR154, nx1041z1, nx58250z4, nx58250z6, nx58250z8, 
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
   GND_EXMPLR154 <= '0';
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
      cin=>GND_EXMPLR154);
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
   signal rd_data1_EXMPLR158: std_logic_vector (7 DOWNTO 7) ;

begin
   rd_data1(7) <= rd_data1_EXMPLR158(7) ;
   rd_data1(6) <= rd_data1_EXMPLR158(7) ;
   rd_data1(5) <= rd_data1_EXMPLR158(7) ;
   rd_data1(4) <= rd_data1_EXMPLR158(7) ;
   rd_data1(3) <= rd_data1_EXMPLR158(7) ;
   rd_data1(2) <= rd_data1_EXMPLR158(7) ;
   rd_data1(1) <= rd_data1_EXMPLR158(7) ;
   rd_data1(0) <= rd_data1_EXMPLR158(7) ;
   rd_data1_EXMPLR158(7) <= '0';
end IMPLEMENTATION ;

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
         cnt_en : IN std_logic) ;
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
   signal i_clock_EXMPLR200, i_valid_EXMPLR201, o_valid_EXMPLR202, 
      o_edge_EXMPLR203: std_logic ;
   
   signal o_dir_EXMPLR353: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR354: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_pixel_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_column_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_memory_first_bubble, i_clock_int, i_valid_int: std_logic ;
   
   signal o_row_EXMPLR355: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_pixel_EXMPLR356: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_column_EXMPLR357: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_7_EXMPLR241, o_image0_1_6_EXMPLR242, 
      o_image0_1_5_EXMPLR243, o_image0_1_4_EXMPLR244, o_image0_1_3_EXMPLR245, 
      o_image0_1_2_EXMPLR246, o_image0_1_1_EXMPLR247, o_image0_1_0_EXMPLR248, 
      o_image0_2_7_EXMPLR249, o_image0_2_6_EXMPLR250, o_image0_2_5_EXMPLR251, 
      o_image0_2_4_EXMPLR252, o_image0_2_3_EXMPLR253, o_image0_2_2_EXMPLR254, 
      o_image0_2_1_EXMPLR255, o_image0_2_0_EXMPLR256: std_logic ;
   
   signal o_image1: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_7_EXMPLR265, o_image1_1_6_EXMPLR266, 
      o_image1_1_5_EXMPLR267, o_image1_1_4_EXMPLR268, o_image1_1_3_EXMPLR269, 
      o_image1_1_2_EXMPLR270, o_image1_1_1_EXMPLR271, o_image1_1_0_EXMPLR272, 
      o_image1_2_7_EXMPLR273, o_image1_2_6_EXMPLR274, o_image1_2_5_EXMPLR275, 
      o_image1_2_4_EXMPLR276, o_image1_2_3_EXMPLR277, o_image1_2_2_EXMPLR278, 
      o_image1_2_1_EXMPLR279, o_image1_2_0_EXMPLR280: std_logic ;
   
   signal o_image2: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_7_EXMPLR289, o_image2_1_6_EXMPLR290, 
      o_image2_1_5_EXMPLR291, o_image2_1_4_EXMPLR292, o_image2_1_3_EXMPLR293, 
      o_image2_1_2_EXMPLR294, o_image2_1_1_EXMPLR295, o_image2_1_0_EXMPLR296, 
      o_image2_2_7_EXMPLR297, o_image2_2_6_EXMPLR298, o_image2_2_5_EXMPLR299, 
      o_image2_2_4_EXMPLR300, o_image2_2_3_EXMPLR301, o_image2_2_2_EXMPLR302, 
      o_image2_2_1_EXMPLR303, o_image2_2_0_EXMPLR304: std_logic ;
   
   signal debug_led_red_EXMPLR358: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR359: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR360: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR361: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR362: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR363: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR364: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR365: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_dup0_1: std_logic ;
   
   signal debug_num_5_dup0: std_logic_vector (7 DOWNTO 7) ;
   
   signal nx2564z2, nx52790z1, nx2564z1, nx2564z3, nx52790z2: std_logic ;
   
   signal DANGLING : std_logic_vector (49 downto 0 );

begin
   i_clock_EXMPLR200 <= i_clock ;
   i_valid_EXMPLR201 <= i_valid ;
   o_valid <= o_valid_EXMPLR202 ;
   o_edge <= o_edge_EXMPLR203 ;
   o_dir(2) <= o_dir_EXMPLR353(2) ;
   o_dir(1) <= o_dir_EXMPLR353(1) ;
   o_dir(0) <= o_dir_EXMPLR353(0) ;
   o_mode(1) <= o_mode_EXMPLR354(1) ;
   o_mode(0) <= o_mode_EXMPLR354(0) ;
   o_row(7) <= o_row_EXMPLR355(7) ;
   o_row(6) <= o_row_EXMPLR355(6) ;
   o_row(5) <= o_row_EXMPLR355(5) ;
   o_row(4) <= o_row_EXMPLR355(4) ;
   o_row(3) <= o_row_EXMPLR355(3) ;
   o_row(2) <= o_row_EXMPLR355(2) ;
   o_row(1) <= o_row_EXMPLR355(1) ;
   o_row(0) <= o_row_EXMPLR355(0) ;
   o_pixel(7) <= o_pixel_EXMPLR356(7) ;
   o_pixel(6) <= o_pixel_EXMPLR356(6) ;
   o_pixel(5) <= o_pixel_EXMPLR356(5) ;
   o_pixel(4) <= o_pixel_EXMPLR356(4) ;
   o_pixel(3) <= o_pixel_EXMPLR356(3) ;
   o_pixel(2) <= o_pixel_EXMPLR356(2) ;
   o_pixel(1) <= o_pixel_EXMPLR356(1) ;
   o_pixel(0) <= o_pixel_EXMPLR356(0) ;
   o_column(7) <= o_column_EXMPLR357(7) ;
   o_column(6) <= o_column_EXMPLR357(6) ;
   o_column(5) <= o_column_EXMPLR357(5) ;
   o_column(4) <= o_column_EXMPLR357(4) ;
   o_column(3) <= o_column_EXMPLR357(3) ;
   o_column(2) <= o_column_EXMPLR357(2) ;
   o_column(1) <= o_column_EXMPLR357(1) ;
   o_column(0) <= o_column_EXMPLR357(0) ;
   o_image0_0(7) <= o_image0(7) ;
   o_image0_0(6) <= o_image0(6) ;
   o_image0_0(5) <= o_image0(5) ;
   o_image0_0(4) <= o_image0(4) ;
   o_image0_0(3) <= o_image0(3) ;
   o_image0_0(2) <= o_image0(2) ;
   o_image0_0(1) <= o_image0(1) ;
   o_image0_0(0) <= o_image0(0) ;
   o_image0_1(7) <= o_image0_1_7_EXMPLR241 ;
   o_image0_1(6) <= o_image0_1_6_EXMPLR242 ;
   o_image0_1(5) <= o_image0_1_5_EXMPLR243 ;
   o_image0_1(4) <= o_image0_1_4_EXMPLR244 ;
   o_image0_1(3) <= o_image0_1_3_EXMPLR245 ;
   o_image0_1(2) <= o_image0_1_2_EXMPLR246 ;
   o_image0_1(1) <= o_image0_1_1_EXMPLR247 ;
   o_image0_1(0) <= o_image0_1_0_EXMPLR248 ;
   o_image0_2(7) <= o_image0_2_7_EXMPLR249 ;
   o_image0_2(6) <= o_image0_2_6_EXMPLR250 ;
   o_image0_2(5) <= o_image0_2_5_EXMPLR251 ;
   o_image0_2(4) <= o_image0_2_4_EXMPLR252 ;
   o_image0_2(3) <= o_image0_2_3_EXMPLR253 ;
   o_image0_2(2) <= o_image0_2_2_EXMPLR254 ;
   o_image0_2(1) <= o_image0_2_1_EXMPLR255 ;
   o_image0_2(0) <= o_image0_2_0_EXMPLR256 ;
   o_image1_0(7) <= o_image1(7) ;
   o_image1_0(6) <= o_image1(6) ;
   o_image1_0(5) <= o_image1(5) ;
   o_image1_0(4) <= o_image1(4) ;
   o_image1_0(3) <= o_image1(3) ;
   o_image1_0(2) <= o_image1(2) ;
   o_image1_0(1) <= o_image1(1) ;
   o_image1_0(0) <= o_image1(0) ;
   o_image1_1(7) <= o_image1_1_7_EXMPLR265 ;
   o_image1_1(6) <= o_image1_1_6_EXMPLR266 ;
   o_image1_1(5) <= o_image1_1_5_EXMPLR267 ;
   o_image1_1(4) <= o_image1_1_4_EXMPLR268 ;
   o_image1_1(3) <= o_image1_1_3_EXMPLR269 ;
   o_image1_1(2) <= o_image1_1_2_EXMPLR270 ;
   o_image1_1(1) <= o_image1_1_1_EXMPLR271 ;
   o_image1_1(0) <= o_image1_1_0_EXMPLR272 ;
   o_image1_2(7) <= o_image1_2_7_EXMPLR273 ;
   o_image1_2(6) <= o_image1_2_6_EXMPLR274 ;
   o_image1_2(5) <= o_image1_2_5_EXMPLR275 ;
   o_image1_2(4) <= o_image1_2_4_EXMPLR276 ;
   o_image1_2(3) <= o_image1_2_3_EXMPLR277 ;
   o_image1_2(2) <= o_image1_2_2_EXMPLR278 ;
   o_image1_2(1) <= o_image1_2_1_EXMPLR279 ;
   o_image1_2(0) <= o_image1_2_0_EXMPLR280 ;
   o_image2_0(7) <= o_image2(7) ;
   o_image2_0(6) <= o_image2(6) ;
   o_image2_0(5) <= o_image2(5) ;
   o_image2_0(4) <= o_image2(4) ;
   o_image2_0(3) <= o_image2(3) ;
   o_image2_0(2) <= o_image2(2) ;
   o_image2_0(1) <= o_image2(1) ;
   o_image2_0(0) <= o_image2(0) ;
   o_image2_1(7) <= o_image2_1_7_EXMPLR289 ;
   o_image2_1(6) <= o_image2_1_6_EXMPLR290 ;
   o_image2_1(5) <= o_image2_1_5_EXMPLR291 ;
   o_image2_1(4) <= o_image2_1_4_EXMPLR292 ;
   o_image2_1(3) <= o_image2_1_3_EXMPLR293 ;
   o_image2_1(2) <= o_image2_1_2_EXMPLR294 ;
   o_image2_1(1) <= o_image2_1_1_EXMPLR295 ;
   o_image2_1(0) <= o_image2_1_0_EXMPLR296 ;
   o_image2_2(7) <= o_image2_2_7_EXMPLR297 ;
   o_image2_2(6) <= o_image2_2_6_EXMPLR298 ;
   o_image2_2(5) <= o_image2_2_5_EXMPLR299 ;
   o_image2_2(4) <= o_image2_2_4_EXMPLR300 ;
   o_image2_2(3) <= o_image2_2_3_EXMPLR301 ;
   o_image2_2(2) <= o_image2_2_2_EXMPLR302 ;
   o_image2_2(1) <= o_image2_2_1_EXMPLR303 ;
   o_image2_2(0) <= o_image2_2_0_EXMPLR304 ;
   debug_led_red(17) <= debug_led_red_EXMPLR358(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR358(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR358(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR358(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR358(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR358(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR358(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR358(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR358(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR358(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR358(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR358(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR358(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR358(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR358(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR358(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR358(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR358(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR359(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR359(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR359(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR359(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR359(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR359(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR360(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR360(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR360(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR360(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR361(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR361(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR361(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR361(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR362(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR362(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR362(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR362(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR363(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR363(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR363(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR363(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR364(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR364(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR364(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR364(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR365(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR365(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR365(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR365(0) ;
   u_memory_modgen_counter_o_row : modgen_counter_8_0 port map ( clock=>
      i_clock_int, q(7)=>o_row_dup0(7), q(6)=>o_row_dup0(6), q(5)=>
      o_row_dup0(5), q(4)=>o_row_dup0(4), q(3)=>o_row_dup0(3), q(2)=>
      o_row_dup0(2), q(1)=>o_row_dup0(1), q(0)=>o_row_dup0(0), clk_en=>
      DANGLING(0), aclear=>DANGLING(1), sload=>DANGLING(2), data(7)=>
      DANGLING(3), data(6)=>DANGLING(4), data(5)=>DANGLING(5), data(4)=>
      DANGLING(6), data(3)=>DANGLING(7), data(2)=>DANGLING(8), data(1)=>
      DANGLING(9), data(0)=>DANGLING(10), aset=>DANGLING(11), sclear=>
      DANGLING(12), updn=>DANGLING(13), cnt_en=>nx52790z1);
   u_memory_modgen_counter_o_column : modgen_counter_8_1 port map ( clock=>
      i_clock_int, q(7)=>o_column_dup0(7), q(6)=>o_column_dup0(6), q(5)=>
      o_column_dup0(5), q(4)=>o_column_dup0(4), q(3)=>o_column_dup0(3), q(2)
      =>o_column_dup0(2), q(1)=>o_column_dup0(1), q(0)=>o_column_dup0(0), 
      clk_en=>nx2564z1, aclear=>DANGLING(14), sload=>DANGLING(15), data(7)=>
      DANGLING(16), data(6)=>DANGLING(17), data(5)=>DANGLING(18), data(4)=>
      DANGLING(19), data(3)=>DANGLING(20), data(2)=>DANGLING(21), data(1)=>
      DANGLING(22), data(0)=>DANGLING(23), aset=>DANGLING(24), sclear=>
      nx2564z2, updn=>DANGLING(25), cnt_en=>DANGLING(26));
   u_memory_u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>DANGLING(27), 
      wr_data1(6)=>DANGLING(28), wr_data1(5)=>DANGLING(29), wr_data1(4)=>
      DANGLING(30), wr_data1(3)=>DANGLING(31), wr_data1(2)=>DANGLING(32), 
      wr_data1(1)=>DANGLING(33), wr_data1(0)=>DANGLING(34), rd_data1(7)=>
      o_pixel_dup0(7), rd_data1(6)=>o_pixel_dup0(6), rd_data1(5)=>
      o_pixel_dup0(5), rd_data1(4)=>o_pixel_dup0(4), rd_data1(3)=>
      o_pixel_dup0(3), rd_data1(2)=>o_pixel_dup0(2), rd_data1(1)=>
      o_pixel_dup0(1), rd_data1(0)=>o_pixel_dup0(0), addr1(7)=>DANGLING(35), 
      addr1(6)=>DANGLING(36), addr1(5)=>DANGLING(37), addr1(4)=>DANGLING(38), 
      addr1(3)=>DANGLING(39), addr1(2)=>DANGLING(40), addr1(1)=>DANGLING(41), 
      addr1(0)=>DANGLING(42), wr_clk1=>DANGLING(43), rd_clk1=>DANGLING(44), 
      wr_ena1=>DANGLING(45), rd_ena1=>DANGLING(46), ena1=>DANGLING(47), rst1
      =>DANGLING(48), regce1=>DANGLING(49));
   debug_num_5_dup0_1 <= '1';
   debug_num_5_dup0(7) <= '0';
   u_memory_reg_first_bubble : stratixii_lcell_ff port map ( regout=>
      u_memory_first_bubble, datain=>i_valid_int, clk=>i_clock_int);
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR355(0), datain=>o_row_dup0(0));
   o_pixel_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(7), datain=>o_pixel_dup0(7));
   o_pixel_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(6), datain=>o_pixel_dup0(6));
   o_pixel_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(5), datain=>o_pixel_dup0(5));
   o_pixel_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(4), datain=>o_pixel_dup0(4));
   o_pixel_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(3), datain=>o_pixel_dup0(3));
   o_pixel_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(2), datain=>o_pixel_dup0(2));
   o_pixel_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(1), datain=>o_pixel_dup0(1));
   o_pixel_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_pixel_EXMPLR356(0), datain=>o_pixel_dup0(0));
   o_mode_triBus2_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR354(1), datain=>debug_num_5_dup0(7), 
      oe=>debug_num_5_dup0(7));
   o_mode_triBus2_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR354(0), datain=>debug_num_5_dup0(7), 
      oe=>debug_num_5_dup0(7));
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_7_EXMPLR297, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_6_EXMPLR298, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_5_EXMPLR299, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_4_EXMPLR300, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_3_EXMPLR301, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_2_EXMPLR302, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_1_EXMPLR303, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_2_0_EXMPLR304, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_7_EXMPLR289, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_6_EXMPLR290, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_5_EXMPLR291, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_4_EXMPLR292, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_3_EXMPLR293, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_2_EXMPLR294, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_1_EXMPLR295, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2_1_0_EXMPLR296, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image2(7), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(6), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(5), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(4), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(3), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(2), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(1), datain=>debug_num_5_dup0(7));
   o_image2_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2(0), datain=>debug_num_5_dup0(7));
   o_image1_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1_2_7_EXMPLR273, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_6_EXMPLR274, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_5_EXMPLR275, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_4_EXMPLR276, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_3_EXMPLR277, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_2_EXMPLR278, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_1_EXMPLR279, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_2_0_EXMPLR280, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_7_EXMPLR265, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_6_EXMPLR266, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_5_EXMPLR267, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_4_EXMPLR268, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_3_EXMPLR269, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_2_EXMPLR270, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_1_EXMPLR271, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1_1_0_EXMPLR272, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image1(7), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(6), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(5), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(4), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(3), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(2), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(1), datain=>debug_num_5_dup0(7));
   o_image1_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image1(0), datain=>debug_num_5_dup0(7));
   o_image0_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0_2_7_EXMPLR249, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_6_EXMPLR250, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_5_EXMPLR251, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_4_EXMPLR252, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_3_EXMPLR253, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_2_EXMPLR254, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_1_EXMPLR255, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_2_0_EXMPLR256, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_7_EXMPLR241, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_6_EXMPLR242, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_5_EXMPLR243, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_4_EXMPLR244, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_3_EXMPLR245, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_2_EXMPLR246, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_1_EXMPLR247, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0_1_0_EXMPLR248, datain=>debug_num_5_dup0(7)
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
       port map ( padio=>o_image0(7), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(6), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(5), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(4), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(3), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(2), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(1), datain=>debug_num_5_dup0(7));
   o_image0_obuf_0_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image0(0), datain=>debug_num_5_dup0(7));
   o_dir_triBus1_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR353(2), datain=>debug_num_5_dup0(7), oe
      =>debug_num_5_dup0(7));
   o_dir_triBus1_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR353(1), datain=>debug_num_5_dup0(7), oe
      =>debug_num_5_dup0(7));
   o_dir_triBus1_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR353(0), datain=>debug_num_5_dup0(7), oe
      =>debug_num_5_dup0(7));
   o_column_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(7), datain=>o_column_dup0(7));
   o_column_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(6), datain=>o_column_dup0(6));
   o_column_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(5), datain=>o_column_dup0(5));
   o_column_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(4), datain=>o_column_dup0(4));
   o_column_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(3), datain=>o_column_dup0(3));
   o_column_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(2), datain=>o_column_dup0(2));
   o_column_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(1), datain=>o_column_dup0(1));
   o_column_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_column_EXMPLR357(0), datain=>o_column_dup0(0));
   ix52790z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"0f00000000000000") 
       port map ( combout=>nx52790z2, datac=>i_valid_int, datad=>
      u_memory_first_bubble, datae=>o_column_dup0(0), dataf=>
      o_column_dup0(1));
   ix2564z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx2564z3, datac=>o_column_dup0(4), datad=>
      o_column_dup0(5), datae=>o_column_dup0(6), dataf=>o_column_dup0(7));
   ix2564z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx2564z1, datae=>i_valid_int, dataf=>
      u_memory_first_bubble);
   ix52790z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx52790z1, datac=>nx52790z2, datad=>nx2564z3, 
      datae=>o_column_dup0(2), dataf=>o_column_dup0(3));
   ix2564z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"c000000000000000") 
       port map ( combout=>nx2564z2, datab=>nx2564z3, datac=>
      o_column_dup0(0), datad=>o_column_dup0(1), datae=>o_column_dup0(2), 
      dataf=>o_column_dup0(3));
   ix45767z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR203, datain=>debug_num_5_dup0(7), oe=>
      debug_num_5_dup0(7));
   ix51998z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR202, datain=>debug_num_5_dup0(7), oe
      =>debug_num_5_dup0(7));
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR201);
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR200);
   debug_num_5_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR365(3), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR365(2), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR365(1), datain=>
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
       port map ( padio=>debug_num_5_EXMPLR365(0), datain=>
      debug_num_5_dup0(7));
   debug_num_4_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR364(3), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR364(2), datain=>
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
       port map ( padio=>debug_num_4_EXMPLR364(1), datain=>
      debug_num_5_dup0(7));
   debug_num_4_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR364(0), datain=>
      debug_num_5_dup0(7));
   debug_num_3_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR363(3), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR363(2), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR363(1), datain=>
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
       port map ( padio=>debug_num_3_EXMPLR363(0), datain=>
      debug_num_5_dup0(7));
   debug_num_2_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR362(3), datain=>
      debug_num_5_dup0(7));
   debug_num_2_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR362(2), datain=>
      debug_num_5_dup0(7));
   debug_num_2_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR362(1), datain=>
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
       port map ( padio=>debug_num_2_EXMPLR362(0), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR361(3), datain=>
      debug_num_5_dup0(7));
   debug_num_1_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR361(2), datain=>
      debug_num_5_dup0(7));
   debug_num_1_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR361(1), datain=>
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
       port map ( padio=>debug_num_1_EXMPLR361(0), datain=>
      debug_num_5_dup0(7));
   debug_num_0_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR360(3), datain=>
      debug_num_5_dup0(7));
   debug_num_0_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR360(2), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR360(1), datain=>
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
       port map ( padio=>debug_num_0_EXMPLR360(0), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR358(9), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(8), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(7), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(6), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(5), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(4), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(3), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(2), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_17 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(17), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_16 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(16), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_15 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(15), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_14 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(14), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_13 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(13), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(12), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(11), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(10), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(1), datain=>
      debug_num_5_dup0(7));
   debug_led_red_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR358(0), datain=>
      debug_num_5_dup0(7));
   debug_led_grn_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR359(5), datain=>
      debug_num_5_dup0(7));
   debug_led_grn_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR359(4), datain=>
      debug_num_5_dup0(7));
   debug_led_grn_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR359(3), datain=>
      debug_num_5_dup0(7));
   debug_led_grn_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR359(2), datain=>
      debug_num_5_dup0(7));
   debug_led_grn_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR359(1), datain=>
      debug_num_5_dup0(7));
   debug_led_grn_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR359(0), datain=>
      debug_num_5_dup0(7));
end main ;

