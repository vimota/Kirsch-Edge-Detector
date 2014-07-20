library ieee;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
use work.kirsch_utility_pkg.all ;

entity memory is
	port (
		i_valid  : in std_logic;
		i_reset  : in std_logic;
		i_pixel  : in std_logic_vector(7 downto 0);
		i_clock  : in std_logic;
		o_valid  : out std_logic;
		o_mode   : out std_logic_vector(1 downto 0);
		o_column : out std_logic_vector(7 downto 0);
		o_row    : out std_logic_vector(7 downto 0);
		o_image0, o_image1, o_image2   : out image_type
		);
end memory ;

architecture main of memory is

	-- A function to rotate left (rol) a vector by n bits
	function "rol" ( a : std_logic_vector; n : natural )
		return std_logic_vector
	is
	begin
		return std_logic_vector( unsigned(a) rol n );
	end function;


	constant mem_data_width : natural := 8;
	constant mem_addr_width : natural := 8;
	signal mem_data : std_logic_vector(mem_data_width - 1 downto 0) ;
	signal mem_addr : std_logic_vector(mem_addr_width - 1 downto 0) ;
	signal mem_wrn, mem_wrn_current  : std_logic_vector(2 downto 0) := "001";
	type mem_q_type is array (2 downto 0 ) of std_logic_vector(mem_data_width - 1 downto 0) ;
	signal mem_q : mem_q_type ;
	signal buffer0, buffer1, buffer2 : image_type;
	signal first_bubble, busySignal, busySignalDelayed : std_logic := '0';
	signal mode : std_logic_vector(1 downto 0) := "10";

	signal column, row : unsigned(7 downto 0) := (others => '0');


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
	writeProc : process (i_clock)
	begin
		if rising_edge(i_clock) then
			if (i_reset = '1' or (row = 255 and column = 255 and first_bubble = '1')) then
				row <= (others => '0');
				column <= (others => '0');
				mem_wrn <= (others => '0');
				mem_wrn_current <= (others => '0');
				first_bubble <= '0';
				if (i_reset = '1') then
					mode <= "01";
				else
					mode <= "10";
				end if;
			else
				-- coming from reset state
				if (mode = "01") then
					mode <= "10";
				end if;

				if (i_valid = '1') then
					mode <= "11";
					first_bubble <= '1';
					mem_data <= i_pixel;

					-- initialize mem_wrn_current
					if ((mem_wrn_current(0) or mem_wrn_current(1) or mem_wrn_current(2)) /= '1') then
						mem_wrn_current <= "001";
						mem_wrn <= "001";
					else
						--	update column
						mem_wrn <= mem_wrn_current;
					end if;
				else
					if (first_bubble = '1') then
						first_bubble <= '0';
						if (column = 255) then
							column <= (others => '0');
								row <= row + 1;
								-- roll the old mem_wrn and
								mem_wrn_current <= "rol" ( mem_wrn_current , 1);
						else
							column <= column + 1;
						end if;
					end if;

					-- don't write to memory when data invalid
					mem_wrn <= (others => '0');
				end if;
			end if;
		end if;
	end process;

	readProc : process (i_clock)
	begin
		if rising_edge(i_clock) then
			if (first_bubble = '1') then

				if (row > 1 and column > 1) then
					o_valid <= '1';
				end if;

				buffer0 <= buffer1;
				buffer1 <= buffer2;

				case mem_wrn_current is
					when "001" =>
						if (row > 1) then
							buffer2(0) <= mem_q(1);
							buffer2(1) <= mem_q(2);
							buffer2(2) <= mem_data;
						else
							buffer2(0) <= mem_data;
							buffer2(1) <= mem_q(1);
							buffer2(2) <= mem_q(2);
						end if;
					when "010" =>
						if (row > 1) then
							buffer2(0) <= mem_q(2);
							buffer2(1) <= mem_q(1);
							buffer2(2) <= mem_data;
						else
							buffer2(0) <= mem_q(0);
							buffer2(1) <= mem_data;
							buffer2(2) <= mem_q(2);
						end if;
					when "100" =>
						buffer2(0) <= mem_q(0);
						buffer2(1) <= mem_q(1);
						buffer2(2) <= mem_data;
					when others =>
						buffer2(0) <= (others => 'X');
						buffer2(1) <= (others => 'X');
						buffer2(2) <= (others => 'X');
				end case;

				-- if mem_wrn_current(0) = '1' then
				-- 	buffer2(0) <= mem_data;
				-- else
				-- 	buffer2(0) <= mem_q(0);
				-- end if;

			else
				o_valid <= '0';
			end if;
		end if;
	end process;

	outputProc : process (i_clock)
	begin
		if rising_edge(i_clock) then
			o_column <= mem_addr;
			o_row    <= std_logic_vector(row);
		end if;
	end process;

	validProc : process (i_clock)
	begin
		if rising_edge(i_clock) then
			if (row = 255 and column = 255 and first_bubble = '1') then
				busySignal <= '0';
			elsif (i_valid = '1' or busySignal = '1') then
				busySignal <= '1';
			else
				busySignal <= '0';
			end if;
		end if;
	end process;

	process (i_clock)
	begin
		if rising_edge(i_clock) then
			busySignalDelayed <= busySignal;
		end if;
	end process;

	mem_addr <= std_logic_vector(column);
	o_image0 <= buffer0;
	o_image1 <= buffer1;
	o_image2 <= buffer2;

	o_mode	 <= "01" when i_reset = '1' else
							"11" when busySignal = '1' or busySignalDelayed = '1' or i_valid = '1' else
							"10"; --when busySignal = '0' and i_valid = '0';

end main;

