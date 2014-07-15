
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity max is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_left          : in  std_logic_vector(12 downto 0);
    i_right         : in  std_logic_vector(12 downto 0);
    o_max           : out std_logic_vector(12 downto 0);
    o_left_greater  : out std_logic;
    ------------------------------------------
  );  
end entity;


architecture main of max is
begin  

  o_left_greater <= '1' when i_left > i_right else '0';
  o_max <= i_left when o_left_greater = '1' else i_right;
  
end architecture;
