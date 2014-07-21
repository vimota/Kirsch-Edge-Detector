library verilog;
use verilog.vl_types.all;
entity add_11_0 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(10 downto 0);
        b               : in     vl_logic_vector(10 downto 0);
        d               : out    vl_logic_vector(10 downto 0);
        cout            : out    vl_logic;
        p_rtlcn822      : in     vl_logic
    );
end add_11_0;
