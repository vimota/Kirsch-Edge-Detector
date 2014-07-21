
-- 
-- Definition of  top_kirsch
-- 
--      07/21/14 02:37:23
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11 is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, 
      nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, PWR, 
      NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(10) <= nx27 ;
   q(9) <= nx29 ;
   q(8) <= nx31 ;
   q(7) <= nx33 ;
   q(6) <= nx35 ;
   q(5) <= nx37 ;
   q(4) <= nx39 ;
   q(3) <= nx41 ;
   q(2) <= nx43 ;
   q(1) <= nx45 ;
   q(0) <= nx47 ;
   GND <= '0' ;
   DFFPC (nx26,GND,aclear,clock,nx27) ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx27, a(9)=>nx29, a(8)
      =>nx31, a(7)=>nx33, a(6)=>nx35, a(5)=>nx37, a(4)=>nx39, a(3)=>nx41, 
      a(2)=>nx43, a(1)=>nx45, a(0)=>nx47, d(10)=>nx48, d(9)=>nx49, d(8)=>
      nx50, d(7)=>nx51, d(6)=>nx52, d(5)=>nx53, d(4)=>nx54, d(3)=>nx55, d(2)
      =>nx56, d(1)=>nx57, d(0)=>nx58, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx26 <= nx48 AND NOT_SCLEAR ;
   nx28 <= nx49 AND NOT_SCLEAR ;
   nx30 <= nx50 AND NOT_SCLEAR ;
   nx32 <= nx51 AND NOT_SCLEAR ;
   nx34 <= nx52 AND NOT_SCLEAR ;
   nx36 <= nx53 AND NOT_SCLEAR ;
   nx38 <= nx54 AND NOT_SCLEAR ;
   nx40 <= nx55 AND NOT_SCLEAR ;
   nx42 <= nx56 AND NOT_SCLEAR ;
   nx44 <= nx57 AND NOT_SCLEAR ;
   nx46 <= nx58 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12 is 
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
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, 
      nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, nx49, 
      nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, nx61, 
      nx62, nx63, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(11) <= nx29 ;
   q(10) <= nx31 ;
   q(9) <= nx33 ;
   q(8) <= nx35 ;
   q(7) <= nx37 ;
   q(6) <= nx39 ;
   q(5) <= nx41 ;
   q(4) <= nx43 ;
   q(3) <= nx45 ;
   q(2) <= nx47 ;
   q(1) <= nx49 ;
   q(0) <= nx51 ;
   GND <= '0' ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   DFFPC (nx48,GND,aclear,clock,nx49) ;
   DFFPC (nx50,GND,aclear,clock,nx51) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx29, a(10)=>nx31, a(9)
      =>nx33, a(8)=>nx35, a(7)=>nx37, a(6)=>nx39, a(5)=>nx41, a(4)=>nx43, 
      a(3)=>nx45, a(2)=>nx47, a(1)=>nx49, a(0)=>nx51, d(11)=>nx52, d(10)=>
      nx53, d(9)=>nx54, d(8)=>nx55, d(7)=>nx56, d(6)=>nx57, d(5)=>nx58, d(4)
      =>nx59, d(3)=>nx60, d(2)=>nx61, d(1)=>nx62, d(0)=>nx63, cout=>DANGLING
      (0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx28 <= nx52 AND NOT_SCLEAR ;
   nx30 <= nx53 AND NOT_SCLEAR ;
   nx32 <= nx54 AND NOT_SCLEAR ;
   nx34 <= nx55 AND NOT_SCLEAR ;
   nx36 <= nx56 AND NOT_SCLEAR ;
   nx38 <= nx57 AND NOT_SCLEAR ;
   nx40 <= nx58 AND NOT_SCLEAR ;
   nx42 <= nx59 AND NOT_SCLEAR ;
   nx44 <= nx60 AND NOT_SCLEAR ;
   nx46 <= nx61 AND NOT_SCLEAR ;
   nx48 <= nx62 AND NOT_SCLEAR ;
   nx50 <= nx63 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
    is 
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
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, 
      nx27, nx28, nx29, nx30: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx20 ;
   q(2) <= nx22 ;
   q(1) <= nx24 ;
   q(0) <= nx26 ;
   GND <= '0' ;
   nx13 <= cnt_en OR sload ;
   nx16 <= nx13 AND clk_en ;
   DFFPCE (nx19,GND,aclear,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,aclear,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,aclear,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,aclear,nx16,clock,nx26) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx20, a(2)=>nx22, a(1)=>
      nx24, a(0)=>nx26, d(3)=>nx27, d(2)=>nx28, d(1)=>nx29, d(0)=>nx30, cout
      =>DANGLING(0));
   nx19 <= data(3) when sload = '1' else nx27 ;
   nx21 <= data(2) when sload = '1' else nx28 ;
   nx23 <= data(1) when sload = '1' else nx29 ;
   nx25 <= data(0) when sload = '1' else nx30 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_clk_en_0_4 is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, nx21, nx22, 
      nx23, nx24, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,clk_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,clk_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,clk_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,clk_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx21, d(2)=>nx22, d(1)=>nx23, d(0)=>nx24, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx13 <= nx21 AND NOT_SCLEAR ;
   nx15 <= nx22 AND NOT_SCLEAR ;
   nx17 <= nx23 AND NOT_SCLEAR ;
   nx19 <= nx24 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
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
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
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
   signal RxRDY_EXMPLR96: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, PWR, 
      rtlc8n73: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n164, rtlc14n168, rtlc14n219, 
      not_TxFSM_1, not_rtlcn0, not_TopTx, rtlc14n224, rtlc14_X_0_n225, 
      rtlc14n235, not_rtlc14_X_0_n225, rtlc14n290, not_rtlcn2, 
      not_rtlc14n168, not_rtlcn4, not_Rx, rtlc17n303, rtlc17n308, not_TopRx, 
      rtlc17n359, rtlc17_X_0_n360, not_rtlc17_X_0_n360, rtlc17n405, 
      not_rtlc17n405, rtlc17n442, not_rtlc17n308, rtlc17n459, rtlc17n460, 
      not_rtlcn6, rtlc17n474, not_rtlc17n474, rtlcn0, rtlcn2, rtlcn4, rtlcn6, 
      not_TxFSM_0, rtlcn31, rtlcn37, rtlcn42, rtlcn47, rtlcn51, rtlcn57, 
      rtlcn75, rtlcn76, not_rtlcn118, not_RxFSM_0, rtlcn96, not_rtlcs5, 
      not_Rx_r, rtlcn99, rtlcn100, rtlcn101, rtlcn102, not_rtlc14n290, 
      rtlcn118, rtlcn119, not_rtlcn75, not_rtlcn76, rtlcn122, rtlcs0, rtlcs1, 
      rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, 
      not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_RxFSM_5, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, rtlcs6, rtlcs7, rtlcn142: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR96 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n73 <= RxFSM_0 OR rtlcs0 ;
   rtlc14n290 <= rtlcs4 OR rtlc14n219 ;
   rtlc14n164 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n224 <= not_TopTx AND TxFSM(1) ;
   rtlc14n219 <= TxFSM(1) AND TxFSM(0) ;
   rtlc14_109_or_0 : or_3u_3u port map ( a(2)=>rtlc14n219, a(1)=>not_rtlcn0, 
      a(0)=>rtlc14n224, d=>rtlc14_X_0_n225);
   not_rtlc14_X_0_n225 <= NOT rtlc14_X_0_n225 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n235 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n405 <= RxFSM_5 OR RxFSM_6 ;
   not_rtlc17n405 <= NOT rtlc17n405 ;
   rtlc17n474 <= RxFSM_0 OR RxFSM_3 ;
   not_rtlc17n474 <= NOT rtlc17n474 ;
   rtlc17n303 <= not_TopRx OR not_Rx_r ;
   rtlc17n359 <= not_TopRx AND RxFSM_3 ;
   not_rtlc17_X_0_n360 <= NOT rtlc17_X_0_n360 ;
   not_Rx <= NOT Rx ;
   rtlc17_X_0_n360 <= not_rtlc17n474 OR rtlc17n359 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   rtlc_48_select_1 : select_3_3 port map ( a(2)=>RxFSM_0, a(1)=>
      not_rtlcn118, a(0)=>RxFSM_6, b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>not_Rx, 
      d=>rtlcn6);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_92_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n168);
   rtlc_93_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn2);
   rtlc_94_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n164, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn4);
   not_LD <= NOT LD ;
   not_TopRx <= NOT TopRx ;
   not_RxFSM_0 <= NOT RxFSM_0 ;
   rtlcn96 <= RxFSM_5 AND not_TopRx ;
   rtlcn76 <= not_rtlc17n405 OR rtlcn96 ;
   rtlcn75 <= RxFSM_5 AND TopRx ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn31 <= not_rtlcs5 AND RxFSM_2 ;
   not_Rx_r <= NOT Rx_r ;
   rtlcn99 <= not_Rx_r AND RxFSM_1 ;
   rtlcn37 <= RxFSM_3 OR rtlcn99 ;
   rtlcn100 <= RxFSM_5 AND Rx_r ;
   rtlcn42 <= RxFSM_6 OR rtlcn100 ;
   rtlcn47 <= rtlcs5 AND RxFSM_2 ;
   rtlcn51 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn101 <= RxFSM_5 AND not_Rx_r ;
   rtlcn102 <= Rx_r AND RxFSM_1 ;
   rtlcn57 <= rtlcn101 OR rtlcn102 ;
   not_rtlc14n290 <= NOT rtlc14n290 ;
   not_rtlcn118 <= NOT rtlcn118 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(7) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(7) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(7) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc14n168 <= NOT rtlc14n168 ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn6 <= NOT rtlcn6 ;
   rtlc17n460 <= RxRDY_EXMPLR96 OR RxFSM_6 ;
   not_rtlcn75 <= NOT rtlcn75 ;
   rtlcn119 <= Rx_r OR not_rtlcn75 ;
   not_rtlcn76 <= NOT rtlcn76 ;
   rtlcn122 <= not_rtlcn76 AND rtlcn119 ;
   rtlc17n459 <= RxRDY_EXMPLR96 OR rtlcn122 ;
   not_rtlc17n308 <= NOT rtlc17n308 ;
   rtlcn118 <= RxFSM_0 OR RxFSM_6 ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_331_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_341_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   not_RxFSM_5 <= NOT RxFSM_5 ;
   rtlc17n308 <= rtlc17n303 OR not_RxFSM_5 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_352_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   rtlcn0 <= TxFSM(1) OR TxFSM(0) ;
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_358_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   rtlc17n442 <= TopRx AND RxFSM_3 ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11 port map ( 
      clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>
      RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>
      RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(10)=>DANGLING(0), data(9)=>DANGLING(1), 
      data(8)=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>DANGLING(4), 
      data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>DANGLING(7), 
      data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>DANGLING(10), 
      aset=>GND, sclear=>rtlc8n73, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12 port map ( 
      clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>
      TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>
      TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>
      TxDiv(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(11)=>DANGLING(11), 
      data(10)=>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), 
      data(7)=>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), 
      data(4)=>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), 
      data(1)=>DANGLING(21), data(0)=>DANGLING(22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>
      TxBitCnt(1), q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n225, aclear=>
      GND, sload=>rtlc14n235, data(3)=>PWR, data(2)=>GND, data(1)=>GND, 
      data(0)=>PWR, aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   modgen_counter_RxBitCnt : counter_up_sclear_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>
      RxBitCnt(1), q(0)=>RxBitCnt(0), clk_en=>not_rtlc17_X_0_n360, aclear=>
      GND, sload=>GND, data(3)=>DANGLING(23), data(2)=>DANGLING(24), data(1)
      =>DANGLING(25), data(0)=>DANGLING(26), aset=>GND, sclear=>RxFSM_0, 
      updn=>PWR, cnt_en=>PWR);
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>PWR, b(4)=>PWR, 
      b(3)=>PWR, b(2)=>PWR, b(1)=>GND, b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      PWR, b(5)=>PWR, b(4)=>PWR, b(3)=>PWR, b(2)=>GND, b(1)=>GND, b(0)=>PWR, 
      d=>rtlcs7);
   DFFPC (Rx,GND,GND,CLK,Rx_r) ;
   DFFPC (rtlcn51,GND,GND,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,GND,CLK,TopTx) ;
   DFFPCE (not_rtlc14n290,GND,GND,not_rtlcn4,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,GND,not_rtlcn4,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(8),GND,GND,not_rtlc14n168,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),GND,GND,not_rtlc14n168,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),GND,GND,not_rtlc14n168,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),GND,GND,not_rtlc14n168,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),GND,GND,not_rtlc14n168,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),GND,GND,not_rtlc14n168,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),GND,GND,not_rtlc14n168,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),GND,GND,not_rtlc14n168,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),GND,GND,not_rtlcn2,CLK,Tx) ;
   DFFPCE (rtlcn57,GND,GND,not_rtlcn6,CLK,RxFSM_6) ;
   DFFPCE (rtlcn47,GND,GND,not_rtlcn6,CLK,RxFSM_5) ;
   DFFPCE (rtlcn31,GND,GND,not_rtlcn6,CLK,RxFSM_3) ;
   DFFPCE (rtlcn37,GND,GND,not_rtlcn6,CLK,RxFSM_2) ;
   DFFPCE (RxFSM_0,GND,GND,not_rtlcn6,CLK,RxFSM_1) ;
   DFFPCE (rtlcn42,GND,GND,not_rtlcn6,CLK,RxFSM_0) ;
   DFFPCE (RxFSM_6,GND,GND,rtlc17n460,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,GND,not_rtlc17n308,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,GND,not_rtlc17n308,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,GND,not_rtlc17n308,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,GND,not_rtlc17n308,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,GND,not_rtlc17n308,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,GND,not_rtlc17n308,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,GND,not_rtlc17n308,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,GND,not_rtlc17n308,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,GND,rtlc17n442,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,GND,rtlc17n442,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,GND,rtlc17n442,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,GND,rtlc17n442,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,GND,rtlc17n442,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,GND,rtlc17n442,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,GND,rtlc17n442,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,GND,rtlc17n442,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn142,GND,GND,CLK,RxRDY_EXMPLR96) ;
   modgen_and_0 : and_4u_4u port map ( a(3)=>Rx_r, a(2)=>RxFSM_5, a(1)=>
      TopRx, a(0)=>rtlc17n459, d=>rtlcn142);
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16 is 
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
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, 
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, nx69, 
      nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, nx81, 
      nx82, nx83, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx37 ;
   q(14) <= nx39 ;
   q(13) <= nx41 ;
   q(12) <= nx43 ;
   q(11) <= nx45 ;
   q(10) <= nx47 ;
   q(9) <= nx49 ;
   q(8) <= nx51 ;
   q(7) <= nx53 ;
   q(6) <= nx55 ;
   q(5) <= nx57 ;
   q(4) <= nx59 ;
   q(3) <= nx61 ;
   q(2) <= nx63 ;
   q(1) <= nx65 ;
   q(0) <= nx67 ;
   GND <= '0' ;
   DFFPCE (nx36,GND,GND,clk_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,clk_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,clk_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,clk_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,clk_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,clk_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,clk_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,clk_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,clk_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx68, d(14)=>nx69, d(13)=>nx70, 
      d(12)=>nx71, d(11)=>nx72, d(10)=>nx73, d(9)=>nx74, d(8)=>nx75, d(7)=>
      nx76, d(6)=>nx77, d(5)=>nx78, d(4)=>nx79, d(3)=>nx80, d(2)=>nx81, d(1)
      =>nx82, d(0)=>nx83, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx36 <= nx68 AND NOT_SCLEAR ;
   nx38 <= nx69 AND NOT_SCLEAR ;
   nx40 <= nx70 AND NOT_SCLEAR ;
   nx42 <= nx71 AND NOT_SCLEAR ;
   nx44 <= nx72 AND NOT_SCLEAR ;
   nx46 <= nx73 AND NOT_SCLEAR ;
   nx48 <= nx74 AND NOT_SCLEAR ;
   nx50 <= nx75 AND NOT_SCLEAR ;
   nx52 <= nx76 AND NOT_SCLEAR ;
   nx54 <= nx77 AND NOT_SCLEAR ;
   nx56 <= nx78 AND NOT_SCLEAR ;
   nx58 <= nx79 AND NOT_SCLEAR ;
   nx60 <= nx80 AND NOT_SCLEAR ;
   nx62 <= nx81 AND NOT_SCLEAR ;
   nx64 <= nx82 AND NOT_SCLEAR ;
   nx66 <= nx83 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uw_uart is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      kirschout : IN std_logic ;
      kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
      o_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      o_pixavail : OUT std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic) ;
end uw_uart ;

architecture main_unfold_1876 of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_16
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
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
   signal o_pixavail_EXMPLR147: std_logic ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, GND, sdout_5, sdout_3, sdout_2, sdout_1, sdout_0: 
   std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, ack: 
   std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail: std_logic ;
   
   signal mdata_7n2ss1: std_logic_vector (3 DOWNTO 0) ;
   
   signal mdata_7n5ss1_3, mdata_7n5ss1_2, mdata_7n5ss1_1, mdata_7n5ss1_0, 
      rtlc7n92, rtlc7n116, not_rxerr, not_rtlcn53, rtlc7n146, rtlc7_X_0_n182, 
      not_dsend, rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn0, rtlcn9, 
      not_rtlcn56, rtlcn43, rtlcn53, rtlcn57, not_state, rtlcn61, 
      not_rtlc7n92, not_rtlcn69, not_o_valid, rtlcn69, not_rtlc7n146, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn95: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR147 ;
   GND <= '0' ;
   PWR <= '1' ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>GND, Din(7)=>sdout_5, Din(6)=>
      GND, Din(5)=>GND, Din(4)=>GND, Din(3)=>sdout_3, Din(2)=>sdout_2, 
      Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>rxflex, Baud=>PWR, 
      Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)=>sdin(5), Dout(4)=>sdin(4), 
      Dout(3)=>sdin(3), Dout(2)=>sdin(2), Dout(1)=>sdin(1), Dout(0)=>sdin(0), 
      Tx=>txflex, TxBusy=>DANGLING(0), RxErr=>rxerr, RxRDY=>rxrdy);
   rtlc7_72_or_13 : or_3u_3u port map ( a(2)=>GND, a(1)=>o_valid, a(0)=>
      rtlc7n116, d=>rtlc7_X_0_n182);
   not_rxerr <= NOT rxerr ;
   rtlc7n92 <= o_pixavail_EXMPLR147 OR ack ;
   not_rtlcn53 <= NOT rtlcn53 ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR147 ;
   rtlcn53 <= rtlc7n116 OR o_valid ;
   not_state <= NOT state ;
   rtlcn9 <= not_state AND dsend ;
   rtlcn61 <= rtlc7n92 AND not_rtlcn53 ;
   not_rtlc7n92 <= NOT rtlc7n92 ;
   rtlcn57 <= rtlcn61 OR not_rtlcn69 ;
   not_rtlcn56 <= NOT rtlcn57 ;
   not_o_valid <= NOT o_valid ;
   rtlcn43 <= not_rtlc7n92 OR not_o_valid ;
   not_rtlcn69 <= NOT rtlcn69 ;
   rtlc7n146 <= not_rtlcn53 when rtlc7n92 = '1' else not_rxerr ;
   rtlcn0 <= rxrdy OR o_pixavail_EXMPLR147 ;
   not_rtlc7n146 <= NOT rtlc7n146 ;
   rtlc10n75 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlc10n48 <= NOT rtlc10n48 ;
   mdata_7n2ss1(0) <= kirschout OR not_o_valid ;
   mdata_7n5ss1_0 <= mdata_7n2ss1(0) AND rtlc7n92 ;
   rtlcn69 <= rtlc7n92 OR rxerr ;
   rtlc10n48 <= not_dsend OR state ;
   mdata_7n2ss1(1) <= kirschdir(0) OR not_o_valid ;
   mdata_7n5ss1_1 <= mdata_7n2ss1(1) AND rtlc7n92 ;
   mdata_7n2ss1(2) <= kirschdir(1) OR not_o_valid ;
   mdata_7n5ss1_2 <= mdata_7n2ss1(2) AND rtlc7n92 ;
   mdata_7n2ss1(3) <= kirschdir(2) OR not_o_valid ;
   mdata_7n5ss1_3 <= mdata_7n2ss1(3) AND rtlc7n92 ;
   datain(0) <= rdata(0) AND o_pixavail_EXMPLR147 ;
   datain(1) <= rdata(1) AND o_pixavail_EXMPLR147 ;
   datain(2) <= rdata(2) AND o_pixavail_EXMPLR147 ;
   datain(3) <= rdata(3) AND o_pixavail_EXMPLR147 ;
   datain(4) <= rdata(4) AND o_pixavail_EXMPLR147 ;
   datain(5) <= rdata(5) AND o_pixavail_EXMPLR147 ;
   datain(6) <= rdata(6) AND o_pixavail_EXMPLR147 ;
   datain(7) <= rdata(7) AND o_pixavail_EXMPLR147 ;
   modgen_counter_waitcount : counter_up_sclear_clock_clk_en_0_16
       port map ( clock=>clk, q(15)=>waitcount(15), q(14)=>waitcount(14), 
      q(13)=>waitcount(13), q(12)=>waitcount(12), q(11)=>waitcount(11), 
      q(10)=>waitcount(10), q(9)=>waitcount(9), q(8)=>waitcount(8), q(7)=>
      waitcount(7), q(6)=>waitcount(6), q(5)=>waitcount(5), q(4)=>
      waitcount(4), q(3)=>waitcount(3), q(2)=>waitcount(2), q(1)=>
      waitcount(1), q(0)=>waitcount(0), clk_en=>rtlc7n92, aclear=>GND, sload
      =>GND, data(15)=>DANGLING(1), data(14)=>DANGLING(2), data(13)=>
      DANGLING(3), data(12)=>DANGLING(4), data(11)=>DANGLING(5), data(10)=>
      DANGLING(6), data(9)=>DANGLING(7), data(8)=>DANGLING(8), data(7)=>
      DANGLING(9), data(6)=>DANGLING(10), data(5)=>DANGLING(11), data(4)=>
      DANGLING(12), data(3)=>DANGLING(13), data(2)=>DANGLING(14), data(1)=>
      DANGLING(15), data(0)=>DANGLING(16), aset=>GND, sclear=>rtlc7_X_0_n182, 
      updn=>PWR, cnt_en=>PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_288_and_14 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n116);
   rtlcn95 <= not_o_pixavail AND rtlcn0 ;
   DFFPCE (rtlcn43,GND,GND,not_rtlc7n146,clk,mdata_5) ;
   DFFPCE (mdata_7n5ss1_3,GND,GND,not_rtlc7n146,clk,mdata_3) ;
   DFFPCE (mdata_7n5ss1_2,GND,GND,not_rtlc7n146,clk,mdata_2) ;
   DFFPCE (mdata_7n5ss1_1,GND,GND,not_rtlc7n146,clk,mdata_1) ;
   DFFPCE (mdata_7n5ss1_0,GND,GND,not_rtlc7n146,clk,mdata_0) ;
   DFFRSE (not_rtlcn56,GND,GND,PWR,clk,dsend) ;
   DFFPCE (sdin(7),GND,GND,rxrdy,clk,rdata(7)) ;
   DFFPCE (sdin(6),GND,GND,rxrdy,clk,rdata(6)) ;
   DFFPCE (sdin(5),GND,GND,rxrdy,clk,rdata(5)) ;
   DFFPCE (sdin(4),GND,GND,rxrdy,clk,rdata(4)) ;
   DFFPCE (sdin(3),GND,GND,rxrdy,clk,rdata(3)) ;
   DFFPCE (sdin(2),GND,GND,rxrdy,clk,rdata(2)) ;
   DFFPCE (sdin(1),GND,GND,rxrdy,clk,rdata(1)) ;
   DFFPCE (sdin(0),GND,GND,rxrdy,clk,rdata(0)) ;
   DFFPCE (not_state,GND,GND,rtlc10n75,clk,ld_sdout) ;
   DFFPCE (mdata_5,GND,GND,not_rtlc10n48,clk,sdout_5) ;
   DFFPCE (mdata_3,GND,GND,not_rtlc10n48,clk,sdout_3) ;
   DFFPCE (mdata_2,GND,GND,not_rtlc10n48,clk,sdout_2) ;
   DFFPCE (mdata_1,GND,GND,not_rtlc10n48,clk,sdout_1) ;
   DFFPCE (mdata_0,GND,GND,not_rtlc10n48,clk,sdout_0) ;
   DFFPC (rtlcn9,GND,GND,clk,state) ;
   DFFRSE (rtlcn61,GND,GND,PWR,clk,ack) ;
   DFFPC (rtlcn95,GND,GND,clk,o_pixavail_EXMPLR147) ;
end main_unfold_1876 ;

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
   component and_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for u_mem1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for u_mem2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for u_mem3 : mem_8_8 use entity work.mem_8_8(main);
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_EXMPLR444: std_logic_vector (1 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal rtlc0n0: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_i_valid, rtlc3n120, not_rtlc3n121, rtlc3n132, rtlc3n135, 
      not_rtlc3n135, rtlc3n211, rtlc3n215, rtlc3n235, not_first_bubble, 
      not_rtlcs0, rtlc3_X_0_n252, not_rtlc3_X_0_n252, rtlc3n271, rtlc3n272, 
      not_rtlc3n235, rtlc3n307, rtlc3n308, rtlc3n309, not_rtlc3n215: 
   std_logic ;
   
   signal buffer2_4n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_4n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlc4n99, rtlc4n339, rtlc4n427, rtlcn99, rtlcn123, not_rtlcn236, 
      not_rtlcn237, rtlcn218, rtlcn225, rtlcn226, rtlcn236, rtlcn237, rtlcs0
   : std_logic ;
   
   signal o_image1_0_EXMPLR448: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR449: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR450: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR451: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR452: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR453: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   o_mode(1) <= o_mode_EXMPLR444(1) ;
   o_mode(0) <= GND ;
   o_column(7) <= GND ;
   o_column(6) <= GND ;
   o_column(5) <= GND ;
   o_column(4) <= GND ;
   o_column(3) <= GND ;
   o_column(2) <= GND ;
   o_column(1) <= GND ;
   o_column(0) <= GND ;
   o_row(7) <= GND ;
   o_row(6) <= GND ;
   o_row(5) <= GND ;
   o_row(4) <= GND ;
   o_row(3) <= GND ;
   o_row(2) <= GND ;
   o_row(1) <= GND ;
   o_row(0) <= GND ;
   o_image1_0(7) <= o_image1_0_EXMPLR448(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR448(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR448(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR448(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR448(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR448(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR448(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR448(0) ;
   o_image1_1(7) <= GND ;
   o_image1_1(6) <= GND ;
   o_image1_1(5) <= GND ;
   o_image1_1(4) <= GND ;
   o_image1_1(3) <= GND ;
   o_image1_1(2) <= GND ;
   o_image1_1(1) <= GND ;
   o_image1_1(0) <= GND ;
   o_image1_2(7) <= o_image1_2_EXMPLR450(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR450(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR450(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR450(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR450(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR450(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR450(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR450(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR451(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR451(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR451(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR451(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR451(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR451(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR451(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR451(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR452(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR452(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR452(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR452(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR452(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR452(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR452(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR452(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR453(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR453(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR453(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR453(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR453(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR453(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR453(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR453(0) ;
   o_mode_EXMPLR444(1) <= '1' ;
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
   not_rtlc3n215 <= NOT rtlc3n215 ;
   rtlc3n211 <= not_first_bubble OR not_rtlcs0 ;
   rtlc3_32_or_15 : or_3u_3u port map ( a(2)=>not_i_valid, a(1)=>rtlc3n120, 
      a(0)=>not_rtlc3n135, d=>rtlc3n309);
   rtlc3n308 <= rtlc3n120 OR not_i_valid ;
   not_rtlc3n235 <= NOT rtlc3n235 ;
   rtlc3n271 <= rtlcs0 AND first_bubble ;
   rtlc3n272 <= rtlc3n120 OR rtlc3n271 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_first_bubble <= NOT first_bubble ;
   rtlc3_54_or_16 : or_3u_3u port map ( a(2)=>i_valid, a(1)=>
      not_first_bubble, a(0)=>not_rtlcs0, d=>rtlc3_X_0_n252);
   not_rtlc3_X_0_n252 <= NOT rtlc3_X_0_n252 ;
   rtlc3n132 <= mem_wrn_current(0) OR mem_wrn_current(1) ;
   rtlc3n135 <= rtlc3n132 OR mem_wrn_current(2) ;
   not_rtlc3n135 <= NOT rtlc3n135 ;
   not_rtlc3n121 <= NOT rtlc3n120 ;
   rtlc3n235 <= not_rtlc3n121 AND i_valid ;
   rtlc4n99 <= rtlc4n339 AND rtlc4n427 ;
   rtlc4_443_or_18 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc4n339);
   rtlc4_469_or_19 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc4n427);
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
   rtlcn218 <= rtlc4n339 OR mem_wrn_current(2) ;
   rtlcn225 <= i_valid AND not_rtlc3n215 ;
   rtlcn226 <= rtlc3n120 OR rtlcn225 ;
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
   rtlc_518_and_37 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>column(0), d=>rtlcs0);
   rtlcn236 <= mem_wrn_current(0) OR rtlcn99 ;
   rtlcn237 <= mem_wrn_current(1) OR rtlcn123 ;
   modgen_counter_row : counter_up_cnt_en_sclear_clock_0_8 port map ( clock
      =>i_clock, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), 
      q(3)=>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>
      o_mode_EXMPLR444(1), aclear=>GND, sload=>GND, data(7)=>DANGLING(0), 
      data(6)=>DANGLING(1), data(5)=>DANGLING(2), data(4)=>DANGLING(3), 
      data(3)=>DANGLING(4), data(2)=>DANGLING(5), data(1)=>DANGLING(6), 
      data(0)=>DANGLING(7), aset=>GND, sclear=>rtlc3n120, updn=>
      o_mode_EXMPLR444(1), cnt_en=>not_rtlc3_X_0_n252);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>column(0), clk_en=>not_rtlc3n235, aclear=>GND, sload
      =>GND, data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>DANGLING(
      10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>DANGLING(
      13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, sclear=>
      rtlc3n272, updn=>o_mode_EXMPLR444(1), cnt_en=>first_bubble);
   DLATCHPC (i_pixel(7),GND,GND,i_valid,rtlc0n0(7)) ;
   DLATCHPC (i_pixel(6),GND,GND,i_valid,rtlc0n0(6)) ;
   DLATCHPC (i_pixel(5),GND,GND,i_valid,rtlc0n0(5)) ;
   DLATCHPC (i_pixel(4),GND,GND,i_valid,rtlc0n0(4)) ;
   DLATCHPC (i_pixel(3),GND,GND,i_valid,rtlc0n0(3)) ;
   DLATCHPC (i_pixel(2),GND,GND,i_valid,rtlc0n0(2)) ;
   DLATCHPC (i_pixel(1),GND,GND,i_valid,rtlc0n0(1)) ;
   DLATCHPC (i_pixel(0),GND,GND,i_valid,rtlc0n0(0)) ;
   DFFPC (i_valid,GND,GND,i_clock,first_bubble) ;
   DFFRSE (mem_wrn_current(2),GND,rtlc3n309,o_mode_EXMPLR444(1),i_clock,
   mem_wrn(2)) ;
   DFFRSE (mem_wrn_current(1),GND,rtlc3n309,o_mode_EXMPLR444(1),i_clock,
   mem_wrn(1)) ;
   DFFRSE (mem_wrn_current(0),rtlc3n307,rtlc3n308,o_mode_EXMPLR444(1),
   i_clock,mem_wrn(0)) ;
   DFFPCE (buffer2_4n4ss1(23),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(7)) ;
   DFFPCE (buffer2_4n4ss1(22),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(6)) ;
   DFFPCE (buffer2_4n4ss1(21),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(5)) ;
   DFFPCE (buffer2_4n4ss1(20),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(4)) ;
   DFFPCE (buffer2_4n4ss1(19),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(3)) ;
   DFFPCE (buffer2_4n4ss1(18),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(2)) ;
   DFFPCE (buffer2_4n4ss1(17),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(1)) ;
   DFFPCE (buffer2_4n4ss1(16),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR453(0)) ;
   DFFPCE (buffer2_4n4ss1(15),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(7)) ;
   DFFPCE (buffer2_4n4ss1(14),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(6)) ;
   DFFPCE (buffer2_4n4ss1(13),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(5)) ;
   DFFPCE (buffer2_4n4ss1(12),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(4)) ;
   DFFPCE (buffer2_4n4ss1(11),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(3)) ;
   DFFPCE (buffer2_4n4ss1(10),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(2)) ;
   DFFPCE (buffer2_4n4ss1(9),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(1)) ;
   DFFPCE (buffer2_4n4ss1(8),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR452(0)) ;
   DFFPCE (buffer2_4n4ss1(7),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(7)) ;
   DFFPCE (buffer2_4n4ss1(6),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(6)) ;
   DFFPCE (buffer2_4n4ss1(5),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(5)) ;
   DFFPCE (buffer2_4n4ss1(4),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(4)) ;
   DFFPCE (buffer2_4n4ss1(3),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(3)) ;
   DFFPCE (buffer2_4n4ss1(2),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(2)) ;
   DFFPCE (buffer2_4n4ss1(1),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(1)) ;
   DFFPCE (buffer2_4n4ss1(0),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR451(0)) ;
   DFFPCE (o_image2_2_EXMPLR453(7),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(7)) ;
   DFFPCE (o_image2_2_EXMPLR453(6),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(6)) ;
   DFFPCE (o_image2_2_EXMPLR453(5),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(5)) ;
   DFFPCE (o_image2_2_EXMPLR453(4),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(4)) ;
   DFFPCE (o_image2_2_EXMPLR453(3),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(3)) ;
   DFFPCE (o_image2_2_EXMPLR453(2),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(2)) ;
   DFFPCE (o_image2_2_EXMPLR453(1),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(1)) ;
   DFFPCE (o_image2_2_EXMPLR453(0),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR450(0)) ;
   DFFPCE (o_image2_1_EXMPLR452(7),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(7)) ;
   DFFPCE (o_image2_1_EXMPLR452(6),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(6)) ;
   DFFPCE (o_image2_1_EXMPLR452(5),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(5)) ;
   DFFPCE (o_image2_1_EXMPLR452(4),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(4)) ;
   DFFPCE (o_image2_1_EXMPLR452(3),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(3)) ;
   DFFPCE (o_image2_1_EXMPLR452(2),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(2)) ;
   DFFPCE (o_image2_1_EXMPLR452(1),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(1)) ;
   DFFPCE (o_image2_1_EXMPLR452(0),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR449(0)) ;
   DFFPCE (o_image2_0_EXMPLR451(7),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(7)) ;
   DFFPCE (o_image2_0_EXMPLR451(6),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(6)) ;
   DFFPCE (o_image2_0_EXMPLR451(5),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(5)) ;
   DFFPCE (o_image2_0_EXMPLR451(4),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(4)) ;
   DFFPCE (o_image2_0_EXMPLR451(3),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(3)) ;
   DFFPCE (o_image2_0_EXMPLR451(2),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(2)) ;
   DFFPCE (o_image2_0_EXMPLR451(1),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(1)) ;
   DFFPCE (o_image2_0_EXMPLR451(0),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR448(0)) ;
   DFFPCE (o_image1_2_EXMPLR450(7),GND,GND,first_bubble,i_clock,
   o_image0_2(7)) ;
   DFFPCE (o_image1_2_EXMPLR450(6),GND,GND,first_bubble,i_clock,
   o_image0_2(6)) ;
   DFFPCE (o_image1_2_EXMPLR450(5),GND,GND,first_bubble,i_clock,
   o_image0_2(5)) ;
   DFFPCE (o_image1_2_EXMPLR450(4),GND,GND,first_bubble,i_clock,
   o_image0_2(4)) ;
   DFFPCE (o_image1_2_EXMPLR450(3),GND,GND,first_bubble,i_clock,
   o_image0_2(3)) ;
   DFFPCE (o_image1_2_EXMPLR450(2),GND,GND,first_bubble,i_clock,
   o_image0_2(2)) ;
   DFFPCE (o_image1_2_EXMPLR450(1),GND,GND,first_bubble,i_clock,
   o_image0_2(1)) ;
   DFFPCE (o_image1_2_EXMPLR450(0),GND,GND,first_bubble,i_clock,
   o_image0_2(0)) ;
   DFFPCE (o_image1_1_EXMPLR449(7),GND,GND,first_bubble,i_clock,
   o_image0_1(7)) ;
   DFFPCE (o_image1_1_EXMPLR449(6),GND,GND,first_bubble,i_clock,
   o_image0_1(6)) ;
   DFFPCE (o_image1_1_EXMPLR449(5),GND,GND,first_bubble,i_clock,
   o_image0_1(5)) ;
   DFFPCE (o_image1_1_EXMPLR449(4),GND,GND,first_bubble,i_clock,
   o_image0_1(4)) ;
   DFFPCE (o_image1_1_EXMPLR449(3),GND,GND,first_bubble,i_clock,
   o_image0_1(3)) ;
   DFFPCE (o_image1_1_EXMPLR449(2),GND,GND,first_bubble,i_clock,
   o_image0_1(2)) ;
   DFFPCE (o_image1_1_EXMPLR449(1),GND,GND,first_bubble,i_clock,
   o_image0_1(1)) ;
   DFFPCE (o_image1_1_EXMPLR449(0),GND,GND,first_bubble,i_clock,
   o_image0_1(0)) ;
   DFFPCE (o_image1_0_EXMPLR448(7),GND,GND,first_bubble,i_clock,
   o_image0_0(7)) ;
   DFFPCE (o_image1_0_EXMPLR448(6),GND,GND,first_bubble,i_clock,
   o_image0_0(6)) ;
   DFFPCE (o_image1_0_EXMPLR448(5),GND,GND,first_bubble,i_clock,
   o_image0_0(5)) ;
   DFFPCE (o_image1_0_EXMPLR448(4),GND,GND,first_bubble,i_clock,
   o_image0_0(4)) ;
   DFFPCE (o_image1_0_EXMPLR448(3),GND,GND,first_bubble,i_clock,
   o_image0_0(3)) ;
   DFFPCE (o_image1_0_EXMPLR448(2),GND,GND,first_bubble,i_clock,
   o_image0_0(2)) ;
   DFFPCE (o_image1_0_EXMPLR448(1),GND,GND,first_bubble,i_clock,
   o_image0_0(1)) ;
   DFFPCE (o_image1_0_EXMPLR448(0),GND,GND,first_bubble,i_clock,
   o_image0_0(0)) ;
   DFFRSE (o_mode_EXMPLR444(1),GND,not_first_bubble,rtlc4n99,i_clock,o_valid
   ) ;
   DFFRSE (mem_wrn_current(1),GND,rtlcn226,not_rtlc3n215,i_clock,
   mem_wrn_current(2)) ;
   DFFRSE (mem_wrn_current(0),GND,rtlcn226,not_rtlc3n215,i_clock,
   mem_wrn_current(1)) ;
   DFFRSE (mem_wrn_current(2),rtlcn225,rtlc3n120,not_rtlc3n215,i_clock,
   mem_wrn_current(0)) ;
   modgen_and_0 : and_3u_3u port map ( a(2)=>not_rtlc3n135, a(1)=>i_valid, 
      a(0)=>not_rtlc3n121, d=>rtlc3n307);
   modgen_and_1 : and_10u_10u port map ( a(9)=>row(7), a(8)=>row(6), a(7)=>
      row(5), a(6)=>row(4), a(5)=>row(3), a(4)=>row(2), a(3)=>row(1), a(2)=>
      row(0), a(1)=>rtlcs0, a(0)=>first_bubble, d=>rtlc3n120);
end main_unfold_1492 ;

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
   ix246 : shiftregister_reg_p40_clk_reset_set_0_1_1_1_0_3 port map ( clk=>
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

architecture main_unfold_1331 of flow is 
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
   component add_11u_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
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
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal p21: std_logic_vector (11 DOWNTO 0) ;
   
   signal p22: std_logic_vector (11 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p31: std_logic_vector (11 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (11 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (11 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (11 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal o_mode_EXMPLR535: std_logic_vector (1 DOWNTO 1) ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc1n72, not_max_fwd, rtlc1n76, rtlc1n77, rtlc1n84, p21_3n0r3_11, 
      p21_3n0r3_9, p21_3n0r3_8, p21_3n0r3_7, p21_3n0r3_6, p21_3n0r3_5, 
      p21_3n0r3_4, p21_3n0r3_3, p21_3n0r3_2, p21_3n0r3_1, p21_3n0r3_0: 
   std_logic ;
   
   signal p21_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n189: std_logic_vector (11 DOWNTO 1) ;
   
   signal p22_3n0r3_11, p22_3n0r3_9, p22_3n0r3_8, p22_3n0r3_7, p22_3n0r3_6, 
      p22_3n0r3_5, p22_3n0r3_4, p22_3n0r3_3, p22_3n0r3_2, p22_3n0r3_1, 
      p22_3n0r3_0: std_logic ;
   
   signal p22_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n195: std_logic_vector (11 DOWNTO 1) ;
   
   signal p31_4n1ss1: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc4n47, rtlc5n123, rtlc5n124, not_p4s_11, rtlc5n126: std_logic
    ;
   
   signal rtlc7_max_dir_D_n12: std_logic_vector (0 DOWNTO 0) ;
   
   signal not_p45, rtlc7n89, not_rtlcn143, rtlcn126, rtlcn134, not_state_0, 
      not_state_2, rtlcn143, rtlcn144, not_rtlc4n47, rtlcn822, rtlcn874, 
      NOT_p12_0, NOT_p11_0: std_logic ;
   
   signal DANGLING : std_logic_vector (6 downto 0 );

begin
   o_mode(1) <= o_mode_EXMPLR535(1) ;
   o_mode(0) <= GND ;
   o_row(7) <= GND ;
   o_row(6) <= GND ;
   o_row(5) <= GND ;
   o_row(4) <= GND ;
   o_row(3) <= GND ;
   o_row(2) <= GND ;
   o_row(1) <= GND ;
   o_row(0) <= GND ;
   GND <= '0' ;
   o_mode_EXMPLR535(1) <= '1' ;
   p4s_sub12_0 : sub_12u_12u_12u_0 port map ( cin=>o_mode_EXMPLR535(1), 
      a(11)=>p31(11), a(10)=>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>
      p31(7), a(6)=>p31(6), a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>
      p31(2), a(1)=>p31(1), a(0)=>p31(0), b(11)=>GND, b(10)=>p32(10), b(9)=>
      p32(9), b(8)=>p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>
      p32(4), b(3)=>p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)
      =>p4s(11), d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), 
      d(6)=>p4s(6), d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), 
      d(1)=>p4s(1), d(0)=>p4s(0), cout=>DANGLING(0));
   rtlc1_11_eq_39 : eq_12u_12u port map ( a(11)=>p43(11), a(10)=>p43(10), 
      a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), 
      a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>rtlc1n72);
   rtlc1_12_and_40 : and_3u_3u port map ( a(2)=>rtlc1n72, a(1)=>not_max_fwd, 
      a(0)=>p45, d=>rtlc1n76);
   rtlc1_13_gt_41 : gt_12s_12s port map ( a(11)=>p43(11), a(10)=>p43(10), 
      a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), 
      a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>rtlc1n84);
   rtlc1n77 <= rtlc1n84 OR rtlc1n76 ;
   not_max_fwd <= NOT max_fwd ;
   rtlc4_88_gt_42 : gt_12s_12s port map ( a(11)=>p22(11), a(10)=>p22(10), 
      a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), a(5)=>p22(5), 
      a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), a(0)=>p22(0), 
      b(11)=>p21(11), b(10)=>p21(10), b(9)=>p21(9), b(8)=>p21(8), b(7)=>
      p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>p21(4), b(3)=>p21(3), b(2)=>
      p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>rtlc4n47);
   rtlc5n123 <= p4s(7) AND p4s(8) ;
   not_p4s_11 <= NOT p4s(11) ;
   rtlc5n126 <= rtlc5n124 AND not_p4s_11 ;
   not_p45 <= NOT p45 ;
   not_state_0 <= NOT state(0) ;
   not_state_2 <= NOT state(2) ;
   rtlcn134 <= state(1) OR not_state_2 ;
   rtlcn126 <= not_state_0 AND rtlcn134 ;
   not_rtlcn143 <= NOT rtlcn143 ;
   p31_4n1ss1(0) <= p22(0) when rtlc4n47 = '1' else p21(0) ;
   p31_4n1ss1(1) <= p22(1) when rtlc4n47 = '1' else p21(1) ;
   p31_4n1ss1(2) <= p22(2) when rtlc4n47 = '1' else p21(2) ;
   p31_4n1ss1(3) <= p22(3) when rtlc4n47 = '1' else p21(3) ;
   p31_4n1ss1(4) <= p22(4) when rtlc4n47 = '1' else p21(4) ;
   p31_4n1ss1(5) <= p22(5) when rtlc4n47 = '1' else p21(5) ;
   p31_4n1ss1(6) <= p22(6) when rtlc4n47 = '1' else p21(6) ;
   p31_4n1ss1(7) <= p22(7) when rtlc4n47 = '1' else p21(7) ;
   p31_4n1ss1(8) <= p22(8) when rtlc4n47 = '1' else p21(8) ;
   p31_4n1ss1(9) <= p22(9) when rtlc4n47 = '1' else p21(9) ;
   p31_4n1ss1(10) <= p22(10) when rtlc4n47 = '1' else p21(10) ;
   p31_4n1ss1(11) <= p22(11) when rtlc4n47 = '1' else p21(11) ;
   rtlc_138_or_44 : or_4u_4u port map ( a(3)=>state(0), a(2)=>state(1), a(1)
      =>state(2), a(0)=>state(3), d=>rtlcn144);
   rtlc7n89 <= rtlc1n77 AND rtlcn144 ;
   rtlc_162_add_46 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>
      p21_3n0r3_11, a(9)=>p21_3n0r3_11, a(8)=>p21_3n0r3_9, a(7)=>p21_3n0r3_8, 
      a(6)=>p21_3n0r3_7, a(5)=>p21_3n0r3_6, a(4)=>p21_3n0r3_5, a(3)=>
      p21_3n0r3_4, a(2)=>p21_3n0r3_3, a(1)=>p21_3n0r3_2, a(0)=>p21_3n0r3_1, 
      b(10)=>p21_3n0r4(11), b(9)=>p21_3n0r4(10), b(8)=>p21_3n0r4(9), b(7)=>
      p21_3n0r4(8), b(6)=>p21_3n0r4(7), b(5)=>p21_3n0r4(6), b(4)=>
      p21_3n0r4(5), b(3)=>p21_3n0r4(4), b(2)=>p21_3n0r4(3), b(1)=>
      p21_3n0r4(2), b(0)=>p12(0), d(10)=>rtlc3n189(11), d(9)=>rtlc3n189(10), 
      d(8)=>rtlc3n189(9), d(7)=>rtlc3n189(8), d(6)=>rtlc3n189(7), d(5)=>
      rtlc3n189(6), d(4)=>rtlc3n189(5), d(3)=>rtlc3n189(4), d(2)=>
      rtlc3n189(3), d(1)=>rtlc3n189(2), d(0)=>rtlc3n189(1), cout=>DANGLING(1
      ));
   rtlc_185_add_48 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>
      p22_3n0r3_11, a(9)=>p22_3n0r3_11, a(8)=>p22_3n0r3_9, a(7)=>p22_3n0r3_8, 
      a(6)=>p22_3n0r3_7, a(5)=>p22_3n0r3_6, a(4)=>p22_3n0r3_5, a(3)=>
      p22_3n0r3_4, a(2)=>p22_3n0r3_3, a(1)=>p22_3n0r3_2, a(0)=>p22_3n0r3_1, 
      b(10)=>p22_3n0r4(11), b(9)=>p22_3n0r4(10), b(8)=>p22_3n0r4(9), b(7)=>
      p22_3n0r4(8), b(6)=>p22_3n0r4(7), b(5)=>p22_3n0r4(6), b(4)=>
      p22_3n0r4(5), b(3)=>p22_3n0r4(4), b(2)=>p22_3n0r4(3), b(1)=>
      p22_3n0r4(2), b(0)=>p11(0), d(10)=>rtlc3n195(11), d(9)=>rtlc3n195(10), 
      d(8)=>rtlc3n195(9), d(7)=>rtlc3n195(8), d(6)=>rtlc3n195(7), d(5)=>
      rtlc3n195(6), d(4)=>rtlc3n195(5), d(3)=>rtlc3n195(4), d(2)=>
      rtlc3n195(3), d(1)=>rtlc3n195(2), d(0)=>rtlc3n195(1), cout=>DANGLING(2
      ));
   not_rtlc4n47 <= NOT rtlc4n47 ;
   rtlc7_max_dir_D_n12(0) <= not_p45 XOR state(0) ;
   rtlcn143 <= state(1) OR state(0) ;
   p11_add8_0i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>t1(7), a(6)=>
      t1(6), a(5)=>t1(5), a(4)=>t1(4), a(3)=>t1(3), a(2)=>t1(2), a(1)=>t1(1), 
      a(0)=>t1(0), b(7)=>t2(7), b(6)=>t2(6), b(5)=>t2(5), b(4)=>t2(4), b(3)
      =>t2(3), b(2)=>t2(2), b(1)=>t2(1), b(0)=>t2(0), d(7)=>p11_0n0s2(7), 
      d(6)=>p11_0n0s2(6), d(5)=>p11_0n0s2(5), d(4)=>p11_0n0s2(4), d(3)=>
      p11_0n0s2(3), d(2)=>p11_0n0s2(2), d(1)=>p11_0n0s2(1), d(0)=>
      p11_0n0s2(0), cout=>p11_0n0s2(8));
   p11_add9_1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(7), a(6)=>p11_0n0s2(6), a(5)=>p11_0n0s2(5), a(4)=>
      p11_0n0s2(4), a(3)=>p11_0n0s2(3), a(2)=>p11_0n0s2(2), a(1)=>
      p11_0n0s2(1), a(0)=>p11_0n0s2(0), b(8)=>GND, b(7)=>t3(7), b(6)=>t3(6), 
      b(5)=>t3(5), b(4)=>t3(4), b(3)=>t3(3), b(2)=>t3(2), b(1)=>t3(1), b(0)
      =>t3(0), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>p11(5), d(4)
      =>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>p11(0), cout
      =>p11(9));
   p12_add8_0i2 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>b1(7), a(6)=>
      b1(6), a(5)=>b1(5), a(4)=>b1(4), a(3)=>b1(3), a(2)=>b1(2), a(1)=>b1(1), 
      a(0)=>b1(0), b(7)=>b2(7), b(6)=>b2(6), b(5)=>b2(5), b(4)=>b2(4), b(3)
      =>b2(3), b(2)=>b2(2), b(1)=>b2(1), b(0)=>b2(0), d(7)=>p12_0n0s2(7), 
      d(6)=>p12_0n0s2(6), d(5)=>p12_0n0s2(5), d(4)=>p12_0n0s2(4), d(3)=>
      p12_0n0s2(3), d(2)=>p12_0n0s2(2), d(1)=>p12_0n0s2(1), d(0)=>
      p12_0n0s2(0), cout=>p12_0n0s2(8));
   p12_add9_2 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(7), a(6)=>p12_0n0s2(6), a(5)=>p12_0n0s2(5), a(4)=>
      p12_0n0s2(4), a(3)=>p12_0n0s2(3), a(2)=>p12_0n0s2(2), a(1)=>
      p12_0n0s2(1), a(0)=>p12_0n0s2(0), b(8)=>GND, b(7)=>b3(7), b(6)=>b3(6), 
      b(5)=>b3(5), b(4)=>b3(4), b(3)=>b3(3), b(2)=>b3(2), b(1)=>b3(1), b(0)
      =>b3(0), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>p12(5), d(4)
      =>p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>p12(0), cout
      =>p12(9));
   p21_3n0r3_11 <= NOT rtlcn822 ;
   p21_sub10_3i3 : sub_10u_10u_10u_0 port map ( cin=>o_mode_EXMPLR535(1), 
      a(9)=>p11(9), a(8)=>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), 
      a(4)=>p11(4), a(3)=>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), 
      b(9)=>p12(9), b(8)=>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), 
      b(4)=>p12(4), b(3)=>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), 
      d(9)=>p21_3n0r3_9, d(8)=>p21_3n0r3_8, d(7)=>p21_3n0r3_7, d(6)=>
      p21_3n0r3_6, d(5)=>p21_3n0r3_5, d(4)=>p21_3n0r3_4, d(3)=>p21_3n0r3_3, 
      d(2)=>p21_3n0r3_2, d(1)=>p21_3n0r3_1, d(0)=>p21_3n0r3_0, cout=>
      rtlcn822);
   p22_3n0r3_11 <= NOT rtlcn874 ;
   p22_sub10_3i4 : sub_10u_10u_10u_0 port map ( cin=>o_mode_EXMPLR535(1), 
      a(9)=>p12(9), a(8)=>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), 
      a(4)=>p12(4), a(3)=>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), 
      b(9)=>p11(9), b(8)=>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), 
      b(4)=>p11(4), b(3)=>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), 
      d(9)=>p22_3n0r3_9, d(8)=>p22_3n0r3_8, d(7)=>p22_3n0r3_7, d(6)=>
      p22_3n0r3_6, d(5)=>p22_3n0r3_5, d(4)=>p22_3n0r3_4, d(3)=>p22_3n0r3_3, 
      d(2)=>p22_3n0r3_2, d(1)=>p22_3n0r3_1, d(0)=>p22_3n0r3_0, cout=>
      rtlcn874);
   p13_add8_0i3 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>p13_0n0s2(8), b(7)=>
      p13_0n0s2(7), b(6)=>p13_0n0s2(6), b(5)=>p13_0n0s2(5), b(4)=>
      p13_0n0s2(4), b(3)=>p13_0n0s2(3), b(2)=>p13_0n0s2(2), b(1)=>
      p13_0n0s2(1), b(0)=>p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>
      p13(7), d(5)=>p13(6), d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>
      p13(2), d(0)=>p13(1), cout=>p13(10));
   DFFPC (p13(10),GND,GND,i_clock,p23(10)) ;
   DFFPC (p13(9),GND,GND,i_clock,p23(9)) ;
   DFFPC (p13(8),GND,GND,i_clock,p23(8)) ;
   DFFPC (p13(7),GND,GND,i_clock,p23(7)) ;
   DFFPC (p13(6),GND,GND,i_clock,p23(6)) ;
   DFFPC (p13(5),GND,GND,i_clock,p23(5)) ;
   DFFPC (p13(4),GND,GND,i_clock,p23(4)) ;
   DFFPC (p13(3),GND,GND,i_clock,p23(3)) ;
   DFFPC (p13(2),GND,GND,i_clock,p23(2)) ;
   DFFPC (p13(1),GND,GND,i_clock,p23(1)) ;
   DFFPC (p13_0n0s2(0),GND,GND,i_clock,p23(0)) ;
   DFFPC (rtlc3n195(11),GND,GND,i_clock,p22(11)) ;
   DFFPC (rtlc3n195(10),GND,GND,i_clock,p22(10)) ;
   DFFPC (rtlc3n195(9),GND,GND,i_clock,p22(9)) ;
   DFFPC (rtlc3n195(8),GND,GND,i_clock,p22(8)) ;
   DFFPC (rtlc3n195(7),GND,GND,i_clock,p22(7)) ;
   DFFPC (rtlc3n195(6),GND,GND,i_clock,p22(6)) ;
   DFFPC (rtlc3n195(5),GND,GND,i_clock,p22(5)) ;
   DFFPC (rtlc3n195(4),GND,GND,i_clock,p22(4)) ;
   DFFPC (rtlc3n195(3),GND,GND,i_clock,p22(3)) ;
   DFFPC (rtlc3n195(2),GND,GND,i_clock,p22(2)) ;
   DFFPC (rtlc3n195(1),GND,GND,i_clock,p22(1)) ;
   DFFPC (p22_3n0r3_0,GND,GND,i_clock,p22(0)) ;
   DFFPC (rtlc3n189(11),GND,GND,i_clock,p21(11)) ;
   DFFPC (rtlc3n189(10),GND,GND,i_clock,p21(10)) ;
   DFFPC (rtlc3n189(9),GND,GND,i_clock,p21(9)) ;
   DFFPC (rtlc3n189(8),GND,GND,i_clock,p21(8)) ;
   DFFPC (rtlc3n189(7),GND,GND,i_clock,p21(7)) ;
   DFFPC (rtlc3n189(6),GND,GND,i_clock,p21(6)) ;
   DFFPC (rtlc3n189(5),GND,GND,i_clock,p21(5)) ;
   DFFPC (rtlc3n189(4),GND,GND,i_clock,p21(4)) ;
   DFFPC (rtlc3n189(3),GND,GND,i_clock,p21(3)) ;
   DFFPC (rtlc3n189(2),GND,GND,i_clock,p21(2)) ;
   DFFPC (rtlc3n189(1),GND,GND,i_clock,p21(1)) ;
   DFFPC (p21_3n0r3_0,GND,GND,i_clock,p21(0)) ;
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
   DFFPC (p31_4n1ss1(11),GND,GND,i_clock,p31(11)) ;
   DFFPC (p31_4n1ss1(10),GND,GND,i_clock,p31(10)) ;
   DFFPC (p31_4n1ss1(9),GND,GND,i_clock,p31(9)) ;
   DFFPC (p31_4n1ss1(8),GND,GND,i_clock,p31(8)) ;
   DFFPC (p31_4n1ss1(7),GND,GND,i_clock,p31(7)) ;
   DFFPC (p31_4n1ss1(6),GND,GND,i_clock,p31(6)) ;
   DFFPC (p31_4n1ss1(5),GND,GND,i_clock,p31(5)) ;
   DFFPC (p31_4n1ss1(4),GND,GND,i_clock,p31(4)) ;
   DFFPC (p31_4n1ss1(3),GND,GND,i_clock,p31(3)) ;
   DFFPC (p31_4n1ss1(2),GND,GND,i_clock,p31(2)) ;
   DFFPC (p31_4n1ss1(1),GND,GND,i_clock,p31(1)) ;
   DFFPC (p31_4n1ss1(0),GND,GND,i_clock,p31(0)) ;
   DFFPC (not_rtlc4n47,GND,GND,i_clock,p35) ;
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
   DFFPC (rtlc5n126,GND,GND,i_clock,p41) ;
   DFFPC (prev_edge,GND,GND,i_clock,o_edge) ;
   DFFRSE (p41,GND,state(3),rtlc1n77,i_clock,prev_edge) ;
   DFFRSE (p45,GND,state(3),rtlc1n77,i_clock,max_fwd) ;
   DFFRSE (p43(11),GND,state(3),rtlc1n77,i_clock,prev_max(11)) ;
   DFFRSE (p43(10),GND,state(3),rtlc1n77,i_clock,prev_max(10)) ;
   DFFRSE (p43(9),GND,state(3),rtlc1n77,i_clock,prev_max(9)) ;
   DFFRSE (p43(8),GND,state(3),rtlc1n77,i_clock,prev_max(8)) ;
   DFFRSE (p43(7),GND,state(3),rtlc1n77,i_clock,prev_max(7)) ;
   DFFRSE (p43(6),GND,state(3),rtlc1n77,i_clock,prev_max(6)) ;
   DFFRSE (p43(5),GND,state(3),rtlc1n77,i_clock,prev_max(5)) ;
   DFFRSE (p43(4),GND,state(3),rtlc1n77,i_clock,prev_max(4)) ;
   DFFRSE (p43(3),GND,state(3),rtlc1n77,i_clock,prev_max(3)) ;
   DFFRSE (p43(2),GND,state(3),rtlc1n77,i_clock,prev_max(2)) ;
   DFFRSE (p43(1),GND,state(3),rtlc1n77,i_clock,prev_max(1)) ;
   DFFRSE (p43(0),GND,state(3),rtlc1n77,i_clock,prev_max(0)) ;
   DFFPCE (rtlcn126,GND,GND,rtlc7n89,i_clock,o_dir(2)) ;
   DFFPCE (not_rtlcn143,GND,GND,rtlc7n89,i_clock,o_dir(1)) ;
   DFFPCE (rtlc7_max_dir_D_n12(0),GND,GND,rtlc1n77,i_clock,o_dir(0)) ;
   DFFRSE (state(2),GND,GND,p40,i_clock,state(3)) ;
   DFFRSE (state(1),GND,GND,p40,i_clock,state(2)) ;
   DFFRSE (state(0),GND,GND,p40,i_clock,state(1)) ;
   DFFRSE (state(3),GND,GND,p40,i_clock,state(0)) ;
   DFFRSE (state(3),GND,GND,o_mode_EXMPLR535(1),i_clock,o_valid) ;
   NOT_p12_0 <= NOT p12(0) ;
   p21_sub11_3i1 : sub_10u_10u_10u_0 port map ( cin=>NOT_p12_0, a(9)=>p11(9), 
      a(8)=>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), 
      a(3)=>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>GND, 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_3n0r4(11), d(8)=>p21_3n0r4(10), d(7)=>p21_3n0r4(9), d(6)=>
      p21_3n0r4(8), d(5)=>p21_3n0r4(7), d(4)=>p21_3n0r4(6), d(3)=>
      p21_3n0r4(5), d(2)=>p21_3n0r4(4), d(1)=>p21_3n0r4(3), d(0)=>
      p21_3n0r4(2), cout=>DANGLING(3));
   NOT_p11_0 <= NOT p11(0) ;
   p22_sub11_3i2 : sub_10u_10u_10u_0 port map ( cin=>NOT_p11_0, a(9)=>p12(9), 
      a(8)=>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), 
      a(3)=>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>GND, 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_3n0r4(11), d(8)=>p22_3n0r4(10), d(7)=>p22_3n0r4(9), d(6)=>
      p22_3n0r4(8), d(5)=>p22_3n0r4(7), d(4)=>p22_3n0r4(6), d(3)=>
      p22_3n0r4(5), d(2)=>p22_3n0r4(4), d(1)=>p22_3n0r4(3), d(0)=>
      p22_3n0r4(2), cout=>DANGLING(4));
   modgen_or_0 : or_4u_4u port map ( a(3)=>p4s(9), a(2)=>p4s(10), a(1)=>
      p4s(11), a(0)=>rtlc5n123, d=>rtlc5n124);
   ix247 : shiftregister_with_taps_1_3_1 port map ( \in\(0)=>i_valid, 
      \out\(0)=>p40, tap_out(0)=>DANGLING(5), clk=>i_clock, clken=>DANGLING(
      6), reset=>GND, set=>GND);
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

architecture main_unfold_1777 of kirsch is 
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
   signal debug_valid_EXMPLR551: std_logic ;
   
   signal debug_num_0_EXMPLR684: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR685: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR686: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR687: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR688: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR689: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_6_EXMPLR690: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_7_EXMPLR691: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal m_o_valid: std_logic ;
   
   signal f_t1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR692: std_logic_vector (17 DOWNTO 17) ;
   
   signal not_rtlcs0, rtlcs0, not_f_state_3, not_f_state_2, not_f_state_1: 
   std_logic ;
   
   signal o_image0_0_EXMPLR693: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR694: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR695: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR696: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR697: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR698: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR699: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR700: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_EXMPLR701: std_logic_vector (1 DOWNTO 1) ;
   
   signal DANGLING : std_logic_vector (35 downto 0 );

begin
   o_mode(1) <= o_mode_EXMPLR701(1) ;
   o_mode(0) <= debug_led_red_EXMPLR692(17) ;
   o_row(7) <= debug_led_red_EXMPLR692(17) ;
   o_row(6) <= debug_led_red_EXMPLR692(17) ;
   o_row(5) <= debug_led_red_EXMPLR692(17) ;
   o_row(4) <= debug_led_red_EXMPLR692(17) ;
   o_row(3) <= debug_led_red_EXMPLR692(17) ;
   o_row(2) <= debug_led_red_EXMPLR692(17) ;
   o_row(1) <= debug_led_red_EXMPLR692(17) ;
   o_row(0) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(7) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(6) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(5) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(4) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(3) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(2) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(1) <= debug_led_red_EXMPLR692(17) ;
   o_image0_0(0) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(7) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(6) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(5) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(4) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(3) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(2) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(1) <= debug_led_red_EXMPLR692(17) ;
   o_image0_1(0) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(7) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(6) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(5) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(4) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(3) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(2) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(1) <= debug_led_red_EXMPLR692(17) ;
   o_image0_2(0) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(7) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(6) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(5) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(4) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(3) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(2) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(1) <= debug_led_red_EXMPLR692(17) ;
   o_image1_0(0) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(7) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(6) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(5) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(4) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(3) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(2) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(1) <= debug_led_red_EXMPLR692(17) ;
   o_image1_1(0) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(7) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(6) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(5) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(4) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(3) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(2) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(1) <= debug_led_red_EXMPLR692(17) ;
   o_image1_2(0) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(7) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(6) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(5) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(4) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(3) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(2) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(1) <= debug_led_red_EXMPLR692(17) ;
   o_image2_0(0) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(7) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(6) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(5) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(4) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(3) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(2) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(1) <= debug_led_red_EXMPLR692(17) ;
   o_image2_1(0) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(7) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(6) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(5) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(4) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(3) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(2) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(1) <= debug_led_red_EXMPLR692(17) ;
   o_image2_2(0) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(17) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(15) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(14) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(13) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(12) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(11) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(10) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(9) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(8) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(7) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(6) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(5) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(4) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(3) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(2) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(1) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red(0) <= debug_led_red_EXMPLR692(17) ;
   debug_led_grn(5) <= debug_led_red_EXMPLR692(17) ;
   debug_led_grn(4) <= debug_led_red_EXMPLR692(17) ;
   debug_led_grn(3) <= debug_led_red_EXMPLR692(17) ;
   debug_led_grn(2) <= debug_led_red_EXMPLR692(17) ;
   debug_led_grn(1) <= debug_led_red_EXMPLR692(17) ;
   debug_led_grn(0) <= debug_led_red_EXMPLR692(17) ;
   debug_valid <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_0(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_1(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_2(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_3(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_4(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_5(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_6(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_7(0) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(7) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(6) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(5) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(4) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(3) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(2) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(1) <= debug_led_red_EXMPLR692(17) ;
   debug_num_8(0) <= debug_led_red_EXMPLR692(17) ;
   debug_led_red_EXMPLR692(17) <= '0' ;
   u_memory : memory port map ( i_valid=>i_valid, i_reset=>
      debug_led_red_EXMPLR692(17), i_pixel(7)=>i_pixel(7), i_pixel(6)=>
      i_pixel(6), i_pixel(5)=>i_pixel(5), i_pixel(4)=>i_pixel(4), i_pixel(3)
      =>i_pixel(3), i_pixel(2)=>i_pixel(2), i_pixel(1)=>i_pixel(1), 
      i_pixel(0)=>i_pixel(0), i_clock=>i_clock, o_valid=>m_o_valid, 
      o_mode(1)=>DANGLING(0), o_mode(0)=>DANGLING(1), o_column(7)=>DANGLING(
      2), o_column(6)=>DANGLING(3), o_column(5)=>DANGLING(4), o_column(4)=>
      DANGLING(5), o_column(3)=>DANGLING(6), o_column(2)=>DANGLING(7), 
      o_column(1)=>DANGLING(8), o_column(0)=>DANGLING(9), o_row(7)=>DANGLING
      (10), o_row(6)=>DANGLING(11), o_row(5)=>DANGLING(12), o_row(4)=>
      DANGLING(13), o_row(3)=>DANGLING(14), o_row(2)=>DANGLING(15), o_row(1)
      =>DANGLING(16), o_row(0)=>DANGLING(17), o_image0_0(7)=>
      o_image0_0_EXMPLR693(7), o_image0_0(6)=>o_image0_0_EXMPLR693(6), 
      o_image0_0(5)=>o_image0_0_EXMPLR693(5), o_image0_0(4)=>
      o_image0_0_EXMPLR693(4), o_image0_0(3)=>o_image0_0_EXMPLR693(3), 
      o_image0_0(2)=>o_image0_0_EXMPLR693(2), o_image0_0(1)=>
      o_image0_0_EXMPLR693(1), o_image0_0(0)=>o_image0_0_EXMPLR693(0), 
      o_image0_1(7)=>o_image0_1_EXMPLR694(7), o_image0_1(6)=>
      o_image0_1_EXMPLR694(6), o_image0_1(5)=>o_image0_1_EXMPLR694(5), 
      o_image0_1(4)=>o_image0_1_EXMPLR694(4), o_image0_1(3)=>
      o_image0_1_EXMPLR694(3), o_image0_1(2)=>o_image0_1_EXMPLR694(2), 
      o_image0_1(1)=>o_image0_1_EXMPLR694(1), o_image0_1(0)=>
      o_image0_1_EXMPLR694(0), o_image0_2(7)=>o_image0_2_EXMPLR695(7), 
      o_image0_2(6)=>o_image0_2_EXMPLR695(6), o_image0_2(5)=>
      o_image0_2_EXMPLR695(5), o_image0_2(4)=>o_image0_2_EXMPLR695(4), 
      o_image0_2(3)=>o_image0_2_EXMPLR695(3), o_image0_2(2)=>
      o_image0_2_EXMPLR695(2), o_image0_2(1)=>o_image0_2_EXMPLR695(1), 
      o_image0_2(0)=>o_image0_2_EXMPLR695(0), o_image1_0(7)=>
      o_image1_0_EXMPLR696(7), o_image1_0(6)=>o_image1_0_EXMPLR696(6), 
      o_image1_0(5)=>o_image1_0_EXMPLR696(5), o_image1_0(4)=>
      o_image1_0_EXMPLR696(4), o_image1_0(3)=>o_image1_0_EXMPLR696(3), 
      o_image1_0(2)=>o_image1_0_EXMPLR696(2), o_image1_0(1)=>
      o_image1_0_EXMPLR696(1), o_image1_0(0)=>o_image1_0_EXMPLR696(0), 
      o_image1_1(7)=>DANGLING(18), o_image1_1(6)=>DANGLING(19), 
      o_image1_1(5)=>DANGLING(20), o_image1_1(4)=>DANGLING(21), 
      o_image1_1(3)=>DANGLING(22), o_image1_1(2)=>DANGLING(23), 
      o_image1_1(1)=>DANGLING(24), o_image1_1(0)=>DANGLING(25), 
      o_image1_2(7)=>o_image1_2_EXMPLR697(7), o_image1_2(6)=>
      o_image1_2_EXMPLR697(6), o_image1_2(5)=>o_image1_2_EXMPLR697(5), 
      o_image1_2(4)=>o_image1_2_EXMPLR697(4), o_image1_2(3)=>
      o_image1_2_EXMPLR697(3), o_image1_2(2)=>o_image1_2_EXMPLR697(2), 
      o_image1_2(1)=>o_image1_2_EXMPLR697(1), o_image1_2(0)=>
      o_image1_2_EXMPLR697(0), o_image2_0(7)=>o_image2_0_EXMPLR698(7), 
      o_image2_0(6)=>o_image2_0_EXMPLR698(6), o_image2_0(5)=>
      o_image2_0_EXMPLR698(5), o_image2_0(4)=>o_image2_0_EXMPLR698(4), 
      o_image2_0(3)=>o_image2_0_EXMPLR698(3), o_image2_0(2)=>
      o_image2_0_EXMPLR698(2), o_image2_0(1)=>o_image2_0_EXMPLR698(1), 
      o_image2_0(0)=>o_image2_0_EXMPLR698(0), o_image2_1(7)=>
      o_image2_1_EXMPLR699(7), o_image2_1(6)=>o_image2_1_EXMPLR699(6), 
      o_image2_1(5)=>o_image2_1_EXMPLR699(5), o_image2_1(4)=>
      o_image2_1_EXMPLR699(4), o_image2_1(3)=>o_image2_1_EXMPLR699(3), 
      o_image2_1(2)=>o_image2_1_EXMPLR699(2), o_image2_1(1)=>
      o_image2_1_EXMPLR699(1), o_image2_1(0)=>o_image2_1_EXMPLR699(0), 
      o_image2_2(7)=>o_image2_2_EXMPLR700(7), o_image2_2(6)=>
      o_image2_2_EXMPLR700(6), o_image2_2(5)=>o_image2_2_EXMPLR700(5), 
      o_image2_2(4)=>o_image2_2_EXMPLR700(4), o_image2_2(3)=>
      o_image2_2_EXMPLR700(3), o_image2_2(2)=>o_image2_2_EXMPLR700(2), 
      o_image2_2(1)=>o_image2_2_EXMPLR700(1), o_image2_2(0)=>
      o_image2_2_EXMPLR700(0));
   u_flow : flow port map ( t1(7)=>debug_num_0_EXMPLR684(7), t1(6)=>
      debug_num_0_EXMPLR684(6), t1(5)=>debug_num_0_EXMPLR684(5), t1(4)=>
      debug_num_0_EXMPLR684(4), t1(3)=>debug_num_0_EXMPLR684(3), t1(2)=>
      debug_num_0_EXMPLR684(2), t1(1)=>debug_num_0_EXMPLR684(1), t1(0)=>
      debug_num_0_EXMPLR684(0), t2(7)=>debug_num_1_EXMPLR685(7), t2(6)=>
      debug_num_1_EXMPLR685(6), t2(5)=>debug_num_1_EXMPLR685(5), t2(4)=>
      debug_num_1_EXMPLR685(4), t2(3)=>debug_num_1_EXMPLR685(3), t2(2)=>
      debug_num_1_EXMPLR685(2), t2(1)=>debug_num_1_EXMPLR685(1), t2(0)=>
      debug_num_1_EXMPLR685(0), t3(7)=>debug_num_2_EXMPLR686(7), t3(6)=>
      debug_num_2_EXMPLR686(6), t3(5)=>debug_num_2_EXMPLR686(5), t3(4)=>
      debug_num_2_EXMPLR686(4), t3(3)=>debug_num_2_EXMPLR686(3), t3(2)=>
      debug_num_2_EXMPLR686(2), t3(1)=>debug_num_2_EXMPLR686(1), t3(0)=>
      debug_num_2_EXMPLR686(0), b1(7)=>debug_num_3_EXMPLR687(7), b1(6)=>
      debug_num_3_EXMPLR687(6), b1(5)=>debug_num_3_EXMPLR687(5), b1(4)=>
      debug_num_3_EXMPLR687(4), b1(3)=>debug_num_3_EXMPLR687(3), b1(2)=>
      debug_num_3_EXMPLR687(2), b1(1)=>debug_num_3_EXMPLR687(1), b1(0)=>
      debug_num_3_EXMPLR687(0), b2(7)=>debug_num_4_EXMPLR688(7), b2(6)=>
      debug_num_4_EXMPLR688(6), b2(5)=>debug_num_4_EXMPLR688(5), b2(4)=>
      debug_num_4_EXMPLR688(4), b2(3)=>debug_num_4_EXMPLR688(3), b2(2)=>
      debug_num_4_EXMPLR688(2), b2(1)=>debug_num_4_EXMPLR688(1), b2(0)=>
      debug_num_4_EXMPLR688(0), b3(7)=>debug_num_5_EXMPLR689(7), b3(6)=>
      debug_num_5_EXMPLR689(6), b3(5)=>debug_num_5_EXMPLR689(5), b3(4)=>
      debug_num_5_EXMPLR689(4), b3(3)=>debug_num_5_EXMPLR689(3), b3(2)=>
      debug_num_5_EXMPLR689(2), b3(1)=>debug_num_5_EXMPLR689(1), b3(0)=>
      debug_num_5_EXMPLR689(0), i1(7)=>debug_num_6_EXMPLR690(7), i1(6)=>
      debug_num_6_EXMPLR690(6), i1(5)=>debug_num_6_EXMPLR690(5), i1(4)=>
      debug_num_6_EXMPLR690(4), i1(3)=>debug_num_6_EXMPLR690(3), i1(2)=>
      debug_num_6_EXMPLR690(2), i1(1)=>debug_num_6_EXMPLR690(1), i1(0)=>
      debug_num_6_EXMPLR690(0), i2(7)=>debug_num_7_EXMPLR691(7), i2(6)=>
      debug_num_7_EXMPLR691(6), i2(5)=>debug_num_7_EXMPLR691(5), i2(4)=>
      debug_num_7_EXMPLR691(4), i2(3)=>debug_num_7_EXMPLR691(3), i2(2)=>
      debug_num_7_EXMPLR691(2), i2(1)=>debug_num_7_EXMPLR691(1), i2(0)=>
      debug_num_7_EXMPLR691(0), i_clock=>i_clock, i_reset=>
      debug_led_red_EXMPLR692(17), i_valid=>debug_valid_EXMPLR551, i_mode(1)
      =>o_mode_EXMPLR701(1), i_mode(0)=>debug_led_red_EXMPLR692(17), 
      i_row(7)=>debug_led_red_EXMPLR692(17), i_row(6)=>
      debug_led_red_EXMPLR692(17), i_row(5)=>debug_led_red_EXMPLR692(17), 
      i_row(4)=>debug_led_red_EXMPLR692(17), i_row(3)=>
      debug_led_red_EXMPLR692(17), i_row(2)=>debug_led_red_EXMPLR692(17), 
      i_row(1)=>debug_led_red_EXMPLR692(17), i_row(0)=>
      debug_led_red_EXMPLR692(17), o_dir(2)=>o_dir(2), o_dir(1)=>o_dir(1), 
      o_dir(0)=>o_dir(0), o_edge=>o_edge, o_valid=>o_valid, o_mode(1)=>
      DANGLING(26), o_mode(0)=>DANGLING(27), o_row(7)=>DANGLING(28), 
      o_row(6)=>DANGLING(29), o_row(5)=>DANGLING(30), o_row(4)=>DANGLING(31), 
      o_row(3)=>DANGLING(32), o_row(2)=>DANGLING(33), o_row(1)=>DANGLING(34), 
      o_row(0)=>DANGLING(35));
   debug_valid_EXMPLR551 <= m_o_valid OR not_rtlcs0 ;
   debug_num_0_EXMPLR684(0) <= o_image0_2_EXMPLR695(0) when rtlcs0
    = '1' else f_t1_next(0) ;
   debug_num_0_EXMPLR684(1) <= o_image0_2_EXMPLR695(1) when rtlcs0
    = '1' else f_t1_next(1) ;
   debug_num_0_EXMPLR684(2) <= o_image0_2_EXMPLR695(2) when rtlcs0
    = '1' else f_t1_next(2) ;
   debug_num_0_EXMPLR684(3) <= o_image0_2_EXMPLR695(3) when rtlcs0
    = '1' else f_t1_next(3) ;
   debug_num_0_EXMPLR684(4) <= o_image0_2_EXMPLR695(4) when rtlcs0
    = '1' else f_t1_next(4) ;
   debug_num_0_EXMPLR684(5) <= o_image0_2_EXMPLR695(5) when rtlcs0
    = '1' else f_t1_next(5) ;
   debug_num_0_EXMPLR684(6) <= o_image0_2_EXMPLR695(6) when rtlcs0
    = '1' else f_t1_next(6) ;
   debug_num_0_EXMPLR684(7) <= o_image0_2_EXMPLR695(7) when rtlcs0
    = '1' else f_t1_next(7) ;
   debug_num_1_EXMPLR685(0) <= o_image0_1_EXMPLR694(0) when rtlcs0
    = '1' else f_t2_next(0) ;
   debug_num_1_EXMPLR685(1) <= o_image0_1_EXMPLR694(1) when rtlcs0
    = '1' else f_t2_next(1) ;
   debug_num_1_EXMPLR685(2) <= o_image0_1_EXMPLR694(2) when rtlcs0
    = '1' else f_t2_next(2) ;
   debug_num_1_EXMPLR685(3) <= o_image0_1_EXMPLR694(3) when rtlcs0
    = '1' else f_t2_next(3) ;
   debug_num_1_EXMPLR685(4) <= o_image0_1_EXMPLR694(4) when rtlcs0
    = '1' else f_t2_next(4) ;
   debug_num_1_EXMPLR685(5) <= o_image0_1_EXMPLR694(5) when rtlcs0
    = '1' else f_t2_next(5) ;
   debug_num_1_EXMPLR685(6) <= o_image0_1_EXMPLR694(6) when rtlcs0
    = '1' else f_t2_next(6) ;
   debug_num_1_EXMPLR685(7) <= o_image0_1_EXMPLR694(7) when rtlcs0
    = '1' else f_t2_next(7) ;
   debug_num_2_EXMPLR686(0) <= o_image0_0_EXMPLR693(0) when rtlcs0
    = '1' else f_t3_next(0) ;
   debug_num_2_EXMPLR686(1) <= o_image0_0_EXMPLR693(1) when rtlcs0
    = '1' else f_t3_next(1) ;
   debug_num_2_EXMPLR686(2) <= o_image0_0_EXMPLR693(2) when rtlcs0
    = '1' else f_t3_next(2) ;
   debug_num_2_EXMPLR686(3) <= o_image0_0_EXMPLR693(3) when rtlcs0
    = '1' else f_t3_next(3) ;
   debug_num_2_EXMPLR686(4) <= o_image0_0_EXMPLR693(4) when rtlcs0
    = '1' else f_t3_next(4) ;
   debug_num_2_EXMPLR686(5) <= o_image0_0_EXMPLR693(5) when rtlcs0
    = '1' else f_t3_next(5) ;
   debug_num_2_EXMPLR686(6) <= o_image0_0_EXMPLR693(6) when rtlcs0
    = '1' else f_t3_next(6) ;
   debug_num_2_EXMPLR686(7) <= o_image0_0_EXMPLR693(7) when rtlcs0
    = '1' else f_t3_next(7) ;
   debug_num_3_EXMPLR687(0) <= o_image2_0_EXMPLR698(0) when rtlcs0
    = '1' else f_b1_next(0) ;
   debug_num_3_EXMPLR687(1) <= o_image2_0_EXMPLR698(1) when rtlcs0
    = '1' else f_b1_next(1) ;
   debug_num_3_EXMPLR687(2) <= o_image2_0_EXMPLR698(2) when rtlcs0
    = '1' else f_b1_next(2) ;
   debug_num_3_EXMPLR687(3) <= o_image2_0_EXMPLR698(3) when rtlcs0
    = '1' else f_b1_next(3) ;
   debug_num_3_EXMPLR687(4) <= o_image2_0_EXMPLR698(4) when rtlcs0
    = '1' else f_b1_next(4) ;
   debug_num_3_EXMPLR687(5) <= o_image2_0_EXMPLR698(5) when rtlcs0
    = '1' else f_b1_next(5) ;
   debug_num_3_EXMPLR687(6) <= o_image2_0_EXMPLR698(6) when rtlcs0
    = '1' else f_b1_next(6) ;
   debug_num_3_EXMPLR687(7) <= o_image2_0_EXMPLR698(7) when rtlcs0
    = '1' else f_b1_next(7) ;
   debug_num_4_EXMPLR688(0) <= o_image2_1_EXMPLR699(0) when rtlcs0
    = '1' else f_b2_next(0) ;
   debug_num_4_EXMPLR688(1) <= o_image2_1_EXMPLR699(1) when rtlcs0
    = '1' else f_b2_next(1) ;
   debug_num_4_EXMPLR688(2) <= o_image2_1_EXMPLR699(2) when rtlcs0
    = '1' else f_b2_next(2) ;
   debug_num_4_EXMPLR688(3) <= o_image2_1_EXMPLR699(3) when rtlcs0
    = '1' else f_b2_next(3) ;
   debug_num_4_EXMPLR688(4) <= o_image2_1_EXMPLR699(4) when rtlcs0
    = '1' else f_b2_next(4) ;
   debug_num_4_EXMPLR688(5) <= o_image2_1_EXMPLR699(5) when rtlcs0
    = '1' else f_b2_next(5) ;
   debug_num_4_EXMPLR688(6) <= o_image2_1_EXMPLR699(6) when rtlcs0
    = '1' else f_b2_next(6) ;
   debug_num_4_EXMPLR688(7) <= o_image2_1_EXMPLR699(7) when rtlcs0
    = '1' else f_b2_next(7) ;
   debug_num_5_EXMPLR689(0) <= o_image2_2_EXMPLR700(0) when rtlcs0
    = '1' else f_b3_next(0) ;
   debug_num_5_EXMPLR689(1) <= o_image2_2_EXMPLR700(1) when rtlcs0
    = '1' else f_b3_next(1) ;
   debug_num_5_EXMPLR689(2) <= o_image2_2_EXMPLR700(2) when rtlcs0
    = '1' else f_b3_next(2) ;
   debug_num_5_EXMPLR689(3) <= o_image2_2_EXMPLR700(3) when rtlcs0
    = '1' else f_b3_next(3) ;
   debug_num_5_EXMPLR689(4) <= o_image2_2_EXMPLR700(4) when rtlcs0
    = '1' else f_b3_next(4) ;
   debug_num_5_EXMPLR689(5) <= o_image2_2_EXMPLR700(5) when rtlcs0
    = '1' else f_b3_next(5) ;
   debug_num_5_EXMPLR689(6) <= o_image2_2_EXMPLR700(6) when rtlcs0
    = '1' else f_b3_next(6) ;
   debug_num_5_EXMPLR689(7) <= o_image2_2_EXMPLR700(7) when rtlcs0
    = '1' else f_b3_next(7) ;
   debug_num_6_EXMPLR690(0) <= o_image1_0_EXMPLR696(0) when rtlcs0
    = '1' else f_i1_next(0) ;
   debug_num_6_EXMPLR690(1) <= o_image1_0_EXMPLR696(1) when rtlcs0
    = '1' else f_i1_next(1) ;
   debug_num_6_EXMPLR690(2) <= o_image1_0_EXMPLR696(2) when rtlcs0
    = '1' else f_i1_next(2) ;
   debug_num_6_EXMPLR690(3) <= o_image1_0_EXMPLR696(3) when rtlcs0
    = '1' else f_i1_next(3) ;
   debug_num_6_EXMPLR690(4) <= o_image1_0_EXMPLR696(4) when rtlcs0
    = '1' else f_i1_next(4) ;
   debug_num_6_EXMPLR690(5) <= o_image1_0_EXMPLR696(5) when rtlcs0
    = '1' else f_i1_next(5) ;
   debug_num_6_EXMPLR690(6) <= o_image1_0_EXMPLR696(6) when rtlcs0
    = '1' else f_i1_next(6) ;
   debug_num_6_EXMPLR690(7) <= o_image1_0_EXMPLR696(7) when rtlcs0
    = '1' else f_i1_next(7) ;
   debug_num_7_EXMPLR691(0) <= o_image1_2_EXMPLR697(0) when rtlcs0
    = '1' else f_i2_next(0) ;
   debug_num_7_EXMPLR691(1) <= o_image1_2_EXMPLR697(1) when rtlcs0
    = '1' else f_i2_next(1) ;
   debug_num_7_EXMPLR691(2) <= o_image1_2_EXMPLR697(2) when rtlcs0
    = '1' else f_i2_next(2) ;
   debug_num_7_EXMPLR691(3) <= o_image1_2_EXMPLR697(3) when rtlcs0
    = '1' else f_i2_next(3) ;
   debug_num_7_EXMPLR691(4) <= o_image1_2_EXMPLR697(4) when rtlcs0
    = '1' else f_i2_next(4) ;
   debug_num_7_EXMPLR691(5) <= o_image1_2_EXMPLR697(5) when rtlcs0
    = '1' else f_i2_next(5) ;
   debug_num_7_EXMPLR691(6) <= o_image1_2_EXMPLR697(6) when rtlcs0
    = '1' else f_i2_next(6) ;
   debug_num_7_EXMPLR691(7) <= o_image1_2_EXMPLR697(7) when rtlcs0
    = '1' else f_i2_next(7) ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_f_state_3 <= NOT f_state(3) ;
   not_f_state_2 <= NOT f_state(2) ;
   not_f_state_1 <= NOT f_state(1) ;
   rtlc_344_and_58 : and_4u_4u port map ( a(3)=>not_f_state_3, a(2)=>
      not_f_state_2, a(1)=>not_f_state_1, a(0)=>f_state(0), d=>rtlcs0);
   DFFPCE (debug_num_0_EXMPLR684(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(7)) ;
   DFFPCE (debug_num_0_EXMPLR684(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(6)) ;
   DFFPCE (debug_num_0_EXMPLR684(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(5)) ;
   DFFPCE (debug_num_0_EXMPLR684(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(4)) ;
   DFFPCE (debug_num_0_EXMPLR684(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(3)) ;
   DFFPCE (debug_num_0_EXMPLR684(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(2)) ;
   DFFPCE (debug_num_0_EXMPLR684(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(1)) ;
   DFFPCE (debug_num_0_EXMPLR684(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i2_next(0)) ;
   DFFPCE (debug_num_3_EXMPLR687(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(7)) ;
   DFFPCE (debug_num_3_EXMPLR687(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(6)) ;
   DFFPCE (debug_num_3_EXMPLR687(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(5)) ;
   DFFPCE (debug_num_3_EXMPLR687(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(4)) ;
   DFFPCE (debug_num_3_EXMPLR687(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(3)) ;
   DFFPCE (debug_num_3_EXMPLR687(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(2)) ;
   DFFPCE (debug_num_3_EXMPLR687(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(1)) ;
   DFFPCE (debug_num_3_EXMPLR687(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_i1_next(0)) ;
   DFFPCE (debug_num_7_EXMPLR691(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(7)) ;
   DFFPCE (debug_num_7_EXMPLR691(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(6)) ;
   DFFPCE (debug_num_7_EXMPLR691(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(5)) ;
   DFFPCE (debug_num_7_EXMPLR691(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(4)) ;
   DFFPCE (debug_num_7_EXMPLR691(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(3)) ;
   DFFPCE (debug_num_7_EXMPLR691(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(2)) ;
   DFFPCE (debug_num_7_EXMPLR691(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(1)) ;
   DFFPCE (debug_num_7_EXMPLR691(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b3_next(0)) ;
   DFFPCE (debug_num_5_EXMPLR689(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(7)) ;
   DFFPCE (debug_num_5_EXMPLR689(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(6)) ;
   DFFPCE (debug_num_5_EXMPLR689(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(5)) ;
   DFFPCE (debug_num_5_EXMPLR689(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(4)) ;
   DFFPCE (debug_num_5_EXMPLR689(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(3)) ;
   DFFPCE (debug_num_5_EXMPLR689(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(2)) ;
   DFFPCE (debug_num_5_EXMPLR689(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(1)) ;
   DFFPCE (debug_num_5_EXMPLR689(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b2_next(0)) ;
   DFFPCE (debug_num_4_EXMPLR688(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(7)) ;
   DFFPCE (debug_num_4_EXMPLR688(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(6)) ;
   DFFPCE (debug_num_4_EXMPLR688(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(5)) ;
   DFFPCE (debug_num_4_EXMPLR688(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(4)) ;
   DFFPCE (debug_num_4_EXMPLR688(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(3)) ;
   DFFPCE (debug_num_4_EXMPLR688(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(2)) ;
   DFFPCE (debug_num_4_EXMPLR688(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(1)) ;
   DFFPCE (debug_num_4_EXMPLR688(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_b1_next(0)) ;
   DFFPCE (debug_num_6_EXMPLR690(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(7)) ;
   DFFPCE (debug_num_6_EXMPLR690(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(6)) ;
   DFFPCE (debug_num_6_EXMPLR690(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(5)) ;
   DFFPCE (debug_num_6_EXMPLR690(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(4)) ;
   DFFPCE (debug_num_6_EXMPLR690(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(3)) ;
   DFFPCE (debug_num_6_EXMPLR690(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(2)) ;
   DFFPCE (debug_num_6_EXMPLR690(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(1)) ;
   DFFPCE (debug_num_6_EXMPLR690(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t3_next(0)) ;
   DFFPCE (debug_num_2_EXMPLR686(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(7)) ;
   DFFPCE (debug_num_2_EXMPLR686(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(6)) ;
   DFFPCE (debug_num_2_EXMPLR686(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(5)) ;
   DFFPCE (debug_num_2_EXMPLR686(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(4)) ;
   DFFPCE (debug_num_2_EXMPLR686(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(3)) ;
   DFFPCE (debug_num_2_EXMPLR686(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(2)) ;
   DFFPCE (debug_num_2_EXMPLR686(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(1)) ;
   DFFPCE (debug_num_2_EXMPLR686(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t2_next(0)) ;
   DFFPCE (debug_num_1_EXMPLR685(7),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(7)) ;
   DFFPCE (debug_num_1_EXMPLR685(6),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(6)) ;
   DFFPCE (debug_num_1_EXMPLR685(5),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(5)) ;
   DFFPCE (debug_num_1_EXMPLR685(4),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(4)) ;
   DFFPCE (debug_num_1_EXMPLR685(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(3)) ;
   DFFPCE (debug_num_1_EXMPLR685(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(2)) ;
   DFFPCE (debug_num_1_EXMPLR685(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(1)) ;
   DFFPCE (debug_num_1_EXMPLR685(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_t1_next(0)) ;
   DFFRSE (f_state(2),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_state(3)) ;
   DFFRSE (f_state(1),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_state(2)) ;
   DFFRSE (f_state(0),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_state(1)) ;
   DFFRSE (f_state(3),debug_led_red_EXMPLR692(17),
   debug_led_red_EXMPLR692(17),debug_valid_EXMPLR551,i_clock,f_state(0)) ;
   o_mode_EXMPLR701(1) <= '1' ;
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity top_kirsch is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_nrst : OUT std_logic ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (16 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_sevenseg_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_sevenseg_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_sevenseg_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_sevenseg_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_sevenseg_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_sevenseg_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end top_kirsch ;

architecture main of top_kirsch is 
   component uw_uart
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         kirschout : IN std_logic ;
         kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
         o_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         o_pixavail : OUT std_logic ;
         rxflex : IN std_logic ;
         txflex : OUT std_logic) ;
   end component ;
   component kirsch
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
   end component ;
   signal pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_led_red_0_EXMPLR748, mode_1: std_logic ;
   
   signal DANGLING : std_logic_vector (178 downto 0 );

begin
   debug_led_red(16) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(15) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(14) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(13) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(12) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(11) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(10) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(9) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(8) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(7) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(6) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(5) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(4) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(3) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(2) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(1) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red(0) <= debug_led_red_0_EXMPLR748 ;
   debug_led_grn(5) <= debug_led_red_0_EXMPLR748 ;
   debug_led_grn(4) <= debug_led_red_0_EXMPLR748 ;
   debug_led_grn(3) <= debug_led_red_0_EXMPLR748 ;
   debug_led_grn(2) <= debug_led_red_0_EXMPLR748 ;
   debug_led_grn(1) <= debug_led_red_0_EXMPLR748 ;
   debug_led_grn(0) <= debug_led_red_0_EXMPLR748 ;
   debug_led_red_0_EXMPLR748 <= '0' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>debug_led_red_0_EXMPLR748, 
      kirschout=>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), 
      kirschdir(0)=>dir(0), o_valid=>o_valid, i_mode(1)=>mode_1, i_mode(0)=>
      debug_led_red_0_EXMPLR748, datain(7)=>pixel(7), datain(6)=>pixel(6), 
      datain(5)=>pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), 
      datain(2)=>pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), 
      o_pixavail=>pixavail, rxflex=>rxflex, txflex=>txflex);
   u_kirsch : kirsch port map ( i_clock=>clk, i_reset=>
      debug_led_red_0_EXMPLR748, i_valid=>pixavail, i_pixel(7)=>pixel(7), 
      i_pixel(6)=>pixel(6), i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), 
      i_pixel(3)=>pixel(3), i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), 
      i_pixel(0)=>pixel(0), o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>
      dir(2), o_dir(1)=>dir(1), o_dir(0)=>dir(0), o_mode(1)=>DANGLING(0), 
      o_mode(0)=>DANGLING(1), o_row(7)=>DANGLING(2), o_row(6)=>DANGLING(3), 
      o_row(5)=>DANGLING(4), o_row(4)=>DANGLING(5), o_row(3)=>DANGLING(6), 
      o_row(2)=>DANGLING(7), o_row(1)=>DANGLING(8), o_row(0)=>DANGLING(9), 
      o_image0_0(7)=>DANGLING(10), o_image0_0(6)=>DANGLING(11), 
      o_image0_0(5)=>DANGLING(12), o_image0_0(4)=>DANGLING(13), 
      o_image0_0(3)=>DANGLING(14), o_image0_0(2)=>DANGLING(15), 
      o_image0_0(1)=>DANGLING(16), o_image0_0(0)=>DANGLING(17), 
      o_image0_1(7)=>DANGLING(18), o_image0_1(6)=>DANGLING(19), 
      o_image0_1(5)=>DANGLING(20), o_image0_1(4)=>DANGLING(21), 
      o_image0_1(3)=>DANGLING(22), o_image0_1(2)=>DANGLING(23), 
      o_image0_1(1)=>DANGLING(24), o_image0_1(0)=>DANGLING(25), 
      o_image0_2(7)=>DANGLING(26), o_image0_2(6)=>DANGLING(27), 
      o_image0_2(5)=>DANGLING(28), o_image0_2(4)=>DANGLING(29), 
      o_image0_2(3)=>DANGLING(30), o_image0_2(2)=>DANGLING(31), 
      o_image0_2(1)=>DANGLING(32), o_image0_2(0)=>DANGLING(33), 
      o_image1_0(7)=>DANGLING(34), o_image1_0(6)=>DANGLING(35), 
      o_image1_0(5)=>DANGLING(36), o_image1_0(4)=>DANGLING(37), 
      o_image1_0(3)=>DANGLING(38), o_image1_0(2)=>DANGLING(39), 
      o_image1_0(1)=>DANGLING(40), o_image1_0(0)=>DANGLING(41), 
      o_image1_1(7)=>DANGLING(42), o_image1_1(6)=>DANGLING(43), 
      o_image1_1(5)=>DANGLING(44), o_image1_1(4)=>DANGLING(45), 
      o_image1_1(3)=>DANGLING(46), o_image1_1(2)=>DANGLING(47), 
      o_image1_1(1)=>DANGLING(48), o_image1_1(0)=>DANGLING(49), 
      o_image1_2(7)=>DANGLING(50), o_image1_2(6)=>DANGLING(51), 
      o_image1_2(5)=>DANGLING(52), o_image1_2(4)=>DANGLING(53), 
      o_image1_2(3)=>DANGLING(54), o_image1_2(2)=>DANGLING(55), 
      o_image1_2(1)=>DANGLING(56), o_image1_2(0)=>DANGLING(57), 
      o_image2_0(7)=>DANGLING(58), o_image2_0(6)=>DANGLING(59), 
      o_image2_0(5)=>DANGLING(60), o_image2_0(4)=>DANGLING(61), 
      o_image2_0(3)=>DANGLING(62), o_image2_0(2)=>DANGLING(63), 
      o_image2_0(1)=>DANGLING(64), o_image2_0(0)=>DANGLING(65), 
      o_image2_1(7)=>DANGLING(66), o_image2_1(6)=>DANGLING(67), 
      o_image2_1(5)=>DANGLING(68), o_image2_1(4)=>DANGLING(69), 
      o_image2_1(3)=>DANGLING(70), o_image2_1(2)=>DANGLING(71), 
      o_image2_1(1)=>DANGLING(72), o_image2_1(0)=>DANGLING(73), 
      o_image2_2(7)=>DANGLING(74), o_image2_2(6)=>DANGLING(75), 
      o_image2_2(5)=>DANGLING(76), o_image2_2(4)=>DANGLING(77), 
      o_image2_2(3)=>DANGLING(78), o_image2_2(2)=>DANGLING(79), 
      o_image2_2(1)=>DANGLING(80), o_image2_2(0)=>DANGLING(81), debug_key(3)
      =>debug_led_red_0_EXMPLR748, debug_key(2)=>debug_led_red_0_EXMPLR748, 
      debug_key(1)=>debug_led_red_0_EXMPLR748, debug_switch(17)=>
      debug_led_red_0_EXMPLR748, debug_switch(16)=>debug_led_red_0_EXMPLR748, 
      debug_switch(15)=>debug_led_red_0_EXMPLR748, debug_switch(14)=>
      debug_led_red_0_EXMPLR748, debug_switch(13)=>debug_led_red_0_EXMPLR748, 
      debug_switch(12)=>debug_led_red_0_EXMPLR748, debug_switch(11)=>
      debug_led_red_0_EXMPLR748, debug_switch(10)=>debug_led_red_0_EXMPLR748, 
      debug_switch(9)=>debug_led_red_0_EXMPLR748, debug_switch(8)=>
      debug_led_red_0_EXMPLR748, debug_switch(7)=>debug_led_red_0_EXMPLR748, 
      debug_switch(6)=>debug_led_red_0_EXMPLR748, debug_switch(5)=>
      debug_led_red_0_EXMPLR748, debug_switch(4)=>debug_led_red_0_EXMPLR748, 
      debug_switch(3)=>debug_led_red_0_EXMPLR748, debug_switch(2)=>
      debug_led_red_0_EXMPLR748, debug_switch(1)=>debug_led_red_0_EXMPLR748, 
      debug_switch(0)=>debug_led_red_0_EXMPLR748, debug_led_red(17)=>
      DANGLING(82), debug_led_red(16)=>DANGLING(83), debug_led_red(15)=>
      DANGLING(84), debug_led_red(14)=>DANGLING(85), debug_led_red(13)=>
      DANGLING(86), debug_led_red(12)=>DANGLING(87), debug_led_red(11)=>
      DANGLING(88), debug_led_red(10)=>DANGLING(89), debug_led_red(9)=>
      DANGLING(90), debug_led_red(8)=>DANGLING(91), debug_led_red(7)=>
      DANGLING(92), debug_led_red(6)=>DANGLING(93), debug_led_red(5)=>
      DANGLING(94), debug_led_red(4)=>DANGLING(95), debug_led_red(3)=>
      DANGLING(96), debug_led_red(2)=>DANGLING(97), debug_led_red(1)=>
      DANGLING(98), debug_led_red(0)=>DANGLING(99), debug_led_grn(5)=>
      DANGLING(100), debug_led_grn(4)=>DANGLING(101), debug_led_grn(3)=>
      DANGLING(102), debug_led_grn(2)=>DANGLING(103), debug_led_grn(1)=>
      DANGLING(104), debug_led_grn(0)=>DANGLING(105), debug_valid=>DANGLING(
      106), debug_num_0(7)=>DANGLING(107), debug_num_0(6)=>DANGLING(108), 
      debug_num_0(5)=>DANGLING(109), debug_num_0(4)=>DANGLING(110), 
      debug_num_0(3)=>DANGLING(111), debug_num_0(2)=>DANGLING(112), 
      debug_num_0(1)=>DANGLING(113), debug_num_0(0)=>DANGLING(114), 
      debug_num_1(7)=>DANGLING(115), debug_num_1(6)=>DANGLING(116), 
      debug_num_1(5)=>DANGLING(117), debug_num_1(4)=>DANGLING(118), 
      debug_num_1(3)=>DANGLING(119), debug_num_1(2)=>DANGLING(120), 
      debug_num_1(1)=>DANGLING(121), debug_num_1(0)=>DANGLING(122), 
      debug_num_2(7)=>DANGLING(123), debug_num_2(6)=>DANGLING(124), 
      debug_num_2(5)=>DANGLING(125), debug_num_2(4)=>DANGLING(126), 
      debug_num_2(3)=>DANGLING(127), debug_num_2(2)=>DANGLING(128), 
      debug_num_2(1)=>DANGLING(129), debug_num_2(0)=>DANGLING(130), 
      debug_num_3(7)=>DANGLING(131), debug_num_3(6)=>DANGLING(132), 
      debug_num_3(5)=>DANGLING(133), debug_num_3(4)=>DANGLING(134), 
      debug_num_3(3)=>DANGLING(135), debug_num_3(2)=>DANGLING(136), 
      debug_num_3(1)=>DANGLING(137), debug_num_3(0)=>DANGLING(138), 
      debug_num_4(7)=>DANGLING(139), debug_num_4(6)=>DANGLING(140), 
      debug_num_4(5)=>DANGLING(141), debug_num_4(4)=>DANGLING(142), 
      debug_num_4(3)=>DANGLING(143), debug_num_4(2)=>DANGLING(144), 
      debug_num_4(1)=>DANGLING(145), debug_num_4(0)=>DANGLING(146), 
      debug_num_5(7)=>DANGLING(147), debug_num_5(6)=>DANGLING(148), 
      debug_num_5(5)=>DANGLING(149), debug_num_5(4)=>DANGLING(150), 
      debug_num_5(3)=>DANGLING(151), debug_num_5(2)=>DANGLING(152), 
      debug_num_5(1)=>DANGLING(153), debug_num_5(0)=>DANGLING(154), 
      debug_num_6(7)=>DANGLING(155), debug_num_6(6)=>DANGLING(156), 
      debug_num_6(5)=>DANGLING(157), debug_num_6(4)=>DANGLING(158), 
      debug_num_6(3)=>DANGLING(159), debug_num_6(2)=>DANGLING(160), 
      debug_num_6(1)=>DANGLING(161), debug_num_6(0)=>DANGLING(162), 
      debug_num_7(7)=>DANGLING(163), debug_num_7(6)=>DANGLING(164), 
      debug_num_7(5)=>DANGLING(165), debug_num_7(4)=>DANGLING(166), 
      debug_num_7(3)=>DANGLING(167), debug_num_7(2)=>DANGLING(168), 
      debug_num_7(1)=>DANGLING(169), debug_num_7(0)=>DANGLING(170), 
      debug_num_8(7)=>DANGLING(171), debug_num_8(6)=>DANGLING(172), 
      debug_num_8(5)=>DANGLING(173), debug_num_8(4)=>DANGLING(174), 
      debug_num_8(3)=>DANGLING(175), debug_num_8(2)=>DANGLING(176), 
      debug_num_8(1)=>DANGLING(177), debug_num_8(0)=>DANGLING(178));
   o_sevenseg(0) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(1) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(2) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(3) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(4) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(5) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(6) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(7) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(8) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(9) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_sevenseg(10) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   o_sevenseg(11) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   o_sevenseg(12) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   o_sevenseg(13) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   o_sevenseg(14) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   o_sevenseg(15) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   o_mode(0) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_mode(1) <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   o_nrst <= debug_led_red_0_EXMPLR748 when debug_led_red_0_EXMPLR748
    = '1' else 'Z' ;
   debug_sevenseg_0(0) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_0(1) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_0(2) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_0(3) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_1(0) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_1(1) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_1(2) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_1(3) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_2(0) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_2(1) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_2(2) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_2(3) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_3(0) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_3(1) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_3(2) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_3(3) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_4(0) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_4(1) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_4(2) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_4(3) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_5(0) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_5(1) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_5(2) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   debug_sevenseg_5(3) <= debug_led_red_0_EXMPLR748 when 
   debug_led_red_0_EXMPLR748 = '1' else 'Z' ;
   mode_1 <= '1' ;
end main ;

