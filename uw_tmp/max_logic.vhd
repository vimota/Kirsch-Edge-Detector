
-- 
-- Definition of  max
-- 
--      Wed Jul 16 20:14:52 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity max is 
   port (
      i_left : IN std_logic_vector (12 DOWNTO 0) ;
      i_right : IN std_logic_vector (12 DOWNTO 0) ;
      o_max : OUT std_logic_vector (12 DOWNTO 0) ;
      o_left_greater : OUT std_logic) ;
end max ;

architecture main of max is 
   signal i_left_EXMPLR124: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_right_EXMPLR125: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_left_int: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_right_int: std_logic_vector (12 DOWNTO 0) ;
   
   signal o_max_EXMPLR126: std_logic_vector (12 DOWNTO 0) ;
   
   signal o_left_greater_EXMPLR123: std_logic ;
   
   signal o_max_dup0: std_logic_vector (12 DOWNTO 0) ;
   
   signal o_left_greater_dup0, nx32374z2, nx32374z4, nx32374z5, nx32374z1, 
      nx32374z3: std_logic ;

begin
   i_left_EXMPLR124(12) <= i_left(12) ;
   i_left_EXMPLR124(11) <= i_left(11) ;
   i_left_EXMPLR124(10) <= i_left(10) ;
   i_left_EXMPLR124(9) <= i_left(9) ;
   i_left_EXMPLR124(8) <= i_left(8) ;
   i_left_EXMPLR124(7) <= i_left(7) ;
   i_left_EXMPLR124(6) <= i_left(6) ;
   i_left_EXMPLR124(5) <= i_left(5) ;
   i_left_EXMPLR124(4) <= i_left(4) ;
   i_left_EXMPLR124(3) <= i_left(3) ;
   i_left_EXMPLR124(2) <= i_left(2) ;
   i_left_EXMPLR124(1) <= i_left(1) ;
   i_left_EXMPLR124(0) <= i_left(0) ;
   i_right_EXMPLR125(12) <= i_right(12) ;
   i_right_EXMPLR125(11) <= i_right(11) ;
   i_right_EXMPLR125(10) <= i_right(10) ;
   i_right_EXMPLR125(9) <= i_right(9) ;
   i_right_EXMPLR125(8) <= i_right(8) ;
   i_right_EXMPLR125(7) <= i_right(7) ;
   i_right_EXMPLR125(6) <= i_right(6) ;
   i_right_EXMPLR125(5) <= i_right(5) ;
   i_right_EXMPLR125(4) <= i_right(4) ;
   i_right_EXMPLR125(3) <= i_right(3) ;
   i_right_EXMPLR125(2) <= i_right(2) ;
   i_right_EXMPLR125(1) <= i_right(1) ;
   i_right_EXMPLR125(0) <= i_right(0) ;
   o_max(12) <= o_max_EXMPLR126(12) ;
   o_max(11) <= o_max_EXMPLR126(11) ;
   o_max(10) <= o_max_EXMPLR126(10) ;
   o_max(9) <= o_max_EXMPLR126(9) ;
   o_max(8) <= o_max_EXMPLR126(8) ;
   o_max(7) <= o_max_EXMPLR126(7) ;
   o_max(6) <= o_max_EXMPLR126(6) ;
   o_max(5) <= o_max_EXMPLR126(5) ;
   o_max(4) <= o_max_EXMPLR126(4) ;
   o_max(3) <= o_max_EXMPLR126(3) ;
   o_max(2) <= o_max_EXMPLR126(2) ;
   o_max(1) <= o_max_EXMPLR126(1) ;
   o_max(0) <= o_max_EXMPLR126(0) ;
   o_left_greater <= o_left_greater_EXMPLR123 ;
   o_max_obuf_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(9), datain=>o_max_dup0(9));
   o_max_obuf_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(8), datain=>o_max_dup0(8));
   o_max_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(7), datain=>o_max_dup0(7));
   o_max_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(6), datain=>o_max_dup0(6));
   o_max_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(5), datain=>o_max_dup0(5));
   o_max_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(4), datain=>o_max_dup0(4));
   o_max_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(3), datain=>o_max_dup0(3));
   o_max_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(2), datain=>o_max_dup0(2));
   o_max_obuf_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(12), datain=>o_max_dup0(12));
   o_max_obuf_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(11), datain=>o_max_dup0(11));
   o_max_obuf_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(10), datain=>o_max_dup0(10));
   o_max_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(1), datain=>o_max_dup0(1));
   o_max_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_max_EXMPLR126(0), datain=>o_max_dup0(0));
   o_left_greater_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_left_greater_EXMPLR123, datain=>
      o_left_greater_dup0);
   ix32374z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx32374z3, datab=>nx32374z4, datac=>
      i_right_int(5), datad=>i_right_int(6), datae=>i_left_int(5), dataf=>
      i_left_int(6));
   ix32374z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx32374z1, datab=>nx32374z2, datac=>
      i_right_int(9), datad=>i_right_int(10), datae=>i_left_int(9), dataf=>
      i_left_int(10));
   ix32374z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"7f3f1f0f07030100") 
       port map ( combout=>nx32374z5, dataa=>i_right_int(0), datab=>
      i_right_int(1), datac=>i_right_int(2), datad=>i_left_int(0), datae=>
      i_left_int(1), dataf=>i_left_int(2));
   ix32374z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx32374z4, datab=>nx32374z5, datac=>
      i_right_int(3), datad=>i_right_int(4), datae=>i_left_int(3), dataf=>
      i_left_int(4));
   ix32374z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx32374z2, datab=>nx32374z3, datac=>
      i_right_int(7), datad=>i_right_int(8), datae=>i_left_int(7), dataf=>
      i_left_int(8));
   ix32374z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>o_left_greater_dup0, datab=>nx32374z1, datac=>
      i_right_int(11), datad=>i_right_int(12), datae=>i_left_int(11), dataf
      =>i_left_int(12));
   ix18852z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(0), datad=>i_right_int(0), datae=>
      i_left_int(0), dataf=>o_left_greater_dup0);
   ix17855z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(1), datad=>i_right_int(1), datae=>
      i_left_int(1), dataf=>o_left_greater_dup0);
   ix16858z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(2), datad=>i_right_int(2), datae=>
      i_left_int(2), dataf=>o_left_greater_dup0);
   ix15861z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(3), datad=>i_right_int(3), datae=>
      i_left_int(3), dataf=>o_left_greater_dup0);
   ix14864z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(4), datad=>i_right_int(4), datae=>
      i_left_int(4), dataf=>o_left_greater_dup0);
   ix13867z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(5), datad=>i_right_int(5), datae=>
      i_left_int(5), dataf=>o_left_greater_dup0);
   ix12870z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(6), datad=>i_right_int(6), datae=>
      i_left_int(6), dataf=>o_left_greater_dup0);
   ix11873z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(7), datad=>i_right_int(7), datae=>
      i_left_int(7), dataf=>o_left_greater_dup0);
   ix10876z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(8), datad=>i_right_int(8), datae=>
      i_left_int(8), dataf=>o_left_greater_dup0);
   ix9879z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(9), datad=>i_right_int(9), datae=>
      i_left_int(9), dataf=>o_left_greater_dup0);
   ix31377z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(10), datad=>i_right_int(10), datae=>
      i_left_int(10), dataf=>o_left_greater_dup0);
   ix32374z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff0000ff00ff00") 
       port map ( combout=>o_max_dup0(11), datad=>i_right_int(11), datae=>
      i_left_int(11), dataf=>o_left_greater_dup0);
   ix33371z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>o_max_dup0(12), datae=>i_right_int(12), dataf=>
      i_left_int(12));
   i_right_ibuf_9 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(9), padio=>i_right_EXMPLR125(9));
   i_right_ibuf_8 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(8), padio=>i_right_EXMPLR125(8));
   i_right_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(7), padio=>i_right_EXMPLR125(7));
   i_right_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(6), padio=>i_right_EXMPLR125(6));
   i_right_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(5), padio=>i_right_EXMPLR125(5));
   i_right_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(4), padio=>i_right_EXMPLR125(4));
   i_right_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(3), padio=>i_right_EXMPLR125(3));
   i_right_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(2), padio=>i_right_EXMPLR125(2));
   i_right_ibuf_12 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(12), padio=>i_right_EXMPLR125(12));
   i_right_ibuf_11 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(11), padio=>i_right_EXMPLR125(11));
   i_right_ibuf_10 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(10), padio=>i_right_EXMPLR125(10));
   i_right_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(1), padio=>i_right_EXMPLR125(1));
   i_right_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(0), padio=>i_right_EXMPLR125(0));
   i_left_ibuf_9 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(9), padio=>i_left_EXMPLR124(9));
   i_left_ibuf_8 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(8), padio=>i_left_EXMPLR124(8));
   i_left_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(7), padio=>i_left_EXMPLR124(7));
   i_left_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(6), padio=>i_left_EXMPLR124(6));
   i_left_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(5), padio=>i_left_EXMPLR124(5));
   i_left_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(4), padio=>i_left_EXMPLR124(4));
   i_left_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(3), padio=>i_left_EXMPLR124(3));
   i_left_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(2), padio=>i_left_EXMPLR124(2));
   i_left_ibuf_12 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(12), padio=>i_left_EXMPLR124(12));
   i_left_ibuf_11 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(11), padio=>i_left_EXMPLR124(11));
   i_left_ibuf_10 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(10), padio=>i_left_EXMPLR124(10));
   i_left_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(1), padio=>i_left_EXMPLR124(1));
   i_left_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(0), padio=>i_left_EXMPLR124(0));
end main ;

