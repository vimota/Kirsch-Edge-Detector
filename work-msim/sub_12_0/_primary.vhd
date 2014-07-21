library verilog;
use verilog.vl_types.all;
entity sub_12_0 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        d               : out    vl_logic_vector(11 downto 0);
        cout            : out    vl_logic
    );
end sub_12_0;
