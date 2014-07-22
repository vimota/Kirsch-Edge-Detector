
-- 
-- Definition of  kirsch
-- 
--      Tue Jul 22 01:30:19 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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

entity add_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn1459 : IN std_logic ;
      p_rtlcn1499 : IN std_logic) ;
end add_12_0 ;

architecture IMPLEMENTATION of add_12_0 is 
   signal nx63795z39, nx63795z36, nx63795z33, nx63795z30, nx63795z27, 
      nx63795z24, nx63795z21, nx63795z18, nx63795z15, nx63795z12, nx63795z10, 
      nx63795z9, nx63795z7, nx63795z6, nx63795z2, nx63795z4: std_logic ;

begin
   nx63795z39 <= '0';
   nx63795z10 <= NOT p_rtlcn1459;
   nx63795z7 <= NOT p_rtlcn1459;
   nx63795z2 <= NOT p_rtlcn1459;
   nx63795z4 <= NOT p_rtlcn1499;
   ix63795z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx63795z21, datad=>a(5), dataf=>b(5), 
      cin=>nx63795z24);
   ix63795z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx63795z24, datad=>a(4), dataf=>b(4), 
      cin=>nx63795z27);
   ix63795z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx63795z27, datad=>a(3), dataf=>b(3), 
      cin=>nx63795z30);
   ix63795z37214 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx63795z30, datad=>a(2), dataf=>b(2), 
      cin=>nx63795z33);
   ix63795z37215 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx63795z33, datad=>a(1), dataf=>b(1), 
      cin=>nx63795z36);
   ix63795z37216 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx63795z36, datad=>a(0), dataf=>b(0), 
      cin=>nx63795z39);
   ix63795z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(11), datad=>nx63795z2, dataf=>nx63795z4, cin=>
      nx63795z6);
   ix63795z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(10), cout=>nx63795z6, datad=>nx63795z7, dataf=>
      b(10), cin=>nx63795z9);
   ix63795z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(9), cout=>nx63795z9, datad=>nx63795z10, dataf=>
      b(9), cin=>nx63795z12);
   ix63795z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx63795z12, datad=>a(8), dataf=>b(8), 
      cin=>nx63795z15);
   ix63795z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx63795z15, datad=>a(7), dataf=>b(7), 
      cin=>nx63795z18);
   ix63795z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx63795z18, datad=>a(6), dataf=>b(6), 
      cin=>nx63795z21);
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

entity add_12_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn1556 : IN std_logic ;
      p_rtlcn1596 : IN std_logic) ;
end add_12_1 ;

architecture IMPLEMENTATION of add_12_1 is 
   signal nx63795z39, nx63795z36, nx63795z33, nx63795z30, nx63795z27, 
      nx63795z24, nx63795z21, nx63795z18, nx63795z15, nx63795z12, nx63795z10, 
      nx63795z9, nx63795z7, nx63795z6, nx63795z2, nx63795z4: std_logic ;

begin
   nx63795z39 <= '0';
   nx63795z10 <= NOT p_rtlcn1556;
   nx63795z7 <= NOT p_rtlcn1556;
   nx63795z2 <= NOT p_rtlcn1556;
   nx63795z4 <= NOT p_rtlcn1596;
   ix63795z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx63795z21, datad=>a(5), dataf=>b(5), 
      cin=>nx63795z24);
   ix63795z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx63795z24, datad=>a(4), dataf=>b(4), 
      cin=>nx63795z27);
   ix63795z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx63795z27, datad=>a(3), dataf=>b(3), 
      cin=>nx63795z30);
   ix63795z37214 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx63795z30, datad=>a(2), dataf=>b(2), 
      cin=>nx63795z33);
   ix63795z37215 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx63795z33, datad=>a(1), dataf=>b(1), 
      cin=>nx63795z36);
   ix63795z37216 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx63795z36, datad=>a(0), dataf=>b(0), 
      cin=>nx63795z39);
   ix63795z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(11), datad=>nx63795z2, dataf=>nx63795z4, cin=>
      nx63795z6);
   ix63795z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(10), cout=>nx63795z6, datad=>nx63795z7, dataf=>
      b(10), cin=>nx63795z9);
   ix63795z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(9), cout=>nx63795z9, datad=>nx63795z10, dataf=>
      b(9), cin=>nx63795z12);
   ix63795z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx63795z12, datad=>a(8), dataf=>b(8), 
      cin=>nx63795z15);
   ix63795z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx63795z15, datad=>a(7), dataf=>b(7), 
      cin=>nx63795z18);
   ix63795z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx63795z18, datad=>a(6), dataf=>b(6), 
      cin=>nx63795z21);
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
      p_rtlcs0 : IN std_logic ;
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
       port map ( sumout=>d(7), cout=>nx25450z2, dataa=>p_rtlcs0, datab=>
      p_f_i2_next_7, datac=>p_f_i1_next_7, datad=>p_o_image1_0_dup0_7, dataf
      =>p_o_image1_2_dup0_7, cin=>nx44952z3);
   ix44952z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(6), cout=>nx44952z3, dataa=>p_rtlcs0, datac=>
      p_f_i1_next_6, datad=>p_o_image1_0_dup0_6, dataf=>b(6), cin=>nx44952z5
   );
   ix44952z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(5), cout=>nx44952z5, dataa=>p_rtlcs0, datab=>
      p_f_i2_next_5, datac=>p_f_i1_next_5, datad=>p_o_image1_0_dup0_5, dataf
      =>p_o_image1_2_dup0_5, cin=>nx44952z6);
   ix44952z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(4), cout=>nx44952z6, dataa=>p_rtlcs0, datac=>
      p_f_i1_next_4, datad=>p_o_image1_0_dup0_4, dataf=>b(4), cin=>nx44952z8
   );
   ix44952z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(3), cout=>nx44952z8, dataa=>p_rtlcs0, datab=>
      p_f_i2_next_3, datac=>p_f_i1_next_3, datad=>p_o_image1_0_dup0_3, dataf
      =>p_o_image1_2_dup0_3, cin=>nx44952z9);
   ix44952z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(2), cout=>nx44952z9, dataa=>p_rtlcs0, datac=>
      p_f_i1_next_2, datad=>p_o_image1_0_dup0_2, dataf=>b(2), cin=>
      nx44952z11);
   ix44952z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000011bb0000fa50") 
       port map ( sumout=>d(1), cout=>nx44952z11, dataa=>p_rtlcs0, datab=>
      p_f_i2_next_1, datac=>p_f_i1_next_1, datad=>p_o_image1_0_dup0_1, dataf
      =>p_o_image1_2_dup0_1, cin=>nx44952z12);
   ix44952z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>d(0), cout=>nx44952z12, dataa=>p_rtlcs0, datac=>
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
      nx45949z10, nx45949z8, nx45949z6, nx45949z4, nx45949z2, nx34639z2, 
      nx34639z1: std_logic ;

begin
   nx45949z20 <= '0';
   nx45949z2 <= '0';
   nx34639z1 <= '0';
   ix45949z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(7), cout=>nx45949z4, dataa=>a(6), datad=>a(7), 
      cin=>nx45949z6);
   ix45949z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(6), cout=>nx45949z6, dataa=>a(6), dataf=>a(5), 
      cin=>nx45949z8);
   ix45949z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(5), cout=>nx45949z8, dataa=>a(4), datad=>a(5), 
      cin=>nx45949z10);
   ix45949z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(4), cout=>nx45949z10, dataa=>a(4), dataf=>a(3), 
      cin=>nx45949z12);
   ix45949z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(3), cout=>nx45949z12, dataa=>a(2), datad=>a(3), 
      cin=>nx45949z14);
   ix45949z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(2), cout=>nx45949z14, dataa=>a(2), dataf=>a(1), 
      cin=>nx45949z16);
   ix45949z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(1), cout=>nx45949z16, dataa=>a(0), datad=>a(1), 
      cin=>nx45949z18);
   ix45949z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(0), cout=>nx45949z18, dataa=>a(0), dataf=>b(0), 
      cin=>nx45949z20);
   ix101_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx34639z1, cin=>nx34639z2);
   ix45949z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx34639z2, datad=>nx45949z2, dataf=>
      a(7), cin=>nx45949z4);
end IMPLEMENTATION ;

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
   signal nx19622z3, nx32964z3, nx32964z4, nx45522z3, nx45522z4, nx19691z3, 
      nx19691z4, nx32641z3, nx32641z4, nx19945z3, nx19945z4, nx58541z3, 
      nx58541z4, nx25526z3, nx25526z4, nx27060z3, nx27060z4, nx51426z3, 
      nx51426z4, nx64376z3, nx64376z4, nx53746z3, nx53746z4, nx53746z2, 
      nx58237z1, nx58237z2: std_logic ;

begin
   nx19622z3 <= '0';
   nx53746z2 <= NOT a(11);
   ix95_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(2), cout=>nx19691z3, shareout=>nx19691z4, datac
      =>b(2), datad=>a(2), cin=>nx45522z3, sharein=>nx45522z4);
   ix84_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(1), cout=>nx45522z3, shareout=>nx45522z4, datac
      =>b(1), datad=>a(1), cin=>nx32964z3, sharein=>nx32964z4);
   ix73_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ff0f00000ff0",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx32964z3, shareout=>nx32964z4, datac
      =>b(0), datad=>a(0), cin=>nx19622z3, sharein=>nx19622z3);
   ix205_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>cout, cin=>nx58237z1, sharein=>nx58237z2);
   ix194_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f0f00000ff00",
         shared_arith => "on") 
       port map ( sumout=>d(11), cout=>nx58237z1, shareout=>nx58237z2, datac
      =>a(11), datad=>nx53746z2, cin=>nx53746z3, sharein=>nx53746z4);
   ix183_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(10), cout=>nx53746z3, shareout=>nx53746z4, datac
      =>b(10), datad=>a(10), cin=>nx64376z3, sharein=>nx64376z4);
   ix172_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx64376z3, shareout=>nx64376z4, datac
      =>b(9), datad=>a(9), cin=>nx51426z3, sharein=>nx51426z4);
   ix161_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx51426z3, shareout=>nx51426z4, datac
      =>b(8), datad=>a(8), cin=>nx27060z3, sharein=>nx27060z4);
   ix150_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx27060z3, shareout=>nx27060z4, datac
      =>b(7), datad=>a(7), cin=>nx25526z3, sharein=>nx25526z4);
   ix139_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx25526z3, shareout=>nx25526z4, datac
      =>b(6), datad=>a(6), cin=>nx58541z3, sharein=>nx58541z4);
   ix128_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(5), cout=>nx58541z3, shareout=>nx58541z4, datac
      =>b(5), datad=>a(5), cin=>nx19945z3, sharein=>nx19945z4);
   ix117_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(4), cout=>nx19945z3, shareout=>nx19945z4, datac
      =>b(4), datad=>a(4), cin=>nx32641z3, sharein=>nx32641z4);
   ix106_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(3), cout=>nx32641z3, shareout=>nx32641z4, datac
      =>b(3), datad=>a(3), cin=>nx19691z3, sharein=>nx19691z4);
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
   signal nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
      nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
      nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
      nx43230z4, nx43230z2, nx9356z1, nx9356z2: std_logic ;

begin
   nx11426z3 <= '0';
   nx43230z2 <= NOT a(9);
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
      generic map (lut_mask => X"00003f030000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx41160z3, shareout=>nx41160z4, datab
      =>b(0), datac=>p_p12_0, datad=>a(0), cin=>nx11426z3, sharein=>
      nx11426z3);
   ix174_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>cout, cin=>nx9356z1, sharein=>nx9356z2);
   ix163_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f0f00000ff00",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx9356z1, shareout=>nx9356z2, datac=>
      a(9), datad=>nx43230z2, cin=>nx43230z3, sharein=>nx43230z4);
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
   signal nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
      nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
      nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
      nx43230z4, nx43230z2, nx9356z1, nx9356z2: std_logic ;

begin
   nx11426z3 <= '0';
   nx43230z2 <= NOT a(9);
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
      generic map (lut_mask => X"00003f030000c33c",
         shared_arith => "on") 
       port map ( sumout=>d(0), cout=>nx41160z3, shareout=>nx41160z4, datab
      =>b(0), datac=>p_p11_0, datad=>a(0), cin=>nx11426z3, sharein=>
      nx11426z3);
   ix174_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000000000000",
         shared_arith => "on") 
       port map ( sumout=>cout, cin=>nx9356z1, sharein=>nx9356z2);
   ix163_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f0f00000ff00",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx9356z1, shareout=>nx9356z2, datac=>
      a(9), datad=>nx43230z2, cin=>nx43230z3, sharein=>nx43230z4);
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
      p_f_i1_next_7 : IN std_logic ;
      p_rtlcs0 : IN std_logic ;
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
      GND : OUT std_logic ;
      p_ix300_ix290_nx7_repl0 : IN std_logic ;
      p_ix300_ix291_nx7_repl0 : IN std_logic ;
      p_ix300_ix292_nx7_repl0 : IN std_logic ;
      p_ix300_ix293_nx7_repl0 : IN std_logic ;
      p_ix300_ix294_nx7_repl0 : IN std_logic ;
      p_ix300_ix295_nx7_repl0 : IN std_logic ;
      p_ix300_ix296_nx7_repl0 : IN std_logic ;
      p_ix300_ix297_nx7_repl0 : IN std_logic ;
      p_ix301_ix298_nx7_repl0 : IN std_logic ;
      p_ix301_ix299_nx7_repl0 : IN std_logic ;
      p_p20_repl0 : IN std_logic) ;
end flow ;

architecture main of flow is 
   component sub_10_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn1459 : IN std_logic ;
         p_rtlcn1499 : IN std_logic) ;
   end component ;
   component sub_10_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_12_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn1556 : IN std_logic ;
         p_rtlcn1596 : IN std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_f_i1_next_7 : IN std_logic ;
         p_rtlcs0 : IN std_logic ;
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
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
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
   signal o_edge_EXMPLR690: std_logic_vector (2 DOWNTO 2) ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21: std_logic_vector (12 DOWNTO 0) ;
   
   signal p22: std_logic_vector (12 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p31: std_logic_vector (12 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p30, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (13 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (13 DOWNTO 0) ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (13 DOWNTO 0) ;
   
   signal max_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p21_4n0r3_9, p21_4n0r3_8, p21_4n0r3_7, p21_4n0r3_6, p21_4n0r3_5, 
      p21_4n0r3_4, p21_4n0r3_3, p21_4n0r3_2, p21_4n0r3_1, p21_4n0r3_0: 
   std_logic ;
   
   signal p21_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p22_4n0r3_9, p22_4n0r3_8, p22_4n0r3_7, p22_4n0r3_6, p22_4n0r3_5, 
      p22_4n0r3_4, p22_4n0r3_3, p22_4n0r3_2, p22_4n0r3_1, p22_4n0r3_0: 
   std_logic ;
   
   signal p22_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal nx10171z1, nx10171z2, nx6401z1, nx6401z2, nx28128z1, nx27610z1, 
      nx32745z1, nx28607z1, nx33742z1, nx29604z1, nx34739z1, nx30601z1, 
      nx35736z1, nx31598z1, nx36733z1, nx32595z1, nx37730z1, nx33592z1, 
      nx38727z1, nx34589z1, nx39724z1, nx12724z1, nx7589z1, nx11727z1, 
      nx6592z1, PWR, nx25836z2, nx45188z2, nx26026z1, nx60988z2, nx30752z1, 
      nx27830z1, nx29521z2, nx60988z1, nx29521z1, nx25836z1, nx26833z1, 
      nx46185z1, nx45188z1, nx44191z1, nx49569z1, nx50566z1, nx51563z1, 
      nx52560z1, nx53557z1, nx54554z1, nx55551z1, nx56548z1, nx57545z1, 
      nx58542z1, nx25836z13, nx25836z11, nx25836z9, nx25836z8, nx45188z4, 
      nx45188z6, nx45188z7, nx25836z3, nx45188z3, nx25836z4, nx25836z5, 
      nx25836z6, nx25836z7, nx45188z5, nx26026z2, nx25836z10, nx25836z14, 
      nx25836z15, nx25836z12, nx27830z2: std_logic ;
   
   signal DANGLING : std_logic_vector (44 downto 0 );

begin
   o_edge <= o_edge_EXMPLR690(2) ;
   p21_sub10_4i1 : sub_10_0 port map ( cin=>DANGLING(0), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_4n0r3_9, 
      d(8)=>p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>p21_4n0r3_6, d(5)=>
      p21_4n0r3_5, d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, d(2)=>p21_4n0r3_2, 
      d(1)=>p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>nx10171z1);
   p21_add12_4i3 : add_12_0 port map ( cin=>DANGLING(1), a(11)=>DANGLING(2), 
      a(10)=>DANGLING(3), a(9)=>DANGLING(4), a(8)=>p21_4n0r3_9, a(7)=>
      p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, a(4)=>p21_4n0r3_5, 
      a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>p21_4n0r3_2, a(0)=>
      p21_4n0r3_1, b(11)=>DANGLING(5), b(10)=>p21_4n0r4(11), b(9)=>
      p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>p21_4n0r4(8), b(6)=>
      p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>p21_4n0r4(5), b(3)=>
      p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>p21_4n0r4(2), b(0)=>p12(0), 
      d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), d(9)=>p21_4n0r2(10), d(8)
      =>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>p21_4n0r2(7), d(5)=>
      p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>p21_4n0r2(4), d(2)=>
      p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>p21_4n0r2(1), cout=>DANGLING(6
      ), p_rtlcn1459=>nx10171z1, p_rtlcn1499=>nx10171z2);
   p22_sub10_4i4 : sub_10_1 port map ( cin=>DANGLING(7), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_4n0r3_9, 
      d(8)=>p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>p22_4n0r3_6, d(5)=>
      p22_4n0r3_5, d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, d(2)=>p22_4n0r3_2, 
      d(1)=>p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>nx6401z1);
   p22_add12_4i6 : add_12_1 port map ( cin=>DANGLING(8), a(11)=>DANGLING(9), 
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
      13), p_rtlcn1556=>nx6401z1, p_rtlcn1596=>nx6401z2);
   p13_add8_0i3 : add_8_0 port map ( cin=>DANGLING(14), a(7)=>DANGLING(15), 
      a(6)=>DANGLING(16), a(5)=>DANGLING(17), a(4)=>DANGLING(18), a(3)=>
      DANGLING(19), a(2)=>DANGLING(20), a(1)=>DANGLING(21), a(0)=>DANGLING(
      22), b(7)=>DANGLING(23), b(6)=>i2(6), b(5)=>DANGLING(24), b(4)=>i2(4), 
      b(3)=>DANGLING(25), b(2)=>i2(2), b(1)=>DANGLING(26), b(0)=>i2(0), d(7)
      =>p13_0n0s2(7), d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>
      p13_0n0s2(4), d(3)=>p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>
      p13_0n0s2(1), d(0)=>p13_0n0s2(0), cout=>p13_0n0s2(8), p_f_i1_next_7=>
      p_f_i1_next_7, p_rtlcs0=>p_rtlcs0, p_o_image1_0_dup0_7=>
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
   p13_add9_2 : add_9_0 port map ( cin=>DANGLING(27), a(8)=>DANGLING(28), 
      a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>DANGLING(29), b(7)=>DANGLING(
      30), b(6)=>DANGLING(31), b(5)=>DANGLING(32), b(4)=>DANGLING(33), b(3)
      =>DANGLING(34), b(2)=>DANGLING(35), b(1)=>DANGLING(36), b(0)=>
      p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>p13(7), d(5)=>p13(6), 
      d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>p13(2), d(0)=>p13(1), 
      cout=>p13(10));
   p4s_sub12_3 : sub_12_0 port map ( cin=>DANGLING(37), a(11)=>p31(11), 
      a(10)=>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>DANGLING(38), b(10)=>p32(10), b(9)=>p32(9), b(8)
      =>p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)
      =>p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>nx28128z1);
   modgen_adderblock : modgen_adderblock_3_0 port map ( a0(7)=>b1(7), a0(6)
      =>b1(6), a0(5)=>b1(5), a0(4)=>b1(4), a0(3)=>b1(3), a0(2)=>b1(2), a0(1)
      =>b1(1), a0(0)=>b1(0), a1(7)=>b2(7), a1(6)=>b2(6), a1(5)=>b2(5), a1(4)
      =>b2(4), a1(3)=>b2(3), a1(2)=>b2(2), a1(1)=>b2(1), a1(0)=>b2(0), a2(8)
      =>DANGLING(39), a2(7)=>b3(7), a2(6)=>b3(6), a2(5)=>b3(5), a2(4)=>b3(4), 
      a2(3)=>b3(3), a2(2)=>b3(2), a2(1)=>b3(1), a2(0)=>b3(0), d(9)=>p12(9), 
      d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)=>p12(4), 
      d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>p12(0));
   modgen_adderblock_dup_0 : modgen_adderblock_3_1 port map ( a0(7)=>t1(7), 
      a0(6)=>t1(6), a0(5)=>t1(5), a0(4)=>t1(4), a0(3)=>t1(3), a0(2)=>t1(2), 
      a0(1)=>t1(1), a0(0)=>t1(0), a1(7)=>t2(7), a1(6)=>t2(6), a1(5)=>t2(5), 
      a1(4)=>t2(4), a1(3)=>t2(3), a1(2)=>t2(2), a1(1)=>t2(1), a1(0)=>t2(0), 
      a2(8)=>DANGLING(40), a2(7)=>t3(7), a2(6)=>t3(6), a2(5)=>t3(5), a2(4)=>
      t3(4), a2(3)=>t3(3), a2(2)=>t3(2), a2(1)=>t3(1), a2(0)=>t3(0), d(9)=>
      p11(9), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>p11(5), d(4)=>
      p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>p11(0));
   p21_sub11_4i2 : sub_10_2 port map ( cin=>DANGLING(41), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>DANGLING(42), 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_4n0r4(11), d(8)=>p21_4n0r4(10), d(7)=>p21_4n0r4(9), d(6)=>
      p21_4n0r4(8), d(5)=>p21_4n0r4(7), d(4)=>p21_4n0r4(6), d(3)=>
      p21_4n0r4(5), d(2)=>p21_4n0r4(4), d(1)=>p21_4n0r4(3), d(0)=>
      p21_4n0r4(2), cout=>nx10171z2, p_p12_0=>p12(0));
   p22_sub11_4i5 : sub_10_3 port map ( cin=>DANGLING(43), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>DANGLING(44), 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_4n0r4(11), d(8)=>p22_4n0r4(10), d(7)=>p22_4n0r4(9), d(6)=>
      p22_4n0r4(8), d(5)=>p22_4n0r4(7), d(4)=>p22_4n0r4(6), d(3)=>
      p22_4n0r4(5), d(2)=>p22_4n0r4(4), d(1)=>p22_4n0r4(3), d(0)=>
      p22_4n0r4(2), cout=>nx6401z2, p_p11_0=>p11(0));
   PWR <= '1';
   reg_tmp_o_edge : stratixii_lcell_ff port map ( regout=>
      o_edge_EXMPLR690(2), datain=>prev_edge, adatasdata=>p41, clk=>i_clock, 
      ena=>PWR, sload=>nx30752z1);
   reg_state_3 : stratixii_lcell_ff port map ( regout=>state(3), datain=>
      state(2), clk=>i_clock, ena=>nx29521z2, sclr=>i_reset);
   reg_state_2 : stratixii_lcell_ff port map ( regout=>state(2), datain=>
      state(1), clk=>i_clock, ena=>nx29521z2, sclr=>i_reset);
   reg_state_1 : stratixii_lcell_ff port map ( regout=>state(1), datain=>
      state(0), clk=>i_clock, ena=>nx29521z2, sclr=>i_reset);
   reg_state_0 : stratixii_lcell_ff port map ( regout=>state(0), datain=>
      nx29521z1, clk=>i_clock, ena=>nx29521z2);
   reg_prev_max_9 : stratixii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_8 : stratixii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_7 : stratixii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_6 : stratixii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_5 : stratixii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_4 : stratixii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_3 : stratixii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_2 : stratixii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_13 : stratixii_lcell_ff port map ( regout=>prev_max(13), 
      datain=>p43(13), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_12 : stratixii_lcell_ff port map ( regout=>prev_max(12), 
      datain=>p43(12), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_11 : stratixii_lcell_ff port map ( regout=>prev_max(11), 
      datain=>p43(11), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_10 : stratixii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_1 : stratixii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_max_0 : stratixii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_prev_edge : stratixii_lcell_ff port map ( regout=>prev_edge, datain=>
      p41, clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
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
   reg_p43_13 : stratixii_lcell_ff port map ( regout=>p43(13), datain=>
      p4s(13), clk=>i_clock);
   reg_p43_12 : stratixii_lcell_ff port map ( regout=>p43(12), datain=>
      p4s(12), clk=>i_clock);
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
   reg_p40 : stratixii_lcell_ff port map ( regout=>p40, datain=>p30, clk=>
      i_clock);
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
   reg_p31_12 : stratixii_lcell_ff port map ( regout=>p31(12), datain=>
      nx46185z1, clk=>i_clock);
   reg_p31_11 : stratixii_lcell_ff port map ( regout=>p31(11), datain=>
      nx45188z1, clk=>i_clock);
   reg_p31_10 : stratixii_lcell_ff port map ( regout=>p31(10), datain=>
      nx44191z1, clk=>i_clock);
   reg_p31_1 : stratixii_lcell_ff port map ( regout=>p31(1), datain=>
      nx57545z1, clk=>i_clock);
   reg_p31_0 : stratixii_lcell_ff port map ( regout=>p31(0), datain=>
      nx58542z1, clk=>i_clock);
   reg_p30 : stratixii_lcell_ff port map ( regout=>p30, datain=>p_p20_repl0, 
      clk=>i_clock);
   reg_p23_9 : stratixii_lcell_ff port map ( regout=>p23(9), datain=>p13(9), 
      clk=>i_clock);
   reg_p23_8 : stratixii_lcell_ff port map ( regout=>p23(8), datain=>p13(8), 
      clk=>i_clock);
   reg_p23_7 : stratixii_lcell_ff port map ( regout=>p23(7), datain=>p13(7), 
      clk=>i_clock);
   reg_p23_6 : stratixii_lcell_ff port map ( regout=>p23(6), datain=>p13(6), 
      clk=>i_clock);
   reg_p23_5 : stratixii_lcell_ff port map ( regout=>p23(5), datain=>p13(5), 
      clk=>i_clock);
   reg_p23_4 : stratixii_lcell_ff port map ( regout=>p23(4), datain=>p13(4), 
      clk=>i_clock);
   reg_p23_3 : stratixii_lcell_ff port map ( regout=>p23(3), datain=>p13(3), 
      clk=>i_clock);
   reg_p23_2 : stratixii_lcell_ff port map ( regout=>p23(2), datain=>p13(2), 
      clk=>i_clock);
   reg_p23_10 : stratixii_lcell_ff port map ( regout=>p23(10), datain=>
      p13(10), clk=>i_clock);
   reg_p23_1 : stratixii_lcell_ff port map ( regout=>p23(1), datain=>p13(1), 
      clk=>i_clock);
   reg_p23_0 : stratixii_lcell_ff port map ( regout=>p23(0), datain=>
      p13_0n0s2(0), clk=>i_clock);
   reg_p22_9 : stratixii_lcell_ff port map ( regout=>p22(9), datain=>
      p22_4n0r2(9), clk=>i_clock);
   reg_p22_8 : stratixii_lcell_ff port map ( regout=>p22(8), datain=>
      p22_4n0r2(8), clk=>i_clock);
   reg_p22_7 : stratixii_lcell_ff port map ( regout=>p22(7), datain=>
      p22_4n0r2(7), clk=>i_clock);
   reg_p22_6 : stratixii_lcell_ff port map ( regout=>p22(6), datain=>
      p22_4n0r2(6), clk=>i_clock);
   reg_p22_5 : stratixii_lcell_ff port map ( regout=>p22(5), datain=>
      p22_4n0r2(5), clk=>i_clock);
   reg_p22_4 : stratixii_lcell_ff port map ( regout=>p22(4), datain=>
      p22_4n0r2(4), clk=>i_clock);
   reg_p22_3 : stratixii_lcell_ff port map ( regout=>p22(3), datain=>
      p22_4n0r2(3), clk=>i_clock);
   reg_p22_2 : stratixii_lcell_ff port map ( regout=>p22(2), datain=>
      p22_4n0r2(2), clk=>i_clock);
   reg_p22_12 : stratixii_lcell_ff port map ( regout=>p22(12), datain=>
      p22_4n0r2(12), clk=>i_clock);
   reg_p22_11 : stratixii_lcell_ff port map ( regout=>p22(11), datain=>
      p22_4n0r2(11), clk=>i_clock);
   reg_p22_10 : stratixii_lcell_ff port map ( regout=>p22(10), datain=>
      p22_4n0r2(10), clk=>i_clock);
   reg_p22_1 : stratixii_lcell_ff port map ( regout=>p22(1), datain=>
      p22_4n0r2(1), clk=>i_clock);
   reg_p22_0 : stratixii_lcell_ff port map ( regout=>p22(0), datain=>
      p22_4n0r3_0, clk=>i_clock);
   reg_p21_9 : stratixii_lcell_ff port map ( regout=>p21(9), datain=>
      p21_4n0r2(9), clk=>i_clock);
   reg_p21_8 : stratixii_lcell_ff port map ( regout=>p21(8), datain=>
      p21_4n0r2(8), clk=>i_clock);
   reg_p21_7 : stratixii_lcell_ff port map ( regout=>p21(7), datain=>
      p21_4n0r2(7), clk=>i_clock);
   reg_p21_6 : stratixii_lcell_ff port map ( regout=>p21(6), datain=>
      p21_4n0r2(6), clk=>i_clock);
   reg_p21_5 : stratixii_lcell_ff port map ( regout=>p21(5), datain=>
      p21_4n0r2(5), clk=>i_clock);
   reg_p21_4 : stratixii_lcell_ff port map ( regout=>p21(4), datain=>
      p21_4n0r2(4), clk=>i_clock);
   reg_p21_3 : stratixii_lcell_ff port map ( regout=>p21(3), datain=>
      p21_4n0r2(3), clk=>i_clock);
   reg_p21_2 : stratixii_lcell_ff port map ( regout=>p21(2), datain=>
      p21_4n0r2(2), clk=>i_clock);
   reg_p21_12 : stratixii_lcell_ff port map ( regout=>p21(12), datain=>
      p21_4n0r2(12), clk=>i_clock);
   reg_p21_11 : stratixii_lcell_ff port map ( regout=>p21(11), datain=>
      p21_4n0r2(11), clk=>i_clock);
   reg_p21_10 : stratixii_lcell_ff port map ( regout=>p21(10), datain=>
      p21_4n0r2(10), clk=>i_clock);
   reg_p21_1 : stratixii_lcell_ff port map ( regout=>p21(1), datain=>
      p21_4n0r2(1), clk=>i_clock);
   reg_p21_0 : stratixii_lcell_ff port map ( regout=>p21(0), datain=>
      p21_4n0r3_0, clk=>i_clock);
   reg_o_valid : stratixii_lcell_ff port map ( regout=>o_valid, datain=>
      state(3), clk=>i_clock, sclr=>i_reset);
   reg_max_fwd : stratixii_lcell_ff port map ( regout=>max_fwd, datain=>p45, 
      clk=>i_clock, ena=>nx60988z1, sclr=>nx60988z2);
   reg_max_dir_2 : stratixii_lcell_ff port map ( regout=>max_dir(2), datain
      =>nx25836z1, clk=>i_clock);
   reg_max_dir_1 : stratixii_lcell_ff port map ( regout=>max_dir(1), datain
      =>nx26833z1, clk=>i_clock);
   reg_max_dir_0 : stratixii_lcell_ff port map ( regout=>max_dir(0), datain
      =>nx27830z1, clk=>i_clock, ena=>nx27830z2);
   ix25836z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"7fbfdfeff7fbfdfe") 
       port map ( combout=>nx25836z12, dataa=>prev_max(0), datab=>
      prev_max(4), datac=>prev_max(5), datad=>p43(0), datae=>p43(4), dataf=>
      p43(5));
   ix25836z37215 : stratixii_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx25836z15, datac=>prev_max(8), datad=>
      prev_max(9), datae=>p43(8), dataf=>p43(9));
   ix25836z37214 : stratixii_lcell_comb
      generic map (lut_mask => X"cffffcffffcffffc") 
       port map ( combout=>nx25836z14, datab=>nx25836z15, datac=>
      prev_max(10), datad=>prev_max(11), datae=>p43(10), dataf=>p43(11));
   ix25836z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"0804020100000000") 
       port map ( combout=>nx25836z10, dataa=>prev_max(6), datab=>
      prev_max(7), datac=>max_fwd, datad=>p43(6), datae=>p43(7), dataf=>p45
   );
   ix26026z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ff000000") 
       port map ( combout=>nx26026z2, datad=>nx28128z1, datae=>p30, dataf=>
      p31(12));
   ix45188z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z5, datab=>nx45188z6, datac=>p22(5), datad
      =>p22(6), datae=>p21(5), dataf=>p21(6));
   ix25836z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z7, datab=>nx25836z8, datac=>prev_max(3), 
      datad=>prev_max(4), datae=>p43(3), dataf=>p43(4));
   ix25836z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z6, datab=>nx25836z7, datac=>prev_max(5), 
      datad=>prev_max(6), datae=>p43(5), dataf=>p43(6));
   ix25836z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z5, datab=>nx25836z6, datac=>prev_max(7), 
      datad=>prev_max(8), datae=>p43(7), dataf=>p43(8));
   ix25836z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z4, datab=>nx25836z5, datac=>prev_max(9), 
      datad=>prev_max(10), datae=>p43(9), dataf=>p43(10));
   ix45188z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z3, datab=>nx45188z4, datac=>p22(9), datad
      =>p22(10), datae=>p21(9), dataf=>p21(10));
   ix25836z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx25836z3, datab=>nx25836z4, datac=>prev_max(11), 
      datad=>prev_max(12), datae=>p43(11), dataf=>p43(12));
   ix45188z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"0080c0e0f0f8fcfe") 
       port map ( combout=>nx45188z7, dataa=>p22(0), datab=>p22(1), datac=>
      p22(2), datad=>p21(0), datae=>p21(1), dataf=>p21(2));
   ix45188z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z6, datab=>nx45188z7, datac=>p22(3), datad
      =>p22(4), datae=>p21(3), dataf=>p21(4));
   ix45188z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx45188z4, datab=>nx45188z5, datac=>p22(7), datad
      =>p22(8), datae=>p21(7), dataf=>p21(8));
   ix25836z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"7f3f1f0f07030100") 
       port map ( combout=>nx25836z8, dataa=>prev_max(0), datab=>prev_max(1), 
      datac=>prev_max(2), datad=>p43(0), datae=>p43(1), dataf=>p43(2));
   ix25836z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000c00000000000c") 
       port map ( combout=>nx25836z9, datab=>nx25836z10, datac=>nx25836z11, 
      datad=>nx25836z13, datae=>prev_max(1), dataf=>p43(1));
   ix25836z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"cffffcffffcffffc") 
       port map ( combout=>nx25836z11, datab=>nx25836z12, datac=>prev_max(2), 
      datad=>prev_max(3), datae=>p43(2), dataf=>p43(3));
   ix25836z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"cffffcffffcffffc") 
       port map ( combout=>nx25836z13, datab=>nx25836z14, datac=>
      prev_max(12), datad=>prev_max(13), datae=>p43(12), dataf=>p43(13));
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
   ix46185z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx46185z1, datad=>nx45188z2, datae=>p22(12), 
      dataf=>p21(12));
   ix26833z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"5757575702020200") 
       port map ( combout=>nx26833z1, dataa=>nx25836z2, datab=>state(0), 
      datac=>state(1), datad=>state(2), datae=>state(3), dataf=>max_dir(1));
   ix25836z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"7577757720222020") 
       port map ( combout=>nx25836z1, dataa=>nx25836z2, datab=>state(0), 
      datac=>state(1), datad=>state(2), datae=>state(3), dataf=>max_dir(2));
   ix29521z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx29521z1, datae=>state(3), dataf=>i_reset);
   ix60988z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffff0ffff") 
       port map ( combout=>nx60988z1, datac=>nx25836z2, datad=>state(3), 
      datae=>p40, dataf=>i_reset);
   ix29521z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx29521z2, datae=>p40, dataf=>i_reset);
   ix27830z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00000000ffff") 
       port map ( combout=>nx27830z1, datae=>state(0), dataf=>p45);
   ix30752z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>nx30752z1, datae=>nx25836z2, dataf=>state(3));
   ix60988z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffff00ffff") 
       port map ( combout=>nx60988z2, datad=>state(3), datae=>p40, dataf=>
      i_reset);
   ix26026z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"aaaaaaaaaaaaaa80") 
       port map ( combout=>nx26026z1, dataa=>nx26026z2, datab=>p4s(7), datac
      =>p4s(8), datad=>p4s(9), datae=>p4s(10), dataf=>p4s(11));
   ix45188z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"3f000300ff3fff03") 
       port map ( combout=>nx45188z2, datab=>nx45188z3, datac=>p22(11), 
      datad=>p22(12), datae=>p21(11), dataf=>p21(12));
   ix677_repl : stratixii_lcell_comb
      generic map (lut_mask => X"fff0ff00fffffff0") 
       port map ( combout=>nx27830z2, datac=>nx25836z3, datad=>nx25836z9, 
      datae=>prev_max(13), dataf=>p43(13));
   ix25836z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fff0ff00fffffff0") 
       port map ( combout=>nx25836z2, datac=>nx25836z3, datad=>nx25836z9, 
      datae=>prev_max(13), dataf=>p43(13));
   ix28128z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00000000ffff") 
       port map ( combout=>p4s(12), datae=>nx28128z1, dataf=>p31(12));
   ix29125z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffff0000ffff") 
       port map ( combout=>p4s(13), datae=>nx28128z1, dataf=>p31(12));
   ix15976z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>o_mode(0), datae=>p5m(0), dataf=>i_reset);
   ix16973z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>o_mode(1), datae=>p5m(1), dataf=>i_reset);
   ix63886z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>o_dir(0), datae=>max_dir(0), dataf=>
      o_edge_EXMPLR690(2));
   ix62889z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>o_dir(1), datae=>max_dir(1), dataf=>
      o_edge_EXMPLR690(2));
   ix61892z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>o_dir(2), datae=>max_dir(2), dataf=>
      o_edge_EXMPLR690(2));
   ix301_reg_p5m_1 : stratixii_lcell_ff port map ( regout=>p5m(1), datain=>
      nx7589z1, clk=>i_clock);
   ix301_reg_p5m_0 : stratixii_lcell_ff port map ( regout=>p5m(0), datain=>
      nx6592z1, clk=>i_clock);
   ix301_reg_p4m_1 : stratixii_lcell_ff port map ( regout=>nx7589z1, datain
      =>nx12724z1, clk=>i_clock);
   ix301_reg_p4m_0 : stratixii_lcell_ff port map ( regout=>nx6592z1, datain
      =>nx11727z1, clk=>i_clock);
   ix301_reg_p3m_1 : stratixii_lcell_ff port map ( regout=>nx12724z1, datain
      =>p_ix301_ix298_nx7_repl0, clk=>i_clock);
   ix301_reg_p3m_0 : stratixii_lcell_ff port map ( regout=>nx11727z1, datain
      =>p_ix301_ix299_nx7_repl0, clk=>i_clock);
   ix300_reg_p5r_7 : stratixii_lcell_ff port map ( regout=>o_row(7), datain
      =>nx32745z1, clk=>i_clock);
   ix300_reg_p5r_6 : stratixii_lcell_ff port map ( regout=>o_row(6), datain
      =>nx33742z1, clk=>i_clock);
   ix300_reg_p5r_5 : stratixii_lcell_ff port map ( regout=>o_row(5), datain
      =>nx34739z1, clk=>i_clock);
   ix300_reg_p5r_4 : stratixii_lcell_ff port map ( regout=>o_row(4), datain
      =>nx35736z1, clk=>i_clock);
   ix300_reg_p5r_3 : stratixii_lcell_ff port map ( regout=>o_row(3), datain
      =>nx36733z1, clk=>i_clock);
   ix300_reg_p5r_2 : stratixii_lcell_ff port map ( regout=>o_row(2), datain
      =>nx37730z1, clk=>i_clock);
   ix300_reg_p5r_1 : stratixii_lcell_ff port map ( regout=>o_row(1), datain
      =>nx38727z1, clk=>i_clock);
   ix300_reg_p5r_0 : stratixii_lcell_ff port map ( regout=>o_row(0), datain
      =>nx39724z1, clk=>i_clock);
   ix300_reg_p4r_7 : stratixii_lcell_ff port map ( regout=>nx32745z1, datain
      =>nx27610z1, clk=>i_clock);
   ix300_reg_p4r_6 : stratixii_lcell_ff port map ( regout=>nx33742z1, datain
      =>nx28607z1, clk=>i_clock);
   ix300_reg_p4r_5 : stratixii_lcell_ff port map ( regout=>nx34739z1, datain
      =>nx29604z1, clk=>i_clock);
   ix300_reg_p4r_4 : stratixii_lcell_ff port map ( regout=>nx35736z1, datain
      =>nx30601z1, clk=>i_clock);
   ix300_reg_p4r_3 : stratixii_lcell_ff port map ( regout=>nx36733z1, datain
      =>nx31598z1, clk=>i_clock);
   ix300_reg_p4r_2 : stratixii_lcell_ff port map ( regout=>nx37730z1, datain
      =>nx32595z1, clk=>i_clock);
   ix300_reg_p4r_1 : stratixii_lcell_ff port map ( regout=>nx38727z1, datain
      =>nx33592z1, clk=>i_clock);
   ix300_reg_p4r_0 : stratixii_lcell_ff port map ( regout=>nx39724z1, datain
      =>nx34589z1, clk=>i_clock);
   ix300_reg_p3r_7 : stratixii_lcell_ff port map ( regout=>nx27610z1, datain
      =>p_ix300_ix290_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_6 : stratixii_lcell_ff port map ( regout=>nx28607z1, datain
      =>p_ix300_ix291_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_5 : stratixii_lcell_ff port map ( regout=>nx29604z1, datain
      =>p_ix300_ix292_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_4 : stratixii_lcell_ff port map ( regout=>nx30601z1, datain
      =>p_ix300_ix293_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_3 : stratixii_lcell_ff port map ( regout=>nx31598z1, datain
      =>p_ix300_ix294_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_2 : stratixii_lcell_ff port map ( regout=>nx32595z1, datain
      =>p_ix300_ix295_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_1 : stratixii_lcell_ff port map ( regout=>nx33592z1, datain
      =>p_ix300_ix296_nx7_repl0, clk=>i_clock);
   ix300_reg_p3r_0 : stratixii_lcell_ff port map ( regout=>nx34589z1, datain
      =>p_ix300_ix297_nx7_repl0, clk=>i_clock);
end main ;

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
      p_rtlc2n120_repl : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal GND_EXMPLR715, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
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
   GND_EXMPLR715 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n120_repl);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx57253z3, datae=>sclear, dataf=>cnt_en);
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
      cin=>GND_EXMPLR715);
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
      p_rtlc2n120 : IN std_logic ;
      p_p_i_valid : IN std_logic ;
      p_rtlc2n264_repl : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal GND_EXMPLR717, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
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
   GND_EXMPLR717 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>p_rtlc2n264_repl);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0fff0fff0ff0000") 
       port map ( combout=>nx57253z3, datac=>p_rtlc2n120, datad=>p_p_i_valid, 
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
      cin=>GND_EXMPLR717);
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
   signal ena1_EXMPLR745: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR745, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR745 <= '1';
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
   signal ena1_EXMPLR775: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR775, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR775 <= '1';
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
   signal ena1_EXMPLR805: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR805, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR805 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity memory_notri is 
   port (
      p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
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
      p_o_valid : OUT std_logic ;
      p_o_column : OUT std_logic_vector (7 DOWNTO 0) ;
      p_debug_num_1 : OUT std_logic_vector (2 DOWNTO 0) ;
      p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      p_debug_valid_rtlc2_100_and_2 : OUT std_logic_vector (2 DOWNTO 2) ;
      p_i_valid_rtlc2_54_or_1 : IN std_logic_vector (2 DOWNTO 2) ;
      p_i_reset : IN std_logic ;
      p_debug_num_0 : OUT std_logic_vector (2 DOWNTO 0) ;
      p_debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      p_i_clock : IN std_logic ;
      p_debug_led_red_dup0_17 : IN std_logic ;
      p_rtlc13n197 : IN std_logic ;
      p_f_i_mode_next_1_repl0 : OUT std_logic ;
      p_f_i_mode_next_0_repl0 : OUT std_logic) ;
end memory_notri ;

architecture main of memory_notri is 
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
         p_rtlc2n120_repl : IN std_logic) ;
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
         p_rtlc2n120 : IN std_logic ;
         p_p_i_valid : IN std_logic ;
         p_rtlc2n264_repl : IN std_logic) ;
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
   signal p_o_image1_0_0_EXMPLR849, p_o_image1_0_1_EXMPLR850, 
      p_o_image1_0_2_EXMPLR851, p_o_image1_0_3_EXMPLR852, 
      p_o_image1_0_4_EXMPLR853, p_o_image1_0_5_EXMPLR854, 
      p_o_image1_0_6_EXMPLR855, p_o_image1_0_7_EXMPLR856, 
      p_o_image1_1_0_EXMPLR857, p_o_image1_1_1_EXMPLR858, 
      p_o_image1_1_2_EXMPLR859, p_o_image1_1_3_EXMPLR860, 
      p_o_image1_1_4_EXMPLR861, p_o_image1_1_5_EXMPLR862, 
      p_o_image1_1_6_EXMPLR863, p_o_image1_1_7_EXMPLR864, 
      p_o_image1_2_0_EXMPLR865: std_logic ;
   
   signal p_o_image1: std_logic_vector (2 DOWNTO 2) ;
   
   signal p_o_image1_2_2_EXMPLR867, p_o_image1_2_3_EXMPLR868, 
      p_o_image1_2_4_EXMPLR869, p_o_image1_2_5_EXMPLR870, 
      p_o_image1_2_6_EXMPLR871, p_o_image1_2_7_EXMPLR872, 
      p_o_image2_0_0_EXMPLR873, p_o_image2_0_1_EXMPLR874, 
      p_o_image2_0_2_EXMPLR875, p_o_image2_0_3_EXMPLR876, 
      p_o_image2_0_4_EXMPLR877, p_o_image2_0_5_EXMPLR878, 
      p_o_image2_0_6_EXMPLR879, p_o_image2_0_7_EXMPLR880, 
      p_o_image2_1_0_EXMPLR881, p_o_image2_1_1_EXMPLR882, 
      p_o_image2_1_2_EXMPLR883, p_o_image2_1_3_EXMPLR884, 
      p_o_image2_1_4_EXMPLR885, p_o_image2_1_5_EXMPLR886, 
      p_o_image2_1_6_EXMPLR887, p_o_image2_1_7_EXMPLR888, 
      p_o_image2_2_0_EXMPLR889, p_o_image2_2_1_EXMPLR890, 
      p_o_image2_2_2_EXMPLR891, p_o_image2_2_3_EXMPLR892, 
      p_o_image2_2_4_EXMPLR893, p_o_image2_2_5_EXMPLR894, 
      p_o_image2_2_6_EXMPLR895, p_o_image2_2_7_EXMPLR896, 
      p_o_valid_EXMPLR897: std_logic ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal p_debug_num_1_2_EXMPLR898, p_debug_num_1_1_EXMPLR899, 
      p_debug_num_1_0_EXMPLR900, p_debug_valid_EXMPLR901, busySignalDelayed, 
      busySignal, mem_q_2_0, mem_q_2_1, mem_q_2_2, mem_q_2_3, mem_q_2_4, 
      mem_q_2_5, mem_q_2_6, mem_q_2_7, p_debug_num_0_2_EXMPLR904, mem_q_1_0, 
      mem_q_1_1, mem_q_1_2, mem_q_1_3, mem_q_1_4, mem_q_1_5, mem_q_1_6, 
      mem_q_1_7, p_debug_num_0_1_EXMPLR905, mem_q_0_0, mem_q_0_1, mem_q_0_2, 
      mem_q_0_3, mem_q_0_4, mem_q_0_5, mem_q_0_6, mem_q_0_7, 
      p_debug_num_0_0_EXMPLR906: std_logic ;
   
   signal p_debug_num_2_EXMPLR928: std_logic_vector (7 DOWNTO 0) ;
   
   signal p_o_column_0_EXMPLR916: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal nx60567z1, nx33254z1, nx15763z1, nx16760z1, nx17757z1, nx50245z1, 
      p_o_mode_1_EXMPLR923, not_rtlc2_X_0_n244, nx47386z1, nx8852z1, 
      p_o_mode_0_EXMPLR924, nx40106z2, nx62359z1, nx61362z1, nx60365z1, 
      nx59368z1, nx58371z1, nx57374z1, nx56377z1, nx55380z1, nx63578z1, 
      nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, nx4024z1, nx5021z1, 
      nx41103z1, nx40106z1, nx39109z1, nx60567z3, nx5021z2, nx8852z4, 
      nx60567z2, nx47289z1, nx5021z3, nx8852z3, nx8852z2, nx8852z5, 
      p_debug_valid_repl, nx47386z2, nx8852z6: std_logic ;
   
   signal DANGLING : std_logic_vector (40 downto 0 );

begin
   p_o_image1_9_7(1) <= p_o_image1_0_0_EXMPLR849 ;
   p_o_image1_9_1(0) <= p_o_image1_0_1_EXMPLR850 ;
   p_o_image1_9_2(0) <= p_o_image1_0_2_EXMPLR851 ;
   p_o_image1_9_3(0) <= p_o_image1_0_3_EXMPLR852 ;
   p_o_image1_9_4(0) <= p_o_image1_0_4_EXMPLR853 ;
   p_o_image1_9_5(0) <= p_o_image1_0_5_EXMPLR854 ;
   p_o_image1_9_6(0) <= p_o_image1_0_6_EXMPLR855 ;
   p_o_image1_9_7(0) <= p_o_image1_0_7_EXMPLR856 ;
   p_o_image1_8_7(1) <= p_o_image1_1_0_EXMPLR857 ;
   p_o_image1_8_1(1) <= p_o_image1_1_1_EXMPLR858 ;
   p_o_image1_8_2(1) <= p_o_image1_1_2_EXMPLR859 ;
   p_o_image1_8_3(1) <= p_o_image1_1_3_EXMPLR860 ;
   p_o_image1_8_4(1) <= p_o_image1_1_4_EXMPLR861 ;
   p_o_image1_8_5(1) <= p_o_image1_1_5_EXMPLR862 ;
   p_o_image1_8_6(1) <= p_o_image1_1_6_EXMPLR863 ;
   p_o_image1_8_7(0) <= p_o_image1_1_7_EXMPLR864 ;
   p_o_image1_7(2) <= p_o_image1_2_0_EXMPLR865 ;
   p_o_image1_1(2) <= p_o_image1(2) ;
   p_o_image1_2(2) <= p_o_image1_2_2_EXMPLR867 ;
   p_o_image1_3(2) <= p_o_image1_2_3_EXMPLR868 ;
   p_o_image1_4(2) <= p_o_image1_2_4_EXMPLR869 ;
   p_o_image1_5(2) <= p_o_image1_2_5_EXMPLR870 ;
   p_o_image1_6(2) <= p_o_image1_2_6_EXMPLR871 ;
   p_o_image1_7(1) <= p_o_image1_2_7_EXMPLR872 ;
   p_o_image2_9_7(1) <= p_o_image2_0_0_EXMPLR873 ;
   p_o_image2_9_1(0) <= p_o_image2_0_1_EXMPLR874 ;
   p_o_image2_9_2(0) <= p_o_image2_0_2_EXMPLR875 ;
   p_o_image2_9_3(0) <= p_o_image2_0_3_EXMPLR876 ;
   p_o_image2_9_4(0) <= p_o_image2_0_4_EXMPLR877 ;
   p_o_image2_9_5(0) <= p_o_image2_0_5_EXMPLR878 ;
   p_o_image2_9_6(0) <= p_o_image2_0_6_EXMPLR879 ;
   p_o_image2_9_7(0) <= p_o_image2_0_7_EXMPLR880 ;
   p_o_image2_8_7(1) <= p_o_image2_1_0_EXMPLR881 ;
   p_o_image2_8_1(1) <= p_o_image2_1_1_EXMPLR882 ;
   p_o_image2_8_2(1) <= p_o_image2_1_2_EXMPLR883 ;
   p_o_image2_8_3(1) <= p_o_image2_1_3_EXMPLR884 ;
   p_o_image2_8_4(1) <= p_o_image2_1_4_EXMPLR885 ;
   p_o_image2_8_5(1) <= p_o_image2_1_5_EXMPLR886 ;
   p_o_image2_8_6(1) <= p_o_image2_1_6_EXMPLR887 ;
   p_o_image2_8_7(0) <= p_o_image2_1_7_EXMPLR888 ;
   p_o_image2_7(2) <= p_o_image2_2_0_EXMPLR889 ;
   p_o_image2_1(2) <= p_o_image2_2_1_EXMPLR890 ;
   p_o_image2_2(2) <= p_o_image2_2_2_EXMPLR891 ;
   p_o_image2_3(2) <= p_o_image2_2_3_EXMPLR892 ;
   p_o_image2_4(2) <= p_o_image2_2_4_EXMPLR893 ;
   p_o_image2_5(2) <= p_o_image2_2_5_EXMPLR894 ;
   p_o_image2_6(2) <= p_o_image2_2_6_EXMPLR895 ;
   p_o_image2_7(1) <= p_o_image2_2_7_EXMPLR896 ;
   p_o_valid <= p_o_valid_EXMPLR897 ;
   p_debug_num_1(2) <= p_debug_num_1_2_EXMPLR898 ;
   p_o_mode(1) <= p_o_mode_1_EXMPLR923 ;
   p_debug_num_1(1) <= p_debug_num_1_1_EXMPLR899 ;
   p_debug_num_1(0) <= p_debug_num_1_0_EXMPLR900 ;
   p_debug_valid_rtlc2_100_and_2(2) <= p_debug_valid_EXMPLR901 ;
   p_o_mode(0) <= p_o_mode_0_EXMPLR924 ;
   p_debug_num_0(2) <= p_debug_num_0_2_EXMPLR904 ;
   p_debug_num_0(1) <= p_debug_num_0_1_EXMPLR905 ;
   p_debug_num_0(0) <= p_debug_num_0_0_EXMPLR906 ;
   p_debug_num_2(0) <= p_debug_num_2_EXMPLR928(0) ;
   p_debug_num_2(1) <= p_debug_num_2_EXMPLR928(1) ;
   p_debug_num_2(2) <= p_debug_num_2_EXMPLR928(2) ;
   p_debug_num_2(3) <= p_debug_num_2_EXMPLR928(3) ;
   p_debug_num_2(4) <= p_debug_num_2_EXMPLR928(4) ;
   p_debug_num_2(5) <= p_debug_num_2_EXMPLR928(5) ;
   p_debug_num_2(6) <= p_debug_num_2_EXMPLR928(6) ;
   p_debug_num_2(7) <= p_debug_num_2_EXMPLR928(7) ;
   p_o_column(0) <= p_o_column_0_EXMPLR916 ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>p_i_clock, q(7)
      =>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), q(2)
      =>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx8852z1, updn=>DANGLING(12), 
      cnt_en=>not_rtlc2_X_0_n244, p_rtlc2n120_repl=>nx8852z6);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>p_i_clock, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>
      p_o_column_0_EXMPLR916, clk_en=>DANGLING(13), aclear=>DANGLING(14), 
      sload=>DANGLING(15), data(7)=>DANGLING(16), data(6)=>DANGLING(17), 
      data(5)=>DANGLING(18), data(4)=>DANGLING(19), data(3)=>DANGLING(20), 
      data(2)=>DANGLING(21), data(1)=>DANGLING(22), data(0)=>DANGLING(23), 
      aset=>DANGLING(24), sclear=>nx47386z1, updn=>DANGLING(25), cnt_en=>
      p_debug_valid_EXMPLR901, p_rtlc2n120=>nx8852z1, p_p_i_valid=>
      p_i_valid_rtlc2_54_or_1(2), p_rtlc2n264_repl=>nx47386z2);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>
      p_debug_num_2_EXMPLR928(7), wr_data1(6)=>p_debug_num_2_EXMPLR928(6), 
      wr_data1(5)=>p_debug_num_2_EXMPLR928(5), wr_data1(4)=>
      p_debug_num_2_EXMPLR928(4), wr_data1(3)=>p_debug_num_2_EXMPLR928(3), 
      wr_data1(2)=>p_debug_num_2_EXMPLR928(2), wr_data1(1)=>
      p_debug_num_2_EXMPLR928(1), wr_data1(0)=>p_debug_num_2_EXMPLR928(0), 
      rd_data1(7)=>mem_q_0_7, rd_data1(6)=>mem_q_0_6, rd_data1(5)=>mem_q_0_5, 
      rd_data1(4)=>mem_q_0_4, rd_data1(3)=>mem_q_0_3, rd_data1(2)=>mem_q_0_2, 
      rd_data1(1)=>mem_q_0_1, rd_data1(0)=>mem_q_0_0, addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>p_o_column_0_EXMPLR916, wr_clk1=>p_i_clock, rd_clk1=>
      DANGLING(26), wr_ena1=>p_debug_num_0_0_EXMPLR906, rd_ena1=>DANGLING(27
      ), ena1=>DANGLING(28), rst1=>DANGLING(29), regce1=>DANGLING(30));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1(7)=>
      p_debug_num_2_EXMPLR928(7), wr_data1(6)=>p_debug_num_2_EXMPLR928(6), 
      wr_data1(5)=>p_debug_num_2_EXMPLR928(5), wr_data1(4)=>
      p_debug_num_2_EXMPLR928(4), wr_data1(3)=>p_debug_num_2_EXMPLR928(3), 
      wr_data1(2)=>p_debug_num_2_EXMPLR928(2), wr_data1(1)=>
      p_debug_num_2_EXMPLR928(1), wr_data1(0)=>p_debug_num_2_EXMPLR928(0), 
      rd_data1(7)=>mem_q_1_7, rd_data1(6)=>mem_q_1_6, rd_data1(5)=>mem_q_1_5, 
      rd_data1(4)=>mem_q_1_4, rd_data1(3)=>mem_q_1_3, rd_data1(2)=>mem_q_1_2, 
      rd_data1(1)=>mem_q_1_1, rd_data1(0)=>mem_q_1_0, addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>p_o_column_0_EXMPLR916, wr_clk1=>p_i_clock, rd_clk1=>
      DANGLING(31), wr_ena1=>p_debug_num_0_1_EXMPLR905, rd_ena1=>DANGLING(32
      ), ena1=>DANGLING(33), rst1=>DANGLING(34), regce1=>DANGLING(35));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1(7)=>
      p_debug_num_2_EXMPLR928(7), wr_data1(6)=>p_debug_num_2_EXMPLR928(6), 
      wr_data1(5)=>p_debug_num_2_EXMPLR928(5), wr_data1(4)=>
      p_debug_num_2_EXMPLR928(4), wr_data1(3)=>p_debug_num_2_EXMPLR928(3), 
      wr_data1(2)=>p_debug_num_2_EXMPLR928(2), wr_data1(1)=>
      p_debug_num_2_EXMPLR928(1), wr_data1(0)=>p_debug_num_2_EXMPLR928(0), 
      rd_data1(7)=>mem_q_2_7, rd_data1(6)=>mem_q_2_6, rd_data1(5)=>mem_q_2_5, 
      rd_data1(4)=>mem_q_2_4, rd_data1(3)=>mem_q_2_3, rd_data1(2)=>mem_q_2_2, 
      rd_data1(1)=>mem_q_2_1, rd_data1(0)=>mem_q_2_0, addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>p_o_column_0_EXMPLR916, wr_clk1=>p_i_clock, rd_clk1=>
      DANGLING(36), wr_ena1=>p_debug_num_0_2_EXMPLR904, rd_ena1=>DANGLING(37
      ), ena1=>DANGLING(38), rst1=>DANGLING(39), regce1=>DANGLING(40));
   p_o_mode_1_EXMPLR923 <= NOT p_i_reset;
   p_o_column(1) <= NOT column(1);
   reg_o_valid : stratixii_lcell_ff port map ( regout=>p_o_valid_EXMPLR897, 
      datain=>nx60567z1, clk=>p_i_clock);
   reg_o_row_7 : stratixii_lcell_ff port map ( regout=>p_o_row(7), datain=>
      row(7), clk=>p_i_clock);
   reg_o_row_6 : stratixii_lcell_ff port map ( regout=>p_o_row(6), datain=>
      row(6), clk=>p_i_clock);
   reg_o_row_5 : stratixii_lcell_ff port map ( regout=>p_o_row(5), datain=>
      row(5), clk=>p_i_clock);
   reg_o_row_4 : stratixii_lcell_ff port map ( regout=>p_o_row(4), datain=>
      row(4), clk=>p_i_clock);
   reg_o_row_3 : stratixii_lcell_ff port map ( regout=>p_o_row(3), datain=>
      row(3), clk=>p_i_clock);
   reg_o_row_2 : stratixii_lcell_ff port map ( regout=>p_o_row(2), datain=>
      row(2), clk=>p_i_clock);
   reg_o_row_1 : stratixii_lcell_ff port map ( regout=>p_o_row(1), datain=>
      row(1), clk=>p_i_clock);
   reg_o_row_0 : stratixii_lcell_ff port map ( regout=>p_o_row(0), datain=>
      row(0), clk=>p_i_clock);
   reg_mem_wrn_current_2 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_1_2_EXMPLR898, datain=>nx41103z1, clk=>p_i_clock, ena=>
      nx40106z2);
   reg_mem_wrn_current_1 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_1_1_EXMPLR899, datain=>nx40106z1, clk=>p_i_clock, ena=>
      nx40106z2);
   reg_mem_wrn_current_0 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_1_0_EXMPLR900, datain=>nx39109z1, clk=>p_i_clock, ena=>
      nx40106z2);
   reg_mem_wrn_2 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_0_2_EXMPLR904, datain=>nx17757z1, clk=>p_i_clock);
   reg_mem_wrn_1 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_0_1_EXMPLR905, datain=>nx16760z1, clk=>p_i_clock);
   reg_mem_wrn_0 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_0_0_EXMPLR906, datain=>nx15763z1, clk=>p_i_clock);
   reg_mem_data_7 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(7), datain=>p_i_pixel(7), clk=>p_i_clock);
   reg_mem_data_6 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(6), datain=>p_i_pixel(6), clk=>p_i_clock);
   reg_mem_data_5 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(5), datain=>p_i_pixel(5), clk=>p_i_clock);
   reg_mem_data_4 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(4), datain=>p_i_pixel(4), clk=>p_i_clock);
   reg_mem_data_3 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(3), datain=>p_i_pixel(3), clk=>p_i_clock);
   reg_mem_data_2 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(2), datain=>p_i_pixel(2), clk=>p_i_clock);
   reg_mem_data_1 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(1), datain=>p_i_pixel(1), clk=>p_i_clock);
   reg_mem_data_0 : stratixii_lcell_ff port map ( regout=>
      p_debug_num_2_EXMPLR928(0), datain=>p_i_pixel(0), clk=>p_i_clock);
   reg_first_bubble_repl : stratixii_lcell_ff port map ( regout=>
      p_debug_valid_repl, datain=>p_i_valid_rtlc2_54_or_1(2), clk=>p_i_clock
   );
   reg_first_bubble : stratixii_lcell_ff port map ( regout=>
      p_debug_valid_EXMPLR901, datain=>p_i_valid_rtlc2_54_or_1(2), clk=>
      p_i_clock);
   reg_f_i_mode_next_1 : stratixii_lcell_ff port map ( regout=>
      p_f_i_mode_next_1_repl0, datain=>p_o_mode_1_EXMPLR923, clk=>p_i_clock, 
      ena=>p_rtlc13n197);
   reg_f_i_mode_next_0 : stratixii_lcell_ff port map ( regout=>
      p_f_i_mode_next_0_repl0, datain=>p_o_mode_0_EXMPLR924, clk=>p_i_clock, 
      ena=>p_rtlc13n197);
   reg_busySignalDelayed : stratixii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>p_i_clock);
   reg_busySignal : stratixii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>p_i_clock);
   reg_buffer2_2_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_7_EXMPLR896, datain=>mem_q_2_7, adatasdata=>
      p_debug_num_2_EXMPLR928(7), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_6_EXMPLR895, datain=>mem_q_2_6, adatasdata=>
      p_debug_num_2_EXMPLR928(6), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_5_EXMPLR894, datain=>mem_q_2_5, adatasdata=>
      p_debug_num_2_EXMPLR928(5), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_4_EXMPLR893, datain=>mem_q_2_4, adatasdata=>
      p_debug_num_2_EXMPLR928(4), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_3_EXMPLR892, datain=>mem_q_2_3, adatasdata=>
      p_debug_num_2_EXMPLR928(3), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_2_EXMPLR891, datain=>mem_q_2_2, adatasdata=>
      p_debug_num_2_EXMPLR928(2), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_1_EXMPLR890, datain=>mem_q_2_1, adatasdata=>
      p_debug_num_2_EXMPLR928(1), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_2_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_2_0_EXMPLR889, datain=>mem_q_2_0, adatasdata=>
      p_debug_num_2_EXMPLR928(0), clk=>p_i_clock, ena=>p_debug_valid_repl, 
      sload=>nx50245z1);
   reg_buffer2_1_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_7_EXMPLR888, datain=>nx62359z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_6_EXMPLR887, datain=>nx61362z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_5_EXMPLR886, datain=>nx60365z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_4_EXMPLR885, datain=>nx59368z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_3_EXMPLR884, datain=>nx58371z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_2_EXMPLR883, datain=>nx57374z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_1_EXMPLR882, datain=>nx56377z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_1_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_1_0_EXMPLR881, datain=>nx55380z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_7_EXMPLR880, datain=>nx63578z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_6_EXMPLR879, datain=>nx64575z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_5_EXMPLR878, datain=>nx36z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_4_EXMPLR877, datain=>nx1033z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_3_EXMPLR876, datain=>nx2030z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_2_EXMPLR875, datain=>nx3027z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_1_EXMPLR874, datain=>nx4024z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer2_0_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image2_0_0_EXMPLR873, datain=>nx5021z1, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer1_2_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_7_EXMPLR872, datain=>p_o_image2_2_7_EXMPLR896, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_2_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_6_EXMPLR871, datain=>p_o_image2_2_6_EXMPLR895, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_2_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_5_EXMPLR870, datain=>p_o_image2_2_5_EXMPLR894, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_2_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_4_EXMPLR869, datain=>p_o_image2_2_4_EXMPLR893, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_2_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_3_EXMPLR868, datain=>p_o_image2_2_3_EXMPLR892, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_2_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_2_EXMPLR867, datain=>p_o_image2_2_2_EXMPLR891, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_2_1 : stratixii_lcell_ff port map ( regout=>p_o_image1(2), 
      datain=>p_o_image2_2_1_EXMPLR890, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer1_2_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_2_0_EXMPLR865, datain=>p_o_image2_2_0_EXMPLR889, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_7_EXMPLR864, datain=>p_o_image2_1_7_EXMPLR888, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_6_EXMPLR863, datain=>p_o_image2_1_6_EXMPLR887, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_5_EXMPLR862, datain=>p_o_image2_1_5_EXMPLR886, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_4_EXMPLR861, datain=>p_o_image2_1_4_EXMPLR885, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_3_EXMPLR860, datain=>p_o_image2_1_3_EXMPLR884, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_2_EXMPLR859, datain=>p_o_image2_1_2_EXMPLR883, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_1_EXMPLR858, datain=>p_o_image2_1_1_EXMPLR882, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_1_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_1_0_EXMPLR857, datain=>p_o_image2_1_0_EXMPLR881, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_7 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_7_EXMPLR856, datain=>p_o_image2_0_7_EXMPLR880, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_6 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_6_EXMPLR855, datain=>p_o_image2_0_6_EXMPLR879, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_5 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_5_EXMPLR854, datain=>p_o_image2_0_5_EXMPLR878, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_4 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_4_EXMPLR853, datain=>p_o_image2_0_4_EXMPLR877, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_3 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_3_EXMPLR852, datain=>p_o_image2_0_3_EXMPLR876, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_2 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_2_EXMPLR851, datain=>p_o_image2_0_2_EXMPLR875, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_1 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_1_EXMPLR850, datain=>p_o_image2_0_1_EXMPLR874, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer1_0_0 : stratixii_lcell_ff port map ( regout=>
      p_o_image1_0_0_EXMPLR849, datain=>p_o_image2_0_0_EXMPLR873, clk=>
      p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer0_2_7 : stratixii_lcell_ff port map ( regout=>p_o_image0_7(1), 
      datain=>p_o_image1_2_7_EXMPLR872, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_2_6 : stratixii_lcell_ff port map ( regout=>p_o_image0_6(2), 
      datain=>p_o_image1_2_6_EXMPLR871, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_2_5 : stratixii_lcell_ff port map ( regout=>p_o_image0_5(2), 
      datain=>p_o_image1_2_5_EXMPLR870, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_2_4 : stratixii_lcell_ff port map ( regout=>p_o_image0_4(2), 
      datain=>p_o_image1_2_4_EXMPLR869, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_2_3 : stratixii_lcell_ff port map ( regout=>p_o_image0_3(2), 
      datain=>p_o_image1_2_3_EXMPLR868, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_2_2 : stratixii_lcell_ff port map ( regout=>p_o_image0_2(2), 
      datain=>p_o_image1_2_2_EXMPLR867, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_2_1 : stratixii_lcell_ff port map ( regout=>p_o_image0_1(2), 
      datain=>p_o_image1(2), clk=>p_i_clock, ena=>p_debug_valid_repl);
   reg_buffer0_2_0 : stratixii_lcell_ff port map ( regout=>p_o_image0_7(2), 
      datain=>p_o_image1_2_0_EXMPLR865, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_7 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_7(0), 
      datain=>p_o_image1_1_7_EXMPLR864, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_6 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_6(1), 
      datain=>p_o_image1_1_6_EXMPLR863, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_5 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_5(1), 
      datain=>p_o_image1_1_5_EXMPLR862, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_4 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_4(1), 
      datain=>p_o_image1_1_4_EXMPLR861, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_3 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_3(1), 
      datain=>p_o_image1_1_3_EXMPLR860, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_2 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_2(1), 
      datain=>p_o_image1_1_2_EXMPLR859, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_1 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_1(1), 
      datain=>p_o_image1_1_1_EXMPLR858, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_1_0 : stratixii_lcell_ff port map ( regout=>p_o_image0_8_7(1), 
      datain=>p_o_image1_1_0_EXMPLR857, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_7 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_7(0), 
      datain=>p_o_image1_0_7_EXMPLR856, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_6 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_6(0), 
      datain=>p_o_image1_0_6_EXMPLR855, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_5 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_5(0), 
      datain=>p_o_image1_0_5_EXMPLR854, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_4 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_4(0), 
      datain=>p_o_image1_0_4_EXMPLR853, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_3 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_3(0), 
      datain=>p_o_image1_0_3_EXMPLR852, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_2 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_2(0), 
      datain=>p_o_image1_0_2_EXMPLR851, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_1 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_1(0), 
      datain=>p_o_image1_0_1_EXMPLR850, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   reg_buffer0_0_0 : stratixii_lcell_ff port map ( regout=>p_o_image0_9_7(1), 
      datain=>p_o_image1_0_0_EXMPLR849, clk=>p_i_clock, ena=>
      p_debug_valid_repl);
   ix8852z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"c000000000000000") 
       port map ( combout=>nx8852z5, datab=>column(7), datac=>column(2), 
      datad=>column(1), datae=>p_o_column_0_EXMPLR916, dataf=>
      p_debug_valid_EXMPLR901);
   ix8852z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx8852z2, datac=>row(1), datad=>row(2), datae=>
      row(3), dataf=>row(4));
   ix8852z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"f000000000000000") 
       port map ( combout=>nx8852z3, datac=>row(5), datad=>row(6), datae=>
      row(7), dataf=>row(0));
   ix5021z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000000000000f") 
       port map ( combout=>nx5021z3, datac=>row(4), datad=>row(5), datae=>
      row(6), dataf=>row(7));
   ix47289z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000000000000f") 
       port map ( combout=>nx47289z1, datac=>column(4), datad=>column(3), 
      datae=>column(2), dataf=>column(1));
   ix60567z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffffe") 
       port map ( combout=>nx60567z2, dataa=>nx60567z3, datab=>column(7), 
      datac=>column(6), datad=>column(5), datae=>column(4), dataf=>column(3)
   );
   ix8852z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000000000000000") 
       port map ( combout=>nx8852z4, datab=>nx8852z5, datac=>column(6), 
      datad=>column(5), datae=>column(4), dataf=>column(3));
   ix5021z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000000000f0") 
       port map ( combout=>nx5021z2, datac=>nx5021z3, datad=>row(1), datae=>
      row(2), dataf=>row(3));
   ix60567z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx60567z3, datae=>column(2), dataf=>column(1));
   ix39109z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff0000ff00") 
       port map ( combout=>nx39109z1, datad=>p_i_valid_rtlc2_54_or_1(2), 
      datae=>nx8852z1, dataf=>p_debug_num_1_2_EXMPLR898);
   ix40106z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00000000") 
       port map ( combout=>nx40106z1, datad=>p_i_valid_rtlc2_54_or_1(2), 
      datae=>nx8852z1, dataf=>p_debug_num_1_0_EXMPLR900);
   ix41103z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00000000") 
       port map ( combout=>nx41103z1, datad=>p_i_valid_rtlc2_54_or_1(2), 
      datae=>nx8852z1, dataf=>p_debug_num_1_1_EXMPLR899);
   ix5021z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx5021z1, dataa=>p_debug_num_1_0_EXMPLR900, datab
      =>mem_q_0_0, datac=>mem_q_1_0, datad=>p_debug_num_2_EXMPLR928(0), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_0);
   ix4024z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx4024z1, dataa=>p_debug_num_1_0_EXMPLR900, datab
      =>mem_q_0_1, datac=>mem_q_1_1, datad=>p_debug_num_2_EXMPLR928(1), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_1);
   ix3027z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx3027z1, dataa=>p_debug_num_1_0_EXMPLR900, datab
      =>mem_q_0_2, datac=>mem_q_1_2, datad=>p_debug_num_2_EXMPLR928(2), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_2);
   ix2030z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx2030z1, dataa=>p_debug_num_1_0_EXMPLR900, datab
      =>mem_q_0_3, datac=>mem_q_1_3, datad=>p_debug_num_2_EXMPLR928(3), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_3);
   ix1033z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx1033z1, dataa=>p_debug_num_1_0_EXMPLR900, datab
      =>mem_q_0_4, datac=>mem_q_1_4, datad=>p_debug_num_2_EXMPLR928(4), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_4);
   ix36z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx36z1, dataa=>p_debug_num_1_0_EXMPLR900, datab=>
      mem_q_0_5, datac=>mem_q_1_5, datad=>p_debug_num_2_EXMPLR928(5), datae
      =>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_5);
   ix64575z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx64575z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_0_6, datac=>mem_q_1_6, datad=>p_debug_num_2_EXMPLR928(6), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_6);
   ix63578z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ee44ee44f0f0e4e4",
         extended_lut => "on") 
       port map ( combout=>nx63578z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_0_7, datac=>mem_q_1_7, datad=>p_debug_num_2_EXMPLR928(7), 
      datae=>p_debug_num_1_1_EXMPLR899, dataf=>nx5021z2, datag=>mem_q_2_7);
   ix55380z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx55380z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_0, datac=>mem_q_1_0, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_0, datag=>
      p_debug_num_2_EXMPLR928(0));
   ix56377z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx56377z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_1, datac=>mem_q_1_1, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_1, datag=>
      p_debug_num_2_EXMPLR928(1));
   ix57374z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx57374z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_2, datac=>mem_q_1_2, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_2, datag=>
      p_debug_num_2_EXMPLR928(2));
   ix58371z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx58371z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_3, datac=>mem_q_1_3, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_3, datag=>
      p_debug_num_2_EXMPLR928(3));
   ix59368z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx59368z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_4, datac=>mem_q_1_4, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_4, datag=>
      p_debug_num_2_EXMPLR928(4));
   ix60365z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx60365z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_5, datac=>mem_q_1_5, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_5, datag=>
      p_debug_num_2_EXMPLR928(5));
   ix61362z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx61362z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_6, datac=>mem_q_1_6, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_6, datag=>
      p_debug_num_2_EXMPLR928(6));
   ix62359z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0ddf0d8f088f0d8",
         extended_lut => "on") 
       port map ( combout=>nx62359z1, dataa=>p_debug_num_1_0_EXMPLR900, 
      datab=>mem_q_2_7, datac=>mem_q_1_7, datad=>nx5021z2, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>mem_q_0_7, datag=>
      p_debug_num_2_EXMPLR928(7));
   ix40106z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fcfcfcfcfcfcfcfe") 
       port map ( combout=>nx40106z2, dataa=>p_i_valid_rtlc2_54_or_1(2), 
      datab=>nx8852z1, datac=>not_rtlc2_X_0_n244, datad=>
      p_debug_num_1_0_EXMPLR900, datae=>p_debug_num_1_1_EXMPLR899, dataf=>
      p_debug_num_1_2_EXMPLR898);
   ix64269z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>p_o_mode_0_EXMPLR924, datac=>p_i_reset, datad=>
      busySignal, datae=>busySignalDelayed, dataf=>
      p_i_valid_rtlc2_54_or_1(2));
   ix165_repl : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffff0000000") 
       port map ( combout=>nx8852z6, datac=>nx8852z2, datad=>nx8852z3, datae
      =>nx8852z4, dataf=>p_i_reset);
   ix8852z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffff0000000") 
       port map ( combout=>nx8852z1, datac=>nx8852z2, datad=>nx8852z3, datae
      =>nx8852z4, dataf=>p_i_reset);
   ix163_repl : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z2, datae=>nx8852z4, dataf=>p_i_reset);
   ix47386z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx47386z1, datae=>nx8852z4, dataf=>p_i_reset);
   ix8852z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000080000000") 
       port map ( combout=>not_rtlc2_X_0_n244, dataa=>nx8852z5, datab=>
      column(6), datac=>column(5), datad=>column(4), datae=>column(3), dataf
      =>p_i_valid_rtlc2_54_or_1(2));
   ix50245z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffff0000ffff") 
       port map ( combout=>nx50245z1, datae=>nx5021z2, dataf=>
      p_debug_num_1_2_EXMPLR898);
   ix47289z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ff000ff0") 
       port map ( combout=>p_o_column(7), datac=>nx47289z1, datad=>column(7), 
      datae=>column(6), dataf=>column(5));
   ix48286z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"aaaaaaaaaaaaaaa9") 
       port map ( combout=>p_o_column(6), dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>column(3), datae=>column(2), dataf=>column(1)
   );
   ix49283z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ccccccccccccccc3") 
       port map ( combout=>p_o_column(5), datab=>column(5), datac=>column(4), 
      datad=>column(3), datae=>column(2), dataf=>column(1));
   ix50280z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0f0f0f0f0f0f00f") 
       port map ( combout=>p_o_column(4), datac=>column(4), datad=>column(3), 
      datae=>column(2), dataf=>column(1));
   ix51277z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ff0000ff") 
       port map ( combout=>p_o_column(3), datad=>column(3), datae=>column(2), 
      dataf=>column(1));
   ix52274z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00000000ffff") 
       port map ( combout=>p_o_column(2), datae=>column(2), dataf=>column(1)
   );
   ix17757z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ff0000000000") 
       port map ( combout=>nx17757z1, datad=>p_i_valid_rtlc2_54_or_1(2), 
      datae=>nx8852z1, dataf=>p_debug_num_1_2_EXMPLR898);
   ix16760z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ff0000000000") 
       port map ( combout=>nx16760z1, datad=>p_i_valid_rtlc2_54_or_1(2), 
      datae=>nx8852z1, dataf=>p_debug_num_1_1_EXMPLR899);
   ix15763z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0c000c000c000c0c") 
       port map ( combout=>nx15763z1, datab=>p_i_valid_rtlc2_54_or_1(2), 
      datac=>nx8852z1, datad=>p_debug_num_1_0_EXMPLR900, datae=>
      p_debug_num_1_1_EXMPLR899, dataf=>p_debug_num_1_2_EXMPLR898);
   ix33254z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"3fff3fff3fff0000") 
       port map ( combout=>nx33254z1, datab=>nx8852z2, datac=>nx8852z3, 
      datad=>nx8852z4, datae=>busySignal, dataf=>p_i_valid_rtlc2_54_or_1(2)
   );
   ix60567z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000f00000") 
       port map ( combout=>nx60567z1, datac=>nx60567z2, datad=>nx5021z2, 
      datae=>p_debug_valid_EXMPLR901, dataf=>p_o_valid_EXMPLR897);
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
      debug_column : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (2 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (2 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (13 DOWNTO 0) ;
      debug_num_6 : OUT std_logic ;
      debug_num_7 : OUT std_logic ;
      debug_num_8 : OUT std_logic) ;
end kirsch ;

architecture main of kirsch is 
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
         p_f_i1_next_7 : IN std_logic ;
         p_rtlcs0 : IN std_logic ;
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
         GND : OUT std_logic ;
         p_ix300_ix290_nx7_repl0 : IN std_logic ;
         p_ix300_ix291_nx7_repl0 : IN std_logic ;
         p_ix300_ix292_nx7_repl0 : IN std_logic ;
         p_ix300_ix293_nx7_repl0 : IN std_logic ;
         p_ix300_ix294_nx7_repl0 : IN std_logic ;
         p_ix300_ix295_nx7_repl0 : IN std_logic ;
         p_ix300_ix296_nx7_repl0 : IN std_logic ;
         p_ix300_ix297_nx7_repl0 : IN std_logic ;
         p_ix301_ix298_nx7_repl0 : IN std_logic ;
         p_ix301_ix299_nx7_repl0 : IN std_logic ;
         p_p20_repl0 : IN std_logic) ;
   end component ;
   component memory_notri
      port (
         p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
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
         p_o_valid : OUT std_logic ;
         p_o_column : OUT std_logic_vector (7 DOWNTO 0) ;
         p_debug_num_1 : OUT std_logic_vector (2 DOWNTO 0) ;
         p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         p_debug_valid_rtlc2_100_and_2 : OUT std_logic_vector (2 DOWNTO 2) ;
         
         p_i_valid_rtlc2_54_or_1 : IN std_logic_vector (2 DOWNTO 2) ;
         p_i_reset : IN std_logic ;
         p_debug_num_0 : OUT std_logic_vector (2 DOWNTO 0) ;
         p_debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
         p_i_clock : IN std_logic ;
         p_debug_led_red_dup0_17 : IN std_logic ;
         p_rtlc13n197 : IN std_logic ;
         p_f_i_mode_next_1_repl0 : OUT std_logic ;
         p_f_i_mode_next_0_repl0 : OUT std_logic) ;
   end component ;
   signal i_clock_EXMPLR970, i_reset_EXMPLR971, i_valid_EXMPLR972: std_logic
    ;
   
   signal i_pixel_EXMPLR1158: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0, o_edge_dup0: std_logic ;
   
   signal o_dir_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_column_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_valid_dup0: std_logic ;
   
   signal debug_num_0_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_num_1_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_num_2_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR1159: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR1160: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR1161: std_logic_vector (13 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR1021, debug_num_7_EXMPLR1022, 
      debug_num_8_EXMPLR1023: std_logic ;
   
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal m_o_mode: std_logic_vector (0 DOWNTO 0) ;
   
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
   
   signal f_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
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
   
   signal o_valid_EXMPLR1024, o_edge_EXMPLR1025: std_logic ;
   
   signal o_dir_EXMPLR1162: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR1163: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR1164: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_0_EXMPLR1165: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR1166: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR1167: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR1168: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR1169: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR1170: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR1171: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR1172: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR1173: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_column_EXMPLR1174: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR1175: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR1176: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_valid_EXMPLR1143: std_logic ;
   
   signal debug_num_0_EXMPLR1177: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR1178: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR1179: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_t1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_6, f_i2_4, f_i2_2, f_i2_0: std_logic ;
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_dup0: std_logic_vector (17 DOWNTO 17) ;
   
   signal nx24031z1, nx57127z1, nx15183z1, nx15183z2, nx61965z1, nx62962z1, 
      nx63959z1, nx64956z1, ix300_ix290_nx7_repl0, ix300_ix291_nx7_repl0, 
      ix300_ix292_nx7_repl0, ix300_ix293_nx7_repl0, ix300_ix294_nx7_repl0, 
      ix300_ix295_nx7_repl0, ix300_ix296_nx7_repl0, ix300_ix297_nx7_repl0, 
      ix301_ix298_nx7_repl0, ix301_ix299_nx7_repl0, p20_repl0, nx57127z2: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (24 downto 0 );

begin
   i_clock_EXMPLR970 <= i_clock ;
   i_reset_EXMPLR971 <= i_reset ;
   i_valid_EXMPLR972 <= i_valid ;
   i_pixel_EXMPLR1158(7) <= i_pixel(7) ;
   i_pixel_EXMPLR1158(6) <= i_pixel(6) ;
   i_pixel_EXMPLR1158(5) <= i_pixel(5) ;
   i_pixel_EXMPLR1158(4) <= i_pixel(4) ;
   i_pixel_EXMPLR1158(3) <= i_pixel(3) ;
   i_pixel_EXMPLR1158(2) <= i_pixel(2) ;
   i_pixel_EXMPLR1158(1) <= i_pixel(1) ;
   i_pixel_EXMPLR1158(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR1024 ;
   o_edge <= o_edge_EXMPLR1025 ;
   o_dir(2) <= o_dir_EXMPLR1162(2) ;
   o_dir(1) <= o_dir_EXMPLR1162(1) ;
   o_dir(0) <= o_dir_EXMPLR1162(0) ;
   o_mode(1) <= o_mode_EXMPLR1163(1) ;
   o_mode(0) <= o_mode_EXMPLR1163(0) ;
   o_row(7) <= o_row_EXMPLR1164(7) ;
   o_row(6) <= o_row_EXMPLR1164(6) ;
   o_row(5) <= o_row_EXMPLR1164(5) ;
   o_row(4) <= o_row_EXMPLR1164(4) ;
   o_row(3) <= o_row_EXMPLR1164(3) ;
   o_row(2) <= o_row_EXMPLR1164(2) ;
   o_row(1) <= o_row_EXMPLR1164(1) ;
   o_row(0) <= o_row_EXMPLR1164(0) ;
   o_image0_0(7) <= o_image0_0_EXMPLR1165(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR1165(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR1165(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR1165(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR1165(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR1165(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR1165(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR1165(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR1166(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR1166(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR1166(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR1166(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR1166(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR1166(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR1166(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR1166(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR1167(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR1167(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR1167(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR1167(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR1167(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR1167(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR1167(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR1167(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR1168(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR1168(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR1168(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR1168(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR1168(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR1168(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR1168(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR1168(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR1169(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR1169(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR1169(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR1169(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR1169(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR1169(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR1169(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR1169(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR1170(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR1170(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR1170(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR1170(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR1170(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR1170(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR1170(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR1170(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR1171(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR1171(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR1171(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR1171(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR1171(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR1171(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR1171(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR1171(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR1172(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR1172(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR1172(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR1172(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR1172(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR1172(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR1172(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR1172(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR1173(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR1173(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR1173(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR1173(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR1173(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR1173(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR1173(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR1173(0) ;
   debug_column(7) <= debug_column_EXMPLR1174(7) ;
   debug_column(6) <= debug_column_EXMPLR1174(6) ;
   debug_column(5) <= debug_column_EXMPLR1174(5) ;
   debug_column(4) <= debug_column_EXMPLR1174(4) ;
   debug_column(3) <= debug_column_EXMPLR1174(3) ;
   debug_column(2) <= debug_column_EXMPLR1174(2) ;
   debug_column(1) <= debug_column_EXMPLR1174(1) ;
   debug_column(0) <= debug_column_EXMPLR1174(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR1175(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR1175(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR1175(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR1175(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR1175(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR1175(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR1175(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR1175(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR1175(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR1175(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR1175(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR1175(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR1175(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR1175(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR1175(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR1175(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR1175(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR1175(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR1176(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR1176(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR1176(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR1176(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR1176(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR1176(0) ;
   debug_valid <= debug_valid_EXMPLR1143 ;
   debug_num_0(2) <= debug_num_0_EXMPLR1177(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR1177(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR1177(0) ;
   debug_num_1(2) <= debug_num_1_EXMPLR1178(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR1178(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR1178(0) ;
   debug_num_2(7) <= debug_num_2_EXMPLR1179(7) ;
   debug_num_2(6) <= debug_num_2_EXMPLR1179(6) ;
   debug_num_2(5) <= debug_num_2_EXMPLR1179(5) ;
   debug_num_2(4) <= debug_num_2_EXMPLR1179(4) ;
   debug_num_2(3) <= debug_num_2_EXMPLR1179(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR1179(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR1179(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR1179(0) ;
   debug_num_3(12) <= debug_num_3_EXMPLR1159(12) ;
   debug_num_3(11) <= debug_num_3_EXMPLR1159(11) ;
   debug_num_3(10) <= debug_num_3_EXMPLR1159(10) ;
   debug_num_3(9) <= debug_num_3_EXMPLR1159(9) ;
   debug_num_3(8) <= debug_num_3_EXMPLR1159(8) ;
   debug_num_3(7) <= debug_num_3_EXMPLR1159(7) ;
   debug_num_3(6) <= debug_num_3_EXMPLR1159(6) ;
   debug_num_3(5) <= debug_num_3_EXMPLR1159(5) ;
   debug_num_3(4) <= debug_num_3_EXMPLR1159(4) ;
   debug_num_3(3) <= debug_num_3_EXMPLR1159(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR1159(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR1159(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR1159(0) ;
   debug_num_4(12) <= debug_num_4_EXMPLR1160(12) ;
   debug_num_4(11) <= debug_num_4_EXMPLR1160(11) ;
   debug_num_4(10) <= debug_num_4_EXMPLR1160(10) ;
   debug_num_4(9) <= debug_num_4_EXMPLR1160(9) ;
   debug_num_4(8) <= debug_num_4_EXMPLR1160(8) ;
   debug_num_4(7) <= debug_num_4_EXMPLR1160(7) ;
   debug_num_4(6) <= debug_num_4_EXMPLR1160(6) ;
   debug_num_4(5) <= debug_num_4_EXMPLR1160(5) ;
   debug_num_4(4) <= debug_num_4_EXMPLR1160(4) ;
   debug_num_4(3) <= debug_num_4_EXMPLR1160(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR1160(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR1160(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR1160(0) ;
   debug_num_5(13) <= debug_num_5_EXMPLR1161(13) ;
   debug_num_5(12) <= debug_num_5_EXMPLR1161(12) ;
   debug_num_5(11) <= debug_num_5_EXMPLR1161(11) ;
   debug_num_5(10) <= debug_num_5_EXMPLR1161(10) ;
   debug_num_5(9) <= debug_num_5_EXMPLR1161(9) ;
   debug_num_5(8) <= debug_num_5_EXMPLR1161(8) ;
   debug_num_5(7) <= debug_num_5_EXMPLR1161(7) ;
   debug_num_5(6) <= debug_num_5_EXMPLR1161(6) ;
   debug_num_5(5) <= debug_num_5_EXMPLR1161(5) ;
   debug_num_5(4) <= debug_num_5_EXMPLR1161(4) ;
   debug_num_5(3) <= debug_num_5_EXMPLR1161(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR1161(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR1161(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR1161(0) ;
   debug_num_6 <= debug_num_6_EXMPLR1021 ;
   debug_num_7 <= debug_num_7_EXMPLR1022 ;
   debug_num_8 <= debug_num_8_EXMPLR1023 ;
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
      f_b3(0), i1(7)=>DANGLING(0), i1(6)=>DANGLING(1), i1(5)=>DANGLING(2), 
      i1(4)=>DANGLING(3), i1(3)=>DANGLING(4), i1(2)=>DANGLING(5), i1(1)=>
      DANGLING(6), i1(0)=>DANGLING(7), i2(7)=>DANGLING(8), i2(6)=>f_i2_6, 
      i2(5)=>DANGLING(9), i2(4)=>f_i2_4, i2(3)=>DANGLING(10), i2(2)=>f_i2_2, 
      i2(1)=>DANGLING(11), i2(0)=>f_i2_0, i_clock=>i_clock_int, i_reset=>
      i_reset_int, i_valid=>DANGLING(12), i_mode(1)=>DANGLING(13), i_mode(0)
      =>DANGLING(14), i_row(7)=>DANGLING(15), i_row(6)=>DANGLING(16), 
      i_row(5)=>DANGLING(17), i_row(4)=>DANGLING(18), i_row(3)=>DANGLING(19), 
      i_row(2)=>DANGLING(20), i_row(1)=>DANGLING(21), i_row(0)=>DANGLING(22), 
      o_dir(2)=>o_dir_dup0(2), o_dir(1)=>o_dir_dup0(1), o_dir(0)=>
      o_dir_dup0(0), o_edge=>o_edge_dup0, o_valid=>o_valid_dup0, o_mode(1)=>
      f_o_mode(1), o_mode(0)=>f_o_mode(0), o_row(7)=>o_row_dup0(7), o_row(6)
      =>o_row_dup0(6), o_row(5)=>o_row_dup0(5), o_row(4)=>o_row_dup0(4), 
      o_row(3)=>o_row_dup0(3), o_row(2)=>o_row_dup0(2), o_row(1)=>
      o_row_dup0(1), o_row(0)=>o_row_dup0(0), p_f_i1_next_7=>f_i1_next(7), 
      p_rtlcs0=>nx15183z2, p_o_image1_0_dup0_7=>o_image1_dup0(7), 
      p_f_i1_next_6=>f_i1_next(6), p_o_image1_0_dup0_6=>o_image1_dup0(6), 
      p_f_i1_next_5=>f_i1_next(5), p_o_image1_0_dup0_5=>o_image1_dup0(5), 
      p_f_i1_next_4=>f_i1_next(4), p_o_image1_0_dup0_4=>o_image1_dup0(4), 
      p_f_i1_next_3=>f_i1_next(3), p_o_image1_0_dup0_3=>o_image1_dup0(3), 
      p_f_i1_next_2=>f_i1_next(2), p_o_image1_0_dup0_2=>o_image1_dup0(2), 
      p_f_i1_next_1=>f_i1_next(1), p_o_image1_0_dup0_1=>o_image1_dup0(1), 
      p_f_i1_next_0=>f_i1_next(0), p_o_image1_0_dup0_0=>o_image1_dup0(0), 
      p_f_i2_next_7=>f_i2_next(7), p_o_image1_2_dup0_7=>o_image1_2_dup0_7, 
      p_f_i2_next_5=>f_i2_next(5), p_o_image1_2_dup0_5=>o_image1_2_dup0_5, 
      p_f_i2_next_3=>f_i2_next(3), p_o_image1_2_dup0_3=>o_image1_2_dup0_3, 
      p_f_i2_next_1=>f_i2_next(1), p_o_image1_2_dup0_1=>o_image1_2_dup0_1, 
      GND=>DANGLING(23), p_ix300_ix290_nx7_repl0=>ix300_ix290_nx7_repl0, 
      p_ix300_ix291_nx7_repl0=>ix300_ix291_nx7_repl0, 
      p_ix300_ix292_nx7_repl0=>ix300_ix292_nx7_repl0, 
      p_ix300_ix293_nx7_repl0=>ix300_ix293_nx7_repl0, 
      p_ix300_ix294_nx7_repl0=>ix300_ix294_nx7_repl0, 
      p_ix300_ix295_nx7_repl0=>ix300_ix295_nx7_repl0, 
      p_ix300_ix296_nx7_repl0=>ix300_ix296_nx7_repl0, 
      p_ix300_ix297_nx7_repl0=>ix300_ix297_nx7_repl0, 
      p_ix301_ix298_nx7_repl0=>ix301_ix298_nx7_repl0, 
      p_ix301_ix299_nx7_repl0=>ix301_ix299_nx7_repl0, p_p20_repl0=>p20_repl0
   );
   u_memory : memory_notri port map ( p_i_pixel(7)=>i_pixel_int(7), 
      p_i_pixel(6)=>i_pixel_int(6), p_i_pixel(5)=>i_pixel_int(5), 
      p_i_pixel(4)=>i_pixel_int(4), p_i_pixel(3)=>i_pixel_int(3), 
      p_i_pixel(2)=>i_pixel_int(2), p_i_pixel(1)=>i_pixel_int(1), 
      p_i_pixel(0)=>i_pixel_int(0), p_o_row(7)=>m_o_row(7), p_o_row(6)=>
      m_o_row(6), p_o_row(5)=>m_o_row(5), p_o_row(4)=>m_o_row(4), p_o_row(3)
      =>m_o_row(3), p_o_row(2)=>m_o_row(2), p_o_row(1)=>m_o_row(1), 
      p_o_row(0)=>m_o_row(0), p_o_image0_9_7(1)=>o_image0_dup0(0), 
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
      p_o_valid=>m_o_valid, p_o_column(7)=>debug_column_dup0(7), 
      p_o_column(6)=>debug_column_dup0(6), p_o_column(5)=>
      debug_column_dup0(5), p_o_column(4)=>debug_column_dup0(4), 
      p_o_column(3)=>debug_column_dup0(3), p_o_column(2)=>
      debug_column_dup0(2), p_o_column(1)=>debug_column_dup0(1), 
      p_o_column(0)=>debug_column_dup0(0), p_debug_num_1(2)=>
      debug_num_1_dup0(2), p_debug_num_1(1)=>debug_num_1_dup0(1), 
      p_debug_num_1(0)=>debug_num_1_dup0(0), p_o_mode(1)=>DANGLING(24), 
      p_o_mode(0)=>m_o_mode(0), p_debug_valid_rtlc2_100_and_2(2)=>
      debug_valid_dup0, p_i_valid_rtlc2_54_or_1(2)=>i_valid_int, p_i_reset=>
      i_reset_int, p_debug_num_0(2)=>debug_num_0_dup0(2), p_debug_num_0(1)=>
      debug_num_0_dup0(1), p_debug_num_0(0)=>debug_num_0_dup0(0), 
      p_debug_num_2(7)=>debug_num_2_dup0(7), p_debug_num_2(6)=>
      debug_num_2_dup0(6), p_debug_num_2(5)=>debug_num_2_dup0(5), 
      p_debug_num_2(4)=>debug_num_2_dup0(4), p_debug_num_2(3)=>
      debug_num_2_dup0(3), p_debug_num_2(2)=>debug_num_2_dup0(2), 
      p_debug_num_2(1)=>debug_num_2_dup0(1), p_debug_num_2(0)=>
      debug_num_2_dup0(0), p_i_clock=>i_clock_int, p_debug_led_red_dup0_17=>
      debug_led_red_dup0(17), p_rtlc13n197=>nx15183z1, 
      p_f_i_mode_next_1_repl0=>f_i_mode_next(1), p_f_i_mode_next_0_repl0=>
      f_i_mode_next(0));
   o_mode_dup0(1) <= NOT i_reset_int;
   debug_led_red_dup0(17) <= '0';
   u_memory_ix1311z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_8_EXMPLR1023, datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_ix1312z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_7_EXMPLR1022, datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_ix1313z7237 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_6_EXMPLR1021, datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(9), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(8), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(7), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(6), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(5), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(4), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_13 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(13), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(12), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(11), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(10), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_5_triBus6_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR1161(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(9), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(8), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(7), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(6), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(5), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(4), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(12), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(11), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(10), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_4_triBus5_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR1160(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(9), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(8), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(7), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(6), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(5), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(4), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(3), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(2), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(12), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(11), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(10), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(1), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   u_memory_debug_num_3_triBus4_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR1159(0), datain=>
      debug_led_red_dup0(17), oe=>debug_led_red_dup0(17));
   reg_p20 : stratixii_lcell_ff port map ( regout=>p20_repl0, datain=>
      nx24031z1, clk=>i_clock_int);
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
      =>nx61965z1, clk=>i_clock_int);
   reg_f_state_2 : stratixii_lcell_ff port map ( regout=>f_state(2), datain
      =>nx62962z1, clk=>i_clock_int);
   reg_f_state_1 : stratixii_lcell_ff port map ( regout=>f_state(1), datain
      =>nx63959z1, clk=>i_clock_int);
   reg_f_state_0 : stratixii_lcell_ff port map ( regout=>f_state(0), datain
      =>nx64956z1, clk=>i_clock_int);
   reg_f_i_row_next_7 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(7), datain=>m_o_row(7), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_6 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(6), datain=>m_o_row(6), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_5 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(5), datain=>m_o_row(5), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_4 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(4), datain=>m_o_row(4), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_3 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(3), datain=>m_o_row(3), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_2 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(2), datain=>m_o_row(2), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_1 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(1), datain=>m_o_row(1), clk=>i_clock_int, ena=>nx15183z1
   );
   reg_f_i_row_next_0 : stratixii_lcell_ff port map ( regout=>
      f_i_row_next(0), datain=>m_o_row(0), clk=>i_clock_int, ena=>nx15183z1
   );
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
       port map ( padio=>o_valid_EXMPLR1024, datain=>o_valid_dup0);
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR1164(0), datain=>o_row_dup0(0));
   o_mode_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1163(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1163(0), datain=>o_mode_dup0(0));
   o_image2_obuf_2_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_image2_2_EXMPLR1173(7), datain=>o_image2_2_dup0_7
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
       port map ( padio=>o_image2_2_EXMPLR1173(6), datain=>o_image2_2_dup0_6
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
       port map ( padio=>o_image2_2_EXMPLR1173(5), datain=>o_image2_2_dup0_5
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
       port map ( padio=>o_image2_2_EXMPLR1173(4), datain=>o_image2_2_dup0_4
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
       port map ( padio=>o_image2_2_EXMPLR1173(3), datain=>o_image2_2_dup0_3
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
       port map ( padio=>o_image2_2_EXMPLR1173(2), datain=>o_image2_2_dup0_2
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
       port map ( padio=>o_image2_2_EXMPLR1173(1), datain=>o_image2_2_dup0_1
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
       port map ( padio=>o_image2_2_EXMPLR1173(0), datain=>o_image2_2_dup0_0
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
       port map ( padio=>o_image2_1_EXMPLR1172(7), datain=>o_image2_1_dup0_7
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
       port map ( padio=>o_image2_1_EXMPLR1172(6), datain=>o_image2_1_dup0_6
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
       port map ( padio=>o_image2_1_EXMPLR1172(5), datain=>o_image2_1_dup0_5
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
       port map ( padio=>o_image2_1_EXMPLR1172(4), datain=>o_image2_1_dup0_4
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
       port map ( padio=>o_image2_1_EXMPLR1172(3), datain=>o_image2_1_dup0_3
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
       port map ( padio=>o_image2_1_EXMPLR1172(2), datain=>o_image2_1_dup0_2
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
       port map ( padio=>o_image2_1_EXMPLR1172(1), datain=>o_image2_1_dup0_1
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
       port map ( padio=>o_image2_1_EXMPLR1172(0), datain=>o_image2_1_dup0_0
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
       port map ( padio=>o_image2_0_EXMPLR1171(7), datain=>o_image2_dup0(7)
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
       port map ( padio=>o_image2_0_EXMPLR1171(6), datain=>o_image2_dup0(6)
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
       port map ( padio=>o_image2_0_EXMPLR1171(5), datain=>o_image2_dup0(5)
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
       port map ( padio=>o_image2_0_EXMPLR1171(4), datain=>o_image2_dup0(4)
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
       port map ( padio=>o_image2_0_EXMPLR1171(3), datain=>o_image2_dup0(3)
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
       port map ( padio=>o_image2_0_EXMPLR1171(2), datain=>o_image2_dup0(2)
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
       port map ( padio=>o_image2_0_EXMPLR1171(1), datain=>o_image2_dup0(1)
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
       port map ( padio=>o_image2_0_EXMPLR1171(0), datain=>o_image2_dup0(0)
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
       port map ( padio=>o_image1_2_EXMPLR1170(7), datain=>o_image1_2_dup0_7
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
       port map ( padio=>o_image1_2_EXMPLR1170(6), datain=>o_image1_2_dup0_6
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
       port map ( padio=>o_image1_2_EXMPLR1170(5), datain=>o_image1_2_dup0_5
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
       port map ( padio=>o_image1_2_EXMPLR1170(4), datain=>o_image1_2_dup0_4
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
       port map ( padio=>o_image1_2_EXMPLR1170(3), datain=>o_image1_2_dup0_3
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
       port map ( padio=>o_image1_2_EXMPLR1170(2), datain=>o_image1_2_dup0_2
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
       port map ( padio=>o_image1_2_EXMPLR1170(1), datain=>o_image1_2_dup0_1
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
       port map ( padio=>o_image1_2_EXMPLR1170(0), datain=>o_image1_2_dup0_0
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
       port map ( padio=>o_image1_1_EXMPLR1169(7), datain=>o_image1_1_dup0_7
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
       port map ( padio=>o_image1_1_EXMPLR1169(6), datain=>o_image1_1_dup0_6
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
       port map ( padio=>o_image1_1_EXMPLR1169(5), datain=>o_image1_1_dup0_5
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
       port map ( padio=>o_image1_1_EXMPLR1169(4), datain=>o_image1_1_dup0_4
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
       port map ( padio=>o_image1_1_EXMPLR1169(3), datain=>o_image1_1_dup0_3
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
       port map ( padio=>o_image1_1_EXMPLR1169(2), datain=>o_image1_1_dup0_2
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
       port map ( padio=>o_image1_1_EXMPLR1169(1), datain=>o_image1_1_dup0_1
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
       port map ( padio=>o_image1_1_EXMPLR1169(0), datain=>o_image1_1_dup0_0
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
       port map ( padio=>o_image1_0_EXMPLR1168(7), datain=>o_image1_dup0(7)
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
       port map ( padio=>o_image1_0_EXMPLR1168(6), datain=>o_image1_dup0(6)
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
       port map ( padio=>o_image1_0_EXMPLR1168(5), datain=>o_image1_dup0(5)
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
       port map ( padio=>o_image1_0_EXMPLR1168(4), datain=>o_image1_dup0(4)
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
       port map ( padio=>o_image1_0_EXMPLR1168(3), datain=>o_image1_dup0(3)
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
       port map ( padio=>o_image1_0_EXMPLR1168(2), datain=>o_image1_dup0(2)
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
       port map ( padio=>o_image1_0_EXMPLR1168(1), datain=>o_image1_dup0(1)
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
       port map ( padio=>o_image1_0_EXMPLR1168(0), datain=>o_image1_dup0(0)
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
       port map ( padio=>o_image0_2_EXMPLR1167(7), datain=>o_image0_2_dup0_7
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
       port map ( padio=>o_image0_2_EXMPLR1167(6), datain=>o_image0_2_dup0_6
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
       port map ( padio=>o_image0_2_EXMPLR1167(5), datain=>o_image0_2_dup0_5
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
       port map ( padio=>o_image0_2_EXMPLR1167(4), datain=>o_image0_2_dup0_4
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
       port map ( padio=>o_image0_2_EXMPLR1167(3), datain=>o_image0_2_dup0_3
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
       port map ( padio=>o_image0_2_EXMPLR1167(2), datain=>o_image0_2_dup0_2
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
       port map ( padio=>o_image0_2_EXMPLR1167(1), datain=>o_image0_2_dup0_1
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
       port map ( padio=>o_image0_2_EXMPLR1167(0), datain=>o_image0_2_dup0_0
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
       port map ( padio=>o_image0_1_EXMPLR1166(7), datain=>o_image0_1_dup0_7
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
       port map ( padio=>o_image0_1_EXMPLR1166(6), datain=>o_image0_1_dup0_6
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
       port map ( padio=>o_image0_1_EXMPLR1166(5), datain=>o_image0_1_dup0_5
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
       port map ( padio=>o_image0_1_EXMPLR1166(4), datain=>o_image0_1_dup0_4
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
       port map ( padio=>o_image0_1_EXMPLR1166(3), datain=>o_image0_1_dup0_3
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
       port map ( padio=>o_image0_1_EXMPLR1166(2), datain=>o_image0_1_dup0_2
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
       port map ( padio=>o_image0_1_EXMPLR1166(1), datain=>o_image0_1_dup0_1
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
       port map ( padio=>o_image0_1_EXMPLR1166(0), datain=>o_image0_1_dup0_0
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
       port map ( padio=>o_image0_0_EXMPLR1165(7), datain=>o_image0_dup0(7)
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
       port map ( padio=>o_image0_0_EXMPLR1165(6), datain=>o_image0_dup0(6)
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
       port map ( padio=>o_image0_0_EXMPLR1165(5), datain=>o_image0_dup0(5)
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
       port map ( padio=>o_image0_0_EXMPLR1165(4), datain=>o_image0_dup0(4)
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
       port map ( padio=>o_image0_0_EXMPLR1165(3), datain=>o_image0_dup0(3)
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
       port map ( padio=>o_image0_0_EXMPLR1165(2), datain=>o_image0_dup0(2)
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
       port map ( padio=>o_image0_0_EXMPLR1165(1), datain=>o_image0_dup0(1)
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
       port map ( padio=>o_image0_0_EXMPLR1165(0), datain=>o_image0_dup0(0)
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
       port map ( padio=>o_edge_EXMPLR1025, datain=>o_edge_dup0);
   o_dir_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1162(2), datain=>o_dir_dup0(2));
   o_dir_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1162(1), datain=>o_dir_dup0(1));
   o_dir_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR1162(0), datain=>o_dir_dup0(0));
   ix64956z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffff0f0fff0") 
       port map ( combout=>nx64956z1, datac=>i_reset_int, datad=>nx15183z2, 
      datae=>m_o_valid, dataf=>f_state(3));
   ix63959z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0f0f000f00000000") 
       port map ( combout=>nx63959z1, datac=>i_reset_int, datad=>nx15183z2, 
      datae=>m_o_valid, dataf=>f_state(0));
   ix62962z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx62962z1, datae=>i_reset_int, dataf=>f_state(1)
   );
   ix61965z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx61965z1, datae=>i_reset_int, dataf=>f_state(2)
   );
   ix395_repl : stratixii_lcell_comb
      generic map (lut_mask => X"00000000000000f0") 
       port map ( combout=>nx57127z2, datac=>f_state(0), datad=>f_state(1), 
      datae=>f_state(2), dataf=>f_state(3));
   ix15183z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000000000f0") 
       port map ( combout=>nx15183z2, datac=>f_state(0), datad=>f_state(1), 
      datae=>f_state(2), dataf=>f_state(3));
   ix15183z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx15183z1, datad=>i_reset_int, datae=>nx15183z2, 
      dataf=>m_o_valid);
   ix57127z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff00ff000000ff") 
       port map ( combout=>nx57127z1, datad=>i_reset_int, datae=>nx15183z2, 
      dataf=>m_o_valid);
   ix24031z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffff0000ffff") 
       port map ( combout=>nx24031z1, datae=>nx15183z2, dataf=>m_o_valid);
   ix43539z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_mode(0), datad=>nx15183z2, datae=>
      f_i_mode_next(0), dataf=>m_o_mode(0));
   ix24319z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(0), datad=>nx15183z2, datae=>
      f_i_row_next(0), dataf=>m_o_row(0));
   ix23322z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(1), datad=>nx15183z2, datae=>
      f_i_row_next(1), dataf=>m_o_row(1));
   ix22325z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(2), datad=>nx15183z2, datae=>
      f_i_row_next(2), dataf=>m_o_row(2));
   ix21328z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(3), datad=>nx15183z2, datae=>
      f_i_row_next(3), dataf=>m_o_row(3));
   ix20331z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(4), datad=>nx15183z2, datae=>
      f_i_row_next(4), dataf=>m_o_row(4));
   ix19334z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(5), datad=>nx15183z2, datae=>
      f_i_row_next(5), dataf=>m_o_row(5));
   ix18337z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(6), datad=>nx15183z2, datae=>
      f_i_row_next(6), dataf=>m_o_row(6));
   ix17340z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>f_i_row(7), datad=>nx15183z2, datae=>
      f_i_row_next(7), dataf=>m_o_row(7));
   ix20836z37252 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_0, datad=>o_image1_2_dup0_0, datae=>
      nx15183z2, dataf=>f_i2_next(0));
   ix20836z37251 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_2, datad=>o_image1_2_dup0_2, datae=>
      nx15183z2, dataf=>f_i2_next(2));
   ix20836z37250 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_4, datad=>o_image1_2_dup0_4, datae=>
      nx15183z2, dataf=>f_i2_next(4));
   ix20836z37249 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_i2_6, datad=>o_image1_2_dup0_6, datae=>
      nx15183z2, dataf=>f_i2_next(6));
   ix20836z37248 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(0), datad=>o_image2_2_dup0_0, datae=>
      nx15183z2, dataf=>f_b3_next(0));
   ix20836z37247 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(1), datad=>o_image2_2_dup0_1, datae=>
      nx15183z2, dataf=>f_b3_next(1));
   ix20836z37246 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(2), datad=>o_image2_2_dup0_2, datae=>
      nx15183z2, dataf=>f_b3_next(2));
   ix20836z37245 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(3), datad=>o_image2_2_dup0_3, datae=>
      nx15183z2, dataf=>f_b3_next(3));
   ix20836z37244 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(4), datad=>o_image2_2_dup0_4, datae=>
      nx15183z2, dataf=>f_b3_next(4));
   ix20836z37243 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(5), datad=>o_image2_2_dup0_5, datae=>
      nx15183z2, dataf=>f_b3_next(5));
   ix20836z37242 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(6), datad=>o_image2_2_dup0_6, datae=>
      nx15183z2, dataf=>f_b3_next(6));
   ix20836z37241 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b3(7), datad=>o_image2_2_dup0_7, datae=>
      nx15183z2, dataf=>f_b3_next(7));
   ix20836z37240 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(0), datad=>o_image2_1_dup0_0, datae=>
      nx15183z2, dataf=>f_b2_next(0));
   ix20836z37239 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(1), datad=>o_image2_1_dup0_1, datae=>
      nx15183z2, dataf=>f_b2_next(1));
   ix20836z37238 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(2), datad=>o_image2_1_dup0_2, datae=>
      nx15183z2, dataf=>f_b2_next(2));
   ix20836z37237 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(3), datad=>o_image2_1_dup0_3, datae=>
      nx15183z2, dataf=>f_b2_next(3));
   ix20836z37236 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(4), datad=>o_image2_1_dup0_4, datae=>
      nx15183z2, dataf=>f_b2_next(4));
   ix20836z37235 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(5), datad=>o_image2_1_dup0_5, datae=>
      nx15183z2, dataf=>f_b2_next(5));
   ix20836z37234 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(6), datad=>o_image2_1_dup0_6, datae=>
      nx15183z2, dataf=>f_b2_next(6));
   ix20836z37233 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b2(7), datad=>o_image2_1_dup0_7, datae=>
      nx15183z2, dataf=>f_b2_next(7));
   ix20836z37232 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(0), datad=>o_image2_dup0(0), datae=>
      nx15183z2, dataf=>f_b1_next(0));
   ix20836z37231 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(1), datad=>o_image2_dup0(1), datae=>
      nx15183z2, dataf=>f_b1_next(1));
   ix20836z37230 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(2), datad=>o_image2_dup0(2), datae=>
      nx15183z2, dataf=>f_b1_next(2));
   ix20836z37229 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(3), datad=>o_image2_dup0(3), datae=>
      nx15183z2, dataf=>f_b1_next(3));
   ix20836z37228 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(4), datad=>o_image2_dup0(4), datae=>
      nx15183z2, dataf=>f_b1_next(4));
   ix20836z37227 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(5), datad=>o_image2_dup0(5), datae=>
      nx15183z2, dataf=>f_b1_next(5));
   ix20836z37226 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(6), datad=>o_image2_dup0(6), datae=>
      nx15183z2, dataf=>f_b1_next(6));
   ix20836z37225 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_b1(7), datad=>o_image2_dup0(7), datae=>
      nx15183z2, dataf=>f_b1_next(7));
   ix20836z37224 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(0), datad=>o_image0_dup0(0), datae=>
      nx15183z2, dataf=>f_t3_next(0));
   ix20836z37223 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(1), datad=>o_image0_dup0(1), datae=>
      nx15183z2, dataf=>f_t3_next(1));
   ix20836z37222 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(2), datad=>o_image0_dup0(2), datae=>
      nx15183z2, dataf=>f_t3_next(2));
   ix20836z37221 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(3), datad=>o_image0_dup0(3), datae=>
      nx15183z2, dataf=>f_t3_next(3));
   ix20836z37220 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(4), datad=>o_image0_dup0(4), datae=>
      nx15183z2, dataf=>f_t3_next(4));
   ix20836z37219 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(5), datad=>o_image0_dup0(5), datae=>
      nx15183z2, dataf=>f_t3_next(5));
   ix20836z37218 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(6), datad=>o_image0_dup0(6), datae=>
      nx15183z2, dataf=>f_t3_next(6));
   ix20836z37217 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t3(7), datad=>o_image0_dup0(7), datae=>
      nx15183z2, dataf=>f_t3_next(7));
   ix20836z37216 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(0), datad=>o_image0_1_dup0_0, datae=>
      nx15183z2, dataf=>f_t2_next(0));
   ix20836z37215 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(1), datad=>o_image0_1_dup0_1, datae=>
      nx15183z2, dataf=>f_t2_next(1));
   ix20836z37214 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(2), datad=>o_image0_1_dup0_2, datae=>
      nx15183z2, dataf=>f_t2_next(2));
   ix20836z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(3), datad=>o_image0_1_dup0_3, datae=>
      nx15183z2, dataf=>f_t2_next(3));
   ix20836z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(4), datad=>o_image0_1_dup0_4, datae=>
      nx15183z2, dataf=>f_t2_next(4));
   ix20836z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(5), datad=>o_image0_1_dup0_5, datae=>
      nx15183z2, dataf=>f_t2_next(5));
   ix20836z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(6), datad=>o_image0_1_dup0_6, datae=>
      nx15183z2, dataf=>f_t2_next(6));
   ix20836z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t2(7), datad=>o_image0_1_dup0_7, datae=>
      nx15183z2, dataf=>f_t2_next(7));
   ix20836z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(0), datad=>o_image0_2_dup0_0, datae=>
      nx15183z2, dataf=>f_t1_next(0));
   ix20836z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(1), datad=>o_image0_2_dup0_1, datae=>
      nx15183z2, dataf=>f_t1_next(1));
   ix20836z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(2), datad=>o_image0_2_dup0_2, datae=>
      nx15183z2, dataf=>f_t1_next(2));
   ix20836z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(3), datad=>o_image0_2_dup0_3, datae=>
      nx15183z2, dataf=>f_t1_next(3));
   ix20836z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(4), datad=>o_image0_2_dup0_4, datae=>
      nx15183z2, dataf=>f_t1_next(4));
   ix20836z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(5), datad=>o_image0_2_dup0_5, datae=>
      nx15183z2, dataf=>f_t1_next(5));
   ix20836z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(6), datad=>o_image0_2_dup0_6, datae=>
      nx15183z2, dataf=>f_t1_next(6));
   ix20836z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff000000") 
       port map ( combout=>f_t1(7), datad=>o_image0_2_dup0_7, datae=>
      nx15183z2, dataf=>f_t1_next(7));
   ix47893z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffff0f0f0") 
       port map ( combout=>o_mode_dup0(0), datac=>i_reset_int, datad=>
      f_o_mode(0), datae=>f_o_mode(1), dataf=>m_o_mode(0));
   ix301_reg_p2m_1 : stratixii_lcell_ff port map ( regout=>
      ix301_ix298_nx7_repl0, datain=>f_i_mode(1), clk=>i_clock_int);
   ix301_reg_p2m_0 : stratixii_lcell_ff port map ( regout=>
      ix301_ix299_nx7_repl0, datain=>f_i_mode(0), clk=>i_clock_int);
   ix300_reg_p2r_7 : stratixii_lcell_ff port map ( regout=>
      ix300_ix290_nx7_repl0, datain=>f_i_row(7), clk=>i_clock_int);
   ix300_reg_p2r_6 : stratixii_lcell_ff port map ( regout=>
      ix300_ix291_nx7_repl0, datain=>f_i_row(6), clk=>i_clock_int);
   ix300_reg_p2r_5 : stratixii_lcell_ff port map ( regout=>
      ix300_ix292_nx7_repl0, datain=>f_i_row(5), clk=>i_clock_int);
   ix300_reg_p2r_4 : stratixii_lcell_ff port map ( regout=>
      ix300_ix293_nx7_repl0, datain=>f_i_row(4), clk=>i_clock_int);
   ix300_reg_p2r_3 : stratixii_lcell_ff port map ( regout=>
      ix300_ix294_nx7_repl0, datain=>f_i_row(3), clk=>i_clock_int);
   ix300_reg_p2r_2 : stratixii_lcell_ff port map ( regout=>
      ix300_ix295_nx7_repl0, datain=>f_i_row(2), clk=>i_clock_int);
   ix300_reg_p2r_1 : stratixii_lcell_ff port map ( regout=>
      ix300_ix296_nx7_repl0, datain=>f_i_row(1), clk=>i_clock_int);
   ix300_reg_p2r_0 : stratixii_lcell_ff port map ( regout=>
      ix300_ix297_nx7_repl0, datain=>f_i_row(0), clk=>i_clock_int);
   ix42542z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff00ffffff0000") 
       port map ( combout=>f_i_mode(1), datad=>i_reset_int, datae=>
      f_i_mode_next(1), dataf=>nx15183z2);
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR972);
   i_reset_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR971);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR1158(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR1158(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR1158(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR1158(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR1158(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR1158(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR1158(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR1158(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR970);
   debug_valid_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_valid_EXMPLR1143, datain=>debug_valid_dup0);
   debug_num_2_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(7), datain=>
      debug_num_2_dup0(7));
   debug_num_2_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(6), datain=>
      debug_num_2_dup0(6));
   debug_num_2_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(5), datain=>
      debug_num_2_dup0(5));
   debug_num_2_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(4), datain=>
      debug_num_2_dup0(4));
   debug_num_2_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(3), datain=>
      debug_num_2_dup0(3));
   debug_num_2_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(2), datain=>
      debug_num_2_dup0(2));
   debug_num_2_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(1), datain=>
      debug_num_2_dup0(1));
   debug_num_2_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR1179(0), datain=>
      debug_num_2_dup0(0));
   debug_num_1_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1178(2), datain=>
      debug_num_1_dup0(2));
   debug_num_1_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1178(1), datain=>
      debug_num_1_dup0(1));
   debug_num_1_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR1178(0), datain=>
      debug_num_1_dup0(0));
   debug_num_0_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1177(2), datain=>
      debug_num_0_dup0(2));
   debug_num_0_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1177(1), datain=>
      debug_num_0_dup0(1));
   debug_num_0_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR1177(0), datain=>
      debug_num_0_dup0(0));
   debug_led_red_obuf_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(9), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(8), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(7), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(6), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(5), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(4), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(3), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(2), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_17 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(17), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_16 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(16), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_15 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(15), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_14 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(14), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_13 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(13), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(12), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(11), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(10), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(1), datain=>
      debug_led_red_dup0(17));
   debug_led_red_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR1175(0), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1176(5), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1176(4), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1176(3), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1176(2), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1176(1), datain=>
      debug_led_red_dup0(17));
   debug_led_grn_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR1176(0), datain=>
      debug_led_red_dup0(17));
   debug_column_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(7), datain=>
      debug_column_dup0(7));
   debug_column_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(6), datain=>
      debug_column_dup0(6));
   debug_column_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(5), datain=>
      debug_column_dup0(5));
   debug_column_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(4), datain=>
      debug_column_dup0(4));
   debug_column_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(3), datain=>
      debug_column_dup0(3));
   debug_column_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(2), datain=>
      debug_column_dup0(2));
   debug_column_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(1), datain=>
      debug_column_dup0(1));
   debug_column_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_column_EXMPLR1174(0), datain=>
      debug_column_dup0(0));
end main ;

