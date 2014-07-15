library verilog;
use verilog.vl_types.all;
entity max is
    port(
        i_left          : in     vl_logic_vector(12 downto 0);
        i_right         : in     vl_logic_vector(12 downto 0);
        o_left_greater  : out    vl_logic
    );
end max;
