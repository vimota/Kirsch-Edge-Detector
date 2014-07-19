
-- 
-- Definition of  kirsch
-- 
--      Sat Jul 19 19:47:10 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_mem_8_8_main_unfold_1280 is 
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
end ram_new_0_mem_8_8_main_unfold_1280 ;

architecture INTERFACE of ram_new_0_mem_8_8_main_unfold_1280 is 
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
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, 
      dup_0_data_7, dup_0_data_6, dup_0_data_5, dup_0_data_4, dup_0_data_3, 
      dup_0_data_2, dup_0_data_1, dup_0_data_0, nx35, nx37: std_logic ;

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
      nx31, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>dup_0_data_7, 
      data(6)=>dup_0_data_6, data(5)=>dup_0_data_5, data(4)=>dup_0_data_4, 
      data(3)=>dup_0_data_3, data(2)=>dup_0_data_2, data(1)=>dup_0_data_1, 
      data(0)=>dup_0_data_0, q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE ;

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

architecture main_unfold_1280 of mem_8_8 is 
   component ram_new_0_mem_8_8_main_unfold_1280
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
   signal GND, nx27: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   GND <= '0' ;
   nx27 <= '1' ;
   mem : ram_new_0_mem_8_8_main_unfold_1280 port map ( wr_data1(7)=>DANGLING
      (0), wr_data1(6)=>DANGLING(1), wr_data1(5)=>DANGLING(2), wr_data1(4)=>
      DANGLING(3), wr_data1(3)=>DANGLING(4), wr_data1(2)=>DANGLING(5), 
      wr_data1(1)=>DANGLING(6), wr_data1(0)=>DANGLING(7), rd_data1(7)=>q(7), 
      rd_data1(6)=>q(6), rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>
      q(3), rd_data1(2)=>q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), 
      addr1(7)=>address(7), addr1(6)=>address(6), addr1(5)=>address(5), 
      addr1(4)=>address(4), addr1(3)=>address(3), addr1(2)=>address(2), 
      addr1(1)=>address(1), addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>
      clock, wr_ena1=>GND, rd_ena1=>nx27, ena1=>nx27, rst1=>GND, regce1=>
      nx27);
end main_unfold_1280 ;

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
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      o_pixel : OUT std_logic_vector (7 DOWNTO 0)) ;
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
   signal o_column_EXMPLR99: std_logic_vector (7 DOWNTO 0) ;
   
   signal first_bubble, PWR, o_image2_2_6_EXMPLR98, rtlc0n88, not_rtlc0n88, 
      not_first_bubble, rtlc0n164, not_rtlc0n164, rtlc0n175, not_rtlc0n175: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   o_column(7) <= o_column_EXMPLR99(7) ;
   o_column(6) <= o_column_EXMPLR99(6) ;
   o_column(5) <= o_column_EXMPLR99(5) ;
   o_column(4) <= o_column_EXMPLR99(4) ;
   o_column(3) <= o_column_EXMPLR99(3) ;
   o_column(2) <= o_column_EXMPLR99(2) ;
   o_column(1) <= o_column_EXMPLR99(1) ;
   o_column(0) <= o_column_EXMPLR99(0) ;
   o_image0_0(7) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(6) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(5) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(4) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(3) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(2) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(1) <= o_image2_2_6_EXMPLR98 ;
   o_image0_0(0) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(7) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(6) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(5) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(4) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(3) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(2) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(1) <= o_image2_2_6_EXMPLR98 ;
   o_image0_1(0) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(7) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(6) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(5) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(4) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(3) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(2) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(1) <= o_image2_2_6_EXMPLR98 ;
   o_image0_2(0) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(7) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(6) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(5) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(4) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(3) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(2) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(1) <= o_image2_2_6_EXMPLR98 ;
   o_image1_0(0) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(7) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(6) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(5) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(4) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(3) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(2) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(1) <= o_image2_2_6_EXMPLR98 ;
   o_image1_1(0) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(7) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(6) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(5) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(4) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(3) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(2) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(1) <= o_image2_2_6_EXMPLR98 ;
   o_image1_2(0) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(7) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(6) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(5) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(4) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(3) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(2) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(1) <= o_image2_2_6_EXMPLR98 ;
   o_image2_0(0) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(7) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(6) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(5) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(4) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(3) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(2) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(1) <= o_image2_2_6_EXMPLR98 ;
   o_image2_1(0) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(7) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(6) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(5) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(4) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(3) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(2) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(1) <= o_image2_2_6_EXMPLR98 ;
   o_image2_2(0) <= o_image2_2_6_EXMPLR98 ;
   PWR <= '1' ;
   o_image2_2_6_EXMPLR98 <= '0' ;
   u_mem1 : mem_8_8 port map ( address(7)=>o_column_EXMPLR99(7), address(6)
      =>o_column_EXMPLR99(6), address(5)=>o_column_EXMPLR99(5), address(4)=>
      o_column_EXMPLR99(4), address(3)=>o_column_EXMPLR99(3), address(2)=>
      o_column_EXMPLR99(2), address(1)=>o_column_EXMPLR99(1), address(0)=>
      o_column_EXMPLR99(0), clock=>i_clock, data(7)=>o_image2_2_6_EXMPLR98, 
      data(6)=>o_image2_2_6_EXMPLR98, data(5)=>o_image2_2_6_EXMPLR98, 
      data(4)=>o_image2_2_6_EXMPLR98, data(3)=>o_image2_2_6_EXMPLR98, 
      data(2)=>o_image2_2_6_EXMPLR98, data(1)=>o_image2_2_6_EXMPLR98, 
      data(0)=>o_image2_2_6_EXMPLR98, wren=>o_image2_2_6_EXMPLR98, q(7)=>
      o_pixel(7), q(6)=>o_pixel(6), q(5)=>o_pixel(5), q(4)=>o_pixel(4), q(3)
      =>o_pixel(3), q(2)=>o_pixel(2), q(1)=>o_pixel(1), q(0)=>o_pixel(0));
   rtlc0n175 <= i_valid OR not_first_bubble ;
   not_rtlc0n175 <= NOT rtlc0n175 ;
   not_rtlc0n164 <= NOT rtlc0n164 ;
   not_first_bubble <= NOT first_bubble ;
   not_rtlc0n88 <= NOT rtlc0n88 ;
   rtlc_60_or_0 : or_3u_3u port map ( a(2)=>i_valid, a(1)=>not_rtlc0n88, 
      a(0)=>not_first_bubble, d=>rtlc0n164);
   rtlc_84_and_1 : and_8u_8u port map ( a(7)=>o_column_EXMPLR99(7), a(6)=>
      o_column_EXMPLR99(6), a(5)=>o_column_EXMPLR99(5), a(4)=>
      o_column_EXMPLR99(4), a(3)=>o_column_EXMPLR99(3), a(2)=>
      o_column_EXMPLR99(2), a(1)=>o_column_EXMPLR99(1), a(0)=>
      o_column_EXMPLR99(0), d=>rtlc0n88);
   modgen_counter_o_row : counter_up_cnt_en_clock_0_8 port map ( clock=>
      i_clock, q(7)=>o_row(7), q(6)=>o_row(6), q(5)=>o_row(5), q(4)=>
      o_row(4), q(3)=>o_row(3), q(2)=>o_row(2), q(1)=>o_row(1), q(0)=>
      o_row(0), clk_en=>PWR, aclear=>o_image2_2_6_EXMPLR98, sload=>
      o_image2_2_6_EXMPLR98, data(7)=>DANGLING(0), data(6)=>DANGLING(1), 
      data(5)=>DANGLING(2), data(4)=>DANGLING(3), data(3)=>DANGLING(4), 
      data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>DANGLING(7), aset
      =>o_image2_2_6_EXMPLR98, sclear=>o_image2_2_6_EXMPLR98, updn=>PWR, 
      cnt_en=>not_rtlc0n164);
   modgen_counter_o_column : counter_up_sclear_clock_clk_en_0_8 port map ( 
      clock=>i_clock, q(7)=>o_column_EXMPLR99(7), q(6)=>o_column_EXMPLR99(6), 
      q(5)=>o_column_EXMPLR99(5), q(4)=>o_column_EXMPLR99(4), q(3)=>
      o_column_EXMPLR99(3), q(2)=>o_column_EXMPLR99(2), q(1)=>
      o_column_EXMPLR99(1), q(0)=>o_column_EXMPLR99(0), clk_en=>
      not_rtlc0n175, aclear=>o_image2_2_6_EXMPLR98, sload=>
      o_image2_2_6_EXMPLR98, data(7)=>DANGLING(8), data(6)=>DANGLING(9), 
      data(5)=>DANGLING(10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), 
      data(2)=>DANGLING(13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), 
      aset=>o_image2_2_6_EXMPLR98, sclear=>rtlc0n88, updn=>PWR, cnt_en=>PWR
   );
   DFFPC (i_valid,o_image2_2_6_EXMPLR98,o_image2_2_6_EXMPLR98,i_clock,
   first_bubble) ;
end main_unfold_1492 ;

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
      o_pixel : OUT std_logic_vector (7 DOWNTO 0) ;
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
         o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
         o_pixel : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal debug_num_5_1_EXMPLR135, debug_num_5_0_EXMPLR136: std_logic ;
   
   signal DANGLING : std_logic_vector (71 downto 0 );

begin
   o_image0_0(7) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(6) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(5) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(4) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(3) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(2) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(1) <= debug_num_5_0_EXMPLR136 ;
   o_image0_0(0) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(7) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(6) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(5) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(4) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(3) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(2) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(1) <= debug_num_5_0_EXMPLR136 ;
   o_image0_1(0) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(7) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(6) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(5) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(4) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(3) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(2) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(1) <= debug_num_5_0_EXMPLR136 ;
   o_image0_2(0) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(7) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(6) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(5) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(4) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(3) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(2) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(1) <= debug_num_5_0_EXMPLR136 ;
   o_image1_0(0) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(7) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(6) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(5) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(4) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(3) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(2) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(1) <= debug_num_5_0_EXMPLR136 ;
   o_image1_1(0) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(7) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(6) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(5) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(4) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(3) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(2) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(1) <= debug_num_5_0_EXMPLR136 ;
   o_image1_2(0) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(7) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(6) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(5) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(4) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(3) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(2) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(1) <= debug_num_5_0_EXMPLR136 ;
   o_image2_0(0) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(7) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(6) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(5) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(4) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(3) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(2) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(1) <= debug_num_5_0_EXMPLR136 ;
   o_image2_1(0) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(7) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(6) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(5) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(4) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(3) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(2) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(1) <= debug_num_5_0_EXMPLR136 ;
   o_image2_2(0) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR136 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR136 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR136 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR136 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR136 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR136 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR136 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR136 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR136 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR135 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR135 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR135 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR136 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR136 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR135 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR136 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR136 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR136 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR135 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR135 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR135 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR135 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR135 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR136 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR135 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR135 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR136 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR136 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR135 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR135 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR135 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR136 ;
   debug_num_5_1_EXMPLR135 <= '1' ;
   debug_num_5_0_EXMPLR136 <= '0' ;
   u_memory : memory port map ( i_valid=>i_valid, i_reset=>
      debug_num_5_0_EXMPLR136, i_pixel(7)=>debug_num_5_0_EXMPLR136, 
      i_pixel(6)=>debug_num_5_0_EXMPLR136, i_pixel(5)=>
      debug_num_5_0_EXMPLR136, i_pixel(4)=>debug_num_5_0_EXMPLR136, 
      i_pixel(3)=>debug_num_5_0_EXMPLR136, i_pixel(2)=>
      debug_num_5_0_EXMPLR136, i_pixel(1)=>debug_num_5_0_EXMPLR136, 
      i_pixel(0)=>debug_num_5_0_EXMPLR136, i_clock=>i_clock, o_column(7)=>
      o_column(7), o_column(6)=>o_column(6), o_column(5)=>o_column(5), 
      o_column(4)=>o_column(4), o_column(3)=>o_column(3), o_column(2)=>
      o_column(2), o_column(1)=>o_column(1), o_column(0)=>o_column(0), 
      o_row(7)=>o_row(7), o_row(6)=>o_row(6), o_row(5)=>o_row(5), o_row(4)=>
      o_row(4), o_row(3)=>o_row(3), o_row(2)=>o_row(2), o_row(1)=>o_row(1), 
      o_row(0)=>o_row(0), o_image0_0(7)=>DANGLING(0), o_image0_0(6)=>
      DANGLING(1), o_image0_0(5)=>DANGLING(2), o_image0_0(4)=>DANGLING(3), 
      o_image0_0(3)=>DANGLING(4), o_image0_0(2)=>DANGLING(5), o_image0_0(1)
      =>DANGLING(6), o_image0_0(0)=>DANGLING(7), o_image0_1(7)=>DANGLING(8), 
      o_image0_1(6)=>DANGLING(9), o_image0_1(5)=>DANGLING(10), o_image0_1(4)
      =>DANGLING(11), o_image0_1(3)=>DANGLING(12), o_image0_1(2)=>DANGLING(
      13), o_image0_1(1)=>DANGLING(14), o_image0_1(0)=>DANGLING(15), 
      o_image0_2(7)=>DANGLING(16), o_image0_2(6)=>DANGLING(17), 
      o_image0_2(5)=>DANGLING(18), o_image0_2(4)=>DANGLING(19), 
      o_image0_2(3)=>DANGLING(20), o_image0_2(2)=>DANGLING(21), 
      o_image0_2(1)=>DANGLING(22), o_image0_2(0)=>DANGLING(23), 
      o_image1_0(7)=>DANGLING(24), o_image1_0(6)=>DANGLING(25), 
      o_image1_0(5)=>DANGLING(26), o_image1_0(4)=>DANGLING(27), 
      o_image1_0(3)=>DANGLING(28), o_image1_0(2)=>DANGLING(29), 
      o_image1_0(1)=>DANGLING(30), o_image1_0(0)=>DANGLING(31), 
      o_image1_1(7)=>DANGLING(32), o_image1_1(6)=>DANGLING(33), 
      o_image1_1(5)=>DANGLING(34), o_image1_1(4)=>DANGLING(35), 
      o_image1_1(3)=>DANGLING(36), o_image1_1(2)=>DANGLING(37), 
      o_image1_1(1)=>DANGLING(38), o_image1_1(0)=>DANGLING(39), 
      o_image1_2(7)=>DANGLING(40), o_image1_2(6)=>DANGLING(41), 
      o_image1_2(5)=>DANGLING(42), o_image1_2(4)=>DANGLING(43), 
      o_image1_2(3)=>DANGLING(44), o_image1_2(2)=>DANGLING(45), 
      o_image1_2(1)=>DANGLING(46), o_image1_2(0)=>DANGLING(47), 
      o_image2_0(7)=>DANGLING(48), o_image2_0(6)=>DANGLING(49), 
      o_image2_0(5)=>DANGLING(50), o_image2_0(4)=>DANGLING(51), 
      o_image2_0(3)=>DANGLING(52), o_image2_0(2)=>DANGLING(53), 
      o_image2_0(1)=>DANGLING(54), o_image2_0(0)=>DANGLING(55), 
      o_image2_1(7)=>DANGLING(56), o_image2_1(6)=>DANGLING(57), 
      o_image2_1(5)=>DANGLING(58), o_image2_1(4)=>DANGLING(59), 
      o_image2_1(3)=>DANGLING(60), o_image2_1(2)=>DANGLING(61), 
      o_image2_1(1)=>DANGLING(62), o_image2_1(0)=>DANGLING(63), 
      o_image2_2(7)=>DANGLING(64), o_image2_2(6)=>DANGLING(65), 
      o_image2_2(5)=>DANGLING(66), o_image2_2(4)=>DANGLING(67), 
      o_image2_2(3)=>DANGLING(68), o_image2_2(2)=>DANGLING(69), 
      o_image2_2(1)=>DANGLING(70), o_image2_2(0)=>DANGLING(71), o_pixel(7)=>
      o_pixel(7), o_pixel(6)=>o_pixel(6), o_pixel(5)=>o_pixel(5), o_pixel(4)
      =>o_pixel(4), o_pixel(3)=>o_pixel(3), o_pixel(2)=>o_pixel(2), 
      o_pixel(1)=>o_pixel(1), o_pixel(0)=>o_pixel(0));
   o_valid <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
   o_edge <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
   o_dir(0) <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
   o_dir(1) <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
   o_dir(2) <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
   o_mode(0) <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
   o_mode(1) <= debug_num_5_0_EXMPLR136 when debug_num_5_0_EXMPLR136
    = '1' else 'Z' ;
end main ;

