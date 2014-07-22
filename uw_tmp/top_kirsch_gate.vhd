
-- 
-- Definition of  top_kirsch
-- 
--      Tue Jul 22 01:38:06 2014
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
   signal RxRDY_EXMPLR98: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
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
   RxRDY <= RxRDY_EXMPLR98 ;
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
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(7) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc14n168 <= NOT rtlc14n168 ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn6 <= NOT rtlcn6 ;
   rtlc17n460 <= RxRDY_EXMPLR98 OR RxFSM_6 ;
   not_rtlcn75 <= NOT rtlcn75 ;
   rtlcn119 <= Rx_r OR not_rtlcn75 ;
   not_rtlcn76 <= NOT rtlcn76 ;
   rtlcn122 <= not_rtlcn76 AND rtlcn119 ;
   rtlc17n459 <= RxRDY_EXMPLR98 OR rtlcn122 ;
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
      aclear=>RST, sload=>GND, data(10)=>DANGLING(0), data(9)=>DANGLING(1), 
      data(8)=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>DANGLING(4), 
      data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>DANGLING(7), 
      data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>DANGLING(10), 
      aset=>GND, sclear=>rtlc8n73, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12 port map ( 
      clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>
      TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>
      TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>
      TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(11)=>DANGLING(11), 
      data(10)=>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), 
      data(7)=>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), 
      data(4)=>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), 
      data(1)=>DANGLING(21), data(0)=>DANGLING(22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>
      TxBitCnt(1), q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n225, aclear=>
      RST, sload=>rtlc14n235, data(3)=>PWR, data(2)=>GND, data(1)=>GND, 
      data(0)=>PWR, aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   modgen_counter_RxBitCnt : counter_up_sclear_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>
      RxBitCnt(1), q(0)=>RxBitCnt(0), clk_en=>not_rtlc17_X_0_n360, aclear=>
      RST, sload=>GND, data(3)=>DANGLING(23), data(2)=>DANGLING(24), data(1)
      =>DANGLING(25), data(0)=>DANGLING(26), aset=>GND, sclear=>RxFSM_0, 
      updn=>PWR, cnt_en=>PWR);
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>TxDivisor_5, 
      b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, b(2)=>TxDivisor_5, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      TxDivisor_5, b(5)=>TxDivisor_5, b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, 
      b(2)=>GND, b(1)=>GND, b(0)=>TxDivisor_5, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,TxDivisor_5) ;
   DFFPC (rtlcn51,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n290,GND,RST,not_rtlcn4,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn4,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n168,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n168,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n168,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n168,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n168,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n168,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n168,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n168,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn2,CLK,Tx) ;
   DFFPCE (rtlcn57,GND,RST,not_rtlcn6,CLK,RxFSM_6) ;
   DFFPCE (rtlcn47,GND,RST,not_rtlcn6,CLK,RxFSM_5) ;
   DFFPCE (rtlcn31,GND,RST,not_rtlcn6,CLK,RxFSM_3) ;
   DFFPCE (rtlcn37,GND,RST,not_rtlcn6,CLK,RxFSM_2) ;
   DFFPCE (RxFSM_0,GND,RST,not_rtlcn6,CLK,RxFSM_1) ;
   DFFPCE (rtlcn42,RST,GND,not_rtlcn6,CLK,RxFSM_0) ;
   DFFPCE (RxFSM_6,GND,RST,rtlc17n460,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n308,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n308,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n308,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n308,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n308,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n308,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n308,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n308,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n442,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n442,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n442,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n442,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n442,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n442,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n442,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n442,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn142,GND,RST,CLK,RxRDY_EXMPLR98) ;
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

architecture main of uw_uart is 
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
   signal o_pixavail_EXMPLR152: std_logic ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, rawrx, sdout_7, GND, sdout_5, sdout_3, sdout_2, 
      sdout_1, sdout_0: std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail: std_logic ;
   
   signal mdata_7n2ss1: std_logic_vector (3 DOWNTO 0) ;
   
   signal mdata_7n5ss1_6, mdata_7n5ss1_4, mdata_7n5ss1_3, mdata_7n5ss1_2, 
      mdata_7n5ss1_1, mdata_7n5ss1_0, rtlc7n92, rtlc7n116, not_rxerr, 
      not_rtlcn53, rtlc7n146, rtlc7n149, rtlc7_X_0_n182, rtlc7n222, 
      not_dsend, rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn0, rtlcn1, rtlcn9, 
      not_rtlcn56, rtlcn43, rtlcn53, rtlcn56, rtlcn57, not_rtlc7n149, 
      not_state, rtlcn61, not_rtlc7n92, not_rtlcn69, not_o_valid, rtlcn69, 
      rtlcn70, not_rtlc7n146, not_rst, not_i_mode_1, rtlcn75, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn95: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR152 ;
   GND <= '0' ;
   PWR <= '1' ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      GND, Din(5)=>sdout_5, Din(4)=>GND, Din(3)=>sdout_3, Din(2)=>sdout_2, 
      Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>rawrx, Baud=>PWR, 
      Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)=>sdin(5), Dout(4)=>sdin(4), 
      Dout(3)=>sdin(3), Dout(2)=>sdin(2), Dout(1)=>sdin(1), Dout(0)=>sdin(0), 
      Tx=>txflex, TxBusy=>DANGLING(0), RxErr=>rxerr, RxRDY=>rxrdy);
   rtlc7_72_or_13 : or_3u_3u port map ( a(2)=>rst, a(1)=>o_valid, a(0)=>
      rtlc7n116, d=>rtlc7_X_0_n182);
   not_rxerr <= NOT rxerr ;
   rtlc7n92 <= o_pixavail_EXMPLR152 OR ack ;
   not_rtlcn53 <= NOT rtlcn53 ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR152 ;
   not_rtlc7n149 <= NOT rtlc7n149 ;
   rtlcn1 <= not_rtlc7n149 AND rtlc7n92 ;
   rtlcn53 <= rtlc7n116 OR o_valid ;
   not_state <= NOT state ;
   rtlcn9 <= not_state AND dsend ;
   rtlcn61 <= rtlc7n92 AND not_rtlcn53 ;
   not_rtlc7n92 <= NOT rtlc7n92 ;
   rtlcn57 <= rtlcn61 OR not_rtlcn69 ;
   rtlcn56 <= not_rtlc7n149 AND rtlcn57 ;
   not_rtlcn56 <= NOT rtlcn56 ;
   not_o_valid <= NOT o_valid ;
   rtlcn43 <= not_rtlc7n92 OR not_o_valid ;
   not_rtlcn69 <= NOT rtlcn69 ;
   rtlc7n146 <= not_rtlcn53 when rtlc7n92 = '1' else not_rxerr ;
   rtlcn0 <= rxrdy OR o_pixavail_EXMPLR152 ;
   not_rtlc7n146 <= NOT rtlc7n146 ;
   rtlcn70 <= not_rtlc7n146 OR rtlc7n149 ;
   not_rst <= NOT rst ;
   rtlc7n222 <= not_rst AND rtlcn70 ;
   rtlc10n75 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlc10n48 <= NOT rtlc10n48 ;
   mdata_7n2ss1(0) <= kirschout OR not_o_valid ;
   not_i_mode_1 <= NOT i_mode(1) ;
   mdata_7n5ss1_0 <= mdata_7n2ss1(0) AND rtlcn1 ;
   rtlcn69 <= rtlc7n92 OR rxerr ;
   rtlc10n48 <= not_dsend OR state ;
   mdata_7n2ss1(1) <= kirschdir(0) OR not_o_valid ;
   mdata_7n5ss1_1 <= mdata_7n2ss1(1) AND rtlcn1 ;
   mdata_7n2ss1(2) <= kirschdir(1) OR not_o_valid ;
   mdata_7n5ss1_2 <= mdata_7n2ss1(2) AND rtlcn1 ;
   mdata_7n2ss1(3) <= kirschdir(2) OR not_o_valid ;
   mdata_7n5ss1_3 <= mdata_7n2ss1(3) AND rtlcn1 ;
   mdata_7n5ss1_4 <= rtlcn43 OR rtlc7n149 ;
   mdata_7n5ss1_6 <= rtlcn43 AND not_rtlc7n149 ;
   rawrx <= rxflex AND not_rst ;
   datain(0) <= rdata(0) AND o_pixavail_EXMPLR152 ;
   datain(1) <= rdata(1) AND o_pixavail_EXMPLR152 ;
   datain(2) <= rdata(2) AND o_pixavail_EXMPLR152 ;
   datain(3) <= rdata(3) AND o_pixavail_EXMPLR152 ;
   datain(4) <= rdata(4) AND o_pixavail_EXMPLR152 ;
   datain(5) <= rdata(5) AND o_pixavail_EXMPLR152 ;
   datain(6) <= rdata(6) AND o_pixavail_EXMPLR152 ;
   datain(7) <= rdata(7) AND o_pixavail_EXMPLR152 ;
   rtlc7n149 <= not_i_mode_1 AND i_mode(0) ;
   rtlcn75 <= rst OR rtlc7n92 ;
   modgen_counter_waitcount : counter_up_sclear_clock_clk_en_0_16
       port map ( clock=>clk, q(15)=>waitcount(15), q(14)=>waitcount(14), 
      q(13)=>waitcount(13), q(12)=>waitcount(12), q(11)=>waitcount(11), 
      q(10)=>waitcount(10), q(9)=>waitcount(9), q(8)=>waitcount(8), q(7)=>
      waitcount(7), q(6)=>waitcount(6), q(5)=>waitcount(5), q(4)=>
      waitcount(4), q(3)=>waitcount(3), q(2)=>waitcount(2), q(1)=>
      waitcount(1), q(0)=>waitcount(0), clk_en=>rtlcn75, aclear=>GND, sload
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
   DFFPCE (mdata_7n5ss1_6,GND,GND,rtlc7n222,clk,mdata_7) ;
   DFFPCE (mdata_7n5ss1_4,GND,GND,rtlc7n222,clk,mdata_5) ;
   DFFPCE (mdata_7n5ss1_3,GND,GND,rtlc7n222,clk,mdata_3) ;
   DFFPCE (mdata_7n5ss1_2,GND,GND,rtlc7n222,clk,mdata_2) ;
   DFFPCE (mdata_7n5ss1_1,GND,GND,rtlc7n222,clk,mdata_1) ;
   DFFPCE (mdata_7n5ss1_0,GND,GND,rtlc7n222,clk,mdata_0) ;
   DFFRSE (not_rtlcn56,GND,rst,PWR,clk,dsend) ;
   DFFPCE (sdin(7),GND,rst,rxrdy,clk,rdata(7)) ;
   DFFPCE (sdin(6),GND,rst,rxrdy,clk,rdata(6)) ;
   DFFPCE (sdin(5),GND,rst,rxrdy,clk,rdata(5)) ;
   DFFPCE (sdin(4),GND,rst,rxrdy,clk,rdata(4)) ;
   DFFPCE (sdin(3),GND,rst,rxrdy,clk,rdata(3)) ;
   DFFPCE (sdin(2),GND,rst,rxrdy,clk,rdata(2)) ;
   DFFPCE (sdin(1),GND,rst,rxrdy,clk,rdata(1)) ;
   DFFPCE (sdin(0),GND,rst,rxrdy,clk,rdata(0)) ;
   DFFPCE (not_state,GND,rst,rtlc10n75,clk,ld_sdout) ;
   DFFPCE (mdata_7,GND,rst,not_rtlc10n48,clk,sdout_7) ;
   DFFPCE (mdata_5,GND,rst,not_rtlc10n48,clk,sdout_5) ;
   DFFPCE (mdata_3,GND,rst,not_rtlc10n48,clk,sdout_3) ;
   DFFPCE (mdata_2,GND,rst,not_rtlc10n48,clk,sdout_2) ;
   DFFPCE (mdata_1,GND,rst,not_rtlc10n48,clk,sdout_1) ;
   DFFPCE (mdata_0,GND,rst,not_rtlc10n48,clk,sdout_0) ;
   DFFPC (rtlcn9,GND,rst,clk,state) ;
   DFFRSE (rtlcn61,GND,rst,PWR,clk,ack) ;
   DFFPC (rtlcn95,GND,rst,clk,o_pixavail_EXMPLR152) ;
end main ;

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
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
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
   signal o_column_EXMPLR462: std_logic_vector (0 DOWNTO 0) ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, rtlc0n26, rtlc0n28, rtlc2n120, not_rtlc2n120, not_rtlcs0, 
      not_i_valid, rtlc2n203, rtlc2n207, rtlc2n227, not_first_bubble, 
      not_rtlcs1, rtlc2_X_0_n244, not_rtlc2_X_0_n244, rtlc2n263, rtlc2n264, 
      not_rtlc2n227, rtlc2n299, rtlc2n300, rtlc2n301, not_rtlc2n207: 
   std_logic ;
   
   signal buffer2_3n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal buffer2_3n3ss1_15, buffer2_3n3ss1_14, buffer2_3n3ss1_13, 
      buffer2_3n3ss1_12, buffer2_3n3ss1_11, buffer2_3n3ss1_10, 
      buffer2_3n3ss1_9, buffer2_3n3ss1_8: std_logic ;
   
   signal buffer2_3n4ss1: std_logic_vector (23 DOWNTO 0) ;
   
   signal rtlc3n99, rtlc3n339, rtlc3n427, rtlc5n55, rtlc5n62, rtlcn118, 
      rtlcn142, not_rtlcn255, not_rtlcn256, rtlcn237, rtlcn244, rtlcn245, 
      rtlcn255, rtlcn256, rtlcs0, rtlcs1, rtlcs2, not_mem_wrn_current_2, 
      not_mem_wrn_current_1, not_mem_wrn_current_0: std_logic ;
   
   signal o_image1_0_EXMPLR467: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_EXMPLR468: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR469: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR470: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR471: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR472: std_logic_vector (7 DOWNTO 0) ;
   
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
   o_image1_0(7) <= o_image1_0_EXMPLR467(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR467(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR467(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR467(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR467(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR467(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR467(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR467(0) ;
   o_image1_1(7) <= GND ;
   o_image1_1(6) <= GND ;
   o_image1_1(5) <= GND ;
   o_image1_1(4) <= GND ;
   o_image1_1(3) <= GND ;
   o_image1_1(2) <= GND ;
   o_image1_1(1) <= GND ;
   o_image1_1(0) <= GND ;
   o_image1_2(7) <= o_image1_2_EXMPLR469(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR469(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR469(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR469(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR469(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR469(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR469(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR469(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR470(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR470(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR470(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR470(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR470(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR470(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR470(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR470(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR471(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR471(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR471(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR471(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR471(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR471(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR471(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR471(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR472(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR472(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR472(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR472(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR472(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR472(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR472(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR472(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   u_mem1 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>
      o_column_EXMPLR462(0), clock=>i_clock, data(7)=>mem_data(7), data(6)=>
      mem_data(6), data(5)=>mem_data(5), data(4)=>mem_data(4), data(3)=>
      mem_data(3), data(2)=>mem_data(2), data(1)=>mem_data(1), data(0)=>
      mem_data(0), wren=>mem_wrn(0), q(7)=>mem_q_0(7), q(6)=>mem_q_0(6), 
      q(5)=>mem_q_0(5), q(4)=>mem_q_0(4), q(3)=>mem_q_0(3), q(2)=>mem_q_0(2), 
      q(1)=>mem_q_0(1), q(0)=>mem_q_0(0));
   u_mem2 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>
      o_column_EXMPLR462(0), clock=>i_clock, data(7)=>mem_data(7), data(6)=>
      mem_data(6), data(5)=>mem_data(5), data(4)=>mem_data(4), data(3)=>
      mem_data(3), data(2)=>mem_data(2), data(1)=>mem_data(1), data(0)=>
      mem_data(0), wren=>mem_wrn(1), q(7)=>mem_q_1(7), q(6)=>mem_q_1(6), 
      q(5)=>mem_q_1(5), q(4)=>mem_q_1(4), q(3)=>mem_q_1(3), q(2)=>mem_q_1(2), 
      q(1)=>mem_q_1(1), q(0)=>mem_q_1(0));
   u_mem3 : mem_8_8 port map ( address(7)=>column(7), address(6)=>column(6), 
      address(5)=>column(5), address(4)=>column(4), address(3)=>column(3), 
      address(2)=>column(2), address(1)=>column(1), address(0)=>
      o_column_EXMPLR462(0), clock=>i_clock, data(7)=>mem_data(7), data(6)=>
      mem_data(6), data(5)=>mem_data(5), data(4)=>mem_data(4), data(3)=>
      mem_data(3), data(2)=>mem_data(2), data(1)=>mem_data(1), data(0)=>
      mem_data(0), wren=>mem_wrn(2), q(7)=>mem_q_2(7), q(6)=>mem_q_2(6), 
      q(5)=>mem_q_2(5), q(4)=>mem_q_2(4), q(3)=>mem_q_2(3), q(2)=>mem_q_2(2), 
      q(1)=>mem_q_2(1), q(0)=>mem_q_2(0));
   o_mode(0) <= i_reset OR rtlc0n28 ;
   rtlc0n26 <= busySignal OR busySignalDelayed ;
   rtlc0n28 <= rtlc0n26 OR i_valid ;
   not_rtlc2n207 <= NOT rtlc2n207 ;
   rtlc2n203 <= not_first_bubble OR not_rtlcs1 ;
   rtlc2_32_or_15 : or_3u_3u port map ( a(2)=>rtlc2n120, a(1)=>not_i_valid, 
      a(0)=>rtlcs0, d=>rtlc2n301);
   rtlc2n300 <= rtlc2n120 OR not_i_valid ;
   not_rtlc2n227 <= NOT rtlc2n227 ;
   rtlc2n263 <= rtlcs1 AND first_bubble ;
   rtlc2n264 <= rtlc2n120 OR rtlc2n263 ;
   not_rtlcs1 <= NOT rtlcs1 ;
   not_first_bubble <= NOT first_bubble ;
   rtlc2_54_or_16 : or_3u_3u port map ( a(2)=>i_valid, a(1)=>
      not_first_bubble, a(0)=>not_rtlcs1, d=>rtlc2_X_0_n244);
   not_rtlc2_X_0_n244 <= NOT rtlc2_X_0_n244 ;
   not_i_valid <= NOT i_valid ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_rtlc2n120 <= NOT rtlc2n120 ;
   rtlc2n120 <= i_reset OR rtlc5n55 ;
   rtlc2n227 <= not_rtlc2n120 AND i_valid ;
   rtlc3n99 <= rtlc3n339 AND rtlc3n427 ;
   rtlc3_443_or_18 : or_7u_7u port map ( a(6)=>row(1), a(5)=>row(2), a(4)=>
      row(3), a(3)=>row(4), a(2)=>row(5), a(1)=>row(6), a(0)=>row(7), d=>
      rtlc3n339);
   rtlc3_469_or_19 : or_7u_7u port map ( a(6)=>column(1), a(5)=>column(2), 
      a(4)=>column(3), a(3)=>column(4), a(2)=>column(5), a(1)=>column(6), 
      a(0)=>column(7), d=>rtlc3n427);
   rtlc5n62 <= i_valid OR busySignal ;
   buffer2_select_3i1Bus7_0 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(0), b(1)=>
      buffer2_3n2ss1(0), b(0)=>mem_q_2(0), d=>buffer2_3n4ss1(0));
   buffer2_select_3i1Bus7_1 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(1), b(1)=>
      buffer2_3n2ss1(1), b(0)=>mem_q_2(1), d=>buffer2_3n4ss1(1));
   buffer2_select_3i1Bus7_2 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(2), b(1)=>
      buffer2_3n2ss1(2), b(0)=>mem_q_2(2), d=>buffer2_3n4ss1(2));
   buffer2_select_3i1Bus7_3 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(3), b(1)=>
      buffer2_3n2ss1(3), b(0)=>mem_q_2(3), d=>buffer2_3n4ss1(3));
   buffer2_select_3i1Bus7_4 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(4), b(1)=>
      buffer2_3n2ss1(4), b(0)=>mem_q_2(4), d=>buffer2_3n4ss1(4));
   buffer2_select_3i1Bus7_5 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(5), b(1)=>
      buffer2_3n2ss1(5), b(0)=>mem_q_2(5), d=>buffer2_3n4ss1(5));
   buffer2_select_3i1Bus7_6 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(6), b(1)=>
      buffer2_3n2ss1(6), b(0)=>mem_q_2(6), d=>buffer2_3n4ss1(6));
   buffer2_select_3i1Bus7_7 : select_3_3 port map ( a(2)=>not_rtlcn255, a(1)
      =>mem_wrn_current(0), a(0)=>rtlcn118, b(2)=>mem_q_0(7), b(1)=>
      buffer2_3n2ss1(7), b(0)=>mem_q_2(7), d=>buffer2_3n4ss1(7));
   buffer2_select_3i1Bus7_8 : select_3_3 port map ( a(2)=>not_rtlcn256, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(0), b(1)=>
      buffer2_3n3ss1_8, b(0)=>mem_q_2(0), d=>buffer2_3n4ss1(8));
   buffer2_select_3i1Bus7_9 : select_3_3 port map ( a(2)=>not_rtlcn256, a(1)
      =>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(1), b(1)=>
      buffer2_3n3ss1_9, b(0)=>mem_q_2(1), d=>buffer2_3n4ss1(9));
   buffer2_select_3i1Bus7_10 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(2), b(1)=>
      buffer2_3n3ss1_10, b(0)=>mem_q_2(2), d=>buffer2_3n4ss1(10));
   buffer2_select_3i1Bus7_11 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(3), b(1)=>
      buffer2_3n3ss1_11, b(0)=>mem_q_2(3), d=>buffer2_3n4ss1(11));
   buffer2_select_3i1Bus7_12 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(4), b(1)=>
      buffer2_3n3ss1_12, b(0)=>mem_q_2(4), d=>buffer2_3n4ss1(12));
   buffer2_select_3i1Bus7_13 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(5), b(1)=>
      buffer2_3n3ss1_13, b(0)=>mem_q_2(5), d=>buffer2_3n4ss1(13));
   buffer2_select_3i1Bus7_14 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(6), b(1)=>
      buffer2_3n3ss1_14, b(0)=>mem_q_2(6), d=>buffer2_3n4ss1(14));
   buffer2_select_3i1Bus7_15 : select_3_3 port map ( a(2)=>not_rtlcn256, 
      a(1)=>mem_wrn_current(1), a(0)=>rtlcn142, b(2)=>mem_q_1(7), b(1)=>
      buffer2_3n3ss1_15, b(0)=>mem_q_2(7), d=>buffer2_3n4ss1(15));
   rtlcn118 <= rtlc3n339 AND mem_wrn_current(1) ;
   rtlcn142 <= rtlc3n339 AND mem_wrn_current(0) ;
   o_mode(1) <= NOT i_reset ;
   rtlcn237 <= rtlc3n339 OR mem_wrn_current(2) ;
   rtlcn244 <= i_valid AND not_rtlc2n207 ;
   rtlcn245 <= rtlc2n120 OR rtlcn244 ;
   not_rtlcn255 <= NOT rtlcn255 ;
   not_rtlcn256 <= NOT rtlcn256 ;
   rtlc2n207 <= not_rtlcs0 when i_valid = '1' else rtlc2n203 ;
   buffer2_3n2ss1(0) <= mem_q_1(0) when rtlc3n339 = '1' else mem_data(0) ;
   buffer2_3n2ss1(1) <= mem_q_1(1) when rtlc3n339 = '1' else mem_data(1) ;
   buffer2_3n2ss1(2) <= mem_q_1(2) when rtlc3n339 = '1' else mem_data(2) ;
   buffer2_3n2ss1(3) <= mem_q_1(3) when rtlc3n339 = '1' else mem_data(3) ;
   buffer2_3n2ss1(4) <= mem_q_1(4) when rtlc3n339 = '1' else mem_data(4) ;
   buffer2_3n2ss1(5) <= mem_q_1(5) when rtlc3n339 = '1' else mem_data(5) ;
   buffer2_3n2ss1(6) <= mem_q_1(6) when rtlc3n339 = '1' else mem_data(6) ;
   buffer2_3n2ss1(7) <= mem_q_1(7) when rtlc3n339 = '1' else mem_data(7) ;
   buffer2_3n3ss1_8 <= mem_q_0(0) when rtlc3n339 = '1' else mem_data(0) ;
   buffer2_3n3ss1_9 <= mem_q_0(1) when rtlc3n339 = '1' else mem_data(1) ;
   buffer2_3n3ss1_10 <= mem_q_0(2) when rtlc3n339 = '1' else mem_data(2) ;
   buffer2_3n3ss1_11 <= mem_q_0(3) when rtlc3n339 = '1' else mem_data(3) ;
   buffer2_3n3ss1_12 <= mem_q_0(4) when rtlc3n339 = '1' else mem_data(4) ;
   buffer2_3n3ss1_13 <= mem_q_0(5) when rtlc3n339 = '1' else mem_data(5) ;
   buffer2_3n3ss1_14 <= mem_q_0(6) when rtlc3n339 = '1' else mem_data(6) ;
   buffer2_3n3ss1_15 <= mem_q_0(7) when rtlc3n339 = '1' else mem_data(7) ;
   buffer2_3n4ss1(16) <= mem_data(0) when rtlcn237 = '1' else mem_q_2(0) ;
   buffer2_3n4ss1(17) <= mem_data(1) when rtlcn237 = '1' else mem_q_2(1) ;
   buffer2_3n4ss1(18) <= mem_data(2) when rtlcn237 = '1' else mem_q_2(2) ;
   buffer2_3n4ss1(19) <= mem_data(3) when rtlcn237 = '1' else mem_q_2(3) ;
   buffer2_3n4ss1(20) <= mem_data(4) when rtlcn237 = '1' else mem_q_2(4) ;
   buffer2_3n4ss1(21) <= mem_data(5) when rtlcn237 = '1' else mem_q_2(5) ;
   buffer2_3n4ss1(22) <= mem_data(6) when rtlcn237 = '1' else mem_q_2(6) ;
   buffer2_3n4ss1(23) <= mem_data(7) when rtlcn237 = '1' else mem_q_2(7) ;
   rtlc_523_and_36 : and_8u_8u port map ( a(7)=>row(7), a(6)=>row(6), a(5)=>
      row(5), a(4)=>row(4), a(3)=>row(3), a(2)=>row(2), a(1)=>row(1), a(0)=>
      row(0), d=>rtlcs2);
   rtlc_524_and_37 : and_8u_8u port map ( a(7)=>column(7), a(6)=>column(6), 
      a(5)=>column(5), a(4)=>column(4), a(3)=>column(3), a(2)=>column(2), 
      a(1)=>column(1), a(0)=>o_column_EXMPLR462(0), d=>rtlcs1);
   not_mem_wrn_current_2 <= NOT mem_wrn_current(2) ;
   not_mem_wrn_current_1 <= NOT mem_wrn_current(1) ;
   not_mem_wrn_current_0 <= NOT mem_wrn_current(0) ;
   rtlc_533_and_39 : and_3u_3u port map ( a(2)=>not_mem_wrn_current_2, a(1)
      =>not_mem_wrn_current_1, a(0)=>not_mem_wrn_current_0, d=>rtlcs0);
   rtlcn255 <= mem_wrn_current(0) OR rtlcn118 ;
   rtlcn256 <= mem_wrn_current(1) OR rtlcn142 ;
   modgen_counter_row : counter_up_cnt_en_sclear_clock_0_8 port map ( clock
      =>i_clock, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), 
      q(3)=>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(7)=>DANGLING(0), data(6)=>DANGLING(1), 
      data(5)=>DANGLING(2), data(4)=>DANGLING(3), data(3)=>DANGLING(4), 
      data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>DANGLING(7), aset
      =>GND, sclear=>rtlc2n120, updn=>PWR, cnt_en=>not_rtlc2_X_0_n244);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>o_column_EXMPLR462(0), clk_en=>not_rtlc2n227, aclear
      =>GND, sload=>GND, data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)
      =>DANGLING(10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)
      =>DANGLING(13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>
      GND, sclear=>rtlc2n264, updn=>PWR, cnt_en=>first_bubble);
   DFFPC (i_valid,GND,GND,i_clock,first_bubble) ;
   DFFRSE (mem_wrn_current(2),GND,rtlc2n301,PWR,i_clock,mem_wrn(2)) ;
   DFFRSE (mem_wrn_current(1),GND,rtlc2n301,PWR,i_clock,mem_wrn(1)) ;
   DFFRSE (mem_wrn_current(0),rtlc2n299,rtlc2n300,PWR,i_clock,mem_wrn(0)) ;
   DFFPCE (buffer2_3n4ss1(23),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(7)) ;
   DFFPCE (buffer2_3n4ss1(22),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(6)) ;
   DFFPCE (buffer2_3n4ss1(21),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(5)) ;
   DFFPCE (buffer2_3n4ss1(20),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(4)) ;
   DFFPCE (buffer2_3n4ss1(19),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(3)) ;
   DFFPCE (buffer2_3n4ss1(18),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(2)) ;
   DFFPCE (buffer2_3n4ss1(17),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(1)) ;
   DFFPCE (buffer2_3n4ss1(16),GND,GND,first_bubble,i_clock,
   o_image2_2_EXMPLR472(0)) ;
   DFFPCE (buffer2_3n4ss1(15),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(7)) ;
   DFFPCE (buffer2_3n4ss1(14),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(6)) ;
   DFFPCE (buffer2_3n4ss1(13),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(5)) ;
   DFFPCE (buffer2_3n4ss1(12),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(4)) ;
   DFFPCE (buffer2_3n4ss1(11),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(3)) ;
   DFFPCE (buffer2_3n4ss1(10),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(2)) ;
   DFFPCE (buffer2_3n4ss1(9),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(1)) ;
   DFFPCE (buffer2_3n4ss1(8),GND,GND,first_bubble,i_clock,
   o_image2_1_EXMPLR471(0)) ;
   DFFPCE (buffer2_3n4ss1(7),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(7)) ;
   DFFPCE (buffer2_3n4ss1(6),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(6)) ;
   DFFPCE (buffer2_3n4ss1(5),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(5)) ;
   DFFPCE (buffer2_3n4ss1(4),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(4)) ;
   DFFPCE (buffer2_3n4ss1(3),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(3)) ;
   DFFPCE (buffer2_3n4ss1(2),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(2)) ;
   DFFPCE (buffer2_3n4ss1(1),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(1)) ;
   DFFPCE (buffer2_3n4ss1(0),GND,GND,first_bubble,i_clock,
   o_image2_0_EXMPLR470(0)) ;
   DFFPCE (o_image2_2_EXMPLR472(7),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(7)) ;
   DFFPCE (o_image2_2_EXMPLR472(6),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(6)) ;
   DFFPCE (o_image2_2_EXMPLR472(5),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(5)) ;
   DFFPCE (o_image2_2_EXMPLR472(4),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(4)) ;
   DFFPCE (o_image2_2_EXMPLR472(3),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(3)) ;
   DFFPCE (o_image2_2_EXMPLR472(2),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(2)) ;
   DFFPCE (o_image2_2_EXMPLR472(1),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(1)) ;
   DFFPCE (o_image2_2_EXMPLR472(0),GND,GND,first_bubble,i_clock,
   o_image1_2_EXMPLR469(0)) ;
   DFFPCE (o_image2_1_EXMPLR471(7),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(7)) ;
   DFFPCE (o_image2_1_EXMPLR471(6),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(6)) ;
   DFFPCE (o_image2_1_EXMPLR471(5),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(5)) ;
   DFFPCE (o_image2_1_EXMPLR471(4),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(4)) ;
   DFFPCE (o_image2_1_EXMPLR471(3),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(3)) ;
   DFFPCE (o_image2_1_EXMPLR471(2),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(2)) ;
   DFFPCE (o_image2_1_EXMPLR471(1),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(1)) ;
   DFFPCE (o_image2_1_EXMPLR471(0),GND,GND,first_bubble,i_clock,
   o_image1_1_EXMPLR468(0)) ;
   DFFPCE (o_image2_0_EXMPLR470(7),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(7)) ;
   DFFPCE (o_image2_0_EXMPLR470(6),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(6)) ;
   DFFPCE (o_image2_0_EXMPLR470(5),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(5)) ;
   DFFPCE (o_image2_0_EXMPLR470(4),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(4)) ;
   DFFPCE (o_image2_0_EXMPLR470(3),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(3)) ;
   DFFPCE (o_image2_0_EXMPLR470(2),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(2)) ;
   DFFPCE (o_image2_0_EXMPLR470(1),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(1)) ;
   DFFPCE (o_image2_0_EXMPLR470(0),GND,GND,first_bubble,i_clock,
   o_image1_0_EXMPLR467(0)) ;
   DFFPCE (o_image1_2_EXMPLR469(7),GND,GND,first_bubble,i_clock,
   o_image0_2(7)) ;
   DFFPCE (o_image1_2_EXMPLR469(6),GND,GND,first_bubble,i_clock,
   o_image0_2(6)) ;
   DFFPCE (o_image1_2_EXMPLR469(5),GND,GND,first_bubble,i_clock,
   o_image0_2(5)) ;
   DFFPCE (o_image1_2_EXMPLR469(4),GND,GND,first_bubble,i_clock,
   o_image0_2(4)) ;
   DFFPCE (o_image1_2_EXMPLR469(3),GND,GND,first_bubble,i_clock,
   o_image0_2(3)) ;
   DFFPCE (o_image1_2_EXMPLR469(2),GND,GND,first_bubble,i_clock,
   o_image0_2(2)) ;
   DFFPCE (o_image1_2_EXMPLR469(1),GND,GND,first_bubble,i_clock,
   o_image0_2(1)) ;
   DFFPCE (o_image1_2_EXMPLR469(0),GND,GND,first_bubble,i_clock,
   o_image0_2(0)) ;
   DFFPCE (o_image1_1_EXMPLR468(7),GND,GND,first_bubble,i_clock,
   o_image0_1(7)) ;
   DFFPCE (o_image1_1_EXMPLR468(6),GND,GND,first_bubble,i_clock,
   o_image0_1(6)) ;
   DFFPCE (o_image1_1_EXMPLR468(5),GND,GND,first_bubble,i_clock,
   o_image0_1(5)) ;
   DFFPCE (o_image1_1_EXMPLR468(4),GND,GND,first_bubble,i_clock,
   o_image0_1(4)) ;
   DFFPCE (o_image1_1_EXMPLR468(3),GND,GND,first_bubble,i_clock,
   o_image0_1(3)) ;
   DFFPCE (o_image1_1_EXMPLR468(2),GND,GND,first_bubble,i_clock,
   o_image0_1(2)) ;
   DFFPCE (o_image1_1_EXMPLR468(1),GND,GND,first_bubble,i_clock,
   o_image0_1(1)) ;
   DFFPCE (o_image1_1_EXMPLR468(0),GND,GND,first_bubble,i_clock,
   o_image0_1(0)) ;
   DFFPCE (o_image1_0_EXMPLR467(7),GND,GND,first_bubble,i_clock,
   o_image0_0(7)) ;
   DFFPCE (o_image1_0_EXMPLR467(6),GND,GND,first_bubble,i_clock,
   o_image0_0(6)) ;
   DFFPCE (o_image1_0_EXMPLR467(5),GND,GND,first_bubble,i_clock,
   o_image0_0(5)) ;
   DFFPCE (o_image1_0_EXMPLR467(4),GND,GND,first_bubble,i_clock,
   o_image0_0(4)) ;
   DFFPCE (o_image1_0_EXMPLR467(3),GND,GND,first_bubble,i_clock,
   o_image0_0(3)) ;
   DFFPCE (o_image1_0_EXMPLR467(2),GND,GND,first_bubble,i_clock,
   o_image0_0(2)) ;
   DFFPCE (o_image1_0_EXMPLR467(1),GND,GND,first_bubble,i_clock,
   o_image0_0(1)) ;
   DFFPCE (o_image1_0_EXMPLR467(0),GND,GND,first_bubble,i_clock,
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
   DFFRSE (mem_wrn_current(1),GND,rtlcn245,not_rtlc2n207,i_clock,
   mem_wrn_current(2)) ;
   DFFRSE (mem_wrn_current(0),GND,rtlcn245,not_rtlc2n207,i_clock,
   mem_wrn_current(1)) ;
   DFFRSE (mem_wrn_current(2),rtlcn244,rtlc2n120,not_rtlc2n207,i_clock,
   mem_wrn_current(0)) ;
   modgen_and_0 : and_3u_3u port map ( a(2)=>rtlcs0, a(1)=>i_valid, a(0)=>
      not_rtlc2n120, d=>rtlc2n299);
   modgen_and_1 : and_3u_3u port map ( a(2)=>rtlcs2, a(1)=>rtlcs1, a(0)=>
      first_bubble, d=>rtlc5n55);
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
   signal o_edge_EXMPLR553: std_logic ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal p21: std_logic_vector (12 DOWNTO 0) ;
   
   signal p22: std_logic_vector (12 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p20: std_logic ;
   
   signal p31: std_logic_vector (12 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p30, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (13 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (13 DOWNTO 0) ;
   
   signal p5m: std_logic_vector (1 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (13 DOWNTO 0) ;
   
   signal max_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal PWR: std_logic ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc0n360, not_rtlc0n360, not_max_fwd, rtlc1n76, rtlc1n77, 
      rtlc1n84, not_i_reset, p21_4n0r3_12, p21_4n0r3_9, p21_4n0r3_8, 
      p21_4n0r3_7, p21_4n0r3_6, p21_4n0r3_5, p21_4n0r3_4, p21_4n0r3_3, 
      p21_4n0r3_2, p21_4n0r3_1, p21_4n0r3_0: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (12 DOWNTO 2) ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p22_4n0r3_12, p22_4n0r3_9, p22_4n0r3_8, p22_4n0r3_7, p22_4n0r3_6, 
      p22_4n0r3_5, p22_4n0r3_4, p22_4n0r3_3, p22_4n0r3_2, p22_4n0r3_1, 
      p22_4n0r3_0: std_logic ;
   
   signal p22_4n0r4: std_logic_vector (12 DOWNTO 2) ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p31_5n1ss1: std_logic_vector (12 DOWNTO 0) ;
   
   signal rtlc5n47, rtlc6n60, rtlc6n131, rtlc6n132, not_p4s_13, rtlc6n134, 
      tmp_o_edge_7n3ss1, not_p40, rtlc7n49, rtlc7n52, rtlc7n72: std_logic ;
   
   signal rtlc8_max_dir_D_n12: std_logic_vector (0 DOWNTO 0) ;
   
   signal not_p45, rtlc8n89, not_rtlcn145, rtlcn126, rtlcn134, not_state_0, 
      not_state_2, rtlcn145, rtlcn146, not_rtlc5n47, rtlcn826, rtlcn866, 
      rtlcn907, rtlcn947, rtlcs1, NOT_p12_0, NOT_p11_0: std_logic ;
   
   signal DANGLING : std_logic_vector (13 downto 0 );

begin
   o_edge <= o_edge_EXMPLR553 ;
   GND <= '0' ;
   PWR <= '1' ;
   not_rtlc0n360 <= NOT rtlc0n360 ;
   p4s(13) <= not_rtlc0n360 OR p31(12) ;
   p4s_sub12_0 : sub_12u_12u_12u_0 port map ( cin=>PWR, a(11)=>p31(11), 
      a(10)=>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>GND, b(10)=>p32(10), b(9)=>p32(9), b(8)=>p32(8), 
      b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>p32(3), 
      b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), d(10)=>
      p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), d(5)
      =>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), d(0)
      =>p4s(0), cout=>rtlc0n360);
   rtlc1_12_and_41 : and_3u_3u port map ( a(2)=>rtlcs1, a(1)=>not_max_fwd, 
      a(0)=>p45, d=>rtlc1n76);
   rtlc1_13_gt_42 : gt_14s_14s port map ( a(13)=>p43(13), a(12)=>p43(12), 
      a(11)=>p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>
      p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>
      p43(2), a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>
      prev_max(12), b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>
      prev_max(9), b(8)=>prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), 
      b(5)=>prev_max(5), b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>
      prev_max(2), b(1)=>prev_max(1), b(0)=>prev_max(0), d=>rtlc1n84);
   rtlc1n77 <= rtlc1n84 OR rtlc1n76 ;
   not_max_fwd <= NOT max_fwd ;
   not_i_reset <= NOT i_reset ;
   rtlc5_91_gt_43 : gt_13s_13s port map ( a(12)=>p22(12), a(11)=>p22(11), 
      a(10)=>p22(10), a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), 
      a(5)=>p22(5), a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), 
      a(0)=>p22(0), b(12)=>p21(12), b(11)=>p21(11), b(10)=>p21(10), b(9)=>
      p21(9), b(8)=>p21(8), b(7)=>p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>
      p21(4), b(3)=>p21(3), b(2)=>p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>
      rtlc5n47);
   rtlc6n60 <= rtlc6n134 AND p30 ;
   rtlc6n131 <= p4s(7) AND p4s(8) ;
   not_p4s_13 <= NOT p4s(13) ;
   rtlc6n134 <= rtlc6n132 AND not_p4s_13 ;
   rtlc7n72 <= state(3) AND rtlc1n77 ;
   rtlc7n49 <= i_reset OR not_p40 ;
   rtlc7n52 <= rtlc7n49 OR state(3) ;
   not_p40 <= NOT p40 ;
   not_p45 <= NOT p45 ;
   not_state_0 <= NOT state(0) ;
   not_state_2 <= NOT state(2) ;
   rtlcn134 <= state(1) OR not_state_2 ;
   rtlcn126 <= not_state_0 AND rtlcn134 ;
   not_rtlcn145 <= NOT rtlcn145 ;
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
   p31_5n1ss1(12) <= p22(12) when rtlc5n47 = '1' else p21(12) ;
   tmp_o_edge_7n3ss1 <= p41 when rtlc7n72 = '1' else prev_edge ;
   rtlc_160_or_45 : or_4u_4u port map ( a(3)=>state(0), a(2)=>state(1), a(1)
      =>state(2), a(0)=>state(3), d=>rtlcn146);
   rtlc8n89 <= rtlc1n77 AND rtlcn146 ;
   p21_add12_4i1 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>
      p21_4n0r3_12, a(10)=>p21_4n0r3_12, a(9)=>p21_4n0r3_12, a(8)=>
      p21_4n0r3_9, a(7)=>p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, 
      a(4)=>p21_4n0r3_5, a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>
      p21_4n0r3_2, a(0)=>p21_4n0r3_1, b(11)=>p21_4n0r4(12), b(10)=>
      p21_4n0r4(11), b(9)=>p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>
      p21_4n0r4(8), b(6)=>p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>
      p21_4n0r4(5), b(3)=>p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>
      p21_4n0r4(2), b(0)=>p12(0), d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), 
      d(9)=>p21_4n0r2(10), d(8)=>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>
      p21_4n0r2(7), d(5)=>p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>
      p21_4n0r2(4), d(2)=>p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>
      p21_4n0r2(1), cout=>DANGLING(0));
   p22_add12_4i2 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>
      p22_4n0r3_12, a(10)=>p22_4n0r3_12, a(9)=>p22_4n0r3_12, a(8)=>
      p22_4n0r3_9, a(7)=>p22_4n0r3_8, a(6)=>p22_4n0r3_7, a(5)=>p22_4n0r3_6, 
      a(4)=>p22_4n0r3_5, a(3)=>p22_4n0r3_4, a(2)=>p22_4n0r3_3, a(1)=>
      p22_4n0r3_2, a(0)=>p22_4n0r3_1, b(11)=>p22_4n0r4(12), b(10)=>
      p22_4n0r4(11), b(9)=>p22_4n0r4(10), b(8)=>p22_4n0r4(9), b(7)=>
      p22_4n0r4(8), b(6)=>p22_4n0r4(7), b(5)=>p22_4n0r4(6), b(4)=>
      p22_4n0r4(5), b(3)=>p22_4n0r4(4), b(2)=>p22_4n0r4(3), b(1)=>
      p22_4n0r4(2), b(0)=>p11(0), d(11)=>p22_4n0r2(12), d(10)=>p22_4n0r2(11), 
      d(9)=>p22_4n0r2(10), d(8)=>p22_4n0r2(9), d(7)=>p22_4n0r2(8), d(6)=>
      p22_4n0r2(7), d(5)=>p22_4n0r2(6), d(4)=>p22_4n0r2(5), d(3)=>
      p22_4n0r2(4), d(2)=>p22_4n0r2(3), d(1)=>p22_4n0r2(2), d(0)=>
      p22_4n0r2(1), cout=>DANGLING(1));
   not_rtlc5n47 <= NOT rtlc5n47 ;
   rtlc8_max_dir_D_n12(0) <= not_p45 XOR state(0) ;
   o_dir(0) <= max_dir(0) AND o_edge_EXMPLR553 ;
   rtlcn145 <= state(1) OR state(0) ;
   o_dir(1) <= max_dir(1) AND o_edge_EXMPLR553 ;
   o_dir(2) <= max_dir(2) AND o_edge_EXMPLR553 ;
   o_mode(0) <= p5m(0) OR i_reset ;
   o_mode(1) <= p5m(1) AND not_i_reset ;
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
   p21_4n0r3_12 <= NOT rtlcn826 ;
   p21_sub10_4i3 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_4n0r3_9, 
      d(8)=>p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>p21_4n0r3_6, d(5)=>
      p21_4n0r3_5, d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, d(2)=>p21_4n0r3_2, 
      d(1)=>p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>rtlcn826);
   p21_4n0r4(12) <= NOT rtlcn866 ;
   p22_4n0r3_12 <= NOT rtlcn907 ;
   p22_sub10_4i5 : sub_10u_10u_10u_0 port map ( cin=>PWR, a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_4n0r3_9, 
      d(8)=>p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>p22_4n0r3_6, d(5)=>
      p22_4n0r3_5, d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, d(2)=>p22_4n0r3_2, 
      d(1)=>p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>rtlcn907);
   p22_4n0r4(12) <= NOT rtlcn947 ;
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
   p4s(12) <= NOT (rtlc0n360 XOR p31(12)) ;
   rtlceq_s5_eq_58 : eq_14u_14u port map ( a(13)=>p43(13), a(12)=>p43(12), 
      a(11)=>p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>
      p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>
      p43(2), a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>
      prev_max(12), b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>
      prev_max(9), b(8)=>prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), 
      b(5)=>prev_max(5), b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>
      prev_max(2), b(1)=>prev_max(1), b(0)=>prev_max(0), d=>rtlcs1);
   DFFPC (i_valid,GND,GND,i_clock,p20) ;
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
   DFFPC (p22_4n0r2(12),GND,GND,i_clock,p22(12)) ;
   DFFPC (p22_4n0r2(11),GND,GND,i_clock,p22(11)) ;
   DFFPC (p22_4n0r2(10),GND,GND,i_clock,p22(10)) ;
   DFFPC (p22_4n0r2(9),GND,GND,i_clock,p22(9)) ;
   DFFPC (p22_4n0r2(8),GND,GND,i_clock,p22(8)) ;
   DFFPC (p22_4n0r2(7),GND,GND,i_clock,p22(7)) ;
   DFFPC (p22_4n0r2(6),GND,GND,i_clock,p22(6)) ;
   DFFPC (p22_4n0r2(5),GND,GND,i_clock,p22(5)) ;
   DFFPC (p22_4n0r2(4),GND,GND,i_clock,p22(4)) ;
   DFFPC (p22_4n0r2(3),GND,GND,i_clock,p22(3)) ;
   DFFPC (p22_4n0r2(2),GND,GND,i_clock,p22(2)) ;
   DFFPC (p22_4n0r2(1),GND,GND,i_clock,p22(1)) ;
   DFFPC (p22_4n0r3_0,GND,GND,i_clock,p22(0)) ;
   DFFPC (p21_4n0r2(12),GND,GND,i_clock,p21(12)) ;
   DFFPC (p21_4n0r2(11),GND,GND,i_clock,p21(11)) ;
   DFFPC (p21_4n0r2(10),GND,GND,i_clock,p21(10)) ;
   DFFPC (p21_4n0r2(9),GND,GND,i_clock,p21(9)) ;
   DFFPC (p21_4n0r2(8),GND,GND,i_clock,p21(8)) ;
   DFFPC (p21_4n0r2(7),GND,GND,i_clock,p21(7)) ;
   DFFPC (p21_4n0r2(6),GND,GND,i_clock,p21(6)) ;
   DFFPC (p21_4n0r2(5),GND,GND,i_clock,p21(5)) ;
   DFFPC (p21_4n0r2(4),GND,GND,i_clock,p21(4)) ;
   DFFPC (p21_4n0r2(3),GND,GND,i_clock,p21(3)) ;
   DFFPC (p21_4n0r2(2),GND,GND,i_clock,p21(2)) ;
   DFFPC (p21_4n0r2(1),GND,GND,i_clock,p21(1)) ;
   DFFPC (p21_4n0r3_0,GND,GND,i_clock,p21(0)) ;
   DFFPC (p20,GND,GND,i_clock,p30) ;
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
   DFFPC (p31_5n1ss1(12),GND,GND,i_clock,p31(12)) ;
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
   DFFPC (p30,GND,GND,i_clock,p40) ;
   DFFPC (p35,GND,GND,i_clock,p45) ;
   DFFPC (p4s(13),GND,GND,i_clock,p43(13)) ;
   DFFPC (p4s(12),GND,GND,i_clock,p43(12)) ;
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
   DFFPC (rtlc6n60,GND,GND,i_clock,p41) ;
   DFFPC (tmp_o_edge_7n3ss1,GND,GND,i_clock,o_edge_EXMPLR553) ;
   DFFRSE (p41,GND,rtlc7n52,rtlc1n77,i_clock,prev_edge) ;
   DFFRSE (p45,GND,rtlc7n52,rtlc1n77,i_clock,max_fwd) ;
   DFFRSE (p43(13),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(13)) ;
   DFFRSE (p43(12),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(12)) ;
   DFFRSE (p43(11),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(11)) ;
   DFFRSE (p43(10),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(10)) ;
   DFFRSE (p43(9),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(9)) ;
   DFFRSE (p43(8),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(8)) ;
   DFFRSE (p43(7),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(7)) ;
   DFFRSE (p43(6),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(6)) ;
   DFFRSE (p43(5),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(5)) ;
   DFFRSE (p43(4),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(4)) ;
   DFFRSE (p43(3),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(3)) ;
   DFFRSE (p43(2),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(2)) ;
   DFFRSE (p43(1),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(1)) ;
   DFFRSE (p43(0),GND,rtlc7n52,rtlc1n77,i_clock,prev_max(0)) ;
   DFFPCE (rtlcn126,GND,GND,rtlc8n89,i_clock,max_dir(2)) ;
   DFFPCE (not_rtlcn145,GND,GND,rtlc8n89,i_clock,max_dir(1)) ;
   DFFPCE (rtlc8_max_dir_D_n12(0),GND,GND,rtlc1n77,i_clock,max_dir(0)) ;
   DFFRSE (state(2),GND,i_reset,p40,i_clock,state(3)) ;
   DFFRSE (state(1),GND,i_reset,p40,i_clock,state(2)) ;
   DFFRSE (state(0),GND,i_reset,p40,i_clock,state(1)) ;
   DFFRSE (state(3),i_reset,GND,p40,i_clock,state(0)) ;
   DFFRSE (state(3),GND,i_reset,PWR,i_clock,o_valid) ;
   NOT_p12_0 <= NOT p12(0) ;
   p21_sub11_4i4 : sub_10u_10u_10u_0 port map ( cin=>NOT_p12_0, a(9)=>p11(9), 
      a(8)=>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), 
      a(3)=>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>GND, 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_4n0r4(11), d(8)=>p21_4n0r4(10), d(7)=>p21_4n0r4(9), d(6)=>
      p21_4n0r4(8), d(5)=>p21_4n0r4(7), d(4)=>p21_4n0r4(6), d(3)=>
      p21_4n0r4(5), d(2)=>p21_4n0r4(4), d(1)=>p21_4n0r4(3), d(0)=>
      p21_4n0r4(2), cout=>rtlcn866);
   NOT_p11_0 <= NOT p11(0) ;
   p22_sub11_4i6 : sub_10u_10u_10u_0 port map ( cin=>NOT_p11_0, a(9)=>p12(9), 
      a(8)=>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), 
      a(3)=>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>GND, 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_4n0r4(11), d(8)=>p22_4n0r4(10), d(7)=>p22_4n0r4(9), d(6)=>
      p22_4n0r4(8), d(5)=>p22_4n0r4(7), d(4)=>p22_4n0r4(6), d(3)=>
      p22_4n0r4(5), d(2)=>p22_4n0r4(4), d(1)=>p22_4n0r4(3), d(0)=>
      p22_4n0r4(2), cout=>rtlcn947);
   modgen_or_0 : or_5u_5u port map ( a(4)=>p4s(9), a(3)=>p4s(10), a(2)=>
      p4s(11), a(1)=>p4s(13), a(0)=>rtlc6n131, d=>rtlc6n132);
   ix258 : shiftregister_with_taps_8_4_1 port map ( \in\(7)=>i_row(7), 
      \in\(6)=>i_row(6), \in\(5)=>i_row(5), \in\(4)=>i_row(4), \in\(3)=>
      i_row(3), \in\(2)=>i_row(2), \in\(1)=>i_row(1), \in\(0)=>i_row(0), 
      \out\(7)=>o_row(7), \out\(6)=>o_row(6), \out\(5)=>o_row(5), \out\(4)=>
      o_row(4), \out\(3)=>o_row(3), \out\(2)=>o_row(2), \out\(1)=>o_row(1), 
      \out\(0)=>o_row(0), tap_out(7)=>DANGLING(2), tap_out(6)=>DANGLING(3), 
      tap_out(5)=>DANGLING(4), tap_out(4)=>DANGLING(5), tap_out(3)=>DANGLING
      (6), tap_out(2)=>DANGLING(7), tap_out(1)=>DANGLING(8), tap_out(0)=>
      DANGLING(9), clk=>i_clock, clken=>DANGLING(10), reset=>GND, set=>GND);
   ix259 : shiftregister_with_taps_2_4_1 port map ( \in\(1)=>i_mode(1), 
      \in\(0)=>i_mode(0), \out\(1)=>p5m(1), \out\(0)=>p5m(0), tap_out(1)=>
      DANGLING(11), tap_out(0)=>DANGLING(12), clk=>i_clock, clken=>DANGLING(
      13), reset=>GND, set=>GND);
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
      debug_column : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_6 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_7 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_8 : OUT std_logic_vector (3 DOWNTO 0)) ;
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
   signal o_mode_1_EXMPLR594: std_logic ;
   
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
   
   signal debug_led_red_EXMPLR673: std_logic_vector (17 DOWNTO 17) ;
   
   signal not_rtlcs0, rtlc11n27, rtlc12n25, rtlc13n187, rtlc13n197, rtlcs0, 
      rtlcs1, rtlcs2, not_f_state_3, not_f_state_2, not_f_state_1: std_logic
    ;
   
   signal o_image0_0_EXMPLR674: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_1_EXMPLR675: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image0_2_EXMPLR676: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR677: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_2_EXMPLR678: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR679: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR680: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR681: std_logic_vector (7 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   o_mode(1) <= o_mode_1_EXMPLR594 ;
   o_image0_0(7) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(6) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(5) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(4) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(3) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(2) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(1) <= debug_led_red_EXMPLR673(17) ;
   o_image0_0(0) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(7) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(6) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(5) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(4) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(3) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(2) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(1) <= debug_led_red_EXMPLR673(17) ;
   o_image0_1(0) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(7) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(6) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(5) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(4) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(3) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(2) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(1) <= debug_led_red_EXMPLR673(17) ;
   o_image0_2(0) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(7) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(6) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(5) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(4) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(3) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(2) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(1) <= debug_led_red_EXMPLR673(17) ;
   o_image1_0(0) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(7) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(6) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(5) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(4) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(3) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(2) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(1) <= debug_led_red_EXMPLR673(17) ;
   o_image1_1(0) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(7) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(6) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(5) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(4) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(3) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(2) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(1) <= debug_led_red_EXMPLR673(17) ;
   o_image1_2(0) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(7) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(6) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(5) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(4) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(3) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(2) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(1) <= debug_led_red_EXMPLR673(17) ;
   o_image2_0(0) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(7) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(6) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(5) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(4) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(3) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(2) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(1) <= debug_led_red_EXMPLR673(17) ;
   o_image2_1(0) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(7) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(6) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(5) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(4) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(3) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(2) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(1) <= debug_led_red_EXMPLR673(17) ;
   o_image2_2(0) <= debug_led_red_EXMPLR673(17) ;
   debug_column(7) <= debug_led_red_EXMPLR673(17) ;
   debug_column(6) <= debug_led_red_EXMPLR673(17) ;
   debug_column(5) <= debug_led_red_EXMPLR673(17) ;
   debug_column(4) <= debug_led_red_EXMPLR673(17) ;
   debug_column(3) <= debug_led_red_EXMPLR673(17) ;
   debug_column(2) <= debug_led_red_EXMPLR673(17) ;
   debug_column(1) <= debug_led_red_EXMPLR673(17) ;
   debug_column(0) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(17) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(15) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(14) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(13) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(12) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(11) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(10) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(9) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(8) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(7) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(6) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(5) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(4) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(3) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(2) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(1) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red(0) <= debug_led_red_EXMPLR673(17) ;
   debug_led_grn(5) <= debug_led_red_EXMPLR673(17) ;
   debug_led_grn(4) <= debug_led_red_EXMPLR673(17) ;
   debug_led_grn(3) <= debug_led_red_EXMPLR673(17) ;
   debug_led_grn(2) <= debug_led_red_EXMPLR673(17) ;
   debug_led_grn(1) <= debug_led_red_EXMPLR673(17) ;
   debug_led_grn(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_0(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_0(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_0(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_0(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_1(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_1(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_1(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_1(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_2(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_2(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_2(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_2(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_3(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_3(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_3(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_3(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_4(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_4(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_4(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_4(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_5(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_5(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_5(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_5(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_6(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_6(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_6(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_6(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_7(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_7(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_7(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_7(0) <= debug_led_red_EXMPLR673(17) ;
   debug_num_8(3) <= debug_led_red_EXMPLR673(17) ;
   debug_num_8(2) <= debug_led_red_EXMPLR673(17) ;
   debug_num_8(1) <= debug_led_red_EXMPLR673(17) ;
   debug_num_8(0) <= debug_led_red_EXMPLR673(17) ;
   debug_led_red_EXMPLR673(17) <= '0' ;
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
      =>o_image0_0_EXMPLR674(7), o_image0_0(6)=>o_image0_0_EXMPLR674(6), 
      o_image0_0(5)=>o_image0_0_EXMPLR674(5), o_image0_0(4)=>
      o_image0_0_EXMPLR674(4), o_image0_0(3)=>o_image0_0_EXMPLR674(3), 
      o_image0_0(2)=>o_image0_0_EXMPLR674(2), o_image0_0(1)=>
      o_image0_0_EXMPLR674(1), o_image0_0(0)=>o_image0_0_EXMPLR674(0), 
      o_image0_1(7)=>o_image0_1_EXMPLR675(7), o_image0_1(6)=>
      o_image0_1_EXMPLR675(6), o_image0_1(5)=>o_image0_1_EXMPLR675(5), 
      o_image0_1(4)=>o_image0_1_EXMPLR675(4), o_image0_1(3)=>
      o_image0_1_EXMPLR675(3), o_image0_1(2)=>o_image0_1_EXMPLR675(2), 
      o_image0_1(1)=>o_image0_1_EXMPLR675(1), o_image0_1(0)=>
      o_image0_1_EXMPLR675(0), o_image0_2(7)=>o_image0_2_EXMPLR676(7), 
      o_image0_2(6)=>o_image0_2_EXMPLR676(6), o_image0_2(5)=>
      o_image0_2_EXMPLR676(5), o_image0_2(4)=>o_image0_2_EXMPLR676(4), 
      o_image0_2(3)=>o_image0_2_EXMPLR676(3), o_image0_2(2)=>
      o_image0_2_EXMPLR676(2), o_image0_2(1)=>o_image0_2_EXMPLR676(1), 
      o_image0_2(0)=>o_image0_2_EXMPLR676(0), o_image1_0(7)=>
      o_image1_0_EXMPLR677(7), o_image1_0(6)=>o_image1_0_EXMPLR677(6), 
      o_image1_0(5)=>o_image1_0_EXMPLR677(5), o_image1_0(4)=>
      o_image1_0_EXMPLR677(4), o_image1_0(3)=>o_image1_0_EXMPLR677(3), 
      o_image1_0(2)=>o_image1_0_EXMPLR677(2), o_image1_0(1)=>
      o_image1_0_EXMPLR677(1), o_image1_0(0)=>o_image1_0_EXMPLR677(0), 
      o_image1_1(7)=>DANGLING(8), o_image1_1(6)=>DANGLING(9), o_image1_1(5)
      =>DANGLING(10), o_image1_1(4)=>DANGLING(11), o_image1_1(3)=>DANGLING(
      12), o_image1_1(2)=>DANGLING(13), o_image1_1(1)=>DANGLING(14), 
      o_image1_1(0)=>DANGLING(15), o_image1_2(7)=>o_image1_2_EXMPLR678(7), 
      o_image1_2(6)=>o_image1_2_EXMPLR678(6), o_image1_2(5)=>
      o_image1_2_EXMPLR678(5), o_image1_2(4)=>o_image1_2_EXMPLR678(4), 
      o_image1_2(3)=>o_image1_2_EXMPLR678(3), o_image1_2(2)=>
      o_image1_2_EXMPLR678(2), o_image1_2(1)=>o_image1_2_EXMPLR678(1), 
      o_image1_2(0)=>o_image1_2_EXMPLR678(0), o_image2_0(7)=>
      o_image2_0_EXMPLR679(7), o_image2_0(6)=>o_image2_0_EXMPLR679(6), 
      o_image2_0(5)=>o_image2_0_EXMPLR679(5), o_image2_0(4)=>
      o_image2_0_EXMPLR679(4), o_image2_0(3)=>o_image2_0_EXMPLR679(3), 
      o_image2_0(2)=>o_image2_0_EXMPLR679(2), o_image2_0(1)=>
      o_image2_0_EXMPLR679(1), o_image2_0(0)=>o_image2_0_EXMPLR679(0), 
      o_image2_1(7)=>o_image2_1_EXMPLR680(7), o_image2_1(6)=>
      o_image2_1_EXMPLR680(6), o_image2_1(5)=>o_image2_1_EXMPLR680(5), 
      o_image2_1(4)=>o_image2_1_EXMPLR680(4), o_image2_1(3)=>
      o_image2_1_EXMPLR680(3), o_image2_1(2)=>o_image2_1_EXMPLR680(2), 
      o_image2_1(1)=>o_image2_1_EXMPLR680(1), o_image2_1(0)=>
      o_image2_1_EXMPLR680(0), o_image2_2(7)=>o_image2_2_EXMPLR681(7), 
      o_image2_2(6)=>o_image2_2_EXMPLR681(6), o_image2_2(5)=>
      o_image2_2_EXMPLR681(5), o_image2_2(4)=>o_image2_2_EXMPLR681(4), 
      o_image2_2(3)=>o_image2_2_EXMPLR681(3), o_image2_2(2)=>
      o_image2_2_EXMPLR681(2), o_image2_2(1)=>o_image2_2_EXMPLR681(1), 
      o_image2_2(0)=>o_image2_2_EXMPLR681(0));
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
      f_i2(0), i_clock=>i_clock, i_reset=>i_reset, i_valid=>rtlc11n27, 
      i_mode(1)=>f_i_mode(1), i_mode(0)=>f_i_mode(0), i_row(7)=>f_i_row(7), 
      i_row(6)=>f_i_row(6), i_row(5)=>f_i_row(5), i_row(4)=>f_i_row(4), 
      i_row(3)=>f_i_row(3), i_row(2)=>f_i_row(2), i_row(1)=>f_i_row(1), 
      i_row(0)=>f_i_row(0), o_dir(2)=>o_dir(2), o_dir(1)=>o_dir(1), o_dir(0)
      =>o_dir(0), o_edge=>o_edge, o_valid=>o_valid, o_mode(1)=>f_o_mode(1), 
      o_mode(0)=>f_o_mode(0), o_row(7)=>o_row(7), o_row(6)=>o_row(6), 
      o_row(5)=>o_row(5), o_row(4)=>o_row(4), o_row(3)=>o_row(3), o_row(2)=>
      o_row(2), o_row(1)=>o_row(1), o_row(0)=>o_row(0));
   rtlc11n27 <= m_o_valid OR not_rtlcs0 ;
   o_mode(0) <= i_reset OR rtlc12n25 ;
   rtlc12n25 <= rtlcs2 OR rtlcs1 ;
   o_mode_1_EXMPLR594 <= NOT i_reset ;
   f_t1(0) <= o_image0_2_EXMPLR676(0) when rtlcs0 = '1' else f_t1_next(0) ;
   f_t1(1) <= o_image0_2_EXMPLR676(1) when rtlcs0 = '1' else f_t1_next(1) ;
   f_t1(2) <= o_image0_2_EXMPLR676(2) when rtlcs0 = '1' else f_t1_next(2) ;
   f_t1(3) <= o_image0_2_EXMPLR676(3) when rtlcs0 = '1' else f_t1_next(3) ;
   f_t1(4) <= o_image0_2_EXMPLR676(4) when rtlcs0 = '1' else f_t1_next(4) ;
   f_t1(5) <= o_image0_2_EXMPLR676(5) when rtlcs0 = '1' else f_t1_next(5) ;
   f_t1(6) <= o_image0_2_EXMPLR676(6) when rtlcs0 = '1' else f_t1_next(6) ;
   f_t1(7) <= o_image0_2_EXMPLR676(7) when rtlcs0 = '1' else f_t1_next(7) ;
   f_t2(0) <= o_image0_1_EXMPLR675(0) when rtlcs0 = '1' else f_t2_next(0) ;
   f_t2(1) <= o_image0_1_EXMPLR675(1) when rtlcs0 = '1' else f_t2_next(1) ;
   f_t2(2) <= o_image0_1_EXMPLR675(2) when rtlcs0 = '1' else f_t2_next(2) ;
   f_t2(3) <= o_image0_1_EXMPLR675(3) when rtlcs0 = '1' else f_t2_next(3) ;
   f_t2(4) <= o_image0_1_EXMPLR675(4) when rtlcs0 = '1' else f_t2_next(4) ;
   f_t2(5) <= o_image0_1_EXMPLR675(5) when rtlcs0 = '1' else f_t2_next(5) ;
   f_t2(6) <= o_image0_1_EXMPLR675(6) when rtlcs0 = '1' else f_t2_next(6) ;
   f_t2(7) <= o_image0_1_EXMPLR675(7) when rtlcs0 = '1' else f_t2_next(7) ;
   f_t3(0) <= o_image0_0_EXMPLR674(0) when rtlcs0 = '1' else f_t3_next(0) ;
   f_t3(1) <= o_image0_0_EXMPLR674(1) when rtlcs0 = '1' else f_t3_next(1) ;
   f_t3(2) <= o_image0_0_EXMPLR674(2) when rtlcs0 = '1' else f_t3_next(2) ;
   f_t3(3) <= o_image0_0_EXMPLR674(3) when rtlcs0 = '1' else f_t3_next(3) ;
   f_t3(4) <= o_image0_0_EXMPLR674(4) when rtlcs0 = '1' else f_t3_next(4) ;
   f_t3(5) <= o_image0_0_EXMPLR674(5) when rtlcs0 = '1' else f_t3_next(5) ;
   f_t3(6) <= o_image0_0_EXMPLR674(6) when rtlcs0 = '1' else f_t3_next(6) ;
   f_t3(7) <= o_image0_0_EXMPLR674(7) when rtlcs0 = '1' else f_t3_next(7) ;
   f_b1(0) <= o_image2_0_EXMPLR679(0) when rtlcs0 = '1' else f_b1_next(0) ;
   f_b1(1) <= o_image2_0_EXMPLR679(1) when rtlcs0 = '1' else f_b1_next(1) ;
   f_b1(2) <= o_image2_0_EXMPLR679(2) when rtlcs0 = '1' else f_b1_next(2) ;
   f_b1(3) <= o_image2_0_EXMPLR679(3) when rtlcs0 = '1' else f_b1_next(3) ;
   f_b1(4) <= o_image2_0_EXMPLR679(4) when rtlcs0 = '1' else f_b1_next(4) ;
   f_b1(5) <= o_image2_0_EXMPLR679(5) when rtlcs0 = '1' else f_b1_next(5) ;
   f_b1(6) <= o_image2_0_EXMPLR679(6) when rtlcs0 = '1' else f_b1_next(6) ;
   f_b1(7) <= o_image2_0_EXMPLR679(7) when rtlcs0 = '1' else f_b1_next(7) ;
   f_b2(0) <= o_image2_1_EXMPLR680(0) when rtlcs0 = '1' else f_b2_next(0) ;
   f_b2(1) <= o_image2_1_EXMPLR680(1) when rtlcs0 = '1' else f_b2_next(1) ;
   f_b2(2) <= o_image2_1_EXMPLR680(2) when rtlcs0 = '1' else f_b2_next(2) ;
   f_b2(3) <= o_image2_1_EXMPLR680(3) when rtlcs0 = '1' else f_b2_next(3) ;
   f_b2(4) <= o_image2_1_EXMPLR680(4) when rtlcs0 = '1' else f_b2_next(4) ;
   f_b2(5) <= o_image2_1_EXMPLR680(5) when rtlcs0 = '1' else f_b2_next(5) ;
   f_b2(6) <= o_image2_1_EXMPLR680(6) when rtlcs0 = '1' else f_b2_next(6) ;
   f_b2(7) <= o_image2_1_EXMPLR680(7) when rtlcs0 = '1' else f_b2_next(7) ;
   f_b3(0) <= o_image2_2_EXMPLR681(0) when rtlcs0 = '1' else f_b3_next(0) ;
   f_b3(1) <= o_image2_2_EXMPLR681(1) when rtlcs0 = '1' else f_b3_next(1) ;
   f_b3(2) <= o_image2_2_EXMPLR681(2) when rtlcs0 = '1' else f_b3_next(2) ;
   f_b3(3) <= o_image2_2_EXMPLR681(3) when rtlcs0 = '1' else f_b3_next(3) ;
   f_b3(4) <= o_image2_2_EXMPLR681(4) when rtlcs0 = '1' else f_b3_next(4) ;
   f_b3(5) <= o_image2_2_EXMPLR681(5) when rtlcs0 = '1' else f_b3_next(5) ;
   f_b3(6) <= o_image2_2_EXMPLR681(6) when rtlcs0 = '1' else f_b3_next(6) ;
   f_b3(7) <= o_image2_2_EXMPLR681(7) when rtlcs0 = '1' else f_b3_next(7) ;
   f_i1(0) <= o_image1_0_EXMPLR677(0) when rtlcs0 = '1' else f_i1_next(0) ;
   f_i1(1) <= o_image1_0_EXMPLR677(1) when rtlcs0 = '1' else f_i1_next(1) ;
   f_i1(2) <= o_image1_0_EXMPLR677(2) when rtlcs0 = '1' else f_i1_next(2) ;
   f_i1(3) <= o_image1_0_EXMPLR677(3) when rtlcs0 = '1' else f_i1_next(3) ;
   f_i1(4) <= o_image1_0_EXMPLR677(4) when rtlcs0 = '1' else f_i1_next(4) ;
   f_i1(5) <= o_image1_0_EXMPLR677(5) when rtlcs0 = '1' else f_i1_next(5) ;
   f_i1(6) <= o_image1_0_EXMPLR677(6) when rtlcs0 = '1' else f_i1_next(6) ;
   f_i1(7) <= o_image1_0_EXMPLR677(7) when rtlcs0 = '1' else f_i1_next(7) ;
   f_i2(0) <= o_image1_2_EXMPLR678(0) when rtlcs0 = '1' else f_i2_next(0) ;
   f_i2(1) <= o_image1_2_EXMPLR678(1) when rtlcs0 = '1' else f_i2_next(1) ;
   f_i2(2) <= o_image1_2_EXMPLR678(2) when rtlcs0 = '1' else f_i2_next(2) ;
   f_i2(3) <= o_image1_2_EXMPLR678(3) when rtlcs0 = '1' else f_i2_next(3) ;
   f_i2(4) <= o_image1_2_EXMPLR678(4) when rtlcs0 = '1' else f_i2_next(4) ;
   f_i2(5) <= o_image1_2_EXMPLR678(5) when rtlcs0 = '1' else f_i2_next(5) ;
   f_i2(6) <= o_image1_2_EXMPLR678(6) when rtlcs0 = '1' else f_i2_next(6) ;
   f_i2(7) <= o_image1_2_EXMPLR678(7) when rtlcs0 = '1' else f_i2_next(7) ;
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
   rtlc_337_and_59 : and_3u_3u port map ( a(2)=>o_mode_1_EXMPLR594, a(1)=>
      rtlcs0, a(0)=>rtlc11n27, d=>rtlc13n197);
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc13n187 <= o_mode_1_EXMPLR594 AND rtlc11n27 ;
   not_f_state_3 <= NOT f_state(3) ;
   not_f_state_2 <= NOT f_state(2) ;
   not_f_state_1 <= NOT f_state(1) ;
   rtlc_344_and_60 : and_4u_4u port map ( a(3)=>not_f_state_3, a(2)=>
      not_f_state_2, a(1)=>not_f_state_1, a(0)=>f_state(0), d=>rtlcs0);
   rtlcs2 <= f_o_mode(1) AND f_o_mode(0) ;
   rtlcs1 <= m_o_mode(1) AND m_o_mode(0) ;
   DFFPCE (m_o_row(7),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(7)) ;
   DFFPCE (m_o_row(6),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(6)) ;
   DFFPCE (m_o_row(5),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(5)) ;
   DFFPCE (m_o_row(4),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(4)) ;
   DFFPCE (m_o_row(3),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(3)) ;
   DFFPCE (m_o_row(2),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(2)) ;
   DFFPCE (m_o_row(1),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(1)) ;
   DFFPCE (m_o_row(0),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_row_next(0)) ;
   DFFPCE (m_o_mode(1),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_mode_next(1)) ;
   DFFPCE (m_o_mode(0),debug_led_red_EXMPLR673(17),
   debug_led_red_EXMPLR673(17),rtlc13n197,i_clock,f_i_mode_next(0)) ;
   DFFPCE (f_t1(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(7)) ;
   DFFPCE (f_t1(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(6)) ;
   DFFPCE (f_t1(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(5)) ;
   DFFPCE (f_t1(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(4)) ;
   DFFPCE (f_t1(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(3)) ;
   DFFPCE (f_t1(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(2)) ;
   DFFPCE (f_t1(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(1)) ;
   DFFPCE (f_t1(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i2_next(0)) ;
   DFFPCE (f_b1(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(7)) ;
   DFFPCE (f_b1(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(6)) ;
   DFFPCE (f_b1(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(5)) ;
   DFFPCE (f_b1(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(4)) ;
   DFFPCE (f_b1(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(3)) ;
   DFFPCE (f_b1(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(2)) ;
   DFFPCE (f_b1(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(1)) ;
   DFFPCE (f_b1(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_i1_next(0)) ;
   DFFPCE (f_i2(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(7)) ;
   DFFPCE (f_i2(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(6)) ;
   DFFPCE (f_i2(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(5)) ;
   DFFPCE (f_i2(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(4)) ;
   DFFPCE (f_i2(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(3)) ;
   DFFPCE (f_i2(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(2)) ;
   DFFPCE (f_i2(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(1)) ;
   DFFPCE (f_i2(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b3_next(0)) ;
   DFFPCE (f_b3(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(7)) ;
   DFFPCE (f_b3(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(6)) ;
   DFFPCE (f_b3(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(5)) ;
   DFFPCE (f_b3(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(4)) ;
   DFFPCE (f_b3(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(3)) ;
   DFFPCE (f_b3(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(2)) ;
   DFFPCE (f_b3(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(1)) ;
   DFFPCE (f_b3(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b2_next(0)) ;
   DFFPCE (f_b2(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(7)) ;
   DFFPCE (f_b2(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(6)) ;
   DFFPCE (f_b2(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(5)) ;
   DFFPCE (f_b2(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(4)) ;
   DFFPCE (f_b2(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(3)) ;
   DFFPCE (f_b2(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(2)) ;
   DFFPCE (f_b2(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(1)) ;
   DFFPCE (f_b2(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_b1_next(0)) ;
   DFFPCE (f_i1(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(7)) ;
   DFFPCE (f_i1(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(6)) ;
   DFFPCE (f_i1(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(5)) ;
   DFFPCE (f_i1(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(4)) ;
   DFFPCE (f_i1(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(3)) ;
   DFFPCE (f_i1(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(2)) ;
   DFFPCE (f_i1(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(1)) ;
   DFFPCE (f_i1(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t3_next(0)) ;
   DFFPCE (f_t3(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(7)) ;
   DFFPCE (f_t3(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(6)) ;
   DFFPCE (f_t3(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(5)) ;
   DFFPCE (f_t3(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(4)) ;
   DFFPCE (f_t3(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(3)) ;
   DFFPCE (f_t3(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(2)) ;
   DFFPCE (f_t3(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(1)) ;
   DFFPCE (f_t3(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t2_next(0)) ;
   DFFPCE (f_t2(7),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(7)) ;
   DFFPCE (f_t2(6),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(6)) ;
   DFFPCE (f_t2(5),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(5)) ;
   DFFPCE (f_t2(4),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(4)) ;
   DFFPCE (f_t2(3),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(3)) ;
   DFFPCE (f_t2(2),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(2)) ;
   DFFPCE (f_t2(1),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(1)) ;
   DFFPCE (f_t2(0),debug_led_red_EXMPLR673(17),debug_led_red_EXMPLR673(17),
   rtlc13n187,i_clock,f_t1_next(0)) ;
   DFFRSE (f_state(2),debug_led_red_EXMPLR673(17),i_reset,rtlc11n27,i_clock,
   f_state(3)) ;
   DFFRSE (f_state(1),debug_led_red_EXMPLR673(17),i_reset,rtlc11n27,i_clock,
   f_state(2)) ;
   DFFRSE (f_state(0),debug_led_red_EXMPLR673(17),i_reset,rtlc11n27,i_clock,
   f_state(1)) ;
   DFFRSE (f_state(3),i_reset,debug_led_red_EXMPLR673(17),rtlc11n27,i_clock,
   f_state(0)) ;
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
         debug_column : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
         debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
         debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_5 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_6 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_7 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_8 : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   signal o_mode_EXMPLR730: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR702, pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_0_EXMPLR727, o_sevenseg_7_EXMPLR728, rtlc1n224, 
      rtlc1n225, rtlc1n228, rtlc1n230, rtlc1n232, rtlc1n233, rtlc1n236, 
      rtlc1n144, rtlc1n145, rtlc1n148, rtlc1n150, rtlc1n152, rtlc1n153, 
      rtlc1n156, not_rtlc1n224, not_rtlc1n225, not_rtlc1n233, not_rtlc1n144, 
      not_rtlc1n145, not_rtlc1n153, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, 
      rtlcs5, rtlcs8, rtlcs9, rtlcs10, rtlcs11, rtlcs13, rtlcs15, rtlcs16, 
      rtlcs17, rtlcs18, rtlcs19, rtlcs20, rtlcs22, rtlcs23, rtlcs24, rtlcs25, 
      rtlcs27, rtlcs29, rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, rtlcs36, 
      rtlcs37, rtlcs40, rtlcs41, rtlcs42, rtlcs43, rtlcs45, rtlcs47, rtlcs48, 
      rtlcs49, rtlcs50, rtlcs51, rtlcs52, rtlcs54, rtlcs55, rtlcs56, rtlcs57, 
      rtlcs59, rtlcs61, rtlcs63, rtlcs64, rtlcs65, not_rowcount_2, 
      not_rowcount_0, not_rowcount_3, not_rowcount_1, not_rowcount_6, 
      not_rowcount_4, not_rowcount_7, not_rowcount_5: std_logic ;
   
   signal DANGLING : std_logic_vector (139 downto 0 );

begin
   o_sevenseg(15) <= o_sevenseg_7_EXMPLR728 ;
   o_sevenseg(7) <= o_sevenseg_7_EXMPLR728 ;
   o_mode(1) <= o_mode_EXMPLR730(1) ;
   o_mode(0) <= o_mode_EXMPLR730(0) ;
   o_nrst <= o_nrst_EXMPLR702 ;
   debug_led_red(16) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(15) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(14) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(13) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(12) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(11) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(10) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(9) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(8) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(7) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(6) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(5) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(4) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(3) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(2) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(1) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red(0) <= debug_led_red_0_EXMPLR727 ;
   debug_led_grn(5) <= debug_led_red_0_EXMPLR727 ;
   debug_led_grn(4) <= debug_led_red_0_EXMPLR727 ;
   debug_led_grn(3) <= debug_led_red_0_EXMPLR727 ;
   debug_led_grn(2) <= debug_led_red_0_EXMPLR727 ;
   debug_led_grn(1) <= debug_led_red_0_EXMPLR727 ;
   debug_led_grn(0) <= debug_led_red_0_EXMPLR727 ;
   debug_led_red_0_EXMPLR727 <= '0' ;
   o_sevenseg_7_EXMPLR728 <= '1' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR702, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_EXMPLR730(1), i_mode(0)
      =>o_mode_EXMPLR730(0), datain(7)=>pixel(7), datain(6)=>pixel(6), 
      datain(5)=>pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), 
      datain(2)=>pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), 
      o_pixavail=>pixavail, rxflex=>rxflex, txflex=>txflex);
   u_kirsch : kirsch port map ( i_clock=>clk, i_reset=>o_nrst_EXMPLR702, 
      i_valid=>pixavail, i_pixel(7)=>pixel(7), i_pixel(6)=>pixel(6), 
      i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), i_pixel(3)=>pixel(3), 
      i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), i_pixel(0)=>pixel(0), 
      o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>dir(2), o_dir(1)=>
      dir(1), o_dir(0)=>dir(0), o_mode(1)=>o_mode_EXMPLR730(1), o_mode(0)=>
      o_mode_EXMPLR730(0), o_row(7)=>rowcount(7), o_row(6)=>rowcount(6), 
      o_row(5)=>rowcount(5), o_row(4)=>rowcount(4), o_row(3)=>rowcount(3), 
      o_row(2)=>rowcount(2), o_row(1)=>rowcount(1), o_row(0)=>rowcount(0), 
      o_image0_0(7)=>DANGLING(0), o_image0_0(6)=>DANGLING(1), o_image0_0(5)
      =>DANGLING(2), o_image0_0(4)=>DANGLING(3), o_image0_0(3)=>DANGLING(4), 
      o_image0_0(2)=>DANGLING(5), o_image0_0(1)=>DANGLING(6), o_image0_0(0)
      =>DANGLING(7), o_image0_1(7)=>DANGLING(8), o_image0_1(6)=>DANGLING(9), 
      o_image0_1(5)=>DANGLING(10), o_image0_1(4)=>DANGLING(11), 
      o_image0_1(3)=>DANGLING(12), o_image0_1(2)=>DANGLING(13), 
      o_image0_1(1)=>DANGLING(14), o_image0_1(0)=>DANGLING(15), 
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
      o_image2_2(1)=>DANGLING(70), o_image2_2(0)=>DANGLING(71), debug_key(3)
      =>debug_led_red_0_EXMPLR727, debug_key(2)=>debug_led_red_0_EXMPLR727, 
      debug_key(1)=>debug_led_red_0_EXMPLR727, debug_switch(17)=>
      debug_led_red_0_EXMPLR727, debug_switch(16)=>debug_led_red_0_EXMPLR727, 
      debug_switch(15)=>debug_led_red_0_EXMPLR727, debug_switch(14)=>
      debug_led_red_0_EXMPLR727, debug_switch(13)=>debug_led_red_0_EXMPLR727, 
      debug_switch(12)=>debug_led_red_0_EXMPLR727, debug_switch(11)=>
      debug_led_red_0_EXMPLR727, debug_switch(10)=>debug_led_red_0_EXMPLR727, 
      debug_switch(9)=>debug_led_red_0_EXMPLR727, debug_switch(8)=>
      debug_led_red_0_EXMPLR727, debug_switch(7)=>debug_led_red_0_EXMPLR727, 
      debug_switch(6)=>debug_led_red_0_EXMPLR727, debug_switch(5)=>
      debug_led_red_0_EXMPLR727, debug_switch(4)=>debug_led_red_0_EXMPLR727, 
      debug_switch(3)=>debug_led_red_0_EXMPLR727, debug_switch(2)=>
      debug_led_red_0_EXMPLR727, debug_switch(1)=>debug_led_red_0_EXMPLR727, 
      debug_switch(0)=>debug_led_red_0_EXMPLR727, debug_column(7)=>DANGLING(
      72), debug_column(6)=>DANGLING(73), debug_column(5)=>DANGLING(74), 
      debug_column(4)=>DANGLING(75), debug_column(3)=>DANGLING(76), 
      debug_column(2)=>DANGLING(77), debug_column(1)=>DANGLING(78), 
      debug_column(0)=>DANGLING(79), debug_led_red(17)=>DANGLING(80), 
      debug_led_red(16)=>DANGLING(81), debug_led_red(15)=>DANGLING(82), 
      debug_led_red(14)=>DANGLING(83), debug_led_red(13)=>DANGLING(84), 
      debug_led_red(12)=>DANGLING(85), debug_led_red(11)=>DANGLING(86), 
      debug_led_red(10)=>DANGLING(87), debug_led_red(9)=>DANGLING(88), 
      debug_led_red(8)=>DANGLING(89), debug_led_red(7)=>DANGLING(90), 
      debug_led_red(6)=>DANGLING(91), debug_led_red(5)=>DANGLING(92), 
      debug_led_red(4)=>DANGLING(93), debug_led_red(3)=>DANGLING(94), 
      debug_led_red(2)=>DANGLING(95), debug_led_red(1)=>DANGLING(96), 
      debug_led_red(0)=>DANGLING(97), debug_led_grn(5)=>DANGLING(98), 
      debug_led_grn(4)=>DANGLING(99), debug_led_grn(3)=>DANGLING(100), 
      debug_led_grn(2)=>DANGLING(101), debug_led_grn(1)=>DANGLING(102), 
      debug_led_grn(0)=>DANGLING(103), debug_num_0(3)=>DANGLING(104), 
      debug_num_0(2)=>DANGLING(105), debug_num_0(1)=>DANGLING(106), 
      debug_num_0(0)=>DANGLING(107), debug_num_1(3)=>DANGLING(108), 
      debug_num_1(2)=>DANGLING(109), debug_num_1(1)=>DANGLING(110), 
      debug_num_1(0)=>DANGLING(111), debug_num_2(3)=>DANGLING(112), 
      debug_num_2(2)=>DANGLING(113), debug_num_2(1)=>DANGLING(114), 
      debug_num_2(0)=>DANGLING(115), debug_num_3(3)=>DANGLING(116), 
      debug_num_3(2)=>DANGLING(117), debug_num_3(1)=>DANGLING(118), 
      debug_num_3(0)=>DANGLING(119), debug_num_4(3)=>DANGLING(120), 
      debug_num_4(2)=>DANGLING(121), debug_num_4(1)=>DANGLING(122), 
      debug_num_4(0)=>DANGLING(123), debug_num_5(3)=>DANGLING(124), 
      debug_num_5(2)=>DANGLING(125), debug_num_5(1)=>DANGLING(126), 
      debug_num_5(0)=>DANGLING(127), debug_num_6(3)=>DANGLING(128), 
      debug_num_6(2)=>DANGLING(129), debug_num_6(1)=>DANGLING(130), 
      debug_num_6(0)=>DANGLING(131), debug_num_7(3)=>DANGLING(132), 
      debug_num_7(2)=>DANGLING(133), debug_num_7(1)=>DANGLING(134), 
      debug_num_7(0)=>DANGLING(135), debug_num_8(3)=>DANGLING(136), 
      debug_num_8(2)=>DANGLING(137), debug_num_8(1)=>DANGLING(138), 
      debug_num_8(0)=>DANGLING(139));
   o_nrst_EXMPLR702 <= NOT nrst ;
   rtlc1_100_or_61 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs5, a(1)=>
      rtlcs17, a(0)=>rtlcs24, d=>rtlc1n236);
   rtlc1_20_or_62 : or_4u_4u port map ( a(3)=>rtlcs34, a(2)=>rtlcs37, a(1)=>
      rtlcs49, a(0)=>rtlcs56, d=>rtlc1n156);
   rtlc_23_or_63 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs1, a(2)=>
      rtlcs3, a(1)=>rtlcs16, a(0)=>rtlcs31, d=>rtlc1n224);
   rtlc_29_or_64 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs8, a(2)=>
      rtlcs15, a(1)=>rtlcs16, a(0)=>rtlcs20, d=>rtlc1n225);
   rtlc_42_or_65 : or_3u_3u port map ( a(2)=>rtlcs16, a(1)=>rtlcs23, a(0)=>
      rtlcs25, d=>rtlc1n228);
   rtlc_51_or_66 : or_4u_4u port map ( a(3)=>rtlcs9, a(2)=>rtlcs17, a(1)=>
      rtlcs19, a(0)=>rtlcs23, d=>rtlc1n230);
   rtlc_60_or_67 : or_3u_3u port map ( a(2)=>rtlcs11, a(1)=>rtlcs13, a(0)=>
      rtlcs29, d=>rtlc1n232);
   rtlc_66_or_68 : or_5u_5u port map ( a(4)=>rtlcs4, a(3)=>rtlcs10, a(2)=>
      rtlcs18, a(1)=>rtlcs22, a(0)=>rtlcs27, d=>rtlc1n233);
   rtlc_85_or_69 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs33, a(2)=>
      rtlcs35, a(1)=>rtlcs48, a(0)=>rtlcs63, d=>rtlc1n144);
   rtlc_91_or_70 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs40, a(2)=>
      rtlcs47, a(1)=>rtlcs48, a(0)=>rtlcs52, d=>rtlc1n145);
   rtlc_104_or_71 : or_3u_3u port map ( a(2)=>rtlcs48, a(1)=>rtlcs55, a(0)=>
      rtlcs57, d=>rtlc1n148);
   rtlc_113_or_72 : or_4u_4u port map ( a(3)=>rtlcs41, a(2)=>rtlcs49, a(1)=>
      rtlcs51, a(0)=>rtlcs55, d=>rtlc1n150);
   rtlc_122_or_73 : or_3u_3u port map ( a(2)=>rtlcs43, a(1)=>rtlcs45, a(0)=>
      rtlcs61, d=>rtlc1n152);
   rtlc_128_or_74 : or_5u_5u port map ( a(4)=>rtlcs36, a(3)=>rtlcs42, a(2)=>
      rtlcs50, a(1)=>rtlcs54, a(0)=>rtlcs59, d=>rtlc1n153);
   not_rtlc1n224 <= NOT rtlc1n224 ;
   not_rtlc1n225 <= NOT rtlc1n225 ;
   not_rtlc1n233 <= NOT rtlc1n233 ;
   not_rtlc1n144 <= NOT rtlc1n144 ;
   not_rtlc1n145 <= NOT rtlc1n145 ;
   not_rtlc1n153 <= NOT rtlc1n153 ;
   rtlcs2 <= rtlcs3 AND rtlcs1 ;
   rtlcs5 <= rowcount(2) AND rtlcs4 ;
   rtlcs4 <= not_rowcount_1 AND rtlcs1 ;
   rtlcs9 <= rtlcs8 AND rtlcs10 ;
   rtlcs11 <= rowcount(2) AND rtlcs8 ;
   rtlcs13 <= rowcount(3) AND rtlcs15 ;
   rtlcs17 <= rtlcs15 AND rtlcs18 ;
   rtlcs18 <= not_rowcount_3 AND rtlcs20 ;
   rtlcs24 <= rtlcs25 AND rtlcs23 ;
   rtlcs23 <= rowcount(0) AND rtlcs22 ;
   rtlcs27 <= rowcount(1) AND rtlcs25 ;
   rtlcs64 <= rtlcs10 AND not_rowcount_3 ;
   rtlcs29 <= rtlcs64 AND rtlcs31 ;
   rtlcs34 <= rtlcs35 AND rtlcs33 ;
   rtlcs37 <= rowcount(6) AND rtlcs36 ;
   rtlcs36 <= not_rowcount_5 AND rtlcs33 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs43 <= rowcount(6) AND rtlcs40 ;
   rtlcs45 <= rowcount(7) AND rtlcs47 ;
   rtlcs49 <= rtlcs47 AND rtlcs50 ;
   rtlcs50 <= not_rowcount_7 AND rtlcs52 ;
   rtlcs56 <= rtlcs57 AND rtlcs55 ;
   rtlcs55 <= rowcount(4) AND rtlcs54 ;
   rtlcs59 <= rowcount(5) AND rtlcs57 ;
   rtlcs65 <= rtlcs42 AND not_rowcount_7 ;
   rtlcs61 <= rtlcs65 AND rtlcs63 ;
   not_rowcount_2 <= NOT rowcount(2) ;
   not_rowcount_0 <= NOT rowcount(0) ;
   not_rowcount_3 <= NOT rowcount(3) ;
   not_rowcount_1 <= NOT rowcount(1) ;
   rtlc_232_and_75 : and_3u_3u port map ( a(2)=>not_rowcount_3, a(1)=>
      rowcount(2), a(0)=>not_rowcount_1, d=>rtlcs16);
   rtlc_248_and_76 : and_3u_3u port map ( a(2)=>rowcount(2), a(1)=>
      rowcount(1), a(0)=>rowcount(0), d=>rtlcs19);
   not_rowcount_6 <= NOT rowcount(6) ;
   not_rowcount_4 <= NOT rowcount(4) ;
   not_rowcount_7 <= NOT rowcount(7) ;
   not_rowcount_5 <= NOT rowcount(5) ;
   rtlc_271_and_77 : and_3u_3u port map ( a(2)=>not_rowcount_7, a(1)=>
      rowcount(6), a(0)=>not_rowcount_5, d=>rtlcs48);
   rtlc_287_and_78 : and_3u_3u port map ( a(2)=>rowcount(6), a(1)=>
      rowcount(5), a(0)=>rowcount(4), d=>rtlcs51);
   rtlcs0 <= rowcount(3) AND not_rowcount_2 ;
   rtlcs1 <= rowcount(3) AND rowcount(0) ;
   rtlcs3 <= not_rowcount_2 AND rowcount(1) ;
   rtlcs31 <= rowcount(1) AND not_rowcount_0 ;
   rtlcs8 <= rowcount(3) AND rowcount(1) ;
   rtlcs15 <= rowcount(2) AND not_rowcount_0 ;
   rtlcs20 <= not_rowcount_1 AND not_rowcount_0 ;
   rtlcs22 <= not_rowcount_2 AND not_rowcount_1 ;
   rtlcs25 <= not_rowcount_3 AND rowcount(0) ;
   rtlcs10 <= not_rowcount_2 AND not_rowcount_0 ;
   rtlcs32 <= rowcount(7) AND not_rowcount_6 ;
   rtlcs33 <= rowcount(7) AND rowcount(4) ;
   rtlcs35 <= not_rowcount_6 AND rowcount(5) ;
   rtlcs63 <= rowcount(5) AND not_rowcount_4 ;
   rtlcs40 <= rowcount(7) AND rowcount(5) ;
   rtlcs47 <= rowcount(6) AND not_rowcount_4 ;
   rtlcs52 <= not_rowcount_5 AND not_rowcount_4 ;
   rtlcs54 <= not_rowcount_6 AND not_rowcount_5 ;
   rtlcs57 <= not_rowcount_7 AND rowcount(4) ;
   rtlcs42 <= not_rowcount_6 AND not_rowcount_4 ;
   debug_sevenseg_0(0) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_0(1) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_0(2) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_0(3) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_1(0) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_1(1) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_1(2) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_1(3) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_2(0) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_2(1) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_2(2) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_2(3) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_3(0) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_3(1) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_3(2) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_3(3) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_4(0) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_4(1) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_4(2) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_4(3) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_5(0) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_5(1) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_5(2) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   debug_sevenseg_5(3) <= debug_led_red_0_EXMPLR727 when 
   debug_led_red_0_EXMPLR727 = '1' else 'Z' ;
   DFFPC (rtlc1n156,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(14)) ;
   DFFPC (not_rtlc1n153,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,
   clk,o_sevenseg(13)) ;
   DFFPC (rtlc1n152,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(12)) ;
   DFFPC (rtlc1n150,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(11)) ;
   DFFPC (rtlc1n148,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(10)) ;
   DFFPC (not_rtlc1n145,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,
   clk,o_sevenseg(9)) ;
   DFFPC (not_rtlc1n144,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,
   clk,o_sevenseg(8)) ;
   DFFPC (rtlc1n236,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(6)) ;
   DFFPC (not_rtlc1n233,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,
   clk,o_sevenseg(5)) ;
   DFFPC (rtlc1n232,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(4)) ;
   DFFPC (rtlc1n230,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(3)) ;
   DFFPC (rtlc1n228,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,clk,
   o_sevenseg(2)) ;
   DFFPC (not_rtlc1n225,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,
   clk,o_sevenseg(1)) ;
   DFFPC (not_rtlc1n224,debug_led_red_0_EXMPLR727,debug_led_red_0_EXMPLR727,
   clk,o_sevenseg(0)) ;
end main ;

