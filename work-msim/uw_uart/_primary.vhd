library verilog;
use verilog.vl_types.all;
entity uw_uart is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        kirschout       : in     vl_logic;
        kirschdir       : in     vl_logic_vector(2 downto 0);
        o_valid         : in     vl_logic;
        i_mode          : in     vl_logic_vector(1 downto 0);
        datain          : out    vl_logic_vector(7 downto 0);
        o_pixavail      : out    vl_logic;
        rxflex          : in     vl_logic;
        txflex          : out    vl_logic;
        \p_Tx_Reg_14n6ss1_0_\: out    vl_logic;
        p_NOT_rtlcn2    : out    vl_logic;
        px304           : in     vl_logic;
        \p_m_o_mode_0_\ : in     vl_logic;
        p_nrst_int      : in     vl_logic
    );
end uw_uart;
