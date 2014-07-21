library verilog;
use verilog.vl_types.all;
entity flow is
    port(
        debug_valid     : out    vl_logic;
        debug_num_0     : out    vl_logic_vector(7 downto 0);
        debug_num_1     : out    vl_logic_vector(7 downto 0);
        debug_num_2     : out    vl_logic_vector(7 downto 0);
        debug_num_3     : out    vl_logic_vector(7 downto 0);
        debug_num_4     : out    vl_logic_vector(7 downto 0);
        debug_num_5     : out    vl_logic_vector(7 downto 0);
        debug_num_6     : out    vl_logic_vector(7 downto 0);
        debug_num_7     : out    vl_logic_vector(7 downto 0);
        debug_num_8     : out    vl_logic_vector(7 downto 0);
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
        o_row           : out    vl_logic_vector(7 downto 0)
    );
end flow;
