------------------------------------------------------------------------
-- utilities for kirsch edge detection
------------------------------------------------------------------------
  
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library std;

package kirsch_utility_pkg is

  type image_type is array (2 downto 0) of
    std_logic_vector(7 downto 0) ;

end package;