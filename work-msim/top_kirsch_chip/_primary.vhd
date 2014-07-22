library verilog;
use verilog.vl_types.all;
entity top_kirsch_chip is
    port(
        nrst            : in     vl_logic;
        clk             : in     vl_logic;
        rxflex          : in     vl_logic;
        txflex          : out    vl_logic;
        o_sevenseg      : out    vl_logic_vector(15 downto 0);
        o_mode          : out    vl_logic_vector(1 downto 0);
        o_nrst          : out    vl_logic;
        debug_key       : in     vl_logic_vector(3 downto 1);
        debug_switch    : in     vl_logic_vector(17 downto 0);
        debug_led_red   : out    vl_logic_vector(16 downto 0);
        debug_led_grn   : out    vl_logic_vector(5 downto 0);
        debug_sevenseg_0: out    vl_logic_vector(3 downto 0);
        debug_sevenseg_1: out    vl_logic_vector(3 downto 0);
        debug_sevenseg_2: out    vl_logic_vector(3 downto 0);
        debug_sevenseg_3: out    vl_logic_vector(3 downto 0);
        debug_sevenseg_4: out    vl_logic_vector(3 downto 0);
        debug_sevenseg_5: out    vl_logic_vector(3 downto 0)
    );
end top_kirsch_chip;
