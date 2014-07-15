
-- 
-- Definition of  max
-- 
--      Tue Jul 15 18:51:12 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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
      generic map (lut_mask => X"d400",
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

entity max is 
   port (
      i_left : IN std_logic_vector (12 DOWNTO 0) ;
      i_right : IN std_logic_vector (12 DOWNTO 0) ;
      o_left_greater : OUT std_logic) ;
end max ;

architecture main of max is 
   component gt_13_0
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal i_left_EXMPLR74: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_right_EXMPLR75: std_logic_vector (12 DOWNTO 0) ;
   
   signal o_left_greater_dup0: std_logic ;
   
   signal i_left_int: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_right_int: std_logic_vector (12 DOWNTO 0) ;
   
   signal o_left_greater_EXMPLR73: std_logic ;

begin
   i_left_EXMPLR74(12) <= i_left(12) ;
   i_left_EXMPLR74(11) <= i_left(11) ;
   i_left_EXMPLR74(10) <= i_left(10) ;
   i_left_EXMPLR74(9) <= i_left(9) ;
   i_left_EXMPLR74(8) <= i_left(8) ;
   i_left_EXMPLR74(7) <= i_left(7) ;
   i_left_EXMPLR74(6) <= i_left(6) ;
   i_left_EXMPLR74(5) <= i_left(5) ;
   i_left_EXMPLR74(4) <= i_left(4) ;
   i_left_EXMPLR74(3) <= i_left(3) ;
   i_left_EXMPLR74(2) <= i_left(2) ;
   i_left_EXMPLR74(1) <= i_left(1) ;
   i_left_EXMPLR74(0) <= i_left(0) ;
   i_right_EXMPLR75(12) <= i_right(12) ;
   i_right_EXMPLR75(11) <= i_right(11) ;
   i_right_EXMPLR75(10) <= i_right(10) ;
   i_right_EXMPLR75(9) <= i_right(9) ;
   i_right_EXMPLR75(8) <= i_right(8) ;
   i_right_EXMPLR75(7) <= i_right(7) ;
   i_right_EXMPLR75(6) <= i_right(6) ;
   i_right_EXMPLR75(5) <= i_right(5) ;
   i_right_EXMPLR75(4) <= i_right(4) ;
   i_right_EXMPLR75(3) <= i_right(3) ;
   i_right_EXMPLR75(2) <= i_right(2) ;
   i_right_EXMPLR75(1) <= i_right(1) ;
   i_right_EXMPLR75(0) <= i_right(0) ;
   o_left_greater <= o_left_greater_EXMPLR73 ;
   ix45699z19900 : gt_13_0 port map ( a(12)=>i_left_int(12), a(11)=>
      i_left_int(11), a(10)=>i_left_int(10), a(9)=>i_left_int(9), a(8)=>
      i_left_int(8), a(7)=>i_left_int(7), a(6)=>i_left_int(6), a(5)=>
      i_left_int(5), a(4)=>i_left_int(4), a(3)=>i_left_int(3), a(2)=>
      i_left_int(2), a(1)=>i_left_int(1), a(0)=>i_left_int(0), b(12)=>
      i_right_int(12), b(11)=>i_right_int(11), b(10)=>i_right_int(10), b(9)
      =>i_right_int(9), b(8)=>i_right_int(8), b(7)=>i_right_int(7), b(6)=>
      i_right_int(6), b(5)=>i_right_int(5), b(4)=>i_right_int(4), b(3)=>
      i_right_int(3), b(2)=>i_right_int(2), b(1)=>i_right_int(1), b(0)=>
      i_right_int(0), d=>o_left_greater_dup0);
   o_left_greater_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_left_greater_EXMPLR73, datain=>
      o_left_greater_dup0);
   i_right_ibuf_9 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(9), padio=>i_right_EXMPLR75(9));
   i_right_ibuf_8 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(8), padio=>i_right_EXMPLR75(8));
   i_right_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(7), padio=>i_right_EXMPLR75(7));
   i_right_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(6), padio=>i_right_EXMPLR75(6));
   i_right_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(5), padio=>i_right_EXMPLR75(5));
   i_right_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(4), padio=>i_right_EXMPLR75(4));
   i_right_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(3), padio=>i_right_EXMPLR75(3));
   i_right_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(2), padio=>i_right_EXMPLR75(2));
   i_right_ibuf_12 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(12), padio=>i_right_EXMPLR75(12));
   i_right_ibuf_11 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(11), padio=>i_right_EXMPLR75(11));
   i_right_ibuf_10 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(10), padio=>i_right_EXMPLR75(10));
   i_right_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(1), padio=>i_right_EXMPLR75(1));
   i_right_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_right_int(0), padio=>i_right_EXMPLR75(0));
   i_left_ibuf_9 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(9), padio=>i_left_EXMPLR74(9));
   i_left_ibuf_8 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(8), padio=>i_left_EXMPLR74(8));
   i_left_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(7), padio=>i_left_EXMPLR74(7));
   i_left_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(6), padio=>i_left_EXMPLR74(6));
   i_left_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(5), padio=>i_left_EXMPLR74(5));
   i_left_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(4), padio=>i_left_EXMPLR74(4));
   i_left_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(3), padio=>i_left_EXMPLR74(3));
   i_left_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(2), padio=>i_left_EXMPLR74(2));
   i_left_ibuf_12 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(12), padio=>i_left_EXMPLR74(12));
   i_left_ibuf_11 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(11), padio=>i_left_EXMPLR74(11));
   i_left_ibuf_10 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(10), padio=>i_left_EXMPLR74(10));
   i_left_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(1), padio=>i_left_EXMPLR74(1));
   i_left_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_left_int(0), padio=>i_left_EXMPLR74(0));
end main ;

