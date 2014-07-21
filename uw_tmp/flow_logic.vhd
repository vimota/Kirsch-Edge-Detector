
-- 
-- Definition of  flow
-- 
--      Mon Jul 21 14:06:10 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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
      nx_sub_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>a(11), datad=>nx_sub_12_0_vcc_net, 
      cin=>nx63795z3);
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

entity gt_12_0 is 
   port (
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_12_0 ;

architecture IMPLEMENTATION of gt_12_0 is 
   signal nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, 
      nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_12_0_vcc_net: 
   std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z4);
   nx_gt_12_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z34, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_12_1 is 
   port (
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_12_1 ;

architecture IMPLEMENTATION of gt_12_1 is 
   signal nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, 
      nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_12_1_vcc_net: 
   std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z4);
   nx_gt_12_1_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z34, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_12_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn822 : IN std_logic) ;
end add_11_0 ;

architecture IMPLEMENTATION of add_11_0 is 
   signal nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, 
      nx62798z15, nx62798z12, nx62798z9, nx62798z6, nx62798z4, 
      nx_add_11_0_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6900",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), dataa=>b(10), datab=>p_rtlcn822, datad=>
      nx_add_11_0_vcc_net, cin=>nx62798z4);
   nx_add_11_0_vcc_net <= '1';
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z6, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z9);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z9, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z12);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z12, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z15);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z15, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z18);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z18, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z21);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z21, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z24);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z24, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z27);
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z27, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z30);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z30, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_0_vcc_net);
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z4, dataa=>b(9), datab=>
      p_rtlcn822, datad=>nx_add_11_0_vcc_net, cin=>nx62798z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn874 : IN std_logic) ;
end add_11_1 ;

architecture IMPLEMENTATION of add_11_1 is 
   signal nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, 
      nx62798z15, nx62798z12, nx62798z9, nx62798z6, nx62798z4, 
      nx_add_11_1_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6900",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), dataa=>b(10), datab=>p_rtlcn874, datad=>
      nx_add_11_1_vcc_net, cin=>nx62798z4);
   nx_add_11_1_vcc_net <= '1';
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z6, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z9);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z9, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z12);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z12, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z15);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z15, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z18);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z18, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z21);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z21, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z24);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z24, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z27);
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z27, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z30);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z30, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_1_vcc_net);
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z4, dataa=>b(9), datab=>
      p_rtlcn874, datad=>nx_add_11_1_vcc_net, cin=>nx62798z6);
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
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx46946z29, 
      nx_sub_10_2_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), dataa=>a(9), datad=>nx_sub_10_2_vcc_net, 
      cin=>nx46946z3);
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
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx46946z29, 
      nx_sub_10_3_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), dataa=>a(9), datad=>nx_sub_10_3_vcc_net, 
      cin=>nx46946z3);
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
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_6 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_7 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_8 : OUT std_logic_vector (7 DOWNTO 0) ;
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
      o_row : OUT std_logic_vector (7 DOWNTO 0)) ;
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
   component gt_12_0
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_12_1
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_11_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn822 : IN std_logic) ;
   end component ;
   component add_11_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn874 : IN std_logic) ;
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
   signal debug_valid_EXMPLR206: std_logic ;
   
   signal debug_num_0_EXMPLR372: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR373: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR374: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR375: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR376: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR377: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR378: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_7_EXMPLR379: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_8_EXMPLR380: std_logic_vector (7 DOWNTO 0) ;
   
   signal t1_EXMPLR381: std_logic_vector (7 DOWNTO 0) ;
   
   signal t2_EXMPLR382: std_logic_vector (7 DOWNTO 0) ;
   
   signal t3_EXMPLR383: std_logic_vector (7 DOWNTO 0) ;
   
   signal b1_EXMPLR384: std_logic_vector (7 DOWNTO 0) ;
   
   signal b2_EXMPLR385: std_logic_vector (7 DOWNTO 0) ;
   
   signal b3_EXMPLR386: std_logic_vector (7 DOWNTO 0) ;
   
   signal i1_EXMPLR387: std_logic_vector (7 DOWNTO 0) ;
   
   signal i2_EXMPLR388: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_EXMPLR343, i_reset_EXMPLR344, i_valid_EXMPLR345: std_logic
    ;
   
   signal i_mode_EXMPLR389: std_logic_vector (1 DOWNTO 0) ;
   
   signal i_row_EXMPLR390: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0: std_logic ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21: std_logic_vector (11 DOWNTO 0) ;
   
   signal p22: std_logic_vector (11 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p31: std_logic_vector (11 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (11 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (11 DOWNTO 0) ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (11 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx32403z4, p21_3n0r3_9, p21_3n0r3_8, p21_3n0r3_7, p21_3n0r3_6, 
      p21_3n0r3_5, p21_3n0r3_4, p21_3n0r3_3, p21_3n0r3_2, p21_3n0r3_1, 
      p21_3n0r3_0: std_logic ;
   
   signal p21_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n189: std_logic_vector (11 DOWNTO 1) ;
   
   signal p22_3n0r3_9, p22_3n0r3_8, p22_3n0r3_7, p22_3n0r3_6, p22_3n0r3_5, 
      p22_3n0r3_4, p22_3n0r3_3, p22_3n0r3_2, p22_3n0r3_1, p22_3n0r3_0: 
   std_logic ;
   
   signal p22_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n195: std_logic_vector (11 DOWNTO 1) ;
   
   signal nx45188z1, nx52975z2, nx47840z2, nx15811z1, nx20946z1, nx45613z1, 
      nx16808z1, nx21943z1, nx44616z1, nx17805z1, nx22940z1, nx43619z1, 
      nx18802z1, nx23937z1, nx42622z1, nx19799z1, nx24934z1, nx41625z1, 
      nx20796z1, nx25931z1, nx40628z1, nx21793z1, nx26928z1, nx39631z1, 
      nx22790z1, nx27925z1, nx38634z1, nx41013z1, nx46148z1, nx14253z1, 
      nx42010z1, nx47145z1, nx13256z1, nx40824z1, nx39827z1: std_logic ;
   
   signal t1_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal t2_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal t3_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal b1_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal b2_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal b3_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i1_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i2_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_int, i_reset_int: std_logic ;
   
   signal o_dir_EXMPLR391: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_edge_EXMPLR359, o_valid_EXMPLR360: std_logic ;
   
   signal o_mode_EXMPLR392: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR393: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal GND_EXMPLR371, PWR, nx32403z3, nx26026z1, nx30361z1, nx30409z1, 
      nx32403z2, nx32403z1, nx25033z1, nx32403z5, nx31358z3, nx31358z1, 
      nx26530z1, nx31358z4, nx31358z5, nx31358z6, nx31358z7, nx31358z8, 
      nx31358z9, nx31358z2, nx26026z2, nx31358z10, nx16335z1, nx17332z1, 
      nx18329z1, nx19326z1, nx20323z1, nx21320z1, nx22317z1, nx23314z1, 
      nx45767z1, nx63886z1, nx62889z1, nx61892z1, nx28524z1, NOT_state_3: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (35 downto 0 );

begin
   debug_valid <= debug_valid_EXMPLR206 ;
   debug_num_0(7) <= debug_num_0_EXMPLR372(7) ;
   debug_num_0(6) <= debug_num_0_EXMPLR372(6) ;
   debug_num_0(5) <= debug_num_0_EXMPLR372(5) ;
   debug_num_0(4) <= debug_num_0_EXMPLR372(4) ;
   debug_num_0(3) <= debug_num_0_EXMPLR372(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR372(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR372(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR372(0) ;
   debug_num_1(7) <= debug_num_1_EXMPLR373(7) ;
   debug_num_1(6) <= debug_num_1_EXMPLR373(6) ;
   debug_num_1(5) <= debug_num_1_EXMPLR373(5) ;
   debug_num_1(4) <= debug_num_1_EXMPLR373(4) ;
   debug_num_1(3) <= debug_num_1_EXMPLR373(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR373(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR373(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR373(0) ;
   debug_num_2(7) <= debug_num_2_EXMPLR374(7) ;
   debug_num_2(6) <= debug_num_2_EXMPLR374(6) ;
   debug_num_2(5) <= debug_num_2_EXMPLR374(5) ;
   debug_num_2(4) <= debug_num_2_EXMPLR374(4) ;
   debug_num_2(3) <= debug_num_2_EXMPLR374(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR374(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR374(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR374(0) ;
   debug_num_3(7) <= debug_num_3_EXMPLR375(7) ;
   debug_num_3(6) <= debug_num_3_EXMPLR375(6) ;
   debug_num_3(5) <= debug_num_3_EXMPLR375(5) ;
   debug_num_3(4) <= debug_num_3_EXMPLR375(4) ;
   debug_num_3(3) <= debug_num_3_EXMPLR375(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR375(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR375(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR375(0) ;
   debug_num_4(7) <= debug_num_4_EXMPLR376(7) ;
   debug_num_4(6) <= debug_num_4_EXMPLR376(6) ;
   debug_num_4(5) <= debug_num_4_EXMPLR376(5) ;
   debug_num_4(4) <= debug_num_4_EXMPLR376(4) ;
   debug_num_4(3) <= debug_num_4_EXMPLR376(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR376(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR376(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR376(0) ;
   debug_num_5(7) <= debug_num_5_EXMPLR377(7) ;
   debug_num_5(6) <= debug_num_5_EXMPLR377(6) ;
   debug_num_5(5) <= debug_num_5_EXMPLR377(5) ;
   debug_num_5(4) <= debug_num_5_EXMPLR377(4) ;
   debug_num_5(3) <= debug_num_5_EXMPLR377(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR377(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR377(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR377(0) ;
   debug_num_6(7) <= debug_num_6_EXMPLR378(7) ;
   debug_num_6(6) <= debug_num_6_EXMPLR378(6) ;
   debug_num_6(5) <= debug_num_6_EXMPLR378(5) ;
   debug_num_6(4) <= debug_num_6_EXMPLR378(4) ;
   debug_num_6(3) <= debug_num_6_EXMPLR378(3) ;
   debug_num_6(2) <= debug_num_6_EXMPLR378(2) ;
   debug_num_6(1) <= debug_num_6_EXMPLR378(1) ;
   debug_num_6(0) <= debug_num_6_EXMPLR378(0) ;
   debug_num_7(7) <= debug_num_7_EXMPLR379(7) ;
   debug_num_7(6) <= debug_num_7_EXMPLR379(6) ;
   debug_num_7(5) <= debug_num_7_EXMPLR379(5) ;
   debug_num_7(4) <= debug_num_7_EXMPLR379(4) ;
   debug_num_7(3) <= debug_num_7_EXMPLR379(3) ;
   debug_num_7(2) <= debug_num_7_EXMPLR379(2) ;
   debug_num_7(1) <= debug_num_7_EXMPLR379(1) ;
   debug_num_7(0) <= debug_num_7_EXMPLR379(0) ;
   debug_num_8(7) <= debug_num_8_EXMPLR380(7) ;
   debug_num_8(6) <= debug_num_8_EXMPLR380(6) ;
   debug_num_8(5) <= debug_num_8_EXMPLR380(5) ;
   debug_num_8(4) <= debug_num_8_EXMPLR380(4) ;
   debug_num_8(3) <= debug_num_8_EXMPLR380(3) ;
   debug_num_8(2) <= debug_num_8_EXMPLR380(2) ;
   debug_num_8(1) <= debug_num_8_EXMPLR380(1) ;
   debug_num_8(0) <= debug_num_8_EXMPLR380(0) ;
   t1_EXMPLR381(7) <= t1(7) ;
   t1_EXMPLR381(6) <= t1(6) ;
   t1_EXMPLR381(5) <= t1(5) ;
   t1_EXMPLR381(4) <= t1(4) ;
   t1_EXMPLR381(3) <= t1(3) ;
   t1_EXMPLR381(2) <= t1(2) ;
   t1_EXMPLR381(1) <= t1(1) ;
   t1_EXMPLR381(0) <= t1(0) ;
   t2_EXMPLR382(7) <= t2(7) ;
   t2_EXMPLR382(6) <= t2(6) ;
   t2_EXMPLR382(5) <= t2(5) ;
   t2_EXMPLR382(4) <= t2(4) ;
   t2_EXMPLR382(3) <= t2(3) ;
   t2_EXMPLR382(2) <= t2(2) ;
   t2_EXMPLR382(1) <= t2(1) ;
   t2_EXMPLR382(0) <= t2(0) ;
   t3_EXMPLR383(7) <= t3(7) ;
   t3_EXMPLR383(6) <= t3(6) ;
   t3_EXMPLR383(5) <= t3(5) ;
   t3_EXMPLR383(4) <= t3(4) ;
   t3_EXMPLR383(3) <= t3(3) ;
   t3_EXMPLR383(2) <= t3(2) ;
   t3_EXMPLR383(1) <= t3(1) ;
   t3_EXMPLR383(0) <= t3(0) ;
   b1_EXMPLR384(7) <= b1(7) ;
   b1_EXMPLR384(6) <= b1(6) ;
   b1_EXMPLR384(5) <= b1(5) ;
   b1_EXMPLR384(4) <= b1(4) ;
   b1_EXMPLR384(3) <= b1(3) ;
   b1_EXMPLR384(2) <= b1(2) ;
   b1_EXMPLR384(1) <= b1(1) ;
   b1_EXMPLR384(0) <= b1(0) ;
   b2_EXMPLR385(7) <= b2(7) ;
   b2_EXMPLR385(6) <= b2(6) ;
   b2_EXMPLR385(5) <= b2(5) ;
   b2_EXMPLR385(4) <= b2(4) ;
   b2_EXMPLR385(3) <= b2(3) ;
   b2_EXMPLR385(2) <= b2(2) ;
   b2_EXMPLR385(1) <= b2(1) ;
   b2_EXMPLR385(0) <= b2(0) ;
   b3_EXMPLR386(7) <= b3(7) ;
   b3_EXMPLR386(6) <= b3(6) ;
   b3_EXMPLR386(5) <= b3(5) ;
   b3_EXMPLR386(4) <= b3(4) ;
   b3_EXMPLR386(3) <= b3(3) ;
   b3_EXMPLR386(2) <= b3(2) ;
   b3_EXMPLR386(1) <= b3(1) ;
   b3_EXMPLR386(0) <= b3(0) ;
   i1_EXMPLR387(7) <= i1(7) ;
   i1_EXMPLR387(6) <= i1(6) ;
   i1_EXMPLR387(5) <= i1(5) ;
   i1_EXMPLR387(4) <= i1(4) ;
   i1_EXMPLR387(3) <= i1(3) ;
   i1_EXMPLR387(2) <= i1(2) ;
   i1_EXMPLR387(1) <= i1(1) ;
   i1_EXMPLR387(0) <= i1(0) ;
   i2_EXMPLR388(7) <= i2(7) ;
   i2_EXMPLR388(6) <= i2(6) ;
   i2_EXMPLR388(5) <= i2(5) ;
   i2_EXMPLR388(4) <= i2(4) ;
   i2_EXMPLR388(3) <= i2(3) ;
   i2_EXMPLR388(2) <= i2(2) ;
   i2_EXMPLR388(1) <= i2(1) ;
   i2_EXMPLR388(0) <= i2(0) ;
   i_clock_EXMPLR343 <= i_clock ;
   i_reset_EXMPLR344 <= i_reset ;
   i_valid_EXMPLR345 <= i_valid ;
   i_mode_EXMPLR389(1) <= i_mode(1) ;
   i_mode_EXMPLR389(0) <= i_mode(0) ;
   i_row_EXMPLR390(7) <= i_row(7) ;
   i_row_EXMPLR390(6) <= i_row(6) ;
   i_row_EXMPLR390(5) <= i_row(5) ;
   i_row_EXMPLR390(4) <= i_row(4) ;
   i_row_EXMPLR390(3) <= i_row(3) ;
   i_row_EXMPLR390(2) <= i_row(2) ;
   i_row_EXMPLR390(1) <= i_row(1) ;
   i_row_EXMPLR390(0) <= i_row(0) ;
   o_dir(2) <= o_dir_EXMPLR391(2) ;
   o_dir(1) <= o_dir_EXMPLR391(1) ;
   o_dir(0) <= o_dir_EXMPLR391(0) ;
   o_edge <= o_edge_EXMPLR359 ;
   o_valid <= o_valid_EXMPLR360 ;
   o_mode(1) <= o_mode_EXMPLR392(1) ;
   o_mode(0) <= o_mode_EXMPLR392(0) ;
   o_row(7) <= o_row_EXMPLR393(7) ;
   o_row(6) <= o_row_EXMPLR393(6) ;
   o_row(5) <= o_row_EXMPLR393(5) ;
   o_row(4) <= o_row_EXMPLR393(4) ;
   o_row(3) <= o_row_EXMPLR393(3) ;
   o_row(2) <= o_row_EXMPLR393(2) ;
   o_row(1) <= o_row_EXMPLR393(1) ;
   o_row(0) <= o_row_EXMPLR393(0) ;
   p4s_sub12_0 : sub_12_0 port map ( cin=>DANGLING(0), a(11)=>p31(11), a(10)
      =>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>DANGLING(1), b(10)=>p32(10), b(9)=>p32(9), b(8)=>
      p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>
      p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>DANGLING(2));
   ix32403z30872 : gt_12_0 port map ( a(11)=>p43(11), a(10)=>p43(10), a(9)=>
      p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>
      p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), b(11)
      =>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>nx32403z4);
   ix45188z30868 : gt_12_1 port map ( a(11)=>p22(11), a(10)=>p22(10), a(9)=>
      p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), a(5)=>p22(5), a(4)=>
      p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), a(0)=>p22(0), b(11)
      =>p21(11), b(10)=>p21(10), b(9)=>p21(9), b(8)=>p21(8), b(7)=>p21(7), 
      b(6)=>p21(6), b(5)=>p21(5), b(4)=>p21(4), b(3)=>p21(3), b(2)=>p21(2), 
      b(1)=>p21(1), b(0)=>p21(0), d=>nx45188z1);
   ix52975z52630 : add_11_0 port map ( cin=>DANGLING(3), a(10)=>DANGLING(4), 
      a(9)=>DANGLING(5), a(8)=>p21_3n0r3_9, a(7)=>p21_3n0r3_8, a(6)=>
      p21_3n0r3_7, a(5)=>p21_3n0r3_6, a(4)=>p21_3n0r3_5, a(3)=>p21_3n0r3_4, 
      a(2)=>p21_3n0r3_3, a(1)=>p21_3n0r3_2, a(0)=>p21_3n0r3_1, b(10)=>
      p21_3n0r4(11), b(9)=>p21_3n0r4(10), b(8)=>p21_3n0r4(9), b(7)=>
      p21_3n0r4(8), b(6)=>p21_3n0r4(7), b(5)=>p21_3n0r4(6), b(4)=>
      p21_3n0r4(5), b(3)=>p21_3n0r4(4), b(2)=>p21_3n0r4(3), b(1)=>
      p21_3n0r4(2), b(0)=>p12(0), d=>rtlc3n189, cout=>DANGLING(6), 
      p_rtlcn822=>nx52975z2);
   ix47840z52631 : add_11_1 port map ( cin=>DANGLING(7), a(10)=>DANGLING(8), 
      a(9)=>DANGLING(9), a(8)=>p22_3n0r3_9, a(7)=>p22_3n0r3_8, a(6)=>
      p22_3n0r3_7, a(5)=>p22_3n0r3_6, a(4)=>p22_3n0r3_5, a(3)=>p22_3n0r3_4, 
      a(2)=>p22_3n0r3_3, a(1)=>p22_3n0r3_2, a(0)=>p22_3n0r3_1, b(10)=>
      p22_3n0r4(11), b(9)=>p22_3n0r4(10), b(8)=>p22_3n0r4(9), b(7)=>
      p22_3n0r4(8), b(6)=>p22_3n0r4(7), b(5)=>p22_3n0r4(6), b(4)=>
      p22_3n0r4(5), b(3)=>p22_3n0r4(4), b(2)=>p22_3n0r4(3), b(1)=>
      p22_3n0r4(2), b(0)=>p11(0), d=>rtlc3n195, cout=>DANGLING(10), 
      p_rtlcn874=>nx47840z2);
   p11_add8_0i1 : add_8_0 port map ( cin=>DANGLING(11), a(7)=>t1_int(7), 
      a(6)=>t1_int(6), a(5)=>t1_int(5), a(4)=>t1_int(4), a(3)=>t1_int(3), 
      a(2)=>t1_int(2), a(1)=>t1_int(1), a(0)=>t1_int(0), b(7)=>t2_int(7), 
      b(6)=>t2_int(6), b(5)=>t2_int(5), b(4)=>t2_int(4), b(3)=>t2_int(3), 
      b(2)=>t2_int(2), b(1)=>t2_int(1), b(0)=>t2_int(0), d(7)=>p11_0n0s2(7), 
      d(6)=>p11_0n0s2(6), d(5)=>p11_0n0s2(5), d(4)=>p11_0n0s2(4), d(3)=>
      p11_0n0s2(3), d(2)=>p11_0n0s2(2), d(1)=>p11_0n0s2(1), d(0)=>
      p11_0n0s2(0), cout=>p11_0n0s2(8));
   p11_add9_1 : add_9_0 port map ( cin=>DANGLING(12), a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(7), a(6)=>p11_0n0s2(6), a(5)=>p11_0n0s2(5), a(4)=>
      p11_0n0s2(4), a(3)=>p11_0n0s2(3), a(2)=>p11_0n0s2(2), a(1)=>
      p11_0n0s2(1), a(0)=>p11_0n0s2(0), b(8)=>DANGLING(13), b(7)=>t3_int(7), 
      b(6)=>t3_int(6), b(5)=>t3_int(5), b(4)=>t3_int(4), b(3)=>t3_int(3), 
      b(2)=>t3_int(2), b(1)=>t3_int(1), b(0)=>t3_int(0), d(8)=>p11(8), d(7)
      =>p11(7), d(6)=>p11(6), d(5)=>p11(5), d(4)=>p11(4), d(3)=>p11(3), d(2)
      =>p11(2), d(1)=>p11(1), d(0)=>p11(0), cout=>p11(9));
   p12_add8_0i2 : add_8_1 port map ( cin=>DANGLING(14), a(7)=>b1_int(7), 
      a(6)=>b1_int(6), a(5)=>b1_int(5), a(4)=>b1_int(4), a(3)=>b1_int(3), 
      a(2)=>b1_int(2), a(1)=>b1_int(1), a(0)=>b1_int(0), b(7)=>b2_int(7), 
      b(6)=>b2_int(6), b(5)=>b2_int(5), b(4)=>b2_int(4), b(3)=>b2_int(3), 
      b(2)=>b2_int(2), b(1)=>b2_int(1), b(0)=>b2_int(0), d(7)=>p12_0n0s2(7), 
      d(6)=>p12_0n0s2(6), d(5)=>p12_0n0s2(5), d(4)=>p12_0n0s2(4), d(3)=>
      p12_0n0s2(3), d(2)=>p12_0n0s2(2), d(1)=>p12_0n0s2(1), d(0)=>
      p12_0n0s2(0), cout=>p12_0n0s2(8));
   p12_add9_2 : add_9_1 port map ( cin=>DANGLING(15), a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(7), a(6)=>p12_0n0s2(6), a(5)=>p12_0n0s2(5), a(4)=>
      p12_0n0s2(4), a(3)=>p12_0n0s2(3), a(2)=>p12_0n0s2(2), a(1)=>
      p12_0n0s2(1), a(0)=>p12_0n0s2(0), b(8)=>DANGLING(16), b(7)=>b3_int(7), 
      b(6)=>b3_int(6), b(5)=>b3_int(5), b(4)=>b3_int(4), b(3)=>b3_int(3), 
      b(2)=>b3_int(2), b(1)=>b3_int(1), b(0)=>b3_int(0), d(8)=>p12(8), d(7)
      =>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)=>p12(4), d(3)=>p12(3), d(2)
      =>p12(2), d(1)=>p12(1), d(0)=>p12(0), cout=>p12(9));
   p21_sub10_3i3 : sub_10_0 port map ( cin=>DANGLING(17), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_3n0r3_9, 
      d(8)=>p21_3n0r3_8, d(7)=>p21_3n0r3_7, d(6)=>p21_3n0r3_6, d(5)=>
      p21_3n0r3_5, d(4)=>p21_3n0r3_4, d(3)=>p21_3n0r3_3, d(2)=>p21_3n0r3_2, 
      d(1)=>p21_3n0r3_1, d(0)=>p21_3n0r3_0, cout=>nx52975z2);
   p22_sub10_3i4 : sub_10_1 port map ( cin=>DANGLING(18), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_3n0r3_9, 
      d(8)=>p22_3n0r3_8, d(7)=>p22_3n0r3_7, d(6)=>p22_3n0r3_6, d(5)=>
      p22_3n0r3_5, d(4)=>p22_3n0r3_4, d(3)=>p22_3n0r3_3, d(2)=>p22_3n0r3_2, 
      d(1)=>p22_3n0r3_1, d(0)=>p22_3n0r3_0, cout=>nx47840z2);
   p13_add8_0i3 : add_8_2 port map ( cin=>DANGLING(19), a(7)=>i1_int(7), 
      a(6)=>i1_int(6), a(5)=>i1_int(5), a(4)=>i1_int(4), a(3)=>i1_int(3), 
      a(2)=>i1_int(2), a(1)=>i1_int(1), a(0)=>i1_int(0), b(7)=>i2_int(7), 
      b(6)=>i2_int(6), b(5)=>i2_int(5), b(4)=>i2_int(4), b(3)=>i2_int(3), 
      b(2)=>i2_int(2), b(1)=>i2_int(1), b(0)=>i2_int(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9_2 port map ( cin=>DANGLING(20), a(8)=>DANGLING(21), 
      a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>DANGLING(22), b(7)=>DANGLING(
      23), b(6)=>DANGLING(24), b(5)=>DANGLING(25), b(4)=>DANGLING(26), b(3)
      =>DANGLING(27), b(2)=>DANGLING(28), b(1)=>DANGLING(29), b(0)=>
      p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>p13(7), d(5)=>p13(6), 
      d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>p13(2), d(0)=>p13(1), 
      cout=>p13(10));
   p21_sub11_3i1 : sub_10_2 port map ( cin=>DANGLING(30), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>DANGLING(31), 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_3n0r4(11), d(8)=>p21_3n0r4(10), d(7)=>p21_3n0r4(9), d(6)=>
      p21_3n0r4(8), d(5)=>p21_3n0r4(7), d(4)=>p21_3n0r4(6), d(3)=>
      p21_3n0r4(5), d(2)=>p21_3n0r4(4), d(1)=>p21_3n0r4(3), d(0)=>
      p21_3n0r4(2), cout=>DANGLING(32), p_p12_0=>p12(0));
   p22_sub11_3i2 : sub_10_3 port map ( cin=>DANGLING(33), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>DANGLING(34), 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_3n0r4(11), d(8)=>p22_3n0r4(10), d(7)=>p22_3n0r4(9), d(6)=>
      p22_3n0r4(8), d(5)=>p22_3n0r4(7), d(4)=>p22_3n0r4(6), d(3)=>
      p22_3n0r4(5), d(2)=>p22_3n0r4(4), d(1)=>p22_3n0r4(3), d(0)=>
      p22_3n0r4(2), cout=>DANGLING(35), p_p11_0=>p11(0));
   GND_EXMPLR371 <= '0';
   PWR <= '1';
   nx25033z1 <= NOT nx45188z1;
   state(0) <= NOT nx28524z1;
   NOT_state_3 <= NOT state(3);
   t3_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(7), padio=>t3_EXMPLR383(7));
   t3_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(6), padio=>t3_EXMPLR383(6));
   t3_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(5), padio=>t3_EXMPLR383(5));
   t3_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(4), padio=>t3_EXMPLR383(4));
   t3_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(3), padio=>t3_EXMPLR383(3));
   t3_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(2), padio=>t3_EXMPLR383(2));
   t3_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(1), padio=>t3_EXMPLR383(1));
   t3_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t3_int(0), padio=>t3_EXMPLR383(0));
   t2_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(7), padio=>t2_EXMPLR382(7));
   t2_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(6), padio=>t2_EXMPLR382(6));
   t2_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(5), padio=>t2_EXMPLR382(5));
   t2_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(4), padio=>t2_EXMPLR382(4));
   t2_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(3), padio=>t2_EXMPLR382(3));
   t2_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(2), padio=>t2_EXMPLR382(2));
   t2_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(1), padio=>t2_EXMPLR382(1));
   t2_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t2_int(0), padio=>t2_EXMPLR382(0));
   t1_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(7), padio=>t1_EXMPLR381(7));
   t1_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(6), padio=>t1_EXMPLR381(6));
   t1_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(5), padio=>t1_EXMPLR381(5));
   t1_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(4), padio=>t1_EXMPLR381(4));
   t1_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(3), padio=>t1_EXMPLR381(3));
   t1_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(2), padio=>t1_EXMPLR381(2));
   t1_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(1), padio=>t1_EXMPLR381(1));
   t1_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>t1_int(0), padio=>t1_EXMPLR381(0));
   reg_state_3 : cycloneii_lcell_ff port map ( regout=>state(3), datain=>
      state(2), clk=>i_clock_int, ena=>nx26530z1, sclr=>i_reset_int);
   reg_state_2 : cycloneii_lcell_ff port map ( regout=>state(2), datain=>
      state(1), clk=>i_clock_int, ena=>nx26530z1, sclr=>i_reset_int);
   reg_state_1 : cycloneii_lcell_ff port map ( regout=>state(1), datain=>
      state(0), clk=>i_clock_int, ena=>nx26530z1, sclr=>i_reset_int);
   reg_state_0 : cycloneii_lcell_ff port map ( regout=>nx28524z1, datain=>
      NOT_state_3, clk=>i_clock_int, ena=>nx26530z1, sclr=>i_reset_int);
   reg_prev_max_9 : cycloneii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_8 : cycloneii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_7 : cycloneii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_6 : cycloneii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_5 : cycloneii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_4 : cycloneii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_3 : cycloneii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_2 : cycloneii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_11 : cycloneii_lcell_ff port map ( regout=>prev_max(11), 
      datain=>p43(11), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_10 : cycloneii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_1 : cycloneii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_max_0 : cycloneii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_prev_edge : cycloneii_lcell_ff port map ( regout=>prev_edge, datain=>
      p41, clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   reg_p45 : cycloneii_lcell_ff port map ( regout=>p45, datain=>p35, clk=>
      i_clock_int);
   reg_p43_9 : cycloneii_lcell_ff port map ( regout=>p43(9), datain=>p4s(9), 
      clk=>i_clock_int);
   reg_p43_8 : cycloneii_lcell_ff port map ( regout=>p43(8), datain=>p4s(8), 
      clk=>i_clock_int);
   reg_p43_7 : cycloneii_lcell_ff port map ( regout=>p43(7), datain=>p4s(7), 
      clk=>i_clock_int);
   reg_p43_6 : cycloneii_lcell_ff port map ( regout=>p43(6), datain=>p4s(6), 
      clk=>i_clock_int);
   reg_p43_5 : cycloneii_lcell_ff port map ( regout=>p43(5), datain=>p4s(5), 
      clk=>i_clock_int);
   reg_p43_4 : cycloneii_lcell_ff port map ( regout=>p43(4), datain=>p4s(4), 
      clk=>i_clock_int);
   reg_p43_3 : cycloneii_lcell_ff port map ( regout=>p43(3), datain=>p4s(3), 
      clk=>i_clock_int);
   reg_p43_2 : cycloneii_lcell_ff port map ( regout=>p43(2), datain=>p4s(2), 
      clk=>i_clock_int);
   reg_p43_11 : cycloneii_lcell_ff port map ( regout=>p43(11), datain=>
      p4s(11), clk=>i_clock_int);
   reg_p43_10 : cycloneii_lcell_ff port map ( regout=>p43(10), datain=>
      p4s(10), clk=>i_clock_int);
   reg_p43_1 : cycloneii_lcell_ff port map ( regout=>p43(1), datain=>p4s(1), 
      clk=>i_clock_int);
   reg_p43_0 : cycloneii_lcell_ff port map ( regout=>p43(0), datain=>p4s(0), 
      clk=>i_clock_int);
   reg_p41 : cycloneii_lcell_ff port map ( regout=>p41, datain=>nx26026z1, 
      clk=>i_clock_int);
   reg_p35 : cycloneii_lcell_ff port map ( regout=>p35, datain=>nx25033z1, 
      clk=>i_clock_int);
   reg_p32_9 : cycloneii_lcell_ff port map ( regout=>p32(9), datain=>p23(9), 
      clk=>i_clock_int);
   reg_p32_8 : cycloneii_lcell_ff port map ( regout=>p32(8), datain=>p23(8), 
      clk=>i_clock_int);
   reg_p32_7 : cycloneii_lcell_ff port map ( regout=>p32(7), datain=>p23(7), 
      clk=>i_clock_int);
   reg_p32_6 : cycloneii_lcell_ff port map ( regout=>p32(6), datain=>p23(6), 
      clk=>i_clock_int);
   reg_p32_5 : cycloneii_lcell_ff port map ( regout=>p32(5), datain=>p23(5), 
      clk=>i_clock_int);
   reg_p32_4 : cycloneii_lcell_ff port map ( regout=>p32(4), datain=>p23(4), 
      clk=>i_clock_int);
   reg_p32_3 : cycloneii_lcell_ff port map ( regout=>p32(3), datain=>p23(3), 
      clk=>i_clock_int);
   reg_p32_2 : cycloneii_lcell_ff port map ( regout=>p32(2), datain=>p23(2), 
      clk=>i_clock_int);
   reg_p32_10 : cycloneii_lcell_ff port map ( regout=>p32(10), datain=>
      p23(10), clk=>i_clock_int);
   reg_p32_1 : cycloneii_lcell_ff port map ( regout=>p32(1), datain=>p23(1), 
      clk=>i_clock_int);
   reg_p32_0 : cycloneii_lcell_ff port map ( regout=>p32(0), datain=>p23(0), 
      clk=>i_clock_int);
   reg_p31_9 : cycloneii_lcell_ff port map ( regout=>p31(9), datain=>p21(9), 
      sdata=>p22(9), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_8 : cycloneii_lcell_ff port map ( regout=>p31(8), datain=>p21(8), 
      sdata=>p22(8), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_7 : cycloneii_lcell_ff port map ( regout=>p31(7), datain=>p21(7), 
      sdata=>p22(7), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_6 : cycloneii_lcell_ff port map ( regout=>p31(6), datain=>p21(6), 
      sdata=>p22(6), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_5 : cycloneii_lcell_ff port map ( regout=>p31(5), datain=>p21(5), 
      sdata=>p22(5), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_4 : cycloneii_lcell_ff port map ( regout=>p31(4), datain=>p21(4), 
      sdata=>p22(4), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_3 : cycloneii_lcell_ff port map ( regout=>p31(3), datain=>p21(3), 
      sdata=>p22(3), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_2 : cycloneii_lcell_ff port map ( regout=>p31(2), datain=>p21(2), 
      sdata=>p22(2), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_11 : cycloneii_lcell_ff port map ( regout=>p31(11), datain=>
      p21(11), sdata=>p22(11), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1
   );
   reg_p31_10 : cycloneii_lcell_ff port map ( regout=>p31(10), datain=>
      p21(10), sdata=>p22(10), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1
   );
   reg_p31_1 : cycloneii_lcell_ff port map ( regout=>p31(1), datain=>p21(1), 
      sdata=>p22(1), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p31_0 : cycloneii_lcell_ff port map ( regout=>p31(0), datain=>p21(0), 
      sdata=>p22(0), clk=>i_clock_int, ena=>PWR, sload=>nx45188z1);
   reg_p23_9 : cycloneii_lcell_ff port map ( regout=>p23(9), datain=>p13(9), 
      clk=>i_clock_int);
   reg_p23_8 : cycloneii_lcell_ff port map ( regout=>p23(8), datain=>p13(8), 
      clk=>i_clock_int);
   reg_p23_7 : cycloneii_lcell_ff port map ( regout=>p23(7), datain=>p13(7), 
      clk=>i_clock_int);
   reg_p23_6 : cycloneii_lcell_ff port map ( regout=>p23(6), datain=>p13(6), 
      clk=>i_clock_int);
   reg_p23_5 : cycloneii_lcell_ff port map ( regout=>p23(5), datain=>p13(5), 
      clk=>i_clock_int);
   reg_p23_4 : cycloneii_lcell_ff port map ( regout=>p23(4), datain=>p13(4), 
      clk=>i_clock_int);
   reg_p23_3 : cycloneii_lcell_ff port map ( regout=>p23(3), datain=>p13(3), 
      clk=>i_clock_int);
   reg_p23_2 : cycloneii_lcell_ff port map ( regout=>p23(2), datain=>p13(2), 
      clk=>i_clock_int);
   reg_p23_10 : cycloneii_lcell_ff port map ( regout=>p23(10), datain=>
      p13(10), clk=>i_clock_int);
   reg_p23_1 : cycloneii_lcell_ff port map ( regout=>p23(1), datain=>p13(1), 
      clk=>i_clock_int);
   reg_p23_0 : cycloneii_lcell_ff port map ( regout=>p23(0), datain=>
      p13_0n0s2(0), clk=>i_clock_int);
   reg_p22_9 : cycloneii_lcell_ff port map ( regout=>p22(9), datain=>
      rtlc3n195(9), clk=>i_clock_int);
   reg_p22_8 : cycloneii_lcell_ff port map ( regout=>p22(8), datain=>
      rtlc3n195(8), clk=>i_clock_int);
   reg_p22_7 : cycloneii_lcell_ff port map ( regout=>p22(7), datain=>
      rtlc3n195(7), clk=>i_clock_int);
   reg_p22_6 : cycloneii_lcell_ff port map ( regout=>p22(6), datain=>
      rtlc3n195(6), clk=>i_clock_int);
   reg_p22_5 : cycloneii_lcell_ff port map ( regout=>p22(5), datain=>
      rtlc3n195(5), clk=>i_clock_int);
   reg_p22_4 : cycloneii_lcell_ff port map ( regout=>p22(4), datain=>
      rtlc3n195(4), clk=>i_clock_int);
   reg_p22_3 : cycloneii_lcell_ff port map ( regout=>p22(3), datain=>
      rtlc3n195(3), clk=>i_clock_int);
   reg_p22_2 : cycloneii_lcell_ff port map ( regout=>p22(2), datain=>
      rtlc3n195(2), clk=>i_clock_int);
   reg_p22_11 : cycloneii_lcell_ff port map ( regout=>p22(11), datain=>
      rtlc3n195(11), clk=>i_clock_int);
   reg_p22_10 : cycloneii_lcell_ff port map ( regout=>p22(10), datain=>
      rtlc3n195(10), clk=>i_clock_int);
   reg_p22_1 : cycloneii_lcell_ff port map ( regout=>p22(1), datain=>
      rtlc3n195(1), clk=>i_clock_int);
   reg_p22_0 : cycloneii_lcell_ff port map ( regout=>p22(0), datain=>
      p22_3n0r3_0, clk=>i_clock_int);
   reg_p21_9 : cycloneii_lcell_ff port map ( regout=>p21(9), datain=>
      rtlc3n189(9), clk=>i_clock_int);
   reg_p21_8 : cycloneii_lcell_ff port map ( regout=>p21(8), datain=>
      rtlc3n189(8), clk=>i_clock_int);
   reg_p21_7 : cycloneii_lcell_ff port map ( regout=>p21(7), datain=>
      rtlc3n189(7), clk=>i_clock_int);
   reg_p21_6 : cycloneii_lcell_ff port map ( regout=>p21(6), datain=>
      rtlc3n189(6), clk=>i_clock_int);
   reg_p21_5 : cycloneii_lcell_ff port map ( regout=>p21(5), datain=>
      rtlc3n189(5), clk=>i_clock_int);
   reg_p21_4 : cycloneii_lcell_ff port map ( regout=>p21(4), datain=>
      rtlc3n189(4), clk=>i_clock_int);
   reg_p21_3 : cycloneii_lcell_ff port map ( regout=>p21(3), datain=>
      rtlc3n189(3), clk=>i_clock_int);
   reg_p21_2 : cycloneii_lcell_ff port map ( regout=>p21(2), datain=>
      rtlc3n189(2), clk=>i_clock_int);
   reg_p21_11 : cycloneii_lcell_ff port map ( regout=>p21(11), datain=>
      rtlc3n189(11), clk=>i_clock_int);
   reg_p21_10 : cycloneii_lcell_ff port map ( regout=>p21(10), datain=>
      rtlc3n189(10), clk=>i_clock_int);
   reg_p21_1 : cycloneii_lcell_ff port map ( regout=>p21(1), datain=>
      rtlc3n189(1), clk=>i_clock_int);
   reg_p21_0 : cycloneii_lcell_ff port map ( regout=>p21(0), datain=>
      p21_3n0r3_0, clk=>i_clock_int);
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
   reg_out_o_edge_obuf : cycloneii_lcell_ff port map ( regout=>nx45767z1, 
      datain=>prev_edge, clk=>i_clock_int);
   reg_out_o_dir_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx61892z1, 
      datain=>nx32403z1, clk=>i_clock_int, ena=>nx32403z2);
   reg_out_o_dir_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx62889z1, 
      datain=>nx32403z5, clk=>i_clock_int, ena=>nx32403z2);
   reg_out_o_dir_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx63886z1, 
      datain=>nx30409z1, clk=>i_clock_int, ena=>nx32403z3);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_dup0, datain
      =>state(3), clk=>i_clock_int, sclr=>i_reset_int);
   reg_max_fwd : cycloneii_lcell_ff port map ( regout=>max_fwd, datain=>p45, 
      clk=>i_clock_int, ena=>nx31358z1, sclr=>nx30361z1);
   o_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR360, datain=>o_valid_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR392(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR392(0), datain=>o_mode_dup0(0));
   ix61892z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR391(2), datain=>nx61892z1);
   ix62889z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR391(1), datain=>nx62889z1);
   ix63886z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR391(0), datain=>nx63886z1);
   ix45767z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR359, datain=>nx45767z1);
   ix23314z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(7), datain=>nx23314z1);
   ix22317z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(6), datain=>nx22317z1);
   ix21320z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(5), datain=>nx21320z1);
   ix20323z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(4), datain=>nx20323z1);
   ix19326z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(3), datain=>nx19326z1);
   ix260_reg_p40 : cycloneii_lcell_ff port map ( regout=>p40, datain=>
      nx39827z1, clk=>i_clock_int);
   ix260_reg_p30 : cycloneii_lcell_ff port map ( regout=>nx39827z1, datain=>
      nx40824z1, clk=>i_clock_int);
   ix259_reg_p5m_1 : cycloneii_lcell_ff port map ( regout=>p5m(1), datain=>
      nx14253z1, clk=>i_clock_int);
   ix259_reg_p5m_0 : cycloneii_lcell_ff port map ( regout=>p5m(0), datain=>
      nx13256z1, clk=>i_clock_int);
   ix259_reg_p4m_1 : cycloneii_lcell_ff port map ( regout=>nx14253z1, datain
      =>nx46148z1, clk=>i_clock_int);
   ix259_reg_p4m_0 : cycloneii_lcell_ff port map ( regout=>nx13256z1, datain
      =>nx47145z1, clk=>i_clock_int);
   ix259_reg_p3m_1 : cycloneii_lcell_ff port map ( regout=>nx46148z1, datain
      =>nx41013z1, clk=>i_clock_int);
   ix259_reg_p3m_0 : cycloneii_lcell_ff port map ( regout=>nx47145z1, datain
      =>nx42010z1, clk=>i_clock_int);
   ix18329z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(2), datain=>nx18329z1);
   ix258_reg_p4r_7 : cycloneii_lcell_ff port map ( regout=>nx45613z1, datain
      =>nx20946z1, clk=>i_clock_int);
   ix258_reg_p4r_6 : cycloneii_lcell_ff port map ( regout=>nx44616z1, datain
      =>nx21943z1, clk=>i_clock_int);
   ix258_reg_p4r_5 : cycloneii_lcell_ff port map ( regout=>nx43619z1, datain
      =>nx22940z1, clk=>i_clock_int);
   ix258_reg_p4r_4 : cycloneii_lcell_ff port map ( regout=>nx42622z1, datain
      =>nx23937z1, clk=>i_clock_int);
   ix258_reg_p4r_3 : cycloneii_lcell_ff port map ( regout=>nx41625z1, datain
      =>nx24934z1, clk=>i_clock_int);
   ix258_reg_p4r_2 : cycloneii_lcell_ff port map ( regout=>nx40628z1, datain
      =>nx25931z1, clk=>i_clock_int);
   ix258_reg_p4r_1 : cycloneii_lcell_ff port map ( regout=>nx39631z1, datain
      =>nx26928z1, clk=>i_clock_int);
   ix258_reg_p4r_0 : cycloneii_lcell_ff port map ( regout=>nx38634z1, datain
      =>nx27925z1, clk=>i_clock_int);
   ix258_reg_p3r_7 : cycloneii_lcell_ff port map ( regout=>nx20946z1, datain
      =>nx15811z1, clk=>i_clock_int);
   ix258_reg_p3r_6 : cycloneii_lcell_ff port map ( regout=>nx21943z1, datain
      =>nx16808z1, clk=>i_clock_int);
   ix258_reg_p3r_5 : cycloneii_lcell_ff port map ( regout=>nx22940z1, datain
      =>nx17805z1, clk=>i_clock_int);
   ix258_reg_p3r_4 : cycloneii_lcell_ff port map ( regout=>nx23937z1, datain
      =>nx18802z1, clk=>i_clock_int);
   ix258_reg_p3r_3 : cycloneii_lcell_ff port map ( regout=>nx24934z1, datain
      =>nx19799z1, clk=>i_clock_int);
   ix258_reg_p3r_2 : cycloneii_lcell_ff port map ( regout=>nx25931z1, datain
      =>nx20796z1, clk=>i_clock_int);
   ix258_reg_p3r_1 : cycloneii_lcell_ff port map ( regout=>nx26928z1, datain
      =>nx21793z1, clk=>i_clock_int);
   ix258_reg_p3r_0 : cycloneii_lcell_ff port map ( regout=>nx27925z1, datain
      =>nx22790z1, clk=>i_clock_int);
   ix17332z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(1), datain=>nx17332z1);
   ix16335z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR393(0), datain=>nx16335z1);
   ix6038z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_valid_EXMPLR206, datain=>GND_EXMPLR371, oe=>
      GND_EXMPLR371);
   i_valid_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx40824z1, padio=>i_valid_EXMPLR345, inclk=>
      i_clock_int);
   i_row_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx15811z1, padio=>i_row_EXMPLR390(7), inclk=>
      i_clock_int);
   i_row_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx16808z1, padio=>i_row_EXMPLR390(6), inclk=>
      i_clock_int);
   i_row_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx17805z1, padio=>i_row_EXMPLR390(5), inclk=>
      i_clock_int);
   i_row_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx18802z1, padio=>i_row_EXMPLR390(4), inclk=>
      i_clock_int);
   i_row_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx19799z1, padio=>i_row_EXMPLR390(3), inclk=>
      i_clock_int);
   i_row_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx20796z1, padio=>i_row_EXMPLR390(2), inclk=>
      i_clock_int);
   i_row_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx21793z1, padio=>i_row_EXMPLR390(1), inclk=>
      i_clock_int);
   i_row_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx22790z1, padio=>i_row_EXMPLR390(0), inclk=>
      i_clock_int);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR344);
   i_mode_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx41013z1, padio=>i_mode_EXMPLR389(1), inclk=>
      i_clock_int);
   i_mode_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx42010z1, padio=>i_mode_EXMPLR389(0), inclk=>
      i_clock_int);
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR343);
   i2_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(7), padio=>i2_EXMPLR388(7));
   i2_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(6), padio=>i2_EXMPLR388(6));
   i2_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(5), padio=>i2_EXMPLR388(5));
   i2_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(4), padio=>i2_EXMPLR388(4));
   i2_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(3), padio=>i2_EXMPLR388(3));
   i2_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(2), padio=>i2_EXMPLR388(2));
   i2_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(1), padio=>i2_EXMPLR388(1));
   i2_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i2_int(0), padio=>i2_EXMPLR388(0));
   i1_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(7), padio=>i1_EXMPLR387(7));
   i1_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(6), padio=>i1_EXMPLR387(6));
   i1_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(5), padio=>i1_EXMPLR387(5));
   i1_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(4), padio=>i1_EXMPLR387(4));
   i1_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(3), padio=>i1_EXMPLR387(3));
   i1_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(2), padio=>i1_EXMPLR387(2));
   i1_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(1), padio=>i1_EXMPLR387(1));
   i1_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i1_int(0), padio=>i1_EXMPLR387(0));
   debug_num_8_triBus9_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_8_triBus9_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR380(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_7_triBus8_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR379(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_6_triBus7_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR378(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_5_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR377(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_4_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR376(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_3_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR375(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_2_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR374(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_1_triBus2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR373(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(7), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(6), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(5), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(4), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(3), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(2), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(1), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   debug_num_0_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR372(0), datain=>GND_EXMPLR371, oe
      =>GND_EXMPLR371);
   b3_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(7), padio=>b3_EXMPLR386(7));
   b3_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(6), padio=>b3_EXMPLR386(6));
   b3_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(5), padio=>b3_EXMPLR386(5));
   b3_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(4), padio=>b3_EXMPLR386(4));
   b3_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(3), padio=>b3_EXMPLR386(3));
   b3_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(2), padio=>b3_EXMPLR386(2));
   b3_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(1), padio=>b3_EXMPLR386(1));
   b3_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b3_int(0), padio=>b3_EXMPLR386(0));
   b2_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(7), padio=>b2_EXMPLR385(7));
   b2_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(6), padio=>b2_EXMPLR385(6));
   b2_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(5), padio=>b2_EXMPLR385(5));
   b2_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(4), padio=>b2_EXMPLR385(4));
   b2_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(3), padio=>b2_EXMPLR385(3));
   b2_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(2), padio=>b2_EXMPLR385(2));
   b2_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(1), padio=>b2_EXMPLR385(1));
   b2_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b2_int(0), padio=>b2_EXMPLR385(0));
   b1_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(7), padio=>b1_EXMPLR384(7));
   b1_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(6), padio=>b1_EXMPLR384(6));
   b1_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(5), padio=>b1_EXMPLR384(5));
   b1_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(4), padio=>b1_EXMPLR384(4));
   b1_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(3), padio=>b1_EXMPLR384(3));
   b1_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(2), padio=>b1_EXMPLR384(2));
   b1_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(1), padio=>b1_EXMPLR384(1));
   b1_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>b1_int(0), padio=>b1_EXMPLR384(0));
   ix31358z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx31358z10, dataa=>p45, datab=>max_fwd);
   ix26026z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5444") 
       port map ( combout=>nx26026z2, dataa=>p4s(11), datab=>p4s(9), datac=>
      p4s(8), datad=>p4s(7));
   ix31358z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx31358z2, dataa=>nx31358z3, datab=>nx31358z8, 
      datac=>nx31358z9, datad=>nx31358z10);
   ix31358z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx31358z9, dataa=>p43(1), datab=>p43(0), datac=>
      prev_max(1), datad=>prev_max(0));
   ix31358z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx31358z8, dataa=>p43(3), datab=>p43(2), datac=>
      prev_max(3), datad=>prev_max(2));
   ix31358z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx31358z7, dataa=>p43(5), datab=>p43(4), datac=>
      prev_max(5), datad=>prev_max(4));
   ix31358z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx31358z6, dataa=>p43(7), datab=>p43(6), datac=>
      prev_max(7), datad=>prev_max(6));
   ix31358z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx31358z5, dataa=>p43(9), datab=>p43(8), datac=>
      prev_max(9), datad=>prev_max(8));
   ix31358z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx31358z4, dataa=>p43(11), datab=>p43(10), datac
      =>prev_max(11), datad=>prev_max(10));
   ix26530z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx26530z1, dataa=>p40, datab=>i_reset_int);
   ix31358z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx31358z1, dataa=>state(3), datab=>nx32403z4, 
      datac=>i_reset_int, datad=>nx31358z2);
   ix31358z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx31358z3, dataa=>nx31358z4, datab=>nx31358z5, 
      datac=>nx31358z6, datad=>nx31358z7);
   ix32403z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx32403z5, dataa=>state(1), datab=>nx28524z1);
   ix32403z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx32403z1, dataa=>state(2), datab=>state(1), 
      datac=>nx28524z1);
   ix32403z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e0f0") 
       port map ( combout=>nx32403z2, dataa=>state(3), datab=>state(2), 
      datac=>nx32403z3, datad=>nx32403z5);
   ix30409z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx30409z1, dataa=>p45, datab=>nx28524z1);
   ix30361z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx30361z1, dataa=>state(3), datab=>i_reset_int);
   ix26026z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f4f4") 
       port map ( combout=>nx26026z1, dataa=>p4s(11), datab=>p4s(10), datac
      =>nx26026z2);
   ix32403z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx32403z3, dataa=>nx32403z4, datab=>nx31358z2);
   ix47893z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>o_mode_dup0(0), dataa=>p5m(0), datab=>i_reset_int
   );
   ix46896z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>o_mode_dup0(1), dataa=>p5m(1), datab=>i_reset_int
   );
end main ;

