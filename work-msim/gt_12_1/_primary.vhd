library verilog;
use verilog.vl_types.all;
entity gt_12_1 is
    port(
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        d               : out    vl_logic
    );
end gt_12_1;
