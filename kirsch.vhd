
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.kirsch_utility_pkg.all;

entity kirsch is
	port(
		------------------------------------------
		-- main inputs and outputs
		i_clock    : in  std_logic;
		i_reset    : in  std_logic;
		i_valid    : in  std_logic;
		i_pixel    : in  std_logic_vector(7 downto 0);
		o_valid    : out std_logic;
		o_edge     : out std_logic;
		o_dir      : out std_logic_vector(2 downto 0);
		o_mode     : out std_logic_vector(1 downto 0);
		o_row      : out std_logic_vector(7 downto 0);
		o_image0, o_image1, o_image2   : out image_type;
		------------------------------------------
		-- debugging inputs and outputs
		debug_key      : in  std_logic_vector( 3 downto 1) ;
		debug_switch   : in  std_logic_vector(17 downto 0) ;
		debug_column   : out std_logic_vector(7 downto 0) ;
		debug_led_red  : out std_logic_vector(17 downto 0) ;
		debug_led_grn  : out std_logic_vector(5  downto 0) ;
		debug_valid    : out std_logic;
		debug_num_0    : out std_logic_vector(2 downto 0) ;
    debug_num_1    : out std_logic_vector(2 downto 0) ;
    debug_num_2    : out unsigned(7 downto 0) ;
		debug_num_3    : out signed(12 downto 0) ;
		debug_num_4    : out signed(12 downto 0) ;
		debug_num_5    : out signed(13 downto 0);
		debug_num_6    : out std_logic;
		debug_num_7    : out std_logic;
		debug_num_8    : out std_logic
		------------------------------------------
	);
end entity;


architecture main of kirsch is

function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
is
begin
    return std_logic_vector( unsigned(a) rol n );
end function;

-- SIGNALS!!!!! --
signal f_state 				: std_logic_vector(3 downto 0);

-- memory output --
signal m_o_image0, m_o_image1, m_o_image2   : image_type;
signal m_o_mode				: std_logic_vector(1 downto 0);
signal m_o_row, m_o_column	: std_logic_vector(7 downto 0);
signal m_o_valid			: std_logic;

-- flow inputs --
signal f_t1, f_t2, f_t3, f_b1, f_b2, f_b3, f_i1, f_i2	: unsigned(7 downto 0);
signal f_t1_next, f_t2_next, f_t3_next, f_b1_next		: unsigned(7 downto 0);
signal f_b2_next, f_b3_next, f_i1_next, f_i2_next		: unsigned(7 downto 0);
signal f_i_row, f_i_row_next							: std_logic_vector(7 downto 0);
signal f_i_valid										: std_logic;
signal f_o_mode, f_i_mode, f_i_mode_next				: std_logic_vector(1 downto 0);



begin
		-- instantiate memory
	

	-- debug_num_0    <= f_t1;
	-- debug_num_1    <= f_t2;
	-- debug_num_2    <= f_t3;
	-- debug_num_3    <= f_b1;
	-- debug_num_4    <= f_b2;
	-- debug_num_5    <= f_b3;
	-- debug_num_6    <= f_i1;
	-- debug_num_7    <= f_i2;

	debug_led_red <= (others => '0');
	debug_led_grn <= (others => '0');
	debug_column <= m_o_column;
	-- debug_valid <= f_i_valid;


	-- PROCESSES?!??!?!? --

	f_t1 <= unsigned(m_o_image0(2)) when f_state = "0001" else f_t1_next;
	f_t2 <= unsigned(m_o_image0(1)) when f_state = "0001" else f_t2_next;
	f_t3 <= unsigned(m_o_image0(0)) when f_state = "0001" else f_t3_next;
	f_b1 <= unsigned(m_o_image2(0)) when f_state = "0001" else f_b1_next;
	f_b2 <= unsigned(m_o_image2(1)) when f_state = "0001" else f_b2_next;
	f_b3 <= unsigned(m_o_image2(2)) when f_state = "0001" else f_b3_next;
	f_i1 <= unsigned(m_o_image1(0)) when f_state = "0001" else f_i1_next;
	f_i2 <= unsigned(m_o_image1(2)) when f_state = "0001" else f_i2_next;
	f_i_mode <= m_o_mode when f_state = "0001" else f_i_mode_next;
	f_i_row <= m_o_row when f_state = "0001" else f_i_row_next;
	f_i_valid <= '1' when (f_state = "0001" and m_o_valid = '1') or f_state /= "0001" else '0';

	o_image0 <= m_o_image0;
	o_image1 <= m_o_image1;
	o_image2 <= m_o_image2;

	o_mode <= "01" when i_reset = '1' else
			 "11" when f_o_mode = "11" or m_o_mode = "11" else
			 "10";

	process begin
        wait until rising_edge(i_clock);
        if (i_reset = '1') then 
            f_state <= "0001";
        elsif (f_i_valid = '1') then
            if (f_state = "0001") then
                f_t1_next <= unsigned(m_o_image0(1));
				f_t2_next <= unsigned(m_o_image0(0));
				f_t3_next <= unsigned(m_o_image1(0));
				f_b1_next <= unsigned(m_o_image2(1));
				f_b2_next <= unsigned(m_o_image2(2));
				f_b3_next <= unsigned(m_o_image1(2));
				f_i1_next <= unsigned(m_o_image2(0));
				f_i2_next <= unsigned(m_o_image0(2));

				f_i_mode_next <= m_o_mode;
				f_i_row_next <= m_o_row;
            else
                f_t1_next <= f_t2_next;
				f_t2_next <= f_t3_next;
				f_t3_next <= f_i1_next;
				f_b1_next <= f_b2_next;
				f_b2_next <= f_b3_next;
				f_b3_next <= f_i2_next;
				f_i1_next <= f_b1_next;
				f_i2_next <= f_t1_next;

				f_i_mode_next <= f_i_mode_next;
				f_i_row_next <= f_i_row_next;
            end if;
            f_state <= "rol" (f_state, 1);
        end if;

    end process;



	u_memory : entity work.memory(main) port map
	(
		--
		debug_valid    => debug_valid,
		debug_num_0    => debug_num_0,
		debug_num_1    => debug_num_1,
		debug_num_2    => debug_num_2,
		debug_num_3    => debug_num_3,
		debug_num_4    => debug_num_4,
		debug_num_5    => debug_num_5,
		debug_num_6    => debug_num_6,
		debug_num_7    => debug_num_7,
		debug_num_8    => debug_num_8,
		--
		i_valid  => i_valid,
		i_reset  => i_reset,
		i_pixel  => i_pixel,
		i_clock  => i_clock,
		o_valid  => m_o_valid,
		o_mode   => m_o_mode,
		o_image0 => m_o_image0,
		o_image1 => m_o_image1,
		o_image2 => m_o_image2,
		o_row    => m_o_row,
		o_column => m_o_column
	);

	u_flow : entity work.flow(main) port map
	(
		-- debug
		-- debug_valid    => debug_valid,
		-- debug_num_0    => debug_num_0,
		-- debug_num_1    => debug_num_1,
		-- debug_num_2    => debug_num_2,
		-- debug_num_3    => debug_num_3,
		-- debug_num_4    => debug_num_4,
		-- debug_num_5    => debug_num_5,
		-- debug_num_6    => debug_num_6,
		-- debug_num_7    => debug_num_7,
		-- debug_num_8    => debug_num_8,
		--
		t1			=> f_t1,
		t2			=> f_t2,
		t3			=> f_t3,
		b1			=> f_b1,
		b2			=> f_b2,
		b3			=> f_b3,
		i1			=> f_i1,
		i2			=> f_i2,
		i_clock		=> i_clock,
		i_reset		=> i_reset,
		i_valid		=> f_i_valid,
		i_mode		=> f_i_mode,
		i_row		=> f_i_row,
		o_row 		=> o_row,
		o_dir		=> o_dir,
		o_edge		=> o_edge,
		o_valid		=> o_valid,
		o_mode	    => f_o_mode
	);

end architecture;
