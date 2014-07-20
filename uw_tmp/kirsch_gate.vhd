
-- 
-- Definition of  kirsch
-- 
--      Sun Jul 20 17:24:51 2014
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

architecture main of memory is 
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
   
   signal o_image1_0_EXMPLR316: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR317: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR318: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR319: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR320: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR321: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn234, not_rtlc3n309, rtlcn236, rtlcn238, rtlcn239, 
      not_rtlc3n308, rtlcn243, rtlcn244, not_rtlc6n55, rtlcn246: std_logic
    ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   o_valid <= o_valid_EXMPLR218 ;
   o_image1_0(7) <= o_image1_0_EXMPLR316(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR316(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR316(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR316(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR316(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR316(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR316(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR316(0) ;
   o_image1_1(7) <= o_image1_1_EXMPLR317(7) ;
   o_image1_1(6) <= o_image1_1_EXMPLR317(6) ;
   o_image1_1(5) <= o_image1_1_EXMPLR317(5) ;
   o_image1_1(4) <= o_image1_1_EXMPLR317(4) ;
   o_image1_1(3) <= o_image1_1_EXMPLR317(3) ;
   o_image1_1(2) <= o_image1_1_EXMPLR317(2) ;
   o_image1_1(1) <= o_image1_1_EXMPLR317(1) ;
   o_image1_1(0) <= o_image1_1_EXMPLR317(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR318(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR318(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR318(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR318(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR318(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR318(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR318(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR318(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR319(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR319(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR319(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR319(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR319(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR319(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR319(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR319(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR320(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR320(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR320(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR320(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR320(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR320(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR320(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR320(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR321(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR321(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR321(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR321(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR321(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR321(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR321(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR321(0) ;
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
   o_image2_2_EXMPLR321(7)) ;
   DFFPCE (buffer2_4n4ss1(22),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(6)) ;
   DFFPCE (buffer2_4n4ss1(21),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(5)) ;
   DFFPCE (buffer2_4n4ss1(20),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(4)) ;
   DFFPCE (buffer2_4n4ss1(19),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(3)) ;
   DFFPCE (buffer2_4n4ss1(18),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(2)) ;
   DFFPCE (buffer2_4n4ss1(17),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(1)) ;
   DFFPCE (buffer2_4n4ss1(16),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(0)) ;
   DFFPCE (buffer2_4n4ss1(15),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(7)) ;
   DFFPCE (buffer2_4n4ss1(14),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(6)) ;
   DFFPCE (buffer2_4n4ss1(13),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(5)) ;
   DFFPCE (buffer2_4n4ss1(12),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(4)) ;
   DFFPCE (buffer2_4n4ss1(11),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(3)) ;
   DFFPCE (buffer2_4n4ss1(10),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(2)) ;
   DFFPCE (buffer2_4n4ss1(9),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(1)) ;
   DFFPCE (buffer2_4n4ss1(8),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(0)) ;
   DFFPCE (buffer2_4n4ss1(7),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(7)) ;
   DFFPCE (buffer2_4n4ss1(6),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(6)) ;
   DFFPCE (buffer2_4n4ss1(5),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(5)) ;
   DFFPCE (buffer2_4n4ss1(4),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(4)) ;
   DFFPCE (buffer2_4n4ss1(3),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(3)) ;
   DFFPCE (buffer2_4n4ss1(2),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(2)) ;
   DFFPCE (buffer2_4n4ss1(1),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(1)) ;
   DFFPCE (buffer2_4n4ss1(0),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(0)) ;
   DFFPCE (o_image2_2_EXMPLR321(7),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(7)) ;
   DFFPCE (o_image2_2_EXMPLR321(6),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(6)) ;
   DFFPCE (o_image2_2_EXMPLR321(5),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(5)) ;
   DFFPCE (o_image2_2_EXMPLR321(4),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(4)) ;
   DFFPCE (o_image2_2_EXMPLR321(3),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(3)) ;
   DFFPCE (o_image2_2_EXMPLR321(2),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(2)) ;
   DFFPCE (o_image2_2_EXMPLR321(1),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(1)) ;
   DFFPCE (o_image2_2_EXMPLR321(0),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR318(0)) ;
   DFFPCE (o_image2_1_EXMPLR320(7),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(7)) ;
   DFFPCE (o_image2_1_EXMPLR320(6),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(6)) ;
   DFFPCE (o_image2_1_EXMPLR320(5),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(5)) ;
   DFFPCE (o_image2_1_EXMPLR320(4),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(4)) ;
   DFFPCE (o_image2_1_EXMPLR320(3),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(3)) ;
   DFFPCE (o_image2_1_EXMPLR320(2),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(2)) ;
   DFFPCE (o_image2_1_EXMPLR320(1),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(1)) ;
   DFFPCE (o_image2_1_EXMPLR320(0),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR317(0)) ;
   DFFPCE (o_image2_0_EXMPLR319(7),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(7)) ;
   DFFPCE (o_image2_0_EXMPLR319(6),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(6)) ;
   DFFPCE (o_image2_0_EXMPLR319(5),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(5)) ;
   DFFPCE (o_image2_0_EXMPLR319(4),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(4)) ;
   DFFPCE (o_image2_0_EXMPLR319(3),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(3)) ;
   DFFPCE (o_image2_0_EXMPLR319(2),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(2)) ;
   DFFPCE (o_image2_0_EXMPLR319(1),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(1)) ;
   DFFPCE (o_image2_0_EXMPLR319(0),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR316(0)) ;
   DFFPCE (o_image1_2_EXMPLR318(7),GND,GND,first_bubble,i_clock,
   o_image0_2(7)) ;
   DFFPCE (o_image1_2_EXMPLR318(6),GND,GND,first_bubble,i_clock,
   o_image0_2(6)) ;
   DFFPCE (o_image1_2_EXMPLR318(5),GND,GND,first_bubble,i_clock,
   o_image0_2(5)) ;
   DFFPCE (o_image1_2_EXMPLR318(4),GND,GND,first_bubble,i_clock,
   o_image0_2(4)) ;
   DFFPCE (o_image1_2_EXMPLR318(3),GND,GND,first_bubble,i_clock,
   o_image0_2(3)) ;
   DFFPCE (o_image1_2_EXMPLR318(2),GND,GND,first_bubble,i_clock,
   o_image0_2(2)) ;
   DFFPCE (o_image1_2_EXMPLR318(1),GND,GND,first_bubble,i_clock,
   o_image0_2(1)) ;
   DFFPCE (o_image1_2_EXMPLR318(0),GND,GND,first_bubble,i_clock,
   o_image0_2(0)) ;
   DFFPCE (o_image1_1_EXMPLR317(7),GND,GND,first_bubble,i_clock,
   o_image0_1(7)) ;
   DFFPCE (o_image1_1_EXMPLR317(6),GND,GND,first_bubble,i_clock,
   o_image0_1(6)) ;
   DFFPCE (o_image1_1_EXMPLR317(5),GND,GND,first_bubble,i_clock,
   o_image0_1(5)) ;
   DFFPCE (o_image1_1_EXMPLR317(4),GND,GND,first_bubble,i_clock,
   o_image0_1(4)) ;
   DFFPCE (o_image1_1_EXMPLR317(3),GND,GND,first_bubble,i_clock,
   o_image0_1(3)) ;
   DFFPCE (o_image1_1_EXMPLR317(2),GND,GND,first_bubble,i_clock,
   o_image0_1(2)) ;
   DFFPCE (o_image1_1_EXMPLR317(1),GND,GND,first_bubble,i_clock,
   o_image0_1(1)) ;
   DFFPCE (o_image1_1_EXMPLR317(0),GND,GND,first_bubble,i_clock,
   o_image0_1(0)) ;
   DFFPCE (o_image1_0_EXMPLR316(7),GND,GND,first_bubble,i_clock,
   o_image0_0(7)) ;
   DFFPCE (o_image1_0_EXMPLR316(6),GND,GND,first_bubble,i_clock,
   o_image0_0(6)) ;
   DFFPCE (o_image1_0_EXMPLR316(5),GND,GND,first_bubble,i_clock,
   o_image0_0(5)) ;
   DFFPCE (o_image1_0_EXMPLR316(4),GND,GND,first_bubble,i_clock,
   o_image0_0(4)) ;
   DFFPCE (o_image1_0_EXMPLR316(3),GND,GND,first_bubble,i_clock,
   o_image0_0(3)) ;
   DFFPCE (o_image1_0_EXMPLR316(2),GND,GND,first_bubble,i_clock,
   o_image0_0(2)) ;
   DFFPCE (o_image1_0_EXMPLR316(1),GND,GND,first_bubble,i_clock,
   o_image0_0(1)) ;
   DFFPCE (o_image1_0_EXMPLR316(0),GND,GND,first_bubble,i_clock,
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
   DFFPC (column(7),GND,GND,i_clock,o_column(7)) ;
   DFFPC (column(6),GND,GND,i_clock,o_column(6)) ;
   DFFPC (column(5),GND,GND,i_clock,o_column(5)) ;
   DFFPC (column(4),GND,GND,i_clock,o_column(4)) ;
   DFFPC (column(3),GND,GND,i_clock,o_column(3)) ;
   DFFPC (column(2),GND,GND,i_clock,o_column(2)) ;
   DFFPC (column(1),GND,GND,i_clock,o_column(1)) ;
   DFFPC (column(0),GND,GND,i_clock,o_column(0)) ;
   DFFRSE (rtlcn244,GND,GND,PWR,i_clock,busySignal) ;
   DFFPC (rtlcn239,GND,GND,i_clock,mem_wrn(0)) ;
   DFFRSE (rtlcn246,GND,GND,PWR,i_clock,o_valid_EXMPLR218) ;
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
      o_column : OUT std_logic_vector (7 DOWNTO 0) ;
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
   signal debug_num_5_1_EXMPLR356, debug_num_5_0_EXMPLR357: std_logic ;

begin
   debug_led_red(17) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR357 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR357 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR357 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR357 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR357 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR357 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR357 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR357 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR357 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR356 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR356 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR356 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR357 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR357 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR356 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR357 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR357 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR357 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR356 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR356 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR356 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR356 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR356 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR357 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR356 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR356 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR357 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR357 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR356 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR356 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR356 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR357 ;
   debug_num_5_1_EXMPLR356 <= '1' ;
   debug_num_5_0_EXMPLR357 <= '0' ;
   u_memory : memory port map ( i_valid=>i_valid, i_reset=>i_reset, 
      i_pixel(7)=>i_pixel(7), i_pixel(6)=>i_pixel(6), i_pixel(5)=>i_pixel(5), 
      i_pixel(4)=>i_pixel(4), i_pixel(3)=>i_pixel(3), i_pixel(2)=>i_pixel(2), 
      i_pixel(1)=>i_pixel(1), i_pixel(0)=>i_pixel(0), i_clock=>i_clock, 
      o_valid=>o_valid, o_mode(1)=>o_mode(1), o_mode(0)=>o_mode(0), 
      o_column(7)=>o_column(7), o_column(6)=>o_column(6), o_column(5)=>
      o_column(5), o_column(4)=>o_column(4), o_column(3)=>o_column(3), 
      o_column(2)=>o_column(2), o_column(1)=>o_column(1), o_column(0)=>
      o_column(0), o_row(7)=>o_row(7), o_row(6)=>o_row(6), o_row(5)=>
      o_row(5), o_row(4)=>o_row(4), o_row(3)=>o_row(3), o_row(2)=>o_row(2), 
      o_row(1)=>o_row(1), o_row(0)=>o_row(0), o_image0_0(7)=>o_image0_0(7), 
      o_image0_0(6)=>o_image0_0(6), o_image0_0(5)=>o_image0_0(5), 
      o_image0_0(4)=>o_image0_0(4), o_image0_0(3)=>o_image0_0(3), 
      o_image0_0(2)=>o_image0_0(2), o_image0_0(1)=>o_image0_0(1), 
      o_image0_0(0)=>o_image0_0(0), o_image0_1(7)=>o_image0_1(7), 
      o_image0_1(6)=>o_image0_1(6), o_image0_1(5)=>o_image0_1(5), 
      o_image0_1(4)=>o_image0_1(4), o_image0_1(3)=>o_image0_1(3), 
      o_image0_1(2)=>o_image0_1(2), o_image0_1(1)=>o_image0_1(1), 
      o_image0_1(0)=>o_image0_1(0), o_image0_2(7)=>o_image0_2(7), 
      o_image0_2(6)=>o_image0_2(6), o_image0_2(5)=>o_image0_2(5), 
      o_image0_2(4)=>o_image0_2(4), o_image0_2(3)=>o_image0_2(3), 
      o_image0_2(2)=>o_image0_2(2), o_image0_2(1)=>o_image0_2(1), 
      o_image0_2(0)=>o_image0_2(0), o_image1_0(7)=>o_image1_0(7), 
      o_image1_0(6)=>o_image1_0(6), o_image1_0(5)=>o_image1_0(5), 
      o_image1_0(4)=>o_image1_0(4), o_image1_0(3)=>o_image1_0(3), 
      o_image1_0(2)=>o_image1_0(2), o_image1_0(1)=>o_image1_0(1), 
      o_image1_0(0)=>o_image1_0(0), o_image1_1(7)=>o_image1_1(7), 
      o_image1_1(6)=>o_image1_1(6), o_image1_1(5)=>o_image1_1(5), 
      o_image1_1(4)=>o_image1_1(4), o_image1_1(3)=>o_image1_1(3), 
      o_image1_1(2)=>o_image1_1(2), o_image1_1(1)=>o_image1_1(1), 
      o_image1_1(0)=>o_image1_1(0), o_image1_2(7)=>o_image1_2(7), 
      o_image1_2(6)=>o_image1_2(6), o_image1_2(5)=>o_image1_2(5), 
      o_image1_2(4)=>o_image1_2(4), o_image1_2(3)=>o_image1_2(3), 
      o_image1_2(2)=>o_image1_2(2), o_image1_2(1)=>o_image1_2(1), 
      o_image1_2(0)=>o_image1_2(0), o_image2_0(7)=>o_image2_0(7), 
      o_image2_0(6)=>o_image2_0(6), o_image2_0(5)=>o_image2_0(5), 
      o_image2_0(4)=>o_image2_0(4), o_image2_0(3)=>o_image2_0(3), 
      o_image2_0(2)=>o_image2_0(2), o_image2_0(1)=>o_image2_0(1), 
      o_image2_0(0)=>o_image2_0(0), o_image2_1(7)=>o_image2_1(7), 
      o_image2_1(6)=>o_image2_1(6), o_image2_1(5)=>o_image2_1(5), 
      o_image2_1(4)=>o_image2_1(4), o_image2_1(3)=>o_image2_1(3), 
      o_image2_1(2)=>o_image2_1(2), o_image2_1(1)=>o_image2_1(1), 
      o_image2_1(0)=>o_image2_1(0), o_image2_2(7)=>o_image2_2(7), 
      o_image2_2(6)=>o_image2_2(6), o_image2_2(5)=>o_image2_2(5), 
      o_image2_2(4)=>o_image2_2(4), o_image2_2(3)=>o_image2_2(3), 
      o_image2_2(2)=>o_image2_2(2), o_image2_2(1)=>o_image2_2(1), 
      o_image2_2(0)=>o_image2_2(0));
   o_edge <= debug_num_5_0_EXMPLR357 when debug_num_5_0_EXMPLR357
    = '1' else 'Z' ;
   o_dir(0) <= debug_num_5_0_EXMPLR357 when debug_num_5_0_EXMPLR357
    = '1' else 'Z' ;
   o_dir(1) <= debug_num_5_0_EXMPLR357 when debug_num_5_0_EXMPLR357
    = '1' else 'Z' ;
   o_dir(2) <= debug_num_5_0_EXMPLR357 when debug_num_5_0_EXMPLR357
    = '1' else 'Z' ;
end main ;

