
-- 
-- Definition of  kirsch
-- 
--      Tue Jul 22 01:30:10 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity modgen_adderblock_add_2_3_0_0_0_9_0 is 
   port (
      a0 : IN std_logic_vector (7 DOWNTO 0) ;
      a1 : IN std_logic_vector (7 DOWNTO 0) ;
      a2 : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0)) ;
end modgen_adderblock_add_2_3_0_0_0_9_0 ;

architecture INTERFACE of modgen_adderblock_add_2_3_0_0_0_9_0 is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal \_MGC0390_MGC039\: std_logic ;
   
   signal rx3: std_logic_vector (8 DOWNTO 1) ;
   
   signal nx14: std_logic ;

begin
   \_MGC0390_MGC039\ <= '0' ;
   modgen_add_0 : add_8u_8u_8u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(7)=>
      a0(7), a(6)=>a0(6), a(5)=>a0(5), a(4)=>a0(4), a(3)=>a0(3), a(2)=>a0(2), 
      a(1)=>a0(1), a(0)=>a0(0), b(7)=>a1(7), b(6)=>a1(6), b(5)=>a1(5), b(4)
      =>a1(4), b(3)=>a1(3), b(2)=>a1(2), b(1)=>a1(1), b(0)=>a1(0), d=>rx3, 
      cout=>nx14);
   modgen_add_1 : add_9u_9u_9u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(8)=>
      nx14, a(7)=>rx3(8), a(6)=>rx3(7), a(5)=>rx3(6), a(4)=>rx3(5), a(3)=>
      rx3(4), a(2)=>rx3(3), a(1)=>rx3(2), a(0)=>rx3(1), b(8)=>a2(8), b(7)=>
      a2(7), b(6)=>a2(6), b(5)=>a2(5), b(4)=>a2(4), b(3)=>a2(3), b(2)=>a2(2), 
      b(1)=>a2(1), b(0)=>a2(0), d(8)=>d(8), d(7)=>d(7), d(6)=>d(6), d(5)=>
      d(5), d(4)=>d(4), d(3)=>d(3), d(2)=>d(2), d(1)=>d(1), d(0)=>d(0), cout
      =>d(9));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity modgen_adderblock_add_2_3_0_0_1_9_0 is 
   port (
      a0 : IN std_logic_vector (7 DOWNTO 0) ;
      a1 : IN std_logic_vector (7 DOWNTO 0) ;
      a2 : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0)) ;
end modgen_adderblock_add_2_3_0_0_1_9_0 ;

architecture INTERFACE of modgen_adderblock_add_2_3_0_0_1_9_0 is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal \_MGC0390_MGC039\: std_logic ;
   
   signal rx5: std_logic_vector (8 DOWNTO 1) ;
   
   signal nx14: std_logic ;

begin
   \_MGC0390_MGC039\ <= '0' ;
   modgen_add_2 : add_8u_8u_8u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(7)=>
      a0(7), a(6)=>a0(6), a(5)=>a0(5), a(4)=>a0(4), a(3)=>a0(3), a(2)=>a0(2), 
      a(1)=>a0(1), a(0)=>a0(0), b(7)=>a1(7), b(6)=>a1(6), b(5)=>a1(5), b(4)
      =>a1(4), b(3)=>a1(3), b(2)=>a1(2), b(1)=>a1(1), b(0)=>a1(0), d=>rx5, 
      cout=>nx14);
   modgen_add_3 : add_9u_9u_9u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(8)=>
      nx14, a(7)=>rx5(8), a(6)=>rx5(7), a(5)=>rx5(6), a(4)=>rx5(5), a(3)=>
      rx5(4), a(2)=>rx5(3), a(1)=>rx5(2), a(0)=>rx5(1), b(8)=>a2(8), b(7)=>
      a2(7), b(6)=>a2(6), b(5)=>a2(5), b(4)=>a2(4), b(3)=>a2(3), b(2)=>a2(2), 
      b(1)=>a2(1), b(0)=>a2(0), d(8)=>d(8), d(7)=>d(7), d(6)=>d(6), d(5)=>
      d(5), d(4)=>d(4), d(3)=>d(3), d(2)=>d(2), d(1)=>d(1), d(0)=>d(0), cout
      =>d(9));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_with_taps_8_4_1 is 
   port (
      \in\ : IN std_logic_vector (7 DOWNTO 0) ;
      \out\ : OUT std_logic_vector (7 DOWNTO 0) ;
      tap_out : OUT std_logic_vector (7 DOWNTO 0) ;
      clk : IN std_logic ;
      clken : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic) ;
end shiftregister_with_taps_8_4_1 ;

architecture INTERFACE of shiftregister_with_taps_8_4_1 is 
   component shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   signal nx11, nx12, nx13, nx14, nx15, nx16, nx17, nx18: std_logic ;

begin
   \out\(7) <= nx11 ;
   \out\(6) <= nx12 ;
   \out\(5) <= nx13 ;
   \out\(4) <= nx14 ;
   \out\(3) <= nx15 ;
   \out\(2) <= nx16 ;
   \out\(1) <= nx17 ;
   \out\(0) <= nx18 ;
   tap_out(7) <= nx11 ;
   tap_out(6) <= nx12 ;
   tap_out(5) <= nx13 ;
   tap_out(4) <= nx14 ;
   tap_out(3) <= nx15 ;
   tap_out(2) <= nx16 ;
   tap_out(1) <= nx17 ;
   tap_out(0) <= nx18 ;
   ix290 : shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(7), \out\=>nx11);
   ix291 : shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(6), \out\=>nx12);
   ix292 : shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(5), \out\=>nx13);
   ix293 : shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(4), \out\=>nx14);
   ix294 : shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(3), \out\=>nx15);
   ix295 : shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(2), \out\=>nx16);
   ix296 : shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx17);
   ix297 : shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx18);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4
    is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_with_taps_2_4_1 is 
   port (
      \in\ : IN std_logic_vector (1 DOWNTO 0) ;
      \out\ : OUT std_logic_vector (1 DOWNTO 0) ;
      tap_out : OUT std_logic_vector (1 DOWNTO 0) ;
      clk : IN std_logic ;
      clken : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic) ;
end shiftregister_with_taps_2_4_1 ;

architecture INTERFACE of shiftregister_with_taps_2_4_1 is 
   component shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   signal nx5, nx6: std_logic ;

begin
   \out\(1) <= nx5 ;
   \out\(0) <= nx6 ;
   tap_out(1) <= nx5 ;
   tap_out(0) <= nx6 ;
   ix298 : shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx5);
   ix299 : shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx6);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      o_row : OUT std_logic_vector (7 DOWNTO 0)) ;
end flow ;

architecture main of flow is 
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_14s_14s
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_13s_13s
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_10u_10u_10u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component eq_14u_14u
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component modgen_adderblock_add_2_3_0_0_0_9_0
      port (
         a0 : IN std_logic_vector (7 DOWNTO 0) ;
         a1 : IN std_logic_vector (7 DOWNTO 0) ;
         a2 : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   component modgen_adderblock_add_2_3_0_0_1_9_0
      port (
         a0 : IN std_logic_vector (7 DOWNTO 0) ;
         a1 : IN std_logic_vector (7 DOWNTO 0) ;
         a2 : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component shiftregister_with_taps_8_4_1
      port (
         \in\ : IN std_logic_vector (7 DOWNTO 0) ;
         \out\ : OUT std_logic_vector (7 DOWNTO 0) ;
         tap_out : OUT std_logic_vector (7 DOWNTO 0) ;
         clk : IN std_logic ;
         clken : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic) ;
   end component ;
   component shiftregister_with_taps_2_4_1
      port (
         \in\ : IN std_logic_vector (1 DOWNTO 0) ;
         \out\ : OUT std_logic_vector (1 DOWNTO 0) ;
         tap_out : OUT std_logic_vector (1 DOWNTO 0) ;
         clk : IN std_logic ;
         clken : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic) ;
   end component ;
   signal o_edge_EXMPLR150: std_logic ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal p21: std_logic_vector (12 DOWNTO 0) ;
   
   signal p22: std_logic_vector (12 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p20: std_logic ;
   
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
   
   signal PWR: std_logic ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_max_fwd, rtlc1n76, rtlc1n77, rtlc1n84, not_i_reset, 
      p21_4n0r3_12, p21_4n0r3_9, p21_4n0r3_8, p21_4n0r3_7, p21_4n0r3_6, 
      p21_4n0r3_5, p21_4n0r3_4, p21_4n0r3_3, p21_4n0r3_2, p21_4n0r3_1, 
      p21_4n0r3_0: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (12 DOWNTO 2) ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p22_4n0r3_12, p22_4n0r3_9, p22_4n0r3_8, p22_4n0r3_7, p22_4n0r3_6, 
      p22_4n0r3_5, p22_4n0r3_4, p22_4n0r3_3, p22_4n0r3_2, p22_4n0r3_1, 
      p22_4n0r3_0: std_logic ;
   
   signal p22_4n0r4: std_logic_vector (12 DOWNTO 2) ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p31_5n1ss1: std_logic_vector (12 DOWNTO 0) ;
   
   signal rtlc5n47, rtlc6n60, rtlc6n82, rtlc6n83, not_p4s_13, rtlc6n85, 
      tmp_o_edge_7n3ss1, not_p40, rtlc7n49, rtlc7n52, rtlc7n72: std_logic ;
   
   signal rtlc8_max_dir_D_n12: std_logic_vector (0 DOWNTO 0) ;
   
   signal not_p45, rtlc8n89, not_rtlcn341, rtlcn322, rtlcn330, not_state_0, 
      not_state_2, rtlcn341, rtlcn342, not_rtlc5n47, rtlcn1459, rtlcn1499, 
      rtlcn1556, rtlcn1596, rtlcn1707, not_rtlcn1707, rtlcs0, rtlcn1876, 
      rtlcn1877, rtlcn1879, rtlcn1880, rtlcn1881, rtlcn1882, rtlcn1883, 
      rtlcn1884, NOT_p12_0, NOT_p11_0: std_logic ;
   
   signal DANGLING : std_logic_vector (13 downto 0 );

begin
   o_edge <= o_edge_EXMPLR150 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc1_12_and_25 : and_3u_3u port map ( a(2)=>rtlcs0, a(1)=>not_max_fwd, 
      a(0)=>p45, d=>rtlc1n76);
   rtlc1_13_gt_26 : gt_14s_14s port map ( a(13)=>p43(13), a(12)=>p43(12), 
      a(11)=>p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>
      p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>
      p43(2), a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>
      prev_max(12), b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>
      prev_max(9), b(8)=>prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), 
      b(5)=>prev_max(5), b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>
      prev_max(2), b(1)=>prev_max(1), b(0)=>prev_max(0), d=>rtlc1n84);
   rtlc1n77 <= rtlc1n84 OR rtlc1n76 ;
   not_max_fwd <= NOT max_fwd ;
   not_i_reset <= NOT i_reset ;
   rtlc5_91_gt_27 : gt_13s_13s port map ( a(12)=>p22(12), a(11)=>p22(11), 
      a(10)=>p22(10), a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), 
      a(5)=>p22(5), a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), 
      a(0)=>p22(0), b(12)=>p21(12), b(11)=>p21(11), b(10)=>p21(10), b(9)=>
      p21(9), b(8)=>p21(8), b(7)=>p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>
      p21(4), b(3)=>p21(3), b(2)=>p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>
      rtlc5n47);
   rtlc6n60 <= rtlc6n85 AND p30 ;
   rtlc6n82 <= p4s(7) AND p4s(8) ;
   not_p4s_13 <= NOT p4s(13) ;
   rtlc6n85 <= rtlc6n83 AND not_p4s_13 ;
   rtlc7n72 <= state(3) AND rtlc1n77 ;
   rtlc7n49 <= i_reset OR not_p40 ;
   rtlc7n52 <= rtlc7n49 OR state(3) ;
   not_p40 <= NOT p40 ;
   not_p45 <= NOT p45 ;
   not_state_0 <= NOT state(0) ;
   not_state_2 <= NOT state(2) ;
   rtlcn330 <= state(1) OR not_state_2 ;
   rtlcn322 <= not_state_0 AND rtlcn330 ;
   not_rtlcn341 <= NOT rtlcn341 ;
   p31_5n1ss1(0) <= p22(0) when rtlc5n47 = '1' else p21(0) ;
   p31_5n1ss1(1) <= p22(1) when rtlc5n47 = '1' else p21(1) ;
   p31_5n1ss1(2) <= p22(2) when rtlc5n47 = '1' else p21(2) ;
   p31_5n1ss1(3) <= p22(3) when rtlc5n47 = '1' else p21(3) ;
   p31_5n1ss1(4) <= p22(4) when rtlc5n47 = '1' else p21(4) ;
   p31_5n1ss1(5) <= p22(5) when rtlc5n47 = '1' else p21(5) ;
   p31_5n1ss1(6) <= p22(6) when rtlc5n47 = '1' else p21(6) ;
   p31_5n1ss1(7) <= p22(7) when rtlc5n47 = '1' else p21(7) ;
   p31_5n1ss1(8) <= p22(8) when rtlc5n47 = '1' else p21(8) ;
   p31_5n1ss1(9) <= p22(9) when rtlc5n47 = '1' else p21(9) ;
   p31_5n1ss1(10) <= p22(10) when rtlc5n47 = '1' else p21(10) ;
   p31_5n1ss1(11) <= p22(11) when rtlc5n47 = '1' else p21(11) ;
   p31_5n1ss1(12) <= p22(12) when rtlc5n47 = '1' else p21(12) ;
   tmp_o_edge_7n3ss1 <= p41 when rtlc7n72 = '1' else prev_edge ;
   rtlc_235_or_29 : or_4u_4u port map ( a(3)=>state(0), a(2)=>state(1), a(1)
      =>state(2), a(0)=>state(3), d=>rtlcn342);
   rtlc8n89 <= rtlc1n77 AND rtlcn342 ;
   not_rtlc5n47 <= NOT rtlc5n47 ;
   rtlc8_max_dir_D_n12(0) <= not_p45 XOR state(0) ;
   o_dir(0) <= max_dir(0) AND o_edge_EXMPLR150 ;
   rtlcn341 <= state(1) OR state(0) ;
   o_dir(1) <= max_dir(1) AND o_edge_EXMPLR150 ;
   o_dir(2) <= max_dir(2) AND o_edge_EXMPLR150 ;
   o_mode(0) <= p5m(0) OR i_reset ;
   o_mode(1) <= p5m(1) AND not_i_reset ;
   p21_4n0r3_12 <= NOT rtlcn1459 ;
   p21_sub10_4i1 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_4n0r3_9, 
      d(8)=>p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>p21_4n0r3_6, d(5)=>
      p21_4n0r3_5, d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, d(2)=>p21_4n0r3_2, 
      d(1)=>p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>rtlcn1459);
   p21_4n0r4(12) <= NOT rtlcn1499 ;
   p21_add12_4i3 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>
      p21_4n0r3_12, a(10)=>p21_4n0r3_12, a(9)=>p21_4n0r3_12, a(8)=>
      p21_4n0r3_9, a(7)=>p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, 
      a(4)=>p21_4n0r3_5, a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>
      p21_4n0r3_2, a(0)=>p21_4n0r3_1, b(11)=>p21_4n0r4(12), b(10)=>
      p21_4n0r4(11), b(9)=>p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>
      p21_4n0r4(8), b(6)=>p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>
      p21_4n0r4(5), b(3)=>p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>
      p21_4n0r4(2), b(0)=>p12(0), d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), 
      d(9)=>p21_4n0r2(10), d(8)=>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>
      p21_4n0r2(7), d(5)=>p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>
      p21_4n0r2(4), d(2)=>p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>
      p21_4n0r2(1), cout=>DANGLING(0));
   p22_4n0r3_12 <= NOT rtlcn1556 ;
   p22_sub10_4i4 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_4n0r3_9, 
      d(8)=>p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>p22_4n0r3_6, d(5)=>
      p22_4n0r3_5, d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, d(2)=>p22_4n0r3_2, 
      d(1)=>p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>rtlcn1556);
   p22_4n0r4(12) <= NOT rtlcn1596 ;
   p22_add12_4i6 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>
      p22_4n0r3_12, a(10)=>p22_4n0r3_12, a(9)=>p22_4n0r3_12, a(8)=>
      p22_4n0r3_9, a(7)=>p22_4n0r3_8, a(6)=>p22_4n0r3_7, a(5)=>p22_4n0r3_6, 
      a(4)=>p22_4n0r3_5, a(3)=>p22_4n0r3_4, a(2)=>p22_4n0r3_3, a(1)=>
      p22_4n0r3_2, a(0)=>p22_4n0r3_1, b(11)=>p22_4n0r4(12), b(10)=>
      p22_4n0r4(11), b(9)=>p22_4n0r4(10), b(8)=>p22_4n0r4(9), b(7)=>
      p22_4n0r4(8), b(6)=>p22_4n0r4(7), b(5)=>p22_4n0r4(6), b(4)=>
      p22_4n0r4(5), b(3)=>p22_4n0r4(4), b(2)=>p22_4n0r4(3), b(1)=>
      p22_4n0r4(2), b(0)=>p11(0), d(11)=>p22_4n0r2(12), d(10)=>p22_4n0r2(11), 
      d(9)=>p22_4n0r2(10), d(8)=>p22_4n0r2(9), d(7)=>p22_4n0r2(8), d(6)=>
      p22_4n0r2(7), d(5)=>p22_4n0r2(6), d(4)=>p22_4n0r2(5), d(3)=>
      p22_4n0r2(4), d(2)=>p22_4n0r2(3), d(1)=>p22_4n0r2(2), d(0)=>
      p22_4n0r2(1), cout=>DANGLING(1));
   p13_add8_0i3 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_2 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>p13_0n0s2(8), b(7)=>
      p13_0n0s2(7), b(6)=>p13_0n0s2(6), b(5)=>p13_0n0s2(5), b(4)=>
      p13_0n0s2(4), b(3)=>p13_0n0s2(3), b(2)=>p13_0n0s2(2), b(1)=>
      p13_0n0s2(1), b(0)=>p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>
      p13(7), d(5)=>p13(6), d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>
      p13(2), d(0)=>p13(1), cout=>p13(10));
   not_rtlcn1707 <= NOT rtlcn1707 ;
   p4s(13) <= not_rtlcn1707 OR p31(12) ;
   p4s_sub12_3 : sub_12u_12u_12u_0 port map ( cin=>PWR, a(11)=>p31(11), 
      a(10)=>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>GND, b(10)=>p32(10), b(9)=>p32(9), b(8)=>p32(8), 
      b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>p32(3), 
      b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), d(10)=>
      p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), d(5)
      =>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), d(0)
      =>p4s(0), cout=>rtlcn1707);
   rtlceq_s1_eq_43 : eq_14u_14u port map ( a(13)=>p43(13), a(12)=>p43(12), 
      a(11)=>p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>
      p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>
      p43(2), a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>
      prev_max(12), b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>
      prev_max(9), b(8)=>prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), 
      b(5)=>prev_max(5), b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>
      prev_max(2), b(1)=>prev_max(1), b(0)=>prev_max(0), d=>rtlcs0);
   p4s(12) <= NOT (rtlcn1707 XOR p31(12)) ;
   rtlcn1876 <= state(3) OR i_reset ;
   rtlcn1877 <= p40 OR i_reset ;
   rtlcn1879 <= rtlcn322 when rtlc8n89 = '1' else max_dir(2) ;
   rtlcn1880 <= not_rtlcn341 when rtlc8n89 = '1' else max_dir(1) ;
   rtlcn1881 <= state(2) when p40 = '1' else state(3) ;
   rtlcn1882 <= state(1) when p40 = '1' else state(2) ;
   rtlcn1883 <= state(0) when p40 = '1' else state(1) ;
   rtlcn1884 <= rtlcn1876 when rtlcn1877 = '1' else state(0) ;
   DFFPC (i_valid,GND,GND,i_clock,p20) ;
   DFFPC (p13(10),GND,GND,i_clock,p23(10)) ;
   DFFPC (p13(9),GND,GND,i_clock,p23(9)) ;
   DFFPC (p13(8),GND,GND,i_clock,p23(8)) ;
   DFFPC (p13(7),GND,GND,i_clock,p23(7)) ;
   DFFPC (p13(6),GND,GND,i_clock,p23(6)) ;
   DFFPC (p13(5),GND,GND,i_clock,p23(5)) ;
   DFFPC (p13(4),GND,GND,i_clock,p23(4)) ;
   DFFPC (p13(3),GND,GND,i_clock,p23(3)) ;
   DFFPC (p13(2),GND,GND,i_clock,p23(2)) ;
   DFFPC (p13(1),GND,GND,i_clock,p23(1)) ;
   DFFPC (p13_0n0s2(0),GND,GND,i_clock,p23(0)) ;
   DFFPC (p22_4n0r2(12),GND,GND,i_clock,p22(12)) ;
   DFFPC (p22_4n0r2(11),GND,GND,i_clock,p22(11)) ;
   DFFPC (p22_4n0r2(10),GND,GND,i_clock,p22(10)) ;
   DFFPC (p22_4n0r2(9),GND,GND,i_clock,p22(9)) ;
   DFFPC (p22_4n0r2(8),GND,GND,i_clock,p22(8)) ;
   DFFPC (p22_4n0r2(7),GND,GND,i_clock,p22(7)) ;
   DFFPC (p22_4n0r2(6),GND,GND,i_clock,p22(6)) ;
   DFFPC (p22_4n0r2(5),GND,GND,i_clock,p22(5)) ;
   DFFPC (p22_4n0r2(4),GND,GND,i_clock,p22(4)) ;
   DFFPC (p22_4n0r2(3),GND,GND,i_clock,p22(3)) ;
   DFFPC (p22_4n0r2(2),GND,GND,i_clock,p22(2)) ;
   DFFPC (p22_4n0r2(1),GND,GND,i_clock,p22(1)) ;
   DFFPC (p22_4n0r3_0,GND,GND,i_clock,p22(0)) ;
   DFFPC (p21_4n0r2(12),GND,GND,i_clock,p21(12)) ;
   DFFPC (p21_4n0r2(11),GND,GND,i_clock,p21(11)) ;
   DFFPC (p21_4n0r2(10),GND,GND,i_clock,p21(10)) ;
   DFFPC (p21_4n0r2(9),GND,GND,i_clock,p21(9)) ;
   DFFPC (p21_4n0r2(8),GND,GND,i_clock,p21(8)) ;
   DFFPC (p21_4n0r2(7),GND,GND,i_clock,p21(7)) ;
   DFFPC (p21_4n0r2(6),GND,GND,i_clock,p21(6)) ;
   DFFPC (p21_4n0r2(5),GND,GND,i_clock,p21(5)) ;
   DFFPC (p21_4n0r2(4),GND,GND,i_clock,p21(4)) ;
   DFFPC (p21_4n0r2(3),GND,GND,i_clock,p21(3)) ;
   DFFPC (p21_4n0r2(2),GND,GND,i_clock,p21(2)) ;
   DFFPC (p21_4n0r2(1),GND,GND,i_clock,p21(1)) ;
   DFFPC (p21_4n0r3_0,GND,GND,i_clock,p21(0)) ;
   DFFPC (p20,GND,GND,i_clock,p30) ;
   DFFPC (p23(10),GND,GND,i_clock,p32(10)) ;
   DFFPC (p23(9),GND,GND,i_clock,p32(9)) ;
   DFFPC (p23(8),GND,GND,i_clock,p32(8)) ;
   DFFPC (p23(7),GND,GND,i_clock,p32(7)) ;
   DFFPC (p23(6),GND,GND,i_clock,p32(6)) ;
   DFFPC (p23(5),GND,GND,i_clock,p32(5)) ;
   DFFPC (p23(4),GND,GND,i_clock,p32(4)) ;
   DFFPC (p23(3),GND,GND,i_clock,p32(3)) ;
   DFFPC (p23(2),GND,GND,i_clock,p32(2)) ;
   DFFPC (p23(1),GND,GND,i_clock,p32(1)) ;
   DFFPC (p23(0),GND,GND,i_clock,p32(0)) ;
   DFFPC (p31_5n1ss1(12),GND,GND,i_clock,p31(12)) ;
   DFFPC (p31_5n1ss1(11),GND,GND,i_clock,p31(11)) ;
   DFFPC (p31_5n1ss1(10),GND,GND,i_clock,p31(10)) ;
   DFFPC (p31_5n1ss1(9),GND,GND,i_clock,p31(9)) ;
   DFFPC (p31_5n1ss1(8),GND,GND,i_clock,p31(8)) ;
   DFFPC (p31_5n1ss1(7),GND,GND,i_clock,p31(7)) ;
   DFFPC (p31_5n1ss1(6),GND,GND,i_clock,p31(6)) ;
   DFFPC (p31_5n1ss1(5),GND,GND,i_clock,p31(5)) ;
   DFFPC (p31_5n1ss1(4),GND,GND,i_clock,p31(4)) ;
   DFFPC (p31_5n1ss1(3),GND,GND,i_clock,p31(3)) ;
   DFFPC (p31_5n1ss1(2),GND,GND,i_clock,p31(2)) ;
   DFFPC (p31_5n1ss1(1),GND,GND,i_clock,p31(1)) ;
   DFFPC (p31_5n1ss1(0),GND,GND,i_clock,p31(0)) ;
   DFFPC (not_rtlc5n47,GND,GND,i_clock,p35) ;
   DFFPC (p30,GND,GND,i_clock,p40) ;
   DFFPC (p35,GND,GND,i_clock,p45) ;
   DFFPC (p4s(13),GND,GND,i_clock,p43(13)) ;
   DFFPC (p4s(12),GND,GND,i_clock,p43(12)) ;
   DFFPC (p4s(11),GND,GND,i_clock,p43(11)) ;
   DFFPC (p4s(10),GND,GND,i_clock,p43(10)) ;
   DFFPC (p4s(9),GND,GND,i_clock,p43(9)) ;
   DFFPC (p4s(8),GND,GND,i_clock,p43(8)) ;
   DFFPC (p4s(7),GND,GND,i_clock,p43(7)) ;
   DFFPC (p4s(6),GND,GND,i_clock,p43(6)) ;
   DFFPC (p4s(5),GND,GND,i_clock,p43(5)) ;
   DFFPC (p4s(4),GND,GND,i_clock,p43(4)) ;
   DFFPC (p4s(3),GND,GND,i_clock,p43(3)) ;
   DFFPC (p4s(2),GND,GND,i_clock,p43(2)) ;
   DFFPC (p4s(1),GND,GND,i_clock,p43(1)) ;
   DFFPC (p4s(0),GND,GND,i_clock,p43(0)) ;
   DFFPC (rtlc6n60,GND,GND,i_clock,p41) ;
   DFFPC (tmp_o_edge_7n3ss1,GND,GND,i_clock,o_edge_EXMPLR150) ;
   DFFRSE (p41,GND,rtlc7n52,rtlc1n77,i_clock,prev_edge) ;
   DFFRSE (p45,GND,rtlc7n52,rtlc1n77,i_clock,max_fwd) ;
   DFFRSE (p43(13),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(13)) ;
   DFFRSE (p43(12),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(12)) ;
   DFFRSE (p43(11),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(11)) ;
   DFFRSE (p43(10),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(10)) ;
   DFFRSE (p43(9),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(9)) ;
   DFFRSE (p43(8),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(8)) ;
   DFFRSE (p43(7),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(7)) ;
   DFFRSE (p43(6),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(6)) ;
   DFFRSE (p43(5),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(5)) ;
   DFFRSE (p43(4),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(4)) ;
   DFFRSE (p43(3),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(3)) ;
   DFFRSE (p43(2),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(2)) ;
   DFFRSE (p43(1),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(1)) ;
   DFFRSE (p43(0),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(0)) ;
   DFFPCE (rtlc8_max_dir_D_n12(0),GND,GND,rtlc1n77,i_clock,max_dir(0)) ;
   DFFRSE (state(3),GND,i_reset,PWR,i_clock,o_valid) ;
   DFFPC (rtlcn1879,GND,GND,i_clock,max_dir(2)) ;
   DFFPC (rtlcn1880,GND,GND,i_clock,max_dir(1)) ;
   DFFRSE (rtlcn1881,GND,i_reset,PWR,i_clock,state(3)) ;
   DFFRSE (rtlcn1882,GND,i_reset,PWR,i_clock,state(2)) ;
   DFFRSE (rtlcn1883,GND,i_reset,PWR,i_clock,state(1)) ;
   DFFPC (rtlcn1884,GND,GND,i_clock,state(0)) ;
   modgen_adderblock : modgen_adderblock_add_2_3_0_0_0_9_0 port map ( a0(7)
      =>b1(7), a0(6)=>b1(6), a0(5)=>b1(5), a0(4)=>b1(4), a0(3)=>b1(3), a0(2)
      =>b1(2), a0(1)=>b1(1), a0(0)=>b1(0), a1(7)=>b2(7), a1(6)=>b2(6), a1(5)
      =>b2(5), a1(4)=>b2(4), a1(3)=>b2(3), a1(2)=>b2(2), a1(1)=>b2(1), a1(0)
      =>b2(0), a2(8)=>GND, a2(7)=>b3(7), a2(6)=>b3(6), a2(5)=>b3(5), a2(4)=>
      b3(4), a2(3)=>b3(3), a2(2)=>b3(2), a2(1)=>b3(1), a2(0)=>b3(0), d(9)=>
      p12(9), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)=>
      p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>p12(0));
   modgen_adderblock_dup_0 : modgen_adderblock_add_2_3_0_0_1_9_0 port map ( 
      a0(7)=>t1(7), a0(6)=>t1(6), a0(5)=>t1(5), a0(4)=>t1(4), a0(3)=>t1(3), 
      a0(2)=>t1(2), a0(1)=>t1(1), a0(0)=>t1(0), a1(7)=>t2(7), a1(6)=>t2(6), 
      a1(5)=>t2(5), a1(4)=>t2(4), a1(3)=>t2(3), a1(2)=>t2(2), a1(1)=>t2(1), 
      a1(0)=>t2(0), a2(8)=>GND, a2(7)=>t3(7), a2(6)=>t3(6), a2(5)=>t3(5), 
      a2(4)=>t3(4), a2(3)=>t3(3), a2(2)=>t3(2), a2(1)=>t3(1), a2(0)=>t3(0), 
      d(9)=>p11(9), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>p11(5), 
      d(4)=>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>p11(0));
   NOT_p12_0 <= NOT p12(0) ;
   p21_sub11_4i2 : sub_10u_10u_10u_0 port map ( cin=>NOT_p12_0, a(9)=>p11(9), 
      a(8)=>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), 
      a(3)=>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>GND, 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_4n0r4(11), d(8)=>p21_4n0r4(10), d(7)=>p21_4n0r4(9), d(6)=>
      p21_4n0r4(8), d(5)=>p21_4n0r4(7), d(4)=>p21_4n0r4(6), d(3)=>
      p21_4n0r4(5), d(2)=>p21_4n0r4(4), d(1)=>p21_4n0r4(3), d(0)=>
      p21_4n0r4(2), cout=>rtlcn1499);
   NOT_p11_0 <= NOT p11(0) ;
   p22_sub11_4i5 : sub_10u_10u_10u_0 port map ( cin=>NOT_p11_0, a(9)=>p12(9), 
      a(8)=>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), 
      a(3)=>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>GND, 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_4n0r4(11), d(8)=>p22_4n0r4(10), d(7)=>p22_4n0r4(9), d(6)=>
      p22_4n0r4(8), d(5)=>p22_4n0r4(7), d(4)=>p22_4n0r4(6), d(3)=>
      p22_4n0r4(5), d(2)=>p22_4n0r4(4), d(1)=>p22_4n0r4(3), d(0)=>
      p22_4n0r4(2), cout=>rtlcn1596);
   modgen_or_4 : or_6u_6u port map ( a(5)=>p4s(9), a(4)=>p4s(10), a(3)=>
      p4s(11), a(2)=>p4s(12), a(1)=>p4s(13), a(0)=>rtlc6n82, d=>rtlc6n83);
   ix300 : shiftregister_with_taps_8_4_1 port map ( \in\(7)=>i_row(7), 
      \in\(6)=>i_row(6), \in\(5)=>i_row(5), \in\(4)=>i_row(4), \in\(3)=>
      i_row(3), \in\(2)=>i_row(2), \in\(1)=>i_row(1), \in\(0)=>i_row(0), 
      \out\(7)=>o_row(7), \out\(6)=>o_row(6), \out\(5)=>o_row(5), \out\(4)=>
      o_row(4), \out\(3)=>o_row(3), \out\(2)=>o_row(2), \out\(1)=>o_row(1), 
      \out\(0)=>o_row(0), tap_out(7)=>DANGLING(2), tap_out(6)=>DANGLING(3), 
      tap_out(5)=>DANGLING(4), tap_out(4)=>DANGLING(5), tap_out(3)=>DANGLING
      (6), tap_out(2)=>DANGLING(7), tap_out(1)=>DANGLING(8), tap_out(0)=>
      DANGLING(9), clk=>i_clock, clken=>DANGLING(10), reset=>GND, set=>GND);
   ix301 : shiftregister_with_taps_2_4_1 port map ( \in\(1)=>i_mode(1), 
      \in\(0)=>i_mode(0), \out\(1)=>p5m(1), \out\(0)=>p5m(0), tap_out(1)=>
      DANGLING(11), tap_out(0)=>DANGLING(12), clk=>i_clock, clken=>DANGLING(
      13), reset=>GND, set=>GND);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_mem_8_8_main is 
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
end ram_new_0_mem_8_8_main ;

architecture INTERFACE_unfold_2 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_2 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mem_8_8 is 
   port (
      address : IN std_logic_vector (7 DOWNTO 0) ;
      clock : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      wren : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end mem_8_8 ;

architecture main_unfold_1 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_2);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_1 ;


architecture INTERFACE of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE ;


architecture main_unfold_2 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_2 ;


architecture INTERFACE_unfold_1 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_1 ;


architecture main of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_1);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, nx31, 
      nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, 
      nx44, nx45, nx46, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   DFFPCE (nx23,GND,GND,nx20,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx20,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx20,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx20,clock,nx30) ;
   DFFPCE (nx31,GND,GND,nx20,clock,nx32) ;
   DFFPCE (nx33,GND,GND,nx20,clock,nx34) ;
   DFFPCE (nx35,GND,GND,nx20,clock,nx36) ;
   DFFPCE (nx37,GND,GND,nx20,clock,nx38) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx24, a(6)=>nx26, a(5)=>
      nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)=>nx38, d(7)
      =>nx39, d(6)=>nx40, d(5)=>nx41, d(4)=>nx42, d(3)=>nx43, d(2)=>nx44, 
      d(1)=>nx45, d(0)=>nx46, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx23 <= nx39 AND NOT_nx19 ;
   nx25 <= nx40 AND NOT_nx19 ;
   nx27 <= nx41 AND NOT_nx19 ;
   nx29 <= nx42 AND NOT_nx19 ;
   nx31 <= nx43 AND NOT_nx19 ;
   nx33 <= nx44 AND NOT_nx19 ;
   nx35 <= nx45 AND NOT_nx19 ;
   nx37 <= nx46 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_clk_en_0_8 is 
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
end counter_up_cnt_en_sclear_clock_clk_en_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_clk_en_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx23, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, 
      nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx27 ;
   q(6) <= nx29 ;
   q(5) <= nx31 ;
   q(4) <= nx33 ;
   q(3) <= nx35 ;
   q(2) <= nx37 ;
   q(1) <= nx39 ;
   q(0) <= nx41 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   nx23 <= nx20 AND clk_en ;
   DFFPCE (nx26,GND,GND,nx23,clock,nx27) ;
   DFFPCE (nx28,GND,GND,nx23,clock,nx29) ;
   DFFPCE (nx30,GND,GND,nx23,clock,nx31) ;
   DFFPCE (nx32,GND,GND,nx23,clock,nx33) ;
   DFFPCE (nx34,GND,GND,nx23,clock,nx35) ;
   DFFPCE (nx36,GND,GND,nx23,clock,nx37) ;
   DFFPCE (nx38,GND,GND,nx23,clock,nx39) ;
   DFFPCE (nx40,GND,GND,nx23,clock,nx41) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx27, a(6)=>nx29, a(5)=>
      nx31, a(4)=>nx33, a(3)=>nx35, a(2)=>nx37, a(1)=>nx39, a(0)=>nx41, d(7)
      =>nx42, d(6)=>nx43, d(5)=>nx44, d(4)=>nx45, d(3)=>nx46, d(2)=>nx47, 
      d(1)=>nx48, d(0)=>nx49, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx26 <= nx42 AND NOT_nx19 ;
   nx28 <= nx43 AND NOT_nx19 ;
   nx30 <= nx44 AND NOT_nx19 ;
   nx32 <= nx45 AND NOT_nx19 ;
   nx34 <= nx46 AND NOT_nx19 ;
   nx36 <= nx47 AND NOT_nx19 ;
   nx38 <= nx48 AND NOT_nx19 ;
   nx40 <= nx49 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      p_i_clock : IN std_logic) ;
end memory_notri ;

architecture main of memory_notri is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8
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
   component counter_up_cnt_en_sclear_clock_clk_en_0_8
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
   component dec_7u_7u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic_vector (6 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   for u_mem1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for u_mem2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for u_mem3 : mem_8_8 use entity work.mem_8_8(main);
   signal o_image1_0_7_rename21: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_image1_0_1_rename22: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image1_0_2_rename23: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image1_0_3_rename24: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image1_0_4_rename25: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image1_0_5_rename26: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image1_0_6_rename27: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image1_1_7_rename28: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_image1_1_1_rename29: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image1_1_2_rename30: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image1_1_3_rename31: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image1_1_4_rename32: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image1_1_5_rename33: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image1_1_6_rename34: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image1_2_7_rename35: std_logic_vector (2 DOWNTO 1) ;
   
   signal o_image1_2_1_rename36: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image1_2_2_rename37: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image1_2_3_rename38: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image1_2_4_rename39: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image1_2_5_rename40: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image1_2_6_rename41: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image2_0_7_rename42: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_image2_0_1_rename43: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image2_0_2_rename44: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image2_0_3_rename45: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image2_0_4_rename46: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image2_0_5_rename47: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image2_0_6_rename48: std_logic_vector (0 DOWNTO 0) ;
   
   signal o_image2_1_7_rename49: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_image2_1_1_rename50: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image2_1_2_rename51: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image2_1_3_rename52: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image2_1_4_rename53: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image2_1_5_rename54: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image2_1_6_rename55: std_logic_vector (1 DOWNTO 1) ;
   
   signal o_image2_2_7_rename56: std_logic_vector (2 DOWNTO 1) ;
   
   signal o_image2_2_1_rename57: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image2_2_2_rename58: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image2_2_3_rename59: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image2_2_4_rename60: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image2_2_5_rename61: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_image2_2_6_rename62: std_logic_vector (2 DOWNTO 2) ;
   
   signal rtlcn390, o_valid, rtlcn388, not_rtlc5n55, rtlcn387, rtlcn383, 
      not_rtlc2n300, rtlcn382, rtlcn380, rtlcn378, not_rtlc2n301: std_logic
    ;
   
   signal mem_wrn_current_2n4ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal not_debug_num_1_0, not_debug_num_1_1, not_debug_num_1_2: std_logic
    ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_3n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlcn250, rtlcn249, rtlcn239: std_logic ;
   
   signal debug_num_1: std_logic_vector (2 DOWNTO 0) ;
   
   signal buffer2_3n3ss1_15, buffer2_3n3ss1_14, buffer2_3n3ss1_13, 
      buffer2_3n3ss1_12, buffer2_3n3ss1_11, buffer2_3n3ss1_10, 
      buffer2_3n3ss1_9, buffer2_3n3ss1_8, rtlcn142, not_rtlcn250: std_logic
    ;
   
   signal buffer2_3n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn118, not_rtlcn249, rtlc5n55, rtlc5n53, rtlc5n62, rtlc3n99, 
      rtlc3n427, rtlc3n339, rtlc2n119, rtlcs2, not_rtlcs0, 
      not_rtlc2_X_0_n244, rtlc2_X_0_n244, rtlc2n264, rtlc2n263, debug_valid, 
      rtlcs1, not_rtlc2n227, rtlc2n227, rtlc2n300, rtlc2n301, not_i_valid, 
      rtlc2n120, rtlc2n203, not_rtlcs1, not_debug_valid, not_rtlc2n207, 
      rtlc2n207, rtlcs0, rtlc2n299, not_rtlc2n120, rtlc2n285, rtlc0n26, 
      busySignalDelayed, busySignal, rtlc0n28: std_logic ;
   
   signal mem_q_2_7_rename63: std_logic_vector (2 DOWNTO 1) ;
   
   signal mem_q_2_1_rename64: std_logic_vector (2 DOWNTO 2) ;
   
   signal mem_q_2_2_rename65: std_logic_vector (2 DOWNTO 2) ;
   
   signal mem_q_2_3_rename66: std_logic_vector (2 DOWNTO 2) ;
   
   signal mem_q_2_4_rename67: std_logic_vector (2 DOWNTO 2) ;
   
   signal mem_q_2_5_rename68: std_logic_vector (2 DOWNTO 2) ;
   
   signal mem_q_2_6_rename69: std_logic_vector (2 DOWNTO 2) ;
   
   signal debug_num_0: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_q_1_7_rename70: std_logic_vector (1 DOWNTO 0) ;
   
   signal mem_q_1_1_rename71: std_logic_vector (1 DOWNTO 1) ;
   
   signal mem_q_1_2_rename72: std_logic_vector (1 DOWNTO 1) ;
   
   signal mem_q_1_3_rename73: std_logic_vector (1 DOWNTO 1) ;
   
   signal mem_q_1_4_rename74: std_logic_vector (1 DOWNTO 1) ;
   
   signal mem_q_1_5_rename75: std_logic_vector (1 DOWNTO 1) ;
   
   signal mem_q_1_6_rename76: std_logic_vector (1 DOWNTO 1) ;
   
   signal mem_q_0_7_rename77: std_logic_vector (1 DOWNTO 0) ;
   
   signal mem_q_0_1_rename78: std_logic_vector (0 DOWNTO 0) ;
   
   signal mem_q_0_2_rename79: std_logic_vector (0 DOWNTO 0) ;
   
   signal mem_q_0_3_rename80: std_logic_vector (0 DOWNTO 0) ;
   
   signal mem_q_0_4_rename81: std_logic_vector (0 DOWNTO 0) ;
   
   signal mem_q_0_5_rename82: std_logic_vector (0 DOWNTO 0) ;
   
   signal mem_q_0_6_rename83: std_logic_vector (0 DOWNTO 0) ;
   
   signal debug_num_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_column_0: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal PWR, GND: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   p_o_image1_9_7(1) <= o_image1_0_7_rename21(1) ;
   p_o_image1_9_1(0) <= o_image1_0_1_rename22(0) ;
   p_o_image1_9_2(0) <= o_image1_0_2_rename23(0) ;
   p_o_image1_9_3(0) <= o_image1_0_3_rename24(0) ;
   p_o_image1_9_4(0) <= o_image1_0_4_rename25(0) ;
   p_o_image1_9_5(0) <= o_image1_0_5_rename26(0) ;
   p_o_image1_9_6(0) <= o_image1_0_6_rename27(0) ;
   p_o_image1_9_7(0) <= o_image1_0_7_rename21(0) ;
   p_o_image1_8_7(1) <= o_image1_1_7_rename28(1) ;
   p_o_image1_8_1(1) <= o_image1_1_1_rename29(1) ;
   p_o_image1_8_2(1) <= o_image1_1_2_rename30(1) ;
   p_o_image1_8_3(1) <= o_image1_1_3_rename31(1) ;
   p_o_image1_8_4(1) <= o_image1_1_4_rename32(1) ;
   p_o_image1_8_5(1) <= o_image1_1_5_rename33(1) ;
   p_o_image1_8_6(1) <= o_image1_1_6_rename34(1) ;
   p_o_image1_8_7(0) <= o_image1_1_7_rename28(0) ;
   p_o_image1_7(2) <= o_image1_2_7_rename35(2) ;
   p_o_image1_1(2) <= o_image1_2_1_rename36(2) ;
   p_o_image1_2(2) <= o_image1_2_2_rename37(2) ;
   p_o_image1_3(2) <= o_image1_2_3_rename38(2) ;
   p_o_image1_4(2) <= o_image1_2_4_rename39(2) ;
   p_o_image1_5(2) <= o_image1_2_5_rename40(2) ;
   p_o_image1_6(2) <= o_image1_2_6_rename41(2) ;
   p_o_image1_7(1) <= o_image1_2_7_rename35(1) ;
   p_o_image2_9_7(1) <= o_image2_0_7_rename42(1) ;
   p_o_image2_9_1(0) <= o_image2_0_1_rename43(0) ;
   p_o_image2_9_2(0) <= o_image2_0_2_rename44(0) ;
   p_o_image2_9_3(0) <= o_image2_0_3_rename45(0) ;
   p_o_image2_9_4(0) <= o_image2_0_4_rename46(0) ;
   p_o_image2_9_5(0) <= o_image2_0_5_rename47(0) ;
   p_o_image2_9_6(0) <= o_image2_0_6_rename48(0) ;
   p_o_image2_9_7(0) <= o_image2_0_7_rename42(0) ;
   p_o_image2_8_7(1) <= o_image2_1_7_rename49(1) ;
   p_o_image2_8_1(1) <= o_image2_1_1_rename50(1) ;
   p_o_image2_8_2(1) <= o_image2_1_2_rename51(1) ;
   p_o_image2_8_3(1) <= o_image2_1_3_rename52(1) ;
   p_o_image2_8_4(1) <= o_image2_1_4_rename53(1) ;
   p_o_image2_8_5(1) <= o_image2_1_5_rename54(1) ;
   p_o_image2_8_6(1) <= o_image2_1_6_rename55(1) ;
   p_o_image2_8_7(0) <= o_image2_1_7_rename49(0) ;
   p_o_image2_7(2) <= o_image2_2_7_rename56(2) ;
   p_o_image2_1(2) <= o_image2_2_1_rename57(2) ;
   p_o_image2_2(2) <= o_image2_2_2_rename58(2) ;
   p_o_image2_3(2) <= o_image2_2_3_rename59(2) ;
   p_o_image2_4(2) <= o_image2_2_4_rename60(2) ;
   p_o_image2_5(2) <= o_image2_2_5_rename61(2) ;
   p_o_image2_6(2) <= o_image2_2_6_rename62(2) ;
   p_o_image2_7(1) <= o_image2_2_7_rename56(1) ;
   p_o_valid <= o_valid ;
   p_debug_num_1(2) <= debug_num_1(2) ;
   p_debug_num_1(1) <= debug_num_1(1) ;
   p_debug_num_1(0) <= debug_num_1(0) ;
   p_debug_valid_rtlc2_100_and_2(2) <= debug_valid ;
   p_debug_num_0(2) <= debug_num_0(2) ;
   p_debug_num_0(1) <= debug_num_0(1) ;
   p_debug_num_0(0) <= debug_num_0(0) ;
   p_debug_num_2(0) <= debug_num_2(0) ;
   p_debug_num_2(1) <= debug_num_2(1) ;
   p_debug_num_2(2) <= debug_num_2(2) ;
   p_debug_num_2(3) <= debug_num_2(3) ;
   p_debug_num_2(4) <= debug_num_2(4) ;
   p_debug_num_2(5) <= debug_num_2(5) ;
   p_debug_num_2(6) <= debug_num_2(6) ;
   p_debug_num_2(7) <= debug_num_2(7) ;
   p_o_column(0) <= o_column_0 ;
   GND <= '0' ;
   PWR <= '1' ;
   u_mem1 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>o_column_0, 
      clock=>p_i_clock, data(7)=>debug_num_2(7), data(6)=>debug_num_2(6), 
      data(5)=>debug_num_2(5), data(4)=>debug_num_2(4), data(3)=>
      debug_num_2(3), data(2)=>debug_num_2(2), data(1)=>debug_num_2(1), 
      data(0)=>debug_num_2(0), wren=>debug_num_0(0), q(7)=>
      mem_q_0_7_rename77(0), q(6)=>mem_q_0_6_rename83(0), q(5)=>
      mem_q_0_5_rename82(0), q(4)=>mem_q_0_4_rename81(0), q(3)=>
      mem_q_0_3_rename80(0), q(2)=>mem_q_0_2_rename79(0), q(1)=>
      mem_q_0_1_rename78(0), q(0)=>mem_q_0_7_rename77(1));
   u_mem2 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>o_column_0, 
      clock=>p_i_clock, data(7)=>debug_num_2(7), data(6)=>debug_num_2(6), 
      data(5)=>debug_num_2(5), data(4)=>debug_num_2(4), data(3)=>
      debug_num_2(3), data(2)=>debug_num_2(2), data(1)=>debug_num_2(1), 
      data(0)=>debug_num_2(0), wren=>debug_num_0(1), q(7)=>
      mem_q_1_7_rename70(0), q(6)=>mem_q_1_6_rename76(1), q(5)=>
      mem_q_1_5_rename75(1), q(4)=>mem_q_1_4_rename74(1), q(3)=>
      mem_q_1_3_rename73(1), q(2)=>mem_q_1_2_rename72(1), q(1)=>
      mem_q_1_1_rename71(1), q(0)=>mem_q_1_7_rename70(1));
   u_mem3 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>o_column_0, 
      clock=>p_i_clock, data(7)=>debug_num_2(7), data(6)=>debug_num_2(6), 
      data(5)=>debug_num_2(5), data(4)=>debug_num_2(4), data(3)=>
      debug_num_2(3), data(2)=>debug_num_2(2), data(1)=>debug_num_2(1), 
      data(0)=>debug_num_2(0), wren=>debug_num_0(2), q(7)=>
      mem_q_2_7_rename63(1), q(6)=>mem_q_2_6_rename69(2), q(5)=>
      mem_q_2_5_rename68(2), q(4)=>mem_q_2_4_rename67(2), q(3)=>
      mem_q_2_3_rename66(2), q(2)=>mem_q_2_2_rename65(2), q(1)=>
      mem_q_2_1_rename64(2), q(0)=>mem_q_2_7_rename63(2));
   p_o_mode(0) <= p_i_reset OR rtlc0n28 ;
   rtlc0n26 <= busySignal OR busySignalDelayed ;
   rtlc0n28 <= rtlc0n26 OR p_i_valid_rtlc2_54_or_1(2) ;
   rtlc2n299 <= rtlc2n285 AND not_rtlc2n120 ;
   rtlc2n285 <= rtlcs0 AND p_i_valid_rtlc2_54_or_1(2) ;
   not_rtlc2n207 <= NOT rtlc2n207 ;
   rtlc2n203 <= not_debug_valid OR not_rtlcs1 ;
   rtlc2_32_or_0 : or_3u_3u port map ( a(2)=>rtlc2n120, a(1)=>not_i_valid, 
      a(0)=>rtlcs0, d=>rtlc2n301);
   rtlc2n300 <= rtlc2n120 OR not_i_valid ;
   not_rtlc2n227 <= NOT rtlc2n227 ;
   rtlc2n263 <= rtlcs1 AND debug_valid ;
   rtlc2n264 <= rtlc2n120 OR rtlc2n263 ;
   not_rtlcs1 <= NOT rtlcs1 ;
   not_debug_valid <= NOT debug_valid ;
   rtlc2_54_or_1 : or_3u_3u port map ( a(2)=>p_i_valid_rtlc2_54_or_1(2), 
      a(1)=>not_debug_valid, a(0)=>not_rtlcs1, d=>rtlc2_X_0_n244);
   not_rtlc2_X_0_n244 <= NOT rtlc2_X_0_n244 ;
   not_i_valid <= NOT p_i_valid_rtlc2_54_or_1(2) ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_rtlc2n120 <= NOT rtlc2n120 ;
   rtlc2_100_and_2 : and_3u_3u port map ( a(2)=>rtlcs2, a(1)=>rtlcs1, a(0)=>
      debug_valid, d=>rtlc2n119);
   rtlc2n120 <= p_i_reset OR rtlc2n119 ;
   rtlc2n227 <= not_rtlc2n120 AND p_i_valid_rtlc2_54_or_1(2) ;
   rtlc3n99 <= rtlc3n339 AND rtlc3n427 ;
   rtlc3_443_or_3 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc3n339);
   rtlc3_469_or_4 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc3n427);
   rtlc5n62 <= p_i_valid_rtlc2_54_or_1(2) OR busySignal ;
   rtlc5n53 <= rtlcs2 AND rtlcs1 ;
   rtlc5n55 <= rtlc5n53 AND debug_valid ;
   buffer2_select_3i1Bus11_0 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_7_rename77(1), 
      b(1)=>buffer2_3n2ss1(0), b(0)=>mem_q_2_7_rename63(2), d=>
      buffer2_3n4ss1(0));
   buffer2_select_3i1Bus11_1 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_1_rename78(0), 
      b(1)=>buffer2_3n2ss1(1), b(0)=>mem_q_2_1_rename64(2), d=>
      buffer2_3n4ss1(1));
   buffer2_select_3i1Bus11_2 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_2_rename79(0), 
      b(1)=>buffer2_3n2ss1(2), b(0)=>mem_q_2_2_rename65(2), d=>
      buffer2_3n4ss1(2));
   buffer2_select_3i1Bus11_3 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_3_rename80(0), 
      b(1)=>buffer2_3n2ss1(3), b(0)=>mem_q_2_3_rename66(2), d=>
      buffer2_3n4ss1(3));
   buffer2_select_3i1Bus11_4 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_4_rename81(0), 
      b(1)=>buffer2_3n2ss1(4), b(0)=>mem_q_2_4_rename67(2), d=>
      buffer2_3n4ss1(4));
   buffer2_select_3i1Bus11_5 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_5_rename82(0), 
      b(1)=>buffer2_3n2ss1(5), b(0)=>mem_q_2_5_rename68(2), d=>
      buffer2_3n4ss1(5));
   buffer2_select_3i1Bus11_6 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_6_rename83(0), 
      b(1)=>buffer2_3n2ss1(6), b(0)=>mem_q_2_6_rename69(2), d=>
      buffer2_3n4ss1(6));
   buffer2_select_3i1Bus11_7 : select_3_3 port map ( a(2)=>not_rtlcn249, 
      a(1)=>debug_num_1(0), a(0)=>rtlcn118, b(2)=>mem_q_0_7_rename77(0), 
      b(1)=>buffer2_3n2ss1(7), b(0)=>mem_q_2_7_rename63(1), d=>
      buffer2_3n4ss1(7));
   buffer2_select_3i1Bus11_8 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_7_rename70(1), 
      b(1)=>buffer2_3n3ss1_8, b(0)=>mem_q_2_7_rename63(2), d=>
      buffer2_3n4ss1(8));
   buffer2_select_3i1Bus11_9 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_1_rename71(1), 
      b(1)=>buffer2_3n3ss1_9, b(0)=>mem_q_2_1_rename64(2), d=>
      buffer2_3n4ss1(9));
   buffer2_select_3i1Bus11_10 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_2_rename72(1), 
      b(1)=>buffer2_3n3ss1_10, b(0)=>mem_q_2_2_rename65(2), d=>
      buffer2_3n4ss1(10));
   buffer2_select_3i1Bus11_11 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_3_rename73(1), 
      b(1)=>buffer2_3n3ss1_11, b(0)=>mem_q_2_3_rename66(2), d=>
      buffer2_3n4ss1(11));
   buffer2_select_3i1Bus11_12 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_4_rename74(1), 
      b(1)=>buffer2_3n3ss1_12, b(0)=>mem_q_2_4_rename67(2), d=>
      buffer2_3n4ss1(12));
   buffer2_select_3i1Bus11_13 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_5_rename75(1), 
      b(1)=>buffer2_3n3ss1_13, b(0)=>mem_q_2_5_rename68(2), d=>
      buffer2_3n4ss1(13));
   buffer2_select_3i1Bus11_14 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_6_rename76(1), 
      b(1)=>buffer2_3n3ss1_14, b(0)=>mem_q_2_6_rename69(2), d=>
      buffer2_3n4ss1(14));
   buffer2_select_3i1Bus11_15 : select_3_3 port map ( a(2)=>not_rtlcn250, 
      a(1)=>debug_num_1(1), a(0)=>rtlcn142, b(2)=>mem_q_1_7_rename70(0), 
      b(1)=>buffer2_3n3ss1_15, b(0)=>mem_q_2_7_rename63(1), d=>
      buffer2_3n4ss1(15));
   rtlcn118 <= rtlc3n339 AND debug_num_1(1) ;
   rtlcn142 <= rtlc3n339 AND debug_num_1(0) ;
   p_o_mode(1) <= NOT p_i_reset ;
   rtlcn239 <= debug_num_1(2) OR rtlc3n339 ;
   not_rtlcn249 <= NOT rtlcn249 ;
   not_rtlcn250 <= NOT rtlcn250 ;
   rtlc2n207 <= not_rtlcs0 when p_i_valid_rtlc2_54_or_1(2) = '1' else 
   rtlc2n203 ;
   buffer2_3n2ss1(0) <= mem_q_1_7_rename70(1) when rtlc3n339 = '1' else 
   debug_num_2(0) ;
   buffer2_3n2ss1(1) <= mem_q_1_1_rename71(1) when rtlc3n339 = '1' else 
   debug_num_2(1) ;
   buffer2_3n2ss1(2) <= mem_q_1_2_rename72(1) when rtlc3n339 = '1' else 
   debug_num_2(2) ;
   buffer2_3n2ss1(3) <= mem_q_1_3_rename73(1) when rtlc3n339 = '1' else 
   debug_num_2(3) ;
   buffer2_3n2ss1(4) <= mem_q_1_4_rename74(1) when rtlc3n339 = '1' else 
   debug_num_2(4) ;
   buffer2_3n2ss1(5) <= mem_q_1_5_rename75(1) when rtlc3n339 = '1' else 
   debug_num_2(5) ;
   buffer2_3n2ss1(6) <= mem_q_1_6_rename76(1) when rtlc3n339 = '1' else 
   debug_num_2(6) ;
   buffer2_3n2ss1(7) <= mem_q_1_7_rename70(0) when rtlc3n339 = '1' else 
   debug_num_2(7) ;
   buffer2_3n3ss1_8 <= mem_q_0_7_rename77(1) when rtlc3n339 = '1' else 
   debug_num_2(0) ;
   buffer2_3n3ss1_9 <= mem_q_0_1_rename78(0) when rtlc3n339 = '1' else 
   debug_num_2(1) ;
   buffer2_3n3ss1_10 <= mem_q_0_2_rename79(0) when rtlc3n339 = '1' else 
   debug_num_2(2) ;
   buffer2_3n3ss1_11 <= mem_q_0_3_rename80(0) when rtlc3n339 = '1' else 
   debug_num_2(3) ;
   buffer2_3n3ss1_12 <= mem_q_0_4_rename81(0) when rtlc3n339 = '1' else 
   debug_num_2(4) ;
   buffer2_3n3ss1_13 <= mem_q_0_5_rename82(0) when rtlc3n339 = '1' else 
   debug_num_2(5) ;
   buffer2_3n3ss1_14 <= mem_q_0_6_rename83(0) when rtlc3n339 = '1' else 
   debug_num_2(6) ;
   buffer2_3n3ss1_15 <= mem_q_0_7_rename77(0) when rtlc3n339 = '1' else 
   debug_num_2(7) ;
   buffer2_3n4ss1(16) <= debug_num_2(0) when rtlcn239 = '1' else 
   mem_q_2_7_rename63(2) ;
   buffer2_3n4ss1(17) <= debug_num_2(1) when rtlcn239 = '1' else 
   mem_q_2_1_rename64(2) ;
   buffer2_3n4ss1(18) <= debug_num_2(2) when rtlcn239 = '1' else 
   mem_q_2_2_rename65(2) ;
   buffer2_3n4ss1(19) <= debug_num_2(3) when rtlcn239 = '1' else 
   mem_q_2_3_rename66(2) ;
   buffer2_3n4ss1(20) <= debug_num_2(4) when rtlcn239 = '1' else 
   mem_q_2_4_rename67(2) ;
   buffer2_3n4ss1(21) <= debug_num_2(5) when rtlcn239 = '1' else 
   mem_q_2_5_rename68(2) ;
   buffer2_3n4ss1(22) <= debug_num_2(6) when rtlcn239 = '1' else 
   mem_q_2_6_rename69(2) ;
   buffer2_3n4ss1(23) <= debug_num_2(7) when rtlcn239 = '1' else 
   mem_q_2_7_rename63(1) ;
   mem_wrn_current_2n4ss1(1) <= debug_num_1(0) AND not_i_valid ;
   rtlc_544_and_21 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>o_column_0, d=>rtlcs1);
   rtlc_545_and_22 : and_8u_8u port map ( a(7)=>row(7), a(6)=>row(6), a(5)=>
      row(5), a(4)=>row(4), a(3)=>row(3), a(2)=>row(2), a(1)=>row(1), a(0)=>
      row(0), d=>rtlcs2);
   not_debug_num_1_2 <= NOT debug_num_1(2) ;
   not_debug_num_1_1 <= NOT debug_num_1(1) ;
   not_debug_num_1_0 <= NOT debug_num_1(0) ;
   rtlc_549_and_23 : and_3u_3u port map ( a(2)=>not_debug_num_1_2, a(1)=>
      not_debug_num_1_1, a(0)=>not_debug_num_1_0, d=>rtlcs0);
   mem_wrn_current_2n4ss1(2) <= debug_num_1(1) AND not_i_valid ;
   mem_wrn_current_2n4ss1(0) <= debug_num_1(2) OR p_i_valid_rtlc2_54_or_1(2)
    ;
   rtlcn249 <= debug_num_1(0) OR rtlcn118 ;
   rtlcn250 <= debug_num_1(1) OR rtlcn142 ;
   modgen_counter_row : counter_up_cnt_en_sclear_clock_0_8 port map ( clock
      =>p_i_clock, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), 
      q(3)=>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(7)=>DANGLING(0), data(6)=>DANGLING(1), 
      data(5)=>DANGLING(2), data(4)=>DANGLING(3), data(3)=>DANGLING(4), 
      data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>DANGLING(7), aset
      =>GND, sclear=>rtlc2n120, updn=>PWR, cnt_en=>not_rtlc2_X_0_n244);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>p_i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>o_column_0, clk_en=>not_rtlc2n227, aclear=>GND, sload
      =>GND, data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>DANGLING(
      10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>DANGLING(
      13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, sclear=>
      rtlc2n264, updn=>PWR, cnt_en=>debug_valid);
   o_column_dec7_0 : dec_7u_7u_0 port map ( cin=>GND, a(6)=>column(7), a(5)
      =>column(6), a(4)=>column(5), a(3)=>column(4), a(2)=>column(3), a(1)=>
      column(2), a(0)=>column(1), d(6)=>p_o_column(7), d(5)=>p_o_column(6), 
      d(4)=>p_o_column(5), d(3)=>p_o_column(4), d(2)=>p_o_column(3), d(1)=>
      p_o_column(2), d(0)=>p_o_column(1), cout=>DANGLING(16));
   not_rtlc2n301 <= NOT rtlc2n301 ;
   rtlcn378 <= debug_num_1(2) AND not_rtlc2n301 ;
   rtlcn380 <= debug_num_1(1) AND not_rtlc2n301 ;
   rtlcn382 <= debug_num_1(0) OR rtlc2n299 ;
   not_rtlc2n300 <= NOT rtlc2n300 ;
   rtlcn383 <= rtlcn382 AND not_rtlc2n300 ;
   rtlcn387 <= rtlc3n99 OR not_debug_valid ;
   not_rtlc5n55 <= NOT rtlc5n55 ;
   rtlcn388 <= rtlc5n62 AND not_rtlc5n55 ;
   rtlcn390 <= debug_valid when rtlcn387 = '1' else o_valid ;
   DFFPC (p_i_valid_rtlc2_54_or_1(2),GND,GND,p_i_clock,debug_valid) ;
   DFFRSE (mem_wrn_current_2n4ss1(2),GND,rtlc2n120,not_rtlc2n207,p_i_clock,
   debug_num_1(2)) ;
   DFFRSE (mem_wrn_current_2n4ss1(1),GND,rtlc2n120,not_rtlc2n207,p_i_clock,
   debug_num_1(1)) ;
   DFFRSE (mem_wrn_current_2n4ss1(0),GND,rtlc2n120,not_rtlc2n207,p_i_clock,
   debug_num_1(0)) ;
   DFFRSE (rtlcn378,GND,GND,PWR,p_i_clock,debug_num_0(2)) ;
   DFFRSE (rtlcn380,GND,GND,PWR,p_i_clock,debug_num_0(1)) ;
   DFFPCE (buffer2_3n4ss1(23),GND,GND,debug_valid,p_i_clock,
   o_image2_2_7_rename56(1)) ;
   DFFPCE (buffer2_3n4ss1(22),GND,GND,debug_valid,p_i_clock,
   o_image2_2_6_rename62(2)) ;
   DFFPCE (buffer2_3n4ss1(21),GND,GND,debug_valid,p_i_clock,
   o_image2_2_5_rename61(2)) ;
   DFFPCE (buffer2_3n4ss1(20),GND,GND,debug_valid,p_i_clock,
   o_image2_2_4_rename60(2)) ;
   DFFPCE (buffer2_3n4ss1(19),GND,GND,debug_valid,p_i_clock,
   o_image2_2_3_rename59(2)) ;
   DFFPCE (buffer2_3n4ss1(18),GND,GND,debug_valid,p_i_clock,
   o_image2_2_2_rename58(2)) ;
   DFFPCE (buffer2_3n4ss1(17),GND,GND,debug_valid,p_i_clock,
   o_image2_2_1_rename57(2)) ;
   DFFPCE (buffer2_3n4ss1(16),GND,GND,debug_valid,p_i_clock,
   o_image2_2_7_rename56(2)) ;
   DFFPCE (buffer2_3n4ss1(15),GND,GND,debug_valid,p_i_clock,
   o_image2_1_7_rename49(0)) ;
   DFFPCE (buffer2_3n4ss1(14),GND,GND,debug_valid,p_i_clock,
   o_image2_1_6_rename55(1)) ;
   DFFPCE (buffer2_3n4ss1(13),GND,GND,debug_valid,p_i_clock,
   o_image2_1_5_rename54(1)) ;
   DFFPCE (buffer2_3n4ss1(12),GND,GND,debug_valid,p_i_clock,
   o_image2_1_4_rename53(1)) ;
   DFFPCE (buffer2_3n4ss1(11),GND,GND,debug_valid,p_i_clock,
   o_image2_1_3_rename52(1)) ;
   DFFPCE (buffer2_3n4ss1(10),GND,GND,debug_valid,p_i_clock,
   o_image2_1_2_rename51(1)) ;
   DFFPCE (buffer2_3n4ss1(9),GND,GND,debug_valid,p_i_clock,
   o_image2_1_1_rename50(1)) ;
   DFFPCE (buffer2_3n4ss1(8),GND,GND,debug_valid,p_i_clock,
   o_image2_1_7_rename49(1)) ;
   DFFPCE (buffer2_3n4ss1(7),GND,GND,debug_valid,p_i_clock,
   o_image2_0_7_rename42(0)) ;
   DFFPCE (buffer2_3n4ss1(6),GND,GND,debug_valid,p_i_clock,
   o_image2_0_6_rename48(0)) ;
   DFFPCE (buffer2_3n4ss1(5),GND,GND,debug_valid,p_i_clock,
   o_image2_0_5_rename47(0)) ;
   DFFPCE (buffer2_3n4ss1(4),GND,GND,debug_valid,p_i_clock,
   o_image2_0_4_rename46(0)) ;
   DFFPCE (buffer2_3n4ss1(3),GND,GND,debug_valid,p_i_clock,
   o_image2_0_3_rename45(0)) ;
   DFFPCE (buffer2_3n4ss1(2),GND,GND,debug_valid,p_i_clock,
   o_image2_0_2_rename44(0)) ;
   DFFPCE (buffer2_3n4ss1(1),GND,GND,debug_valid,p_i_clock,
   o_image2_0_1_rename43(0)) ;
   DFFPCE (buffer2_3n4ss1(0),GND,GND,debug_valid,p_i_clock,
   o_image2_0_7_rename42(1)) ;
   DFFPCE (o_image2_2_7_rename56(1),GND,GND,debug_valid,p_i_clock,
   o_image1_2_7_rename35(1)) ;
   DFFPCE (o_image2_2_6_rename62(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_6_rename41(2)) ;
   DFFPCE (o_image2_2_5_rename61(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_5_rename40(2)) ;
   DFFPCE (o_image2_2_4_rename60(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_4_rename39(2)) ;
   DFFPCE (o_image2_2_3_rename59(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_3_rename38(2)) ;
   DFFPCE (o_image2_2_2_rename58(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_2_rename37(2)) ;
   DFFPCE (o_image2_2_1_rename57(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_1_rename36(2)) ;
   DFFPCE (o_image2_2_7_rename56(2),GND,GND,debug_valid,p_i_clock,
   o_image1_2_7_rename35(2)) ;
   DFFPCE (o_image2_1_7_rename49(0),GND,GND,debug_valid,p_i_clock,
   o_image1_1_7_rename28(0)) ;
   DFFPCE (o_image2_1_6_rename55(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_6_rename34(1)) ;
   DFFPCE (o_image2_1_5_rename54(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_5_rename33(1)) ;
   DFFPCE (o_image2_1_4_rename53(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_4_rename32(1)) ;
   DFFPCE (o_image2_1_3_rename52(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_3_rename31(1)) ;
   DFFPCE (o_image2_1_2_rename51(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_2_rename30(1)) ;
   DFFPCE (o_image2_1_1_rename50(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_1_rename29(1)) ;
   DFFPCE (o_image2_1_7_rename49(1),GND,GND,debug_valid,p_i_clock,
   o_image1_1_7_rename28(1)) ;
   DFFPCE (o_image2_0_7_rename42(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_7_rename21(0)) ;
   DFFPCE (o_image2_0_6_rename48(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_6_rename27(0)) ;
   DFFPCE (o_image2_0_5_rename47(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_5_rename26(0)) ;
   DFFPCE (o_image2_0_4_rename46(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_4_rename25(0)) ;
   DFFPCE (o_image2_0_3_rename45(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_3_rename24(0)) ;
   DFFPCE (o_image2_0_2_rename44(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_2_rename23(0)) ;
   DFFPCE (o_image2_0_1_rename43(0),GND,GND,debug_valid,p_i_clock,
   o_image1_0_1_rename22(0)) ;
   DFFPCE (o_image2_0_7_rename42(1),GND,GND,debug_valid,p_i_clock,
   o_image1_0_7_rename21(1)) ;
   DFFPCE (o_image1_2_7_rename35(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_7(1)) ;
   DFFPCE (o_image1_2_6_rename41(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_6(2)) ;
   DFFPCE (o_image1_2_5_rename40(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_5(2)) ;
   DFFPCE (o_image1_2_4_rename39(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_4(2)) ;
   DFFPCE (o_image1_2_3_rename38(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_3(2)) ;
   DFFPCE (o_image1_2_2_rename37(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_2(2)) ;
   DFFPCE (o_image1_2_1_rename36(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_1(2)) ;
   DFFPCE (o_image1_2_7_rename35(2),GND,GND,debug_valid,p_i_clock,
   p_o_image0_7(2)) ;
   DFFPCE (o_image1_1_7_rename28(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_7(0)) ;
   DFFPCE (o_image1_1_6_rename34(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_6(1)) ;
   DFFPCE (o_image1_1_5_rename33(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_5(1)) ;
   DFFPCE (o_image1_1_4_rename32(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_4(1)) ;
   DFFPCE (o_image1_1_3_rename31(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_3(1)) ;
   DFFPCE (o_image1_1_2_rename30(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_2(1)) ;
   DFFPCE (o_image1_1_1_rename29(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_1(1)) ;
   DFFPCE (o_image1_1_7_rename28(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_8_7(1)) ;
   DFFPCE (o_image1_0_7_rename21(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_7(0)) ;
   DFFPCE (o_image1_0_6_rename27(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_6(0)) ;
   DFFPCE (o_image1_0_5_rename26(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_5(0)) ;
   DFFPCE (o_image1_0_4_rename25(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_4(0)) ;
   DFFPCE (o_image1_0_3_rename24(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_3(0)) ;
   DFFPCE (o_image1_0_2_rename23(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_2(0)) ;
   DFFPCE (o_image1_0_1_rename22(0),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_1(0)) ;
   DFFPCE (o_image1_0_7_rename21(1),GND,GND,debug_valid,p_i_clock,
   p_o_image0_9_7(1)) ;
   DFFPC (busySignal,GND,GND,p_i_clock,busySignalDelayed) ;
   DFFPC (row(7),GND,GND,p_i_clock,p_o_row(7)) ;
   DFFPC (row(6),GND,GND,p_i_clock,p_o_row(6)) ;
   DFFPC (row(5),GND,GND,p_i_clock,p_o_row(5)) ;
   DFFPC (row(4),GND,GND,p_i_clock,p_o_row(4)) ;
   DFFPC (row(3),GND,GND,p_i_clock,p_o_row(3)) ;
   DFFPC (row(2),GND,GND,p_i_clock,p_o_row(2)) ;
   DFFPC (row(1),GND,GND,p_i_clock,p_o_row(1)) ;
   DFFPC (row(0),GND,GND,p_i_clock,p_o_row(0)) ;
   DFFRSE (rtlcn388,GND,GND,PWR,p_i_clock,busySignal) ;
   DFFPC (p_i_pixel(7),GND,GND,p_i_clock,debug_num_2(7)) ;
   DFFPC (p_i_pixel(6),GND,GND,p_i_clock,debug_num_2(6)) ;
   DFFPC (p_i_pixel(5),GND,GND,p_i_clock,debug_num_2(5)) ;
   DFFPC (p_i_pixel(4),GND,GND,p_i_clock,debug_num_2(4)) ;
   DFFPC (p_i_pixel(3),GND,GND,p_i_clock,debug_num_2(3)) ;
   DFFPC (p_i_pixel(2),GND,GND,p_i_clock,debug_num_2(2)) ;
   DFFPC (p_i_pixel(1),GND,GND,p_i_clock,debug_num_2(1)) ;
   DFFPC (p_i_pixel(0),GND,GND,p_i_clock,debug_num_2(0)) ;
   DFFPC (rtlcn383,GND,GND,p_i_clock,debug_num_0(0)) ;
   DFFRSE (rtlcn390,GND,GND,PWR,p_i_clock,o_valid) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
         o_row : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
         p_i_clock : IN std_logic) ;
   end component ;
   signal o_mode_1_EXMPLR398: std_logic ;
   
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal m_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal m_o_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_valid: std_logic ;
   
   signal f_t1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_i_mode_next: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_17_EXMPLR474, not_rtlcs0, rtlc11n27, rtlc12n25, 
      rtlc13n187, rtlc13n197, rtlcs0, rtlcs1, rtlcs2, not_f_state_3, 
      not_f_state_2, not_f_state_1: std_logic ;
   
   signal o_image0_0_EXMPLR558: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR559: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR560: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR561: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR563: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR564: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR565: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR566: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn9, rtlcn11, rtlcn13, rtlcn17, rtlcn20, rtlcn25, rtlcn26: 
   std_logic ;

begin
   o_mode(1) <= o_mode_1_EXMPLR398 ;
   o_image0_0(7) <= o_image0_0_EXMPLR558(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR558(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR558(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR558(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR558(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR558(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR558(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR558(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR559(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR559(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR559(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR559(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR559(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR559(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR559(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR559(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR560(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR560(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR560(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR560(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR560(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR560(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR560(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR560(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR561(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR561(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR561(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR561(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR561(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR561(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR561(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR561(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR563(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR563(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR563(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR563(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR563(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR563(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR563(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR563(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR564(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR564(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR564(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR564(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR564(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR564(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR564(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR564(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR565(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR565(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR565(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR565(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR565(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR565(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR565(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR565(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR566(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR566(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR566(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR566(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR566(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR566(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR566(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR566(0) ;
   debug_led_red(17) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(16) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(15) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(14) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(13) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(12) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(11) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(10) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(9) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(8) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(7) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(6) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(5) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(4) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(3) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(2) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(1) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red(0) <= debug_led_red_17_EXMPLR474 ;
   debug_led_grn(5) <= debug_led_red_17_EXMPLR474 ;
   debug_led_grn(4) <= debug_led_red_17_EXMPLR474 ;
   debug_led_grn(3) <= debug_led_red_17_EXMPLR474 ;
   debug_led_grn(2) <= debug_led_red_17_EXMPLR474 ;
   debug_led_grn(1) <= debug_led_red_17_EXMPLR474 ;
   debug_led_grn(0) <= debug_led_red_17_EXMPLR474 ;
   debug_led_red_17_EXMPLR474 <= '0' ;
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
      f_b3(0), i1(7)=>f_i1(7), i1(6)=>f_i1(6), i1(5)=>f_i1(5), i1(4)=>
      f_i1(4), i1(3)=>f_i1(3), i1(2)=>f_i1(2), i1(1)=>f_i1(1), i1(0)=>
      f_i1(0), i2(7)=>f_i2(7), i2(6)=>f_i2(6), i2(5)=>f_i2(5), i2(4)=>
      f_i2(4), i2(3)=>f_i2(3), i2(2)=>f_i2(2), i2(1)=>f_i2(1), i2(0)=>
      f_i2(0), i_clock=>i_clock, i_reset=>i_reset, i_valid=>rtlc11n27, 
      i_mode(1)=>f_i_mode(1), i_mode(0)=>f_i_mode(0), i_row(7)=>f_i_row(7), 
      i_row(6)=>f_i_row(6), i_row(5)=>f_i_row(5), i_row(4)=>f_i_row(4), 
      i_row(3)=>f_i_row(3), i_row(2)=>f_i_row(2), i_row(1)=>f_i_row(1), 
      i_row(0)=>f_i_row(0), o_dir(2)=>o_dir(2), o_dir(1)=>o_dir(1), o_dir(0)
      =>o_dir(0), o_edge=>o_edge, o_valid=>o_valid, o_mode(1)=>f_o_mode(1), 
      o_mode(0)=>f_o_mode(0), o_row(7)=>o_row(7), o_row(6)=>o_row(6), 
      o_row(5)=>o_row(5), o_row(4)=>o_row(4), o_row(3)=>o_row(3), o_row(2)=>
      o_row(2), o_row(1)=>o_row(1), o_row(0)=>o_row(0));
   rtlc11n27 <= m_o_valid OR not_rtlcs0 ;
   o_mode(0) <= i_reset OR rtlc12n25 ;
   rtlc12n25 <= rtlcs2 OR rtlcs1 ;
   o_mode_1_EXMPLR398 <= NOT i_reset ;
   f_t1(0) <= o_image0_2_EXMPLR560(0) when rtlcs0 = '1' else f_t1_next(0) ;
   f_t1(1) <= o_image0_2_EXMPLR560(1) when rtlcs0 = '1' else f_t1_next(1) ;
   f_t1(2) <= o_image0_2_EXMPLR560(2) when rtlcs0 = '1' else f_t1_next(2) ;
   f_t1(3) <= o_image0_2_EXMPLR560(3) when rtlcs0 = '1' else f_t1_next(3) ;
   f_t1(4) <= o_image0_2_EXMPLR560(4) when rtlcs0 = '1' else f_t1_next(4) ;
   f_t1(5) <= o_image0_2_EXMPLR560(5) when rtlcs0 = '1' else f_t1_next(5) ;
   f_t1(6) <= o_image0_2_EXMPLR560(6) when rtlcs0 = '1' else f_t1_next(6) ;
   f_t1(7) <= o_image0_2_EXMPLR560(7) when rtlcs0 = '1' else f_t1_next(7) ;
   f_t2(0) <= o_image0_1_EXMPLR559(0) when rtlcs0 = '1' else f_t2_next(0) ;
   f_t2(1) <= o_image0_1_EXMPLR559(1) when rtlcs0 = '1' else f_t2_next(1) ;
   f_t2(2) <= o_image0_1_EXMPLR559(2) when rtlcs0 = '1' else f_t2_next(2) ;
   f_t2(3) <= o_image0_1_EXMPLR559(3) when rtlcs0 = '1' else f_t2_next(3) ;
   f_t2(4) <= o_image0_1_EXMPLR559(4) when rtlcs0 = '1' else f_t2_next(4) ;
   f_t2(5) <= o_image0_1_EXMPLR559(5) when rtlcs0 = '1' else f_t2_next(5) ;
   f_t2(6) <= o_image0_1_EXMPLR559(6) when rtlcs0 = '1' else f_t2_next(6) ;
   f_t2(7) <= o_image0_1_EXMPLR559(7) when rtlcs0 = '1' else f_t2_next(7) ;
   f_t3(0) <= o_image0_0_EXMPLR558(0) when rtlcs0 = '1' else f_t3_next(0) ;
   f_t3(1) <= o_image0_0_EXMPLR558(1) when rtlcs0 = '1' else f_t3_next(1) ;
   f_t3(2) <= o_image0_0_EXMPLR558(2) when rtlcs0 = '1' else f_t3_next(2) ;
   f_t3(3) <= o_image0_0_EXMPLR558(3) when rtlcs0 = '1' else f_t3_next(3) ;
   f_t3(4) <= o_image0_0_EXMPLR558(4) when rtlcs0 = '1' else f_t3_next(4) ;
   f_t3(5) <= o_image0_0_EXMPLR558(5) when rtlcs0 = '1' else f_t3_next(5) ;
   f_t3(6) <= o_image0_0_EXMPLR558(6) when rtlcs0 = '1' else f_t3_next(6) ;
   f_t3(7) <= o_image0_0_EXMPLR558(7) when rtlcs0 = '1' else f_t3_next(7) ;
   f_b1(0) <= o_image2_0_EXMPLR564(0) when rtlcs0 = '1' else f_b1_next(0) ;
   f_b1(1) <= o_image2_0_EXMPLR564(1) when rtlcs0 = '1' else f_b1_next(1) ;
   f_b1(2) <= o_image2_0_EXMPLR564(2) when rtlcs0 = '1' else f_b1_next(2) ;
   f_b1(3) <= o_image2_0_EXMPLR564(3) when rtlcs0 = '1' else f_b1_next(3) ;
   f_b1(4) <= o_image2_0_EXMPLR564(4) when rtlcs0 = '1' else f_b1_next(4) ;
   f_b1(5) <= o_image2_0_EXMPLR564(5) when rtlcs0 = '1' else f_b1_next(5) ;
   f_b1(6) <= o_image2_0_EXMPLR564(6) when rtlcs0 = '1' else f_b1_next(6) ;
   f_b1(7) <= o_image2_0_EXMPLR564(7) when rtlcs0 = '1' else f_b1_next(7) ;
   f_b2(0) <= o_image2_1_EXMPLR565(0) when rtlcs0 = '1' else f_b2_next(0) ;
   f_b2(1) <= o_image2_1_EXMPLR565(1) when rtlcs0 = '1' else f_b2_next(1) ;
   f_b2(2) <= o_image2_1_EXMPLR565(2) when rtlcs0 = '1' else f_b2_next(2) ;
   f_b2(3) <= o_image2_1_EXMPLR565(3) when rtlcs0 = '1' else f_b2_next(3) ;
   f_b2(4) <= o_image2_1_EXMPLR565(4) when rtlcs0 = '1' else f_b2_next(4) ;
   f_b2(5) <= o_image2_1_EXMPLR565(5) when rtlcs0 = '1' else f_b2_next(5) ;
   f_b2(6) <= o_image2_1_EXMPLR565(6) when rtlcs0 = '1' else f_b2_next(6) ;
   f_b2(7) <= o_image2_1_EXMPLR565(7) when rtlcs0 = '1' else f_b2_next(7) ;
   f_b3(0) <= o_image2_2_EXMPLR566(0) when rtlcs0 = '1' else f_b3_next(0) ;
   f_b3(1) <= o_image2_2_EXMPLR566(1) when rtlcs0 = '1' else f_b3_next(1) ;
   f_b3(2) <= o_image2_2_EXMPLR566(2) when rtlcs0 = '1' else f_b3_next(2) ;
   f_b3(3) <= o_image2_2_EXMPLR566(3) when rtlcs0 = '1' else f_b3_next(3) ;
   f_b3(4) <= o_image2_2_EXMPLR566(4) when rtlcs0 = '1' else f_b3_next(4) ;
   f_b3(5) <= o_image2_2_EXMPLR566(5) when rtlcs0 = '1' else f_b3_next(5) ;
   f_b3(6) <= o_image2_2_EXMPLR566(6) when rtlcs0 = '1' else f_b3_next(6) ;
   f_b3(7) <= o_image2_2_EXMPLR566(7) when rtlcs0 = '1' else f_b3_next(7) ;
   f_i1(0) <= o_image1_0_EXMPLR561(0) when rtlcs0 = '1' else f_i1_next(0) ;
   f_i1(1) <= o_image1_0_EXMPLR561(1) when rtlcs0 = '1' else f_i1_next(1) ;
   f_i1(2) <= o_image1_0_EXMPLR561(2) when rtlcs0 = '1' else f_i1_next(2) ;
   f_i1(3) <= o_image1_0_EXMPLR561(3) when rtlcs0 = '1' else f_i1_next(3) ;
   f_i1(4) <= o_image1_0_EXMPLR561(4) when rtlcs0 = '1' else f_i1_next(4) ;
   f_i1(5) <= o_image1_0_EXMPLR561(5) when rtlcs0 = '1' else f_i1_next(5) ;
   f_i1(6) <= o_image1_0_EXMPLR561(6) when rtlcs0 = '1' else f_i1_next(6) ;
   f_i1(7) <= o_image1_0_EXMPLR561(7) when rtlcs0 = '1' else f_i1_next(7) ;
   f_i2(0) <= o_image1_2_EXMPLR563(0) when rtlcs0 = '1' else f_i2_next(0) ;
   f_i2(1) <= o_image1_2_EXMPLR563(1) when rtlcs0 = '1' else f_i2_next(1) ;
   f_i2(2) <= o_image1_2_EXMPLR563(2) when rtlcs0 = '1' else f_i2_next(2) ;
   f_i2(3) <= o_image1_2_EXMPLR563(3) when rtlcs0 = '1' else f_i2_next(3) ;
   f_i2(4) <= o_image1_2_EXMPLR563(4) when rtlcs0 = '1' else f_i2_next(4) ;
   f_i2(5) <= o_image1_2_EXMPLR563(5) when rtlcs0 = '1' else f_i2_next(5) ;
   f_i2(6) <= o_image1_2_EXMPLR563(6) when rtlcs0 = '1' else f_i2_next(6) ;
   f_i2(7) <= o_image1_2_EXMPLR563(7) when rtlcs0 = '1' else f_i2_next(7) ;
   f_i_mode(0) <= m_o_mode(0) when rtlcs0 = '1' else f_i_mode_next(0) ;
   f_i_mode(1) <= m_o_mode(1) when rtlcs0 = '1' else f_i_mode_next(1) ;
   f_i_row(0) <= m_o_row(0) when rtlcs0 = '1' else f_i_row_next(0) ;
   f_i_row(1) <= m_o_row(1) when rtlcs0 = '1' else f_i_row_next(1) ;
   f_i_row(2) <= m_o_row(2) when rtlcs0 = '1' else f_i_row_next(2) ;
   f_i_row(3) <= m_o_row(3) when rtlcs0 = '1' else f_i_row_next(3) ;
   f_i_row(4) <= m_o_row(4) when rtlcs0 = '1' else f_i_row_next(4) ;
   f_i_row(5) <= m_o_row(5) when rtlcs0 = '1' else f_i_row_next(5) ;
   f_i_row(6) <= m_o_row(6) when rtlcs0 = '1' else f_i_row_next(6) ;
   f_i_row(7) <= m_o_row(7) when rtlcs0 = '1' else f_i_row_next(7) ;
   rtlc_337_and_44 : and_3u_3u port map ( a(2)=>o_mode_1_EXMPLR398, a(1)=>
      rtlcs0, a(0)=>rtlc11n27, d=>rtlc13n197);
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc13n187 <= o_mode_1_EXMPLR398 AND rtlc11n27 ;
   not_f_state_3 <= NOT f_state(3) ;
   not_f_state_2 <= NOT f_state(2) ;
   not_f_state_1 <= NOT f_state(1) ;
   rtlc_344_and_45 : and_4u_4u port map ( a(3)=>not_f_state_3, a(2)=>
      not_f_state_2, a(1)=>not_f_state_1, a(0)=>f_state(0), d=>rtlcs0);
   rtlcs2 <= f_o_mode(1) AND f_o_mode(0) ;
   rtlcs1 <= m_o_mode(1) AND m_o_mode(0) ;
   rtlcn9 <= f_state(2) AND o_mode_1_EXMPLR398 ;
   rtlcn11 <= rtlc11n27 OR i_reset ;
   rtlcn13 <= f_state(1) AND o_mode_1_EXMPLR398 ;
   rtlcn17 <= f_state(0) AND o_mode_1_EXMPLR398 ;
   rtlcn20 <= f_state(3) OR i_reset ;
   rtlcn25 <= rtlcn17 when rtlcn11 = '1' else f_state(1) ;
   rtlcn26 <= rtlcn20 when rtlcn11 = '1' else f_state(0) ;
   DFFPCE (m_o_row(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(7)) ;
   DFFPCE (m_o_row(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(6)) ;
   DFFPCE (m_o_row(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(5)) ;
   DFFPCE (m_o_row(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(4)) ;
   DFFPCE (m_o_row(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(3)) ;
   DFFPCE (m_o_row(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(2)) ;
   DFFPCE (m_o_row(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(1)) ;
   DFFPCE (m_o_row(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_row_next(0)) ;
   DFFPCE (m_o_mode(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_mode_next(1)) ;
   DFFPCE (m_o_mode(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n197,i_clock,f_i_mode_next(0)) ;
   DFFPCE (f_t1(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(7)) ;
   DFFPCE (f_t1(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(6)) ;
   DFFPCE (f_t1(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(5)) ;
   DFFPCE (f_t1(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(4)) ;
   DFFPCE (f_t1(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(3)) ;
   DFFPCE (f_t1(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(2)) ;
   DFFPCE (f_t1(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(1)) ;
   DFFPCE (f_t1(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i2_next(0)) ;
   DFFPCE (f_b1(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(7)) ;
   DFFPCE (f_b1(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(6)) ;
   DFFPCE (f_b1(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(5)) ;
   DFFPCE (f_b1(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(4)) ;
   DFFPCE (f_b1(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(3)) ;
   DFFPCE (f_b1(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(2)) ;
   DFFPCE (f_b1(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(1)) ;
   DFFPCE (f_b1(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_i1_next(0)) ;
   DFFPCE (f_i2(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(7)) ;
   DFFPCE (f_i2(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(6)) ;
   DFFPCE (f_i2(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(5)) ;
   DFFPCE (f_i2(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(4)) ;
   DFFPCE (f_i2(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(3)) ;
   DFFPCE (f_i2(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(2)) ;
   DFFPCE (f_i2(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(1)) ;
   DFFPCE (f_i2(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b3_next(0)) ;
   DFFPCE (f_b3(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(7)) ;
   DFFPCE (f_b3(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(6)) ;
   DFFPCE (f_b3(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(5)) ;
   DFFPCE (f_b3(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(4)) ;
   DFFPCE (f_b3(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(3)) ;
   DFFPCE (f_b3(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(2)) ;
   DFFPCE (f_b3(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(1)) ;
   DFFPCE (f_b3(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b2_next(0)) ;
   DFFPCE (f_b2(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(7)) ;
   DFFPCE (f_b2(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(6)) ;
   DFFPCE (f_b2(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(5)) ;
   DFFPCE (f_b2(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(4)) ;
   DFFPCE (f_b2(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(3)) ;
   DFFPCE (f_b2(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(2)) ;
   DFFPCE (f_b2(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(1)) ;
   DFFPCE (f_b2(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_b1_next(0)) ;
   DFFPCE (f_i1(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(7)) ;
   DFFPCE (f_i1(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(6)) ;
   DFFPCE (f_i1(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(5)) ;
   DFFPCE (f_i1(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(4)) ;
   DFFPCE (f_i1(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(3)) ;
   DFFPCE (f_i1(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(2)) ;
   DFFPCE (f_i1(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(1)) ;
   DFFPCE (f_i1(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t3_next(0)) ;
   DFFPCE (f_t3(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(7)) ;
   DFFPCE (f_t3(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(6)) ;
   DFFPCE (f_t3(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(5)) ;
   DFFPCE (f_t3(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(4)) ;
   DFFPCE (f_t3(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(3)) ;
   DFFPCE (f_t3(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(2)) ;
   DFFPCE (f_t3(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(1)) ;
   DFFPCE (f_t3(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t2_next(0)) ;
   DFFPCE (f_t2(7),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(7)) ;
   DFFPCE (f_t2(6),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(6)) ;
   DFFPCE (f_t2(5),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(5)) ;
   DFFPCE (f_t2(4),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(4)) ;
   DFFPCE (f_t2(3),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(3)) ;
   DFFPCE (f_t2(2),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(2)) ;
   DFFPCE (f_t2(1),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(1)) ;
   DFFPCE (f_t2(0),debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   rtlc13n187,i_clock,f_t1_next(0)) ;
   DFFPC (rtlcn9,debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   i_clock,f_state(3)) ;
   DFFPC (rtlcn13,debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   i_clock,f_state(2)) ;
   DFFPC (rtlcn25,debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   i_clock,f_state(1)) ;
   DFFPC (rtlcn26,debug_led_red_17_EXMPLR474,debug_led_red_17_EXMPLR474,
   i_clock,f_state(0)) ;
   debug_num_3(0) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(1) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(2) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(3) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(4) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(5) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(6) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(7) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(8) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(9) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(10) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(11) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_3(12) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(0) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(1) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(2) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(3) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(4) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(5) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(6) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(7) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(8) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(9) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(10) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(11) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_4(12) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(0) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(1) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(2) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(3) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(4) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(5) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(6) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(7) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(8) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(9) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(10) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(11) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(12) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_5(13) <= debug_led_red_17_EXMPLR474 when 
   debug_led_red_17_EXMPLR474 = '1' else 'Z' ;
   debug_num_6 <= debug_led_red_17_EXMPLR474 when debug_led_red_17_EXMPLR474
    = '1' else 'Z' ;
   debug_num_7 <= debug_led_red_17_EXMPLR474 when debug_led_red_17_EXMPLR474
    = '1' else 'Z' ;
   debug_num_8 <= debug_led_red_17_EXMPLR474 when debug_led_red_17_EXMPLR474
    = '1' else 'Z' ;
   u_memory : memory_notri port map ( p_i_pixel(7)=>i_pixel(7), p_i_pixel(6)
      =>i_pixel(6), p_i_pixel(5)=>i_pixel(5), p_i_pixel(4)=>i_pixel(4), 
      p_i_pixel(3)=>i_pixel(3), p_i_pixel(2)=>i_pixel(2), p_i_pixel(1)=>
      i_pixel(1), p_i_pixel(0)=>i_pixel(0), p_o_row(7)=>m_o_row(7), 
      p_o_row(6)=>m_o_row(6), p_o_row(5)=>m_o_row(5), p_o_row(4)=>m_o_row(4), 
      p_o_row(3)=>m_o_row(3), p_o_row(2)=>m_o_row(2), p_o_row(1)=>m_o_row(1), 
      p_o_row(0)=>m_o_row(0), p_o_image0_9_7(1)=>o_image0_0_EXMPLR558(0), 
      p_o_image0_9_7(0)=>o_image0_0_EXMPLR558(7), p_o_image0_9_1(0)=>
      o_image0_0_EXMPLR558(1), p_o_image0_9_2(0)=>o_image0_0_EXMPLR558(2), 
      p_o_image0_9_3(0)=>o_image0_0_EXMPLR558(3), p_o_image0_9_4(0)=>
      o_image0_0_EXMPLR558(4), p_o_image0_9_5(0)=>o_image0_0_EXMPLR558(5), 
      p_o_image0_9_6(0)=>o_image0_0_EXMPLR558(6), p_o_image0_8_7(1)=>
      o_image0_1_EXMPLR559(0), p_o_image0_8_7(0)=>o_image0_1_EXMPLR559(7), 
      p_o_image0_8_1(1)=>o_image0_1_EXMPLR559(1), p_o_image0_8_2(1)=>
      o_image0_1_EXMPLR559(2), p_o_image0_8_3(1)=>o_image0_1_EXMPLR559(3), 
      p_o_image0_8_4(1)=>o_image0_1_EXMPLR559(4), p_o_image0_8_5(1)=>
      o_image0_1_EXMPLR559(5), p_o_image0_8_6(1)=>o_image0_1_EXMPLR559(6), 
      p_o_image0_7(2)=>o_image0_2_EXMPLR560(0), p_o_image0_7(1)=>
      o_image0_2_EXMPLR560(7), p_o_image0_1(2)=>o_image0_2_EXMPLR560(1), 
      p_o_image0_2(2)=>o_image0_2_EXMPLR560(2), p_o_image0_3(2)=>
      o_image0_2_EXMPLR560(3), p_o_image0_4(2)=>o_image0_2_EXMPLR560(4), 
      p_o_image0_5(2)=>o_image0_2_EXMPLR560(5), p_o_image0_6(2)=>
      o_image0_2_EXMPLR560(6), p_o_image1_9_7(1)=>o_image1_0_EXMPLR561(0), 
      p_o_image1_9_7(0)=>o_image1_0_EXMPLR561(7), p_o_image1_9_1(0)=>
      o_image1_0_EXMPLR561(1), p_o_image1_9_2(0)=>o_image1_0_EXMPLR561(2), 
      p_o_image1_9_3(0)=>o_image1_0_EXMPLR561(3), p_o_image1_9_4(0)=>
      o_image1_0_EXMPLR561(4), p_o_image1_9_5(0)=>o_image1_0_EXMPLR561(5), 
      p_o_image1_9_6(0)=>o_image1_0_EXMPLR561(6), p_o_image1_8_7(1)=>
      o_image1_1(0), p_o_image1_8_7(0)=>o_image1_1(7), p_o_image1_8_1(1)=>
      o_image1_1(1), p_o_image1_8_2(1)=>o_image1_1(2), p_o_image1_8_3(1)=>
      o_image1_1(3), p_o_image1_8_4(1)=>o_image1_1(4), p_o_image1_8_5(1)=>
      o_image1_1(5), p_o_image1_8_6(1)=>o_image1_1(6), p_o_image1_7(2)=>
      o_image1_2_EXMPLR563(0), p_o_image1_7(1)=>o_image1_2_EXMPLR563(7), 
      p_o_image1_1(2)=>o_image1_2_EXMPLR563(1), p_o_image1_2(2)=>
      o_image1_2_EXMPLR563(2), p_o_image1_3(2)=>o_image1_2_EXMPLR563(3), 
      p_o_image1_4(2)=>o_image1_2_EXMPLR563(4), p_o_image1_5(2)=>
      o_image1_2_EXMPLR563(5), p_o_image1_6(2)=>o_image1_2_EXMPLR563(6), 
      p_o_image2_9_7(1)=>o_image2_0_EXMPLR564(0), p_o_image2_9_7(0)=>
      o_image2_0_EXMPLR564(7), p_o_image2_9_1(0)=>o_image2_0_EXMPLR564(1), 
      p_o_image2_9_2(0)=>o_image2_0_EXMPLR564(2), p_o_image2_9_3(0)=>
      o_image2_0_EXMPLR564(3), p_o_image2_9_4(0)=>o_image2_0_EXMPLR564(4), 
      p_o_image2_9_5(0)=>o_image2_0_EXMPLR564(5), p_o_image2_9_6(0)=>
      o_image2_0_EXMPLR564(6), p_o_image2_8_7(1)=>o_image2_1_EXMPLR565(0), 
      p_o_image2_8_7(0)=>o_image2_1_EXMPLR565(7), p_o_image2_8_1(1)=>
      o_image2_1_EXMPLR565(1), p_o_image2_8_2(1)=>o_image2_1_EXMPLR565(2), 
      p_o_image2_8_3(1)=>o_image2_1_EXMPLR565(3), p_o_image2_8_4(1)=>
      o_image2_1_EXMPLR565(4), p_o_image2_8_5(1)=>o_image2_1_EXMPLR565(5), 
      p_o_image2_8_6(1)=>o_image2_1_EXMPLR565(6), p_o_image2_7(2)=>
      o_image2_2_EXMPLR566(0), p_o_image2_7(1)=>o_image2_2_EXMPLR566(7), 
      p_o_image2_1(2)=>o_image2_2_EXMPLR566(1), p_o_image2_2(2)=>
      o_image2_2_EXMPLR566(2), p_o_image2_3(2)=>o_image2_2_EXMPLR566(3), 
      p_o_image2_4(2)=>o_image2_2_EXMPLR566(4), p_o_image2_5(2)=>
      o_image2_2_EXMPLR566(5), p_o_image2_6(2)=>o_image2_2_EXMPLR566(6), 
      p_o_valid=>m_o_valid, p_o_column(7)=>debug_column(7), p_o_column(6)=>
      debug_column(6), p_o_column(5)=>debug_column(5), p_o_column(4)=>
      debug_column(4), p_o_column(3)=>debug_column(3), p_o_column(2)=>
      debug_column(2), p_o_column(1)=>debug_column(1), p_o_column(0)=>
      debug_column(0), p_debug_num_1(2)=>debug_num_1(2), p_debug_num_1(1)=>
      debug_num_1(1), p_debug_num_1(0)=>debug_num_1(0), p_o_mode(1)=>
      m_o_mode(1), p_o_mode(0)=>m_o_mode(0), 
      p_debug_valid_rtlc2_100_and_2(2)=>debug_valid, 
      p_i_valid_rtlc2_54_or_1(2)=>i_valid, p_i_reset=>i_reset, 
      p_debug_num_0(2)=>debug_num_0(2), p_debug_num_0(1)=>debug_num_0(1), 
      p_debug_num_0(0)=>debug_num_0(0), p_debug_num_2(7)=>debug_num_2(7), 
      p_debug_num_2(6)=>debug_num_2(6), p_debug_num_2(5)=>debug_num_2(5), 
      p_debug_num_2(4)=>debug_num_2(4), p_debug_num_2(3)=>debug_num_2(3), 
      p_debug_num_2(2)=>debug_num_2(2), p_debug_num_2(1)=>debug_num_2(1), 
      p_debug_num_2(0)=>debug_num_2(0), p_i_clock=>i_clock);
end main ;

