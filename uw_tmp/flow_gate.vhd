
-- 
-- Definition of  flow
-- 
--      Mon Jul 21 14:06:07 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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
   ix247 : shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(7), \out\=>nx11);
   ix248 : shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(6), \out\=>nx12);
   ix249 : shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(5), \out\=>nx13);
   ix250 : shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(4), \out\=>nx14);
   ix251 : shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(3), \out\=>nx15);
   ix252 : shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(2), \out\=>nx16);
   ix253 : shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx17);
   ix254 : shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
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
   ix255 : shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx5);
   ix256 : shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx6);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 ;

architecture INTERFACE of shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3
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
   signal nx5, nx6, nx7, nx9, nx10, nx12: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_with_taps_1_3_1 is 
   port (
      \in\ : IN std_logic_vector (0 DOWNTO 0) ;
      \out\ : OUT std_logic_vector (0 DOWNTO 0) ;
      tap_out : OUT std_logic_vector (0 DOWNTO 0) ;
      clk : IN std_logic ;
      clken : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic) ;
end shiftregister_with_taps_1_3_1 ;

architecture INTERFACE of shiftregister_with_taps_1_3_1 is 
   component shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   signal nx4: std_logic ;

begin
   \out\(0) <= nx4 ;
   tap_out(0) <= nx4 ;
   ix257 : shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx4);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component eq_12u_12u
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_12s_12s
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_11u_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
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
   component sub_10u_10u_10u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
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
   component shiftregister_with_taps_1_3_1
      port (
         \in\ : IN std_logic_vector (0 DOWNTO 0) ;
         \out\ : OUT std_logic_vector (0 DOWNTO 0) ;
         tap_out : OUT std_logic_vector (0 DOWNTO 0) ;
         clk : IN std_logic ;
         clken : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic) ;
   end component ;
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
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
   
   signal PWR: std_logic ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc1n72, not_max_fwd, rtlc1n76, rtlc1n77, rtlc1n84, not_i_reset, 
      p21_3n0r3_11, p21_3n0r3_9, p21_3n0r3_8, p21_3n0r3_7, p21_3n0r3_6, 
      p21_3n0r3_5, p21_3n0r3_4, p21_3n0r3_3, p21_3n0r3_2, p21_3n0r3_1, 
      p21_3n0r3_0: std_logic ;
   
   signal p21_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n189: std_logic_vector (11 DOWNTO 1) ;
   
   signal p22_3n0r3_11, p22_3n0r3_9, p22_3n0r3_8, p22_3n0r3_7, p22_3n0r3_6, 
      p22_3n0r3_5, p22_3n0r3_4, p22_3n0r3_3, p22_3n0r3_2, p22_3n0r3_1, 
      p22_3n0r3_0: std_logic ;
   
   signal p22_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n195: std_logic_vector (11 DOWNTO 1) ;
   
   signal p31_4n1ss1: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc4n47, rtlc5n123, rtlc5n124, not_p4s_11, rtlc5n126, rtlc6n37, 
      rtlc7_max_dir_D_n12_0, not_p45, rtlc7n89, not_rtlcn143, rtlcn126, 
      rtlcn134, not_state_0, not_state_2, rtlcn143, rtlcn144, not_rtlc4n47, 
      rtlcn822, rtlcn874, NOT_p12_0, NOT_p11_0: std_logic ;
   
   signal DANGLING : std_logic_vector (18 downto 0 );

begin
   GND <= '0' ;
   PWR <= '1' ;
   p4s_sub12_0 : sub_12u_12u_12u_0 port map ( cin=>PWR, a(11)=>p31(11), 
      a(10)=>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>GND, b(10)=>p32(10), b(9)=>p32(9), b(8)=>p32(8), 
      b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>p32(3), 
      b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), d(10)=>
      p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), d(5)
      =>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), d(0)
      =>p4s(0), cout=>DANGLING(0));
   rtlc1_11_eq_1 : eq_12u_12u port map ( a(11)=>p43(11), a(10)=>p43(10), 
      a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), 
      a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>rtlc1n72);
   rtlc1_12_and_2 : and_3u_3u port map ( a(2)=>rtlc1n72, a(1)=>not_max_fwd, 
      a(0)=>p45, d=>rtlc1n76);
   rtlc1_13_gt_3 : gt_12s_12s port map ( a(11)=>p43(11), a(10)=>p43(10), 
      a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), 
      a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>rtlc1n84);
   rtlc1n77 <= rtlc1n84 OR rtlc1n76 ;
   not_max_fwd <= NOT max_fwd ;
   not_i_reset <= NOT i_reset ;
   rtlc4_88_gt_4 : gt_12s_12s port map ( a(11)=>p22(11), a(10)=>p22(10), 
      a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), a(5)=>p22(5), 
      a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), a(0)=>p22(0), 
      b(11)=>p21(11), b(10)=>p21(10), b(9)=>p21(9), b(8)=>p21(8), b(7)=>
      p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>p21(4), b(3)=>p21(3), b(2)=>
      p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>rtlc4n47);
   rtlc5n123 <= p4s(7) AND p4s(8) ;
   not_p4s_11 <= NOT p4s(11) ;
   rtlc5n126 <= rtlc5n124 AND not_p4s_11 ;
   rtlc6n37 <= i_reset OR state(3) ;
   not_p45 <= NOT p45 ;
   not_state_0 <= NOT state(0) ;
   not_state_2 <= NOT state(2) ;
   rtlcn134 <= state(1) OR not_state_2 ;
   rtlcn126 <= not_state_0 AND rtlcn134 ;
   not_rtlcn143 <= NOT rtlcn143 ;
   p31_4n1ss1(0) <= p22(0) when rtlc4n47 = '1' else p21(0) ;
   p31_4n1ss1(1) <= p22(1) when rtlc4n47 = '1' else p21(1) ;
   p31_4n1ss1(2) <= p22(2) when rtlc4n47 = '1' else p21(2) ;
   p31_4n1ss1(3) <= p22(3) when rtlc4n47 = '1' else p21(3) ;
   p31_4n1ss1(4) <= p22(4) when rtlc4n47 = '1' else p21(4) ;
   p31_4n1ss1(5) <= p22(5) when rtlc4n47 = '1' else p21(5) ;
   p31_4n1ss1(6) <= p22(6) when rtlc4n47 = '1' else p21(6) ;
   p31_4n1ss1(7) <= p22(7) when rtlc4n47 = '1' else p21(7) ;
   p31_4n1ss1(8) <= p22(8) when rtlc4n47 = '1' else p21(8) ;
   p31_4n1ss1(9) <= p22(9) when rtlc4n47 = '1' else p21(9) ;
   p31_4n1ss1(10) <= p22(10) when rtlc4n47 = '1' else p21(10) ;
   p31_4n1ss1(11) <= p22(11) when rtlc4n47 = '1' else p21(11) ;
   rtlc_138_or_6 : or_4u_4u port map ( a(3)=>state(0), a(2)=>state(1), a(1)
      =>state(2), a(0)=>state(3), d=>rtlcn144);
   rtlc7n89 <= rtlc1n77 AND rtlcn144 ;
   rtlc_162_add_8 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>
      p21_3n0r3_11, a(9)=>p21_3n0r3_11, a(8)=>p21_3n0r3_9, a(7)=>p21_3n0r3_8, 
      a(6)=>p21_3n0r3_7, a(5)=>p21_3n0r3_6, a(4)=>p21_3n0r3_5, a(3)=>
      p21_3n0r3_4, a(2)=>p21_3n0r3_3, a(1)=>p21_3n0r3_2, a(0)=>p21_3n0r3_1, 
      b(10)=>p21_3n0r4(11), b(9)=>p21_3n0r4(10), b(8)=>p21_3n0r4(9), b(7)=>
      p21_3n0r4(8), b(6)=>p21_3n0r4(7), b(5)=>p21_3n0r4(6), b(4)=>
      p21_3n0r4(5), b(3)=>p21_3n0r4(4), b(2)=>p21_3n0r4(3), b(1)=>
      p21_3n0r4(2), b(0)=>p12(0), d(10)=>rtlc3n189(11), d(9)=>rtlc3n189(10), 
      d(8)=>rtlc3n189(9), d(7)=>rtlc3n189(8), d(6)=>rtlc3n189(7), d(5)=>
      rtlc3n189(6), d(4)=>rtlc3n189(5), d(3)=>rtlc3n189(4), d(2)=>
      rtlc3n189(3), d(1)=>rtlc3n189(2), d(0)=>rtlc3n189(1), cout=>DANGLING(1
      ));
   rtlc_185_add_10 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>
      p22_3n0r3_11, a(9)=>p22_3n0r3_11, a(8)=>p22_3n0r3_9, a(7)=>p22_3n0r3_8, 
      a(6)=>p22_3n0r3_7, a(5)=>p22_3n0r3_6, a(4)=>p22_3n0r3_5, a(3)=>
      p22_3n0r3_4, a(2)=>p22_3n0r3_3, a(1)=>p22_3n0r3_2, a(0)=>p22_3n0r3_1, 
      b(10)=>p22_3n0r4(11), b(9)=>p22_3n0r4(10), b(8)=>p22_3n0r4(9), b(7)=>
      p22_3n0r4(8), b(6)=>p22_3n0r4(7), b(5)=>p22_3n0r4(6), b(4)=>
      p22_3n0r4(5), b(3)=>p22_3n0r4(4), b(2)=>p22_3n0r4(3), b(1)=>
      p22_3n0r4(2), b(0)=>p11(0), d(10)=>rtlc3n195(11), d(9)=>rtlc3n195(10), 
      d(8)=>rtlc3n195(9), d(7)=>rtlc3n195(8), d(6)=>rtlc3n195(7), d(5)=>
      rtlc3n195(6), d(4)=>rtlc3n195(5), d(3)=>rtlc3n195(4), d(2)=>
      rtlc3n195(3), d(1)=>rtlc3n195(2), d(0)=>rtlc3n195(1), cout=>DANGLING(2
      ));
   not_rtlc4n47 <= NOT rtlc4n47 ;
   rtlc7_max_dir_D_n12_0 <= not_p45 XOR state(0) ;
   rtlcn143 <= state(1) OR state(0) ;
   o_mode(0) <= p5m(0) OR i_reset ;
   o_mode(1) <= p5m(1) AND not_i_reset ;
   p11_add8_0i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>t1(7), a(6)=>
      t1(6), a(5)=>t1(5), a(4)=>t1(4), a(3)=>t1(3), a(2)=>t1(2), a(1)=>t1(1), 
      a(0)=>t1(0), b(7)=>t2(7), b(6)=>t2(6), b(5)=>t2(5), b(4)=>t2(4), b(3)
      =>t2(3), b(2)=>t2(2), b(1)=>t2(1), b(0)=>t2(0), d(7)=>p11_0n0s2(7), 
      d(6)=>p11_0n0s2(6), d(5)=>p11_0n0s2(5), d(4)=>p11_0n0s2(4), d(3)=>
      p11_0n0s2(3), d(2)=>p11_0n0s2(2), d(1)=>p11_0n0s2(1), d(0)=>
      p11_0n0s2(0), cout=>p11_0n0s2(8));
   p11_add9_1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(7), a(6)=>p11_0n0s2(6), a(5)=>p11_0n0s2(5), a(4)=>
      p11_0n0s2(4), a(3)=>p11_0n0s2(3), a(2)=>p11_0n0s2(2), a(1)=>
      p11_0n0s2(1), a(0)=>p11_0n0s2(0), b(8)=>GND, b(7)=>t3(7), b(6)=>t3(6), 
      b(5)=>t3(5), b(4)=>t3(4), b(3)=>t3(3), b(2)=>t3(2), b(1)=>t3(1), b(0)
      =>t3(0), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>p11(5), d(4)
      =>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>p11(0), cout
      =>p11(9));
   p12_add8_0i2 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>b1(7), a(6)=>
      b1(6), a(5)=>b1(5), a(4)=>b1(4), a(3)=>b1(3), a(2)=>b1(2), a(1)=>b1(1), 
      a(0)=>b1(0), b(7)=>b2(7), b(6)=>b2(6), b(5)=>b2(5), b(4)=>b2(4), b(3)
      =>b2(3), b(2)=>b2(2), b(1)=>b2(1), b(0)=>b2(0), d(7)=>p12_0n0s2(7), 
      d(6)=>p12_0n0s2(6), d(5)=>p12_0n0s2(5), d(4)=>p12_0n0s2(4), d(3)=>
      p12_0n0s2(3), d(2)=>p12_0n0s2(2), d(1)=>p12_0n0s2(1), d(0)=>
      p12_0n0s2(0), cout=>p12_0n0s2(8));
   p12_add9_2 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(7), a(6)=>p12_0n0s2(6), a(5)=>p12_0n0s2(5), a(4)=>
      p12_0n0s2(4), a(3)=>p12_0n0s2(3), a(2)=>p12_0n0s2(2), a(1)=>
      p12_0n0s2(1), a(0)=>p12_0n0s2(0), b(8)=>GND, b(7)=>b3(7), b(6)=>b3(6), 
      b(5)=>b3(5), b(4)=>b3(4), b(3)=>b3(3), b(2)=>b3(2), b(1)=>b3(1), b(0)
      =>b3(0), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)
      =>p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>p12(0), cout
      =>p12(9));
   p21_3n0r3_11 <= NOT rtlcn822 ;
   p21_sub10_3i3 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_3n0r3_9, 
      d(8)=>p21_3n0r3_8, d(7)=>p21_3n0r3_7, d(6)=>p21_3n0r3_6, d(5)=>
      p21_3n0r3_5, d(4)=>p21_3n0r3_4, d(3)=>p21_3n0r3_3, d(2)=>p21_3n0r3_2, 
      d(1)=>p21_3n0r3_1, d(0)=>p21_3n0r3_0, cout=>rtlcn822);
   p22_3n0r3_11 <= NOT rtlcn874 ;
   p22_sub10_3i4 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_3n0r3_9, 
      d(8)=>p22_3n0r3_8, d(7)=>p22_3n0r3_7, d(6)=>p22_3n0r3_6, d(5)=>
      p22_3n0r3_5, d(4)=>p22_3n0r3_4, d(3)=>p22_3n0r3_3, d(2)=>p22_3n0r3_2, 
      d(1)=>p22_3n0r3_1, d(0)=>p22_3n0r3_0, cout=>rtlcn874);
   p13_add8_0i3 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>p13_0n0s2(8), b(7)=>
      p13_0n0s2(7), b(6)=>p13_0n0s2(6), b(5)=>p13_0n0s2(5), b(4)=>
      p13_0n0s2(4), b(3)=>p13_0n0s2(3), b(2)=>p13_0n0s2(2), b(1)=>
      p13_0n0s2(1), b(0)=>p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>
      p13(7), d(5)=>p13(6), d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>
      p13(2), d(0)=>p13(1), cout=>p13(10));
   debug_valid <= GND when GND = '1' else 'Z' ;
   debug_num_0(0) <= GND when GND = '1' else 'Z' ;
   debug_num_0(1) <= GND when GND = '1' else 'Z' ;
   debug_num_0(2) <= GND when GND = '1' else 'Z' ;
   debug_num_0(3) <= GND when GND = '1' else 'Z' ;
   debug_num_0(4) <= GND when GND = '1' else 'Z' ;
   debug_num_0(5) <= GND when GND = '1' else 'Z' ;
   debug_num_0(6) <= GND when GND = '1' else 'Z' ;
   debug_num_0(7) <= GND when GND = '1' else 'Z' ;
   debug_num_1(0) <= GND when GND = '1' else 'Z' ;
   debug_num_1(1) <= GND when GND = '1' else 'Z' ;
   debug_num_1(2) <= GND when GND = '1' else 'Z' ;
   debug_num_1(3) <= GND when GND = '1' else 'Z' ;
   debug_num_1(4) <= GND when GND = '1' else 'Z' ;
   debug_num_1(5) <= GND when GND = '1' else 'Z' ;
   debug_num_1(6) <= GND when GND = '1' else 'Z' ;
   debug_num_1(7) <= GND when GND = '1' else 'Z' ;
   debug_num_2(0) <= GND when GND = '1' else 'Z' ;
   debug_num_2(1) <= GND when GND = '1' else 'Z' ;
   debug_num_2(2) <= GND when GND = '1' else 'Z' ;
   debug_num_2(3) <= GND when GND = '1' else 'Z' ;
   debug_num_2(4) <= GND when GND = '1' else 'Z' ;
   debug_num_2(5) <= GND when GND = '1' else 'Z' ;
   debug_num_2(6) <= GND when GND = '1' else 'Z' ;
   debug_num_2(7) <= GND when GND = '1' else 'Z' ;
   debug_num_3(0) <= GND when GND = '1' else 'Z' ;
   debug_num_3(1) <= GND when GND = '1' else 'Z' ;
   debug_num_3(2) <= GND when GND = '1' else 'Z' ;
   debug_num_3(3) <= GND when GND = '1' else 'Z' ;
   debug_num_3(4) <= GND when GND = '1' else 'Z' ;
   debug_num_3(5) <= GND when GND = '1' else 'Z' ;
   debug_num_3(6) <= GND when GND = '1' else 'Z' ;
   debug_num_3(7) <= GND when GND = '1' else 'Z' ;
   debug_num_4(0) <= GND when GND = '1' else 'Z' ;
   debug_num_4(1) <= GND when GND = '1' else 'Z' ;
   debug_num_4(2) <= GND when GND = '1' else 'Z' ;
   debug_num_4(3) <= GND when GND = '1' else 'Z' ;
   debug_num_4(4) <= GND when GND = '1' else 'Z' ;
   debug_num_4(5) <= GND when GND = '1' else 'Z' ;
   debug_num_4(6) <= GND when GND = '1' else 'Z' ;
   debug_num_4(7) <= GND when GND = '1' else 'Z' ;
   debug_num_5(0) <= GND when GND = '1' else 'Z' ;
   debug_num_5(1) <= GND when GND = '1' else 'Z' ;
   debug_num_5(2) <= GND when GND = '1' else 'Z' ;
   debug_num_5(3) <= GND when GND = '1' else 'Z' ;
   debug_num_5(4) <= GND when GND = '1' else 'Z' ;
   debug_num_5(5) <= GND when GND = '1' else 'Z' ;
   debug_num_5(6) <= GND when GND = '1' else 'Z' ;
   debug_num_5(7) <= GND when GND = '1' else 'Z' ;
   debug_num_6(0) <= GND when GND = '1' else 'Z' ;
   debug_num_6(1) <= GND when GND = '1' else 'Z' ;
   debug_num_6(2) <= GND when GND = '1' else 'Z' ;
   debug_num_6(3) <= GND when GND = '1' else 'Z' ;
   debug_num_6(4) <= GND when GND = '1' else 'Z' ;
   debug_num_6(5) <= GND when GND = '1' else 'Z' ;
   debug_num_6(6) <= GND when GND = '1' else 'Z' ;
   debug_num_6(7) <= GND when GND = '1' else 'Z' ;
   debug_num_7(0) <= GND when GND = '1' else 'Z' ;
   debug_num_7(1) <= GND when GND = '1' else 'Z' ;
   debug_num_7(2) <= GND when GND = '1' else 'Z' ;
   debug_num_7(3) <= GND when GND = '1' else 'Z' ;
   debug_num_7(4) <= GND when GND = '1' else 'Z' ;
   debug_num_7(5) <= GND when GND = '1' else 'Z' ;
   debug_num_7(6) <= GND when GND = '1' else 'Z' ;
   debug_num_7(7) <= GND when GND = '1' else 'Z' ;
   debug_num_8(0) <= GND when GND = '1' else 'Z' ;
   debug_num_8(1) <= GND when GND = '1' else 'Z' ;
   debug_num_8(2) <= GND when GND = '1' else 'Z' ;
   debug_num_8(3) <= GND when GND = '1' else 'Z' ;
   debug_num_8(4) <= GND when GND = '1' else 'Z' ;
   debug_num_8(5) <= GND when GND = '1' else 'Z' ;
   debug_num_8(6) <= GND when GND = '1' else 'Z' ;
   debug_num_8(7) <= GND when GND = '1' else 'Z' ;
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
   DFFPC (rtlc3n195(11),GND,GND,i_clock,p22(11)) ;
   DFFPC (rtlc3n195(10),GND,GND,i_clock,p22(10)) ;
   DFFPC (rtlc3n195(9),GND,GND,i_clock,p22(9)) ;
   DFFPC (rtlc3n195(8),GND,GND,i_clock,p22(8)) ;
   DFFPC (rtlc3n195(7),GND,GND,i_clock,p22(7)) ;
   DFFPC (rtlc3n195(6),GND,GND,i_clock,p22(6)) ;
   DFFPC (rtlc3n195(5),GND,GND,i_clock,p22(5)) ;
   DFFPC (rtlc3n195(4),GND,GND,i_clock,p22(4)) ;
   DFFPC (rtlc3n195(3),GND,GND,i_clock,p22(3)) ;
   DFFPC (rtlc3n195(2),GND,GND,i_clock,p22(2)) ;
   DFFPC (rtlc3n195(1),GND,GND,i_clock,p22(1)) ;
   DFFPC (p22_3n0r3_0,GND,GND,i_clock,p22(0)) ;
   DFFPC (rtlc3n189(11),GND,GND,i_clock,p21(11)) ;
   DFFPC (rtlc3n189(10),GND,GND,i_clock,p21(10)) ;
   DFFPC (rtlc3n189(9),GND,GND,i_clock,p21(9)) ;
   DFFPC (rtlc3n189(8),GND,GND,i_clock,p21(8)) ;
   DFFPC (rtlc3n189(7),GND,GND,i_clock,p21(7)) ;
   DFFPC (rtlc3n189(6),GND,GND,i_clock,p21(6)) ;
   DFFPC (rtlc3n189(5),GND,GND,i_clock,p21(5)) ;
   DFFPC (rtlc3n189(4),GND,GND,i_clock,p21(4)) ;
   DFFPC (rtlc3n189(3),GND,GND,i_clock,p21(3)) ;
   DFFPC (rtlc3n189(2),GND,GND,i_clock,p21(2)) ;
   DFFPC (rtlc3n189(1),GND,GND,i_clock,p21(1)) ;
   DFFPC (p21_3n0r3_0,GND,GND,i_clock,p21(0)) ;
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
   DFFPC (p31_4n1ss1(11),GND,GND,i_clock,p31(11)) ;
   DFFPC (p31_4n1ss1(10),GND,GND,i_clock,p31(10)) ;
   DFFPC (p31_4n1ss1(9),GND,GND,i_clock,p31(9)) ;
   DFFPC (p31_4n1ss1(8),GND,GND,i_clock,p31(8)) ;
   DFFPC (p31_4n1ss1(7),GND,GND,i_clock,p31(7)) ;
   DFFPC (p31_4n1ss1(6),GND,GND,i_clock,p31(6)) ;
   DFFPC (p31_4n1ss1(5),GND,GND,i_clock,p31(5)) ;
   DFFPC (p31_4n1ss1(4),GND,GND,i_clock,p31(4)) ;
   DFFPC (p31_4n1ss1(3),GND,GND,i_clock,p31(3)) ;
   DFFPC (p31_4n1ss1(2),GND,GND,i_clock,p31(2)) ;
   DFFPC (p31_4n1ss1(1),GND,GND,i_clock,p31(1)) ;
   DFFPC (p31_4n1ss1(0),GND,GND,i_clock,p31(0)) ;
   DFFPC (not_rtlc4n47,GND,GND,i_clock,p35) ;
   DFFPC (p35,GND,GND,i_clock,p45) ;
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
   DFFPC (rtlc5n126,GND,GND,i_clock,p41) ;
   DFFPC (prev_edge,GND,GND,i_clock,o_edge) ;
   DFFRSE (p41,GND,rtlc6n37,rtlc1n77,i_clock,prev_edge) ;
   DFFRSE (p45,GND,rtlc6n37,rtlc1n77,i_clock,max_fwd) ;
   DFFRSE (p43(11),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(11)) ;
   DFFRSE (p43(10),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(10)) ;
   DFFRSE (p43(9),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(9)) ;
   DFFRSE (p43(8),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(8)) ;
   DFFRSE (p43(7),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(7)) ;
   DFFRSE (p43(6),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(6)) ;
   DFFRSE (p43(5),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(5)) ;
   DFFRSE (p43(4),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(4)) ;
   DFFRSE (p43(3),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(3)) ;
   DFFRSE (p43(2),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(2)) ;
   DFFRSE (p43(1),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(1)) ;
   DFFRSE (p43(0),GND,rtlc6n37,rtlc1n77,i_clock,prev_max(0)) ;
   DFFPCE (rtlcn126,GND,GND,rtlc7n89,i_clock,o_dir(2)) ;
   DFFPCE (not_rtlcn143,GND,GND,rtlc7n89,i_clock,o_dir(1)) ;
   DFFPCE (rtlc7_max_dir_D_n12_0,GND,GND,rtlc1n77,i_clock,o_dir(0)) ;
   DFFRSE (state(2),GND,i_reset,p40,i_clock,state(3)) ;
   DFFRSE (state(1),GND,i_reset,p40,i_clock,state(2)) ;
   DFFRSE (state(0),GND,i_reset,p40,i_clock,state(1)) ;
   DFFRSE (state(3),i_reset,GND,p40,i_clock,state(0)) ;
   DFFRSE (state(3),GND,i_reset,PWR,i_clock,o_valid) ;
   NOT_p12_0 <= NOT p12(0) ;
   p21_sub11_3i1 : sub_10u_10u_10u_0 port map ( cin=>NOT_p12_0, a(9)=>p11(9), 
      a(8)=>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), 
      a(3)=>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>GND, 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_3n0r4(11), d(8)=>p21_3n0r4(10), d(7)=>p21_3n0r4(9), d(6)=>
      p21_3n0r4(8), d(5)=>p21_3n0r4(7), d(4)=>p21_3n0r4(6), d(3)=>
      p21_3n0r4(5), d(2)=>p21_3n0r4(4), d(1)=>p21_3n0r4(3), d(0)=>
      p21_3n0r4(2), cout=>DANGLING(3));
   NOT_p11_0 <= NOT p11(0) ;
   p22_sub11_3i2 : sub_10u_10u_10u_0 port map ( cin=>NOT_p11_0, a(9)=>p12(9), 
      a(8)=>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), 
      a(3)=>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>GND, 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_3n0r4(11), d(8)=>p22_3n0r4(10), d(7)=>p22_3n0r4(9), d(6)=>
      p22_3n0r4(8), d(5)=>p22_3n0r4(7), d(4)=>p22_3n0r4(6), d(3)=>
      p22_3n0r4(5), d(2)=>p22_3n0r4(4), d(1)=>p22_3n0r4(3), d(0)=>
      p22_3n0r4(2), cout=>DANGLING(4));
   modgen_or_0 : or_4u_4u port map ( a(3)=>p4s(9), a(2)=>p4s(10), a(1)=>
      p4s(11), a(0)=>rtlc5n123, d=>rtlc5n124);
   ix258 : shiftregister_with_taps_8_4_1 port map ( \in\(7)=>i_row(7), 
      \in\(6)=>i_row(6), \in\(5)=>i_row(5), \in\(4)=>i_row(4), \in\(3)=>
      i_row(3), \in\(2)=>i_row(2), \in\(1)=>i_row(1), \in\(0)=>i_row(0), 
      \out\(7)=>o_row(7), \out\(6)=>o_row(6), \out\(5)=>o_row(5), \out\(4)=>
      o_row(4), \out\(3)=>o_row(3), \out\(2)=>o_row(2), \out\(1)=>o_row(1), 
      \out\(0)=>o_row(0), tap_out(7)=>DANGLING(5), tap_out(6)=>DANGLING(6), 
      tap_out(5)=>DANGLING(7), tap_out(4)=>DANGLING(8), tap_out(3)=>DANGLING
      (9), tap_out(2)=>DANGLING(10), tap_out(1)=>DANGLING(11), tap_out(0)=>
      DANGLING(12), clk=>i_clock, clken=>DANGLING(13), reset=>GND, set=>GND
   );
   ix259 : shiftregister_with_taps_2_4_1 port map ( \in\(1)=>i_mode(1), 
      \in\(0)=>i_mode(0), \out\(1)=>p5m(1), \out\(0)=>p5m(0), tap_out(1)=>
      DANGLING(14), tap_out(0)=>DANGLING(15), clk=>i_clock, clken=>DANGLING(
      16), reset=>GND, set=>GND);
   ix260 : shiftregister_with_taps_1_3_1 port map ( \in\(0)=>i_valid, 
      \out\(0)=>p40, tap_out(0)=>DANGLING(17), clk=>i_clock, clken=>DANGLING
      (18), reset=>GND, set=>GND);
end main ;

