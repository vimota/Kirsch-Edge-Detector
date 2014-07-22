
-- 
-- Definition of  kirsch
-- 
--      Mon Jul 21 19:35:52 2014
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
   component dec_7u_7u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic_vector (6 DOWNTO 0) ;
         cout : OUT std_logic) ;
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
   signal o_column_0_EXMPLR228: std_logic ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, rtlc0n26, rtlc0n28, rtlc2n121, not_rtlc2n121, rtlc2n132, 
      rtlc2n135, not_rtlc2n135, not_i_valid, rtlc2n211, rtlc2n215, rtlc2n235, 
      not_first_bubble, not_rtlcs0, rtlc2_X_0_n252, not_rtlc2_X_0_n252, 
      rtlc2n271, rtlc2n272, not_rtlc2n235, rtlc2n307, rtlc2n308, rtlc2n309, 
      not_rtlc2n215: std_logic ;
   
   signal buffer2_3n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_3n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlc3n99, rtlc3n339, rtlc3n427, rtlc5n55, rtlc5n62, rtlcn118, 
      rtlcn142, not_rtlcn255, not_rtlcn256, rtlcn237, rtlcn244, rtlcn245, 
      rtlcn255, rtlcn256, rtlcs0, rtlcs1: std_logic ;
   
   signal o_image1_0_EXMPLR316: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR317: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR318: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR319: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR320: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR321: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   o_column(0) <= o_column_0_EXMPLR228 ;
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
   GND <= '0' ;
   PWR <= '1' ;
   u_mem1 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>
      o_column_0_EXMPLR228, clock=>i_clock, data(7)=>mem_data(7), data(6)=>
      mem_data(6), data(5)=>mem_data(5), data(4)=>mem_data(4), data(3)=>
      mem_data(3), data(2)=>mem_data(2), data(1)=>mem_data(1), data(0)=>
      mem_data(0), wren=>mem_wrn(0), q(7)=>mem_q_0(7), q(6)=>mem_q_0(6), 
      q(5)=>mem_q_0(5), q(4)=>mem_q_0(4), q(3)=>mem_q_0(3), q(2)=>mem_q_0(2), 
      q(1)=>mem_q_0(1), q(0)=>mem_q_0(0));
   u_mem2 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>
      o_column_0_EXMPLR228, clock=>i_clock, data(7)=>mem_data(7), data(6)=>
      mem_data(6), data(5)=>mem_data(5), data(4)=>mem_data(4), data(3)=>
      mem_data(3), data(2)=>mem_data(2), data(1)=>mem_data(1), data(0)=>
      mem_data(0), wren=>mem_wrn(1), q(7)=>mem_q_1(7), q(6)=>mem_q_1(6), 
      q(5)=>mem_q_1(5), q(4)=>mem_q_1(4), q(3)=>mem_q_1(3), q(2)=>mem_q_1(2), 
      q(1)=>mem_q_1(1), q(0)=>mem_q_1(0));
   u_mem3 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>
      o_column_0_EXMPLR228, clock=>i_clock, data(7)=>mem_data(7), data(6)=>
      mem_data(6), data(5)=>mem_data(5), data(4)=>mem_data(4), data(3)=>
      mem_data(3), data(2)=>mem_data(2), data(1)=>mem_data(1), data(0)=>
      mem_data(0), wren=>mem_wrn(2), q(7)=>mem_q_2(7), q(6)=>mem_q_2(6), 
      q(5)=>mem_q_2(5), q(4)=>mem_q_2(4), q(3)=>mem_q_2(3), q(2)=>mem_q_2(2), 
      q(1)=>mem_q_2(1), q(0)=>mem_q_2(0));
   o_mode(0) <= i_reset OR rtlc0n28 ;
   rtlc0n26 <= busySignal OR busySignalDelayed ;
   rtlc0n28 <= rtlc0n26 OR i_valid ;
   not_rtlc2n215 <= NOT rtlc2n215 ;
   rtlc2n211 <= not_first_bubble OR not_rtlcs0 ;
   rtlc2_32_or_0 : or_3u_3u port map ( a(2)=>rtlc2n121, a(1)=>not_rtlc2n135, 
      a(0)=>not_i_valid, d=>rtlc2n309);
   rtlc2n308 <= rtlc2n121 OR not_i_valid ;
   not_rtlc2n235 <= NOT rtlc2n235 ;
   rtlc2n271 <= rtlcs0 AND first_bubble ;
   rtlc2n272 <= rtlc2n121 OR rtlc2n271 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_first_bubble <= NOT first_bubble ;
   rtlc2_54_or_1 : or_3u_3u port map ( a(2)=>i_valid, a(1)=>not_first_bubble, 
      a(0)=>not_rtlcs0, d=>rtlc2_X_0_n252);
   not_rtlc2_X_0_n252 <= NOT rtlc2_X_0_n252 ;
   not_i_valid <= NOT i_valid ;
   rtlc2n132 <= mem_wrn_current(0) OR mem_wrn_current(1) ;
   rtlc2n135 <= rtlc2n132 OR mem_wrn_current(2) ;
   not_rtlc2n135 <= NOT rtlc2n135 ;
   not_rtlc2n121 <= NOT rtlc2n121 ;
   rtlc2n121 <= i_reset OR rtlc5n55 ;
   rtlc2n235 <= not_rtlc2n121 AND i_valid ;
   rtlc3n99 <= rtlc3n339 AND rtlc3n427 ;
   rtlc3_443_or_3 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc3n339);
   rtlc3_469_or_4 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc3n427);
   rtlc5n62 <= i_valid OR busySignal ;
   buffer2_select_3i1Bus6_0 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(0), b(1)=>
      buffer2_3n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_3n4ss1(0));
   buffer2_select_3i1Bus6_1 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(1), b(1)=>
      buffer2_3n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_3n4ss1(1));
   buffer2_select_3i1Bus6_2 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(2), b(1)=>
      buffer2_3n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_3n4ss1(2));
   buffer2_select_3i1Bus6_3 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(3), b(1)=>
      buffer2_3n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_3n4ss1(3));
   buffer2_select_3i1Bus6_4 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(4), b(1)=>
      buffer2_3n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_3n4ss1(4));
   buffer2_select_3i1Bus6_5 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(5), b(1)=>
      buffer2_3n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_3n4ss1(5));
   buffer2_select_3i1Bus6_6 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(6), b(1)=>
      buffer2_3n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_3n4ss1(6));
   buffer2_select_3i1Bus6_7 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(7), b(1)=>
      buffer2_3n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_3n4ss1(7));
   buffer2_select_3i1Bus6_8 : select_3_3 port map ( a(2)=>not_rtlcn256, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(0), b(1)=>
      buffer2_3n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_3n4ss1(8));
   buffer2_select_3i1Bus6_9 : select_3_3 port map ( a(2)=>not_rtlcn256, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(1), b(1)=>
      buffer2_3n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_3n4ss1(9));
   buffer2_select_3i1Bus6_10 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(2), b(1)=>
      buffer2_3n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_3n4ss1(10));
   buffer2_select_3i1Bus6_11 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(3), b(1)=>
      buffer2_3n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_3n4ss1(11));
   buffer2_select_3i1Bus6_12 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(4), b(1)=>
      buffer2_3n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_3n4ss1(12));
   buffer2_select_3i1Bus6_13 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(5), b(1)=>
      buffer2_3n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_3n4ss1(13));
   buffer2_select_3i1Bus6_14 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(6), b(1)=>
      buffer2_3n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_3n4ss1(14));
   buffer2_select_3i1Bus6_15 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(7), b(1)=>
      buffer2_3n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_3n4ss1(15));
   rtlcn118 <= rtlc3n339 AND mem_wrn_current(1) ;
   rtlcn142 <= rtlc3n339 AND mem_wrn_current(0) ;
   o_mode(1) <= NOT i_reset ;
   rtlcn237 <= rtlc3n339 OR mem_wrn_current(2) ;
   rtlcn244 <= i_valid AND not_rtlc2n215 ;
   rtlcn245 <= rtlc2n121 OR rtlcn244 ;
   not_rtlcn255 <= NOT rtlcn255 ;
   not_rtlcn256 <= NOT rtlcn256 ;
   rtlc2n215 <= rtlc2n135 when i_valid = '1' else rtlc2n211 ;
   buffer2_3n2ss1(0) <= mem_q_1(0) when rtlc3n339 = '1' else mem_data(0) ;
   buffer2_3n2ss1(1) <= mem_q_1(1) when rtlc3n339 = '1' else mem_data(1) ;
   buffer2_3n2ss1(2) <= mem_q_1(2) when rtlc3n339 = '1' else mem_data(2) ;
   buffer2_3n2ss1(3) <= mem_q_1(3) when rtlc3n339 = '1' else mem_data(3) ;
   buffer2_3n2ss1(4) <= mem_q_1(4) when rtlc3n339 = '1' else mem_data(4) ;
   buffer2_3n2ss1(5) <= mem_q_1(5) when rtlc3n339 = '1' else mem_data(5) ;
   buffer2_3n2ss1(6) <= mem_q_1(6) when rtlc3n339 = '1' else mem_data(6) ;
   buffer2_3n2ss1(7) <= mem_q_1(7) when rtlc3n339 = '1' else mem_data(7) ;
   buffer2_3n4ss1(16) <= mem_data(0) when rtlcn237 = '1' else mem_q_2(0) ;
   buffer2_3n4ss1(17) <= mem_data(1) when rtlcn237 = '1' else mem_q_2(1) ;
   buffer2_3n4ss1(18) <= mem_data(2) when rtlcn237 = '1' else mem_q_2(2) ;
   buffer2_3n4ss1(19) <= mem_data(3) when rtlcn237 = '1' else mem_q_2(3) ;
   buffer2_3n4ss1(20) <= mem_data(4) when rtlcn237 = '1' else mem_q_2(4) ;
   buffer2_3n4ss1(21) <= mem_data(5) when rtlcn237 = '1' else mem_q_2(5) ;
   buffer2_3n4ss1(22) <= mem_data(6) when rtlcn237 = '1' else mem_q_2(6) ;
   buffer2_3n4ss1(23) <= mem_data(7) when rtlcn237 = '1' else mem_q_2(7) ;
   rtlc_499_and_21 : and_8u_8u port map ( a(7)=>row(7), a(6)=>row(6), a(5)=>
      row(5), a(4)=>row(4), a(3)=>row(3), a(2)=>row(2), a(1)=>row(1), a(0)=>
      row(0), d=>rtlcs1);
   rtlc_500_and_22 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>o_column_0_EXMPLR228, d=>rtlcs0);
   o_column_dec7_0 : dec_7u_7u_0 port map ( cin=>GND, a(6)=>column(7), a(5)
      =>column(6), a(4)=>column(5), a(3)=>column(4), a(2)=>column(3), a(1)=>
      column(2), a(0)=>column(1), d(6)=>o_column(7), d(5)=>o_column(6), d(4)
      =>o_column(5), d(3)=>o_column(4), d(2)=>o_column(3), d(1)=>o_column(2), 
      d(0)=>o_column(1), cout=>DANGLING(0));
   rtlcn255 <= mem_wrn_current(0) OR rtlcn118 ;
   rtlcn256 <= mem_wrn_current(1) OR rtlcn142 ;
   modgen_counter_row : counter_up_cnt_en_sclear_clock_0_8 port map ( clock
      =>i_clock, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), 
      q(3)=>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(7)=>DANGLING(1), data(6)=>DANGLING(2), 
      data(5)=>DANGLING(3), data(4)=>DANGLING(4), data(3)=>DANGLING(5), 
      data(2)=>DANGLING(6), data(1)=>DANGLING(7), data(0)=>DANGLING(8), aset
      =>GND, sclear=>rtlc2n121, updn=>PWR, cnt_en=>not_rtlc2_X_0_n252);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>o_column_0_EXMPLR228, clk_en=>not_rtlc2n235, aclear=>
      GND, sload=>GND, data(7)=>DANGLING(9), data(6)=>DANGLING(10), data(5)
      =>DANGLING(11), data(4)=>DANGLING(12), data(3)=>DANGLING(13), data(2)
      =>DANGLING(14), data(1)=>DANGLING(15), data(0)=>DANGLING(16), aset=>
      GND, sclear=>rtlc2n272, updn=>PWR, cnt_en=>first_bubble);
   DFFPC (i_valid,GND,GND,i_clock,first_bubble) ;
   DFFRSE (mem_wrn_current(2),GND,rtlc2n309,PWR,i_clock,mem_wrn(2)) ;
   DFFRSE (mem_wrn_current(1),GND,rtlc2n309,PWR,i_clock,mem_wrn(1)) ;
   DFFRSE (mem_wrn_current(0),rtlc2n307,rtlc2n308,PWR,i_clock,mem_wrn(0)) ;
   DFFPCE (buffer2_3n4ss1(23),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(7)) ;
   DFFPCE (buffer2_3n4ss1(22),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(6)) ;
   DFFPCE (buffer2_3n4ss1(21),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(5)) ;
   DFFPCE (buffer2_3n4ss1(20),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(4)) ;
   DFFPCE (buffer2_3n4ss1(19),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(3)) ;
   DFFPCE (buffer2_3n4ss1(18),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(2)) ;
   DFFPCE (buffer2_3n4ss1(17),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(1)) ;
   DFFPCE (buffer2_3n4ss1(16),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR321(0)) ;
   DFFPCE (buffer2_3n4ss1(15),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(7)) ;
   DFFPCE (buffer2_3n4ss1(14),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(6)) ;
   DFFPCE (buffer2_3n4ss1(13),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(5)) ;
   DFFPCE (buffer2_3n4ss1(12),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(4)) ;
   DFFPCE (buffer2_3n4ss1(11),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(3)) ;
   DFFPCE (buffer2_3n4ss1(10),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(2)) ;
   DFFPCE (buffer2_3n4ss1(9),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(1)) ;
   DFFPCE (buffer2_3n4ss1(8),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR320(0)) ;
   DFFPCE (buffer2_3n4ss1(7),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(7)) ;
   DFFPCE (buffer2_3n4ss1(6),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(6)) ;
   DFFPCE (buffer2_3n4ss1(5),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(5)) ;
   DFFPCE (buffer2_3n4ss1(4),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(4)) ;
   DFFPCE (buffer2_3n4ss1(3),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(3)) ;
   DFFPCE (buffer2_3n4ss1(2),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(2)) ;
   DFFPCE (buffer2_3n4ss1(1),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR319(1)) ;
   DFFPCE (buffer2_3n4ss1(0),GND,GND,first_bubble,i_clock,
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
   DFFRSE (PWR,GND,not_first_bubble,rtlc3n99,i_clock,o_valid) ;
   DFFPC (busySignal,GND,GND,i_clock,busySignalDelayed) ;
   DFFPC (row(7),GND,GND,i_clock,o_row(7)) ;
   DFFPC (row(6),GND,GND,i_clock,o_row(6)) ;
   DFFPC (row(5),GND,GND,i_clock,o_row(5)) ;
   DFFPC (row(4),GND,GND,i_clock,o_row(4)) ;
   DFFPC (row(3),GND,GND,i_clock,o_row(3)) ;
   DFFPC (row(2),GND,GND,i_clock,o_row(2)) ;
   DFFPC (row(1),GND,GND,i_clock,o_row(1)) ;
   DFFPC (row(0),GND,GND,i_clock,o_row(0)) ;
   DFFRSE (rtlc5n62,GND,rtlc5n55,PWR,i_clock,busySignal) ;
   DFFPC (i_pixel(7),GND,GND,i_clock,mem_data(7)) ;
   DFFPC (i_pixel(6),GND,GND,i_clock,mem_data(6)) ;
   DFFPC (i_pixel(5),GND,GND,i_clock,mem_data(5)) ;
   DFFPC (i_pixel(4),GND,GND,i_clock,mem_data(4)) ;
   DFFPC (i_pixel(3),GND,GND,i_clock,mem_data(3)) ;
   DFFPC (i_pixel(2),GND,GND,i_clock,mem_data(2)) ;
   DFFPC (i_pixel(1),GND,GND,i_clock,mem_data(1)) ;
   DFFPC (i_pixel(0),GND,GND,i_clock,mem_data(0)) ;
   DFFRSE (mem_wrn_current(1),GND,rtlcn245,not_rtlc2n215,i_clock,
   mem_wrn_current(2)) ;
   DFFRSE (mem_wrn_current(0),GND,rtlcn245,not_rtlc2n215,i_clock,
   mem_wrn_current(1)) ;
   DFFRSE (mem_wrn_current(2),rtlcn244,rtlc2n121,not_rtlc2n215,i_clock,
   mem_wrn_current(0)) ;
   modgen_and_0 : and_3u_3u port map ( a(2)=>not_rtlc2n135, a(1)=>i_valid, 
      a(0)=>not_rtlc2n121, d=>rtlc2n307);
   modgen_and_1 : and_3u_3u port map ( a(2)=>rtlcs1, a(1)=>rtlcs0, a(0)=>
      first_bubble, d=>rtlc5n55);
end main ;

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
   ix248 : shiftregister_reg_p5r_7_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(7), \out\=>nx11);
   ix249 : shiftregister_reg_p5r_6_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(6), \out\=>nx12);
   ix250 : shiftregister_reg_p5r_5_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(5), \out\=>nx13);
   ix251 : shiftregister_reg_p5r_4_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(4), \out\=>nx14);
   ix252 : shiftregister_reg_p5r_3_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(3), \out\=>nx15);
   ix253 : shiftregister_reg_p5r_2_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(2), \out\=>nx16);
   ix254 : shiftregister_reg_p5r_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx17);
   ix255 : shiftregister_reg_p5r_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
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
   ix256 : shiftregister_reg_p5m_1_clk_reset_set_0_1_1_1_0_4 port map ( clk
      =>clk, reset=>reset, set=>set, \in\=>\in\(1), \out\=>nx5);
   ix257 : shiftregister_reg_p5m_0_clk_reset_set_0_1_1_1_0_4 port map ( clk
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
   ix258 : shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 port map ( clk=>
      clk, reset=>reset, set=>set, \in\=>\in\(0), \out\=>nx4);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity flow_notri is 
   port (
      p_i_valid_ix261 : IN std_logic_vector (0 DOWNTO 0) ;
      p_i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_i_row : IN std_logic_vector (7 DOWNTO 0) ;
      p_o_valid : OUT std_logic ;
      p_debug_valid : OUT std_logic ;
      p_i_clock : IN std_logic ;
      p_i2 : IN std_logic_vector (7 DOWNTO 0) ;
      p_i1 : IN std_logic_vector (7 DOWNTO 0) ;
      p_b3 : IN std_logic_vector (7 DOWNTO 0) ;
      p_b2 : IN std_logic_vector (7 DOWNTO 0) ;
      p_b1 : IN std_logic_vector (7 DOWNTO 0) ;
      p_t3 : IN std_logic_vector (7 DOWNTO 0) ;
      p_t2 : IN std_logic_vector (7 DOWNTO 0) ;
      p_t1 : IN std_logic_vector (7 DOWNTO 0) ;
      p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      p_o_edge : OUT std_logic ;
      p_debug_num_6 : OUT std_logic ;
      p_debug_num_7 : OUT std_logic ;
      p_debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_i_reset : IN std_logic ;
      p_debug_num_2 : OUT std_logic_vector (12 DOWNTO 0) ;
      p_debug_num_1 : OUT std_logic_vector (10 DOWNTO 0) ;
      p_debug_num_0 : OUT std_logic_vector (12 DOWNTO 0)) ;
end flow_notri ;

architecture main_unfold_1331 of flow_notri is 
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_14s_14s
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_13s_13s
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
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
   component sub_10u_10u_10u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component eq_14u_14u
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   signal NOT_p11_0, NOT_p12_0, p40, debug_valid: std_logic ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p4s_0n0s1_12: std_logic ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlcn945, p22_4n0r3_0, rtlcn905, rtlcn864, p21_4n0r3_0, rtlcn824: 
   std_logic ;
   
   signal p12_2: std_logic_vector (9 DOWNTO 9) ;
   
   signal p12_1: std_logic_vector (1 DOWNTO 1) ;
   
   signal p12_2_rename0, p12_3, p12_4, p12_5, p12_6, p12_7, p12_8: std_logic
    ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p11_2: std_logic_vector (9 DOWNTO 9) ;
   
   signal p11_1: std_logic_vector (1 DOWNTO 1) ;
   
   signal p11_2_rename2, p11_3, p11_4, p11_5, p11_6, p11_7, p11_8: std_logic
    ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal max_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_edge: std_logic ;
   
   signal rtlc8_max_dir_D_n12: std_logic_vector (0 DOWNTO 0) ;
   
   signal not_rtlc5n47: std_logic ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p11_0: std_logic ;
   
   signal p22_4n0r4: std_logic_vector (12 DOWNTO 2) ;
   
   signal p22_4n0r3_1, p22_4n0r3_2, p22_4n0r3_3, p22_4n0r3_4, p22_4n0r3_5, 
      p22_4n0r3_6, p22_4n0r3_7, p22_4n0r3_8, p22_4n0r3_9, p22_4n0r3_12: 
   std_logic ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p12_0: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (12 DOWNTO 2) ;
   
   signal p21_4n0r3_1, p21_4n0r3_2, p21_4n0r3_3, p21_4n0r3_4, p21_4n0r3_5, 
      p21_4n0r3_6, p21_4n0r3_7, p21_4n0r3_8, p21_4n0r3_9, p21_4n0r3_12, 
      rtlc8n89, rtlcn145, tmp_o_edge_7n3ss1, debug_num_6, debug_num_7: 
   std_logic ;
   
   signal p31_5n1ss1: std_logic_vector (12 DOWNTO 0) ;
   
   signal not_rtlcn144, rtlcn144, rtlcn126, rtlcn134: std_logic ;
   
   signal state: std_logic_vector (1 DOWNTO 1) ;
   
   signal not_state_2, state_2, not_state_0, state_0, not_p45, rtlc7n47, 
      rtlc7n67, state_3, rtlc6n130, rtlc6n128, not_debug_num_2_12, rtlc6n127, 
      rtlc5n47: std_logic ;
   
   signal debug_num_3: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_4: std_logic_vector (12 DOWNTO 0) ;
   
   signal not_i_reset, max_fwd, rtlc1n77, rtlc1n84: std_logic ;
   
   signal prev_max: std_logic_vector (13 DOWNTO 0) ;
   
   signal p43: std_logic_vector (13 DOWNTO 0) ;
   
   signal rtlc1n76, p45, not_max_fwd, rtlcs1: std_logic ;
   
   signal debug_num_2: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_1: std_logic_vector (11 DOWNTO 0) ;
   
   signal debug_num_0: std_logic_vector (12 DOWNTO 0) ;
   
   signal not_rtlc0n265, rtlc0n265, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   p_debug_valid <= debug_valid ;
   p_o_edge <= o_edge ;
   p_debug_num_6 <= debug_num_6 ;
   p_debug_num_7 <= debug_num_7 ;
   p_debug_num_3(0) <= debug_num_3(0) ;
   p_debug_num_3(1) <= debug_num_3(1) ;
   p_debug_num_3(2) <= debug_num_3(2) ;
   p_debug_num_3(3) <= debug_num_3(3) ;
   p_debug_num_3(4) <= debug_num_3(4) ;
   p_debug_num_3(5) <= debug_num_3(5) ;
   p_debug_num_3(6) <= debug_num_3(6) ;
   p_debug_num_3(7) <= debug_num_3(7) ;
   p_debug_num_3(8) <= debug_num_3(8) ;
   p_debug_num_3(9) <= debug_num_3(9) ;
   p_debug_num_3(10) <= debug_num_3(10) ;
   p_debug_num_3(11) <= debug_num_3(11) ;
   p_debug_num_3(12) <= debug_num_3(12) ;
   p_debug_num_4(0) <= debug_num_4(0) ;
   p_debug_num_4(1) <= debug_num_4(1) ;
   p_debug_num_4(2) <= debug_num_4(2) ;
   p_debug_num_4(3) <= debug_num_4(3) ;
   p_debug_num_4(4) <= debug_num_4(4) ;
   p_debug_num_4(5) <= debug_num_4(5) ;
   p_debug_num_4(6) <= debug_num_4(6) ;
   p_debug_num_4(7) <= debug_num_4(7) ;
   p_debug_num_4(8) <= debug_num_4(8) ;
   p_debug_num_4(9) <= debug_num_4(9) ;
   p_debug_num_4(10) <= debug_num_4(10) ;
   p_debug_num_4(11) <= debug_num_4(11) ;
   p_debug_num_4(12) <= debug_num_4(12) ;
   p_debug_num_2(0) <= debug_num_2(0) ;
   p_debug_num_2(1) <= debug_num_2(1) ;
   p_debug_num_2(2) <= debug_num_2(2) ;
   p_debug_num_2(3) <= debug_num_2(3) ;
   p_debug_num_2(4) <= debug_num_2(4) ;
   p_debug_num_2(5) <= debug_num_2(5) ;
   p_debug_num_2(6) <= debug_num_2(6) ;
   p_debug_num_2(7) <= debug_num_2(7) ;
   p_debug_num_2(8) <= debug_num_2(8) ;
   p_debug_num_2(9) <= debug_num_2(9) ;
   p_debug_num_2(10) <= debug_num_2(10) ;
   p_debug_num_2(11) <= debug_num_2(11) ;
   p_debug_num_1(10) <= debug_num_1(0) ;
   p_debug_num_1(9) <= debug_num_1(1) ;
   p_debug_num_1(8) <= debug_num_1(2) ;
   p_debug_num_1(7) <= debug_num_1(3) ;
   p_debug_num_1(6) <= debug_num_1(4) ;
   p_debug_num_1(5) <= debug_num_1(5) ;
   p_debug_num_1(4) <= debug_num_1(6) ;
   p_debug_num_1(3) <= debug_num_1(7) ;
   p_debug_num_1(2) <= debug_num_1(8) ;
   p_debug_num_1(1) <= debug_num_1(9) ;
   p_debug_num_1(0) <= debug_num_1(10) ;
   p_debug_num_0(0) <= debug_num_0(0) ;
   p_debug_num_0(1) <= debug_num_0(1) ;
   p_debug_num_0(2) <= debug_num_0(2) ;
   p_debug_num_0(3) <= debug_num_0(3) ;
   p_debug_num_0(4) <= debug_num_0(4) ;
   p_debug_num_0(5) <= debug_num_0(5) ;
   p_debug_num_0(6) <= debug_num_0(6) ;
   p_debug_num_0(7) <= debug_num_0(7) ;
   p_debug_num_0(8) <= debug_num_0(8) ;
   p_debug_num_0(9) <= debug_num_0(9) ;
   p_debug_num_0(10) <= debug_num_0(10) ;
   p_debug_num_0(11) <= debug_num_0(11) ;
   p_debug_num_2(12) <= debug_num_2(12) ;
   p_debug_num_0(12) <= debug_num_0(12) ;
   debug_num_1(11) <= '0' ;
   PWR <= '1' ;
   not_rtlc0n265 <= NOT rtlc0n265 ;
   debug_num_2(12) <= not_rtlc0n265 OR debug_num_0(12) ;
   debug_num_2_sub12_0 : sub_12u_12u_12u_0 port map ( cin=>PWR, a(11)=>
      debug_num_0(11), a(10)=>debug_num_0(10), a(9)=>debug_num_0(9), a(8)=>
      debug_num_0(8), a(7)=>debug_num_0(7), a(6)=>debug_num_0(6), a(5)=>
      debug_num_0(5), a(4)=>debug_num_0(4), a(3)=>debug_num_0(3), a(2)=>
      debug_num_0(2), a(1)=>debug_num_0(1), a(0)=>debug_num_0(0), b(11)=>
      debug_num_1(11), b(10)=>debug_num_1(10), b(9)=>debug_num_1(9), b(8)=>
      debug_num_1(8), b(7)=>debug_num_1(7), b(6)=>debug_num_1(6), b(5)=>
      debug_num_1(5), b(4)=>debug_num_1(4), b(3)=>debug_num_1(3), b(2)=>
      debug_num_1(2), b(1)=>debug_num_1(1), b(0)=>debug_num_1(0), d(11)=>
      debug_num_2(11), d(10)=>debug_num_2(10), d(9)=>debug_num_2(9), d(8)=>
      debug_num_2(8), d(7)=>debug_num_2(7), d(6)=>debug_num_2(6), d(5)=>
      debug_num_2(5), d(4)=>debug_num_2(4), d(3)=>debug_num_2(3), d(2)=>
      debug_num_2(2), d(1)=>debug_num_2(1), d(0)=>debug_num_2(0), cout=>
      rtlc0n265);
   rtlc1_12_and_25 : and_3u_3u port map ( a(2)=>rtlcs1, a(1)=>not_max_fwd, 
      a(0)=>p45, d=>rtlc1n76);
   rtlc1_13_gt_26 : gt_14s_14s port map ( a(13)=>p43(13), a(12)=>p43(12), 
      a(11)=>p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>
      p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>
      p43(2), a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>
      prev_max(12), b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>
      prev_max(9), b(8)=>prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), 
      b(5)=>prev_max(5), b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>
      prev_max(2), b(1)=>prev_max(1), b(0)=>prev_max(0), d=>rtlc1n84);
   rtlc1n77 <= rtlc1n84 OR rtlc1n76 ;
   not_max_fwd <= NOT max_fwd ;
   not_i_reset <= NOT p_i_reset ;
   rtlc5_91_gt_27 : gt_13s_13s port map ( a(12)=>debug_num_4(12), a(11)=>
      debug_num_4(11), a(10)=>debug_num_4(10), a(9)=>debug_num_4(9), a(8)=>
      debug_num_4(8), a(7)=>debug_num_4(7), a(6)=>debug_num_4(6), a(5)=>
      debug_num_4(5), a(4)=>debug_num_4(4), a(3)=>debug_num_4(3), a(2)=>
      debug_num_4(2), a(1)=>debug_num_4(1), a(0)=>debug_num_4(0), b(12)=>
      debug_num_3(12), b(11)=>debug_num_3(11), b(10)=>debug_num_3(10), b(9)
      =>debug_num_3(9), b(8)=>debug_num_3(8), b(7)=>debug_num_3(7), b(6)=>
      debug_num_3(6), b(5)=>debug_num_3(5), b(4)=>debug_num_3(4), b(3)=>
      debug_num_3(3), b(2)=>debug_num_3(2), b(1)=>debug_num_3(1), b(0)=>
      debug_num_3(0), d=>rtlc5n47);
   rtlc6n127 <= debug_num_2(7) AND debug_num_2(8) ;
   not_debug_num_2_12 <= NOT debug_num_2(12) ;
   rtlc6n130 <= rtlc6n128 AND not_debug_num_2_12 ;
   rtlc7n67 <= state_3 AND rtlc1n77 ;
   rtlc7n47 <= p_i_reset OR state_3 ;
   not_p45 <= NOT p45 ;
   not_state_0 <= NOT state_0 ;
   not_state_2 <= NOT state_2 ;
   rtlcn134 <= state(1) OR not_state_2 ;
   rtlcn126 <= not_state_0 AND rtlcn134 ;
   not_rtlcn144 <= NOT rtlcn144 ;
   p31_5n1ss1(0) <= debug_num_4(0) when rtlc5n47 = '1' else debug_num_3(0) ;
   p31_5n1ss1(1) <= debug_num_4(1) when rtlc5n47 = '1' else debug_num_3(1) ;
   p31_5n1ss1(2) <= debug_num_4(2) when rtlc5n47 = '1' else debug_num_3(2) ;
   p31_5n1ss1(3) <= debug_num_4(3) when rtlc5n47 = '1' else debug_num_3(3) ;
   p31_5n1ss1(4) <= debug_num_4(4) when rtlc5n47 = '1' else debug_num_3(4) ;
   p31_5n1ss1(5) <= debug_num_4(5) when rtlc5n47 = '1' else debug_num_3(5) ;
   p31_5n1ss1(6) <= debug_num_4(6) when rtlc5n47 = '1' else debug_num_3(6) ;
   p31_5n1ss1(7) <= debug_num_4(7) when rtlc5n47 = '1' else debug_num_3(7) ;
   p31_5n1ss1(8) <= debug_num_4(8) when rtlc5n47 = '1' else debug_num_3(8) ;
   p31_5n1ss1(9) <= debug_num_4(9) when rtlc5n47 = '1' else debug_num_3(9) ;
   p31_5n1ss1(10) <= debug_num_4(10) when rtlc5n47 = '1' else 
   debug_num_3(10) ;
   p31_5n1ss1(11) <= debug_num_4(11) when rtlc5n47 = '1' else 
   debug_num_3(11) ;
   p31_5n1ss1(12) <= debug_num_4(12) when rtlc5n47 = '1' else 
   debug_num_3(12) ;
   tmp_o_edge_7n3ss1 <= debug_num_6 when rtlc7n67 = '1' else debug_num_7 ;
   rtlc_158_or_29 : or_4u_4u port map ( a(3)=>state_0, a(2)=>state(1), a(1)
      =>state_2, a(0)=>state_3, d=>rtlcn145);
   rtlc8n89 <= rtlc1n77 AND rtlcn145 ;
   p21_add12_4i1 : add_12u_12u_12u_0_0 port map ( cin=>debug_num_1(11), 
      a(11)=>p21_4n0r3_12, a(10)=>p21_4n0r3_12, a(9)=>p21_4n0r3_12, a(8)=>
      p21_4n0r3_9, a(7)=>p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, 
      a(4)=>p21_4n0r3_5, a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>
      p21_4n0r3_2, a(0)=>p21_4n0r3_1, b(11)=>p21_4n0r4(12), b(10)=>
      p21_4n0r4(11), b(9)=>p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>
      p21_4n0r4(8), b(6)=>p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>
      p21_4n0r4(5), b(3)=>p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>
      p21_4n0r4(2), b(0)=>p12_0, d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), 
      d(9)=>p21_4n0r2(10), d(8)=>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>
      p21_4n0r2(7), d(5)=>p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>
      p21_4n0r2(4), d(2)=>p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>
      p21_4n0r2(1), cout=>DANGLING(0));
   p22_add12_4i2 : add_12u_12u_12u_0_0 port map ( cin=>debug_num_1(11), 
      a(11)=>p22_4n0r3_12, a(10)=>p22_4n0r3_12, a(9)=>p22_4n0r3_12, a(8)=>
      p22_4n0r3_9, a(7)=>p22_4n0r3_8, a(6)=>p22_4n0r3_7, a(5)=>p22_4n0r3_6, 
      a(4)=>p22_4n0r3_5, a(3)=>p22_4n0r3_4, a(2)=>p22_4n0r3_3, a(1)=>
      p22_4n0r3_2, a(0)=>p22_4n0r3_1, b(11)=>p22_4n0r4(12), b(10)=>
      p22_4n0r4(11), b(9)=>p22_4n0r4(10), b(8)=>p22_4n0r4(9), b(7)=>
      p22_4n0r4(8), b(6)=>p22_4n0r4(7), b(5)=>p22_4n0r4(6), b(4)=>
      p22_4n0r4(5), b(3)=>p22_4n0r4(4), b(2)=>p22_4n0r4(3), b(1)=>
      p22_4n0r4(2), b(0)=>p11_0, d(11)=>p22_4n0r2(12), d(10)=>p22_4n0r2(11), 
      d(9)=>p22_4n0r2(10), d(8)=>p22_4n0r2(9), d(7)=>p22_4n0r2(8), d(6)=>
      p22_4n0r2(7), d(5)=>p22_4n0r2(6), d(4)=>p22_4n0r2(5), d(3)=>
      p22_4n0r2(4), d(2)=>p22_4n0r2(3), d(1)=>p22_4n0r2(2), d(0)=>
      p22_4n0r2(1), cout=>DANGLING(1));
   not_rtlc5n47 <= NOT rtlc5n47 ;
   rtlc8_max_dir_D_n12(0) <= not_p45 XOR state_0 ;
   p_o_dir(0) <= max_dir(0) AND o_edge ;
   rtlcn144 <= state(1) OR state_0 ;
   p_o_dir(1) <= max_dir(1) AND o_edge ;
   p_o_dir(2) <= max_dir(2) AND o_edge ;
   p_o_mode(0) <= p5m(0) OR p_i_reset ;
   p_o_mode(1) <= p5m(1) AND not_i_reset ;
   p11_add8_0i1 : add_8u_8u_8u_0_0 port map ( cin=>debug_num_1(11), a(7)=>
      p_t1(7), a(6)=>p_t1(6), a(5)=>p_t1(5), a(4)=>p_t1(4), a(3)=>p_t1(3), 
      a(2)=>p_t1(2), a(1)=>p_t1(1), a(0)=>p_t1(0), b(7)=>p_t2(7), b(6)=>
      p_t2(6), b(5)=>p_t2(5), b(4)=>p_t2(4), b(3)=>p_t2(3), b(2)=>p_t2(2), 
      b(1)=>p_t2(1), b(0)=>p_t2(0), d(7)=>p11_0n0s2(0), d(6)=>p11_0n0s2(1), 
      d(5)=>p11_0n0s2(2), d(4)=>p11_0n0s2(3), d(3)=>p11_0n0s2(4), d(2)=>
      p11_0n0s2(5), d(1)=>p11_0n0s2(6), d(0)=>p11_0n0s2(7), cout=>
      p11_0n0s2(8));
   p11_add9_1 : add_9u_9u_9u_0_0 port map ( cin=>debug_num_1(11), a(8)=>
      p11_0n0s2(8), a(7)=>p11_0n0s2(0), a(6)=>p11_0n0s2(1), a(5)=>
      p11_0n0s2(2), a(4)=>p11_0n0s2(3), a(3)=>p11_0n0s2(4), a(2)=>
      p11_0n0s2(5), a(1)=>p11_0n0s2(6), a(0)=>p11_0n0s2(7), b(8)=>
      debug_num_1(11), b(7)=>p_t3(7), b(6)=>p_t3(6), b(5)=>p_t3(5), b(4)=>
      p_t3(4), b(3)=>p_t3(3), b(2)=>p_t3(2), b(1)=>p_t3(1), b(0)=>p_t3(0), 
      d(8)=>p11_8, d(7)=>p11_7, d(6)=>p11_6, d(5)=>p11_5, d(4)=>p11_4, d(3)
      =>p11_3, d(2)=>p11_2_rename2, d(1)=>p11_1(1), d(0)=>p11_0, cout=>
      p11_2(9));
   p12_add8_0i2 : add_8u_8u_8u_0_0 port map ( cin=>debug_num_1(11), a(7)=>
      p_b1(7), a(6)=>p_b1(6), a(5)=>p_b1(5), a(4)=>p_b1(4), a(3)=>p_b1(3), 
      a(2)=>p_b1(2), a(1)=>p_b1(1), a(0)=>p_b1(0), b(7)=>p_b2(7), b(6)=>
      p_b2(6), b(5)=>p_b2(5), b(4)=>p_b2(4), b(3)=>p_b2(3), b(2)=>p_b2(2), 
      b(1)=>p_b2(1), b(0)=>p_b2(0), d(7)=>p12_0n0s2(0), d(6)=>p12_0n0s2(1), 
      d(5)=>p12_0n0s2(2), d(4)=>p12_0n0s2(3), d(3)=>p12_0n0s2(4), d(2)=>
      p12_0n0s2(5), d(1)=>p12_0n0s2(6), d(0)=>p12_0n0s2(7), cout=>
      p12_0n0s2(8));
   p12_add9_2 : add_9u_9u_9u_0_0 port map ( cin=>debug_num_1(11), a(8)=>
      p12_0n0s2(8), a(7)=>p12_0n0s2(0), a(6)=>p12_0n0s2(1), a(5)=>
      p12_0n0s2(2), a(4)=>p12_0n0s2(3), a(3)=>p12_0n0s2(4), a(2)=>
      p12_0n0s2(5), a(1)=>p12_0n0s2(6), a(0)=>p12_0n0s2(7), b(8)=>
      debug_num_1(11), b(7)=>p_b3(7), b(6)=>p_b3(6), b(5)=>p_b3(5), b(4)=>
      p_b3(4), b(3)=>p_b3(3), b(2)=>p_b3(2), b(1)=>p_b3(1), b(0)=>p_b3(0), 
      d(8)=>p12_8, d(7)=>p12_7, d(6)=>p12_6, d(5)=>p12_5, d(4)=>p12_4, d(3)
      =>p12_3, d(2)=>p12_2_rename0, d(1)=>p12_1(1), d(0)=>p12_0, cout=>
      p12_2(9));
   p21_4n0r3_12 <= NOT rtlcn824 ;
   p21_sub10_4i3 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p11_2(9), 
      a(8)=>p11_8, a(7)=>p11_7, a(6)=>p11_6, a(5)=>p11_5, a(4)=>p11_4, a(3)
      =>p11_3, a(2)=>p11_2_rename2, a(1)=>p11_1(1), a(0)=>p11_0, b(9)=>
      p12_2(9), b(8)=>p12_8, b(7)=>p12_7, b(6)=>p12_6, b(5)=>p12_5, b(4)=>
      p12_4, b(3)=>p12_3, b(2)=>p12_2_rename0, b(1)=>p12_1(1), b(0)=>p12_0, 
      d(9)=>p21_4n0r3_9, d(8)=>p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>
      p21_4n0r3_6, d(5)=>p21_4n0r3_5, d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, 
      d(2)=>p21_4n0r3_2, d(1)=>p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>
      rtlcn824);
   p21_4n0r4(12) <= NOT rtlcn864 ;
   p22_4n0r3_12 <= NOT rtlcn905 ;
   p22_sub10_4i5 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p12_2(9), 
      a(8)=>p12_8, a(7)=>p12_7, a(6)=>p12_6, a(5)=>p12_5, a(4)=>p12_4, a(3)
      =>p12_3, a(2)=>p12_2_rename0, a(1)=>p12_1(1), a(0)=>p12_0, b(9)=>
      p11_2(9), b(8)=>p11_8, b(7)=>p11_7, b(6)=>p11_6, b(5)=>p11_5, b(4)=>
      p11_4, b(3)=>p11_3, b(2)=>p11_2_rename2, b(1)=>p11_1(1), b(0)=>p11_0, 
      d(9)=>p22_4n0r3_9, d(8)=>p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>
      p22_4n0r3_6, d(5)=>p22_4n0r3_5, d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, 
      d(2)=>p22_4n0r3_2, d(1)=>p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>
      rtlcn905);
   p22_4n0r4(12) <= NOT rtlcn945 ;
   p13_add8_0i3 : add_8u_8u_8u_0_0 port map ( cin=>debug_num_1(11), a(7)=>
      p_i1(7), a(6)=>p_i1(6), a(5)=>p_i1(5), a(4)=>p_i1(4), a(3)=>p_i1(3), 
      a(2)=>p_i1(2), a(1)=>p_i1(1), a(0)=>p_i1(0), b(7)=>p_i2(7), b(6)=>
      p_i2(6), b(5)=>p_i2(5), b(4)=>p_i2(4), b(3)=>p_i2(3), b(2)=>p_i2(2), 
      b(1)=>p_i2(1), b(0)=>p_i2(0), d(7)=>p13_0n0s2(0), d(6)=>p13_0n0s2(1), 
      d(5)=>p13_0n0s2(2), d(4)=>p13_0n0s2(3), d(3)=>p13_0n0s2(4), d(2)=>
      p13_0n0s2(5), d(1)=>p13_0n0s2(6), d(0)=>p13_0n0s2(7), cout=>
      p13_0n0s2(8));
   p13_add9_3 : add_9u_9u_9u_0_0 port map ( cin=>debug_num_1(11), a(8)=>
      debug_num_1(11), a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(0), a(5)=>
      p13_0n0s2(1), a(4)=>p13_0n0s2(2), a(3)=>p13_0n0s2(3), a(2)=>
      p13_0n0s2(4), a(1)=>p13_0n0s2(5), a(0)=>p13_0n0s2(6), b(8)=>
      p13_0n0s2(8), b(7)=>p13_0n0s2(0), b(6)=>p13_0n0s2(1), b(5)=>
      p13_0n0s2(2), b(4)=>p13_0n0s2(3), b(3)=>p13_0n0s2(4), b(2)=>
      p13_0n0s2(5), b(1)=>p13_0n0s2(6), b(0)=>p13_0n0s2(7), d(8)=>p13(1), 
      d(7)=>p13(2), d(6)=>p13(3), d(5)=>p13(4), d(4)=>p13(5), d(3)=>p13(6), 
      d(2)=>p13(7), d(1)=>p13(8), d(0)=>p13(9), cout=>p13(10));
   p4s_0n0s1_12 <= NOT (rtlc0n265 XOR debug_num_0(12)) ;
   rtlceq_s5_eq_42 : eq_14u_14u port map ( a(13)=>p43(13), a(12)=>p43(12), 
      a(11)=>p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>
      p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>
      p43(2), a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>
      prev_max(12), b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>
      prev_max(9), b(8)=>prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), 
      b(5)=>prev_max(5), b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>
      prev_max(2), b(1)=>prev_max(1), b(0)=>prev_max(0), d=>rtlcs1);
   DFFPC (p13(10),debug_num_1(11),debug_num_1(11),p_i_clock,p23(10)) ;
   DFFPC (p13(1),debug_num_1(11),debug_num_1(11),p_i_clock,p23(9)) ;
   DFFPC (p13(2),debug_num_1(11),debug_num_1(11),p_i_clock,p23(8)) ;
   DFFPC (p13(3),debug_num_1(11),debug_num_1(11),p_i_clock,p23(7)) ;
   DFFPC (p13(4),debug_num_1(11),debug_num_1(11),p_i_clock,p23(6)) ;
   DFFPC (p13(5),debug_num_1(11),debug_num_1(11),p_i_clock,p23(5)) ;
   DFFPC (p13(6),debug_num_1(11),debug_num_1(11),p_i_clock,p23(4)) ;
   DFFPC (p13(7),debug_num_1(11),debug_num_1(11),p_i_clock,p23(3)) ;
   DFFPC (p13(8),debug_num_1(11),debug_num_1(11),p_i_clock,p23(2)) ;
   DFFPC (p13(9),debug_num_1(11),debug_num_1(11),p_i_clock,p23(1)) ;
   DFFPC (p13_0n0s2(7),debug_num_1(11),debug_num_1(11),p_i_clock,p23(0)) ;
   DFFPC (p22_4n0r2(12),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(12)) ;
   DFFPC (p22_4n0r2(11),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(11)) ;
   DFFPC (p22_4n0r2(10),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(10)) ;
   DFFPC (p22_4n0r2(9),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(9)) ;
   DFFPC (p22_4n0r2(8),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(8)) ;
   DFFPC (p22_4n0r2(7),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(7)) ;
   DFFPC (p22_4n0r2(6),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(6)) ;
   DFFPC (p22_4n0r2(5),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(5)) ;
   DFFPC (p22_4n0r2(4),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(4)) ;
   DFFPC (p22_4n0r2(3),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(3)) ;
   DFFPC (p22_4n0r2(2),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(2)) ;
   DFFPC (p22_4n0r2(1),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(1)) ;
   DFFPC (p22_4n0r3_0,debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_4(0)) ;
   DFFPC (p21_4n0r2(12),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(12)) ;
   DFFPC (p21_4n0r2(11),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(11)) ;
   DFFPC (p21_4n0r2(10),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(10)) ;
   DFFPC (p21_4n0r2(9),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(9)) ;
   DFFPC (p21_4n0r2(8),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(8)) ;
   DFFPC (p21_4n0r2(7),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(7)) ;
   DFFPC (p21_4n0r2(6),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(6)) ;
   DFFPC (p21_4n0r2(5),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(5)) ;
   DFFPC (p21_4n0r2(4),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(4)) ;
   DFFPC (p21_4n0r2(3),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(3)) ;
   DFFPC (p21_4n0r2(2),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(2)) ;
   DFFPC (p21_4n0r2(1),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(1)) ;
   DFFPC (p21_4n0r3_0,debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_3(0)) ;
   DFFPC (p23(10),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(10))
    ;
   DFFPC (p23(9),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(9)) ;
   DFFPC (p23(8),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(8)) ;
   DFFPC (p23(7),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(7)) ;
   DFFPC (p23(6),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(6)) ;
   DFFPC (p23(5),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(5)) ;
   DFFPC (p23(4),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(4)) ;
   DFFPC (p23(3),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(3)) ;
   DFFPC (p23(2),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(2)) ;
   DFFPC (p23(1),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(1)) ;
   DFFPC (p23(0),debug_num_1(11),debug_num_1(11),p_i_clock,debug_num_1(0)) ;
   DFFPC (p31_5n1ss1(12),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(12)) ;
   DFFPC (p31_5n1ss1(11),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(11)) ;
   DFFPC (p31_5n1ss1(10),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(10)) ;
   DFFPC (p31_5n1ss1(9),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(9)) ;
   DFFPC (p31_5n1ss1(8),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(8)) ;
   DFFPC (p31_5n1ss1(7),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(7)) ;
   DFFPC (p31_5n1ss1(6),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(6)) ;
   DFFPC (p31_5n1ss1(5),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(5)) ;
   DFFPC (p31_5n1ss1(4),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(4)) ;
   DFFPC (p31_5n1ss1(3),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(3)) ;
   DFFPC (p31_5n1ss1(2),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(2)) ;
   DFFPC (p31_5n1ss1(1),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(1)) ;
   DFFPC (p31_5n1ss1(0),debug_num_1(11),debug_num_1(11),p_i_clock,
   debug_num_0(0)) ;
   DFFPC (not_rtlc5n47,debug_num_1(11),debug_num_1(11),p_i_clock,debug_valid
   ) ;
   DFFPC (debug_valid,debug_num_1(11),debug_num_1(11),p_i_clock,p45) ;
   DFFPC (p4s_0n0s1_12,debug_num_1(11),debug_num_1(11),p_i_clock,p43(12)) ;
   DFFPC (debug_num_2(11),debug_num_1(11),debug_num_1(11),p_i_clock,p43(11))
    ;
   DFFPC (debug_num_2(10),debug_num_1(11),debug_num_1(11),p_i_clock,p43(10))
    ;
   DFFPC (debug_num_2(9),debug_num_1(11),debug_num_1(11),p_i_clock,p43(9)) ;
   DFFPC (debug_num_2(8),debug_num_1(11),debug_num_1(11),p_i_clock,p43(8)) ;
   DFFPC (debug_num_2(7),debug_num_1(11),debug_num_1(11),p_i_clock,p43(7)) ;
   DFFPC (debug_num_2(6),debug_num_1(11),debug_num_1(11),p_i_clock,p43(6)) ;
   DFFPC (debug_num_2(5),debug_num_1(11),debug_num_1(11),p_i_clock,p43(5)) ;
   DFFPC (debug_num_2(4),debug_num_1(11),debug_num_1(11),p_i_clock,p43(4)) ;
   DFFPC (debug_num_2(3),debug_num_1(11),debug_num_1(11),p_i_clock,p43(3)) ;
   DFFPC (debug_num_2(2),debug_num_1(11),debug_num_1(11),p_i_clock,p43(2)) ;
   DFFPC (debug_num_2(1),debug_num_1(11),debug_num_1(11),p_i_clock,p43(1)) ;
   DFFPC (debug_num_2(0),debug_num_1(11),debug_num_1(11),p_i_clock,p43(0)) ;
   DFFPC (tmp_o_edge_7n3ss1,debug_num_1(11),debug_num_1(11),p_i_clock,o_edge
   ) ;
   DFFRSE (debug_num_6,debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,
   debug_num_7) ;
   DFFRSE (p45,debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,max_fwd) ;
   DFFRSE (p43(13),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(13))
    ;
   DFFRSE (p43(12),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(12))
    ;
   DFFRSE (p43(11),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(11))
    ;
   DFFRSE (p43(10),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(10))
    ;
   DFFRSE (p43(9),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(9)) ;
   DFFRSE (p43(8),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(8)) ;
   DFFRSE (p43(7),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(7)) ;
   DFFRSE (p43(6),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(6)) ;
   DFFRSE (p43(5),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(5)) ;
   DFFRSE (p43(4),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(4)) ;
   DFFRSE (p43(3),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(3)) ;
   DFFRSE (p43(2),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(2)) ;
   DFFRSE (p43(1),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(1)) ;
   DFFRSE (p43(0),debug_num_1(11),rtlc7n47,rtlc1n77,p_i_clock,prev_max(0)) ;
   DFFPCE (rtlcn126,debug_num_1(11),debug_num_1(11),rtlc8n89,p_i_clock,
   max_dir(2)) ;
   DFFPCE (not_rtlcn144,debug_num_1(11),debug_num_1(11),rtlc8n89,p_i_clock,
   max_dir(1)) ;
   DFFPCE (rtlc8_max_dir_D_n12(0),debug_num_1(11),debug_num_1(11),rtlc1n77,
   p_i_clock,max_dir(0)) ;
   DFFRSE (state_2,debug_num_1(11),p_i_reset,p40,p_i_clock,state_3) ;
   DFFRSE (state(1),debug_num_1(11),p_i_reset,p40,p_i_clock,state_2) ;
   DFFRSE (state_0,debug_num_1(11),p_i_reset,p40,p_i_clock,state(1)) ;
   DFFRSE (state_3,p_i_reset,debug_num_1(11),p40,p_i_clock,state_0) ;
   DFFRSE (debug_num_1(11),rtlc6n130,debug_num_1(11),PWR,p_i_clock,
   debug_num_6) ;
   DFFRSE (not_rtlc0n265,debug_num_0(12),debug_num_1(11),PWR,p_i_clock,
   p43(13)) ;
   DFFRSE (state_3,debug_num_1(11),p_i_reset,PWR,p_i_clock,p_o_valid) ;
   NOT_p12_0 <= NOT p12_0 ;
   p21_sub11_4i4 : sub_10u_10u_10u_0 port map ( cin=>NOT_p12_0, a(9)=>
      p11_2(9), a(8)=>p11_8, a(7)=>p11_7, a(6)=>p11_6, a(5)=>p11_5, a(4)=>
      p11_4, a(3)=>p11_3, a(2)=>p11_2_rename2, a(1)=>p11_1(1), a(0)=>p11_0, 
      b(9)=>debug_num_1(11), b(8)=>p12_2(9), b(7)=>p12_8, b(6)=>p12_7, b(5)
      =>p12_6, b(4)=>p12_5, b(3)=>p12_4, b(2)=>p12_3, b(1)=>p12_2_rename0, 
      b(0)=>p12_1(1), d(9)=>p21_4n0r4(11), d(8)=>p21_4n0r4(10), d(7)=>
      p21_4n0r4(9), d(6)=>p21_4n0r4(8), d(5)=>p21_4n0r4(7), d(4)=>
      p21_4n0r4(6), d(3)=>p21_4n0r4(5), d(2)=>p21_4n0r4(4), d(1)=>
      p21_4n0r4(3), d(0)=>p21_4n0r4(2), cout=>rtlcn864);
   NOT_p11_0 <= NOT p11_0 ;
   p22_sub11_4i6 : sub_10u_10u_10u_0 port map ( cin=>NOT_p11_0, a(9)=>
      p12_2(9), a(8)=>p12_8, a(7)=>p12_7, a(6)=>p12_6, a(5)=>p12_5, a(4)=>
      p12_4, a(3)=>p12_3, a(2)=>p12_2_rename0, a(1)=>p12_1(1), a(0)=>p12_0, 
      b(9)=>debug_num_1(11), b(8)=>p11_2(9), b(7)=>p11_8, b(6)=>p11_7, b(5)
      =>p11_6, b(4)=>p11_5, b(3)=>p11_4, b(2)=>p11_3, b(1)=>p11_2_rename2, 
      b(0)=>p11_1(1), d(9)=>p22_4n0r4(11), d(8)=>p22_4n0r4(10), d(7)=>
      p22_4n0r4(9), d(6)=>p22_4n0r4(8), d(5)=>p22_4n0r4(7), d(4)=>
      p22_4n0r4(6), d(3)=>p22_4n0r4(5), d(2)=>p22_4n0r4(4), d(1)=>
      p22_4n0r4(3), d(0)=>p22_4n0r4(2), cout=>rtlcn945);
   modgen_or_0 : or_5u_5u port map ( a(4)=>debug_num_2(9), a(3)=>
      debug_num_2(10), a(2)=>debug_num_2(11), a(1)=>debug_num_2(12), a(0)=>
      rtlc6n127, d=>rtlc6n128);
   ix259 : shiftregister_with_taps_8_4_1 port map ( \in\(7)=>p_i_row(7), 
      \in\(6)=>p_i_row(6), \in\(5)=>p_i_row(5), \in\(4)=>p_i_row(4), \in\(3)
      =>p_i_row(3), \in\(2)=>p_i_row(2), \in\(1)=>p_i_row(1), \in\(0)=>
      p_i_row(0), \out\(7)=>p_o_row(7), \out\(6)=>p_o_row(6), \out\(5)=>
      p_o_row(5), \out\(4)=>p_o_row(4), \out\(3)=>p_o_row(3), \out\(2)=>
      p_o_row(2), \out\(1)=>p_o_row(1), \out\(0)=>p_o_row(0), tap_out(7)=>
      DANGLING(2), tap_out(6)=>DANGLING(3), tap_out(5)=>DANGLING(4), 
      tap_out(4)=>DANGLING(5), tap_out(3)=>DANGLING(6), tap_out(2)=>DANGLING
      (7), tap_out(1)=>DANGLING(8), tap_out(0)=>DANGLING(9), clk=>p_i_clock, 
      clken=>DANGLING(10), reset=>debug_num_1(11), set=>debug_num_1(11));
   ix260 : shiftregister_with_taps_2_4_1 port map ( \in\(1)=>p_i_mode(1), 
      \in\(0)=>p_i_mode(0), \out\(1)=>p5m(1), \out\(0)=>p5m(0), tap_out(1)=>
      DANGLING(11), tap_out(0)=>DANGLING(12), clk=>p_i_clock, clken=>
      DANGLING(13), reset=>debug_num_1(11), set=>debug_num_1(11));
   ix261 : shiftregister_with_taps_1_3_1 port map ( \in\=>p_i_valid_ix261, 
      \out\(0)=>p40, tap_out(0)=>DANGLING(14), clk=>p_i_clock, clken=>
      DANGLING(15), reset=>debug_num_1(11), set=>debug_num_1(11));
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
      debug_column : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_valid : OUT std_logic ;
      debug_num_0 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (12 DOWNTO 0) ;
      debug_num_6 : OUT std_logic ;
      debug_num_7 : OUT std_logic ;
      debug_num_8 : OUT std_logic) ;
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
   component flow_notri
      port (
         p_i_valid_ix261 : IN std_logic_vector (0 DOWNTO 0) ;
         p_i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_i_row : IN std_logic_vector (7 DOWNTO 0) ;
         p_o_valid : OUT std_logic ;
         p_debug_valid : OUT std_logic ;
         p_i_clock : IN std_logic ;
         p_i2 : IN std_logic_vector (7 DOWNTO 0) ;
         p_i1 : IN std_logic_vector (7 DOWNTO 0) ;
         p_b3 : IN std_logic_vector (7 DOWNTO 0) ;
         p_b2 : IN std_logic_vector (7 DOWNTO 0) ;
         p_b1 : IN std_logic_vector (7 DOWNTO 0) ;
         p_t3 : IN std_logic_vector (7 DOWNTO 0) ;
         p_t2 : IN std_logic_vector (7 DOWNTO 0) ;
         p_t1 : IN std_logic_vector (7 DOWNTO 0) ;
         p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         p_o_edge : OUT std_logic ;
         p_debug_num_6 : OUT std_logic ;
         p_debug_num_7 : OUT std_logic ;
         p_debug_num_3 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_debug_num_4 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_i_reset : IN std_logic ;
         p_debug_num_2 : OUT std_logic_vector (12 DOWNTO 0) ;
         p_debug_num_1 : OUT std_logic_vector (10 DOWNTO 0) ;
         p_debug_num_0 : OUT std_logic_vector (12 DOWNTO 0)) ;
   
   end component ;
   signal o_mode_1_EXMPLR338: std_logic ;
   
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
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_o_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal f_i_mode_next: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_17_EXMPLR435, not_rtlcs0, rtlc11n27, rtlc12n25, 
      rtlc13n187, rtlc13n197, rtlcs0, rtlcs1, rtlcs2, not_f_state_3, 
      not_f_state_2, not_f_state_1: std_logic ;
   
   signal o_image0_0_EXMPLR519: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR520: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR521: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR522: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR524: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR525: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR526: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR527: std_logic_vector (7 DOWNTO 0) ;

begin
   o_mode(1) <= o_mode_1_EXMPLR338 ;
   o_image0_0(7) <= o_image0_0_EXMPLR519(7) ;
   o_image0_0(6) <= o_image0_0_EXMPLR519(6) ;
   o_image0_0(5) <= o_image0_0_EXMPLR519(5) ;
   o_image0_0(4) <= o_image0_0_EXMPLR519(4) ;
   o_image0_0(3) <= o_image0_0_EXMPLR519(3) ;
   o_image0_0(2) <= o_image0_0_EXMPLR519(2) ;
   o_image0_0(1) <= o_image0_0_EXMPLR519(1) ;
   o_image0_0(0) <= o_image0_0_EXMPLR519(0) ;
   o_image0_1(7) <= o_image0_1_EXMPLR520(7) ;
   o_image0_1(6) <= o_image0_1_EXMPLR520(6) ;
   o_image0_1(5) <= o_image0_1_EXMPLR520(5) ;
   o_image0_1(4) <= o_image0_1_EXMPLR520(4) ;
   o_image0_1(3) <= o_image0_1_EXMPLR520(3) ;
   o_image0_1(2) <= o_image0_1_EXMPLR520(2) ;
   o_image0_1(1) <= o_image0_1_EXMPLR520(1) ;
   o_image0_1(0) <= o_image0_1_EXMPLR520(0) ;
   o_image0_2(7) <= o_image0_2_EXMPLR521(7) ;
   o_image0_2(6) <= o_image0_2_EXMPLR521(6) ;
   o_image0_2(5) <= o_image0_2_EXMPLR521(5) ;
   o_image0_2(4) <= o_image0_2_EXMPLR521(4) ;
   o_image0_2(3) <= o_image0_2_EXMPLR521(3) ;
   o_image0_2(2) <= o_image0_2_EXMPLR521(2) ;
   o_image0_2(1) <= o_image0_2_EXMPLR521(1) ;
   o_image0_2(0) <= o_image0_2_EXMPLR521(0) ;
   o_image1_0(7) <= o_image1_0_EXMPLR522(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR522(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR522(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR522(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR522(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR522(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR522(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR522(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR524(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR524(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR524(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR524(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR524(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR524(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR524(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR524(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR525(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR525(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR525(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR525(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR525(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR525(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR525(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR525(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR526(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR526(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR526(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR526(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR526(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR526(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR526(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR526(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR527(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR527(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR527(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR527(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR527(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR527(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR527(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR527(0) ;
   debug_led_red(17) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(16) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(15) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(14) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(13) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(12) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(11) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(10) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(9) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(8) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(7) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(6) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(5) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(4) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(3) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(2) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(1) <= debug_led_red_17_EXMPLR435 ;
   debug_led_red(0) <= debug_led_red_17_EXMPLR435 ;
   debug_led_grn(5) <= debug_led_red_17_EXMPLR435 ;
   debug_led_grn(4) <= debug_led_red_17_EXMPLR435 ;
   debug_led_grn(3) <= debug_led_red_17_EXMPLR435 ;
   debug_led_grn(2) <= debug_led_red_17_EXMPLR435 ;
   debug_led_grn(1) <= debug_led_red_17_EXMPLR435 ;
   debug_led_grn(0) <= debug_led_red_17_EXMPLR435 ;
   debug_num_1(12) <= debug_led_red_17_EXMPLR435 ;
   debug_num_1(11) <= debug_led_red_17_EXMPLR435 ;
   debug_num_8 <= debug_led_red_17_EXMPLR435 ;
   debug_led_red_17_EXMPLR435 <= '0' ;
   u_memory : memory port map ( i_valid=>i_valid, i_reset=>i_reset, 
      i_pixel(7)=>i_pixel(7), i_pixel(6)=>i_pixel(6), i_pixel(5)=>i_pixel(5), 
      i_pixel(4)=>i_pixel(4), i_pixel(3)=>i_pixel(3), i_pixel(2)=>i_pixel(2), 
      i_pixel(1)=>i_pixel(1), i_pixel(0)=>i_pixel(0), i_clock=>i_clock, 
      o_valid=>m_o_valid, o_mode(1)=>m_o_mode(1), o_mode(0)=>m_o_mode(0), 
      o_column(7)=>debug_column(7), o_column(6)=>debug_column(6), 
      o_column(5)=>debug_column(5), o_column(4)=>debug_column(4), 
      o_column(3)=>debug_column(3), o_column(2)=>debug_column(2), 
      o_column(1)=>debug_column(1), o_column(0)=>debug_column(0), o_row(7)=>
      m_o_row(7), o_row(6)=>m_o_row(6), o_row(5)=>m_o_row(5), o_row(4)=>
      m_o_row(4), o_row(3)=>m_o_row(3), o_row(2)=>m_o_row(2), o_row(1)=>
      m_o_row(1), o_row(0)=>m_o_row(0), o_image0_0(7)=>
      o_image0_0_EXMPLR519(7), o_image0_0(6)=>o_image0_0_EXMPLR519(6), 
      o_image0_0(5)=>o_image0_0_EXMPLR519(5), o_image0_0(4)=>
      o_image0_0_EXMPLR519(4), o_image0_0(3)=>o_image0_0_EXMPLR519(3), 
      o_image0_0(2)=>o_image0_0_EXMPLR519(2), o_image0_0(1)=>
      o_image0_0_EXMPLR519(1), o_image0_0(0)=>o_image0_0_EXMPLR519(0), 
      o_image0_1(7)=>o_image0_1_EXMPLR520(7), o_image0_1(6)=>
      o_image0_1_EXMPLR520(6), o_image0_1(5)=>o_image0_1_EXMPLR520(5), 
      o_image0_1(4)=>o_image0_1_EXMPLR520(4), o_image0_1(3)=>
      o_image0_1_EXMPLR520(3), o_image0_1(2)=>o_image0_1_EXMPLR520(2), 
      o_image0_1(1)=>o_image0_1_EXMPLR520(1), o_image0_1(0)=>
      o_image0_1_EXMPLR520(0), o_image0_2(7)=>o_image0_2_EXMPLR521(7), 
      o_image0_2(6)=>o_image0_2_EXMPLR521(6), o_image0_2(5)=>
      o_image0_2_EXMPLR521(5), o_image0_2(4)=>o_image0_2_EXMPLR521(4), 
      o_image0_2(3)=>o_image0_2_EXMPLR521(3), o_image0_2(2)=>
      o_image0_2_EXMPLR521(2), o_image0_2(1)=>o_image0_2_EXMPLR521(1), 
      o_image0_2(0)=>o_image0_2_EXMPLR521(0), o_image1_0(7)=>
      o_image1_0_EXMPLR522(7), o_image1_0(6)=>o_image1_0_EXMPLR522(6), 
      o_image1_0(5)=>o_image1_0_EXMPLR522(5), o_image1_0(4)=>
      o_image1_0_EXMPLR522(4), o_image1_0(3)=>o_image1_0_EXMPLR522(3), 
      o_image1_0(2)=>o_image1_0_EXMPLR522(2), o_image1_0(1)=>
      o_image1_0_EXMPLR522(1), o_image1_0(0)=>o_image1_0_EXMPLR522(0), 
      o_image1_1(7)=>o_image1_1(7), o_image1_1(6)=>o_image1_1(6), 
      o_image1_1(5)=>o_image1_1(5), o_image1_1(4)=>o_image1_1(4), 
      o_image1_1(3)=>o_image1_1(3), o_image1_1(2)=>o_image1_1(2), 
      o_image1_1(1)=>o_image1_1(1), o_image1_1(0)=>o_image1_1(0), 
      o_image1_2(7)=>o_image1_2_EXMPLR524(7), o_image1_2(6)=>
      o_image1_2_EXMPLR524(6), o_image1_2(5)=>o_image1_2_EXMPLR524(5), 
      o_image1_2(4)=>o_image1_2_EXMPLR524(4), o_image1_2(3)=>
      o_image1_2_EXMPLR524(3), o_image1_2(2)=>o_image1_2_EXMPLR524(2), 
      o_image1_2(1)=>o_image1_2_EXMPLR524(1), o_image1_2(0)=>
      o_image1_2_EXMPLR524(0), o_image2_0(7)=>o_image2_0_EXMPLR525(7), 
      o_image2_0(6)=>o_image2_0_EXMPLR525(6), o_image2_0(5)=>
      o_image2_0_EXMPLR525(5), o_image2_0(4)=>o_image2_0_EXMPLR525(4), 
      o_image2_0(3)=>o_image2_0_EXMPLR525(3), o_image2_0(2)=>
      o_image2_0_EXMPLR525(2), o_image2_0(1)=>o_image2_0_EXMPLR525(1), 
      o_image2_0(0)=>o_image2_0_EXMPLR525(0), o_image2_1(7)=>
      o_image2_1_EXMPLR526(7), o_image2_1(6)=>o_image2_1_EXMPLR526(6), 
      o_image2_1(5)=>o_image2_1_EXMPLR526(5), o_image2_1(4)=>
      o_image2_1_EXMPLR526(4), o_image2_1(3)=>o_image2_1_EXMPLR526(3), 
      o_image2_1(2)=>o_image2_1_EXMPLR526(2), o_image2_1(1)=>
      o_image2_1_EXMPLR526(1), o_image2_1(0)=>o_image2_1_EXMPLR526(0), 
      o_image2_2(7)=>o_image2_2_EXMPLR527(7), o_image2_2(6)=>
      o_image2_2_EXMPLR527(6), o_image2_2(5)=>o_image2_2_EXMPLR527(5), 
      o_image2_2(4)=>o_image2_2_EXMPLR527(4), o_image2_2(3)=>
      o_image2_2_EXMPLR527(3), o_image2_2(2)=>o_image2_2_EXMPLR527(2), 
      o_image2_2(1)=>o_image2_2_EXMPLR527(1), o_image2_2(0)=>
      o_image2_2_EXMPLR527(0));
   rtlc11n27 <= m_o_valid OR not_rtlcs0 ;
   o_mode(0) <= i_reset OR rtlc12n25 ;
   rtlc12n25 <= rtlcs2 OR rtlcs1 ;
   o_mode_1_EXMPLR338 <= NOT i_reset ;
   f_t1(0) <= o_image0_2_EXMPLR521(0) when rtlcs0 = '1' else f_t1_next(0) ;
   f_t1(1) <= o_image0_2_EXMPLR521(1) when rtlcs0 = '1' else f_t1_next(1) ;
   f_t1(2) <= o_image0_2_EXMPLR521(2) when rtlcs0 = '1' else f_t1_next(2) ;
   f_t1(3) <= o_image0_2_EXMPLR521(3) when rtlcs0 = '1' else f_t1_next(3) ;
   f_t1(4) <= o_image0_2_EXMPLR521(4) when rtlcs0 = '1' else f_t1_next(4) ;
   f_t1(5) <= o_image0_2_EXMPLR521(5) when rtlcs0 = '1' else f_t1_next(5) ;
   f_t1(6) <= o_image0_2_EXMPLR521(6) when rtlcs0 = '1' else f_t1_next(6) ;
   f_t1(7) <= o_image0_2_EXMPLR521(7) when rtlcs0 = '1' else f_t1_next(7) ;
   f_t2(0) <= o_image0_1_EXMPLR520(0) when rtlcs0 = '1' else f_t2_next(0) ;
   f_t2(1) <= o_image0_1_EXMPLR520(1) when rtlcs0 = '1' else f_t2_next(1) ;
   f_t2(2) <= o_image0_1_EXMPLR520(2) when rtlcs0 = '1' else f_t2_next(2) ;
   f_t2(3) <= o_image0_1_EXMPLR520(3) when rtlcs0 = '1' else f_t2_next(3) ;
   f_t2(4) <= o_image0_1_EXMPLR520(4) when rtlcs0 = '1' else f_t2_next(4) ;
   f_t2(5) <= o_image0_1_EXMPLR520(5) when rtlcs0 = '1' else f_t2_next(5) ;
   f_t2(6) <= o_image0_1_EXMPLR520(6) when rtlcs0 = '1' else f_t2_next(6) ;
   f_t2(7) <= o_image0_1_EXMPLR520(7) when rtlcs0 = '1' else f_t2_next(7) ;
   f_t3(0) <= o_image0_0_EXMPLR519(0) when rtlcs0 = '1' else f_t3_next(0) ;
   f_t3(1) <= o_image0_0_EXMPLR519(1) when rtlcs0 = '1' else f_t3_next(1) ;
   f_t3(2) <= o_image0_0_EXMPLR519(2) when rtlcs0 = '1' else f_t3_next(2) ;
   f_t3(3) <= o_image0_0_EXMPLR519(3) when rtlcs0 = '1' else f_t3_next(3) ;
   f_t3(4) <= o_image0_0_EXMPLR519(4) when rtlcs0 = '1' else f_t3_next(4) ;
   f_t3(5) <= o_image0_0_EXMPLR519(5) when rtlcs0 = '1' else f_t3_next(5) ;
   f_t3(6) <= o_image0_0_EXMPLR519(6) when rtlcs0 = '1' else f_t3_next(6) ;
   f_t3(7) <= o_image0_0_EXMPLR519(7) when rtlcs0 = '1' else f_t3_next(7) ;
   f_b1(0) <= o_image2_0_EXMPLR525(0) when rtlcs0 = '1' else f_b1_next(0) ;
   f_b1(1) <= o_image2_0_EXMPLR525(1) when rtlcs0 = '1' else f_b1_next(1) ;
   f_b1(2) <= o_image2_0_EXMPLR525(2) when rtlcs0 = '1' else f_b1_next(2) ;
   f_b1(3) <= o_image2_0_EXMPLR525(3) when rtlcs0 = '1' else f_b1_next(3) ;
   f_b1(4) <= o_image2_0_EXMPLR525(4) when rtlcs0 = '1' else f_b1_next(4) ;
   f_b1(5) <= o_image2_0_EXMPLR525(5) when rtlcs0 = '1' else f_b1_next(5) ;
   f_b1(6) <= o_image2_0_EXMPLR525(6) when rtlcs0 = '1' else f_b1_next(6) ;
   f_b1(7) <= o_image2_0_EXMPLR525(7) when rtlcs0 = '1' else f_b1_next(7) ;
   f_b2(0) <= o_image2_1_EXMPLR526(0) when rtlcs0 = '1' else f_b2_next(0) ;
   f_b2(1) <= o_image2_1_EXMPLR526(1) when rtlcs0 = '1' else f_b2_next(1) ;
   f_b2(2) <= o_image2_1_EXMPLR526(2) when rtlcs0 = '1' else f_b2_next(2) ;
   f_b2(3) <= o_image2_1_EXMPLR526(3) when rtlcs0 = '1' else f_b2_next(3) ;
   f_b2(4) <= o_image2_1_EXMPLR526(4) when rtlcs0 = '1' else f_b2_next(4) ;
   f_b2(5) <= o_image2_1_EXMPLR526(5) when rtlcs0 = '1' else f_b2_next(5) ;
   f_b2(6) <= o_image2_1_EXMPLR526(6) when rtlcs0 = '1' else f_b2_next(6) ;
   f_b2(7) <= o_image2_1_EXMPLR526(7) when rtlcs0 = '1' else f_b2_next(7) ;
   f_b3(0) <= o_image2_2_EXMPLR527(0) when rtlcs0 = '1' else f_b3_next(0) ;
   f_b3(1) <= o_image2_2_EXMPLR527(1) when rtlcs0 = '1' else f_b3_next(1) ;
   f_b3(2) <= o_image2_2_EXMPLR527(2) when rtlcs0 = '1' else f_b3_next(2) ;
   f_b3(3) <= o_image2_2_EXMPLR527(3) when rtlcs0 = '1' else f_b3_next(3) ;
   f_b3(4) <= o_image2_2_EXMPLR527(4) when rtlcs0 = '1' else f_b3_next(4) ;
   f_b3(5) <= o_image2_2_EXMPLR527(5) when rtlcs0 = '1' else f_b3_next(5) ;
   f_b3(6) <= o_image2_2_EXMPLR527(6) when rtlcs0 = '1' else f_b3_next(6) ;
   f_b3(7) <= o_image2_2_EXMPLR527(7) when rtlcs0 = '1' else f_b3_next(7) ;
   f_i1(0) <= o_image1_0_EXMPLR522(0) when rtlcs0 = '1' else f_i1_next(0) ;
   f_i1(1) <= o_image1_0_EXMPLR522(1) when rtlcs0 = '1' else f_i1_next(1) ;
   f_i1(2) <= o_image1_0_EXMPLR522(2) when rtlcs0 = '1' else f_i1_next(2) ;
   f_i1(3) <= o_image1_0_EXMPLR522(3) when rtlcs0 = '1' else f_i1_next(3) ;
   f_i1(4) <= o_image1_0_EXMPLR522(4) when rtlcs0 = '1' else f_i1_next(4) ;
   f_i1(5) <= o_image1_0_EXMPLR522(5) when rtlcs0 = '1' else f_i1_next(5) ;
   f_i1(6) <= o_image1_0_EXMPLR522(6) when rtlcs0 = '1' else f_i1_next(6) ;
   f_i1(7) <= o_image1_0_EXMPLR522(7) when rtlcs0 = '1' else f_i1_next(7) ;
   f_i2(0) <= o_image1_2_EXMPLR524(0) when rtlcs0 = '1' else f_i2_next(0) ;
   f_i2(1) <= o_image1_2_EXMPLR524(1) when rtlcs0 = '1' else f_i2_next(1) ;
   f_i2(2) <= o_image1_2_EXMPLR524(2) when rtlcs0 = '1' else f_i2_next(2) ;
   f_i2(3) <= o_image1_2_EXMPLR524(3) when rtlcs0 = '1' else f_i2_next(3) ;
   f_i2(4) <= o_image1_2_EXMPLR524(4) when rtlcs0 = '1' else f_i2_next(4) ;
   f_i2(5) <= o_image1_2_EXMPLR524(5) when rtlcs0 = '1' else f_i2_next(5) ;
   f_i2(6) <= o_image1_2_EXMPLR524(6) when rtlcs0 = '1' else f_i2_next(6) ;
   f_i2(7) <= o_image1_2_EXMPLR524(7) when rtlcs0 = '1' else f_i2_next(7) ;
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
   rtlc_337_and_43 : and_3u_3u port map ( a(2)=>o_mode_1_EXMPLR338, a(1)=>
      rtlcs0, a(0)=>rtlc11n27, d=>rtlc13n197);
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc13n187 <= o_mode_1_EXMPLR338 AND rtlc11n27 ;
   not_f_state_3 <= NOT f_state(3) ;
   not_f_state_2 <= NOT f_state(2) ;
   not_f_state_1 <= NOT f_state(1) ;
   rtlc_344_and_44 : and_4u_4u port map ( a(3)=>not_f_state_3, a(2)=>
      not_f_state_2, a(1)=>not_f_state_1, a(0)=>f_state(0), d=>rtlcs0);
   rtlcs2 <= f_o_mode(1) AND f_o_mode(0) ;
   rtlcs1 <= m_o_mode(1) AND m_o_mode(0) ;
   DFFPCE (m_o_row(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(7)) ;
   DFFPCE (m_o_row(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(6)) ;
   DFFPCE (m_o_row(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(5)) ;
   DFFPCE (m_o_row(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(4)) ;
   DFFPCE (m_o_row(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(3)) ;
   DFFPCE (m_o_row(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(2)) ;
   DFFPCE (m_o_row(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(1)) ;
   DFFPCE (m_o_row(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_row_next(0)) ;
   DFFPCE (m_o_mode(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_mode_next(1)) ;
   DFFPCE (m_o_mode(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n197,i_clock,f_i_mode_next(0)) ;
   DFFPCE (f_t1(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(7)) ;
   DFFPCE (f_t1(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(6)) ;
   DFFPCE (f_t1(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(5)) ;
   DFFPCE (f_t1(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(4)) ;
   DFFPCE (f_t1(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(3)) ;
   DFFPCE (f_t1(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(2)) ;
   DFFPCE (f_t1(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(1)) ;
   DFFPCE (f_t1(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i2_next(0)) ;
   DFFPCE (f_b1(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(7)) ;
   DFFPCE (f_b1(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(6)) ;
   DFFPCE (f_b1(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(5)) ;
   DFFPCE (f_b1(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(4)) ;
   DFFPCE (f_b1(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(3)) ;
   DFFPCE (f_b1(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(2)) ;
   DFFPCE (f_b1(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(1)) ;
   DFFPCE (f_b1(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_i1_next(0)) ;
   DFFPCE (f_i2(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(7)) ;
   DFFPCE (f_i2(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(6)) ;
   DFFPCE (f_i2(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(5)) ;
   DFFPCE (f_i2(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(4)) ;
   DFFPCE (f_i2(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(3)) ;
   DFFPCE (f_i2(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(2)) ;
   DFFPCE (f_i2(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(1)) ;
   DFFPCE (f_i2(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b3_next(0)) ;
   DFFPCE (f_b3(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(7)) ;
   DFFPCE (f_b3(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(6)) ;
   DFFPCE (f_b3(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(5)) ;
   DFFPCE (f_b3(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(4)) ;
   DFFPCE (f_b3(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(3)) ;
   DFFPCE (f_b3(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(2)) ;
   DFFPCE (f_b3(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(1)) ;
   DFFPCE (f_b3(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b2_next(0)) ;
   DFFPCE (f_b2(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(7)) ;
   DFFPCE (f_b2(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(6)) ;
   DFFPCE (f_b2(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(5)) ;
   DFFPCE (f_b2(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(4)) ;
   DFFPCE (f_b2(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(3)) ;
   DFFPCE (f_b2(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(2)) ;
   DFFPCE (f_b2(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(1)) ;
   DFFPCE (f_b2(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_b1_next(0)) ;
   DFFPCE (f_i1(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(7)) ;
   DFFPCE (f_i1(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(6)) ;
   DFFPCE (f_i1(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(5)) ;
   DFFPCE (f_i1(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(4)) ;
   DFFPCE (f_i1(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(3)) ;
   DFFPCE (f_i1(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(2)) ;
   DFFPCE (f_i1(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(1)) ;
   DFFPCE (f_i1(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t3_next(0)) ;
   DFFPCE (f_t3(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(7)) ;
   DFFPCE (f_t3(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(6)) ;
   DFFPCE (f_t3(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(5)) ;
   DFFPCE (f_t3(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(4)) ;
   DFFPCE (f_t3(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(3)) ;
   DFFPCE (f_t3(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(2)) ;
   DFFPCE (f_t3(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(1)) ;
   DFFPCE (f_t3(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t2_next(0)) ;
   DFFPCE (f_t2(7),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(7)) ;
   DFFPCE (f_t2(6),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(6)) ;
   DFFPCE (f_t2(5),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(5)) ;
   DFFPCE (f_t2(4),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(4)) ;
   DFFPCE (f_t2(3),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(3)) ;
   DFFPCE (f_t2(2),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(2)) ;
   DFFPCE (f_t2(1),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(1)) ;
   DFFPCE (f_t2(0),debug_led_red_17_EXMPLR435,debug_led_red_17_EXMPLR435,
   rtlc13n187,i_clock,f_t1_next(0)) ;
   DFFRSE (f_state(2),debug_led_red_17_EXMPLR435,i_reset,rtlc11n27,i_clock,
   f_state(3)) ;
   DFFRSE (f_state(1),debug_led_red_17_EXMPLR435,i_reset,rtlc11n27,i_clock,
   f_state(2)) ;
   DFFRSE (f_state(0),debug_led_red_17_EXMPLR435,i_reset,rtlc11n27,i_clock,
   f_state(1)) ;
   DFFRSE (f_state(3),i_reset,debug_led_red_17_EXMPLR435,rtlc11n27,i_clock,
   f_state(0)) ;
   debug_num_5(0) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(1) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(2) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(3) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(4) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(5) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(6) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(7) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(8) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(9) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(10) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(11) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   debug_num_5(12) <= debug_led_red_17_EXMPLR435 when 
   debug_led_red_17_EXMPLR435 = '1' else 'Z' ;
   u_flow : flow_notri port map ( p_i_valid_ix261(0)=>rtlc11n27, p_i_mode(1)
      =>f_i_mode(1), p_i_mode(0)=>f_i_mode(0), p_o_row(7)=>o_row(7), 
      p_o_row(6)=>o_row(6), p_o_row(5)=>o_row(5), p_o_row(4)=>o_row(4), 
      p_o_row(3)=>o_row(3), p_o_row(2)=>o_row(2), p_o_row(1)=>o_row(1), 
      p_o_row(0)=>o_row(0), p_i_row(7)=>f_i_row(7), p_i_row(6)=>f_i_row(6), 
      p_i_row(5)=>f_i_row(5), p_i_row(4)=>f_i_row(4), p_i_row(3)=>f_i_row(3), 
      p_i_row(2)=>f_i_row(2), p_i_row(1)=>f_i_row(1), p_i_row(0)=>f_i_row(0), 
      p_o_valid=>o_valid, p_debug_valid=>debug_valid, p_i_clock=>i_clock, 
      p_i2(7)=>f_i2(7), p_i2(6)=>f_i2(6), p_i2(5)=>f_i2(5), p_i2(4)=>f_i2(4), 
      p_i2(3)=>f_i2(3), p_i2(2)=>f_i2(2), p_i2(1)=>f_i2(1), p_i2(0)=>f_i2(0), 
      p_i1(7)=>f_i1(7), p_i1(6)=>f_i1(6), p_i1(5)=>f_i1(5), p_i1(4)=>f_i1(4), 
      p_i1(3)=>f_i1(3), p_i1(2)=>f_i1(2), p_i1(1)=>f_i1(1), p_i1(0)=>f_i1(0), 
      p_b3(7)=>f_b3(7), p_b3(6)=>f_b3(6), p_b3(5)=>f_b3(5), p_b3(4)=>f_b3(4), 
      p_b3(3)=>f_b3(3), p_b3(2)=>f_b3(2), p_b3(1)=>f_b3(1), p_b3(0)=>f_b3(0), 
      p_b2(7)=>f_b2(7), p_b2(6)=>f_b2(6), p_b2(5)=>f_b2(5), p_b2(4)=>f_b2(4), 
      p_b2(3)=>f_b2(3), p_b2(2)=>f_b2(2), p_b2(1)=>f_b2(1), p_b2(0)=>f_b2(0), 
      p_b1(7)=>f_b1(7), p_b1(6)=>f_b1(6), p_b1(5)=>f_b1(5), p_b1(4)=>f_b1(4), 
      p_b1(3)=>f_b1(3), p_b1(2)=>f_b1(2), p_b1(1)=>f_b1(1), p_b1(0)=>f_b1(0), 
      p_t3(7)=>f_t3(7), p_t3(6)=>f_t3(6), p_t3(5)=>f_t3(5), p_t3(4)=>f_t3(4), 
      p_t3(3)=>f_t3(3), p_t3(2)=>f_t3(2), p_t3(1)=>f_t3(1), p_t3(0)=>f_t3(0), 
      p_t2(7)=>f_t2(7), p_t2(6)=>f_t2(6), p_t2(5)=>f_t2(5), p_t2(4)=>f_t2(4), 
      p_t2(3)=>f_t2(3), p_t2(2)=>f_t2(2), p_t2(1)=>f_t2(1), p_t2(0)=>f_t2(0), 
      p_t1(7)=>f_t1(7), p_t1(6)=>f_t1(6), p_t1(5)=>f_t1(5), p_t1(4)=>f_t1(4), 
      p_t1(3)=>f_t1(3), p_t1(2)=>f_t1(2), p_t1(1)=>f_t1(1), p_t1(0)=>f_t1(0), 
      p_o_mode(1)=>f_o_mode(1), p_o_mode(0)=>f_o_mode(0), p_o_dir(2)=>
      o_dir(2), p_o_dir(1)=>o_dir(1), p_o_dir(0)=>o_dir(0), p_o_edge=>o_edge, 
      p_debug_num_6=>debug_num_6, p_debug_num_7=>debug_num_7, 
      p_debug_num_3(12)=>debug_num_3(12), p_debug_num_3(11)=>debug_num_3(11), 
      p_debug_num_3(10)=>debug_num_3(10), p_debug_num_3(9)=>debug_num_3(9), 
      p_debug_num_3(8)=>debug_num_3(8), p_debug_num_3(7)=>debug_num_3(7), 
      p_debug_num_3(6)=>debug_num_3(6), p_debug_num_3(5)=>debug_num_3(5), 
      p_debug_num_3(4)=>debug_num_3(4), p_debug_num_3(3)=>debug_num_3(3), 
      p_debug_num_3(2)=>debug_num_3(2), p_debug_num_3(1)=>debug_num_3(1), 
      p_debug_num_3(0)=>debug_num_3(0), p_debug_num_4(12)=>debug_num_4(12), 
      p_debug_num_4(11)=>debug_num_4(11), p_debug_num_4(10)=>debug_num_4(10), 
      p_debug_num_4(9)=>debug_num_4(9), p_debug_num_4(8)=>debug_num_4(8), 
      p_debug_num_4(7)=>debug_num_4(7), p_debug_num_4(6)=>debug_num_4(6), 
      p_debug_num_4(5)=>debug_num_4(5), p_debug_num_4(4)=>debug_num_4(4), 
      p_debug_num_4(3)=>debug_num_4(3), p_debug_num_4(2)=>debug_num_4(2), 
      p_debug_num_4(1)=>debug_num_4(1), p_debug_num_4(0)=>debug_num_4(0), 
      p_i_reset=>i_reset, p_debug_num_2(12)=>debug_num_2(12), 
      p_debug_num_2(11)=>debug_num_2(11), p_debug_num_2(10)=>debug_num_2(10), 
      p_debug_num_2(9)=>debug_num_2(9), p_debug_num_2(8)=>debug_num_2(8), 
      p_debug_num_2(7)=>debug_num_2(7), p_debug_num_2(6)=>debug_num_2(6), 
      p_debug_num_2(5)=>debug_num_2(5), p_debug_num_2(4)=>debug_num_2(4), 
      p_debug_num_2(3)=>debug_num_2(3), p_debug_num_2(2)=>debug_num_2(2), 
      p_debug_num_2(1)=>debug_num_2(1), p_debug_num_2(0)=>debug_num_2(0), 
      p_debug_num_1(10)=>debug_num_1(0), p_debug_num_1(9)=>debug_num_1(1), 
      p_debug_num_1(8)=>debug_num_1(2), p_debug_num_1(7)=>debug_num_1(3), 
      p_debug_num_1(6)=>debug_num_1(4), p_debug_num_1(5)=>debug_num_1(5), 
      p_debug_num_1(4)=>debug_num_1(6), p_debug_num_1(3)=>debug_num_1(7), 
      p_debug_num_1(2)=>debug_num_1(8), p_debug_num_1(1)=>debug_num_1(9), 
      p_debug_num_1(0)=>debug_num_1(10), p_debug_num_0(12)=>debug_num_0(12), 
      p_debug_num_0(11)=>debug_num_0(11), p_debug_num_0(10)=>debug_num_0(10), 
      p_debug_num_0(9)=>debug_num_0(9), p_debug_num_0(8)=>debug_num_0(8), 
      p_debug_num_0(7)=>debug_num_0(7), p_debug_num_0(6)=>debug_num_0(6), 
      p_debug_num_0(5)=>debug_num_0(5), p_debug_num_0(4)=>debug_num_0(4), 
      p_debug_num_0(3)=>debug_num_0(3), p_debug_num_0(2)=>debug_num_0(2), 
      p_debug_num_0(1)=>debug_num_0(1), p_debug_num_0(0)=>debug_num_0(0));

end main ;

