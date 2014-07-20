
-- 
-- Definition of  memory
-- 
--      Sun Jul 20 00:55:04 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_mem_8_8_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_new_0_mem_8_8_main ;

architecture INTERFACE_unfold_2 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_2 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mem_8_8 is 
   port (
      address : IN std_logic_vector (7 DOWNTO 0) ;
      clock : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      wren : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end mem_8_8 ;

architecture main_unfold_1 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_2);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_1 ;


architecture INTERFACE of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE ;


architecture main_unfold_2 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_2 ;


architecture INTERFACE_unfold_1 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_1 ;


architecture main of mem_8_8 is 
   component ram_new_0_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_1);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_clock_0_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_clock_0_8 ;

architecture INTERFACE of counter_up_cnt_en_clock_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx21, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, 
      nx30, nx31, nx32, nx33, nx34, nx35, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx21 ;
   q(6) <= nx23 ;
   q(5) <= nx25 ;
   q(4) <= nx27 ;
   q(3) <= nx29 ;
   q(2) <= nx31 ;
   q(1) <= nx33 ;
   q(0) <= nx35 ;
   GND <= '0' ;
   DFFPCE (nx20,GND,GND,cnt_en,clock,nx21) ;
   DFFPCE (nx22,GND,GND,cnt_en,clock,nx23) ;
   DFFPCE (nx24,GND,GND,cnt_en,clock,nx25) ;
   DFFPCE (nx26,GND,GND,cnt_en,clock,nx27) ;
   DFFPCE (nx28,GND,GND,cnt_en,clock,nx29) ;
   DFFPCE (nx30,GND,GND,cnt_en,clock,nx31) ;
   DFFPCE (nx32,GND,GND,cnt_en,clock,nx33) ;
   DFFPCE (nx34,GND,GND,cnt_en,clock,nx35) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx21, a(6)=>nx23, a(5)=>
      nx25, a(4)=>nx27, a(3)=>nx29, a(2)=>nx31, a(1)=>nx33, a(0)=>nx35, d(7)
      =>nx20, d(6)=>nx22, d(5)=>nx24, d(4)=>nx26, d(3)=>nx28, d(2)=>nx30, 
      d(1)=>nx32, d(0)=>nx34, cout=>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_8 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx21, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, 
      nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, 
      nx42, nx43, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx21 ;
   q(6) <= nx23 ;
   q(5) <= nx25 ;
   q(4) <= nx27 ;
   q(3) <= nx29 ;
   q(2) <= nx31 ;
   q(1) <= nx33 ;
   q(0) <= nx35 ;
   GND <= '0' ;
   DFFPCE (nx20,GND,GND,clk_en,clock,nx21) ;
   DFFPCE (nx22,GND,GND,clk_en,clock,nx23) ;
   DFFPCE (nx24,GND,GND,clk_en,clock,nx25) ;
   DFFPCE (nx26,GND,GND,clk_en,clock,nx27) ;
   DFFPCE (nx28,GND,GND,clk_en,clock,nx29) ;
   DFFPCE (nx30,GND,GND,clk_en,clock,nx31) ;
   DFFPCE (nx32,GND,GND,clk_en,clock,nx33) ;
   DFFPCE (nx34,GND,GND,clk_en,clock,nx35) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx21, a(6)=>nx23, a(5)=>
      nx25, a(4)=>nx27, a(3)=>nx29, a(2)=>nx31, a(1)=>nx33, a(0)=>nx35, d(7)
      =>nx36, d(6)=>nx37, d(5)=>nx38, d(4)=>nx39, d(3)=>nx40, d(2)=>nx41, 
      d(1)=>nx42, d(0)=>nx43, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx20 <= nx36 AND NOT_SCLEAR ;
   nx22 <= nx37 AND NOT_SCLEAR ;
   nx24 <= nx38 AND NOT_SCLEAR ;
   nx26 <= nx39 AND NOT_SCLEAR ;
   nx28 <= nx40 AND NOT_SCLEAR ;
   nx30 <= nx41 AND NOT_SCLEAR ;
   nx32 <= nx42 AND NOT_SCLEAR ;
   nx34 <= nx43 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity memory is 
   port (
      i_valid : IN std_logic ;
      i_reset : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      i_clock : IN std_logic ;
      o_valid : OUT std_logic ;
      o_column : OUT std_logic_vector (7 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0)) ;
end memory ;

architecture main of memory is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_clock_0_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   for u_mem1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for u_mem2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for u_mem3 : mem_8_8 use entity work.mem_8_8(main);
   signal o_valid_EXMPLR218: std_logic ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, GND: std_logic ;
   
   signal mem_wrn_current_0n4ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal rtlc0n92, rtlc0n95, not_rtlc0n95, not_i_valid, not_rtlcs0, 
      not_first_bubble, rtlc0n169, rtlc0n172, rtlc0n196, not_rtlc0n196, 
      rtlc0n207, not_rtlc0n207, rtlc0n225, not_rtlc0n172: std_logic ;
   
   signal buffer2_1n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_1n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlc1n99, rtlc1n339, rtlc1n427, rtlcn97, rtlcn121, not_rtlcn225, 
      not_rtlcn226, rtlcn217, rtlcn225, rtlcn226, rtlcs0: std_logic ;
   
   signal o_image1_0_EXMPLR313: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR314: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR315: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR316: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR317: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR318: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn229, not_rtlc0n225, rtlcn231, rtlcn233, rtlcn234, rtlcn238, 
      rtlcn240: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   o_valid <= o_valid_EXMPLR218 ;
   o_image1_0(7) <= o_image1_0_EXMPLR313(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR313(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR313(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR313(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR313(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR313(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR313(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR313(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR314(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR314(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR314(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR314(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR314(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR314(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR314(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR314(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR315(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR315(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR315(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR315(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR315(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR315(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR315(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR315(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR316(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR316(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR316(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR316(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR316(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR316(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR316(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR316(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR317(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR317(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR317(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR317(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR317(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR317(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR317(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR317(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR318(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR318(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR318(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR318(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR318(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR318(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR318(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR318(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   u_mem1 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>column(0), 
      clock=>i_clock, data(7)=>mem_data(7), data(6)=>mem_data(6), data(5)=>
      mem_data(5), data(4)=>mem_data(4), data(3)=>mem_data(3), data(2)=>
      mem_data(2), data(1)=>mem_data(1), data(0)=>mem_data(0), wren=>
      mem_wrn(0), q(7)=>mem_q_0(7), q(6)=>mem_q_0(6), q(5)=>mem_q_0(5), q(4)
      =>mem_q_0(4), q(3)=>mem_q_0(3), q(2)=>mem_q_0(2), q(1)=>mem_q_0(1), 
      q(0)=>mem_q_0(0));
   u_mem2 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>column(0), 
      clock=>i_clock, data(7)=>mem_data(7), data(6)=>mem_data(6), data(5)=>
      mem_data(5), data(4)=>mem_data(4), data(3)=>mem_data(3), data(2)=>
      mem_data(2), data(1)=>mem_data(1), data(0)=>mem_data(0), wren=>
      mem_wrn(1), q(7)=>mem_q_1(7), q(6)=>mem_q_1(6), q(5)=>mem_q_1(5), q(4)
      =>mem_q_1(4), q(3)=>mem_q_1(3), q(2)=>mem_q_1(2), q(1)=>mem_q_1(1), 
      q(0)=>mem_q_1(0));
   u_mem3 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>column(0), 
      clock=>i_clock, data(7)=>mem_data(7), data(6)=>mem_data(6), data(5)=>
      mem_data(5), data(4)=>mem_data(4), data(3)=>mem_data(3), data(2)=>
      mem_data(2), data(1)=>mem_data(1), data(0)=>mem_data(0), wren=>
      mem_wrn(2), q(7)=>mem_q_2(7), q(6)=>mem_q_2(6), q(5)=>mem_q_2(5), q(4)
      =>mem_q_2(4), q(3)=>mem_q_2(3), q(2)=>mem_q_2(2), q(1)=>mem_q_2(1), 
      q(0)=>mem_q_2(0));
   rtlc0n225 <= not_i_valid OR not_rtlc0n95 ;
   rtlc0n169 <= not_first_bubble OR not_rtlcs0 ;
   rtlc0n207 <= i_valid OR not_first_bubble ;
   not_rtlc0n207 <= NOT rtlc0n207 ;
   not_rtlc0n196 <= NOT rtlc0n196 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc0n92 <= mem_wrn_current(0) OR mem_wrn_current(1) ;
   rtlc0n95 <= rtlc0n92 OR mem_wrn_current(2) ;
   not_rtlc0n95 <= NOT rtlc0n95 ;
   rtlc1n99 <= rtlc1n339 AND rtlc1n427 ;
   rtlc1_443_or_0 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc1n339);
   rtlc1_469_or_1 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc1n427);
   rtlc_16_or_2 : or_3u_3u port map ( a(2)=>i_valid, a(1)=>not_rtlcs0, a(0)
      =>not_first_bubble, d=>rtlc0n196);
   buffer2_select_1i1Bus8_0 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(0), b(1)=>
      buffer2_1n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_1n4ss1(0));
   buffer2_select_1i1Bus8_1 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(1), b(1)=>
      buffer2_1n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_1n4ss1(1));
   buffer2_select_1i1Bus8_2 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(2), b(1)=>
      buffer2_1n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_1n4ss1(2));
   buffer2_select_1i1Bus8_3 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(3), b(1)=>
      buffer2_1n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_1n4ss1(3));
   buffer2_select_1i1Bus8_4 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(4), b(1)=>
      buffer2_1n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_1n4ss1(4));
   buffer2_select_1i1Bus8_5 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(5), b(1)=>
      buffer2_1n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_1n4ss1(5));
   buffer2_select_1i1Bus8_6 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(6), b(1)=>
      buffer2_1n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_1n4ss1(6));
   buffer2_select_1i1Bus8_7 : select_3_3 port map ( a(2)=>not_rtlcn225, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn97, b(2)=>mem_q_0(7), b(1)=>
      buffer2_1n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_1n4ss1(7));
   buffer2_select_1i1Bus8_8 : select_3_3 port map ( a(2)=>not_rtlcn226, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(0), b(1)=>
      buffer2_1n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_1n4ss1(8));
   buffer2_select_1i1Bus8_9 : select_3_3 port map ( a(2)=>not_rtlcn226, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(1), b(1)=>
      buffer2_1n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_1n4ss1(9));
   buffer2_select_1i1Bus8_10 : select_3_3 port map ( a(2)=>not_rtlcn226, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(2), b(1)=>
      buffer2_1n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_1n4ss1(10));
   buffer2_select_1i1Bus8_11 : select_3_3 port map ( a(2)=>not_rtlcn226, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(3), b(1)=>
      buffer2_1n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_1n4ss1(11));
   buffer2_select_1i1Bus8_12 : select_3_3 port map ( a(2)=>not_rtlcn226, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(4), b(1)=>
      buffer2_1n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_1n4ss1(12));
   buffer2_select_1i1Bus8_13 : select_3_3 port map ( a(2)=>not_rtlcn226, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(5), b(1)=>
      buffer2_1n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_1n4ss1(13));
   buffer2_select_1i1Bus8_14 : select_3_3 port map ( a(2)=>not_rtlcn226, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(6), b(1)=>
      buffer2_1n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_1n4ss1(14));
   buffer2_select_1i1Bus8_15 : select_3_3 port map ( a(2)=>not_rtlcn226, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn121, b(2)=>mem_q_1(7), b(1)=>
      buffer2_1n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_1n4ss1(15));
   rtlcn97 <= rtlc1n339 AND mem_wrn_current(1) ;
   rtlcn121 <= rtlc1n339 AND mem_wrn_current(0) ;
   rtlcn217 <= mem_wrn_current(2) OR rtlc1n339 ;
   not_rtlcn225 <= NOT rtlcn225 ;
   not_rtlcn226 <= NOT rtlcn226 ;
   rtlc0n172 <= rtlc0n95 when i_valid = '1' else rtlc0n169 ;
   buffer2_1n2ss1(0) <= mem_q_1(0) when rtlc1n339 = '1' else mem_data(0) ;
   buffer2_1n2ss1(1) <= mem_q_1(1) when rtlc1n339 = '1' else mem_data(1) ;
   buffer2_1n2ss1(2) <= mem_q_1(2) when rtlc1n339 = '1' else mem_data(2) ;
   buffer2_1n2ss1(3) <= mem_q_1(3) when rtlc1n339 = '1' else mem_data(3) ;
   buffer2_1n2ss1(4) <= mem_q_1(4) when rtlc1n339 = '1' else mem_data(4) ;
   buffer2_1n2ss1(5) <= mem_q_1(5) when rtlc1n339 = '1' else mem_data(5) ;
   buffer2_1n2ss1(6) <= mem_q_1(6) when rtlc1n339 = '1' else mem_data(6) ;
   buffer2_1n2ss1(7) <= mem_q_1(7) when rtlc1n339 = '1' else mem_data(7) ;
   buffer2_1n4ss1(16) <= mem_data(0) when rtlcn217 = '1' else mem_q_2(0) ;
   buffer2_1n4ss1(17) <= mem_data(1) when rtlcn217 = '1' else mem_q_2(1) ;
   buffer2_1n4ss1(18) <= mem_data(2) when rtlcn217 = '1' else mem_q_2(2) ;
   buffer2_1n4ss1(19) <= mem_data(3) when rtlcn217 = '1' else mem_q_2(3) ;
   buffer2_1n4ss1(20) <= mem_data(4) when rtlcn217 = '1' else mem_q_2(4) ;
   buffer2_1n4ss1(21) <= mem_data(5) when rtlcn217 = '1' else mem_q_2(5) ;
   buffer2_1n4ss1(22) <= mem_data(6) when rtlcn217 = '1' else mem_q_2(6) ;
   buffer2_1n4ss1(23) <= mem_data(7) when rtlcn217 = '1' else mem_q_2(7) ;
   not_rtlc0n172 <= NOT rtlc0n172 ;
   not_first_bubble <= NOT first_bubble ;
   not_i_valid <= NOT i_valid ;
   rtlc_506_and_19 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>column(0), d=>rtlcs0);
   mem_wrn_current_0n4ss1(1) <= mem_wrn_current(0) AND not_i_valid ;
   mem_wrn_current_0n4ss1(2) <= mem_wrn_current(1) AND not_i_valid ;
   mem_wrn_current_0n4ss1(0) <= mem_wrn_current(2) OR i_valid ;
   rtlcn225 <= mem_wrn_current(0) OR rtlcn97 ;
   rtlcn226 <= mem_wrn_current(1) OR rtlcn121 ;
   modgen_counter_row : counter_up_cnt_en_clock_0_8 port map ( clock=>
      i_clock, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)
      =>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(7)=>DANGLING(0), data(6)=>DANGLING(1), 
      data(5)=>DANGLING(2), data(4)=>DANGLING(3), data(3)=>DANGLING(4), 
      data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>DANGLING(7), aset
      =>GND, sclear=>GND, updn=>PWR, cnt_en=>not_rtlc0n196);
   modgen_counter_column : counter_up_sclear_clock_clk_en_0_8 port map ( 
      clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), 
      q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), 
      q(0)=>column(0), clk_en=>not_rtlc0n207, aclear=>GND, sload=>GND, 
      data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>DANGLING(10), 
      data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>DANGLING(13), 
      data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, sclear=>
      rtlcs0, updn=>PWR, cnt_en=>PWR);
   not_rtlc0n225 <= NOT rtlc0n225 ;
   rtlcn229 <= mem_wrn_current(2) AND not_rtlc0n225 ;
   rtlcn231 <= mem_wrn_current(1) AND not_rtlc0n225 ;
   rtlcn233 <= mem_wrn_current(0) OR not_rtlc0n95 ;
   rtlcn234 <= rtlcn233 AND i_valid ;
   rtlcn238 <= rtlc1n99 OR not_first_bubble ;
   rtlcn240 <= first_bubble when rtlcn238 = '1' else o_valid_EXMPLR218 ;
   DFFRSE (rtlcn229,GND,GND,PWR,i_clock,mem_wrn(2)) ;
   DFFRSE (rtlcn231,GND,GND,PWR,i_clock,mem_wrn(1)) ;
   DFFPCE (mem_wrn_current_0n4ss1(2),GND,GND,not_rtlc0n172,i_clock,
   mem_wrn_current(2)) ;
   DFFPCE (mem_wrn_current_0n4ss1(1),GND,GND,not_rtlc0n172,i_clock,
   mem_wrn_current(1)) ;
   DFFPCE (mem_wrn_current_0n4ss1(0),GND,GND,not_rtlc0n172,i_clock,
   mem_wrn_current(0)) ;
   DFFPCE (i_pixel(7),GND,GND,i_valid,i_clock,mem_data(7)) ;
   DFFPCE (i_pixel(6),GND,GND,i_valid,i_clock,mem_data(6)) ;
   DFFPCE (i_pixel(5),GND,GND,i_valid,i_clock,mem_data(5)) ;
   DFFPCE (i_pixel(4),GND,GND,i_valid,i_clock,mem_data(4)) ;
   DFFPCE (i_pixel(3),GND,GND,i_valid,i_clock,mem_data(3)) ;
   DFFPCE (i_pixel(2),GND,GND,i_valid,i_clock,mem_data(2)) ;
   DFFPCE (i_pixel(1),GND,GND,i_valid,i_clock,mem_data(1)) ;
   DFFPCE (i_pixel(0),GND,GND,i_valid,i_clock,mem_data(0)) ;
   DFFPCE (buffer2_1n4ss1(23),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(7)) ;
   DFFPCE (buffer2_1n4ss1(22),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(6)) ;
   DFFPCE (buffer2_1n4ss1(21),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(5)) ;
   DFFPCE (buffer2_1n4ss1(20),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(4)) ;
   DFFPCE (buffer2_1n4ss1(19),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(3)) ;
   DFFPCE (buffer2_1n4ss1(18),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(2)) ;
   DFFPCE (buffer2_1n4ss1(17),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(1)) ;
   DFFPCE (buffer2_1n4ss1(16),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR318(0)) ;
   DFFPCE (buffer2_1n4ss1(15),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(7)) ;
   DFFPCE (buffer2_1n4ss1(14),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(6)) ;
   DFFPCE (buffer2_1n4ss1(13),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(5)) ;
   DFFPCE (buffer2_1n4ss1(12),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(4)) ;
   DFFPCE (buffer2_1n4ss1(11),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(3)) ;
   DFFPCE (buffer2_1n4ss1(10),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(2)) ;
   DFFPCE (buffer2_1n4ss1(9),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(1)) ;
   DFFPCE (buffer2_1n4ss1(8),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR317(0)) ;
   DFFPCE (buffer2_1n4ss1(7),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(7)) ;
   DFFPCE (buffer2_1n4ss1(6),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(6)) ;
   DFFPCE (buffer2_1n4ss1(5),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(5)) ;
   DFFPCE (buffer2_1n4ss1(4),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(4)) ;
   DFFPCE (buffer2_1n4ss1(3),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(3)) ;
   DFFPCE (buffer2_1n4ss1(2),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(2)) ;
   DFFPCE (buffer2_1n4ss1(1),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(1)) ;
   DFFPCE (buffer2_1n4ss1(0),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR316(0)) ;
   DFFPCE (o_image2_2_EXMPLR318(7),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(7)) ;
   DFFPCE (o_image2_2_EXMPLR318(6),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(6)) ;
   DFFPCE (o_image2_2_EXMPLR318(5),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(5)) ;
   DFFPCE (o_image2_2_EXMPLR318(4),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(4)) ;
   DFFPCE (o_image2_2_EXMPLR318(3),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(3)) ;
   DFFPCE (o_image2_2_EXMPLR318(2),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(2)) ;
   DFFPCE (o_image2_2_EXMPLR318(1),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(1)) ;
   DFFPCE (o_image2_2_EXMPLR318(0),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR315(0)) ;
   DFFPCE (o_image2_1_EXMPLR317(7),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(7)) ;
   DFFPCE (o_image2_1_EXMPLR317(6),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(6)) ;
   DFFPCE (o_image2_1_EXMPLR317(5),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(5)) ;
   DFFPCE (o_image2_1_EXMPLR317(4),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(4)) ;
   DFFPCE (o_image2_1_EXMPLR317(3),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(3)) ;
   DFFPCE (o_image2_1_EXMPLR317(2),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(2)) ;
   DFFPCE (o_image2_1_EXMPLR317(1),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(1)) ;
   DFFPCE (o_image2_1_EXMPLR317(0),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR314(0)) ;
   DFFPCE (o_image2_0_EXMPLR316(7),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(7)) ;
   DFFPCE (o_image2_0_EXMPLR316(6),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(6)) ;
   DFFPCE (o_image2_0_EXMPLR316(5),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(5)) ;
   DFFPCE (o_image2_0_EXMPLR316(4),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(4)) ;
   DFFPCE (o_image2_0_EXMPLR316(3),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(3)) ;
   DFFPCE (o_image2_0_EXMPLR316(2),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(2)) ;
   DFFPCE (o_image2_0_EXMPLR316(1),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(1)) ;
   DFFPCE (o_image2_0_EXMPLR316(0),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR313(0)) ;
   DFFPCE (o_image1_2_EXMPLR315(7),GND,GND,first_bubble,i_clock,
   o_image0_2(7)) ;
   DFFPCE (o_image1_2_EXMPLR315(6),GND,GND,first_bubble,i_clock,
   o_image0_2(6)) ;
   DFFPCE (o_image1_2_EXMPLR315(5),GND,GND,first_bubble,i_clock,
   o_image0_2(5)) ;
   DFFPCE (o_image1_2_EXMPLR315(4),GND,GND,first_bubble,i_clock,
   o_image0_2(4)) ;
   DFFPCE (o_image1_2_EXMPLR315(3),GND,GND,first_bubble,i_clock,
   o_image0_2(3)) ;
   DFFPCE (o_image1_2_EXMPLR315(2),GND,GND,first_bubble,i_clock,
   o_image0_2(2)) ;
   DFFPCE (o_image1_2_EXMPLR315(1),GND,GND,first_bubble,i_clock,
   o_image0_2(1)) ;
   DFFPCE (o_image1_2_EXMPLR315(0),GND,GND,first_bubble,i_clock,
   o_image0_2(0)) ;
   DFFPCE (o_image1_1_EXMPLR314(7),GND,GND,first_bubble,i_clock,
   o_image0_1(7)) ;
   DFFPCE (o_image1_1_EXMPLR314(6),GND,GND,first_bubble,i_clock,
   o_image0_1(6)) ;
   DFFPCE (o_image1_1_EXMPLR314(5),GND,GND,first_bubble,i_clock,
   o_image0_1(5)) ;
   DFFPCE (o_image1_1_EXMPLR314(4),GND,GND,first_bubble,i_clock,
   o_image0_1(4)) ;
   DFFPCE (o_image1_1_EXMPLR314(3),GND,GND,first_bubble,i_clock,
   o_image0_1(3)) ;
   DFFPCE (o_image1_1_EXMPLR314(2),GND,GND,first_bubble,i_clock,
   o_image0_1(2)) ;
   DFFPCE (o_image1_1_EXMPLR314(1),GND,GND,first_bubble,i_clock,
   o_image0_1(1)) ;
   DFFPCE (o_image1_1_EXMPLR314(0),GND,GND,first_bubble,i_clock,
   o_image0_1(0)) ;
   DFFPCE (o_image1_0_EXMPLR313(7),GND,GND,first_bubble,i_clock,
   o_image0_0(7)) ;
   DFFPCE (o_image1_0_EXMPLR313(6),GND,GND,first_bubble,i_clock,
   o_image0_0(6)) ;
   DFFPCE (o_image1_0_EXMPLR313(5),GND,GND,first_bubble,i_clock,
   o_image0_0(5)) ;
   DFFPCE (o_image1_0_EXMPLR313(4),GND,GND,first_bubble,i_clock,
   o_image0_0(4)) ;
   DFFPCE (o_image1_0_EXMPLR313(3),GND,GND,first_bubble,i_clock,
   o_image0_0(3)) ;
   DFFPCE (o_image1_0_EXMPLR313(2),GND,GND,first_bubble,i_clock,
   o_image0_0(2)) ;
   DFFPCE (o_image1_0_EXMPLR313(1),GND,GND,first_bubble,i_clock,
   o_image0_0(1)) ;
   DFFPCE (o_image1_0_EXMPLR313(0),GND,GND,first_bubble,i_clock,
   o_image0_0(0)) ;
   DFFPC (row(7),GND,GND,i_clock,o_row(7)) ;
   DFFPC (row(6),GND,GND,i_clock,o_row(6)) ;
   DFFPC (row(5),GND,GND,i_clock,o_row(5)) ;
   DFFPC (row(4),GND,GND,i_clock,o_row(4)) ;
   DFFPC (row(3),GND,GND,i_clock,o_row(3)) ;
   DFFPC (row(2),GND,GND,i_clock,o_row(2)) ;
   DFFPC (row(1),GND,GND,i_clock,o_row(1)) ;
   DFFPC (row(0),GND,GND,i_clock,o_row(0)) ;
   DFFPC (column(7),GND,GND,i_clock,o_column(7)) ;
   DFFPC (column(6),GND,GND,i_clock,o_column(6)) ;
   DFFPC (column(5),GND,GND,i_clock,o_column(5)) ;
   DFFPC (column(4),GND,GND,i_clock,o_column(4)) ;
   DFFPC (column(3),GND,GND,i_clock,o_column(3)) ;
   DFFPC (column(2),GND,GND,i_clock,o_column(2)) ;
   DFFPC (column(1),GND,GND,i_clock,o_column(1)) ;
   DFFPC (column(0),GND,GND,i_clock,o_column(0)) ;
   DFFPC (rtlcn234,GND,GND,i_clock,mem_wrn(0)) ;
   DFFPC (i_valid,GND,GND,i_clock,first_bubble) ;
   DFFRSE (rtlcn240,GND,GND,PWR,i_clock,o_valid_EXMPLR218) ;
end main ;

