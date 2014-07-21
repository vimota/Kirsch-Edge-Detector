
-- 
-- Definition of  kirsch
-- 
--      Mon Jul 21 14:05:03 2014
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
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for u_mem1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for u_mem2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for u_mem3 : mem_8_8 use entity work.mem_8_8(main);
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, GND: std_logic ;
   
   signal rtlc0n0: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_i_valid, rtlc1n26, rtlc1n28, rtlc3n121, not_rtlc3n121, 
      rtlc3n132, rtlc3n135, not_rtlc3n135, rtlc3n211, rtlc3n215, rtlc3n235, 
      not_first_bubble, not_rtlcs0, rtlc3_X_0_n252, not_rtlc3_X_0_n252, 
      rtlc3n271, rtlc3n272, not_rtlc3n235, rtlc3n307, rtlc3n308, rtlc3n309, 
      not_rtlc3n215: std_logic ;
   
   signal buffer2_4n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_4n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlc4n99, rtlc4n339, rtlc4n427, rtlc6n55, rtlc6n62, rtlcn99, 
      rtlcn123, not_rtlcn236, not_rtlcn237, rtlcn218, rtlcn225, rtlcn226, 
      rtlcn236, rtlcn237, rtlcs0, rtlcs1: std_logic ;
   
   signal o_image1_0_EXMPLR307: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR308: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR309: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR310: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR311: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR312: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
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
   rtlc3n121 <= i_reset OR rtlc6n55 ;
   rtlc3n235 <= not_rtlc3n121 AND i_valid ;
   rtlc4n99 <= rtlc4n339 AND rtlc4n427 ;
   rtlc4_443_or_3 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc4n339);
   rtlc4_469_or_4 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc4n427);
   rtlc6n62 <= i_valid OR busySignal ;
   buffer2_select_4i1Bus7_0 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(0), b(1)=>
      buffer2_4n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_4n4ss1(0));
   buffer2_select_4i1Bus7_1 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(1), b(1)=>
      buffer2_4n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_4n4ss1(1));
   buffer2_select_4i1Bus7_2 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(2), b(1)=>
      buffer2_4n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_4n4ss1(2));
   buffer2_select_4i1Bus7_3 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(3), b(1)=>
      buffer2_4n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_4n4ss1(3));
   buffer2_select_4i1Bus7_4 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(4), b(1)=>
      buffer2_4n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_4n4ss1(4));
   buffer2_select_4i1Bus7_5 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(5), b(1)=>
      buffer2_4n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_4n4ss1(5));
   buffer2_select_4i1Bus7_6 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(6), b(1)=>
      buffer2_4n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_4n4ss1(6));
   buffer2_select_4i1Bus7_7 : select_3_3 port map ( a(2)=>not_rtlcn236, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn99, b(2)=>mem_q_0(7), b(1)=>
      buffer2_4n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_4n4ss1(7));
   buffer2_select_4i1Bus7_8 : select_3_3 port map ( a(2)=>not_rtlcn237, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(0), b(1)=>
      buffer2_4n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_4n4ss1(8));
   buffer2_select_4i1Bus7_9 : select_3_3 port map ( a(2)=>not_rtlcn237, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(1), b(1)=>
      buffer2_4n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_4n4ss1(9));
   buffer2_select_4i1Bus7_10 : select_3_3 port map ( a(2)=>not_rtlcn237, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(2), b(1)=>
      buffer2_4n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_4n4ss1(10));
   buffer2_select_4i1Bus7_11 : select_3_3 port map ( a(2)=>not_rtlcn237, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(3), b(1)=>
      buffer2_4n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_4n4ss1(11));
   buffer2_select_4i1Bus7_12 : select_3_3 port map ( a(2)=>not_rtlcn237, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(4), b(1)=>
      buffer2_4n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_4n4ss1(12));
   buffer2_select_4i1Bus7_13 : select_3_3 port map ( a(2)=>not_rtlcn237, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(5), b(1)=>
      buffer2_4n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_4n4ss1(13));
   buffer2_select_4i1Bus7_14 : select_3_3 port map ( a(2)=>not_rtlcn237, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(6), b(1)=>
      buffer2_4n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_4n4ss1(14));
   buffer2_select_4i1Bus7_15 : select_3_3 port map ( a(2)=>not_rtlcn237, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn123, b(2)=>mem_q_1(7), b(1)=>
      buffer2_4n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_4n4ss1(15));
   rtlcn99 <= rtlc4n339 AND mem_wrn_current(1) ;
   rtlcn123 <= rtlc4n339 AND mem_wrn_current(0) ;
   o_mode(1) <= NOT i_reset ;
   rtlcn218 <= rtlc4n339 OR mem_wrn_current(2) ;
   rtlcn225 <= i_valid AND not_rtlc3n215 ;
   rtlcn226 <= rtlc3n121 OR rtlcn225 ;
   not_rtlcn236 <= NOT rtlcn236 ;
   not_rtlcn237 <= NOT rtlcn237 ;
   rtlc3n215 <= rtlc3n135 when i_valid = '1' else rtlc3n211 ;
   buffer2_4n2ss1(0) <= mem_q_1(0) when rtlc4n339 = '1' else rtlc0n0(0) ;
   buffer2_4n2ss1(1) <= mem_q_1(1) when rtlc4n339 = '1' else rtlc0n0(1) ;
   buffer2_4n2ss1(2) <= mem_q_1(2) when rtlc4n339 = '1' else rtlc0n0(2) ;
   buffer2_4n2ss1(3) <= mem_q_1(3) when rtlc4n339 = '1' else rtlc0n0(3) ;
   buffer2_4n2ss1(4) <= mem_q_1(4) when rtlc4n339 = '1' else rtlc0n0(4) ;
   buffer2_4n2ss1(5) <= mem_q_1(5) when rtlc4n339 = '1' else rtlc0n0(5) ;
   buffer2_4n2ss1(6) <= mem_q_1(6) when rtlc4n339 = '1' else rtlc0n0(6) ;
   buffer2_4n2ss1(7) <= mem_q_1(7) when rtlc4n339 = '1' else rtlc0n0(7) ;
   buffer2_4n4ss1(16) <= rtlc0n0(0) when rtlcn218 = '1' else mem_q_2(0) ;
   buffer2_4n4ss1(17) <= rtlc0n0(1) when rtlcn218 = '1' else mem_q_2(1) ;
   buffer2_4n4ss1(18) <= rtlc0n0(2) when rtlcn218 = '1' else mem_q_2(2) ;
   buffer2_4n4ss1(19) <= rtlc0n0(3) when rtlcn218 = '1' else mem_q_2(3) ;
   buffer2_4n4ss1(20) <= rtlc0n0(4) when rtlcn218 = '1' else mem_q_2(4) ;
   buffer2_4n4ss1(21) <= rtlc0n0(5) when rtlcn218 = '1' else mem_q_2(5) ;
   buffer2_4n4ss1(22) <= rtlc0n0(6) when rtlcn218 = '1' else mem_q_2(6) ;
   buffer2_4n4ss1(23) <= rtlc0n0(7) when rtlcn218 = '1' else mem_q_2(7) ;
   rtlc_517_and_21 : and_8u_8u port map ( a(7)=>row(7), a(6)=>row(6), a(5)=>
      row(5), a(4)=>row(4), a(3)=>row(3), a(2)=>row(2), a(1)=>row(1), a(0)=>
      row(0), d=>rtlcs1);
   rtlc_518_and_22 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>column(0), d=>rtlcs0);
   rtlcn236 <= mem_wrn_current(0) OR rtlcn99 ;
   rtlcn237 <= mem_wrn_current(1) OR rtlcn123 ;
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
   DLATCHPC (i_pixel(7),GND,GND,i_valid,rtlc0n0(7)) ;
   DLATCHPC (i_pixel(6),GND,GND,i_valid,rtlc0n0(6)) ;
   DLATCHPC (i_pixel(5),GND,GND,i_valid,rtlc0n0(5)) ;
   DLATCHPC (i_pixel(4),GND,GND,i_valid,rtlc0n0(4)) ;
   DLATCHPC (i_pixel(3),GND,GND,i_valid,rtlc0n0(3)) ;
   DLATCHPC (i_pixel(2),GND,GND,i_valid,rtlc0n0(2)) ;
   DLATCHPC (i_pixel(1),GND,GND,i_valid,rtlc0n0(1)) ;
   DLATCHPC (i_pixel(0),GND,GND,i_valid,rtlc0n0(0)) ;
   DFFPC (i_valid,GND,GND,i_clock,first_bubble) ;
   DFFRSE (mem_wrn_current(2),GND,rtlc3n309,PWR,i_clock,mem_wrn(2)) ;
   DFFRSE (mem_wrn_current(1),GND,rtlc3n309,PWR,i_clock,mem_wrn(1)) ;
   DFFRSE (mem_wrn_current(0),rtlc3n307,rtlc3n308,PWR,i_clock,mem_wrn(0)) ;
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
   DFFRSE (PWR,GND,not_first_bubble,rtlc4n99,i_clock,o_valid) ;
   DFFPC (busySignal,GND,GND,i_clock,busySignalDelayed) ;
   DFFPC (row(7),GND,GND,i_clock,o_row(7)) ;
   DFFPC (row(6),GND,GND,i_clock,o_row(6)) ;
   DFFPC (row(5),GND,GND,i_clock,o_row(5)) ;
   DFFPC (row(4),GND,GND,i_clock,o_row(4)) ;
   DFFPC (row(3),GND,GND,i_clock,o_row(3)) ;
   DFFPC (row(2),GND,GND,i_clock,o_row(2)) ;
   DFFPC (row(1),GND,GND,i_clock,o_row(1)) ;
   DFFPC (row(0),GND,GND,i_clock,o_row(0)) ;
   DFFRSE (rtlc6n62,GND,rtlc6n55,PWR,i_clock,busySignal) ;
   DFFRSE (mem_wrn_current(1),GND,rtlcn226,not_rtlc3n215,i_clock,
   mem_wrn_current(2)) ;
   DFFRSE (mem_wrn_current(0),GND,rtlcn226,not_rtlc3n215,i_clock,
   mem_wrn_current(1)) ;
   DFFRSE (mem_wrn_current(2),rtlcn225,rtlc3n121,not_rtlc3n215,i_clock,
   mem_wrn_current(0)) ;
   modgen_and_0 : and_3u_3u port map ( a(2)=>not_rtlc3n135, a(1)=>i_valid, 
      a(0)=>not_rtlc3n121, d=>rtlc3n307);
   modgen_and_1 : and_3u_3u port map ( a(2)=>rtlcs1, a(1)=>rtlcs0, a(0)=>
      first_bubble, d=>rtlc6n55);
end main_unfold_1492 ;

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
   ix0 : shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(7), \out\=>nx11);
   ix2 : shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(6), \out\=>nx12);
   ix4 : shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(5), \out\=>nx13);
   ix5 : shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(4), \out\=>nx14);
   ix6 : shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(3), \out\=>nx15);
   ix7 : shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(2), \out\=>nx16);
   ix8 : shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx17);
   ix9 : shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx18);
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
   ix10 : shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx5);
   ix11 : shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx6);
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
   ix12 : shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx4);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity flow is 
   port (
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_6 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_7 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_8 : OUT std_logic_vector (7 DOWNTO 0) ;
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

architecture main_unfold_1331 of flow is 
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
   signal o_dir_EXMPLR342: std_logic_vector (0 DOWNTO 0) ;
   
   signal p40: std_logic ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal PWR, not_i_reset: std_logic ;
   
   signal DANGLING : std_logic_vector (13 downto 0 );

begin
   debug_valid <= o_dir_EXMPLR342(0) ;
   debug_num_0(7) <= o_dir_EXMPLR342(0) ;
   debug_num_0(6) <= o_dir_EXMPLR342(0) ;
   debug_num_0(5) <= o_dir_EXMPLR342(0) ;
   debug_num_0(4) <= o_dir_EXMPLR342(0) ;
   debug_num_0(3) <= o_dir_EXMPLR342(0) ;
   debug_num_0(2) <= o_dir_EXMPLR342(0) ;
   debug_num_0(1) <= o_dir_EXMPLR342(0) ;
   debug_num_0(0) <= o_dir_EXMPLR342(0) ;
   debug_num_1(7) <= o_dir_EXMPLR342(0) ;
   debug_num_1(6) <= o_dir_EXMPLR342(0) ;
   debug_num_1(5) <= o_dir_EXMPLR342(0) ;
   debug_num_1(4) <= o_dir_EXMPLR342(0) ;
   debug_num_1(3) <= o_dir_EXMPLR342(0) ;
   debug_num_1(2) <= o_dir_EXMPLR342(0) ;
   debug_num_1(1) <= o_dir_EXMPLR342(0) ;
   debug_num_1(0) <= o_dir_EXMPLR342(0) ;
   debug_num_2(7) <= o_dir_EXMPLR342(0) ;
   debug_num_2(6) <= o_dir_EXMPLR342(0) ;
   debug_num_2(5) <= o_dir_EXMPLR342(0) ;
   debug_num_2(4) <= o_dir_EXMPLR342(0) ;
   debug_num_2(3) <= o_dir_EXMPLR342(0) ;
   debug_num_2(2) <= o_dir_EXMPLR342(0) ;
   debug_num_2(1) <= o_dir_EXMPLR342(0) ;
   debug_num_2(0) <= o_dir_EXMPLR342(0) ;
   debug_num_3(7) <= o_dir_EXMPLR342(0) ;
   debug_num_3(6) <= o_dir_EXMPLR342(0) ;
   debug_num_3(5) <= o_dir_EXMPLR342(0) ;
   debug_num_3(4) <= o_dir_EXMPLR342(0) ;
   debug_num_3(3) <= o_dir_EXMPLR342(0) ;
   debug_num_3(2) <= o_dir_EXMPLR342(0) ;
   debug_num_3(1) <= o_dir_EXMPLR342(0) ;
   debug_num_3(0) <= o_dir_EXMPLR342(0) ;
   debug_num_4(7) <= o_dir_EXMPLR342(0) ;
   debug_num_4(6) <= o_dir_EXMPLR342(0) ;
   debug_num_4(5) <= o_dir_EXMPLR342(0) ;
   debug_num_4(4) <= o_dir_EXMPLR342(0) ;
   debug_num_4(3) <= o_dir_EXMPLR342(0) ;
   debug_num_4(2) <= o_dir_EXMPLR342(0) ;
   debug_num_4(1) <= o_dir_EXMPLR342(0) ;
   debug_num_4(0) <= o_dir_EXMPLR342(0) ;
   debug_num_5(7) <= o_dir_EXMPLR342(0) ;
   debug_num_5(6) <= o_dir_EXMPLR342(0) ;
   debug_num_5(5) <= o_dir_EXMPLR342(0) ;
   debug_num_5(4) <= o_dir_EXMPLR342(0) ;
   debug_num_5(3) <= o_dir_EXMPLR342(0) ;
   debug_num_5(2) <= o_dir_EXMPLR342(0) ;
   debug_num_5(1) <= o_dir_EXMPLR342(0) ;
   debug_num_5(0) <= o_dir_EXMPLR342(0) ;
   debug_num_6(7) <= o_dir_EXMPLR342(0) ;
   debug_num_6(6) <= o_dir_EXMPLR342(0) ;
   debug_num_6(5) <= o_dir_EXMPLR342(0) ;
   debug_num_6(4) <= o_dir_EXMPLR342(0) ;
   debug_num_6(3) <= o_dir_EXMPLR342(0) ;
   debug_num_6(2) <= o_dir_EXMPLR342(0) ;
   debug_num_6(1) <= o_dir_EXMPLR342(0) ;
   debug_num_6(0) <= o_dir_EXMPLR342(0) ;
   debug_num_7(7) <= o_dir_EXMPLR342(0) ;
   debug_num_7(6) <= o_dir_EXMPLR342(0) ;
   debug_num_7(5) <= o_dir_EXMPLR342(0) ;
   debug_num_7(4) <= o_dir_EXMPLR342(0) ;
   debug_num_7(3) <= o_dir_EXMPLR342(0) ;
   debug_num_7(2) <= o_dir_EXMPLR342(0) ;
   debug_num_7(1) <= o_dir_EXMPLR342(0) ;
   debug_num_7(0) <= o_dir_EXMPLR342(0) ;
   debug_num_8(7) <= o_dir_EXMPLR342(0) ;
   debug_num_8(6) <= o_dir_EXMPLR342(0) ;
   debug_num_8(5) <= o_dir_EXMPLR342(0) ;
   debug_num_8(4) <= o_dir_EXMPLR342(0) ;
   debug_num_8(3) <= o_dir_EXMPLR342(0) ;
   debug_num_8(2) <= o_dir_EXMPLR342(0) ;
   debug_num_8(1) <= o_dir_EXMPLR342(0) ;
   debug_num_8(0) <= o_dir_EXMPLR342(0) ;
   o_dir(2) <= o_dir_EXMPLR342(0) ;
   o_dir(1) <= o_dir_EXMPLR342(0) ;
   o_dir(0) <= o_dir_EXMPLR342(0) ;
   o_edge <= o_dir_EXMPLR342(0) ;
   o_dir_EXMPLR342(0) <= '0' ;
   PWR <= '1' ;
   not_i_reset <= NOT i_reset ;
   o_mode(0) <= p5m(0) OR i_reset ;
   o_mode(1) <= p5m(1) AND not_i_reset ;
   DFFRSE (state(2),o_dir_EXMPLR342(0),i_reset,p40,i_clock,state(3)) ;
   DFFRSE (state(1),o_dir_EXMPLR342(0),i_reset,p40,i_clock,state(2)) ;
   DFFRSE (state(0),o_dir_EXMPLR342(0),i_reset,p40,i_clock,state(1)) ;
   DFFRSE (state(3),i_reset,o_dir_EXMPLR342(0),p40,i_clock,state(0)) ;
   DFFRSE (state(3),o_dir_EXMPLR342(0),i_reset,PWR,i_clock,o_valid) ;
   ix13 : shiftregister_with_taps_8_4_1 port map ( \in\(7)=>i_row(7), 
      \in\(6)=>i_row(6), \in\(5)=>i_row(5), \in\(4)=>i_row(4), \in\(3)=>
      i_row(3), \in\(2)=>i_row(2), \in\(1)=>i_row(1), \in\(0)=>i_row(0), 
      \out\(7)=>o_row(7), \out\(6)=>o_row(6), \out\(5)=>o_row(5), \out\(4)=>
      o_row(4), \out\(3)=>o_row(3), \out\(2)=>o_row(2), \out\(1)=>o_row(1), 
      \out\(0)=>o_row(0), tap_out(7)=>DANGLING(0), tap_out(6)=>DANGLING(1), 
      tap_out(5)=>DANGLING(2), tap_out(4)=>DANGLING(3), tap_out(3)=>DANGLING
      (4), tap_out(2)=>DANGLING(5), tap_out(1)=>DANGLING(6), tap_out(0)=>
      DANGLING(7), clk=>i_clock, clken=>DANGLING(8), reset=>
      o_dir_EXMPLR342(0), set=>o_dir_EXMPLR342(0));
   ix14 : shiftregister_with_taps_2_4_1 port map ( \in\(1)=>i_mode(1), 
      \in\(0)=>i_mode(0), \out\(1)=>p5m(1), \out\(0)=>p5m(0), tap_out(1)=>
      DANGLING(9), tap_out(0)=>DANGLING(10), clk=>i_clock, clken=>DANGLING(
      11), reset=>o_dir_EXMPLR342(0), set=>o_dir_EXMPLR342(0));
   ix15 : shiftregister_with_taps_1_3_1 port map ( \in\(0)=>i_valid, 
      \out\(0)=>p40, tap_out(0)=>DANGLING(12), clk=>i_clock, clken=>DANGLING
      (13), reset=>o_dir_EXMPLR342(0), set=>o_dir_EXMPLR342(0));
end main_unfold_1331 ;

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
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_6 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_7 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_num_8 : OUT std_logic_vector (7 DOWNTO 0)) ;
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
         debug_valid : OUT std_logic ;
         debug_num_0 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_1 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_2 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_3 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_4 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_5 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_6 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_7 : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_num_8 : OUT std_logic_vector (7 DOWNTO 0) ;
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
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   signal o_mode_1_EXMPLR355, debug_valid_EXMPLR365: std_logic ;
   
   signal debug_num_0_EXMPLR514: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR515: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR516: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR517: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR518: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR519: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR520: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_7_EXMPLR521: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal m_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal m_o_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_valid: std_logic ;
   
   signal f_t1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_i_mode_next: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_17_EXMPLR438, not_rtlcs0, rtlc12n25, rtlc13n187, 
      rtlc13n197, rtlcs0, rtlcs1, rtlcs2, not_f_state_3, not_f_state_2, 
      not_f_state_1: std_logic ;
   
   signal o_image0_0_EXMPLR523: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR524: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR525: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR526: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR528: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR529: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR530: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR531: std_logic_vector (7 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (84 downto 0 );

begin
   o_edge <= debug_led_red_17_EXMPLR438 ;
   o_dir(2) <= debug_led_red_17_EXMPLR438 ;
   o_dir(1) <= debug_led_red_17_EXMPLR438 ;
   o_dir(0) <= debug_led_red_17_EXMPLR438 ;
   o_mode(1) <= o_mode_1_EXMPLR355 ;
   o_image0_0(7) <= o_image0_0_EXMPLR523(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR523(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR523(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR523(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR523(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR523(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR523(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR523(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR524(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR524(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR524(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR524(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR524(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR524(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR524(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR524(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR525(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR525(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR525(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR525(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR525(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR525(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR525(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR525(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR526(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR526(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR526(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR526(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR526(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR526(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR526(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR526(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR528(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR528(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR528(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR528(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR528(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR528(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR528(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR528(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR529(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR529(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR529(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR529(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR529(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR529(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR529(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR529(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR530(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR530(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR530(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR530(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR530(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR530(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR530(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR530(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR531(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR531(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR531(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR531(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR531(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR531(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR531(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR531(0) ;
   debug_led_red(17) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(16) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(15) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(14) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(13) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(12) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(11) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(10) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(9) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(8) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(7) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(6) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(5) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(4) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(3) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(2) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(1) <= debug_led_red_17_EXMPLR438 ;
   debug_led_red(0) <= debug_led_red_17_EXMPLR438 ;
   debug_led_grn(5) <= debug_led_red_17_EXMPLR438 ;
   debug_led_grn(4) <= debug_led_red_17_EXMPLR438 ;
   debug_led_grn(3) <= debug_led_red_17_EXMPLR438 ;
   debug_led_grn(2) <= debug_led_red_17_EXMPLR438 ;
   debug_led_grn(1) <= debug_led_red_17_EXMPLR438 ;
   debug_led_grn(0) <= debug_led_red_17_EXMPLR438 ;
   debug_valid <= debug_valid_EXMPLR365 ;
   debug_num_0(7) <= debug_num_0_EXMPLR514(7) ;
   debug_num_0(6) <= debug_num_0_EXMPLR514(6) ;
   debug_num_0(5) <= debug_num_0_EXMPLR514(5) ;
   debug_num_0(4) <= debug_num_0_EXMPLR514(4) ;
   debug_num_0(3) <= debug_num_0_EXMPLR514(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR514(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR514(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR514(0) ;
   debug_num_1(7) <= debug_num_1_EXMPLR515(7) ;
   debug_num_1(6) <= debug_num_1_EXMPLR515(6) ;
   debug_num_1(5) <= debug_num_1_EXMPLR515(5) ;
   debug_num_1(4) <= debug_num_1_EXMPLR515(4) ;
   debug_num_1(3) <= debug_num_1_EXMPLR515(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR515(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR515(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR515(0) ;
   debug_num_2(7) <= debug_num_2_EXMPLR516(7) ;
   debug_num_2(6) <= debug_num_2_EXMPLR516(6) ;
   debug_num_2(5) <= debug_num_2_EXMPLR516(5) ;
   debug_num_2(4) <= debug_num_2_EXMPLR516(4) ;
   debug_num_2(3) <= debug_num_2_EXMPLR516(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR516(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR516(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR516(0) ;
   debug_num_3(7) <= debug_num_3_EXMPLR517(7) ;
   debug_num_3(6) <= debug_num_3_EXMPLR517(6) ;
   debug_num_3(5) <= debug_num_3_EXMPLR517(5) ;
   debug_num_3(4) <= debug_num_3_EXMPLR517(4) ;
   debug_num_3(3) <= debug_num_3_EXMPLR517(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR517(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR517(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR517(0) ;
   debug_num_4(7) <= debug_num_4_EXMPLR518(7) ;
   debug_num_4(6) <= debug_num_4_EXMPLR518(6) ;
   debug_num_4(5) <= debug_num_4_EXMPLR518(5) ;
   debug_num_4(4) <= debug_num_4_EXMPLR518(4) ;
   debug_num_4(3) <= debug_num_4_EXMPLR518(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR518(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR518(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR518(0) ;
   debug_num_5(7) <= debug_num_5_EXMPLR519(7) ;
   debug_num_5(6) <= debug_num_5_EXMPLR519(6) ;
   debug_num_5(5) <= debug_num_5_EXMPLR519(5) ;
   debug_num_5(4) <= debug_num_5_EXMPLR519(4) ;
   debug_num_5(3) <= debug_num_5_EXMPLR519(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR519(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR519(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR519(0) ;
   debug_num_6(7) <= debug_num_6_EXMPLR520(7) ;
   debug_num_6(6) <= debug_num_6_EXMPLR520(6) ;
   debug_num_6(5) <= debug_num_6_EXMPLR520(5) ;
   debug_num_6(4) <= debug_num_6_EXMPLR520(4) ;
   debug_num_6(3) <= debug_num_6_EXMPLR520(3) ;
   debug_num_6(2) <= debug_num_6_EXMPLR520(2) ;
   debug_num_6(1) <= debug_num_6_EXMPLR520(1) ;
   debug_num_6(0) <= debug_num_6_EXMPLR520(0) ;
   debug_num_7(7) <= debug_num_7_EXMPLR521(7) ;
   debug_num_7(6) <= debug_num_7_EXMPLR521(6) ;
   debug_num_7(5) <= debug_num_7_EXMPLR521(5) ;
   debug_num_7(4) <= debug_num_7_EXMPLR521(4) ;
   debug_num_7(3) <= debug_num_7_EXMPLR521(3) ;
   debug_num_7(2) <= debug_num_7_EXMPLR521(2) ;
   debug_num_7(1) <= debug_num_7_EXMPLR521(1) ;
   debug_num_7(0) <= debug_num_7_EXMPLR521(0) ;
   debug_led_red_17_EXMPLR438 <= '0' ;
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
      =>o_image0_0_EXMPLR523(7), o_image0_0(6)=>o_image0_0_EXMPLR523(6), 
      o_image0_0(5)=>o_image0_0_EXMPLR523(5), o_image0_0(4)=>
      o_image0_0_EXMPLR523(4), o_image0_0(3)=>o_image0_0_EXMPLR523(3), 
      o_image0_0(2)=>o_image0_0_EXMPLR523(2), o_image0_0(1)=>
      o_image0_0_EXMPLR523(1), o_image0_0(0)=>o_image0_0_EXMPLR523(0), 
      o_image0_1(7)=>o_image0_1_EXMPLR524(7), o_image0_1(6)=>
      o_image0_1_EXMPLR524(6), o_image0_1(5)=>o_image0_1_EXMPLR524(5), 
      o_image0_1(4)=>o_image0_1_EXMPLR524(4), o_image0_1(3)=>
      o_image0_1_EXMPLR524(3), o_image0_1(2)=>o_image0_1_EXMPLR524(2), 
      o_image0_1(1)=>o_image0_1_EXMPLR524(1), o_image0_1(0)=>
      o_image0_1_EXMPLR524(0), o_image0_2(7)=>o_image0_2_EXMPLR525(7), 
      o_image0_2(6)=>o_image0_2_EXMPLR525(6), o_image0_2(5)=>
      o_image0_2_EXMPLR525(5), o_image0_2(4)=>o_image0_2_EXMPLR525(4), 
      o_image0_2(3)=>o_image0_2_EXMPLR525(3), o_image0_2(2)=>
      o_image0_2_EXMPLR525(2), o_image0_2(1)=>o_image0_2_EXMPLR525(1), 
      o_image0_2(0)=>o_image0_2_EXMPLR525(0), o_image1_0(7)=>
      o_image1_0_EXMPLR526(7), o_image1_0(6)=>o_image1_0_EXMPLR526(6), 
      o_image1_0(5)=>o_image1_0_EXMPLR526(5), o_image1_0(4)=>
      o_image1_0_EXMPLR526(4), o_image1_0(3)=>o_image1_0_EXMPLR526(3), 
      o_image1_0(2)=>o_image1_0_EXMPLR526(2), o_image1_0(1)=>
      o_image1_0_EXMPLR526(1), o_image1_0(0)=>o_image1_0_EXMPLR526(0), 
      o_image1_1(7)=>o_image1_1(7), o_image1_1(6)=>o_image1_1(6), 
      o_image1_1(5)=>o_image1_1(5), o_image1_1(4)=>o_image1_1(4), 
      o_image1_1(3)=>o_image1_1(3), o_image1_1(2)=>o_image1_1(2), 
      o_image1_1(1)=>o_image1_1(1), o_image1_1(0)=>o_image1_1(0), 
      o_image1_2(7)=>o_image1_2_EXMPLR528(7), o_image1_2(6)=>
      o_image1_2_EXMPLR528(6), o_image1_2(5)=>o_image1_2_EXMPLR528(5), 
      o_image1_2(4)=>o_image1_2_EXMPLR528(4), o_image1_2(3)=>
      o_image1_2_EXMPLR528(3), o_image1_2(2)=>o_image1_2_EXMPLR528(2), 
      o_image1_2(1)=>o_image1_2_EXMPLR528(1), o_image1_2(0)=>
      o_image1_2_EXMPLR528(0), o_image2_0(7)=>o_image2_0_EXMPLR529(7), 
      o_image2_0(6)=>o_image2_0_EXMPLR529(6), o_image2_0(5)=>
      o_image2_0_EXMPLR529(5), o_image2_0(4)=>o_image2_0_EXMPLR529(4), 
      o_image2_0(3)=>o_image2_0_EXMPLR529(3), o_image2_0(2)=>
      o_image2_0_EXMPLR529(2), o_image2_0(1)=>o_image2_0_EXMPLR529(1), 
      o_image2_0(0)=>o_image2_0_EXMPLR529(0), o_image2_1(7)=>
      o_image2_1_EXMPLR530(7), o_image2_1(6)=>o_image2_1_EXMPLR530(6), 
      o_image2_1(5)=>o_image2_1_EXMPLR530(5), o_image2_1(4)=>
      o_image2_1_EXMPLR530(4), o_image2_1(3)=>o_image2_1_EXMPLR530(3), 
      o_image2_1(2)=>o_image2_1_EXMPLR530(2), o_image2_1(1)=>
      o_image2_1_EXMPLR530(1), o_image2_1(0)=>o_image2_1_EXMPLR530(0), 
      o_image2_2(7)=>o_image2_2_EXMPLR531(7), o_image2_2(6)=>
      o_image2_2_EXMPLR531(6), o_image2_2(5)=>o_image2_2_EXMPLR531(5), 
      o_image2_2(4)=>o_image2_2_EXMPLR531(4), o_image2_2(3)=>
      o_image2_2_EXMPLR531(3), o_image2_2(2)=>o_image2_2_EXMPLR531(2), 
      o_image2_2(1)=>o_image2_2_EXMPLR531(1), o_image2_2(0)=>
      o_image2_2_EXMPLR531(0));
   u_flow : flow port map ( debug_valid=>DANGLING(8), debug_num_0(7)=>
      DANGLING(9), debug_num_0(6)=>DANGLING(10), debug_num_0(5)=>DANGLING(11
      ), debug_num_0(4)=>DANGLING(12), debug_num_0(3)=>DANGLING(13), 
      debug_num_0(2)=>DANGLING(14), debug_num_0(1)=>DANGLING(15), 
      debug_num_0(0)=>DANGLING(16), debug_num_1(7)=>DANGLING(17), 
      debug_num_1(6)=>DANGLING(18), debug_num_1(5)=>DANGLING(19), 
      debug_num_1(4)=>DANGLING(20), debug_num_1(3)=>DANGLING(21), 
      debug_num_1(2)=>DANGLING(22), debug_num_1(1)=>DANGLING(23), 
      debug_num_1(0)=>DANGLING(24), debug_num_2(7)=>DANGLING(25), 
      debug_num_2(6)=>DANGLING(26), debug_num_2(5)=>DANGLING(27), 
      debug_num_2(4)=>DANGLING(28), debug_num_2(3)=>DANGLING(29), 
      debug_num_2(2)=>DANGLING(30), debug_num_2(1)=>DANGLING(31), 
      debug_num_2(0)=>DANGLING(32), debug_num_3(7)=>DANGLING(33), 
      debug_num_3(6)=>DANGLING(34), debug_num_3(5)=>DANGLING(35), 
      debug_num_3(4)=>DANGLING(36), debug_num_3(3)=>DANGLING(37), 
      debug_num_3(2)=>DANGLING(38), debug_num_3(1)=>DANGLING(39), 
      debug_num_3(0)=>DANGLING(40), debug_num_4(7)=>DANGLING(41), 
      debug_num_4(6)=>DANGLING(42), debug_num_4(5)=>DANGLING(43), 
      debug_num_4(4)=>DANGLING(44), debug_num_4(3)=>DANGLING(45), 
      debug_num_4(2)=>DANGLING(46), debug_num_4(1)=>DANGLING(47), 
      debug_num_4(0)=>DANGLING(48), debug_num_5(7)=>DANGLING(49), 
      debug_num_5(6)=>DANGLING(50), debug_num_5(5)=>DANGLING(51), 
      debug_num_5(4)=>DANGLING(52), debug_num_5(3)=>DANGLING(53), 
      debug_num_5(2)=>DANGLING(54), debug_num_5(1)=>DANGLING(55), 
      debug_num_5(0)=>DANGLING(56), debug_num_6(7)=>DANGLING(57), 
      debug_num_6(6)=>DANGLING(58), debug_num_6(5)=>DANGLING(59), 
      debug_num_6(4)=>DANGLING(60), debug_num_6(3)=>DANGLING(61), 
      debug_num_6(2)=>DANGLING(62), debug_num_6(1)=>DANGLING(63), 
      debug_num_6(0)=>DANGLING(64), debug_num_7(7)=>DANGLING(65), 
      debug_num_7(6)=>DANGLING(66), debug_num_7(5)=>DANGLING(67), 
      debug_num_7(4)=>DANGLING(68), debug_num_7(3)=>DANGLING(69), 
      debug_num_7(2)=>DANGLING(70), debug_num_7(1)=>DANGLING(71), 
      debug_num_7(0)=>DANGLING(72), debug_num_8(7)=>DANGLING(73), 
      debug_num_8(6)=>DANGLING(74), debug_num_8(5)=>DANGLING(75), 
      debug_num_8(4)=>DANGLING(76), debug_num_8(3)=>DANGLING(77), 
      debug_num_8(2)=>DANGLING(78), debug_num_8(1)=>DANGLING(79), 
      debug_num_8(0)=>DANGLING(80), t1(7)=>debug_led_red_17_EXMPLR438, t1(6)
      =>debug_led_red_17_EXMPLR438, t1(5)=>debug_led_red_17_EXMPLR438, t1(4)
      =>debug_led_red_17_EXMPLR438, t1(3)=>debug_led_red_17_EXMPLR438, t1(2)
      =>debug_led_red_17_EXMPLR438, t1(1)=>debug_led_red_17_EXMPLR438, t1(0)
      =>debug_led_red_17_EXMPLR438, t2(7)=>debug_led_red_17_EXMPLR438, t2(6)
      =>debug_led_red_17_EXMPLR438, t2(5)=>debug_led_red_17_EXMPLR438, t2(4)
      =>debug_led_red_17_EXMPLR438, t2(3)=>debug_led_red_17_EXMPLR438, t2(2)
      =>debug_led_red_17_EXMPLR438, t2(1)=>debug_led_red_17_EXMPLR438, t2(0)
      =>debug_led_red_17_EXMPLR438, t3(7)=>debug_led_red_17_EXMPLR438, t3(6)
      =>debug_led_red_17_EXMPLR438, t3(5)=>debug_led_red_17_EXMPLR438, t3(4)
      =>debug_led_red_17_EXMPLR438, t3(3)=>debug_led_red_17_EXMPLR438, t3(2)
      =>debug_led_red_17_EXMPLR438, t3(1)=>debug_led_red_17_EXMPLR438, t3(0)
      =>debug_led_red_17_EXMPLR438, b1(7)=>debug_led_red_17_EXMPLR438, b1(6)
      =>debug_led_red_17_EXMPLR438, b1(5)=>debug_led_red_17_EXMPLR438, b1(4)
      =>debug_led_red_17_EXMPLR438, b1(3)=>debug_led_red_17_EXMPLR438, b1(2)
      =>debug_led_red_17_EXMPLR438, b1(1)=>debug_led_red_17_EXMPLR438, b1(0)
      =>debug_led_red_17_EXMPLR438, b2(7)=>debug_led_red_17_EXMPLR438, b2(6)
      =>debug_led_red_17_EXMPLR438, b2(5)=>debug_led_red_17_EXMPLR438, b2(4)
      =>debug_led_red_17_EXMPLR438, b2(3)=>debug_led_red_17_EXMPLR438, b2(2)
      =>debug_led_red_17_EXMPLR438, b2(1)=>debug_led_red_17_EXMPLR438, b2(0)
      =>debug_led_red_17_EXMPLR438, b3(7)=>debug_led_red_17_EXMPLR438, b3(6)
      =>debug_led_red_17_EXMPLR438, b3(5)=>debug_led_red_17_EXMPLR438, b3(4)
      =>debug_led_red_17_EXMPLR438, b3(3)=>debug_led_red_17_EXMPLR438, b3(2)
      =>debug_led_red_17_EXMPLR438, b3(1)=>debug_led_red_17_EXMPLR438, b3(0)
      =>debug_led_red_17_EXMPLR438, i1(7)=>debug_led_red_17_EXMPLR438, i1(6)
      =>debug_led_red_17_EXMPLR438, i1(5)=>debug_led_red_17_EXMPLR438, i1(4)
      =>debug_led_red_17_EXMPLR438, i1(3)=>debug_led_red_17_EXMPLR438, i1(2)
      =>debug_led_red_17_EXMPLR438, i1(1)=>debug_led_red_17_EXMPLR438, i1(0)
      =>debug_led_red_17_EXMPLR438, i2(7)=>debug_led_red_17_EXMPLR438, i2(6)
      =>debug_led_red_17_EXMPLR438, i2(5)=>debug_led_red_17_EXMPLR438, i2(4)
      =>debug_led_red_17_EXMPLR438, i2(3)=>debug_led_red_17_EXMPLR438, i2(2)
      =>debug_led_red_17_EXMPLR438, i2(1)=>debug_led_red_17_EXMPLR438, i2(0)
      =>debug_led_red_17_EXMPLR438, i_clock=>i_clock, i_reset=>i_reset, 
      i_valid=>debug_valid_EXMPLR365, i_mode(1)=>f_i_mode(1), i_mode(0)=>
      f_i_mode(0), i_row(7)=>f_i_row(7), i_row(6)=>f_i_row(6), i_row(5)=>
      f_i_row(5), i_row(4)=>f_i_row(4), i_row(3)=>f_i_row(3), i_row(2)=>
      f_i_row(2), i_row(1)=>f_i_row(1), i_row(0)=>f_i_row(0), o_dir(2)=>
      DANGLING(81), o_dir(1)=>DANGLING(82), o_dir(0)=>DANGLING(83), o_edge=>
      DANGLING(84), o_valid=>o_valid, o_mode(1)=>f_o_mode(1), o_mode(0)=>
      f_o_mode(0), o_row(7)=>o_row(7), o_row(6)=>o_row(6), o_row(5)=>
      o_row(5), o_row(4)=>o_row(4), o_row(3)=>o_row(3), o_row(2)=>o_row(2), 
      o_row(1)=>o_row(1), o_row(0)=>o_row(0));
   debug_valid_EXMPLR365 <= m_o_valid OR not_rtlcs0 ;
   o_mode(0) <= i_reset OR rtlc12n25 ;
   rtlc12n25 <= rtlcs2 OR rtlcs1 ;
   o_mode_1_EXMPLR355 <= NOT i_reset ;
   debug_num_0_EXMPLR514(0) <= o_image0_2_EXMPLR525(0) when rtlcs0
    = '1' else f_t1_next(0) ;
   debug_num_0_EXMPLR514(1) <= o_image0_2_EXMPLR525(1) when rtlcs0
    = '1' else f_t1_next(1) ;
   debug_num_0_EXMPLR514(2) <= o_image0_2_EXMPLR525(2) when rtlcs0
    = '1' else f_t1_next(2) ;
   debug_num_0_EXMPLR514(3) <= o_image0_2_EXMPLR525(3) when rtlcs0
    = '1' else f_t1_next(3) ;
   debug_num_0_EXMPLR514(4) <= o_image0_2_EXMPLR525(4) when rtlcs0
    = '1' else f_t1_next(4) ;
   debug_num_0_EXMPLR514(5) <= o_image0_2_EXMPLR525(5) when rtlcs0
    = '1' else f_t1_next(5) ;
   debug_num_0_EXMPLR514(6) <= o_image0_2_EXMPLR525(6) when rtlcs0
    = '1' else f_t1_next(6) ;
   debug_num_0_EXMPLR514(7) <= o_image0_2_EXMPLR525(7) when rtlcs0
    = '1' else f_t1_next(7) ;
   debug_num_1_EXMPLR515(0) <= o_image0_1_EXMPLR524(0) when rtlcs0
    = '1' else f_t2_next(0) ;
   debug_num_1_EXMPLR515(1) <= o_image0_1_EXMPLR524(1) when rtlcs0
    = '1' else f_t2_next(1) ;
   debug_num_1_EXMPLR515(2) <= o_image0_1_EXMPLR524(2) when rtlcs0
    = '1' else f_t2_next(2) ;
   debug_num_1_EXMPLR515(3) <= o_image0_1_EXMPLR524(3) when rtlcs0
    = '1' else f_t2_next(3) ;
   debug_num_1_EXMPLR515(4) <= o_image0_1_EXMPLR524(4) when rtlcs0
    = '1' else f_t2_next(4) ;
   debug_num_1_EXMPLR515(5) <= o_image0_1_EXMPLR524(5) when rtlcs0
    = '1' else f_t2_next(5) ;
   debug_num_1_EXMPLR515(6) <= o_image0_1_EXMPLR524(6) when rtlcs0
    = '1' else f_t2_next(6) ;
   debug_num_1_EXMPLR515(7) <= o_image0_1_EXMPLR524(7) when rtlcs0
    = '1' else f_t2_next(7) ;
   debug_num_2_EXMPLR516(0) <= o_image0_0_EXMPLR523(0) when rtlcs0
    = '1' else f_t3_next(0) ;
   debug_num_2_EXMPLR516(1) <= o_image0_0_EXMPLR523(1) when rtlcs0
    = '1' else f_t3_next(1) ;
   debug_num_2_EXMPLR516(2) <= o_image0_0_EXMPLR523(2) when rtlcs0
    = '1' else f_t3_next(2) ;
   debug_num_2_EXMPLR516(3) <= o_image0_0_EXMPLR523(3) when rtlcs0
    = '1' else f_t3_next(3) ;
   debug_num_2_EXMPLR516(4) <= o_image0_0_EXMPLR523(4) when rtlcs0
    = '1' else f_t3_next(4) ;
   debug_num_2_EXMPLR516(5) <= o_image0_0_EXMPLR523(5) when rtlcs0
    = '1' else f_t3_next(5) ;
   debug_num_2_EXMPLR516(6) <= o_image0_0_EXMPLR523(6) when rtlcs0
    = '1' else f_t3_next(6) ;
   debug_num_2_EXMPLR516(7) <= o_image0_0_EXMPLR523(7) when rtlcs0
    = '1' else f_t3_next(7) ;
   debug_num_3_EXMPLR517(0) <= o_image2_0_EXMPLR529(0) when rtlcs0
    = '1' else f_b1_next(0) ;
   debug_num_3_EXMPLR517(1) <= o_image2_0_EXMPLR529(1) when rtlcs0
    = '1' else f_b1_next(1) ;
   debug_num_3_EXMPLR517(2) <= o_image2_0_EXMPLR529(2) when rtlcs0
    = '1' else f_b1_next(2) ;
   debug_num_3_EXMPLR517(3) <= o_image2_0_EXMPLR529(3) when rtlcs0
    = '1' else f_b1_next(3) ;
   debug_num_3_EXMPLR517(4) <= o_image2_0_EXMPLR529(4) when rtlcs0
    = '1' else f_b1_next(4) ;
   debug_num_3_EXMPLR517(5) <= o_image2_0_EXMPLR529(5) when rtlcs0
    = '1' else f_b1_next(5) ;
   debug_num_3_EXMPLR517(6) <= o_image2_0_EXMPLR529(6) when rtlcs0
    = '1' else f_b1_next(6) ;
   debug_num_3_EXMPLR517(7) <= o_image2_0_EXMPLR529(7) when rtlcs0
    = '1' else f_b1_next(7) ;
   debug_num_4_EXMPLR518(0) <= o_image2_1_EXMPLR530(0) when rtlcs0
    = '1' else f_b2_next(0) ;
   debug_num_4_EXMPLR518(1) <= o_image2_1_EXMPLR530(1) when rtlcs0
    = '1' else f_b2_next(1) ;
   debug_num_4_EXMPLR518(2) <= o_image2_1_EXMPLR530(2) when rtlcs0
    = '1' else f_b2_next(2) ;
   debug_num_4_EXMPLR518(3) <= o_image2_1_EXMPLR530(3) when rtlcs0
    = '1' else f_b2_next(3) ;
   debug_num_4_EXMPLR518(4) <= o_image2_1_EXMPLR530(4) when rtlcs0
    = '1' else f_b2_next(4) ;
   debug_num_4_EXMPLR518(5) <= o_image2_1_EXMPLR530(5) when rtlcs0
    = '1' else f_b2_next(5) ;
   debug_num_4_EXMPLR518(6) <= o_image2_1_EXMPLR530(6) when rtlcs0
    = '1' else f_b2_next(6) ;
   debug_num_4_EXMPLR518(7) <= o_image2_1_EXMPLR530(7) when rtlcs0
    = '1' else f_b2_next(7) ;
   debug_num_5_EXMPLR519(0) <= o_image2_2_EXMPLR531(0) when rtlcs0
    = '1' else f_b3_next(0) ;
   debug_num_5_EXMPLR519(1) <= o_image2_2_EXMPLR531(1) when rtlcs0
    = '1' else f_b3_next(1) ;
   debug_num_5_EXMPLR519(2) <= o_image2_2_EXMPLR531(2) when rtlcs0
    = '1' else f_b3_next(2) ;
   debug_num_5_EXMPLR519(3) <= o_image2_2_EXMPLR531(3) when rtlcs0
    = '1' else f_b3_next(3) ;
   debug_num_5_EXMPLR519(4) <= o_image2_2_EXMPLR531(4) when rtlcs0
    = '1' else f_b3_next(4) ;
   debug_num_5_EXMPLR519(5) <= o_image2_2_EXMPLR531(5) when rtlcs0
    = '1' else f_b3_next(5) ;
   debug_num_5_EXMPLR519(6) <= o_image2_2_EXMPLR531(6) when rtlcs0
    = '1' else f_b3_next(6) ;
   debug_num_5_EXMPLR519(7) <= o_image2_2_EXMPLR531(7) when rtlcs0
    = '1' else f_b3_next(7) ;
   debug_num_6_EXMPLR520(0) <= o_image1_0_EXMPLR526(0) when rtlcs0
    = '1' else f_i1_next(0) ;
   debug_num_6_EXMPLR520(1) <= o_image1_0_EXMPLR526(1) when rtlcs0
    = '1' else f_i1_next(1) ;
   debug_num_6_EXMPLR520(2) <= o_image1_0_EXMPLR526(2) when rtlcs0
    = '1' else f_i1_next(2) ;
   debug_num_6_EXMPLR520(3) <= o_image1_0_EXMPLR526(3) when rtlcs0
    = '1' else f_i1_next(3) ;
   debug_num_6_EXMPLR520(4) <= o_image1_0_EXMPLR526(4) when rtlcs0
    = '1' else f_i1_next(4) ;
   debug_num_6_EXMPLR520(5) <= o_image1_0_EXMPLR526(5) when rtlcs0
    = '1' else f_i1_next(5) ;
   debug_num_6_EXMPLR520(6) <= o_image1_0_EXMPLR526(6) when rtlcs0
    = '1' else f_i1_next(6) ;
   debug_num_6_EXMPLR520(7) <= o_image1_0_EXMPLR526(7) when rtlcs0
    = '1' else f_i1_next(7) ;
   debug_num_7_EXMPLR521(0) <= o_image1_2_EXMPLR528(0) when rtlcs0
    = '1' else f_i2_next(0) ;
   debug_num_7_EXMPLR521(1) <= o_image1_2_EXMPLR528(1) when rtlcs0
    = '1' else f_i2_next(1) ;
   debug_num_7_EXMPLR521(2) <= o_image1_2_EXMPLR528(2) when rtlcs0
    = '1' else f_i2_next(2) ;
   debug_num_7_EXMPLR521(3) <= o_image1_2_EXMPLR528(3) when rtlcs0
    = '1' else f_i2_next(3) ;
   debug_num_7_EXMPLR521(4) <= o_image1_2_EXMPLR528(4) when rtlcs0
    = '1' else f_i2_next(4) ;
   debug_num_7_EXMPLR521(5) <= o_image1_2_EXMPLR528(5) when rtlcs0
    = '1' else f_i2_next(5) ;
   debug_num_7_EXMPLR521(6) <= o_image1_2_EXMPLR528(6) when rtlcs0
    = '1' else f_i2_next(6) ;
   debug_num_7_EXMPLR521(7) <= o_image1_2_EXMPLR528(7) when rtlcs0
    = '1' else f_i2_next(7) ;
   f_i_mode(0) <= m_o_mode(0) when rtlcs0 = '1' else f_i_mode_next(0) ;
   f_i_mode(1) <= m_o_mode(1) when rtlcs0 = '1' else f_i_mode_next(1) ;
   f_i_row(0) <= m_o_row(0) when rtlcs0 = '1' else f_i_row_next(0) ;
   f_i_row(1) <= m_o_row(1) when rtlcs0 = '1' else f_i_row_next(1) ;
   f_i_row(2) <= m_o_row(2) when rtlcs0 = '1' else f_i_row_next(2) ;
   f_i_row(3) <= m_o_row(3) when rtlcs0 = '1' else f_i_row_next(3) ;
   f_i_row(4) <= m_o_row(4) when rtlcs0 = '1' else f_i_row_next(4) ;
   f_i_row(5) <= m_o_row(5) when rtlcs0 = '1' else f_i_row_next(5) ;
   f_i_row(6) <= m_o_row(6) when rtlcs0 = '1' else f_i_row_next(6) ;
   f_i_row(7) <= m_o_row(7) when rtlcs0 = '1' else f_i_row_next(7) ;
   rtlc_337_and_38 : and_3u_3u port map ( a(2)=>o_mode_1_EXMPLR355, a(1)=>
      rtlcs0, a(0)=>debug_valid_EXMPLR365, d=>rtlc13n197);
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc13n187 <= o_mode_1_EXMPLR355 AND debug_valid_EXMPLR365 ;
   not_f_state_3 <= NOT f_state(3) ;
   not_f_state_2 <= NOT f_state(2) ;
   not_f_state_1 <= NOT f_state(1) ;
   rtlc_344_and_39 : and_4u_4u port map ( a(3)=>not_f_state_3, a(2)=>
      not_f_state_2, a(1)=>not_f_state_1, a(0)=>f_state(0), d=>rtlcs0);
   rtlcs2 <= f_o_mode(1) AND f_o_mode(0) ;
   rtlcs1 <= m_o_mode(1) AND m_o_mode(0) ;
   debug_num_8(0) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(1) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(2) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(3) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(4) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(5) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(6) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   debug_num_8(7) <= debug_led_red_17_EXMPLR438 when 
   debug_led_red_17_EXMPLR438 = '1' else 'Z' ;
   DFFPCE (m_o_row(7),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(7)) ;
   DFFPCE (m_o_row(6),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(6)) ;
   DFFPCE (m_o_row(5),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(5)) ;
   DFFPCE (m_o_row(4),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(4)) ;
   DFFPCE (m_o_row(3),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(3)) ;
   DFFPCE (m_o_row(2),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(2)) ;
   DFFPCE (m_o_row(1),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(1)) ;
   DFFPCE (m_o_row(0),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_row_next(0)) ;
   DFFPCE (m_o_mode(1),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_mode_next(1)) ;
   DFFPCE (m_o_mode(0),debug_led_red_17_EXMPLR438,debug_led_red_17_EXMPLR438,
   rtlc13n197,i_clock,f_i_mode_next(0)) ;
   DFFPCE (debug_num_0_EXMPLR514(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(7)) ;
   DFFPCE (debug_num_0_EXMPLR514(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(6)) ;
   DFFPCE (debug_num_0_EXMPLR514(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(5)) ;
   DFFPCE (debug_num_0_EXMPLR514(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(4)) ;
   DFFPCE (debug_num_0_EXMPLR514(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(3)) ;
   DFFPCE (debug_num_0_EXMPLR514(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(2)) ;
   DFFPCE (debug_num_0_EXMPLR514(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(1)) ;
   DFFPCE (debug_num_0_EXMPLR514(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i2_next(0)) ;
   DFFPCE (debug_num_3_EXMPLR517(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(7)) ;
   DFFPCE (debug_num_3_EXMPLR517(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(6)) ;
   DFFPCE (debug_num_3_EXMPLR517(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(5)) ;
   DFFPCE (debug_num_3_EXMPLR517(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(4)) ;
   DFFPCE (debug_num_3_EXMPLR517(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(3)) ;
   DFFPCE (debug_num_3_EXMPLR517(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(2)) ;
   DFFPCE (debug_num_3_EXMPLR517(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(1)) ;
   DFFPCE (debug_num_3_EXMPLR517(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_i1_next(0)) ;
   DFFPCE (debug_num_7_EXMPLR521(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(7)) ;
   DFFPCE (debug_num_7_EXMPLR521(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(6)) ;
   DFFPCE (debug_num_7_EXMPLR521(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(5)) ;
   DFFPCE (debug_num_7_EXMPLR521(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(4)) ;
   DFFPCE (debug_num_7_EXMPLR521(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(3)) ;
   DFFPCE (debug_num_7_EXMPLR521(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(2)) ;
   DFFPCE (debug_num_7_EXMPLR521(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(1)) ;
   DFFPCE (debug_num_7_EXMPLR521(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b3_next(0)) ;
   DFFPCE (debug_num_5_EXMPLR519(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(7)) ;
   DFFPCE (debug_num_5_EXMPLR519(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(6)) ;
   DFFPCE (debug_num_5_EXMPLR519(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(5)) ;
   DFFPCE (debug_num_5_EXMPLR519(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(4)) ;
   DFFPCE (debug_num_5_EXMPLR519(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(3)) ;
   DFFPCE (debug_num_5_EXMPLR519(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(2)) ;
   DFFPCE (debug_num_5_EXMPLR519(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(1)) ;
   DFFPCE (debug_num_5_EXMPLR519(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b2_next(0)) ;
   DFFPCE (debug_num_4_EXMPLR518(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(7)) ;
   DFFPCE (debug_num_4_EXMPLR518(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(6)) ;
   DFFPCE (debug_num_4_EXMPLR518(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(5)) ;
   DFFPCE (debug_num_4_EXMPLR518(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(4)) ;
   DFFPCE (debug_num_4_EXMPLR518(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(3)) ;
   DFFPCE (debug_num_4_EXMPLR518(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(2)) ;
   DFFPCE (debug_num_4_EXMPLR518(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(1)) ;
   DFFPCE (debug_num_4_EXMPLR518(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_b1_next(0)) ;
   DFFPCE (debug_num_6_EXMPLR520(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(7)) ;
   DFFPCE (debug_num_6_EXMPLR520(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(6)) ;
   DFFPCE (debug_num_6_EXMPLR520(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(5)) ;
   DFFPCE (debug_num_6_EXMPLR520(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(4)) ;
   DFFPCE (debug_num_6_EXMPLR520(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(3)) ;
   DFFPCE (debug_num_6_EXMPLR520(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(2)) ;
   DFFPCE (debug_num_6_EXMPLR520(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(1)) ;
   DFFPCE (debug_num_6_EXMPLR520(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t3_next(0)) ;
   DFFPCE (debug_num_2_EXMPLR516(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(7)) ;
   DFFPCE (debug_num_2_EXMPLR516(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(6)) ;
   DFFPCE (debug_num_2_EXMPLR516(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(5)) ;
   DFFPCE (debug_num_2_EXMPLR516(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(4)) ;
   DFFPCE (debug_num_2_EXMPLR516(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(3)) ;
   DFFPCE (debug_num_2_EXMPLR516(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(2)) ;
   DFFPCE (debug_num_2_EXMPLR516(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(1)) ;
   DFFPCE (debug_num_2_EXMPLR516(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t2_next(0)) ;
   DFFPCE (debug_num_1_EXMPLR515(7),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(7)) ;
   DFFPCE (debug_num_1_EXMPLR515(6),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(6)) ;
   DFFPCE (debug_num_1_EXMPLR515(5),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(5)) ;
   DFFPCE (debug_num_1_EXMPLR515(4),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(4)) ;
   DFFPCE (debug_num_1_EXMPLR515(3),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(3)) ;
   DFFPCE (debug_num_1_EXMPLR515(2),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(2)) ;
   DFFPCE (debug_num_1_EXMPLR515(1),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(1)) ;
   DFFPCE (debug_num_1_EXMPLR515(0),debug_led_red_17_EXMPLR438,
   debug_led_red_17_EXMPLR438,rtlc13n187,i_clock,f_t1_next(0)) ;
   DFFRSE (f_state(2),debug_led_red_17_EXMPLR438,i_reset,
   debug_valid_EXMPLR365,i_clock,f_state(3)) ;
   DFFRSE (f_state(1),debug_led_red_17_EXMPLR438,i_reset,
   debug_valid_EXMPLR365,i_clock,f_state(2)) ;
   DFFRSE (f_state(0),debug_led_red_17_EXMPLR438,i_reset,
   debug_valid_EXMPLR365,i_clock,f_state(1)) ;
   DFFRSE (f_state(3),i_reset,debug_led_red_17_EXMPLR438,
   debug_valid_EXMPLR365,i_clock,f_state(0)) ;
end main ;

