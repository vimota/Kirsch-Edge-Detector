library verilog;
use verilog.vl_types.all;
entity add_12_1 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        d               : out    vl_logic_vector(11 downto 0);
        cout            : out    vl_logic;
        p_rtlcn907      : in     vl_logic;
        p_rtlcn947      : in     vl_logic
    );
end add_12_1;
