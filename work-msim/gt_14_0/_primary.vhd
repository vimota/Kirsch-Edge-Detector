library verilog;
use verilog.vl_types.all;
entity gt_14_0 is
    port(
        a               : in     vl_logic_vector(13 downto 0);
        b               : in     vl_logic_vector(13 downto 0);
        d               : out    vl_logic;
        px576           : in     vl_logic
    );
end gt_14_0;
