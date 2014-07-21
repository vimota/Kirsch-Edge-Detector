library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flow is
  port(
  	------------------------------------------
    -- main inputs and outputs
    t1, t2, t3, b1, b2, b3, i1, i2	: in  unsigned(7 downto 0);
    i_clock, i_reset, i_valid       : in  std_logic;
    i_mode                          : in  std_logic_vector(1 downto 0);
    i_row                           : in  std_logic_vector(7 downto 0);
    o_dir							: out std_logic_vector(2 downto 0);
    o_edge, o_valid					: out std_logic;
    o_mode                          : out std_logic_vector(1 downto 0);
    o_row                           : out std_logic_vector(7 downto 0)
    ------------------------------------------
  );  
end entity;

architecture main of flow is

function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
is
begin
    return std_logic_vector( unsigned(a) rol n );
end function;

-- P1 related signals
signal p11, p12     	: unsigned(9 downto 0);
signal p13              : unsigned(10 downto 0);
signal p10              : std_logic;
signal p1m              : std_logic_vector(1 downto 0);
signal p1r              : std_logic_vector(7 downto 0);

-- P2 related signals
signal p21, p22    		: signed(11 downto 0);
signal p23              : unsigned(10 downto 0);
signal p20              : std_logic;
signal p2m              : std_logic_vector(1 downto 0);
signal p2r              : std_logic_vector(7 downto 0);

-- P3 related signals
signal p31         		: signed(11 downto 0);
signal p32              : unsigned(10 downto 0);
signal p35, p30   		: std_logic;
signal p3m              : std_logic_vector(1 downto 0);
signal p3r              : std_logic_vector(7 downto 0);

-- P4 related signals
signal p41, p45, p40    : std_logic;
signal p43, p4s    		: signed(11 downto 0);
signal p4m              : std_logic_vector(1 downto 0);
signal p4r              : std_logic_vector(7 downto 0);

-- P5 related signals
signal p51, p50			: std_logic;
signal p5m              : std_logic_vector(1 downto 0);
signal p5r              : std_logic_vector(7 downto 0);

-- persistents
signal max_fwd, prev_edge	: std_logic;
signal prev_max				: signed(11 downto 0);
signal max_dir              : std_logic_vector(2 downto 0);
signal state                : std_logic_vector(3 downto 0);



begin
    -- P1 ---------------------------
    --process begin
        --wait until rising_edge(i_clock);
        p11 <= resize(resize(t1, 9) + resize(t2, 9), 10) + resize(t3, 10);
        p12 <= resize(resize(b1, 9) + resize(b2, 9), 10) + resize(b3, 10);
        p13 <= resize(resize(i1, 9) + resize(i2, 9), 11) + (resize(resize(i1, 9) + resize(i2, 9), 11) sll 2);
        p10 <= i_valid;
        p1m <= i_mode;
        p1r <= i_row;
    --end process;

    -- P2 ---------------------------
    process begin
        wait until rising_edge(i_clock);
        p21 <= signed(resize(p11, 12) + (resize(p11, 12) sll 2)) - resize(signed(resize(p12, 11) + (resize(p12, 11) sll 1)), 12);
        p22 <= signed(resize(p12, 12) + (resize(p12, 12) sll 2)) - resize(signed(resize(p11, 11) + (resize(p11, 11) sll 1)), 12);
        p23 <= p13;
        p20 <= p10;
        p2m <= p1m;
        p2r <= p1r;
    end process;

    -- P3 ---------------------------
    process begin
        wait until rising_edge(i_clock);
        -- MAX_GT
        if (p21 >= p22) then
  			p35 <= '1';
			p31 <= p21;
		else
			p35 <= '0';
			p31 <= p22;
		end if;
		-- end max

		p32 <= p23;
        p30 <= p20;
        p3m <= p2m;
        p3r <= p2r;
    end process;

    -- P4 ---------------------------
    p4s <= p31 - signed(p32);

    process begin
        wait until rising_edge(i_clock);
        if (p4s > 383) then
        	p41 <= '1';
        else
        	p41 <= '0';
        end if;

        p43 <= p4s;
        p45 <= p35;
        p4m <= p3m;
        p40 <= p30;
        p4r <= p3r;
    end process;

    -- P5 ---------------------------
    p51 <=  '1' when p43 > prev_max OR (p43 = prev_max AND max_fwd = '0' AND p45 = '1') else
            '0';

    process begin
        wait until rising_edge(i_clock);

        if (i_reset = '1' or state(3) = '1') then
            prev_max <= (others => '0');
            max_fwd <= '0';
            prev_edge <= '0';
        elsif (p51 = '1') then
        	prev_max <= p43;
        	max_fwd <= p45;
        	prev_edge <= p41;
        else
        	prev_max <= prev_max;
        	max_fwd <= max_fwd;
        	prev_edge <= prev_edge;
        end if;

        p5m <= p4m;
        p5r <= p4r;
        p50 <= p40;
        o_edge <= prev_edge;
    end process;

    process begin
        wait until rising_edge(i_clock);
        if (p51 = '1') then
            if (state(0) = '1') then
                max_dir(2 downto 1) <= "00";
            elsif (state(1) = '1') then
                max_dir(2 downto 1) <= "10";
            elsif (state(2) = '1') then
                max_dir(2 downto 1) <= "01";
            elsif (state(3) = '1') then
                max_dir(2 downto 1) <= "11";
            end if;
            max_dir(0) <= not p45;
        else 
            max_dir <= max_dir;
        end if;
    end process;

    
    o_dir <= max_dir;
    o_mode <= "01" when i_reset = '1' else p5m;
    o_row <= p5r;

    ------------------------------------

    process begin
        wait until rising_edge(i_clock);
        if (i_reset = '1') then 
            state <= "0001";
        elsif (p40 = '1') then
            state <= "rol" (state, 1);
        end if;

        if (state(3) = '1' and i_reset = '0') then
            o_valid <= '1';
        else
            o_valid <= '0';
        end if;
    end process;

end architecture main;