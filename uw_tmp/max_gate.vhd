
-- 
-- Definition of  max
-- 
--      Tue Jul 15 18:56:31 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity max is 
   port (
      i_left : IN std_logic_vector (12 DOWNTO 0) ;
      i_right : IN std_logic_vector (12 DOWNTO 0) ;
      o_max : OUT std_logic_vector (12 DOWNTO 0) ;
      o_left_greater : OUT std_logic) ;
end max ;

architecture main of max is 
   component gt_13u_13u
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_left_greater_EXMPLR39: std_logic ;

begin
   o_left_greater <= o_left_greater_EXMPLR39 ;
   rtlc0_9_gt_0 : gt_13u_13u port map ( a(12)=>i_left(12), a(11)=>i_left(11), 
      a(10)=>i_left(10), a(9)=>i_left(9), a(8)=>i_left(8), a(7)=>i_left(7), 
      a(6)=>i_left(6), a(5)=>i_left(5), a(4)=>i_left(4), a(3)=>i_left(3), 
      a(2)=>i_left(2), a(1)=>i_left(1), a(0)=>i_left(0), b(12)=>i_right(12), 
      b(11)=>i_right(11), b(10)=>i_right(10), b(9)=>i_right(9), b(8)=>
      i_right(8), b(7)=>i_right(7), b(6)=>i_right(6), b(5)=>i_right(5), b(4)
      =>i_right(4), b(3)=>i_right(3), b(2)=>i_right(2), b(1)=>i_right(1), 
      b(0)=>i_right(0), d=>o_left_greater_EXMPLR39);
   o_max(0) <= i_left(0) when o_left_greater_EXMPLR39 = '1' else i_right(0)
    ;
   o_max(1) <= i_left(1) when o_left_greater_EXMPLR39 = '1' else i_right(1)
    ;
   o_max(2) <= i_left(2) when o_left_greater_EXMPLR39 = '1' else i_right(2)
    ;
   o_max(3) <= i_left(3) when o_left_greater_EXMPLR39 = '1' else i_right(3)
    ;
   o_max(4) <= i_left(4) when o_left_greater_EXMPLR39 = '1' else i_right(4)
    ;
   o_max(5) <= i_left(5) when o_left_greater_EXMPLR39 = '1' else i_right(5)
    ;
   o_max(6) <= i_left(6) when o_left_greater_EXMPLR39 = '1' else i_right(6)
    ;
   o_max(7) <= i_left(7) when o_left_greater_EXMPLR39 = '1' else i_right(7)
    ;
   o_max(8) <= i_left(8) when o_left_greater_EXMPLR39 = '1' else i_right(8)
    ;
   o_max(9) <= i_left(9) when o_left_greater_EXMPLR39 = '1' else i_right(9)
    ;
   o_max(10) <= i_left(10) when o_left_greater_EXMPLR39 = '1' else 
   i_right(10) ;
   o_max(11) <= i_left(11) when o_left_greater_EXMPLR39 = '1' else 
   i_right(11) ;
   o_max(12) <= i_left(12) when o_left_greater_EXMPLR39 = '1' else 
   i_right(12) ;
end main ;

