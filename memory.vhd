library ieee;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity memory is
	port (
		i_valid  : in std_logic;
		i_reset  : in std_logic;
		i_pixel  : in std_logic_vector(7 downto 0);
		i_clock  : in std_logic;
		o_valid  : out std_logic;
		o_mode   : out std_logic_vector(2 downto 0);
		o_row    : out std_logic_vector(2 downto 0);
		type image_type is array (8 downto 0) of
			std_logic_vector(7 downto 0) ;
		o_image  : out image_type
		);
end memory ;

architecture main of memory is
	constant mem_data_width : natural := 8;
	constant mem_addr_width : natural := 256;
	signal mem_data : std_logic_vector(mem_data_width - 1 downto 0) ;
	signal mem_addr : std_logic_vector(mem_addr_width - 1 downto 0) ;
	type mem_q_type is array (2 downto 0 ) of std_logic_vector(mem_data_width - 1 downto 0) ;
	signal mem_q : mem_q_type ;

	signal column, row : unsigned := 0;

	
begin
	-- instantiate memory
	u_mem1 : entity work.mem(main)
	generic map (
		data_width => mem_data_width,
		addr_width => mem_addr_width
	)
	port map (
		address  => mem_addr,
		clock    => i_clock ,
		data     => mem_data,
		wren     => mem_wrn(0),
		q        => mem_q(0)
	);

	u_mem2 : entity work.mem(main)
	generic map (
		data_width => mem_data_width,
		addr_width => mem_addr_width
	)
	port map (
		address  => mem_addr,
		clock    => i_clock ,
		data     => mem_data,
		wren     => mem_wrn(1),
		q        => mem_q(1)
	);

	u_mem3 : entity work.mem(main)
	generic map (
		data_width => mem_data_width,
		addr_width => mem_addr_width
	)
	port map (
		address  => mem_addr,
		clock    => i_clock ,
		data     => mem_data,
		wren     => mem_wrn(2),
		q        => mem_q(2)
	);

	-- writing process
	process (i_clock)
	begin
		if rising_edge(i_clock) then
			if (i_valid = '1') then

			end if;
		end if;
	end process;
	
	-- reading process
	process (i_clock)
	begin
		if rising_edge(i_clock) then
			if (i_valid = '1') then
			--	update column
				if (column = 255) then
					column <= 0;
					row <= row + 1;
					mem_wrn <= "rol" ( mem_wrn , 1);
				else
					column <= column + 1;
				end if;

			end if;
		end if;
	end process;
	
	mem_addr <= std_logic_vector(column);
	o_row <= std_logic_vector(row);

end main;

