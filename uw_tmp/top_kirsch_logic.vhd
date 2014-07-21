
-- 
-- Definition of  top_kirsch
-- 
--      07/21/14 02:37:46
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_11_0 is 
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
end modgen_counter_11_0 ;

architecture IMPLEMENTATION of modgen_counter_11_0 is 
   signal nx3957z1, nx17096z3, nx17096z5, nx17096z7, nx17096z9, nx17096z11, 
      nx17096z13, nx17096z15, nx17096z17, nx17096z19, nx17096z21, nx51271z1, 
      nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, nx54262z1, 
      nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, nx57253z1, 
      nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, nx60244z1, 
      nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net: std_logic ;

begin
   q(10) <= nx3957z1 ;
   q(9) <= nx17096z3 ;
   q(8) <= nx17096z5 ;
   q(7) <= nx17096z7 ;
   q(6) <= nx17096z9 ;
   q(5) <= nx17096z11 ;
   q(4) <= nx17096z13 ;
   q(3) <= nx17096z15 ;
   q(2) <= nx17096z17 ;
   q(1) <= nx17096z19 ;
   q(0) <= nx17096z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx17096z3, datain=>
      nx60244z1, clk=>clock, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx17096z5, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx17096z7, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx17096z9, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx17096z11, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx17096z13, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx17096z15, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx17096z17, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx3957z1, datain=>
      nx17096z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx17096z19, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx17096z21, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix17096z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx17096z16, dataa=>nx17096z17, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z18);
   nx_modgen_counter_11_0_vcc_net <= '1';
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, dataa=>nx3957z1, datad=>
      nx_modgen_counter_11_0_vcc_net, cin=>nx17096z2);
   ix17096z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx17096z2, dataa=>nx17096z3, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z4);
   ix17096z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx17096z4, dataa=>nx17096z5, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z6);
   ix17096z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx17096z6, dataa=>nx17096z7, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z8);
   ix17096z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx17096z18, dataa=>nx17096z19, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z20);
   ix17096z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx17096z8, dataa=>nx17096z9, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z10);
   ix17096z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx17096z10, dataa=>nx17096z11, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z12);
   ix17096z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx17096z12, dataa=>nx17096z13, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z14);
   ix17096z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx17096z14, dataa=>nx17096z15, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z16);
   ix17096z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx17096z20, dataa=>nx17096z21, 
      datad=>nx_modgen_counter_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_12_0 is 
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
end modgen_counter_12_0 ;

architecture IMPLEMENTATION of modgen_counter_12_0 is 
   signal nx2960z1, nx18093z3, nx18093z5, nx18093z7, nx18093z9, nx18093z11, 
      nx18093z13, nx18093z15, nx18093z17, nx18093z19, nx18093z21, nx18093z23, 
      nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
      nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
      nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
      nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
      nx_modgen_counter_12_0_vcc_net: std_logic ;

begin
   q(11) <= nx2960z1 ;
   q(10) <= nx18093z3 ;
   q(9) <= nx18093z5 ;
   q(8) <= nx18093z7 ;
   q(7) <= nx18093z9 ;
   q(6) <= nx18093z11 ;
   q(5) <= nx18093z13 ;
   q(4) <= nx18093z15 ;
   q(3) <= nx18093z17 ;
   q(2) <= nx18093z19 ;
   q(1) <= nx18093z21 ;
   q(0) <= nx18093z23 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx18093z5, datain=>
      nx60244z1, clk=>clock, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx18093z7, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx18093z9, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx18093z11, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx18093z13, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx18093z15, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx18093z17, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx18093z19, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx2960z1, datain=>
      nx18093z1, clk=>clock, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx18093z3, datain=>
      nx17096z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx18093z21, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx18093z23, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix18093z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx18093z18, dataa=>nx18093z19, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z20);
   nx_modgen_counter_12_0_vcc_net <= '1';
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, dataa=>nx2960z1, datad=>
      nx_modgen_counter_12_0_vcc_net, cin=>nx18093z2);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx18093z2, dataa=>nx18093z3, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z4);
   ix18093z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx18093z4, dataa=>nx18093z5, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z6);
   ix18093z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx18093z6, dataa=>nx18093z7, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z8);
   ix18093z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx18093z8, dataa=>nx18093z9, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z10);
   ix18093z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx18093z20, dataa=>nx18093z21, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z22);
   ix18093z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx18093z10, dataa=>nx18093z11, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z12);
   ix18093z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx18093z12, dataa=>nx18093z13, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z14);
   ix18093z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx18093z14, dataa=>nx18093z15, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z16);
   ix18093z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx18093z16, dataa=>nx18093z17, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z18);
   ix18093z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx18093z22, dataa=>nx18093z23, 
      datad=>nx_modgen_counter_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
      RxRDY : OUT std_logic ;
      p_Rx_r : IN std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   component modgen_counter_11_0
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
   component modgen_counter_12_0
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
   signal RxErr_EXMPLR773, RxRDY_EXMPLR774: std_logic ;
   
   signal Tx_Reg: std_logic_vector (7 DOWNTO 1) ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, nx65151z1, 
      nx50920z2, nx34606z1, not_rtlc17_X_0_n360, nx15541z1, nx13547z1, 
      nx14544z1, nx16538z1, nx11553z1, nx34394z1, not_Rx_r, nx32400z1, 
      nx13547z2, nx43465z1, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
      nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
      nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z2, 
      nx65151z2, nx65151z3, nx32400z2, nx32400z3, nx32400z4, nx15541z2, 
      nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, Tx_Reg_14n6ss1_8: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (34 downto 0 );

begin
   RxErr <= RxErr_EXMPLR773 ;
   RxRDY <= RxRDY_EXMPLR774 ;
   modgen_counter_RxDiv : modgen_counter_11_0 port map ( clock=>CLK, q(10)=>
      RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>RxDiv(7), q(6)=>
      RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>RxDiv(3), q(2)=>
      RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>DANGLING(0), aclear
      =>DANGLING(1), sload=>DANGLING(2), data(10)=>DANGLING(3), data(9)=>
      DANGLING(4), data(8)=>DANGLING(5), data(7)=>DANGLING(6), data(6)=>
      DANGLING(7), data(5)=>DANGLING(8), data(4)=>DANGLING(9), data(3)=>
      DANGLING(10), data(2)=>DANGLING(11), data(1)=>DANGLING(12), data(0)=>
      DANGLING(13), aset=>DANGLING(14), sclear=>nx65151z1, updn=>DANGLING(15
      ), cnt_en=>DANGLING(16));
   modgen_counter_TxDiv : modgen_counter_12_0 port map ( clock=>CLK, q(11)=>
      TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>TxDiv(8), q(7)=>
      TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>TxDiv(4), q(3)=>
      TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>TxDiv(0), clk_en=>
      DANGLING(17), aclear=>DANGLING(18), sload=>DANGLING(19), data(11)=>
      DANGLING(20), data(10)=>DANGLING(21), data(9)=>DANGLING(22), data(8)=>
      DANGLING(23), data(7)=>DANGLING(24), data(6)=>DANGLING(25), data(5)=>
      DANGLING(26), data(4)=>DANGLING(27), data(3)=>DANGLING(28), data(2)=>
      DANGLING(29), data(1)=>DANGLING(30), data(0)=>DANGLING(31), aset=>
      DANGLING(32), sclear=>nx32400z1, updn=>DANGLING(33), cnt_en=>DANGLING(
      34));
   not_Rx_r <= NOT p_Rx_r;
   Tx_Reg_14n6ss1_8 <= '1';
   reg_Tx_Reg_7 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(7), datain=>
      Din(7), sdata=>Tx_Reg_14n6ss1_8, clk=>CLK, ena=>nx34606z1, sload=>
      TxFSM(1));
   reg_Tx_Reg_6 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(6), datain=>
      Din(7), sdata=>Tx_Reg(7), clk=>CLK, ena=>nx34606z1, sload=>TxFSM(1));
   reg_Tx_Reg_5 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(5), datain=>
      Din(7), sdata=>Tx_Reg(6), clk=>CLK, ena=>nx34606z1, sload=>TxFSM(1));
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(4), datain=>
      Din(3), sdata=>Tx_Reg(5), clk=>CLK, ena=>nx34606z1, sload=>TxFSM(1));
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(3), datain=>
      Din(2), sdata=>Tx_Reg(4), clk=>CLK, ena=>nx34606z1, sload=>TxFSM(1));
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(2), datain=>
      Din(1), sdata=>Tx_Reg(3), clk=>CLK, ena=>nx34606z1, sload=>TxFSM(1));
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>Tx_Reg(1), datain=>
      Din(0), sdata=>Tx_Reg(2), clk=>CLK, ena=>nx34606z1, sload=>TxFSM(1));
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR774, 
      datain=>nx43465z1, clk=>CLK);
   reg_RxFSM_6 : cycloneii_lcell_ff port map ( regout=>RxFSM_6, datain=>
      RxFSM_1, sdata=>RxFSM_5, clk=>CLK, ena=>nx15541z1, sload=>not_Rx_r);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM_5, datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM_3, datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM_2, datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM_1, datain=>
      RxFSM_0, clk=>CLK, ena=>nx15541z1);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>RxFSM_0, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR773, datain
      =>nx15376z1, clk=>CLK);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"b8b8") 
       port map ( combout=>not_rtlc17_X_0_n360, dataa=>TopRx, datab=>RxFSM_3, 
      datac=>RxFSM_0);
   ix34606z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx34606z1, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix61140z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0b0b") 
       port map ( combout=>p_Tx_Reg_14n6ss1_0, dataa=>Tx_Reg(1), datab=>
      TxFSM(1), datac=>TxFSM(0));
   ix65151z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx65151z1, dataa=>RxFSM_0, datab=>nx34394z2, 
      datac=>nx65151z2, datad=>nx65151z3);
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx15541z3, dataa=>Rx, datab=>RxFSM_6);
   ix8373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix51917z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f1") 
       port map ( combout=>nx51917z4, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>nx50920z2, datad=>nx50920z3);
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx4608z3, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>TxBitCnt(1), datad=>TxBitCnt(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3335") 
       port map ( combout=>nx4608z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ac") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM_6, datad=>RxFSM_0);
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(3), datab=>TxDiv(2), 
      datac=>TxDiv(1), datad=>TxDiv(0));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx32400z3, dataa=>TxDiv(7), datab=>TxDiv(6), 
      datac=>TxDiv(5), datad=>TxDiv(4));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(11), datab=>TxDiv(10), 
      datac=>TxDiv(9), datad=>TxDiv(8));
   ix65151z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx65151z3, dataa=>RxDiv(2), datab=>RxDiv(1), 
      datac=>RxDiv(0));
   ix65151z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx65151z2, dataa=>RxDiv(6), datab=>RxDiv(5), 
      datac=>RxDiv(4), datad=>RxDiv(3));
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx34394z2, dataa=>RxDiv(10), datab=>RxDiv(9), 
      datac=>RxDiv(8), datad=>RxDiv(7));
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR773, datab=>
      RxRDY_EXMPLR774, datac=>RxFSM_6);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"406c") 
       port map ( combout=>nx11364z1, dataa=>TopRx, datab=>RxBitCnt(0), 
      datac=>RxFSM_3, datad=>RxFSM_0);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"06aa") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>RxFSM_0, datad=>not_rtlc17_X_0_n360);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1a2a") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>RxFSM_0, 
      datac=>not_rtlc17_X_0_n360, datad=>nx9370z2);
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a0a") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>RxFSM_0, 
      datac=>not_rtlc17_X_0_n360, datad=>nx8373z2);
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ce6c") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1), datad=>TxFSM(0));
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"09aa") 
       port map ( combout=>nx49923z1, dataa=>TxBitCnt(1), datab=>TxBitCnt(0), 
      datac=>nx50920z2, datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a1a") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>nx50920z2, 
      datac=>nx51917z2, datad=>nx50920z3);
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eea2") 
       port map ( combout=>nx51917z1, dataa=>TxBitCnt(3), datab=>nx51917z2, 
      datac=>nx51917z3, datad=>nx51917z4);
   ix61812z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cca") 
       port map ( combout=>p_NOT_rtlcn2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix9370z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx9370z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix51917z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx51917z3, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0));
   ix50920z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx50920z3, dataa=>TxBitCnt(1), datab=>TxBitCnt(0)
   );
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51917z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2, datad=>nx4608z3);
   ix43465z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx43465z1, dataa=>TopRx, datab=>p_Rx_r, datac=>
      RxFSM_5);
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z3, 
      datac=>nx32400z4);
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4000") 
       port map ( combout=>nx34394z1, dataa=>RxFSM_0, datab=>nx34394z2, 
      datac=>nx65151z2, datad=>nx65151z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx11553z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx16538z1, dataa=>p_Rx_r, datab=>RxFSM_6, datac=>
      RxFSM_5);
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dcdc") 
       port map ( combout=>nx14544z1, dataa=>p_Rx_r, datab=>RxFSM_3, datac=>
      RxFSM_1);
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix15541z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f4f0") 
       port map ( combout=>nx15541z1, dataa=>p_Rx_r, datab=>RxFSM_0, datac=>
      nx15541z2, datad=>nx15541z3);
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(0), datab=>TxFSM(1), datac
      =>TopTx);
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
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
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal nx64508z1, nx22081z3, nx22081z5, nx22081z7, nx22081z9, nx22081z11, 
      nx22081z13, nx22081z15, nx22081z17, nx22081z19, nx22081z21, nx22081z23, 
      nx22081z25, nx22081z27, nx22081z29, nx22081z31, nx51271z1, nx22081z30, 
      nx52268z1, nx22081z28, nx53265z1, nx22081z26, nx54262z1, nx22081z24, 
      nx55259z1, nx22081z22, nx56256z1, nx22081z20, nx57253z1, nx22081z18, 
      nx58250z1, nx22081z16, nx59247z1, nx22081z14, nx60244z1, nx22081z12, 
      nx17096z1, nx22081z10, nx18093z1, nx22081z8, nx19090z1, nx22081z6, 
      nx20087z1, nx22081z4, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= nx64508z1 ;
   q(14) <= nx22081z3 ;
   q(13) <= nx22081z5 ;
   q(12) <= nx22081z7 ;
   q(11) <= nx22081z9 ;
   q(10) <= nx22081z11 ;
   q(9) <= nx22081z13 ;
   q(8) <= nx22081z15 ;
   q(7) <= nx22081z17 ;
   q(6) <= nx22081z19 ;
   q(5) <= nx22081z21 ;
   q(4) <= nx22081z23 ;
   q(3) <= nx22081z25 ;
   q(2) <= nx22081z27 ;
   q(1) <= nx22081z29 ;
   q(0) <= nx22081z31 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx22081z13, datain=>
      nx60244z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx22081z15, datain=>
      nx59247z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx22081z17, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx22081z19, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx22081z21, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx22081z23, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx22081z25, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx22081z27, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>nx64508z1, datain=>
      nx22081z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>nx22081z3, datain=>
      nx21084z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>nx22081z5, datain=>
      nx20087z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx22081z7, datain=>
      nx19090z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx22081z9, datain=>
      nx18093z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx22081z11, datain=>
      nx17096z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx22081z29, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx22081z31, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>nx22081z3, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z4, dataa=>nx22081z5, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z6, dataa=>nx22081z7, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z8, dataa=>nx22081z9, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z10, dataa=>nx22081z11, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z26, dataa=>nx22081z27, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z28);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z12, dataa=>nx22081z13, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z28, dataa=>nx22081z29, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z30);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z14, dataa=>nx22081z15, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z16, dataa=>nx22081z17, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z18);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z18, dataa=>nx22081z19, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z20);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z20, dataa=>nx22081z21, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z22);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z22, dataa=>nx22081z23, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z24);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z24, dataa=>nx22081z25, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z26);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>nx64508z1, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z30, dataa=>nx22081z31, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
      txflex : OUT std_logic ;
      p_Rx_r : IN std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_rdata_7 : OUT std_logic ;
      p_rdata_6 : OUT std_logic ;
      p_rdata_5 : OUT std_logic ;
      p_rdata_4 : OUT std_logic ;
      p_rdata_3 : OUT std_logic ;
      p_rdata_2 : OUT std_logic ;
      p_rdata_1 : OUT std_logic ;
      p_rdata_0 : OUT std_logic) ;
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
         RxRDY : OUT std_logic ;
         p_Rx_r : IN std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic) ;
   end component ;
   component modgen_counter_16_0
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
   signal o_pixavail_EXMPLR780: std_logic_vector (7 DOWNTO 7) ;
   
   signal rxerr, rxrdy, sdout_2, sdout_1, sdout_0, state, dsend, mdata_3, 
      mdata_1, mdata_0, ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, nx33354z1, nx39480z2, nx43853z1, nx36748z2, nx39480z1, 
      nx58116z1, nx36748z3, nx18433z1, nx39480z6, nx39480z3, nx39480z4, 
      nx39480z5, nx39480z7, not_o_valid, nx36748z1, nx34754z1, nx33757z1: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (35 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR780(7) ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>DANGLING(0), Din(7)=>
      not_o_valid, Din(6)=>DANGLING(1), Din(5)=>DANGLING(2), Din(4)=>
      DANGLING(3), Din(3)=>sdout_2, Din(2)=>sdout_2, Din(1)=>sdout_1, Din(0)
      =>sdout_0, LD=>ld_sdout, Rx=>rxflex, Baud=>DANGLING(4), Dout(7)=>
      DANGLING(5), Dout(6)=>DANGLING(6), Dout(5)=>DANGLING(7), Dout(4)=>
      DANGLING(8), Dout(3)=>DANGLING(9), Dout(2)=>DANGLING(10), Dout(1)=>
      DANGLING(11), Dout(0)=>DANGLING(12), Tx=>DANGLING(13), TxBusy=>
      DANGLING(14), RxErr=>rxerr, RxRDY=>rxrdy, p_Rx_r=>p_Rx_r, 
      p_Tx_Reg_14n6ss1_0=>p_Tx_Reg_14n6ss1_0, p_NOT_rtlcn2=>p_NOT_rtlcn2);
   modgen_counter_waitcount : modgen_counter_16_0 port map ( clock=>clk, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>nx33354z1, aclear=>DANGLING(15), sload=>DANGLING
      (16), data(15)=>DANGLING(17), data(14)=>DANGLING(18), data(13)=>
      DANGLING(19), data(12)=>DANGLING(20), data(11)=>DANGLING(21), data(10)
      =>DANGLING(22), data(9)=>DANGLING(23), data(8)=>DANGLING(24), data(7)
      =>DANGLING(25), data(6)=>DANGLING(26), data(5)=>DANGLING(27), data(4)
      =>DANGLING(28), data(3)=>DANGLING(29), data(2)=>DANGLING(30), data(1)
      =>DANGLING(31), data(0)=>DANGLING(32), aset=>DANGLING(33), sclear=>
      nx39480z2, updn=>DANGLING(34), cnt_en=>DANGLING(35));
   not_o_valid <= '1';
   reg_state : cycloneii_lcell_ff port map ( regout=>state, datain=>
      nx43853z1, clk=>clk);
   reg_sdout_2 : cycloneii_lcell_ff port map ( regout=>sdout_2, datain=>
      mdata_3, clk=>clk, ena=>nx43853z1);
   reg_sdout_1 : cycloneii_lcell_ff port map ( regout=>sdout_1, datain=>
      mdata_1, clk=>clk, ena=>nx43853z1);
   reg_sdout_0 : cycloneii_lcell_ff port map ( regout=>sdout_0, datain=>
      mdata_0, clk=>clk, ena=>nx43853z1);
   nx36748z1 <= '1';
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      kirschdir(2), sdata=>nx36748z1, clk=>clk, ena=>nx36748z2, sclr=>
      nx36748z3, sload=>not_o_valid);
   nx34754z1 <= '1';
   reg_mdata_1 : cycloneii_lcell_ff port map ( regout=>mdata_1, datain=>
      kirschdir(0), sdata=>nx34754z1, clk=>clk, ena=>nx36748z2, sclr=>
      nx36748z3, sload=>not_o_valid);
   nx33757z1 <= '1';
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      kirschout, sdata=>nx33757z1, clk=>clk, ena=>nx36748z2, sclr=>nx36748z3, 
      sload=>not_o_valid);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx36748z2, clk=>clk);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR780(7), datain=>nx58116z1, clk=>clk);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk);
   ix39480z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx39480z7, dataa=>waitcount(11), datab=>
      waitcount(10));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"1000") 
       port map ( combout=>nx39480z5, dataa=>waitcount(9), datab=>
      waitcount(8), datac=>nx39480z6, datad=>nx39480z7);
   ix39480z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx39480z4, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix39480z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx39480z3, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
   ix39480z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z6, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix36748z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx36748z3, dataa=>o_pixavail_EXMPLR780(7), datab
      =>ack);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_EXMPLR780(7), datab
      =>rxrdy);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx39480z1, dataa=>o_pixavail_EXMPLR780(7), datab
      =>ack, datac=>nx39480z2);
   ix36748z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe04") 
       port map ( combout=>nx36748z2, dataa=>o_pixavail_EXMPLR780(7), datab
      =>rxerr, datac=>ack, datad=>nx39480z2);
   ix43853z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx43853z1, dataa=>state, datab=>dsend);
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx39480z2, dataa=>nx39480z3, datab=>nx39480z4, 
      datac=>nx39480z5);
   ix33354z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx33354z1, dataa=>o_pixavail_EXMPLR780(7), datab
      =>ack);
end main_unfold_1876 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_12_0 ;

architecture IMPLEMENTATION of sub_12_0 is 
   signal nx63795z33, nx63795z30, nx63795z27, nx63795z24, nx63795z21, 
      nx63795z18, nx63795z15, nx63795z12, nx63795z9, nx63795z6, nx63795z3, 
      nx_sub_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>a(11), datad=>nx_sub_12_0_vcc_net, 
      cin=>nx63795z3);
   nx_sub_12_0_vcc_net <= '1';
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z3, dataa=>b(10), datab=>
      a(10), datad=>nx_sub_12_0_vcc_net, cin=>nx63795z6);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z9);
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z9, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z12);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z12, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z15);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z15, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z18);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z18, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z21);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z21, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z24);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z24, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z27);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z27, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z30);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z30, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z33);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx63795z33, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_12_0 is 
   port (
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_12_0 ;

architecture IMPLEMENTATION of gt_12_0 is 
   signal nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, 
      nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_12_0_vcc_net: 
   std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z4);
   nx_gt_12_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_12_0_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z34, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_12_1 is 
   port (
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_12_1 ;

architecture IMPLEMENTATION of gt_12_1 is 
   signal nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, 
      nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_12_1_vcc_net: 
   std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z4);
   nx_gt_12_1_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_12_1_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z34, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_12_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn822 : IN std_logic) ;
end add_11_0 ;

architecture IMPLEMENTATION of add_11_0 is 
   signal nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, 
      nx62798z15, nx62798z12, nx62798z9, nx62798z6, nx62798z4, 
      nx_add_11_0_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6900",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), dataa=>b(10), datab=>p_rtlcn822, datad=>
      nx_add_11_0_vcc_net, cin=>nx62798z4);
   nx_add_11_0_vcc_net <= '1';
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z6, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z9);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z9, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z12);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z12, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z15);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z15, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z18);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z18, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z21);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z21, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z24);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z24, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z27);
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z27, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z30);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z30, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_0_vcc_net);
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z4, dataa=>b(9), datab=>
      p_rtlcn822, datad=>nx_add_11_0_vcc_net, cin=>nx62798z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn874 : IN std_logic) ;
end add_11_1 ;

architecture IMPLEMENTATION of add_11_1 is 
   signal nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, 
      nx62798z15, nx62798z12, nx62798z9, nx62798z6, nx62798z4, 
      nx_add_11_1_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6900",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), dataa=>b(10), datab=>p_rtlcn874, datad=>
      nx_add_11_1_vcc_net, cin=>nx62798z4);
   nx_add_11_1_vcc_net <= '1';
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z6, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z9);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z9, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z12);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z12, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z15);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z15, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z18);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z18, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z21);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z21, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z24);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z24, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z27);
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z27, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z30);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z30, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_1_vcc_net);
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z4, dataa=>b(9), datab=>
      p_rtlcn874, datad=>nx_add_11_1_vcc_net, cin=>nx62798z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_0_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z4);
   nx_add_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_0_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_1 ;

architecture IMPLEMENTATION of add_8_1 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_1_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z4);
   nx_add_8_1_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_1_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_1 ;

architecture IMPLEMENTATION of add_9_1 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_1_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
      nx_add_9_1_vcc_net, cin=>nx45949z3);
   nx_add_9_1_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_1_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_0 ;

architecture IMPLEMENTATION of sub_10_0 is 
   signal nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, 
      nx46946z13, nx46946z10, nx46946z7, nx46946z4, nx23445z2, 
      nx_sub_10_0_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z4);
   nx_sub_10_0_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z4, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z7);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z7, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z10);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z10, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z13);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z13, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z16);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z16, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z19);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z19, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z22);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z22, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z25);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_0_vcc_net, cin=>nx23445z2
   );
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z25, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_0_vcc_net, cin=>nx46946z28);
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx46946z28, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_1 ;

architecture IMPLEMENTATION of sub_10_1 is 
   signal nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, 
      nx46946z13, nx46946z10, nx46946z7, nx46946z4, nx23445z2, 
      nx_sub_10_1_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z4);
   nx_sub_10_1_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z4, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z7);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z7, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z10);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z10, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z13);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z13, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z16);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z16, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z19);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z19, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z22);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z22, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z25);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_1_vcc_net, cin=>nx23445z2
   );
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z25, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_1_vcc_net, cin=>nx46946z28);
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx46946z28, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_10_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_2 ;

architecture IMPLEMENTATION of add_8_2 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_2_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z4);
   nx_add_8_2_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_2_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_2 ;

architecture IMPLEMENTATION of add_9_2 is 
   signal nx45949z17, nx45949z15, nx45949z13, nx45949z11, nx45949z9, 
      nx45949z7, nx45949z5, nx45949z3, nx23445z2, nx_add_9_2_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(7), datad=>
      nx_add_9_2_vcc_net, cin=>nx45949z3);
   nx_add_9_2_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>a(6), datab=>a(7), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z5);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z5, dataa=>a(5), datab=>a(6), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z7);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z7, dataa=>a(4), datab=>a(5), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z9);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z9, dataa=>a(3), datab=>a(4), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z11);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z11, dataa=>a(2), datab=>a(3), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z13);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z13, dataa=>a(1), datab=>a(2), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z15);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_2_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z15, dataa=>a(0), datab=>a(1), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z17);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z17, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_p12_0 : IN std_logic) ;
end sub_10_2 ;

architecture IMPLEMENTATION of sub_10_2 is 
   signal nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, 
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx46946z29, 
      nx_sub_10_2_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), dataa=>a(9), datad=>nx_sub_10_2_vcc_net, 
      cin=>nx46946z3);
   nx_sub_10_2_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z6);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z6, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z9);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z9, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z12);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z12, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z15);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z15, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z18);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z18, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z21);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z21, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z24);
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z24, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_2_vcc_net, cin=>nx46946z27);
   ix46946z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx46946z29, dataa=>a(0), datad=>nx_sub_10_2_vcc_net
   );
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"9671",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx46946z27, dataa=>b(0), datab=>
      p_p12_0, datad=>nx_sub_10_2_vcc_net, cin=>nx46946z29);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_p11_0 : IN std_logic) ;
end sub_10_3 ;

architecture IMPLEMENTATION of sub_10_3 is 
   signal nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, 
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx46946z29, 
      nx_sub_10_3_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), dataa=>a(9), datad=>nx_sub_10_3_vcc_net, 
      cin=>nx46946z3);
   nx_sub_10_3_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z6);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z6, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z9);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z9, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z12);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z12, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z15);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z15, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z18);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z18, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z21);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z21, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z24);
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z24, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_10_3_vcc_net, cin=>nx46946z27);
   ix46946z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx46946z29, dataa=>a(0), datad=>nx_sub_10_3_vcc_net
   );
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"9671",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx46946z27, dataa=>b(0), datab=>
      p_p11_0, datad=>nx_sub_10_3_vcc_net, cin=>nx46946z29);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component gt_12_0
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_12_1
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_11_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn822 : IN std_logic) ;
   end component ;
   component add_11_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn874 : IN std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_p12_0 : IN std_logic) ;
   end component ;
   component sub_10_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_p11_0 : IN std_logic) ;
   end component ;
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21: std_logic_vector (11 DOWNTO 0) ;
   
   signal p22: std_logic_vector (11 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p31: std_logic_vector (11 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p41, p45: std_logic ;
   
   signal p43: std_logic_vector (11 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (11 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (10 DOWNTO 0) ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx27830z3, p21_3n0r3_9, p21_3n0r3_8, p21_3n0r3_7, p21_3n0r3_6, 
      p21_3n0r3_5, p21_3n0r3_4, p21_3n0r3_3, p21_3n0r3_2, p21_3n0r3_1, 
      p21_3n0r3_0: std_logic ;
   
   signal p21_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n189: std_logic_vector (11 DOWNTO 1) ;
   
   signal p22_3n0r3_9, p22_3n0r3_8, p22_3n0r3_7, p22_3n0r3_6, p22_3n0r3_5, 
      p22_3n0r3_4, p22_3n0r3_3, p22_3n0r3_2, p22_3n0r3_1, p22_3n0r3_0: 
   std_logic ;
   
   signal p22_3n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc3n195: std_logic_vector (11 DOWNTO 1) ;
   
   signal nx25033z2, nx52975z2, nx47840z2, nx27830z2, nx26026z1, nx27830z1, 
      nx25033z1, o_mode_1_EXMPLR849, nx27830z4, nx27830z5, nx27830z6, 
      nx27830z7, nx27830z8, nx27830z10, nx27830z11, nx26026z2, nx27830z9, 
      o_valid_EXMPLR850: std_logic ;
   
   signal DANGLING : std_logic_vector (35 downto 0 );

begin
   o_dir(2) <= o_valid_EXMPLR850 ;
   o_dir(1) <= o_valid_EXMPLR850 ;
   o_valid <= o_valid_EXMPLR850 ;
   p4s_sub12_0 : sub_12_0 port map ( cin=>DANGLING(0), a(11)=>p31(11), a(10)
      =>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>DANGLING(1), b(10)=>p32(10), b(9)=>p32(9), b(8)=>
      p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>
      p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>DANGLING(2));
   ix27830z30871 : gt_12_0 port map ( a(11)=>p43(11), a(10)=>p43(10), a(9)=>
      p43(9), a(8)=>p43(8), a(7)=>p43(7), a(6)=>p43(6), a(5)=>p43(5), a(4)=>
      p43(4), a(3)=>p43(3), a(2)=>p43(2), a(1)=>p43(1), a(0)=>p43(0), b(11)
      =>o_valid_EXMPLR850, b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>nx27830z3);
   ix25033z30869 : gt_12_1 port map ( a(11)=>p22(11), a(10)=>p22(10), a(9)=>
      p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), a(5)=>p22(5), a(4)=>
      p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), a(0)=>p22(0), b(11)
      =>p21(11), b(10)=>p21(10), b(9)=>p21(9), b(8)=>p21(8), b(7)=>p21(7), 
      b(6)=>p21(6), b(5)=>p21(5), b(4)=>p21(4), b(3)=>p21(3), b(2)=>p21(2), 
      b(1)=>p21(1), b(0)=>p21(0), d=>nx25033z2);
   ix52975z52630 : add_11_0 port map ( cin=>DANGLING(3), a(10)=>DANGLING(4), 
      a(9)=>DANGLING(5), a(8)=>p21_3n0r3_9, a(7)=>p21_3n0r3_8, a(6)=>
      p21_3n0r3_7, a(5)=>p21_3n0r3_6, a(4)=>p21_3n0r3_5, a(3)=>p21_3n0r3_4, 
      a(2)=>p21_3n0r3_3, a(1)=>p21_3n0r3_2, a(0)=>p21_3n0r3_1, b(10)=>
      p21_3n0r4(11), b(9)=>p21_3n0r4(10), b(8)=>p21_3n0r4(9), b(7)=>
      p21_3n0r4(8), b(6)=>p21_3n0r4(7), b(5)=>p21_3n0r4(6), b(4)=>
      p21_3n0r4(5), b(3)=>p21_3n0r4(4), b(2)=>p21_3n0r4(3), b(1)=>
      p21_3n0r4(2), b(0)=>p12(0), d=>rtlc3n189, cout=>DANGLING(6), 
      p_rtlcn822=>nx52975z2);
   ix47840z52631 : add_11_1 port map ( cin=>DANGLING(7), a(10)=>DANGLING(8), 
      a(9)=>DANGLING(9), a(8)=>p22_3n0r3_9, a(7)=>p22_3n0r3_8, a(6)=>
      p22_3n0r3_7, a(5)=>p22_3n0r3_6, a(4)=>p22_3n0r3_5, a(3)=>p22_3n0r3_4, 
      a(2)=>p22_3n0r3_3, a(1)=>p22_3n0r3_2, a(0)=>p22_3n0r3_1, b(10)=>
      p22_3n0r4(11), b(9)=>p22_3n0r4(10), b(8)=>p22_3n0r4(9), b(7)=>
      p22_3n0r4(8), b(6)=>p22_3n0r4(7), b(5)=>p22_3n0r4(6), b(4)=>
      p22_3n0r4(5), b(3)=>p22_3n0r4(4), b(2)=>p22_3n0r4(3), b(1)=>
      p22_3n0r4(2), b(0)=>p11(0), d=>rtlc3n195, cout=>DANGLING(10), 
      p_rtlcn874=>nx47840z2);
   p11_add8_0i1 : add_8_0 port map ( cin=>DANGLING(11), a(7)=>t1(7), a(6)=>
      t1(6), a(5)=>t1(5), a(4)=>t1(4), a(3)=>t1(3), a(2)=>t1(2), a(1)=>t1(1), 
      a(0)=>t1(0), b(7)=>t2(7), b(6)=>t2(6), b(5)=>t2(5), b(4)=>t2(4), b(3)
      =>t2(3), b(2)=>t2(2), b(1)=>t2(1), b(0)=>t2(0), d(7)=>p11_0n0s2(7), 
      d(6)=>p11_0n0s2(6), d(5)=>p11_0n0s2(5), d(4)=>p11_0n0s2(4), d(3)=>
      p11_0n0s2(3), d(2)=>p11_0n0s2(2), d(1)=>p11_0n0s2(1), d(0)=>
      p11_0n0s2(0), cout=>p11_0n0s2(8));
   p11_add9_1 : add_9_0 port map ( cin=>DANGLING(12), a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(7), a(6)=>p11_0n0s2(6), a(5)=>p11_0n0s2(5), a(4)=>
      p11_0n0s2(4), a(3)=>p11_0n0s2(3), a(2)=>p11_0n0s2(2), a(1)=>
      p11_0n0s2(1), a(0)=>p11_0n0s2(0), b(8)=>DANGLING(13), b(7)=>t3(7), 
      b(6)=>t3(6), b(5)=>t3(5), b(4)=>t3(4), b(3)=>t3(3), b(2)=>t3(2), b(1)
      =>t3(1), b(0)=>t3(0), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>
      p11(5), d(4)=>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>
      p11(0), cout=>p11(9));
   p12_add8_0i2 : add_8_1 port map ( cin=>DANGLING(14), a(7)=>b1(7), a(6)=>
      b1(6), a(5)=>b1(5), a(4)=>b1(4), a(3)=>b1(3), a(2)=>b1(2), a(1)=>b1(1), 
      a(0)=>b1(0), b(7)=>b2(7), b(6)=>b2(6), b(5)=>b2(5), b(4)=>b2(4), b(3)
      =>b2(3), b(2)=>b2(2), b(1)=>b2(1), b(0)=>b2(0), d(7)=>p12_0n0s2(7), 
      d(6)=>p12_0n0s2(6), d(5)=>p12_0n0s2(5), d(4)=>p12_0n0s2(4), d(3)=>
      p12_0n0s2(3), d(2)=>p12_0n0s2(2), d(1)=>p12_0n0s2(1), d(0)=>
      p12_0n0s2(0), cout=>p12_0n0s2(8));
   p12_add9_2 : add_9_1 port map ( cin=>DANGLING(15), a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(7), a(6)=>p12_0n0s2(6), a(5)=>p12_0n0s2(5), a(4)=>
      p12_0n0s2(4), a(3)=>p12_0n0s2(3), a(2)=>p12_0n0s2(2), a(1)=>
      p12_0n0s2(1), a(0)=>p12_0n0s2(0), b(8)=>DANGLING(16), b(7)=>b3(7), 
      b(6)=>b3(6), b(5)=>b3(5), b(4)=>b3(4), b(3)=>b3(3), b(2)=>b3(2), b(1)
      =>b3(1), b(0)=>b3(0), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>
      p12(5), d(4)=>p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>
      p12(0), cout=>p12(9));
   p21_sub10_3i3 : sub_10_0 port map ( cin=>DANGLING(17), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_3n0r3_9, 
      d(8)=>p21_3n0r3_8, d(7)=>p21_3n0r3_7, d(6)=>p21_3n0r3_6, d(5)=>
      p21_3n0r3_5, d(4)=>p21_3n0r3_4, d(3)=>p21_3n0r3_3, d(2)=>p21_3n0r3_2, 
      d(1)=>p21_3n0r3_1, d(0)=>p21_3n0r3_0, cout=>nx52975z2);
   p22_sub10_3i4 : sub_10_1 port map ( cin=>DANGLING(18), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_3n0r3_9, 
      d(8)=>p22_3n0r3_8, d(7)=>p22_3n0r3_7, d(6)=>p22_3n0r3_6, d(5)=>
      p22_3n0r3_5, d(4)=>p22_3n0r3_4, d(3)=>p22_3n0r3_3, d(2)=>p22_3n0r3_2, 
      d(1)=>p22_3n0r3_1, d(0)=>p22_3n0r3_0, cout=>nx47840z2);
   p13_add8_0i3 : add_8_2 port map ( cin=>DANGLING(19), a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9_2 port map ( cin=>DANGLING(20), a(8)=>DANGLING(21), 
      a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>DANGLING(22), b(7)=>DANGLING(
      23), b(6)=>DANGLING(24), b(5)=>DANGLING(25), b(4)=>DANGLING(26), b(3)
      =>DANGLING(27), b(2)=>DANGLING(28), b(1)=>DANGLING(29), b(0)=>
      p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>p13(7), d(5)=>p13(6), 
      d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>p13(2), d(0)=>p13(1), 
      cout=>p13(10));
   p21_sub11_3i1 : sub_10_2 port map ( cin=>DANGLING(30), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>DANGLING(31), 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_3n0r4(11), d(8)=>p21_3n0r4(10), d(7)=>p21_3n0r4(9), d(6)=>
      p21_3n0r4(8), d(5)=>p21_3n0r4(7), d(4)=>p21_3n0r4(6), d(3)=>
      p21_3n0r4(5), d(2)=>p21_3n0r4(4), d(1)=>p21_3n0r4(3), d(0)=>
      p21_3n0r4(2), cout=>DANGLING(32), p_p12_0=>p12(0));
   p22_sub11_3i2 : sub_10_3 port map ( cin=>DANGLING(33), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>DANGLING(34), 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_3n0r4(11), d(8)=>p22_3n0r4(10), d(7)=>p22_3n0r4(9), d(6)=>
      p22_3n0r4(8), d(5)=>p22_3n0r4(7), d(4)=>p22_3n0r4(6), d(3)=>
      p22_3n0r4(5), d(2)=>p22_3n0r4(4), d(1)=>p22_3n0r4(3), d(0)=>
      p22_3n0r4(2), cout=>DANGLING(35), p_p11_0=>p11(0));
   nx25033z1 <= NOT nx25033z2;
   o_mode_1_EXMPLR849 <= '1';
   o_valid_EXMPLR850 <= '0';
   nx27830z1 <= NOT p45;
   reg_prev_max_9 : cycloneii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_8 : cycloneii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_7 : cycloneii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_6 : cycloneii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_5 : cycloneii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_4 : cycloneii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_3 : cycloneii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_2 : cycloneii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_10 : cycloneii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_1 : cycloneii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>i_clock, ena=>nx27830z2);
   reg_prev_max_0 : cycloneii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>i_clock, ena=>nx27830z2);
   reg_prev_edge : cycloneii_lcell_ff port map ( regout=>prev_edge, datain=>
      p41, clk=>i_clock, ena=>nx27830z2);
   reg_p45 : cycloneii_lcell_ff port map ( regout=>p45, datain=>p35, clk=>
      i_clock);
   reg_p43_9 : cycloneii_lcell_ff port map ( regout=>p43(9), datain=>p4s(9), 
      clk=>i_clock);
   reg_p43_8 : cycloneii_lcell_ff port map ( regout=>p43(8), datain=>p4s(8), 
      clk=>i_clock);
   reg_p43_7 : cycloneii_lcell_ff port map ( regout=>p43(7), datain=>p4s(7), 
      clk=>i_clock);
   reg_p43_6 : cycloneii_lcell_ff port map ( regout=>p43(6), datain=>p4s(6), 
      clk=>i_clock);
   reg_p43_5 : cycloneii_lcell_ff port map ( regout=>p43(5), datain=>p4s(5), 
      clk=>i_clock);
   reg_p43_4 : cycloneii_lcell_ff port map ( regout=>p43(4), datain=>p4s(4), 
      clk=>i_clock);
   reg_p43_3 : cycloneii_lcell_ff port map ( regout=>p43(3), datain=>p4s(3), 
      clk=>i_clock);
   reg_p43_2 : cycloneii_lcell_ff port map ( regout=>p43(2), datain=>p4s(2), 
      clk=>i_clock);
   reg_p43_11 : cycloneii_lcell_ff port map ( regout=>p43(11), datain=>
      p4s(11), clk=>i_clock);
   reg_p43_10 : cycloneii_lcell_ff port map ( regout=>p43(10), datain=>
      p4s(10), clk=>i_clock);
   reg_p43_1 : cycloneii_lcell_ff port map ( regout=>p43(1), datain=>p4s(1), 
      clk=>i_clock);
   reg_p43_0 : cycloneii_lcell_ff port map ( regout=>p43(0), datain=>p4s(0), 
      clk=>i_clock);
   reg_p41 : cycloneii_lcell_ff port map ( regout=>p41, datain=>nx26026z1, 
      clk=>i_clock);
   reg_p35 : cycloneii_lcell_ff port map ( regout=>p35, datain=>nx25033z1, 
      clk=>i_clock);
   reg_p32_9 : cycloneii_lcell_ff port map ( regout=>p32(9), datain=>p23(9), 
      clk=>i_clock);
   reg_p32_8 : cycloneii_lcell_ff port map ( regout=>p32(8), datain=>p23(8), 
      clk=>i_clock);
   reg_p32_7 : cycloneii_lcell_ff port map ( regout=>p32(7), datain=>p23(7), 
      clk=>i_clock);
   reg_p32_6 : cycloneii_lcell_ff port map ( regout=>p32(6), datain=>p23(6), 
      clk=>i_clock);
   reg_p32_5 : cycloneii_lcell_ff port map ( regout=>p32(5), datain=>p23(5), 
      clk=>i_clock);
   reg_p32_4 : cycloneii_lcell_ff port map ( regout=>p32(4), datain=>p23(4), 
      clk=>i_clock);
   reg_p32_3 : cycloneii_lcell_ff port map ( regout=>p32(3), datain=>p23(3), 
      clk=>i_clock);
   reg_p32_2 : cycloneii_lcell_ff port map ( regout=>p32(2), datain=>p23(2), 
      clk=>i_clock);
   reg_p32_10 : cycloneii_lcell_ff port map ( regout=>p32(10), datain=>
      p23(10), clk=>i_clock);
   reg_p32_1 : cycloneii_lcell_ff port map ( regout=>p32(1), datain=>p23(1), 
      clk=>i_clock);
   reg_p32_0 : cycloneii_lcell_ff port map ( regout=>p32(0), datain=>p23(0), 
      clk=>i_clock);
   reg_p31_9 : cycloneii_lcell_ff port map ( regout=>p31(9), datain=>p21(9), 
      sdata=>p22(9), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_8 : cycloneii_lcell_ff port map ( regout=>p31(8), datain=>p21(8), 
      sdata=>p22(8), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_7 : cycloneii_lcell_ff port map ( regout=>p31(7), datain=>p21(7), 
      sdata=>p22(7), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_6 : cycloneii_lcell_ff port map ( regout=>p31(6), datain=>p21(6), 
      sdata=>p22(6), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_5 : cycloneii_lcell_ff port map ( regout=>p31(5), datain=>p21(5), 
      sdata=>p22(5), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_4 : cycloneii_lcell_ff port map ( regout=>p31(4), datain=>p21(4), 
      sdata=>p22(4), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_3 : cycloneii_lcell_ff port map ( regout=>p31(3), datain=>p21(3), 
      sdata=>p22(3), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_2 : cycloneii_lcell_ff port map ( regout=>p31(2), datain=>p21(2), 
      sdata=>p22(2), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_11 : cycloneii_lcell_ff port map ( regout=>p31(11), datain=>
      p21(11), sdata=>p22(11), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload
      =>nx25033z2);
   reg_p31_10 : cycloneii_lcell_ff port map ( regout=>p31(10), datain=>
      p21(10), sdata=>p22(10), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload
      =>nx25033z2);
   reg_p31_1 : cycloneii_lcell_ff port map ( regout=>p31(1), datain=>p21(1), 
      sdata=>p22(1), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p31_0 : cycloneii_lcell_ff port map ( regout=>p31(0), datain=>p21(0), 
      sdata=>p22(0), clk=>i_clock, ena=>o_mode_1_EXMPLR849, sload=>nx25033z2
   );
   reg_p23_9 : cycloneii_lcell_ff port map ( regout=>p23(9), datain=>p13(9), 
      clk=>i_clock);
   reg_p23_8 : cycloneii_lcell_ff port map ( regout=>p23(8), datain=>p13(8), 
      clk=>i_clock);
   reg_p23_7 : cycloneii_lcell_ff port map ( regout=>p23(7), datain=>p13(7), 
      clk=>i_clock);
   reg_p23_6 : cycloneii_lcell_ff port map ( regout=>p23(6), datain=>p13(6), 
      clk=>i_clock);
   reg_p23_5 : cycloneii_lcell_ff port map ( regout=>p23(5), datain=>p13(5), 
      clk=>i_clock);
   reg_p23_4 : cycloneii_lcell_ff port map ( regout=>p23(4), datain=>p13(4), 
      clk=>i_clock);
   reg_p23_3 : cycloneii_lcell_ff port map ( regout=>p23(3), datain=>p13(3), 
      clk=>i_clock);
   reg_p23_2 : cycloneii_lcell_ff port map ( regout=>p23(2), datain=>p13(2), 
      clk=>i_clock);
   reg_p23_10 : cycloneii_lcell_ff port map ( regout=>p23(10), datain=>
      p13(10), clk=>i_clock);
   reg_p23_1 : cycloneii_lcell_ff port map ( regout=>p23(1), datain=>p13(1), 
      clk=>i_clock);
   reg_p23_0 : cycloneii_lcell_ff port map ( regout=>p23(0), datain=>
      p13_0n0s2(0), clk=>i_clock);
   reg_p22_9 : cycloneii_lcell_ff port map ( regout=>p22(9), datain=>
      rtlc3n195(9), clk=>i_clock);
   reg_p22_8 : cycloneii_lcell_ff port map ( regout=>p22(8), datain=>
      rtlc3n195(8), clk=>i_clock);
   reg_p22_7 : cycloneii_lcell_ff port map ( regout=>p22(7), datain=>
      rtlc3n195(7), clk=>i_clock);
   reg_p22_6 : cycloneii_lcell_ff port map ( regout=>p22(6), datain=>
      rtlc3n195(6), clk=>i_clock);
   reg_p22_5 : cycloneii_lcell_ff port map ( regout=>p22(5), datain=>
      rtlc3n195(5), clk=>i_clock);
   reg_p22_4 : cycloneii_lcell_ff port map ( regout=>p22(4), datain=>
      rtlc3n195(4), clk=>i_clock);
   reg_p22_3 : cycloneii_lcell_ff port map ( regout=>p22(3), datain=>
      rtlc3n195(3), clk=>i_clock);
   reg_p22_2 : cycloneii_lcell_ff port map ( regout=>p22(2), datain=>
      rtlc3n195(2), clk=>i_clock);
   reg_p22_11 : cycloneii_lcell_ff port map ( regout=>p22(11), datain=>
      rtlc3n195(11), clk=>i_clock);
   reg_p22_10 : cycloneii_lcell_ff port map ( regout=>p22(10), datain=>
      rtlc3n195(10), clk=>i_clock);
   reg_p22_1 : cycloneii_lcell_ff port map ( regout=>p22(1), datain=>
      rtlc3n195(1), clk=>i_clock);
   reg_p22_0 : cycloneii_lcell_ff port map ( regout=>p22(0), datain=>
      p22_3n0r3_0, clk=>i_clock);
   reg_p21_9 : cycloneii_lcell_ff port map ( regout=>p21(9), datain=>
      rtlc3n189(9), clk=>i_clock);
   reg_p21_8 : cycloneii_lcell_ff port map ( regout=>p21(8), datain=>
      rtlc3n189(8), clk=>i_clock);
   reg_p21_7 : cycloneii_lcell_ff port map ( regout=>p21(7), datain=>
      rtlc3n189(7), clk=>i_clock);
   reg_p21_6 : cycloneii_lcell_ff port map ( regout=>p21(6), datain=>
      rtlc3n189(6), clk=>i_clock);
   reg_p21_5 : cycloneii_lcell_ff port map ( regout=>p21(5), datain=>
      rtlc3n189(5), clk=>i_clock);
   reg_p21_4 : cycloneii_lcell_ff port map ( regout=>p21(4), datain=>
      rtlc3n189(4), clk=>i_clock);
   reg_p21_3 : cycloneii_lcell_ff port map ( regout=>p21(3), datain=>
      rtlc3n189(3), clk=>i_clock);
   reg_p21_2 : cycloneii_lcell_ff port map ( regout=>p21(2), datain=>
      rtlc3n189(2), clk=>i_clock);
   reg_p21_11 : cycloneii_lcell_ff port map ( regout=>p21(11), datain=>
      rtlc3n189(11), clk=>i_clock);
   reg_p21_10 : cycloneii_lcell_ff port map ( regout=>p21(10), datain=>
      rtlc3n189(10), clk=>i_clock);
   reg_p21_1 : cycloneii_lcell_ff port map ( regout=>p21(1), datain=>
      rtlc3n189(1), clk=>i_clock);
   reg_p21_0 : cycloneii_lcell_ff port map ( regout=>p21(0), datain=>
      p21_3n0r3_0, clk=>i_clock);
   reg_o_edge : cycloneii_lcell_ff port map ( regout=>o_edge, datain=>
      prev_edge, clk=>i_clock);
   reg_max_fwd : cycloneii_lcell_ff port map ( regout=>max_fwd, datain=>p45, 
      clk=>i_clock, ena=>nx27830z2);
   reg_max_dir_0 : cycloneii_lcell_ff port map ( regout=>o_dir(0), datain=>
      nx27830z1, clk=>i_clock, ena=>nx27830z2);
   ix27830z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx27830z9, dataa=>p45, datab=>max_fwd, datac=>
      nx27830z10, datad=>nx27830z11);
   ix26026z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5444") 
       port map ( combout=>nx26026z2, dataa=>p4s(11), datab=>p4s(9), datac=>
      p4s(8), datad=>p4s(7));
   ix27830z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx27830z11, dataa=>p43(1), datab=>p43(0), datac=>
      prev_max(1), datad=>prev_max(0));
   ix27830z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx27830z10, dataa=>p43(3), datab=>p43(2), datac=>
      prev_max(3), datad=>prev_max(2));
   ix27830z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx27830z8, dataa=>p43(5), datab=>p43(4), datac=>
      prev_max(5), datad=>prev_max(4));
   ix27830z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx27830z7, dataa=>p43(7), datab=>p43(6), datac=>
      prev_max(7), datad=>prev_max(6));
   ix27830z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx27830z6, dataa=>p43(9), datab=>p43(8), datac=>
      prev_max(9), datad=>prev_max(8));
   ix27830z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"bebe") 
       port map ( combout=>nx27830z5, dataa=>p43(11), datab=>p43(10), datac
      =>prev_max(10));
   ix27830z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx27830z4, dataa=>nx27830z5, datab=>nx27830z6, 
      datac=>nx27830z7, datad=>nx27830z8);
   ix26026z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f4f4") 
       port map ( combout=>nx26026z1, dataa=>p4s(11), datab=>p4s(10), datac
      =>nx26026z2);
   ix27830z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"baba") 
       port map ( combout=>nx27830z2, dataa=>nx27830z3, datab=>nx27830z4, 
      datac=>nx27830z9);
end main_unfold_1331 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
      debug_num_8 : OUT std_logic_vector (7 DOWNTO 0) ;
      p_rdata_7 : IN std_logic ;
      p_rdata_6 : IN std_logic ;
      p_rdata_5 : IN std_logic ;
      p_rdata_4 : IN std_logic ;
      p_rdata_3 : IN std_logic ;
      p_rdata_2 : IN std_logic ;
      p_rdata_1 : IN std_logic ;
      p_rdata_0 : IN std_logic) ;
end kirsch ;

architecture main_unfold_1777 of kirsch is 
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
   signal f_t1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx57127z2, debug_valid_EXMPLR865, nx57127z1: std_logic ;
   
   signal DANGLING : std_logic_vector (22 downto 0 );

begin
   u_flow : flow port map ( t1(7)=>f_t1_next(7), t1(6)=>f_t1_next(6), t1(5)
      =>f_t1_next(5), t1(4)=>f_t1_next(4), t1(3)=>f_t1_next(3), t1(2)=>
      f_t1_next(2), t1(1)=>f_t1_next(1), t1(0)=>f_t1_next(0), t2(7)=>
      f_t2_next(7), t2(6)=>f_t2_next(6), t2(5)=>f_t2_next(5), t2(4)=>
      f_t2_next(4), t2(3)=>f_t2_next(3), t2(2)=>f_t2_next(2), t2(1)=>
      f_t2_next(1), t2(0)=>f_t2_next(0), t3(7)=>f_t3_next(7), t3(6)=>
      f_t3_next(6), t3(5)=>f_t3_next(5), t3(4)=>f_t3_next(4), t3(3)=>
      f_t3_next(3), t3(2)=>f_t3_next(2), t3(1)=>f_t3_next(1), t3(0)=>
      f_t3_next(0), b1(7)=>f_b1_next(7), b1(6)=>f_b1_next(6), b1(5)=>
      f_b1_next(5), b1(4)=>f_b1_next(4), b1(3)=>f_b1_next(3), b1(2)=>
      f_b1_next(2), b1(1)=>f_b1_next(1), b1(0)=>f_b1_next(0), b2(7)=>
      f_b2_next(7), b2(6)=>f_b2_next(6), b2(5)=>f_b2_next(5), b2(4)=>
      f_b2_next(4), b2(3)=>f_b2_next(3), b2(2)=>f_b2_next(2), b2(1)=>
      f_b2_next(1), b2(0)=>f_b2_next(0), b3(7)=>f_b3_next(7), b3(6)=>
      f_b3_next(6), b3(5)=>f_b3_next(5), b3(4)=>f_b3_next(4), b3(3)=>
      f_b3_next(3), b3(2)=>f_b3_next(2), b3(1)=>f_b3_next(1), b3(0)=>
      f_b3_next(0), i1(7)=>f_i1_next(7), i1(6)=>f_i1_next(6), i1(5)=>
      f_i1_next(5), i1(4)=>f_i1_next(4), i1(3)=>f_i1_next(3), i1(2)=>
      f_i1_next(2), i1(1)=>f_i1_next(1), i1(0)=>f_i1_next(0), i2(7)=>
      f_i2_next(7), i2(6)=>f_i2_next(6), i2(5)=>f_i2_next(5), i2(4)=>
      f_i2_next(4), i2(3)=>f_i2_next(3), i2(2)=>f_i2_next(2), i2(1)=>
      f_i2_next(1), i2(0)=>f_i2_next(0), i_clock=>i_clock, i_reset=>DANGLING
      (0), i_valid=>debug_valid_EXMPLR865, i_mode(1)=>DANGLING(1), i_mode(0)
      =>DANGLING(2), i_row(7)=>DANGLING(3), i_row(6)=>DANGLING(4), i_row(5)
      =>DANGLING(5), i_row(4)=>DANGLING(6), i_row(3)=>DANGLING(7), i_row(2)
      =>DANGLING(8), i_row(1)=>DANGLING(9), i_row(0)=>DANGLING(10), o_dir(2)
      =>o_dir(2), o_dir(1)=>DANGLING(11), o_dir(0)=>o_dir(0), o_edge=>o_edge, 
      o_valid=>DANGLING(12), o_mode(1)=>DANGLING(13), o_mode(0)=>DANGLING(14
      ), o_row(7)=>DANGLING(15), o_row(6)=>DANGLING(16), o_row(5)=>DANGLING(
      17), o_row(4)=>DANGLING(18), o_row(3)=>DANGLING(19), o_row(2)=>
      DANGLING(20), o_row(1)=>DANGLING(21), o_row(0)=>DANGLING(22));
   nx57127z2 <= '0';
   debug_valid_EXMPLR865 <= '1';
   nx57127z1 <= '0';
   reg_f_t3_next_7 : cycloneii_lcell_ff port map ( regout=>f_t3_next(7), 
      datain=>f_i1_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_6 : cycloneii_lcell_ff port map ( regout=>f_t3_next(6), 
      datain=>f_i1_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_5 : cycloneii_lcell_ff port map ( regout=>f_t3_next(5), 
      datain=>f_i1_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_4 : cycloneii_lcell_ff port map ( regout=>f_t3_next(4), 
      datain=>f_i1_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_3 : cycloneii_lcell_ff port map ( regout=>f_t3_next(3), 
      datain=>f_i1_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_2 : cycloneii_lcell_ff port map ( regout=>f_t3_next(2), 
      datain=>f_i1_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_1 : cycloneii_lcell_ff port map ( regout=>f_t3_next(1), 
      datain=>f_i1_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t3_next_0 : cycloneii_lcell_ff port map ( regout=>f_t3_next(0), 
      datain=>f_i1_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_7 : cycloneii_lcell_ff port map ( regout=>f_t2_next(7), 
      datain=>f_t3_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_6 : cycloneii_lcell_ff port map ( regout=>f_t2_next(6), 
      datain=>f_t3_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_5 : cycloneii_lcell_ff port map ( regout=>f_t2_next(5), 
      datain=>f_t3_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_4 : cycloneii_lcell_ff port map ( regout=>f_t2_next(4), 
      datain=>f_t3_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_3 : cycloneii_lcell_ff port map ( regout=>f_t2_next(3), 
      datain=>f_t3_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_2 : cycloneii_lcell_ff port map ( regout=>f_t2_next(2), 
      datain=>f_t3_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_1 : cycloneii_lcell_ff port map ( regout=>f_t2_next(1), 
      datain=>f_t3_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t2_next_0 : cycloneii_lcell_ff port map ( regout=>f_t2_next(0), 
      datain=>f_t3_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_7 : cycloneii_lcell_ff port map ( regout=>f_t1_next(7), 
      datain=>f_t2_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_6 : cycloneii_lcell_ff port map ( regout=>f_t1_next(6), 
      datain=>f_t2_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_5 : cycloneii_lcell_ff port map ( regout=>f_t1_next(5), 
      datain=>f_t2_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_4 : cycloneii_lcell_ff port map ( regout=>f_t1_next(4), 
      datain=>f_t2_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_3 : cycloneii_lcell_ff port map ( regout=>f_t1_next(3), 
      datain=>f_t2_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_2 : cycloneii_lcell_ff port map ( regout=>f_t1_next(2), 
      datain=>f_t2_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_1 : cycloneii_lcell_ff port map ( regout=>f_t1_next(1), 
      datain=>f_t2_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_t1_next_0 : cycloneii_lcell_ff port map ( regout=>f_t1_next(0), 
      datain=>f_t2_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_7 : cycloneii_lcell_ff port map ( regout=>f_i2_next(7), 
      datain=>f_t1_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_6 : cycloneii_lcell_ff port map ( regout=>f_i2_next(6), 
      datain=>f_t1_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_5 : cycloneii_lcell_ff port map ( regout=>f_i2_next(5), 
      datain=>f_t1_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_4 : cycloneii_lcell_ff port map ( regout=>f_i2_next(4), 
      datain=>f_t1_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_3 : cycloneii_lcell_ff port map ( regout=>f_i2_next(3), 
      datain=>f_t1_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_2 : cycloneii_lcell_ff port map ( regout=>f_i2_next(2), 
      datain=>f_t1_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_1 : cycloneii_lcell_ff port map ( regout=>f_i2_next(1), 
      datain=>f_t1_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i2_next_0 : cycloneii_lcell_ff port map ( regout=>f_i2_next(0), 
      datain=>f_t1_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_7 : cycloneii_lcell_ff port map ( regout=>f_i1_next(7), 
      datain=>f_b1_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_6 : cycloneii_lcell_ff port map ( regout=>f_i1_next(6), 
      datain=>f_b1_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_5 : cycloneii_lcell_ff port map ( regout=>f_i1_next(5), 
      datain=>f_b1_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_4 : cycloneii_lcell_ff port map ( regout=>f_i1_next(4), 
      datain=>f_b1_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_3 : cycloneii_lcell_ff port map ( regout=>f_i1_next(3), 
      datain=>f_b1_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_2 : cycloneii_lcell_ff port map ( regout=>f_i1_next(2), 
      datain=>f_b1_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_1 : cycloneii_lcell_ff port map ( regout=>f_i1_next(1), 
      datain=>f_b1_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_i1_next_0 : cycloneii_lcell_ff port map ( regout=>f_i1_next(0), 
      datain=>f_b1_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_7 : cycloneii_lcell_ff port map ( regout=>f_b3_next(7), 
      datain=>f_i2_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_6 : cycloneii_lcell_ff port map ( regout=>f_b3_next(6), 
      datain=>f_i2_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_5 : cycloneii_lcell_ff port map ( regout=>f_b3_next(5), 
      datain=>f_i2_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_4 : cycloneii_lcell_ff port map ( regout=>f_b3_next(4), 
      datain=>f_i2_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_3 : cycloneii_lcell_ff port map ( regout=>f_b3_next(3), 
      datain=>f_i2_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_2 : cycloneii_lcell_ff port map ( regout=>f_b3_next(2), 
      datain=>f_i2_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_1 : cycloneii_lcell_ff port map ( regout=>f_b3_next(1), 
      datain=>f_i2_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b3_next_0 : cycloneii_lcell_ff port map ( regout=>f_b3_next(0), 
      datain=>f_i2_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_7 : cycloneii_lcell_ff port map ( regout=>f_b2_next(7), 
      datain=>f_b3_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_6 : cycloneii_lcell_ff port map ( regout=>f_b2_next(6), 
      datain=>f_b3_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_5 : cycloneii_lcell_ff port map ( regout=>f_b2_next(5), 
      datain=>f_b3_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_4 : cycloneii_lcell_ff port map ( regout=>f_b2_next(4), 
      datain=>f_b3_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_3 : cycloneii_lcell_ff port map ( regout=>f_b2_next(3), 
      datain=>f_b3_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_2 : cycloneii_lcell_ff port map ( regout=>f_b2_next(2), 
      datain=>f_b3_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_1 : cycloneii_lcell_ff port map ( regout=>f_b2_next(1), 
      datain=>f_b3_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b2_next_0 : cycloneii_lcell_ff port map ( regout=>f_b2_next(0), 
      datain=>f_b3_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_7 : cycloneii_lcell_ff port map ( regout=>f_b1_next(7), 
      datain=>f_b2_next(7), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_6 : cycloneii_lcell_ff port map ( regout=>f_b1_next(6), 
      datain=>f_b2_next(6), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_5 : cycloneii_lcell_ff port map ( regout=>f_b1_next(5), 
      datain=>f_b2_next(5), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_4 : cycloneii_lcell_ff port map ( regout=>f_b1_next(4), 
      datain=>f_b2_next(4), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_3 : cycloneii_lcell_ff port map ( regout=>f_b1_next(3), 
      datain=>f_b2_next(3), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_2 : cycloneii_lcell_ff port map ( regout=>f_b1_next(2), 
      datain=>f_b2_next(2), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_1 : cycloneii_lcell_ff port map ( regout=>f_b1_next(1), 
      datain=>f_b2_next(1), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
   reg_f_b1_next_0 : cycloneii_lcell_ff port map ( regout=>f_b1_next(0), 
      datain=>f_b2_next(0), sdata=>nx57127z1, clk=>i_clock, ena=>
      debug_valid_EXMPLR865, sload=>nx57127z2);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
         txflex : OUT std_logic ;
         p_Rx_r : IN std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_rdata_7 : OUT std_logic ;
         p_rdata_6 : OUT std_logic ;
         p_rdata_5 : OUT std_logic ;
         p_rdata_4 : OUT std_logic ;
         p_rdata_3 : OUT std_logic ;
         p_rdata_2 : OUT std_logic ;
         p_rdata_1 : OUT std_logic ;
         p_rdata_0 : OUT std_logic) ;
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
         debug_num_8 : OUT std_logic_vector (7 DOWNTO 0) ;
         p_rdata_7 : IN std_logic ;
         p_rdata_6 : IN std_logic ;
         p_rdata_5 : IN std_logic ;
         p_rdata_4 : IN std_logic ;
         p_rdata_3 : IN std_logic ;
         p_rdata_2 : IN std_logic ;
         p_rdata_1 : IN std_logic ;
         p_rdata_0 : IN std_logic) ;
   end component ;
   signal clk_EXMPLR879, rxflex_EXMPLR880: std_logic ;
   
   signal o_sevenseg_EXMPLR948: std_logic_vector (15 DOWNTO 0) ;
   
   signal o_mode_EXMPLR949: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR899: std_logic ;
   
   signal debug_sevenseg_0_EXMPLR950: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_1_EXMPLR951: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_2_EXMPLR952: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_3_EXMPLR953: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_4_EXMPLR954: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_5_EXMPLR955: std_logic_vector (3 DOWNTO 0) ;
   
   signal kirschout, dir_2, dir_0, clk_int, rxflex_int, txflex_EXMPLR924: 
   std_logic ;
   
   signal debug_led_red_EXMPLR956: std_logic_vector (16 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR957: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_led_red_dup0: std_logic_vector (16 DOWNTO 16) ;
   
   signal Rx_r, Tx_Reg_14n6ss1_0_dup_4, NOT_rtlcn2_dup_5, nx21351z1: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (242 downto 0 );

begin
   clk_EXMPLR879 <= clk ;
   rxflex_EXMPLR880 <= rxflex ;
   txflex <= txflex_EXMPLR924 ;
   o_sevenseg(15) <= o_sevenseg_EXMPLR948(15) ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR948(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR948(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR948(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR948(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR948(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR948(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR948(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR948(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR948(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR948(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR948(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR948(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR948(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR948(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR948(0) ;
   o_mode(1) <= o_mode_EXMPLR949(1) ;
   o_mode(0) <= o_mode_EXMPLR949(0) ;
   o_nrst <= o_nrst_EXMPLR899 ;
   debug_led_red(16) <= debug_led_red_EXMPLR956(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR956(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR956(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR956(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR956(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR956(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR956(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR956(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR956(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR956(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR956(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR956(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR956(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR956(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR956(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR956(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR956(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR957(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR957(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR957(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR957(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR957(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR957(0) ;
   debug_sevenseg_0(3) <= debug_sevenseg_0_EXMPLR950(3) ;
   debug_sevenseg_0(2) <= debug_sevenseg_0_EXMPLR950(2) ;
   debug_sevenseg_0(1) <= debug_sevenseg_0_EXMPLR950(1) ;
   debug_sevenseg_0(0) <= debug_sevenseg_0_EXMPLR950(0) ;
   debug_sevenseg_1(3) <= debug_sevenseg_1_EXMPLR951(3) ;
   debug_sevenseg_1(2) <= debug_sevenseg_1_EXMPLR951(2) ;
   debug_sevenseg_1(1) <= debug_sevenseg_1_EXMPLR951(1) ;
   debug_sevenseg_1(0) <= debug_sevenseg_1_EXMPLR951(0) ;
   debug_sevenseg_2(3) <= debug_sevenseg_2_EXMPLR952(3) ;
   debug_sevenseg_2(2) <= debug_sevenseg_2_EXMPLR952(2) ;
   debug_sevenseg_2(1) <= debug_sevenseg_2_EXMPLR952(1) ;
   debug_sevenseg_2(0) <= debug_sevenseg_2_EXMPLR952(0) ;
   debug_sevenseg_3(3) <= debug_sevenseg_3_EXMPLR953(3) ;
   debug_sevenseg_3(2) <= debug_sevenseg_3_EXMPLR953(2) ;
   debug_sevenseg_3(1) <= debug_sevenseg_3_EXMPLR953(1) ;
   debug_sevenseg_3(0) <= debug_sevenseg_3_EXMPLR953(0) ;
   debug_sevenseg_4(3) <= debug_sevenseg_4_EXMPLR954(3) ;
   debug_sevenseg_4(2) <= debug_sevenseg_4_EXMPLR954(2) ;
   debug_sevenseg_4(1) <= debug_sevenseg_4_EXMPLR954(1) ;
   debug_sevenseg_4(0) <= debug_sevenseg_4_EXMPLR954(0) ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_EXMPLR955(3) ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_EXMPLR955(2) ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_EXMPLR955(1) ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_EXMPLR955(0) ;
   u_uw_uart : uw_uart port map ( clk=>clk_int, rst=>DANGLING(0), kirschout
      =>kirschout, kirschdir(2)=>dir_2, kirschdir(1)=>DANGLING(1), 
      kirschdir(0)=>dir_0, o_valid=>DANGLING(2), i_mode(1)=>DANGLING(3), 
      i_mode(0)=>DANGLING(4), datain(7)=>DANGLING(5), datain(6)=>DANGLING(6), 
      datain(5)=>DANGLING(7), datain(4)=>DANGLING(8), datain(3)=>DANGLING(9), 
      datain(2)=>DANGLING(10), datain(1)=>DANGLING(11), datain(0)=>DANGLING(
      12), o_pixavail=>DANGLING(13), rxflex=>rxflex_int, txflex=>DANGLING(14
      ), p_Rx_r=>Rx_r, p_Tx_Reg_14n6ss1_0=>Tx_Reg_14n6ss1_0_dup_4, 
      p_NOT_rtlcn2=>NOT_rtlcn2_dup_5, p_rdata_7=>DANGLING(15), p_rdata_6=>
      DANGLING(16), p_rdata_5=>DANGLING(17), p_rdata_4=>DANGLING(18), 
      p_rdata_3=>DANGLING(19), p_rdata_2=>DANGLING(20), p_rdata_1=>DANGLING(
      21), p_rdata_0=>DANGLING(22));
   u_kirsch : kirsch port map ( i_clock=>clk_int, i_reset=>DANGLING(23), 
      i_valid=>DANGLING(24), i_pixel(7)=>DANGLING(25), i_pixel(6)=>DANGLING(
      26), i_pixel(5)=>DANGLING(27), i_pixel(4)=>DANGLING(28), i_pixel(3)=>
      DANGLING(29), i_pixel(2)=>DANGLING(30), i_pixel(1)=>DANGLING(31), 
      i_pixel(0)=>DANGLING(32), o_valid=>DANGLING(33), o_edge=>kirschout, 
      o_dir(2)=>dir_2, o_dir(1)=>DANGLING(34), o_dir(0)=>dir_0, o_mode(1)=>
      DANGLING(35), o_mode(0)=>DANGLING(36), o_row(7)=>DANGLING(37), 
      o_row(6)=>DANGLING(38), o_row(5)=>DANGLING(39), o_row(4)=>DANGLING(40), 
      o_row(3)=>DANGLING(41), o_row(2)=>DANGLING(42), o_row(1)=>DANGLING(43), 
      o_row(0)=>DANGLING(44), o_image0_0(7)=>DANGLING(45), o_image0_0(6)=>
      DANGLING(46), o_image0_0(5)=>DANGLING(47), o_image0_0(4)=>DANGLING(48), 
      o_image0_0(3)=>DANGLING(49), o_image0_0(2)=>DANGLING(50), 
      o_image0_0(1)=>DANGLING(51), o_image0_0(0)=>DANGLING(52), 
      o_image0_1(7)=>DANGLING(53), o_image0_1(6)=>DANGLING(54), 
      o_image0_1(5)=>DANGLING(55), o_image0_1(4)=>DANGLING(56), 
      o_image0_1(3)=>DANGLING(57), o_image0_1(2)=>DANGLING(58), 
      o_image0_1(1)=>DANGLING(59), o_image0_1(0)=>DANGLING(60), 
      o_image0_2(7)=>DANGLING(61), o_image0_2(6)=>DANGLING(62), 
      o_image0_2(5)=>DANGLING(63), o_image0_2(4)=>DANGLING(64), 
      o_image0_2(3)=>DANGLING(65), o_image0_2(2)=>DANGLING(66), 
      o_image0_2(1)=>DANGLING(67), o_image0_2(0)=>DANGLING(68), 
      o_image1_0(7)=>DANGLING(69), o_image1_0(6)=>DANGLING(70), 
      o_image1_0(5)=>DANGLING(71), o_image1_0(4)=>DANGLING(72), 
      o_image1_0(3)=>DANGLING(73), o_image1_0(2)=>DANGLING(74), 
      o_image1_0(1)=>DANGLING(75), o_image1_0(0)=>DANGLING(76), 
      o_image1_1(7)=>DANGLING(77), o_image1_1(6)=>DANGLING(78), 
      o_image1_1(5)=>DANGLING(79), o_image1_1(4)=>DANGLING(80), 
      o_image1_1(3)=>DANGLING(81), o_image1_1(2)=>DANGLING(82), 
      o_image1_1(1)=>DANGLING(83), o_image1_1(0)=>DANGLING(84), 
      o_image1_2(7)=>DANGLING(85), o_image1_2(6)=>DANGLING(86), 
      o_image1_2(5)=>DANGLING(87), o_image1_2(4)=>DANGLING(88), 
      o_image1_2(3)=>DANGLING(89), o_image1_2(2)=>DANGLING(90), 
      o_image1_2(1)=>DANGLING(91), o_image1_2(0)=>DANGLING(92), 
      o_image2_0(7)=>DANGLING(93), o_image2_0(6)=>DANGLING(94), 
      o_image2_0(5)=>DANGLING(95), o_image2_0(4)=>DANGLING(96), 
      o_image2_0(3)=>DANGLING(97), o_image2_0(2)=>DANGLING(98), 
      o_image2_0(1)=>DANGLING(99), o_image2_0(0)=>DANGLING(100), 
      o_image2_1(7)=>DANGLING(101), o_image2_1(6)=>DANGLING(102), 
      o_image2_1(5)=>DANGLING(103), o_image2_1(4)=>DANGLING(104), 
      o_image2_1(3)=>DANGLING(105), o_image2_1(2)=>DANGLING(106), 
      o_image2_1(1)=>DANGLING(107), o_image2_1(0)=>DANGLING(108), 
      o_image2_2(7)=>DANGLING(109), o_image2_2(6)=>DANGLING(110), 
      o_image2_2(5)=>DANGLING(111), o_image2_2(4)=>DANGLING(112), 
      o_image2_2(3)=>DANGLING(113), o_image2_2(2)=>DANGLING(114), 
      o_image2_2(1)=>DANGLING(115), o_image2_2(0)=>DANGLING(116), 
      debug_key(3)=>DANGLING(117), debug_key(2)=>DANGLING(118), debug_key(1)
      =>DANGLING(119), debug_switch(17)=>DANGLING(120), debug_switch(16)=>
      DANGLING(121), debug_switch(15)=>DANGLING(122), debug_switch(14)=>
      DANGLING(123), debug_switch(13)=>DANGLING(124), debug_switch(12)=>
      DANGLING(125), debug_switch(11)=>DANGLING(126), debug_switch(10)=>
      DANGLING(127), debug_switch(9)=>DANGLING(128), debug_switch(8)=>
      DANGLING(129), debug_switch(7)=>DANGLING(130), debug_switch(6)=>
      DANGLING(131), debug_switch(5)=>DANGLING(132), debug_switch(4)=>
      DANGLING(133), debug_switch(3)=>DANGLING(134), debug_switch(2)=>
      DANGLING(135), debug_switch(1)=>DANGLING(136), debug_switch(0)=>
      DANGLING(137), debug_led_red(17)=>DANGLING(138), debug_led_red(16)=>
      DANGLING(139), debug_led_red(15)=>DANGLING(140), debug_led_red(14)=>
      DANGLING(141), debug_led_red(13)=>DANGLING(142), debug_led_red(12)=>
      DANGLING(143), debug_led_red(11)=>DANGLING(144), debug_led_red(10)=>
      DANGLING(145), debug_led_red(9)=>DANGLING(146), debug_led_red(8)=>
      DANGLING(147), debug_led_red(7)=>DANGLING(148), debug_led_red(6)=>
      DANGLING(149), debug_led_red(5)=>DANGLING(150), debug_led_red(4)=>
      DANGLING(151), debug_led_red(3)=>DANGLING(152), debug_led_red(2)=>
      DANGLING(153), debug_led_red(1)=>DANGLING(154), debug_led_red(0)=>
      DANGLING(155), debug_led_grn(5)=>DANGLING(156), debug_led_grn(4)=>
      DANGLING(157), debug_led_grn(3)=>DANGLING(158), debug_led_grn(2)=>
      DANGLING(159), debug_led_grn(1)=>DANGLING(160), debug_led_grn(0)=>
      DANGLING(161), debug_valid=>DANGLING(162), debug_num_0(7)=>DANGLING(
      163), debug_num_0(6)=>DANGLING(164), debug_num_0(5)=>DANGLING(165), 
      debug_num_0(4)=>DANGLING(166), debug_num_0(3)=>DANGLING(167), 
      debug_num_0(2)=>DANGLING(168), debug_num_0(1)=>DANGLING(169), 
      debug_num_0(0)=>DANGLING(170), debug_num_1(7)=>DANGLING(171), 
      debug_num_1(6)=>DANGLING(172), debug_num_1(5)=>DANGLING(173), 
      debug_num_1(4)=>DANGLING(174), debug_num_1(3)=>DANGLING(175), 
      debug_num_1(2)=>DANGLING(176), debug_num_1(1)=>DANGLING(177), 
      debug_num_1(0)=>DANGLING(178), debug_num_2(7)=>DANGLING(179), 
      debug_num_2(6)=>DANGLING(180), debug_num_2(5)=>DANGLING(181), 
      debug_num_2(4)=>DANGLING(182), debug_num_2(3)=>DANGLING(183), 
      debug_num_2(2)=>DANGLING(184), debug_num_2(1)=>DANGLING(185), 
      debug_num_2(0)=>DANGLING(186), debug_num_3(7)=>DANGLING(187), 
      debug_num_3(6)=>DANGLING(188), debug_num_3(5)=>DANGLING(189), 
      debug_num_3(4)=>DANGLING(190), debug_num_3(3)=>DANGLING(191), 
      debug_num_3(2)=>DANGLING(192), debug_num_3(1)=>DANGLING(193), 
      debug_num_3(0)=>DANGLING(194), debug_num_4(7)=>DANGLING(195), 
      debug_num_4(6)=>DANGLING(196), debug_num_4(5)=>DANGLING(197), 
      debug_num_4(4)=>DANGLING(198), debug_num_4(3)=>DANGLING(199), 
      debug_num_4(2)=>DANGLING(200), debug_num_4(1)=>DANGLING(201), 
      debug_num_4(0)=>DANGLING(202), debug_num_5(7)=>DANGLING(203), 
      debug_num_5(6)=>DANGLING(204), debug_num_5(5)=>DANGLING(205), 
      debug_num_5(4)=>DANGLING(206), debug_num_5(3)=>DANGLING(207), 
      debug_num_5(2)=>DANGLING(208), debug_num_5(1)=>DANGLING(209), 
      debug_num_5(0)=>DANGLING(210), debug_num_6(7)=>DANGLING(211), 
      debug_num_6(6)=>DANGLING(212), debug_num_6(5)=>DANGLING(213), 
      debug_num_6(4)=>DANGLING(214), debug_num_6(3)=>DANGLING(215), 
      debug_num_6(2)=>DANGLING(216), debug_num_6(1)=>DANGLING(217), 
      debug_num_6(0)=>DANGLING(218), debug_num_7(7)=>DANGLING(219), 
      debug_num_7(6)=>DANGLING(220), debug_num_7(5)=>DANGLING(221), 
      debug_num_7(4)=>DANGLING(222), debug_num_7(3)=>DANGLING(223), 
      debug_num_7(2)=>DANGLING(224), debug_num_7(1)=>DANGLING(225), 
      debug_num_7(0)=>DANGLING(226), debug_num_8(7)=>DANGLING(227), 
      debug_num_8(6)=>DANGLING(228), debug_num_8(5)=>DANGLING(229), 
      debug_num_8(4)=>DANGLING(230), debug_num_8(3)=>DANGLING(231), 
      debug_num_8(2)=>DANGLING(232), debug_num_8(1)=>DANGLING(233), 
      debug_num_8(0)=>DANGLING(234), p_rdata_7=>DANGLING(235), p_rdata_6=>
      DANGLING(236), p_rdata_5=>DANGLING(237), p_rdata_4=>DANGLING(238), 
      p_rdata_3=>DANGLING(239), p_rdata_2=>DANGLING(240), p_rdata_1=>
      DANGLING(241), p_rdata_0=>DANGLING(242));
   debug_led_red_dup0(16) <= '0';
   reg_out_txflex_obuf : cycloneii_lcell_ff port map ( regout=>nx21351z1, 
      datain=>Tx_Reg_14n6ss1_0_dup_4, clk=>clk_int, ena=>NOT_rtlcn2_dup_5);
   reg_in_rxflex_ibuf : cycloneii_lcell_ff port map ( regout=>Rx_r, datain=>
      rxflex_int, clk=>clk_int);
   o_sevenseg_triBus1_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(9), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(8), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(7), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(6), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(5), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(4), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(15), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(14), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(13), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(12), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(11), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(10), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_sevenseg_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR948(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   o_mode_triBus2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR949(1), datain=>debug_led_red_dup0(16), 
      oe=>debug_led_red_dup0(16));
   o_mode_triBus2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR949(0), datain=>debug_led_red_dup0(16), 
      oe=>debug_led_red_dup0(16));
   ix35935z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR880);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR924, datain=>nx21351z1);
   ix61067z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_nrst_EXMPLR899, datain=>debug_led_red_dup0(16), 
      oe=>debug_led_red_dup0(16));
   debug_sevenseg_5_triBus8_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR955(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_5_triBus8_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR955(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_5_triBus8_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR955(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_5_triBus8_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR955(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_4_triBus7_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR954(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_4_triBus7_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR954(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_4_triBus7_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR954(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_4_triBus7_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR954(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_3_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR953(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_3_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR953(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_3_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR953(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_3_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR953(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_2_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR952(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_2_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR952(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_2_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR952(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_2_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR952(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_1_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR951(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_1_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR951(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_1_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR951(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_1_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR951(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_0_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR950(3), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_0_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR950(2), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_0_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR950(1), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_sevenseg_0_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR950(0), datain=>
      debug_led_red_dup0(16), oe=>debug_led_red_dup0(16));
   debug_led_red_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(9), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(8), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(7), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(6), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(5), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(4), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(3), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(2), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(16), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(15), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(14), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(13), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(12), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(11), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(10), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(1), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR956(0), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(5), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(4), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(3), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(2), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(1), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR957(0), datain=>
      debug_led_red_dup0(16));
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR879);
end main ;

