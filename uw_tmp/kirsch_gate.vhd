
-- 
-- Definition of  kirsch
-- 
--      Sun Jul 20 19:40:42 2014
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

entity counter_up_cnt_en_sclear_clock_0_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8 is 
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
   signal GND, nx20, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, nx31, 
      nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, 
      nx44, nx45, nx46, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   DFFPCE (nx23,GND,GND,nx20,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx20,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx20,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx20,clock,nx30) ;
   DFFPCE (nx31,GND,GND,nx20,clock,nx32) ;
   DFFPCE (nx33,GND,GND,nx20,clock,nx34) ;
   DFFPCE (nx35,GND,GND,nx20,clock,nx36) ;
   DFFPCE (nx37,GND,GND,nx20,clock,nx38) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx24, a(6)=>nx26, a(5)=>
      nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)=>nx38, d(7)
      =>nx39, d(6)=>nx40, d(5)=>nx41, d(4)=>nx42, d(3)=>nx43, d(2)=>nx44, 
      d(1)=>nx45, d(0)=>nx46, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx23 <= nx39 AND NOT_nx19 ;
   nx25 <= nx40 AND NOT_nx19 ;
   nx27 <= nx41 AND NOT_nx19 ;
   nx29 <= nx42 AND NOT_nx19 ;
   nx31 <= nx43 AND NOT_nx19 ;
   nx33 <= nx44 AND NOT_nx19 ;
   nx35 <= nx45 AND NOT_nx19 ;
   nx37 <= nx46 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_clk_en_0_8 is 
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
end counter_up_cnt_en_sclear_clock_clk_en_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_clk_en_0_8 is 
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
   signal GND, nx20, nx23, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, 
      nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx27 ;
   q(6) <= nx29 ;
   q(5) <= nx31 ;
   q(4) <= nx33 ;
   q(3) <= nx35 ;
   q(2) <= nx37 ;
   q(1) <= nx39 ;
   q(0) <= nx41 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   nx23 <= nx20 AND clk_en ;
   DFFPCE (nx26,GND,GND,nx23,clock,nx27) ;
   DFFPCE (nx28,GND,GND,nx23,clock,nx29) ;
   DFFPCE (nx30,GND,GND,nx23,clock,nx31) ;
   DFFPCE (nx32,GND,GND,nx23,clock,nx33) ;
   DFFPCE (nx34,GND,GND,nx23,clock,nx35) ;
   DFFPCE (nx36,GND,GND,nx23,clock,nx37) ;
   DFFPCE (nx38,GND,GND,nx23,clock,nx39) ;
   DFFPCE (nx40,GND,GND,nx23,clock,nx41) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx27, a(6)=>nx29, a(5)=>
      nx31, a(4)=>nx33, a(3)=>nx35, a(2)=>nx37, a(1)=>nx39, a(0)=>nx41, d(7)
      =>nx42, d(6)=>nx43, d(5)=>nx44, d(4)=>nx45, d(3)=>nx46, d(2)=>nx47, 
      d(1)=>nx48, d(0)=>nx49, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx26 <= nx42 AND NOT_nx19 ;
   nx28 <= nx43 AND NOT_nx19 ;
   nx30 <= nx44 AND NOT_nx19 ;
   nx32 <= nx45 AND NOT_nx19 ;
   nx34 <= nx46 AND NOT_nx19 ;
   nx36 <= nx47 AND NOT_nx19 ;
   nx38 <= nx48 AND NOT_nx19 ;
   nx40 <= nx49 AND NOT_nx19 ;
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
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
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

architecture main_unfold_1492 of memory is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
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
   component counter_up_cnt_en_sclear_clock_0_8
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
   component counter_up_cnt_en_sclear_clock_clk_en_0_8
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
   procedure DLATCHPC (
      constant data  : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant gate   : in std_logic;
      signal q        : out std_logic)
   is begin
       assert (gate /= 'Z')
           report "On dlatchpc : Found high-Z ('Z') on enable gate"
           severity error ;
   
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (gate = '1') then
           q <= data ;
       end if;
       if ((preset/='1' or clear/='1') and gate/='0' and gate/='1') then
           q <= 'X' ;
       end if ;
   end DLATCHPC ;
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
   for u_mem1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for u_mem2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for u_mem3 : mem_8_8 use entity work.mem_8_8(main);
   signal o_valid_EXMPLR218: std_logic ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, GND: std_logic ;
   
   signal rtlc0n0: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_i_valid, rtlc1n26, rtlc1n28: std_logic ;
   
   signal mem_wrn_current_3n4ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal rtlc3n120, rtlc3n121, not_rtlc3n121, rtlc3n132, rtlc3n135, 
      not_rtlc3n135, rtlc3n211, rtlc3n215, rtlc3n235, not_first_bubble, 
      not_rtlcs0, rtlc3_X_0_n252, not_rtlc3_X_0_n252, rtlc3n271, rtlc3n272, 
      not_rtlc3n235, rtlc3n293, rtlc3n307, rtlc3n308, rtlc3n309, 
      not_rtlc3n215: std_logic ;
   
   signal buffer2_4n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_4n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlc4n99, rtlc4n339, rtlc4n427, rtlc6n53, rtlc6n55, rtlc6n62, 
      rtlcn99, rtlcn123, not_rtlcn230, not_rtlcn231, rtlcn220, rtlcn230, 
      rtlcn231, rtlcs0, rtlcs1: std_logic ;
   
   signal o_image1_0_EXMPLR307: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR308: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR309: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR310: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR311: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR312: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn234, not_rtlc3n309, rtlcn236, rtlcn238, rtlcn239, 
      not_rtlc3n308, rtlcn243, rtlcn244, not_rtlc6n55, rtlcn246: std_logic
    ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   o_valid <= o_valid_EXMPLR218 ;
   o_column(7) <= GND ;
   o_column(6) <= GND ;
   o_column(5) <= GND ;
   o_column(4) <= GND ;
   o_column(3) <= GND ;
   o_column(2) <= GND ;
   o_column(1) <= GND ;
   o_column(0) <= GND ;
   o_image1_0(7) <= o_image1_0_EXMPLR307(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR307(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR307(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR307(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR307(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR307(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR307(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR307(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR308(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR308(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR308(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR308(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR308(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR308(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR308(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR308(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR309(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR309(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR309(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR309(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR309(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR309(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR309(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR309(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR310(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR310(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR310(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR310(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR310(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR310(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR310(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR310(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR311(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR311(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR311(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR311(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR311(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR311(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR311(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR311(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR312(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR312(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR312(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR312(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR312(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR312(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR312(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR312(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   u_mem1 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>column(0), 
      clock=>i_clock, data(7)=>rtlc0n0(7), data(6)=>rtlc0n0(6), data(5)=>
      rtlc0n0(5), data(4)=>rtlc0n0(4), data(3)=>rtlc0n0(3), data(2)=>
      rtlc0n0(2), data(1)=>rtlc0n0(1), data(0)=>rtlc0n0(0), wren=>mem_wrn(0), 
      q(7)=>mem_q_0(7), q(6)=>mem_q_0(6), q(5)=>mem_q_0(5), q(4)=>mem_q_0(4), 
      q(3)=>mem_q_0(3), q(2)=>mem_q_0(2), q(1)=>mem_q_0(1), q(0)=>mem_q_0(0)
   );
   u_mem2 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>column(0), 
      clock=>i_clock, data(7)=>rtlc0n0(7), data(6)=>rtlc0n0(6), data(5)=>
      rtlc0n0(5), data(4)=>rtlc0n0(4), data(3)=>rtlc0n0(3), data(2)=>
      rtlc0n0(2), data(1)=>rtlc0n0(1), data(0)=>rtlc0n0(0), wren=>mem_wrn(1), 
      q(7)=>mem_q_1(7), q(6)=>mem_q_1(6), q(5)=>mem_q_1(5), q(4)=>mem_q_1(4), 
      q(3)=>mem_q_1(3), q(2)=>mem_q_1(2), q(1)=>mem_q_1(1), q(0)=>mem_q_1(0)
   );
   u_mem3 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>column(0), 
      clock=>i_clock, data(7)=>rtlc0n0(7), data(6)=>rtlc0n0(6), data(5)=>
      rtlc0n0(5), data(4)=>rtlc0n0(4), data(3)=>rtlc0n0(3), data(2)=>
      rtlc0n0(2), data(1)=>rtlc0n0(1), data(0)=>rtlc0n0(0), wren=>mem_wrn(2), 
      q(7)=>mem_q_2(7), q(6)=>mem_q_2(6), q(5)=>mem_q_2(5), q(4)=>mem_q_2(4), 
      q(3)=>mem_q_2(3), q(2)=>mem_q_2(2), q(1)=>mem_q_2(1), q(0)=>mem_q_2(0)
   );
   not_i_valid <= NOT i_valid ;
   o_mode(0) <= i_reset OR rtlc1n28 ;
   rtlc1n26 <= busySignal OR busySignalDelayed ;
   rtlc1n28 <= rtlc1n26 OR i_valid ;
   rtlc3n307 <= rtlc3n293 AND not_rtlc3n121 ;
   rtlc3n293 <= not_rtlc3n135 AND i_valid ;
   not_rtlc3n215 <= NOT rtlc3n215 ;
   rtlc3n211 <= not_first_bubble OR not_rtlcs0 ;
   rtlc3_32_or_0 : or_3u_3u port map ( a(2)=>not_i_valid, a(1)=>rtlc3n121, 
      a(0)=>not_rtlc3n135, d=>rtlc3n309);
   rtlc3n308 <= rtlc3n121 OR not_i_valid ;
   not_rtlc3n235 <= NOT rtlc3n235 ;
   rtlc3n271 <= rtlcs0 AND first_bubble ;
   rtlc3n272 <= rtlc3n121 OR rtlc3n271 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_first_bubble <= NOT first_bubble ;
   rtlc3_54_or_1 : or_3u_3u port map ( a(2)=>i_valid, a(1)=>not_first_bubble, 
      a(0)=>not_rtlcs0, d=>rtlc3_X_0_n252);
   not_rtlc3_X_0_n252 <= NOT rtlc3_X_0_n252 ;
   rtlc3n132 <= mem_wrn_current(0) OR mem_wrn_current(1) ;
   rtlc3n135 <= rtlc3n132 OR mem_wrn_current(2) ;
   not_rtlc3n135 <= NOT rtlc3n135 ;
   not_rtlc3n121 <= NOT rtlc3n121 ;
   rtlc3_103_and_2 : and_3u_3u port map ( a(2)=>rtlcs1, a(1)=>rtlcs0, a(0)=>
      first_bubble, d=>rtlc3n120);
   rtlc3n121 <= i_reset OR rtlc3n120 ;
   rtlc3n235 <= not_rtlc3n121 AND i_valid ;
   rtlc4n99 <= rtlc4n339 AND rtlc4n427 ;
   rtlc4_443_or_3 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc4n339);
   rtlc4_469_or_4 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc4n427);
   rtlc6n62 <= i_valid OR busySignal ;
   rtlc6n53 <= rtlcs1 AND rtlcs0 ;
   rtlc6n55 <= rtlc6n53 AND first_bubble ;
   buffer2_select_4i1Bus8_0 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(0), b(1)=>
      buffer2_4n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_4n4ss1(0));
   buffer2_select_4i1Bus8_1 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(1), b(1)=>
      buffer2_4n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_4n4ss1(1));
   buffer2_select_4i1Bus8_2 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(2), b(1)=>
      buffer2_4n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_4n4ss1(2));
   buffer2_select_4i1Bus8_3 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(3), b(1)=>
      buffer2_4n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_4n4ss1(3));
   buffer2_select_4i1Bus8_4 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(4), b(1)=>
      buffer2_4n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_4n4ss1(4));
   buffer2_select_4i1Bus8_5 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(5), b(1)=>
      buffer2_4n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_4n4ss1(5));
   buffer2_select_4i1Bus8_6 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(6), b(1)=>
      buffer2_4n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_4n4ss1(6));
   buffer2_select_4i1Bus8_7 : select_3_3 port map ( a(2)=>not_rtlcn230, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(7), b(1)=>
      buffer2_4n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_4n4ss1(7));
   buffer2_select_4i1Bus8_8 : select_3_3 port map ( a(2)=>not_rtlcn231, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(0), b(1)=>
      buffer2_4n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_4n4ss1(8));
   buffer2_select_4i1Bus8_9 : select_3_3 port map ( a(2)=>not_rtlcn231, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(1), b(1)=>
      buffer2_4n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_4n4ss1(9));
   buffer2_select_4i1Bus8_10 : select_3_3 port map ( a(2)=>not_rtlcn231, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(2), b(1)=>
      buffer2_4n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_4n4ss1(10));
   buffer2_select_4i1Bus8_11 : select_3_3 port map ( a(2)=>not_rtlcn231, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(3), b(1)=>
      buffer2_4n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_4n4ss1(11));
   buffer2_select_4i1Bus8_12 : select_3_3 port map ( a(2)=>not_rtlcn231, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(4), b(1)=>
      buffer2_4n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_4n4ss1(12));
   buffer2_select_4i1Bus8_13 : select_3_3 port map ( a(2)=>not_rtlcn231, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(5), b(1)=>
      buffer2_4n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_4n4ss1(13));
   buffer2_select_4i1Bus8_14 : select_3_3 port map ( a(2)=>not_rtlcn231, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(6), b(1)=>
      buffer2_4n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_4n4ss1(14));
   buffer2_select_4i1Bus8_15 : select_3_3 port map ( a(2)=>not_rtlcn231, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(7), b(1)=>
      buffer2_4n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_4n4ss1(15));
   rtlcn99 <= rtlc4n339 AND mem_wrn_current(1) ;
   rtlcn123 <= rtlc4n339 AND mem_wrn_current(0) ;
   o_mode(1) <= NOT i_reset ;
   rtlcn220 <= mem_wrn_current(2) OR rtlc4n339 ;
   not_rtlcn230 <= NOT rtlcn230 ;
   not_rtlcn231 <= NOT rtlcn231 ;
   rtlc3n215 <= rtlc3n135 when i_valid = '1' else rtlc3n211 ;
   buffer2_4n2ss1(0) <= mem_q_1(0) when rtlc4n339 = '1' else rtlc0n0(0) ;
   buffer2_4n2ss1(1) <= mem_q_1(1) when rtlc4n339 = '1' else rtlc0n0(1) ;
   buffer2_4n2ss1(2) <= mem_q_1(2) when rtlc4n339 = '1' else rtlc0n0(2) ;
   buffer2_4n2ss1(3) <= mem_q_1(3) when rtlc4n339 = '1' else rtlc0n0(3) ;
   buffer2_4n2ss1(4) <= mem_q_1(4) when rtlc4n339 = '1' else rtlc0n0(4) ;
   buffer2_4n2ss1(5) <= mem_q_1(5) when rtlc4n339 = '1' else rtlc0n0(5) ;
   buffer2_4n2ss1(6) <= mem_q_1(6) when rtlc4n339 = '1' else rtlc0n0(6) ;
   buffer2_4n2ss1(7) <= mem_q_1(7) when rtlc4n339 = '1' else rtlc0n0(7) ;
   buffer2_4n4ss1(16) <= rtlc0n0(0) when rtlcn220 = '1' else mem_q_2(0) ;
   buffer2_4n4ss1(17) <= rtlc0n0(1) when rtlcn220 = '1' else mem_q_2(1) ;
   buffer2_4n4ss1(18) <= rtlc0n0(2) when rtlcn220 = '1' else mem_q_2(2) ;
   buffer2_4n4ss1(19) <= rtlc0n0(3) when rtlcn220 = '1' else mem_q_2(3) ;
   buffer2_4n4ss1(20) <= rtlc0n0(4) when rtlcn220 = '1' else mem_q_2(4) ;
   buffer2_4n4ss1(21) <= rtlc0n0(5) when rtlcn220 = '1' else mem_q_2(5) ;
   buffer2_4n4ss1(22) <= rtlc0n0(6) when rtlcn220 = '1' else mem_q_2(6) ;
   buffer2_4n4ss1(23) <= rtlc0n0(7) when rtlcn220 = '1' else mem_q_2(7) ;
   rtlc_530_and_21 : and_8u_8u port map ( a(7)=>row(7), a(6)=>row(6), a(5)=>
      row(5), a(4)=>row(4), a(3)=>row(3), a(2)=>row(2), a(1)=>row(1), a(0)=>
      row(0), d=>rtlcs1);
   rtlc_531_and_22 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>column(0), d=>rtlcs0);
   mem_wrn_current_3n4ss1(1) <= mem_wrn_current(0) AND not_i_valid ;
   mem_wrn_current_3n4ss1(2) <= mem_wrn_current(1) AND not_i_valid ;
   mem_wrn_current_3n4ss1(0) <= mem_wrn_current(2) OR i_valid ;
   rtlcn230 <= mem_wrn_current(0) OR rtlcn99 ;
   rtlcn231 <= mem_wrn_current(1) OR rtlcn123 ;
   modgen_counter_row : counter_up_cnt_en_sclear_clock_0_8 port map ( clock
      =>i_clock, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), 
      q(3)=>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(7)=>DANGLING(0), data(6)=>DANGLING(1), 
      data(5)=>DANGLING(2), data(4)=>DANGLING(3), data(3)=>DANGLING(4), 
      data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>DANGLING(7), aset
      =>GND, sclear=>rtlc3n121, updn=>PWR, cnt_en=>not_rtlc3_X_0_n252);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>column(0), clk_en=>not_rtlc3n235, aclear=>GND, sload
      =>GND, data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>DANGLING(
      10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>DANGLING(
      13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, sclear=>
      rtlc3n272, updn=>PWR, cnt_en=>first_bubble);
   not_rtlc3n309 <= NOT rtlc3n309 ;
   rtlcn234 <= mem_wrn_current(2) AND not_rtlc3n309 ;
   rtlcn236 <= mem_wrn_current(1) AND not_rtlc3n309 ;
   rtlcn238 <= mem_wrn_current(0) OR rtlc3n307 ;
   not_rtlc3n308 <= NOT rtlc3n308 ;
   rtlcn239 <= rtlcn238 AND not_rtlc3n308 ;
   rtlcn243 <= rtlc4n99 OR not_first_bubble ;
   not_rtlc6n55 <= NOT rtlc6n55 ;
   rtlcn244 <= rtlc6n62 AND not_rtlc6n55 ;
   rtlcn246 <= first_bubble when rtlcn243 = '1' else o_valid_EXMPLR218 ;
   DLATCHPC (i_pixel(7),GND,GND,i_valid,rtlc0n0(7)) ;
   DLATCHPC (i_pixel(6),GND,GND,i_valid,rtlc0n0(6)) ;
   DLATCHPC (i_pixel(5),GND,GND,i_valid,rtlc0n0(5)) ;
   DLATCHPC (i_pixel(4),GND,GND,i_valid,rtlc0n0(4)) ;
   DLATCHPC (i_pixel(3),GND,GND,i_valid,rtlc0n0(3)) ;
   DLATCHPC (i_pixel(2),GND,GND,i_valid,rtlc0n0(2)) ;
   DLATCHPC (i_pixel(1),GND,GND,i_valid,rtlc0n0(1)) ;
   DLATCHPC (i_pixel(0),GND,GND,i_valid,rtlc0n0(0)) ;
   DFFPC (i_valid,GND,GND,i_clock,first_bubble) ;
   DFFRSE (mem_wrn_current_3n4ss1(2),GND,rtlc3n121,not_rtlc3n215,i_clock,
   mem_wrn_current(2)) ;
   DFFRSE (mem_wrn_current_3n4ss1(1),GND,rtlc3n121,not_rtlc3n215,i_clock,
   mem_wrn_current(1)) ;
   DFFRSE (mem_wrn_current_3n4ss1(0),GND,rtlc3n121,not_rtlc3n215,i_clock,
   mem_wrn_current(0)) ;
   DFFRSE (rtlcn234,GND,GND,PWR,i_clock,mem_wrn(2)) ;
   DFFRSE (rtlcn236,GND,GND,PWR,i_clock,mem_wrn(1)) ;
   DFFPCE (buffer2_4n4ss1(23),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(7)) ;
   DFFPCE (buffer2_4n4ss1(22),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(6)) ;
   DFFPCE (buffer2_4n4ss1(21),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(5)) ;
   DFFPCE (buffer2_4n4ss1(20),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(4)) ;
   DFFPCE (buffer2_4n4ss1(19),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(3)) ;
   DFFPCE (buffer2_4n4ss1(18),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(2)) ;
   DFFPCE (buffer2_4n4ss1(17),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(1)) ;
   DFFPCE (buffer2_4n4ss1(16),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR312(0)) ;
   DFFPCE (buffer2_4n4ss1(15),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(7)) ;
   DFFPCE (buffer2_4n4ss1(14),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(6)) ;
   DFFPCE (buffer2_4n4ss1(13),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(5)) ;
   DFFPCE (buffer2_4n4ss1(12),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(4)) ;
   DFFPCE (buffer2_4n4ss1(11),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(3)) ;
   DFFPCE (buffer2_4n4ss1(10),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(2)) ;
   DFFPCE (buffer2_4n4ss1(9),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(1)) ;
   DFFPCE (buffer2_4n4ss1(8),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR311(0)) ;
   DFFPCE (buffer2_4n4ss1(7),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(7)) ;
   DFFPCE (buffer2_4n4ss1(6),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(6)) ;
   DFFPCE (buffer2_4n4ss1(5),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(5)) ;
   DFFPCE (buffer2_4n4ss1(4),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(4)) ;
   DFFPCE (buffer2_4n4ss1(3),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(3)) ;
   DFFPCE (buffer2_4n4ss1(2),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(2)) ;
   DFFPCE (buffer2_4n4ss1(1),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(1)) ;
   DFFPCE (buffer2_4n4ss1(0),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR310(0)) ;
   DFFPCE (o_image2_2_EXMPLR312(7),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(7)) ;
   DFFPCE (o_image2_2_EXMPLR312(6),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(6)) ;
   DFFPCE (o_image2_2_EXMPLR312(5),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(5)) ;
   DFFPCE (o_image2_2_EXMPLR312(4),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(4)) ;
   DFFPCE (o_image2_2_EXMPLR312(3),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(3)) ;
   DFFPCE (o_image2_2_EXMPLR312(2),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(2)) ;
   DFFPCE (o_image2_2_EXMPLR312(1),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(1)) ;
   DFFPCE (o_image2_2_EXMPLR312(0),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR309(0)) ;
   DFFPCE (o_image2_1_EXMPLR311(7),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(7)) ;
   DFFPCE (o_image2_1_EXMPLR311(6),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(6)) ;
   DFFPCE (o_image2_1_EXMPLR311(5),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(5)) ;
   DFFPCE (o_image2_1_EXMPLR311(4),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(4)) ;
   DFFPCE (o_image2_1_EXMPLR311(3),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(3)) ;
   DFFPCE (o_image2_1_EXMPLR311(2),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(2)) ;
   DFFPCE (o_image2_1_EXMPLR311(1),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(1)) ;
   DFFPCE (o_image2_1_EXMPLR311(0),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR308(0)) ;
   DFFPCE (o_image2_0_EXMPLR310(7),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(7)) ;
   DFFPCE (o_image2_0_EXMPLR310(6),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(6)) ;
   DFFPCE (o_image2_0_EXMPLR310(5),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(5)) ;
   DFFPCE (o_image2_0_EXMPLR310(4),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(4)) ;
   DFFPCE (o_image2_0_EXMPLR310(3),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(3)) ;
   DFFPCE (o_image2_0_EXMPLR310(2),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(2)) ;
   DFFPCE (o_image2_0_EXMPLR310(1),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(1)) ;
   DFFPCE (o_image2_0_EXMPLR310(0),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR307(0)) ;
   DFFPCE (o_image1_2_EXMPLR309(7),GND,GND,first_bubble,i_clock,
   o_image0_2(7)) ;
   DFFPCE (o_image1_2_EXMPLR309(6),GND,GND,first_bubble,i_clock,
   o_image0_2(6)) ;
   DFFPCE (o_image1_2_EXMPLR309(5),GND,GND,first_bubble,i_clock,
   o_image0_2(5)) ;
   DFFPCE (o_image1_2_EXMPLR309(4),GND,GND,first_bubble,i_clock,
   o_image0_2(4)) ;
   DFFPCE (o_image1_2_EXMPLR309(3),GND,GND,first_bubble,i_clock,
   o_image0_2(3)) ;
   DFFPCE (o_image1_2_EXMPLR309(2),GND,GND,first_bubble,i_clock,
   o_image0_2(2)) ;
   DFFPCE (o_image1_2_EXMPLR309(1),GND,GND,first_bubble,i_clock,
   o_image0_2(1)) ;
   DFFPCE (o_image1_2_EXMPLR309(0),GND,GND,first_bubble,i_clock,
   o_image0_2(0)) ;
   DFFPCE (o_image1_1_EXMPLR308(7),GND,GND,first_bubble,i_clock,
   o_image0_1(7)) ;
   DFFPCE (o_image1_1_EXMPLR308(6),GND,GND,first_bubble,i_clock,
   o_image0_1(6)) ;
   DFFPCE (o_image1_1_EXMPLR308(5),GND,GND,first_bubble,i_clock,
   o_image0_1(5)) ;
   DFFPCE (o_image1_1_EXMPLR308(4),GND,GND,first_bubble,i_clock,
   o_image0_1(4)) ;
   DFFPCE (o_image1_1_EXMPLR308(3),GND,GND,first_bubble,i_clock,
   o_image0_1(3)) ;
   DFFPCE (o_image1_1_EXMPLR308(2),GND,GND,first_bubble,i_clock,
   o_image0_1(2)) ;
   DFFPCE (o_image1_1_EXMPLR308(1),GND,GND,first_bubble,i_clock,
   o_image0_1(1)) ;
   DFFPCE (o_image1_1_EXMPLR308(0),GND,GND,first_bubble,i_clock,
   o_image0_1(0)) ;
   DFFPCE (o_image1_0_EXMPLR307(7),GND,GND,first_bubble,i_clock,
   o_image0_0(7)) ;
   DFFPCE (o_image1_0_EXMPLR307(6),GND,GND,first_bubble,i_clock,
   o_image0_0(6)) ;
   DFFPCE (o_image1_0_EXMPLR307(5),GND,GND,first_bubble,i_clock,
   o_image0_0(5)) ;
   DFFPCE (o_image1_0_EXMPLR307(4),GND,GND,first_bubble,i_clock,
   o_image0_0(4)) ;
   DFFPCE (o_image1_0_EXMPLR307(3),GND,GND,first_bubble,i_clock,
   o_image0_0(3)) ;
   DFFPCE (o_image1_0_EXMPLR307(2),GND,GND,first_bubble,i_clock,
   o_image0_0(2)) ;
   DFFPCE (o_image1_0_EXMPLR307(1),GND,GND,first_bubble,i_clock,
   o_image0_0(1)) ;
   DFFPCE (o_image1_0_EXMPLR307(0),GND,GND,first_bubble,i_clock,
   o_image0_0(0)) ;
   DFFPC (busySignal,GND,GND,i_clock,busySignalDelayed) ;
   DFFPC (row(7),GND,GND,i_clock,o_row(7)) ;
   DFFPC (row(6),GND,GND,i_clock,o_row(6)) ;
   DFFPC (row(5),GND,GND,i_clock,o_row(5)) ;
   DFFPC (row(4),GND,GND,i_clock,o_row(4)) ;
   DFFPC (row(3),GND,GND,i_clock,o_row(3)) ;
   DFFPC (row(2),GND,GND,i_clock,o_row(2)) ;
   DFFPC (row(1),GND,GND,i_clock,o_row(1)) ;
   DFFPC (row(0),GND,GND,i_clock,o_row(0)) ;
   DFFRSE (rtlcn244,GND,GND,PWR,i_clock,busySignal) ;
   DFFPC (rtlcn239,GND,GND,i_clock,mem_wrn(0)) ;
   DFFRSE (rtlcn246,GND,GND,PWR,i_clock,o_valid_EXMPLR218) ;
end main_unfold_1492 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity modgen_adderblock_add_2_3_0_0_0_9_0 is 
   port (
      a0 : IN std_logic_vector (7 DOWNTO 0) ;
      a1 : IN std_logic_vector (7 DOWNTO 0) ;
      a2 : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0)) ;
end modgen_adderblock_add_2_3_0_0_0_9_0 ;

architecture INTERFACE of modgen_adderblock_add_2_3_0_0_0_9_0 is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal \_MGC0390_MGC039\: std_logic ;
   
   signal rx0: std_logic_vector (8 DOWNTO 1) ;
   
   signal nx14: std_logic ;

begin
   \_MGC0390_MGC039\ <= '0' ;
   modgen_add_0 : add_8u_8u_8u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(7)=>
      a0(7), a(6)=>a0(6), a(5)=>a0(5), a(4)=>a0(4), a(3)=>a0(3), a(2)=>a0(2), 
      a(1)=>a0(1), a(0)=>a0(0), b(7)=>a1(7), b(6)=>a1(6), b(5)=>a1(5), b(4)
      =>a1(4), b(3)=>a1(3), b(2)=>a1(2), b(1)=>a1(1), b(0)=>a1(0), d=>rx0, 
      cout=>nx14);
   modgen_add_1 : add_9u_9u_9u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(8)=>
      nx14, a(7)=>rx0(8), a(6)=>rx0(7), a(5)=>rx0(6), a(4)=>rx0(5), a(3)=>
      rx0(4), a(2)=>rx0(3), a(1)=>rx0(2), a(0)=>rx0(1), b(8)=>a2(8), b(7)=>
      a2(7), b(6)=>a2(6), b(5)=>a2(5), b(4)=>a2(4), b(3)=>a2(3), b(2)=>a2(2), 
      b(1)=>a2(1), b(0)=>a2(0), d(8)=>d(8), d(7)=>d(7), d(6)=>d(6), d(5)=>
      d(5), d(4)=>d(4), d(3)=>d(3), d(2)=>d(2), d(1)=>d(1), d(0)=>d(0), cout
      =>d(9));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity modgen_adderblock_add_2_3_0_0_1_9_0 is 
   port (
      a0 : IN std_logic_vector (7 DOWNTO 0) ;
      a1 : IN std_logic_vector (7 DOWNTO 0) ;
      a2 : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0)) ;
end modgen_adderblock_add_2_3_0_0_1_9_0 ;

architecture INTERFACE of modgen_adderblock_add_2_3_0_0_1_9_0 is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal \_MGC0390_MGC039\: std_logic ;
   
   signal rx2: std_logic_vector (8 DOWNTO 1) ;
   
   signal nx14: std_logic ;

begin
   \_MGC0390_MGC039\ <= '0' ;
   modgen_add_2 : add_8u_8u_8u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(7)=>
      a0(7), a(6)=>a0(6), a(5)=>a0(5), a(4)=>a0(4), a(3)=>a0(3), a(2)=>a0(2), 
      a(1)=>a0(1), a(0)=>a0(0), b(7)=>a1(7), b(6)=>a1(6), b(5)=>a1(5), b(4)
      =>a1(4), b(3)=>a1(3), b(2)=>a1(2), b(1)=>a1(1), b(0)=>a1(0), d=>rx2, 
      cout=>nx14);
   modgen_add_3 : add_9u_9u_9u_0_0 port map ( cin=>\_MGC0390_MGC039\, a(8)=>
      nx14, a(7)=>rx2(8), a(6)=>rx2(7), a(5)=>rx2(6), a(4)=>rx2(5), a(3)=>
      rx2(4), a(2)=>rx2(3), a(1)=>rx2(2), a(0)=>rx2(1), b(8)=>a2(8), b(7)=>
      a2(7), b(6)=>a2(6), b(5)=>a2(5), b(4)=>a2(4), b(3)=>a2(3), b(2)=>a2(2), 
      b(1)=>a2(1), b(0)=>a2(0), d(8)=>d(8), d(7)=>d(7), d(6)=>d(6), d(5)=>
      d(5), d(4)=>d(4), d(3)=>d(3), d(2)=>d(2), d(1)=>d(1), d(0)=>d(0), cout
      =>d(9));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_with_taps_8_4_1 is 
   port (
      \in\ : IN std_logic_vector (7 DOWNTO 0) ;
      \out\ : OUT std_logic_vector (7 DOWNTO 0) ;
      tap_out : OUT std_logic_vector (7 DOWNTO 0) ;
      clk : IN std_logic ;
      clken : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic) ;
end shiftregister_with_taps_8_4_1 ;

architecture INTERFACE of shiftregister_with_taps_8_4_1 is 
   component shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   signal nx11, nx12, nx13, nx14, nx15, nx16, nx17, nx18: std_logic ;

begin
   \out\(7) <= nx11 ;
   \out\(6) <= nx12 ;
   \out\(5) <= nx13 ;
   \out\(4) <= nx14 ;
   \out\(3) <= nx15 ;
   \out\(2) <= nx16 ;
   \out\(1) <= nx17 ;
   \out\(0) <= nx18 ;
   tap_out(7) <= nx11 ;
   tap_out(6) <= nx12 ;
   tap_out(5) <= nx13 ;
   tap_out(4) <= nx14 ;
   tap_out(3) <= nx15 ;
   tap_out(2) <= nx16 ;
   tap_out(1) <= nx17 ;
   tap_out(0) <= nx18 ;
   ix170 : shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(7), \out\=>nx11);
   ix172 : shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(6), \out\=>nx12);
   ix173 : shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(5), \out\=>nx13);
   ix174 : shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(4), \out\=>nx14);
   ix175 : shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(3), \out\=>nx15);
   ix176 : shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(2), \out\=>nx16);
   ix177 : shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx17);
   ix178 : shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx18);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 ;

architecture INTERFACE of shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12, nx13, nx15: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,nx13) ;
   DFFPC (nx13,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_with_taps_2_4_1 is 
   port (
      \in\ : IN std_logic_vector (1 DOWNTO 0) ;
      \out\ : OUT std_logic_vector (1 DOWNTO 0) ;
      tap_out : OUT std_logic_vector (1 DOWNTO 0) ;
      clk : IN std_logic ;
      clken : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic) ;
end shiftregister_with_taps_2_4_1 ;

architecture INTERFACE of shiftregister_with_taps_2_4_1 is 
   component shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   component shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   signal nx5, nx6: std_logic ;

begin
   \out\(1) <= nx5 ;
   \out\(0) <= nx6 ;
   tap_out(1) <= nx5 ;
   tap_out(0) <= nx6 ;
   ix179 : shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx5);
   ix180 : shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx6);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic ;
      \in\ : IN std_logic ;
      \out\ : OUT std_logic) ;
end shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 ;

architecture INTERFACE of shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3
    is 
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
   signal nx5, nx6, nx7, nx9, nx10, nx12: std_logic ;

begin
   DFFPC (\in\,set,reset,clk,nx7) ;
   DFFPC (nx7,set,reset,clk,nx10) ;
   DFFPC (nx10,set,reset,clk,\out\) ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftregister_with_taps_1_3_1 is 
   port (
      \in\ : IN std_logic_vector (0 DOWNTO 0) ;
      \out\ : OUT std_logic_vector (0 DOWNTO 0) ;
      tap_out : OUT std_logic_vector (0 DOWNTO 0) ;
      clk : IN std_logic ;
      clken : IN std_logic ;
      reset : IN std_logic ;
      set : IN std_logic) ;
end shiftregister_with_taps_1_3_1 ;

architecture INTERFACE of shiftregister_with_taps_1_3_1 is 
   component shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic ;
         \in\ : IN std_logic ;
         \out\ : OUT std_logic) ;
   end component ;
   signal nx4: std_logic ;

begin
   \out\(0) <= nx4 ;
   tap_out(0) <= nx4 ;
   ix181 : shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx4);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity flow is 
   port (
      t1 : IN std_logic_vector (7 DOWNTO 0) ;
      t2 : IN std_logic_vector (7 DOWNTO 0) ;
      t3 : IN std_logic_vector (7 DOWNTO 0) ;
      b1 : IN std_logic_vector (7 DOWNTO 0) ;
      b2 : IN std_logic_vector (7 DOWNTO 0) ;
      b3 : IN std_logic_vector (7 DOWNTO 0) ;
      i1 : IN std_logic_vector (7 DOWNTO 0) ;
      i2 : IN std_logic_vector (7 DOWNTO 0) ;
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      i_row : IN std_logic_vector (7 DOWNTO 0) ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_edge : OUT std_logic ;
      o_valid : OUT std_logic ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0)) ;
end flow ;

architecture main of flow is 
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component eq_12u_12u
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_12s_12s
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_10u_10u_10u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10u_10u_10u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
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
   component modgen_adderblock_add_2_3_0_0_0_9_0
      port (
         a0 : IN std_logic_vector (7 DOWNTO 0) ;
         a1 : IN std_logic_vector (7 DOWNTO 0) ;
         a2 : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   component modgen_adderblock_add_2_3_0_0_1_9_0
      port (
         a0 : IN std_logic_vector (7 DOWNTO 0) ;
         a1 : IN std_logic_vector (7 DOWNTO 0) ;
         a2 : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   component shiftregister_with_taps_8_4_1
      port (
         \in\ : IN std_logic_vector (7 DOWNTO 0) ;
         \out\ : OUT std_logic_vector (7 DOWNTO 0) ;
         tap_out : OUT std_logic_vector (7 DOWNTO 0) ;
         clk : IN std_logic ;
         clken : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic) ;
   end component ;
   component shiftregister_with_taps_2_4_1
      port (
         \in\ : IN std_logic_vector (1 DOWNTO 0) ;
         \out\ : OUT std_logic_vector (1 DOWNTO 0) ;
         tap_out : OUT std_logic_vector (1 DOWNTO 0) ;
         clk : IN std_logic ;
         clken : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic) ;
   end component ;
   component shiftregister_with_taps_1_3_1
      port (
         \in\ : IN std_logic_vector (0 DOWNTO 0) ;
         \out\ : OUT std_logic_vector (0 DOWNTO 0) ;
         tap_out : OUT std_logic_vector (0 DOWNTO 0) ;
         clk : IN std_logic ;
         clken : IN std_logic ;
         reset : IN std_logic ;
         set : IN std_logic) ;
   end component ;
   signal o_dir_EXMPLR485: std_logic_vector (2 DOWNTO 0) ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13_10, p13_9, p13_8, p13_7, p13_6, p13_5, p13_4, p13_3, p13_2, 
      GND: std_logic ;
   
   signal p21: std_logic_vector (11 DOWNTO 0) ;
   
   signal p22: std_logic_vector (11 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p31: std_logic_vector (11 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (11 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (11 DOWNTO 0) ;
   
   signal p50: std_logic ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal prev_max: std_logic_vector (11 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal PWR: std_logic ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc1n72, not_o_dir_0, rtlc1n76, rtlc1n77, rtlc1n84, not_i_reset, 
      rtlc3n17: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (10 DOWNTO 1) ;
   
   signal p22_4n0r4: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21_4n0r3: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc4n193_11, rtlc4n193_10, rtlc4n193_9, rtlc4n193_8, rtlc4n193_7, 
      rtlc4n193_6, rtlc4n193_5, rtlc4n193_4, rtlc4n193_3, rtlc4n193_2: 
   std_logic ;
   
   signal p22_4n0r3: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc4n197_11, rtlc4n197_10, rtlc4n197_9, rtlc4n197_8, rtlc4n197_7, 
      rtlc4n197_6, rtlc4n197_5, rtlc4n197_4, rtlc4n197_3, rtlc4n197_2: 
   std_logic ;
   
   signal p31_5n1ss1: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc5n47, rtlc6n80, rtlc6n81, not_p4s_11, rtlc6n83, rtlc7n127, 
      not_rtlcn213, rtlcn196, rtlcn204, not_state_0, not_state_2, rtlcn213, 
      rtlcn214, not_rtlc5n47, not_p21_4n0r4_10, rtlcn1061, not_rtlcn1061, 
      not_p22_4n0r4_10, rtlcn1142, not_rtlcn1142, rtlcn1383, rtlcn1387, 
      rtlcn1391, rtlcn1394, rtlcn1395, rtlcn1397, rtlcn1398, rtlcn1399, 
      rtlcn1400, rtlcn1401, rtlcn1402: std_logic ;
   
   signal DANGLING : std_logic_vector (19 downto 0 );

begin
   o_dir(2) <= o_dir_EXMPLR485(2) ;
   o_dir(1) <= o_dir_EXMPLR485(1) ;
   o_dir(0) <= o_dir_EXMPLR485(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   p4s_sub12_0 : sub_12u_12u_12u_0 port map ( cin=>PWR, a(11)=>p31(11), 
      a(10)=>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>p32(10), b(10)=>p32(10), b(9)=>p32(9), b(8)=>
      p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>
      p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>DANGLING(0));
   rtlc1_11_eq_24 : eq_12u_12u port map ( a(11)=>p43(11), a(10)=>p43(10), 
      a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), 
      a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>rtlc1n72);
   rtlc1_12_and_25 : and_3u_3u port map ( a(2)=>rtlc1n72, a(1)=>not_o_dir_0, 
      a(0)=>p45, d=>rtlc1n76);
   rtlc1_13_gt_26 : gt_12s_12s port map ( a(11)=>p43(11), a(10)=>p43(10), 
      a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), 
      a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>rtlc1n84);
   rtlc1n77 <= rtlc1n84 OR rtlc1n76 ;
   not_o_dir_0 <= NOT o_dir_EXMPLR485(0) ;
   not_i_reset <= NOT i_reset ;
   rtlc3n17 <= not_i_reset AND state(3) ;
   rtlc5_88_gt_27 : gt_12s_12s port map ( a(11)=>p22(11), a(10)=>p22(10), 
      a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), a(5)=>p22(5), 
      a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), a(0)=>p22(0), 
      b(11)=>p21(11), b(10)=>p21(10), b(9)=>p21(9), b(8)=>p21(8), b(7)=>
      p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>p21(4), b(3)=>p21(3), b(2)=>
      p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>rtlc5n47);
   rtlc6n80 <= p4s(7) AND p4s(8) ;
   not_p4s_11 <= NOT p4s(11) ;
   rtlc6n83 <= rtlc6n81 AND not_p4s_11 ;
   not_state_0 <= NOT state(0) ;
   not_state_2 <= NOT state(2) ;
   rtlcn204 <= state(1) OR not_state_2 ;
   rtlcn196 <= not_state_0 AND rtlcn204 ;
   not_rtlcn213 <= NOT rtlcn213 ;
   p31_5n1ss1(0) <= p22(0) when rtlc5n47 = '1' else p21(0) ;
   p31_5n1ss1(1) <= p22(1) when rtlc5n47 = '1' else p21(1) ;
   p31_5n1ss1(2) <= p22(2) when rtlc5n47 = '1' else p21(2) ;
   p31_5n1ss1(3) <= p22(3) when rtlc5n47 = '1' else p21(3) ;
   p31_5n1ss1(4) <= p22(4) when rtlc5n47 = '1' else p21(4) ;
   p31_5n1ss1(5) <= p22(5) when rtlc5n47 = '1' else p21(5) ;
   p31_5n1ss1(6) <= p22(6) when rtlc5n47 = '1' else p21(6) ;
   p31_5n1ss1(7) <= p22(7) when rtlc5n47 = '1' else p21(7) ;
   p31_5n1ss1(8) <= p22(8) when rtlc5n47 = '1' else p21(8) ;
   p31_5n1ss1(9) <= p22(9) when rtlc5n47 = '1' else p21(9) ;
   p31_5n1ss1(10) <= p22(10) when rtlc5n47 = '1' else p21(10) ;
   p31_5n1ss1(11) <= p22(11) when rtlc5n47 = '1' else p21(11) ;
   rtlc_151_or_29 : or_4u_4u port map ( a(3)=>state(0), a(2)=>state(1), a(1)
      =>state(2), a(0)=>state(3), d=>rtlcn214);
   rtlc7n127 <= rtlc1n77 AND rtlcn214 ;
   not_rtlc5n47 <= NOT rtlc5n47 ;
   rtlcn213 <= state(1) OR state(0) ;
   o_valid <= p50 AND rtlc3n17 ;
   o_mode(0) <= p5m(0) OR i_reset ;
   o_mode(1) <= p5m(1) AND not_i_reset ;
   p21_add10_4i1 : add_10u_10u_10u_0_0 port map ( cin=>GND, a(9)=>GND, a(8)
      =>p12(9), a(7)=>p12(8), a(6)=>p12(7), a(5)=>p12(6), a(4)=>p12(5), a(3)
      =>p12(4), a(2)=>p12(3), a(1)=>p12(2), a(0)=>p12(1), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>
      p21_4n0r4(10), d(8)=>p21_4n0r4(9), d(7)=>p21_4n0r4(8), d(6)=>
      p21_4n0r4(7), d(5)=>p21_4n0r4(6), d(4)=>p21_4n0r4(5), d(3)=>
      p21_4n0r4(4), d(2)=>p21_4n0r4(3), d(1)=>p21_4n0r4(2), d(0)=>
      p21_4n0r4(1), cout=>DANGLING(1));
   not_p21_4n0r4_10 <= NOT p21_4n0r4(10) ;
   not_rtlcn1061 <= NOT rtlcn1061 ;
   p21_4n0r3(11) <= not_rtlcn1061 AND not_p21_4n0r4_10 ;
   p21_sub10_4i2 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p21_4n0r4(9), 
      b(8)=>p21_4n0r4(8), b(7)=>p21_4n0r4(7), b(6)=>p21_4n0r4(6), b(5)=>
      p21_4n0r4(5), b(4)=>p21_4n0r4(4), b(3)=>p21_4n0r4(3), b(2)=>
      p21_4n0r4(2), b(1)=>p21_4n0r4(1), b(0)=>p12(0), d(9)=>p21_4n0r3(9), 
      d(8)=>p21_4n0r3(8), d(7)=>p21_4n0r3(7), d(6)=>p21_4n0r3(6), d(5)=>
      p21_4n0r3(5), d(4)=>p21_4n0r3(4), d(3)=>p21_4n0r3(3), d(2)=>
      p21_4n0r3(2), d(1)=>p21_4n0r3(1), d(0)=>p21_4n0r3(0), cout=>rtlcn1061
   );
   rtlc_358_add_36 : add_10u_10u_10u_0_0 port map ( cin=>GND, a(9)=>
      p21_4n0r3(11), a(8)=>p21_4n0r3(10), a(7)=>p21_4n0r3(9), a(6)=>
      p21_4n0r3(8), a(5)=>p21_4n0r3(7), a(4)=>p21_4n0r3(6), a(3)=>
      p21_4n0r3(5), a(2)=>p21_4n0r3(4), a(1)=>p21_4n0r3(3), a(0)=>
      p21_4n0r3(2), b(9)=>p11(9), b(8)=>p11(8), b(7)=>p11(7), b(6)=>p11(6), 
      b(5)=>p11(5), b(4)=>p11(4), b(3)=>p11(3), b(2)=>p11(2), b(1)=>p11(1), 
      b(0)=>p11(0), d(9)=>rtlc4n193_11, d(8)=>rtlc4n193_10, d(7)=>
      rtlc4n193_9, d(6)=>rtlc4n193_8, d(5)=>rtlc4n193_7, d(4)=>rtlc4n193_6, 
      d(3)=>rtlc4n193_5, d(2)=>rtlc4n193_4, d(1)=>rtlc4n193_3, d(0)=>
      rtlc4n193_2, cout=>DANGLING(2));
   p22_add10_4i3 : add_10u_10u_10u_0_0 port map ( cin=>GND, a(9)=>GND, a(8)
      =>p11(9), a(7)=>p11(8), a(6)=>p11(7), a(5)=>p11(6), a(4)=>p11(5), a(3)
      =>p11(4), a(2)=>p11(3), a(1)=>p11(2), a(0)=>p11(1), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>
      p22_4n0r4(10), d(8)=>p22_4n0r4(9), d(7)=>p22_4n0r4(8), d(6)=>
      p22_4n0r4(7), d(5)=>p22_4n0r4(6), d(4)=>p22_4n0r4(5), d(3)=>
      p22_4n0r4(4), d(2)=>p22_4n0r4(3), d(1)=>p22_4n0r4(2), d(0)=>
      p22_4n0r4(1), cout=>DANGLING(3));
   not_p22_4n0r4_10 <= NOT p22_4n0r4(10) ;
   not_rtlcn1142 <= NOT rtlcn1142 ;
   p22_4n0r3(11) <= not_rtlcn1142 AND not_p22_4n0r4_10 ;
   p22_sub10_4i4 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p22_4n0r4(9), 
      b(8)=>p22_4n0r4(8), b(7)=>p22_4n0r4(7), b(6)=>p22_4n0r4(6), b(5)=>
      p22_4n0r4(5), b(4)=>p22_4n0r4(4), b(3)=>p22_4n0r4(3), b(2)=>
      p22_4n0r4(2), b(1)=>p22_4n0r4(1), b(0)=>p11(0), d(9)=>p22_4n0r3(9), 
      d(8)=>p22_4n0r3(8), d(7)=>p22_4n0r3(7), d(6)=>p22_4n0r3(6), d(5)=>
      p22_4n0r3(5), d(4)=>p22_4n0r3(4), d(3)=>p22_4n0r3(3), d(2)=>
      p22_4n0r3(2), d(1)=>p22_4n0r3(1), d(0)=>p22_4n0r3(0), cout=>rtlcn1142
   );
   rtlc_388_add_39 : add_10u_10u_10u_0_0 port map ( cin=>GND, a(9)=>
      p22_4n0r3(11), a(8)=>p22_4n0r3(10), a(7)=>p22_4n0r3(9), a(6)=>
      p22_4n0r3(8), a(5)=>p22_4n0r3(7), a(4)=>p22_4n0r3(6), a(3)=>
      p22_4n0r3(5), a(2)=>p22_4n0r3(4), a(1)=>p22_4n0r3(3), a(0)=>
      p22_4n0r3(2), b(9)=>p12(9), b(8)=>p12(8), b(7)=>p12(7), b(6)=>p12(6), 
      b(5)=>p12(5), b(4)=>p12(4), b(3)=>p12(3), b(2)=>p12(2), b(1)=>p12(1), 
      b(0)=>p12(0), d(9)=>rtlc4n197_11, d(8)=>rtlc4n197_10, d(7)=>
      rtlc4n197_9, d(6)=>rtlc4n197_8, d(5)=>rtlc4n197_7, d(4)=>rtlc4n197_6, 
      d(3)=>rtlc4n197_5, d(2)=>rtlc4n197_4, d(1)=>rtlc4n197_3, d(0)=>
      rtlc4n197_2, cout=>DANGLING(4));
   p13_add8_0i3 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>p13_0n0s2(8), a(5)=>p13_0n0s2(7), a(4)=>p13_0n0s2(6), a(3)=>
      p13_0n0s2(5), a(2)=>p13_0n0s2(4), a(1)=>p13_0n0s2(3), a(0)=>
      p13_0n0s2(2), b(8)=>p13_0n0s2(8), b(7)=>p13_0n0s2(7), b(6)=>
      p13_0n0s2(6), b(5)=>p13_0n0s2(5), b(4)=>p13_0n0s2(4), b(3)=>
      p13_0n0s2(3), b(2)=>p13_0n0s2(2), b(1)=>p13_0n0s2(1), b(0)=>
      p13_0n0s2(0), d(8)=>p13_10, d(7)=>p13_9, d(6)=>p13_8, d(5)=>p13_7, 
      d(4)=>p13_6, d(3)=>p13_5, d(2)=>p13_4, d(1)=>p13_3, d(0)=>p13_2, cout
      =>DANGLING(5));
   p21_4n0r3(10) <= rtlcn1061 XOR not_p21_4n0r4_10 ;
   p22_4n0r3(10) <= rtlcn1142 XOR not_p22_4n0r4_10 ;
   rtlcn1383 <= state(2) AND not_i_reset ;
   rtlcn1387 <= state(1) AND not_i_reset ;
   rtlcn1391 <= state(0) AND not_i_reset ;
   rtlcn1394 <= state(3) OR i_reset ;
   rtlcn1395 <= p40 OR i_reset ;
   rtlcn1397 <= rtlcn196 when rtlc7n127 = '1' else o_dir_EXMPLR485(2) ;
   rtlcn1398 <= not_rtlcn213 when rtlc7n127 = '1' else o_dir_EXMPLR485(1) ;
   rtlcn1399 <= rtlcn1383 when rtlcn1395 = '1' else state(3) ;
   rtlcn1400 <= rtlcn1387 when rtlcn1395 = '1' else state(2) ;
   rtlcn1401 <= rtlcn1391 when rtlcn1395 = '1' else state(1) ;
   rtlcn1402 <= rtlcn1394 when rtlcn1395 = '1' else state(0) ;
   DFFPC (p13_10,GND,GND,i_clock,p23(10)) ;
   DFFPC (p13_9,GND,GND,i_clock,p23(9)) ;
   DFFPC (p13_8,GND,GND,i_clock,p23(8)) ;
   DFFPC (p13_7,GND,GND,i_clock,p23(7)) ;
   DFFPC (p13_6,GND,GND,i_clock,p23(6)) ;
   DFFPC (p13_5,GND,GND,i_clock,p23(5)) ;
   DFFPC (p13_4,GND,GND,i_clock,p23(4)) ;
   DFFPC (p13_3,GND,GND,i_clock,p23(3)) ;
   DFFPC (p13_2,GND,GND,i_clock,p23(2)) ;
   DFFPC (p13_0n0s2(1),GND,GND,i_clock,p23(1)) ;
   DFFPC (p13_0n0s2(0),GND,GND,i_clock,p23(0)) ;
   DFFPC (rtlc4n197_11,GND,GND,i_clock,p22(11)) ;
   DFFPC (rtlc4n197_10,GND,GND,i_clock,p22(10)) ;
   DFFPC (rtlc4n197_9,GND,GND,i_clock,p22(9)) ;
   DFFPC (rtlc4n197_8,GND,GND,i_clock,p22(8)) ;
   DFFPC (rtlc4n197_7,GND,GND,i_clock,p22(7)) ;
   DFFPC (rtlc4n197_6,GND,GND,i_clock,p22(6)) ;
   DFFPC (rtlc4n197_5,GND,GND,i_clock,p22(5)) ;
   DFFPC (rtlc4n197_4,GND,GND,i_clock,p22(4)) ;
   DFFPC (rtlc4n197_3,GND,GND,i_clock,p22(3)) ;
   DFFPC (rtlc4n197_2,GND,GND,i_clock,p22(2)) ;
   DFFPC (p22_4n0r3(1),GND,GND,i_clock,p22(1)) ;
   DFFPC (p22_4n0r3(0),GND,GND,i_clock,p22(0)) ;
   DFFPC (rtlc4n193_11,GND,GND,i_clock,p21(11)) ;
   DFFPC (rtlc4n193_10,GND,GND,i_clock,p21(10)) ;
   DFFPC (rtlc4n193_9,GND,GND,i_clock,p21(9)) ;
   DFFPC (rtlc4n193_8,GND,GND,i_clock,p21(8)) ;
   DFFPC (rtlc4n193_7,GND,GND,i_clock,p21(7)) ;
   DFFPC (rtlc4n193_6,GND,GND,i_clock,p21(6)) ;
   DFFPC (rtlc4n193_5,GND,GND,i_clock,p21(5)) ;
   DFFPC (rtlc4n193_4,GND,GND,i_clock,p21(4)) ;
   DFFPC (rtlc4n193_3,GND,GND,i_clock,p21(3)) ;
   DFFPC (rtlc4n193_2,GND,GND,i_clock,p21(2)) ;
   DFFPC (p21_4n0r3(1),GND,GND,i_clock,p21(1)) ;
   DFFPC (p21_4n0r3(0),GND,GND,i_clock,p21(0)) ;
   DFFPC (p23(10),GND,GND,i_clock,p32(10)) ;
   DFFPC (p23(9),GND,GND,i_clock,p32(9)) ;
   DFFPC (p23(8),GND,GND,i_clock,p32(8)) ;
   DFFPC (p23(7),GND,GND,i_clock,p32(7)) ;
   DFFPC (p23(6),GND,GND,i_clock,p32(6)) ;
   DFFPC (p23(5),GND,GND,i_clock,p32(5)) ;
   DFFPC (p23(4),GND,GND,i_clock,p32(4)) ;
   DFFPC (p23(3),GND,GND,i_clock,p32(3)) ;
   DFFPC (p23(2),GND,GND,i_clock,p32(2)) ;
   DFFPC (p23(1),GND,GND,i_clock,p32(1)) ;
   DFFPC (p23(0),GND,GND,i_clock,p32(0)) ;
   DFFPC (p31_5n1ss1(11),GND,GND,i_clock,p31(11)) ;
   DFFPC (p31_5n1ss1(10),GND,GND,i_clock,p31(10)) ;
   DFFPC (p31_5n1ss1(9),GND,GND,i_clock,p31(9)) ;
   DFFPC (p31_5n1ss1(8),GND,GND,i_clock,p31(8)) ;
   DFFPC (p31_5n1ss1(7),GND,GND,i_clock,p31(7)) ;
   DFFPC (p31_5n1ss1(6),GND,GND,i_clock,p31(6)) ;
   DFFPC (p31_5n1ss1(5),GND,GND,i_clock,p31(5)) ;
   DFFPC (p31_5n1ss1(4),GND,GND,i_clock,p31(4)) ;
   DFFPC (p31_5n1ss1(3),GND,GND,i_clock,p31(3)) ;
   DFFPC (p31_5n1ss1(2),GND,GND,i_clock,p31(2)) ;
   DFFPC (p31_5n1ss1(1),GND,GND,i_clock,p31(1)) ;
   DFFPC (p31_5n1ss1(0),GND,GND,i_clock,p31(0)) ;
   DFFPC (not_rtlc5n47,GND,GND,i_clock,p35) ;
   DFFPC (p35,GND,GND,i_clock,p45) ;
   DFFPC (p4s(11),GND,GND,i_clock,p43(11)) ;
   DFFPC (p4s(10),GND,GND,i_clock,p43(10)) ;
   DFFPC (p4s(9),GND,GND,i_clock,p43(9)) ;
   DFFPC (p4s(8),GND,GND,i_clock,p43(8)) ;
   DFFPC (p4s(7),GND,GND,i_clock,p43(7)) ;
   DFFPC (p4s(6),GND,GND,i_clock,p43(6)) ;
   DFFPC (p4s(5),GND,GND,i_clock,p43(5)) ;
   DFFPC (p4s(4),GND,GND,i_clock,p43(4)) ;
   DFFPC (p4s(3),GND,GND,i_clock,p43(3)) ;
   DFFPC (p4s(2),GND,GND,i_clock,p43(2)) ;
   DFFPC (p4s(1),GND,GND,i_clock,p43(1)) ;
   DFFPC (p4s(0),GND,GND,i_clock,p43(0)) ;
   DFFPC (rtlc6n83,GND,GND,i_clock,p41) ;
   DFFPC (p40,GND,GND,i_clock,p50) ;
   DFFPCE (p45,GND,GND,rtlc1n77,i_clock,o_dir_EXMPLR485(0)) ;
   DFFPCE (p41,GND,GND,rtlc1n77,i_clock,o_edge) ;
   DFFPCE (p43(11),GND,GND,rtlc1n77,i_clock,prev_max(11)) ;
   DFFPCE (p43(10),GND,GND,rtlc1n77,i_clock,prev_max(10)) ;
   DFFPCE (p43(9),GND,GND,rtlc1n77,i_clock,prev_max(9)) ;
   DFFPCE (p43(8),GND,GND,rtlc1n77,i_clock,prev_max(8)) ;
   DFFPCE (p43(7),GND,GND,rtlc1n77,i_clock,prev_max(7)) ;
   DFFPCE (p43(6),GND,GND,rtlc1n77,i_clock,prev_max(6)) ;
   DFFPCE (p43(5),GND,GND,rtlc1n77,i_clock,prev_max(5)) ;
   DFFPCE (p43(4),GND,GND,rtlc1n77,i_clock,prev_max(4)) ;
   DFFPCE (p43(3),GND,GND,rtlc1n77,i_clock,prev_max(3)) ;
   DFFPCE (p43(2),GND,GND,rtlc1n77,i_clock,prev_max(2)) ;
   DFFPCE (p43(1),GND,GND,rtlc1n77,i_clock,prev_max(1)) ;
   DFFPCE (p43(0),GND,GND,rtlc1n77,i_clock,prev_max(0)) ;
   DFFPC (rtlcn1397,GND,GND,i_clock,o_dir_EXMPLR485(2)) ;
   DFFPC (rtlcn1398,GND,GND,i_clock,o_dir_EXMPLR485(1)) ;
   DFFPC (rtlcn1399,GND,GND,i_clock,state(3)) ;
   DFFPC (rtlcn1400,GND,GND,i_clock,state(2)) ;
   DFFPC (rtlcn1401,GND,GND,i_clock,state(1)) ;
   DFFPC (rtlcn1402,GND,GND,i_clock,state(0)) ;
   modgen_adderblock : modgen_adderblock_add_2_3_0_0_0_9_0 port map ( a0(7)
      =>b1(7), a0(6)=>b1(6), a0(5)=>b1(5), a0(4)=>b1(4), a0(3)=>b1(3), a0(2)
      =>b1(2), a0(1)=>b1(1), a0(0)=>b1(0), a1(7)=>b2(7), a1(6)=>b2(6), a1(5)
      =>b2(5), a1(4)=>b2(4), a1(3)=>b2(3), a1(2)=>b2(2), a1(1)=>b2(1), a1(0)
      =>b2(0), a2(8)=>GND, a2(7)=>b3(7), a2(6)=>b3(6), a2(5)=>b3(5), a2(4)=>
      b3(4), a2(3)=>b3(3), a2(2)=>b3(2), a2(1)=>b3(1), a2(0)=>b3(0), d(9)=>
      p12(9), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)=>
      p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>p12(0));
   modgen_adderblock_dup_0 : modgen_adderblock_add_2_3_0_0_1_9_0 port map ( 
      a0(7)=>t1(7), a0(6)=>t1(6), a0(5)=>t1(5), a0(4)=>t1(4), a0(3)=>t1(3), 
      a0(2)=>t1(2), a0(1)=>t1(1), a0(0)=>t1(0), a1(7)=>t2(7), a1(6)=>t2(6), 
      a1(5)=>t2(5), a1(4)=>t2(4), a1(3)=>t2(3), a1(2)=>t2(2), a1(1)=>t2(1), 
      a1(0)=>t2(0), a2(8)=>GND, a2(7)=>t3(7), a2(6)=>t3(6), a2(5)=>t3(5), 
      a2(4)=>t3(4), a2(3)=>t3(3), a2(2)=>t3(2), a2(1)=>t3(1), a2(0)=>t3(0), 
      d(9)=>p11(9), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>p11(5), 
      d(4)=>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>p11(0));
   modgen_or_4 : or_4u_4u port map ( a(3)=>p4s(9), a(2)=>p4s(10), a(1)=>
      p4s(11), a(0)=>rtlc6n80, d=>rtlc6n81);
   ix182 : shiftregister_with_taps_8_4_1 port map ( \in\(7)=>i_row(7), 
      \in\(6)=>i_row(6), \in\(5)=>i_row(5), \in\(4)=>i_row(4), \in\(3)=>
      i_row(3), \in\(2)=>i_row(2), \in\(1)=>i_row(1), \in\(0)=>i_row(0), 
      \out\(7)=>o_row(7), \out\(6)=>o_row(6), \out\(5)=>o_row(5), \out\(4)=>
      o_row(4), \out\(3)=>o_row(3), \out\(2)=>o_row(2), \out\(1)=>o_row(1), 
      \out\(0)=>o_row(0), tap_out(7)=>DANGLING(6), tap_out(6)=>DANGLING(7), 
      tap_out(5)=>DANGLING(8), tap_out(4)=>DANGLING(9), tap_out(3)=>DANGLING
      (10), tap_out(2)=>DANGLING(11), tap_out(1)=>DANGLING(12), tap_out(0)=>
      DANGLING(13), clk=>i_clock, clken=>DANGLING(14), reset=>GND, set=>GND
   );
   ix183 : shiftregister_with_taps_2_4_1 port map ( \in\(1)=>i_mode(1), 
      \in\(0)=>i_mode(0), \out\(1)=>p5m(1), \out\(0)=>p5m(0), tap_out(1)=>
      DANGLING(15), tap_out(0)=>DANGLING(16), clk=>i_clock, clken=>DANGLING(
      17), reset=>GND, set=>GND);
   ix184 : shiftregister_with_taps_1_3_1 port map ( \in\(0)=>i_valid, 
      \out\(0)=>p40, tap_out(0)=>DANGLING(18), clk=>i_clock, clken=>DANGLING
      (19), reset=>GND, set=>GND);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image0_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image1_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component memory
      port (
         i_valid : IN std_logic ;
         i_reset : IN std_logic ;
         i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         i_clock : IN std_logic ;
         o_valid : OUT std_logic ;
         o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
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
   end component ;
   component flow
      port (
         t1 : IN std_logic_vector (7 DOWNTO 0) ;
         t2 : IN std_logic_vector (7 DOWNTO 0) ;
         t3 : IN std_logic_vector (7 DOWNTO 0) ;
         b1 : IN std_logic_vector (7 DOWNTO 0) ;
         b2 : IN std_logic_vector (7 DOWNTO 0) ;
         b3 : IN std_logic_vector (7 DOWNTO 0) ;
         i1 : IN std_logic_vector (7 DOWNTO 0) ;
         i2 : IN std_logic_vector (7 DOWNTO 0) ;
         i_clock : IN std_logic ;
         i_reset : IN std_logic ;
         i_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         i_row : IN std_logic_vector (7 DOWNTO 0) ;
         o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         o_edge : OUT std_logic ;
         o_valid : OUT std_logic ;
         o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         o_row : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal m_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal m_o_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_valid: std_logic ;
   
   signal f_t1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_1_EXMPLR514, debug_num_5_0_EXMPLR515, rtlc1n11, 
      not_rtlc1n11, rtlc10n27, rtlc11n182, not_i_reset, not_f_state_3, 
      not_f_state_2, not_f_state_1: std_logic ;
   
   signal o_image0_0_EXMPLR592: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR593: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR594: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR595: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR597: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR598: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR599: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR600: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn6, rtlcn8, rtlcn10, rtlcn14, rtlcn17, rtlcn20, rtlcn21, 
      rtlcn22, rtlcn23: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   o_image0_0(7) <= o_image0_0_EXMPLR592(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR592(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR592(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR592(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR592(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR592(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR592(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR592(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR593(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR593(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR593(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR593(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR593(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR593(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR593(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR593(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR594(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR594(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR594(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR594(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR594(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR594(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR594(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR594(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR595(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR595(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR595(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR595(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR595(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR595(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR595(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR595(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR597(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR597(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR597(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR597(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR597(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR597(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR597(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR597(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR598(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR598(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR598(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR598(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR598(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR598(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR598(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR598(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR599(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR599(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR599(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR599(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR599(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR599(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR599(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR599(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR600(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR600(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR600(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR600(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR600(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR600(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR600(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR600(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR515 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR515 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR515 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR515 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR515 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR515 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR515 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR515 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR515 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR514 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR514 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR514 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR515 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR515 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR514 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR515 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR515 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR515 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR514 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR514 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR514 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR514 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR514 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR515 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR514 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR514 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR515 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR515 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR514 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR514 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR514 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR515 ;
   debug_num_5_1_EXMPLR514 <= '1' ;
   debug_num_5_0_EXMPLR515 <= '0' ;
   u_memory : memory port map ( i_valid=>i_valid, i_reset=>i_reset, 
      i_pixel(7)=>i_pixel(7), i_pixel(6)=>i_pixel(6), i_pixel(5)=>i_pixel(5), 
      i_pixel(4)=>i_pixel(4), i_pixel(3)=>i_pixel(3), i_pixel(2)=>i_pixel(2), 
      i_pixel(1)=>i_pixel(1), i_pixel(0)=>i_pixel(0), i_clock=>i_clock, 
      o_valid=>m_o_valid, o_mode(1)=>m_o_mode(1), o_mode(0)=>m_o_mode(0), 
      o_column(7)=>DANGLING(0), o_column(6)=>DANGLING(1), o_column(5)=>
      DANGLING(2), o_column(4)=>DANGLING(3), o_column(3)=>DANGLING(4), 
      o_column(2)=>DANGLING(5), o_column(1)=>DANGLING(6), o_column(0)=>
      DANGLING(7), o_row(7)=>m_o_row(7), o_row(6)=>m_o_row(6), o_row(5)=>
      m_o_row(5), o_row(4)=>m_o_row(4), o_row(3)=>m_o_row(3), o_row(2)=>
      m_o_row(2), o_row(1)=>m_o_row(1), o_row(0)=>m_o_row(0), o_image0_0(7)
      =>o_image0_0_EXMPLR592(7), o_image0_0(6)=>o_image0_0_EXMPLR592(6), 
      o_image0_0(5)=>o_image0_0_EXMPLR592(5), o_image0_0(4)=>
      o_image0_0_EXMPLR592(4), o_image0_0(3)=>o_image0_0_EXMPLR592(3), 
      o_image0_0(2)=>o_image0_0_EXMPLR592(2), o_image0_0(1)=>
      o_image0_0_EXMPLR592(1), o_image0_0(0)=>o_image0_0_EXMPLR592(0), 
      o_image0_1(7)=>o_image0_1_EXMPLR593(7), o_image0_1(6)=>
      o_image0_1_EXMPLR593(6), o_image0_1(5)=>o_image0_1_EXMPLR593(5), 
      o_image0_1(4)=>o_image0_1_EXMPLR593(4), o_image0_1(3)=>
      o_image0_1_EXMPLR593(3), o_image0_1(2)=>o_image0_1_EXMPLR593(2), 
      o_image0_1(1)=>o_image0_1_EXMPLR593(1), o_image0_1(0)=>
      o_image0_1_EXMPLR593(0), o_image0_2(7)=>o_image0_2_EXMPLR594(7), 
      o_image0_2(6)=>o_image0_2_EXMPLR594(6), o_image0_2(5)=>
      o_image0_2_EXMPLR594(5), o_image0_2(4)=>o_image0_2_EXMPLR594(4), 
      o_image0_2(3)=>o_image0_2_EXMPLR594(3), o_image0_2(2)=>
      o_image0_2_EXMPLR594(2), o_image0_2(1)=>o_image0_2_EXMPLR594(1), 
      o_image0_2(0)=>o_image0_2_EXMPLR594(0), o_image1_0(7)=>
      o_image1_0_EXMPLR595(7), o_image1_0(6)=>o_image1_0_EXMPLR595(6), 
      o_image1_0(5)=>o_image1_0_EXMPLR595(5), o_image1_0(4)=>
      o_image1_0_EXMPLR595(4), o_image1_0(3)=>o_image1_0_EXMPLR595(3), 
      o_image1_0(2)=>o_image1_0_EXMPLR595(2), o_image1_0(1)=>
      o_image1_0_EXMPLR595(1), o_image1_0(0)=>o_image1_0_EXMPLR595(0), 
      o_image1_1(7)=>o_image1_1(7), o_image1_1(6)=>o_image1_1(6), 
      o_image1_1(5)=>o_image1_1(5), o_image1_1(4)=>o_image1_1(4), 
      o_image1_1(3)=>o_image1_1(3), o_image1_1(2)=>o_image1_1(2), 
      o_image1_1(1)=>o_image1_1(1), o_image1_1(0)=>o_image1_1(0), 
      o_image1_2(7)=>o_image1_2_EXMPLR597(7), o_image1_2(6)=>
      o_image1_2_EXMPLR597(6), o_image1_2(5)=>o_image1_2_EXMPLR597(5), 
      o_image1_2(4)=>o_image1_2_EXMPLR597(4), o_image1_2(3)=>
      o_image1_2_EXMPLR597(3), o_image1_2(2)=>o_image1_2_EXMPLR597(2), 
      o_image1_2(1)=>o_image1_2_EXMPLR597(1), o_image1_2(0)=>
      o_image1_2_EXMPLR597(0), o_image2_0(7)=>o_image2_0_EXMPLR598(7), 
      o_image2_0(6)=>o_image2_0_EXMPLR598(6), o_image2_0(5)=>
      o_image2_0_EXMPLR598(5), o_image2_0(4)=>o_image2_0_EXMPLR598(4), 
      o_image2_0(3)=>o_image2_0_EXMPLR598(3), o_image2_0(2)=>
      o_image2_0_EXMPLR598(2), o_image2_0(1)=>o_image2_0_EXMPLR598(1), 
      o_image2_0(0)=>o_image2_0_EXMPLR598(0), o_image2_1(7)=>
      o_image2_1_EXMPLR599(7), o_image2_1(6)=>o_image2_1_EXMPLR599(6), 
      o_image2_1(5)=>o_image2_1_EXMPLR599(5), o_image2_1(4)=>
      o_image2_1_EXMPLR599(4), o_image2_1(3)=>o_image2_1_EXMPLR599(3), 
      o_image2_1(2)=>o_image2_1_EXMPLR599(2), o_image2_1(1)=>
      o_image2_1_EXMPLR599(1), o_image2_1(0)=>o_image2_1_EXMPLR599(0), 
      o_image2_2(7)=>o_image2_2_EXMPLR600(7), o_image2_2(6)=>
      o_image2_2_EXMPLR600(6), o_image2_2(5)=>o_image2_2_EXMPLR600(5), 
      o_image2_2(4)=>o_image2_2_EXMPLR600(4), o_image2_2(3)=>
      o_image2_2_EXMPLR600(3), o_image2_2(2)=>o_image2_2_EXMPLR600(2), 
      o_image2_2(1)=>o_image2_2_EXMPLR600(1), o_image2_2(0)=>
      o_image2_2_EXMPLR600(0));
   u_flow : flow port map ( t1(7)=>f_t1(7), t1(6)=>f_t1(6), t1(5)=>f_t1(5), 
      t1(4)=>f_t1(4), t1(3)=>f_t1(3), t1(2)=>f_t1(2), t1(1)=>f_t1(1), t1(0)
      =>f_t1(0), t2(7)=>f_t2(7), t2(6)=>f_t2(6), t2(5)=>f_t2(5), t2(4)=>
      f_t2(4), t2(3)=>f_t2(3), t2(2)=>f_t2(2), t2(1)=>f_t2(1), t2(0)=>
      f_t2(0), t3(7)=>f_t3(7), t3(6)=>f_t3(6), t3(5)=>f_t3(5), t3(4)=>
      f_t3(4), t3(3)=>f_t3(3), t3(2)=>f_t3(2), t3(1)=>f_t3(1), t3(0)=>
      f_t3(0), b1(7)=>f_b1(7), b1(6)=>f_b1(6), b1(5)=>f_b1(5), b1(4)=>
      f_b1(4), b1(3)=>f_b1(3), b1(2)=>f_b1(2), b1(1)=>f_b1(1), b1(0)=>
      f_b1(0), b2(7)=>f_b2(7), b2(6)=>f_b2(6), b2(5)=>f_b2(5), b2(4)=>
      f_b2(4), b2(3)=>f_b2(3), b2(2)=>f_b2(2), b2(1)=>f_b2(1), b2(0)=>
      f_b2(0), b3(7)=>f_b3(7), b3(6)=>f_b3(6), b3(5)=>f_b3(5), b3(4)=>
      f_b3(4), b3(3)=>f_b3(3), b3(2)=>f_b3(2), b3(1)=>f_b3(1), b3(0)=>
      f_b3(0), i1(7)=>f_i1(7), i1(6)=>f_i1(6), i1(5)=>f_i1(5), i1(4)=>
      f_i1(4), i1(3)=>f_i1(3), i1(2)=>f_i1(2), i1(1)=>f_i1(1), i1(0)=>
      f_i1(0), i2(7)=>f_i2(7), i2(6)=>f_i2(6), i2(5)=>f_i2(5), i2(4)=>
      f_i2(4), i2(3)=>f_i2(3), i2(2)=>f_i2(2), i2(1)=>f_i2(1), i2(0)=>
      f_i2(0), i_clock=>i_clock, i_reset=>i_reset, i_valid=>rtlc10n27, 
      i_mode(1)=>m_o_mode(1), i_mode(0)=>m_o_mode(0), i_row(7)=>m_o_row(7), 
      i_row(6)=>m_o_row(6), i_row(5)=>m_o_row(5), i_row(4)=>m_o_row(4), 
      i_row(3)=>m_o_row(3), i_row(2)=>m_o_row(2), i_row(1)=>m_o_row(1), 
      i_row(0)=>m_o_row(0), o_dir(2)=>o_dir(2), o_dir(1)=>o_dir(1), o_dir(0)
      =>o_dir(0), o_edge=>o_edge, o_valid=>o_valid, o_mode(1)=>o_mode(1), 
      o_mode(0)=>o_mode(0), o_row(7)=>o_row(7), o_row(6)=>o_row(6), o_row(5)
      =>o_row(5), o_row(4)=>o_row(4), o_row(3)=>o_row(3), o_row(2)=>o_row(2), 
      o_row(1)=>o_row(1), o_row(0)=>o_row(0));
   not_rtlc1n11 <= NOT rtlc1n11 ;
   rtlc10n27 <= m_o_valid OR not_rtlc1n11 ;
   f_t1(0) <= o_image0_2_EXMPLR594(0) when rtlc1n11 = '1' else f_t1_next(0)
    ;
   f_t1(1) <= o_image0_2_EXMPLR594(1) when rtlc1n11 = '1' else f_t1_next(1)
    ;
   f_t1(2) <= o_image0_2_EXMPLR594(2) when rtlc1n11 = '1' else f_t1_next(2)
    ;
   f_t1(3) <= o_image0_2_EXMPLR594(3) when rtlc1n11 = '1' else f_t1_next(3)
    ;
   f_t1(4) <= o_image0_2_EXMPLR594(4) when rtlc1n11 = '1' else f_t1_next(4)
    ;
   f_t1(5) <= o_image0_2_EXMPLR594(5) when rtlc1n11 = '1' else f_t1_next(5)
    ;
   f_t1(6) <= o_image0_2_EXMPLR594(6) when rtlc1n11 = '1' else f_t1_next(6)
    ;
   f_t1(7) <= o_image0_2_EXMPLR594(7) when rtlc1n11 = '1' else f_t1_next(7)
    ;
   f_t2(0) <= o_image0_1_EXMPLR593(0) when rtlc1n11 = '1' else f_t2_next(0)
    ;
   f_t2(1) <= o_image0_1_EXMPLR593(1) when rtlc1n11 = '1' else f_t2_next(1)
    ;
   f_t2(2) <= o_image0_1_EXMPLR593(2) when rtlc1n11 = '1' else f_t2_next(2)
    ;
   f_t2(3) <= o_image0_1_EXMPLR593(3) when rtlc1n11 = '1' else f_t2_next(3)
    ;
   f_t2(4) <= o_image0_1_EXMPLR593(4) when rtlc1n11 = '1' else f_t2_next(4)
    ;
   f_t2(5) <= o_image0_1_EXMPLR593(5) when rtlc1n11 = '1' else f_t2_next(5)
    ;
   f_t2(6) <= o_image0_1_EXMPLR593(6) when rtlc1n11 = '1' else f_t2_next(6)
    ;
   f_t2(7) <= o_image0_1_EXMPLR593(7) when rtlc1n11 = '1' else f_t2_next(7)
    ;
   f_t3(0) <= o_image0_0_EXMPLR592(0) when rtlc1n11 = '1' else f_t3_next(0)
    ;
   f_t3(1) <= o_image0_0_EXMPLR592(1) when rtlc1n11 = '1' else f_t3_next(1)
    ;
   f_t3(2) <= o_image0_0_EXMPLR592(2) when rtlc1n11 = '1' else f_t3_next(2)
    ;
   f_t3(3) <= o_image0_0_EXMPLR592(3) when rtlc1n11 = '1' else f_t3_next(3)
    ;
   f_t3(4) <= o_image0_0_EXMPLR592(4) when rtlc1n11 = '1' else f_t3_next(4)
    ;
   f_t3(5) <= o_image0_0_EXMPLR592(5) when rtlc1n11 = '1' else f_t3_next(5)
    ;
   f_t3(6) <= o_image0_0_EXMPLR592(6) when rtlc1n11 = '1' else f_t3_next(6)
    ;
   f_t3(7) <= o_image0_0_EXMPLR592(7) when rtlc1n11 = '1' else f_t3_next(7)
    ;
   f_b1(0) <= o_image2_0_EXMPLR598(0) when rtlc1n11 = '1' else f_b1_next(0)
    ;
   f_b1(1) <= o_image2_0_EXMPLR598(1) when rtlc1n11 = '1' else f_b1_next(1)
    ;
   f_b1(2) <= o_image2_0_EXMPLR598(2) when rtlc1n11 = '1' else f_b1_next(2)
    ;
   f_b1(3) <= o_image2_0_EXMPLR598(3) when rtlc1n11 = '1' else f_b1_next(3)
    ;
   f_b1(4) <= o_image2_0_EXMPLR598(4) when rtlc1n11 = '1' else f_b1_next(4)
    ;
   f_b1(5) <= o_image2_0_EXMPLR598(5) when rtlc1n11 = '1' else f_b1_next(5)
    ;
   f_b1(6) <= o_image2_0_EXMPLR598(6) when rtlc1n11 = '1' else f_b1_next(6)
    ;
   f_b1(7) <= o_image2_0_EXMPLR598(7) when rtlc1n11 = '1' else f_b1_next(7)
    ;
   f_b2(0) <= o_image2_1_EXMPLR599(0) when rtlc1n11 = '1' else f_b2_next(0)
    ;
   f_b2(1) <= o_image2_1_EXMPLR599(1) when rtlc1n11 = '1' else f_b2_next(1)
    ;
   f_b2(2) <= o_image2_1_EXMPLR599(2) when rtlc1n11 = '1' else f_b2_next(2)
    ;
   f_b2(3) <= o_image2_1_EXMPLR599(3) when rtlc1n11 = '1' else f_b2_next(3)
    ;
   f_b2(4) <= o_image2_1_EXMPLR599(4) when rtlc1n11 = '1' else f_b2_next(4)
    ;
   f_b2(5) <= o_image2_1_EXMPLR599(5) when rtlc1n11 = '1' else f_b2_next(5)
    ;
   f_b2(6) <= o_image2_1_EXMPLR599(6) when rtlc1n11 = '1' else f_b2_next(6)
    ;
   f_b2(7) <= o_image2_1_EXMPLR599(7) when rtlc1n11 = '1' else f_b2_next(7)
    ;
   f_b3(0) <= o_image2_2_EXMPLR600(0) when rtlc1n11 = '1' else f_b3_next(0)
    ;
   f_b3(1) <= o_image2_2_EXMPLR600(1) when rtlc1n11 = '1' else f_b3_next(1)
    ;
   f_b3(2) <= o_image2_2_EXMPLR600(2) when rtlc1n11 = '1' else f_b3_next(2)
    ;
   f_b3(3) <= o_image2_2_EXMPLR600(3) when rtlc1n11 = '1' else f_b3_next(3)
    ;
   f_b3(4) <= o_image2_2_EXMPLR600(4) when rtlc1n11 = '1' else f_b3_next(4)
    ;
   f_b3(5) <= o_image2_2_EXMPLR600(5) when rtlc1n11 = '1' else f_b3_next(5)
    ;
   f_b3(6) <= o_image2_2_EXMPLR600(6) when rtlc1n11 = '1' else f_b3_next(6)
    ;
   f_b3(7) <= o_image2_2_EXMPLR600(7) when rtlc1n11 = '1' else f_b3_next(7)
    ;
   f_i1(0) <= o_image1_0_EXMPLR595(0) when rtlc1n11 = '1' else f_i1_next(0)
    ;
   f_i1(1) <= o_image1_0_EXMPLR595(1) when rtlc1n11 = '1' else f_i1_next(1)
    ;
   f_i1(2) <= o_image1_0_EXMPLR595(2) when rtlc1n11 = '1' else f_i1_next(2)
    ;
   f_i1(3) <= o_image1_0_EXMPLR595(3) when rtlc1n11 = '1' else f_i1_next(3)
    ;
   f_i1(4) <= o_image1_0_EXMPLR595(4) when rtlc1n11 = '1' else f_i1_next(4)
    ;
   f_i1(5) <= o_image1_0_EXMPLR595(5) when rtlc1n11 = '1' else f_i1_next(5)
    ;
   f_i1(6) <= o_image1_0_EXMPLR595(6) when rtlc1n11 = '1' else f_i1_next(6)
    ;
   f_i1(7) <= o_image1_0_EXMPLR595(7) when rtlc1n11 = '1' else f_i1_next(7)
    ;
   f_i2(0) <= o_image1_2_EXMPLR597(0) when rtlc1n11 = '1' else f_i2_next(0)
    ;
   f_i2(1) <= o_image1_2_EXMPLR597(1) when rtlc1n11 = '1' else f_i2_next(1)
    ;
   f_i2(2) <= o_image1_2_EXMPLR597(2) when rtlc1n11 = '1' else f_i2_next(2)
    ;
   f_i2(3) <= o_image1_2_EXMPLR597(3) when rtlc1n11 = '1' else f_i2_next(3)
    ;
   f_i2(4) <= o_image1_2_EXMPLR597(4) when rtlc1n11 = '1' else f_i2_next(4)
    ;
   f_i2(5) <= o_image1_2_EXMPLR597(5) when rtlc1n11 = '1' else f_i2_next(5)
    ;
   f_i2(6) <= o_image1_2_EXMPLR597(6) when rtlc1n11 = '1' else f_i2_next(6)
    ;
   f_i2(7) <= o_image1_2_EXMPLR597(7) when rtlc1n11 = '1' else f_i2_next(7)
    ;
   not_i_reset <= NOT i_reset ;
   rtlc11n182 <= not_i_reset AND m_o_valid ;
   not_f_state_3 <= NOT f_state(3) ;
   not_f_state_2 <= NOT f_state(2) ;
   not_f_state_1 <= NOT f_state(1) ;
   rtlc_294_and_42 : and_4u_4u port map ( a(3)=>not_f_state_3, a(2)=>
      not_f_state_2, a(1)=>not_f_state_1, a(0)=>f_state(0), d=>rtlc1n11);
   rtlcn6 <= f_state(2) AND not_i_reset ;
   rtlcn8 <= m_o_valid OR i_reset ;
   rtlcn10 <= f_state(1) AND not_i_reset ;
   rtlcn14 <= f_state(0) AND not_i_reset ;
   rtlcn17 <= f_state(3) OR i_reset ;
   rtlcn20 <= rtlcn6 when rtlcn8 = '1' else f_state(3) ;
   rtlcn21 <= rtlcn10 when rtlcn8 = '1' else f_state(2) ;
   rtlcn22 <= rtlcn14 when rtlcn8 = '1' else f_state(1) ;
   rtlcn23 <= rtlcn17 when rtlcn8 = '1' else f_state(0) ;
   DFFPCE (f_t1(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(7)) ;
   DFFPCE (f_t1(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(6)) ;
   DFFPCE (f_t1(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(5)) ;
   DFFPCE (f_t1(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(4)) ;
   DFFPCE (f_t1(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(3)) ;
   DFFPCE (f_t1(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(2)) ;
   DFFPCE (f_t1(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(1)) ;
   DFFPCE (f_t1(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i2_next(0)) ;
   DFFPCE (f_b1(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(7)) ;
   DFFPCE (f_b1(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(6)) ;
   DFFPCE (f_b1(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(5)) ;
   DFFPCE (f_b1(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(4)) ;
   DFFPCE (f_b1(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(3)) ;
   DFFPCE (f_b1(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(2)) ;
   DFFPCE (f_b1(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(1)) ;
   DFFPCE (f_b1(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_i1_next(0)) ;
   DFFPCE (f_i2(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(7)) ;
   DFFPCE (f_i2(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(6)) ;
   DFFPCE (f_i2(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(5)) ;
   DFFPCE (f_i2(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(4)) ;
   DFFPCE (f_i2(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(3)) ;
   DFFPCE (f_i2(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(2)) ;
   DFFPCE (f_i2(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(1)) ;
   DFFPCE (f_i2(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b3_next(0)) ;
   DFFPCE (f_b3(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(7)) ;
   DFFPCE (f_b3(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(6)) ;
   DFFPCE (f_b3(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(5)) ;
   DFFPCE (f_b3(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(4)) ;
   DFFPCE (f_b3(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(3)) ;
   DFFPCE (f_b3(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(2)) ;
   DFFPCE (f_b3(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(1)) ;
   DFFPCE (f_b3(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b2_next(0)) ;
   DFFPCE (f_b2(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(7)) ;
   DFFPCE (f_b2(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(6)) ;
   DFFPCE (f_b2(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(5)) ;
   DFFPCE (f_b2(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(4)) ;
   DFFPCE (f_b2(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(3)) ;
   DFFPCE (f_b2(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(2)) ;
   DFFPCE (f_b2(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(1)) ;
   DFFPCE (f_b2(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_b1_next(0)) ;
   DFFPCE (f_i1(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(7)) ;
   DFFPCE (f_i1(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(6)) ;
   DFFPCE (f_i1(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(5)) ;
   DFFPCE (f_i1(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(4)) ;
   DFFPCE (f_i1(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(3)) ;
   DFFPCE (f_i1(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(2)) ;
   DFFPCE (f_i1(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(1)) ;
   DFFPCE (f_i1(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t3_next(0)) ;
   DFFPCE (f_t3(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(7)) ;
   DFFPCE (f_t3(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(6)) ;
   DFFPCE (f_t3(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(5)) ;
   DFFPCE (f_t3(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(4)) ;
   DFFPCE (f_t3(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(3)) ;
   DFFPCE (f_t3(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(2)) ;
   DFFPCE (f_t3(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(1)) ;
   DFFPCE (f_t3(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t2_next(0)) ;
   DFFPCE (f_t2(7),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(7)) ;
   DFFPCE (f_t2(6),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(6)) ;
   DFFPCE (f_t2(5),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(5)) ;
   DFFPCE (f_t2(4),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(4)) ;
   DFFPCE (f_t2(3),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(3)) ;
   DFFPCE (f_t2(2),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(2)) ;
   DFFPCE (f_t2(1),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(1)) ;
   DFFPCE (f_t2(0),debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,
   rtlc11n182,i_clock,f_t1_next(0)) ;
   DFFPC (rtlcn20,debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,i_clock,
   f_state(3)) ;
   DFFPC (rtlcn21,debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,i_clock,
   f_state(2)) ;
   DFFPC (rtlcn22,debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,i_clock,
   f_state(1)) ;
   DFFPC (rtlcn23,debug_num_5_0_EXMPLR515,debug_num_5_0_EXMPLR515,i_clock,
   f_state(0)) ;
end main ;

