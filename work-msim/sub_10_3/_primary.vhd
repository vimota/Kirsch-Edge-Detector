library verilog;
use verilog.vl_types.all;
entity sub_10_3 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(9 downto 0);
        b               : in     vl_logic_vector(9 downto 0);
        d               : out    vl_logic_vector(9 downto 0);
        cout            : out    vl_logic;
        \p_p11_0_\      : in     vl_logic
    );
end sub_10_3;
