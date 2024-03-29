library verilog;
use verilog.vl_types.all;
entity flow is
    port(
        t1              : in     vl_logic_vector(7 downto 0);
        t2              : in     vl_logic_vector(7 downto 0);
        t3              : in     vl_logic_vector(7 downto 0);
        b1              : in     vl_logic_vector(7 downto 0);
        b2              : in     vl_logic_vector(7 downto 0);
        b3              : in     vl_logic_vector(7 downto 0);
        i1              : in     vl_logic_vector(7 downto 0);
        i2              : in     vl_logic_vector(7 downto 0);
        i_clock         : in     vl_logic;
        i_reset         : in     vl_logic;
        i_valid         : in     vl_logic;
        i_mode          : in     vl_logic_vector(1 downto 0);
        i_row           : in     vl_logic_vector(7 downto 0);
        o_dir           : out    vl_logic_vector(2 downto 0);
        o_edge          : out    vl_logic;
        o_valid         : out    vl_logic;
        o_mode          : out    vl_logic_vector(1 downto 0);
        o_row           : out    vl_logic_vector(7 downto 0);
        p_ix258_ix248_nx13: out    vl_logic;
        p_ix258_ix249_nx13: out    vl_logic;
        p_ix258_ix250_nx13: out    vl_logic;
        p_ix258_ix251_nx13: out    vl_logic;
        p_ix258_ix252_nx13: out    vl_logic;
        p_ix258_ix253_nx13: out    vl_logic;
        p_ix258_ix254_nx13: out    vl_logic;
        p_ix258_ix255_nx13: out    vl_logic;
        \p_p5m_1_\      : out    vl_logic;
        \p_p5m_0_\      : out    vl_logic
    );
end flow;
