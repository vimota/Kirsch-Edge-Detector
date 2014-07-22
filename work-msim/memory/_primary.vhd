library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        i_valid         : in     vl_logic;
        i_reset         : in     vl_logic;
        i_pixel         : in     vl_logic_vector(7 downto 0);
        i_clock         : in     vl_logic;
        o_valid         : out    vl_logic;
        o_mode          : out    vl_logic_vector(1 downto 0);
        o_column        : out    vl_logic_vector(7 downto 0);
        o_row           : out    vl_logic_vector(7 downto 0);
        \o_image0_0_\   : out    vl_logic_vector(7 downto 0);
        \o_image0_1_\   : out    vl_logic_vector(7 downto 0);
        \o_image0_2_\   : out    vl_logic_vector(7 downto 0);
        \o_image1_0_\   : out    vl_logic_vector(7 downto 0);
        \o_image1_1_\   : out    vl_logic_vector(7 downto 0);
        \o_image1_2_\   : out    vl_logic_vector(7 downto 0);
        \o_image2_0_\   : out    vl_logic_vector(7 downto 0);
        \o_image2_1_\   : out    vl_logic_vector(7 downto 0);
        \o_image2_2_\   : out    vl_logic_vector(7 downto 0);
        p_first_bubble  : in     vl_logic;
        \p_mem_data_7_\ : in     vl_logic;
        \p_mem_data_6_\ : in     vl_logic;
        \p_mem_data_5_\ : in     vl_logic;
        \p_mem_data_4_\ : in     vl_logic;
        \p_mem_data_3_\ : in     vl_logic;
        \p_mem_data_2_\ : in     vl_logic;
        \p_mem_data_1_\ : in     vl_logic;
        \p_mem_data_0_\ : in     vl_logic;
        px1             : out    vl_logic;
        px23            : out    vl_logic;
        p_rtlc2n272     : out    vl_logic
    );
end memory;
