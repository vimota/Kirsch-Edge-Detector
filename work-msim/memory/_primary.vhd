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
        p_nrst_int_dup_22: in     vl_logic
    );
end memory;
