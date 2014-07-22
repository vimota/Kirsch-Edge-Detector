
-- 
-- Definition of  top_kirsch
-- 
--      Tue Jul 22 01:53:48 2014
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
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx17096z5, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx17096z7, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx17096z9, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx17096z11, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx17096z13, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx17096z15, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx17096z17, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx3957z1, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx17096z19, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx17096z21, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
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
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx18093z7, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx18093z9, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx18093z11, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx18093z13, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx18093z15, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx18093z17, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx18093z19, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx2960z1, datain=>
      nx18093z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx18093z3, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx18093z21, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx18093z23, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
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
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_rxflex : IN std_logic ;
      p_nrst_int_dup_19 : IN std_logic) ;
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
   signal RxErr_EXMPLR691, RxRDY_EXMPLR692: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, nx65151z1, 
      nx50920z2, nx35603z1, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, 
      nx13547z1, nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, 
      nx13547z2, nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
      nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
      nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, 
      nx34394z5, nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, 
      nx32400z2, nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, 
      nx15541z2, nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, 
      nx32400z8, nx32400z9, not_Rx_r, NOT_Rx, nx34606z1, 
      NOT_Tx_Reg_14n6ss1_8, nx33609z1, NOT_Tx_Reg_14n6ss1_7, nx32612z1, 
      NOT_Tx_Reg_14n6ss1_6, nx31615z1, NOT_Tx_Reg_14n6ss1_5, nx30618z1, 
      NOT_Tx_Reg_14n6ss1_4, nx29621z1, NOT_Tx_Reg_14n6ss1_3, nx28624z1, 
      NOT_Tx_Reg_14n6ss1_2, nx61140z1, NOT_Tx_Reg_14n6ss1_1, nx34394z2, 
      nx16538z1: std_logic ;
   
   signal DANGLING : std_logic_vector (32 downto 0 );

begin
   RxErr <= RxErr_EXMPLR691 ;
   RxRDY <= RxRDY_EXMPLR692 ;
   modgen_counter_RxDiv : modgen_counter_11_0 port map ( clock=>CLK, q(10)=>
      RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>RxDiv(7), q(6)=>
      RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>RxDiv(3), q(2)=>
      RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>DANGLING(0), aclear
      =>RST, sload=>DANGLING(1), data(10)=>DANGLING(2), data(9)=>DANGLING(3), 
      data(8)=>DANGLING(4), data(7)=>DANGLING(5), data(6)=>DANGLING(6), 
      data(5)=>DANGLING(7), data(4)=>DANGLING(8), data(3)=>DANGLING(9), 
      data(2)=>DANGLING(10), data(1)=>DANGLING(11), data(0)=>DANGLING(12), 
      aset=>DANGLING(13), sclear=>nx65151z1, updn=>DANGLING(14), cnt_en=>
      DANGLING(15));
   modgen_counter_TxDiv : modgen_counter_12_0 port map ( clock=>CLK, q(11)=>
      TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>TxDiv(8), q(7)=>
      TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>TxDiv(4), q(3)=>
      TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>TxDiv(0), clk_en=>
      DANGLING(16), aclear=>RST, sload=>DANGLING(17), data(11)=>DANGLING(18), 
      data(10)=>DANGLING(19), data(9)=>DANGLING(20), data(8)=>DANGLING(21), 
      data(7)=>DANGLING(22), data(6)=>DANGLING(23), data(5)=>DANGLING(24), 
      data(4)=>DANGLING(25), data(3)=>DANGLING(26), data(2)=>DANGLING(27), 
      data(1)=>DANGLING(28), data(0)=>DANGLING(29), aset=>DANGLING(30), 
      sclear=>nx32400z1, updn=>DANGLING(31), cnt_en=>DANGLING(32));
   PWR <= '1';
   Rx_r <= NOT not_Rx_r;
   RxFSM_0 <= NOT nx34394z2;
   reg_Tx_Reg_8 : cycloneii_lcell_ff port map ( regout=>nx34606z1, datain=>
      NOT_Tx_Reg_14n6ss1_8, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_7 : cycloneii_lcell_ff port map ( regout=>nx33609z1, datain=>
      NOT_Tx_Reg_14n6ss1_7, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_6 : cycloneii_lcell_ff port map ( regout=>nx32612z1, datain=>
      NOT_Tx_Reg_14n6ss1_6, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_5 : cycloneii_lcell_ff port map ( regout=>nx31615z1, datain=>
      NOT_Tx_Reg_14n6ss1_5, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>nx30618z1, datain=>
      NOT_Tx_Reg_14n6ss1_4, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>nx29621z1, datain=>
      NOT_Tx_Reg_14n6ss1_3, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>nx28624z1, datain=>
      NOT_Tx_Reg_14n6ss1_2, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx61140z1, datain=>
      NOT_Tx_Reg_14n6ss1_1, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TxDivisor_5 : cycloneii_lcell_ff port map ( regout=>TxDivisor_5, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>not_Rx_r, datain=>NOT_Rx, 
      clk=>CLK, aclr=>RST);
   reg_Rx_Reg_7 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(7), datain=>
      Rx_r, clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_6 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(6), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_5 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(5), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_4 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(4), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_3 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(3), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_2 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(2), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_1 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(1), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_0 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(0), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR692, 
      datain=>nx30017z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_6 : cycloneii_lcell_ff port map ( regout=>RxFSM_6, datain=>
      RxFSM_1, sdata=>RxFSM_5, clk=>CLK, ena=>nx15541z1, aclr=>RST, sload=>
      not_Rx_r);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM_5, datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM_3, datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM_2, datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM_1, datain=>
      RxFSM_0, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx34394z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR691, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   reg_Dout_7 : cycloneii_lcell_ff port map ( regout=>Dout(7), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_6 : cycloneii_lcell_ff port map ( regout=>Dout(6), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_5 : cycloneii_lcell_ff port map ( regout=>Dout(5), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_4 : cycloneii_lcell_ff port map ( regout=>Dout(4), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_3 : cycloneii_lcell_ff port map ( regout=>Dout(3), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_2 : cycloneii_lcell_ff port map ( regout=>Dout(2), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_1 : cycloneii_lcell_ff port map ( regout=>Dout(1), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_0 : cycloneii_lcell_ff port map ( regout=>Dout(0), datain=>
      Rx_Reg(0), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, aclr=>RST);
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix61140z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>p_Tx_Reg_14n6ss1_0, dataa=>nx61140z1, datab=>
      TxFSM(1), datac=>TxFSM(0));
   ix28624z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_1, dataa=>Din(0), datab=>
      nx28624z1, datac=>TxFSM(1));
   ix29621z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_2, dataa=>Din(1), datab=>
      nx29621z1, datac=>TxFSM(1));
   ix30618z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_3, dataa=>Din(2), datab=>
      nx30618z1, datac=>TxFSM(1));
   ix31615z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_4, dataa=>Din(3), datab=>
      nx31615z1, datac=>TxFSM(1));
   ix32612z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_5, dataa=>Din(5), datab=>
      nx32612z1, datac=>TxFSM(1));
   ix33609z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_6, dataa=>Din(5), datab=>
      nx33609z1, datac=>TxFSM(1));
   ix34606z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_7, dataa=>Din(7), datab=>
      nx34606z1, datac=>TxFSM(1));
   ix35603z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_8, dataa=>Din(7), datab=>
      TxFSM(1));
   ix65151z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx65151z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix32400z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx32400z9, dataa=>TxDiv(10), datab=>TxDiv(9));
   ix32400z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z8, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(0), datad=>nx32400z9);
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
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ac00") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM_6, datad=>nx34394z2);
   ix32400z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z7, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z5, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z6, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix15541z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx15541z3, dataa=>p_rxflex, datab=>RxFSM_6, datac
      =>p_nrst_int_dup_19);
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z3, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(10), datad=>TxDiv(9));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(0), datab=>nx32400z3, 
      datac=>nx32400z4, datad=>nx32400z5);
   ix34394z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z8, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z10, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z7, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx34394z9, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z6, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix34394z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx34394z5, dataa=>nx34394z6, datab=>nx34394z7, 
      datac=>nx34394z8);
   ix34394z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z4, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR691, datab=>
      RxRDY_EXMPLR692, datac=>RxFSM_6);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c40") 
       port map ( combout=>nx11364z1, dataa=>TopRx, datab=>RxBitCnt(0), 
      datac=>RxFSM_3, datad=>nx34394z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"60aa") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx34394z2, datad=>not_rtlc17_X_0_n360);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a8a") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx9370z2);
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ca0a") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>nx34394z2, 
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
   ix30017z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx30017z1, dataa=>TopRx, datab=>not_Rx_r, datac=>
      RxFSM_5);
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z6, 
      datac=>nx32400z7, datad=>nx32400z8);
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx34394z3, dataa=>nx34394z4, datab=>nx34394z5, 
      datac=>nx34394z9, datad=>nx34394z10);
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx34394z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx11553z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>not_Rx_r, datab=>RxFSM_6, datac
      =>RxFSM_5);
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>not_Rx_r, datab=>RxFSM_3, datac
      =>RxFSM_1);
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx15541z1, dataa=>not_Rx_r, datab=>nx34394z2, 
      datac=>nx15541z2, datad=>nx15541z3);
   ix54636z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx54636z1, dataa=>TopRx, datab=>RxFSM_3);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>not_rtlc17_X_0_n360, dataa=>TopRx, datab=>RxFSM_3, 
      datac=>nx34394z2);
   ix35603z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx35603z1, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(0), datab=>TxFSM(1), datac
      =>TopTx);
   ix57064z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>NOT_Rx, dataa=>p_rxflex, datab=>p_nrst_int_dup_19
   );
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
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      px304 : IN std_logic ;
      p_m_o_mode_0 : IN std_logic ;
      p_nrst_int : IN std_logic) ;
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
         RxRDY : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_rxflex : IN std_logic ;
         p_nrst_int_dup_19 : IN std_logic) ;
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
   signal o_pixavail_EXMPLR704: std_logic_vector (7 DOWNTO 7) ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, sdout_7, sdout_5, sdout_3, sdout_2, sdout_1, sdout_0
   : std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, rawrx, mdata_7n5ss1_6, mdata_7n5ss1_4, nx40736z1, 
      nx33354z2, nx40736z2, nx38868z1, nx46385z1, nx39480z1, not_o_valid, 
      nx33354z1, nx58116z1, nx38742z1, nx18433z1, nx39480z2, nx39480z6, 
      nx39480z3, nx39480z4, nx40736z3, nx39480z5, nx39480z7, nx36748z1, 
      nx35751z1, nx34754z1, nx33757z1: std_logic ;
   
   signal DANGLING : std_logic_vector (25 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR704(7) ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      DANGLING(0), Din(5)=>sdout_5, Din(4)=>DANGLING(1), Din(3)=>sdout_3, 
      Din(2)=>sdout_2, Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>
      rawrx, Baud=>DANGLING(2), Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)
      =>sdin(5), Dout(4)=>sdin(4), Dout(3)=>sdin(3), Dout(2)=>sdin(2), 
      Dout(1)=>sdin(1), Dout(0)=>sdin(0), Tx=>DANGLING(3), TxBusy=>DANGLING(
      4), RxErr=>rxerr, RxRDY=>rxrdy, p_Tx_Reg_14n6ss1_0=>p_Tx_Reg_14n6ss1_0, 
      p_NOT_rtlcn2=>p_NOT_rtlcn2, p_rxflex=>rxflex, p_nrst_int_dup_19=>
      p_nrst_int);
   modgen_counter_waitcount : modgen_counter_16_0 port map ( clock=>clk, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>nx33354z1, aclear=>DANGLING(5), sload=>DANGLING(
      6), data(15)=>DANGLING(7), data(14)=>DANGLING(8), data(13)=>DANGLING(9
      ), data(12)=>DANGLING(10), data(11)=>DANGLING(11), data(10)=>DANGLING(
      12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), data(7)=>DANGLING(
      15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), data(4)=>DANGLING(
      18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), data(1)=>DANGLING(
      21), data(0)=>DANGLING(22), aset=>DANGLING(23), sclear=>nx33354z2, 
      updn=>DANGLING(24), cnt_en=>DANGLING(25));
   not_o_valid <= NOT o_valid;
   reg_state : cycloneii_lcell_ff port map ( regout=>state, datain=>
      nx38868z1, clk=>clk, aclr=>rst);
   reg_sdout_7 : cycloneii_lcell_ff port map ( regout=>sdout_7, datain=>
      mdata_7, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_5 : cycloneii_lcell_ff port map ( regout=>sdout_5, datain=>
      mdata_5, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_3 : cycloneii_lcell_ff port map ( regout=>sdout_3, datain=>
      mdata_3, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_2 : cycloneii_lcell_ff port map ( regout=>sdout_2, datain=>
      mdata_2, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_1 : cycloneii_lcell_ff port map ( regout=>sdout_1, datain=>
      mdata_1, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_0 : cycloneii_lcell_ff port map ( regout=>sdout_0, datain=>
      mdata_0, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_rdata_7 : cycloneii_lcell_ff port map ( regout=>rdata(7), datain=>
      sdin(7), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_6 : cycloneii_lcell_ff port map ( regout=>rdata(6), datain=>
      sdin(6), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_5 : cycloneii_lcell_ff port map ( regout=>rdata(5), datain=>
      sdin(5), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_4 : cycloneii_lcell_ff port map ( regout=>rdata(4), datain=>
      sdin(4), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_3 : cycloneii_lcell_ff port map ( regout=>rdata(3), datain=>
      sdin(3), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_2 : cycloneii_lcell_ff port map ( regout=>rdata(2), datain=>
      sdin(2), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_1 : cycloneii_lcell_ff port map ( regout=>rdata(1), datain=>
      sdin(1), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_0 : cycloneii_lcell_ff port map ( regout=>rdata(0), datain=>
      sdin(0), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_mdata_7 : cycloneii_lcell_ff port map ( regout=>mdata_7, datain=>
      mdata_7n5ss1_6, clk=>clk, ena=>nx40736z2);
   reg_mdata_5 : cycloneii_lcell_ff port map ( regout=>mdata_5, datain=>
      mdata_7n5ss1_4, clk=>clk, ena=>nx40736z2);
   nx36748z1 <= '1';
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      kirschdir(2), sdata=>nx36748z1, clk=>clk, ena=>nx40736z2, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx35751z1 <= '1';
   reg_mdata_2 : cycloneii_lcell_ff port map ( regout=>mdata_2, datain=>
      kirschdir(1), sdata=>nx35751z1, clk=>clk, ena=>nx40736z2, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx34754z1 <= '1';
   reg_mdata_1 : cycloneii_lcell_ff port map ( regout=>mdata_1, datain=>
      kirschdir(0), sdata=>nx34754z1, clk=>clk, ena=>nx40736z2, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx33757z1 <= '1';
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      kirschout, sdata=>nx33757z1, clk=>clk, ena=>nx40736z2, sclr=>nx38742z1, 
      sload=>not_o_valid);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk, aclr=>rst);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx46385z1, clk=>clk, sclr=>rst);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR704(7), datain=>nx58116z1, clk=>clk, aclr=>rst);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk, sclr=>rst);
   ix46385z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b8ff") 
       port map ( combout=>nx46385z1, dataa=>nx39480z2, datab=>nx40736z1, 
      datac=>rxerr, datad=>p_nrst_int);
   ix38742z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"03ab") 
       port map ( combout=>nx38742z1, dataa=>i_mode(0), datab=>
      o_pixavail_EXMPLR704(7), datac=>ack, datad=>p_nrst_int);
   ix40736z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx40736z2, dataa=>nx40736z3, datab=>p_nrst_int);
   ix33354z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx33354z1, dataa=>ack, datab=>
      o_pixavail_EXMPLR704(7), datac=>p_nrst_int);
   ix33354z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx33354z2, dataa=>nx39480z2, datab=>p_nrst_int);
   ix15671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>rawrx, dataa=>rxflex, datab=>p_nrst_int);
   ix39480z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx39480z7, dataa=>waitcount(11), datab=>
      waitcount(10));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"1000") 
       port map ( combout=>nx39480z5, dataa=>waitcount(9), datab=>
      waitcount(8), datac=>nx39480z6, datad=>nx39480z7);
   ix40736z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe04") 
       port map ( combout=>nx40736z3, dataa=>o_pixavail_EXMPLR704(7), datab
      =>rxerr, datac=>ack, datad=>nx39480z2);
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
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx39480z2, dataa=>o_valid, datab=>nx39480z3, 
      datac=>nx39480z4, datad=>nx39480z5);
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_EXMPLR704(7), datab
      =>rxrdy);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx39480z1, dataa=>o_pixavail_EXMPLR704(7), datab
      =>ack, datac=>nx39480z2);
   ix38868z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx38868z1, dataa=>state, datab=>dsend);
   ix40736z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx40736z1, dataa=>o_pixavail_EXMPLR704(7), datab
      =>ack);
   ix38742z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>mdata_7n5ss1_4, dataa=>o_valid, datab=>nx38742z1
   );
   ix40426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(0), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(0));
   ix41423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(1), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(1));
   ix42420z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(2), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(2));
   ix43417z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(3), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(3));
   ix44414z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(4), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(4));
   ix45411z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(5), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(5));
   ix46408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(6), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(6));
   ix47405z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(7), dataa=>o_pixavail_EXMPLR704(7), datab
      =>rdata(7));
   ix40736z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5f13") 
       port map ( combout=>mdata_7n5ss1_6, dataa=>o_valid, datab=>i_mode(0), 
      datac=>nx40736z1, datad=>p_nrst_int);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_0 is 
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
      cnt_en : IN std_logic ;
      p_i_reset : IN std_logic ;
      p_rtlc5n55 : IN std_logic ;
      p_nrst_int_dup_22 : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_0_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx57253z3, dataa=>p_rtlc5n55, datab=>cnt_en, 
      datac=>p_nrst_int_dup_22);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_1 is 
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
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_1_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_1_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_1_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_1_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx57253z3, dataa=>clk_en, datab=>sclear, datac=>
      cnt_en);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
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
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal ena1_EXMPLR743: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR743, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR743 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
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
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal ena1_EXMPLR773: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR773, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR773 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_2 is 
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
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal ena1_EXMPLR803: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR803, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR803 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
      o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      p_nrst_int_dup_22 : IN std_logic) ;
end memory ;

architecture main_unfold_1492 of memory is 
   component modgen_counter_8_0
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
         cnt_en : IN std_logic ;
         p_i_reset : IN std_logic ;
         p_rtlc5n55 : IN std_logic ;
         p_nrst_int_dup_22 : IN std_logic) ;
   end component ;
   component modgen_counter_8_1
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
   component ram_dq_8_0
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
   component ram_dq_8_1
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
   component ram_dq_8_2
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
   signal o_valid_EXMPLR817, o_column_0_EXMPLR818: std_logic ;
   
   signal mem_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wrn: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem_wrn_current: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_bubble, busySignal, busySignalDelayed: std_logic ;
   
   signal column: std_logic_vector (7 DOWNTO 1) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_0_EXMPLR904: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image1_1_7_EXMPLR859, o_image1_1_6_EXMPLR860, 
      o_image1_1_5_EXMPLR861, o_image1_1_4_EXMPLR862, o_image1_1_3_EXMPLR863, 
      o_image1_1_2_EXMPLR864, o_image1_1_1_EXMPLR865, o_image1_1_dup0_0: 
   std_logic ;
   
   signal o_image1_2_EXMPLR905: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_0_EXMPLR906: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_1_EXMPLR907: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_image2_2_EXMPLR908: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_q_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx8852z1, not_first_bubble, not_rtlc2_X_0_n244, nx47386z2, 
      nx15763z2, nx17757z1, nx60567z2, nx8852z2, nx33254z1, nx57224z1, 
      nx39109z5, nx40106z1, nx15763z3, nx8852z3, nx60567z1, b_0, b_1, 
      b_0_dup_353, b_1_dup_352, nx47386z1, nx5021z1, nx4024z1, nx3027z1, 
      nx2030z1, nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, nx56377z1, 
      nx57374z1, nx58371z1, nx59368z1, nx60365z1, nx61362z1, nx62359z1, 
      nx39109z2, nx8852z4, nx8852z6, nx8852z7, nx60567z3, nx60567z4, 
      nx60567z5, nx62359z2, nx61362z2, nx60365z2, nx59368z2, nx58371z2, 
      nx57374z2, nx56377z2, nx55380z2, nx63578z2, nx64575z2, nx36z2, 
      nx1033z2, nx2030z2, nx3027z2, nx4024z2, nx5021z2, nx60567z6, nx39109z3, 
      nx8852z5, nx39109z4, nx39109z1, nx15763z1: std_logic ;
   
   signal DANGLING : std_logic_vector (40 downto 0 );

begin
   o_valid <= o_valid_EXMPLR817 ;
   o_mode(1) <= p_nrst_int_dup_22 ;
   o_image1_0(7) <= o_image1_0_EXMPLR904(7) ;
   o_image1_0(6) <= o_image1_0_EXMPLR904(6) ;
   o_image1_0(5) <= o_image1_0_EXMPLR904(5) ;
   o_image1_0(4) <= o_image1_0_EXMPLR904(4) ;
   o_image1_0(3) <= o_image1_0_EXMPLR904(3) ;
   o_image1_0(2) <= o_image1_0_EXMPLR904(2) ;
   o_image1_0(1) <= o_image1_0_EXMPLR904(1) ;
   o_image1_0(0) <= o_image1_0_EXMPLR904(0) ;
   o_image1_2(7) <= o_image1_2_EXMPLR905(7) ;
   o_image1_2(6) <= o_image1_2_EXMPLR905(6) ;
   o_image1_2(5) <= o_image1_2_EXMPLR905(5) ;
   o_image1_2(4) <= o_image1_2_EXMPLR905(4) ;
   o_image1_2(3) <= o_image1_2_EXMPLR905(3) ;
   o_image1_2(2) <= o_image1_2_EXMPLR905(2) ;
   o_image1_2(1) <= o_image1_2_EXMPLR905(1) ;
   o_image1_2(0) <= o_image1_2_EXMPLR905(0) ;
   o_image2_0(7) <= o_image2_0_EXMPLR906(7) ;
   o_image2_0(6) <= o_image2_0_EXMPLR906(6) ;
   o_image2_0(5) <= o_image2_0_EXMPLR906(5) ;
   o_image2_0(4) <= o_image2_0_EXMPLR906(4) ;
   o_image2_0(3) <= o_image2_0_EXMPLR906(3) ;
   o_image2_0(2) <= o_image2_0_EXMPLR906(2) ;
   o_image2_0(1) <= o_image2_0_EXMPLR906(1) ;
   o_image2_0(0) <= o_image2_0_EXMPLR906(0) ;
   o_image2_1(7) <= o_image2_1_EXMPLR907(7) ;
   o_image2_1(6) <= o_image2_1_EXMPLR907(6) ;
   o_image2_1(5) <= o_image2_1_EXMPLR907(5) ;
   o_image2_1(4) <= o_image2_1_EXMPLR907(4) ;
   o_image2_1(3) <= o_image2_1_EXMPLR907(3) ;
   o_image2_1(2) <= o_image2_1_EXMPLR907(2) ;
   o_image2_1(1) <= o_image2_1_EXMPLR907(1) ;
   o_image2_1(0) <= o_image2_1_EXMPLR907(0) ;
   o_image2_2(7) <= o_image2_2_EXMPLR908(7) ;
   o_image2_2(6) <= o_image2_2_EXMPLR908(6) ;
   o_image2_2(5) <= o_image2_2_EXMPLR908(5) ;
   o_image2_2(4) <= o_image2_2_EXMPLR908(4) ;
   o_image2_2(3) <= o_image2_2_EXMPLR908(3) ;
   o_image2_2(2) <= o_image2_2_EXMPLR908(2) ;
   o_image2_2(1) <= o_image2_2_EXMPLR908(1) ;
   o_image2_2(0) <= o_image2_2_EXMPLR908(0) ;
   modgen_counter_row : modgen_counter_8_0 port map ( clock=>i_clock, q(7)=>
      row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), q(2)=>
      row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>
      DANGLING(4), data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>
      DANGLING(7), data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>
      DANGLING(10), aset=>DANGLING(11), sclear=>nx8852z1, updn=>DANGLING(12), 
      cnt_en=>not_rtlc2_X_0_n244, p_i_reset=>DANGLING(13), p_rtlc5n55=>
      nx8852z2, p_nrst_int_dup_22=>p_nrst_int_dup_22);
   modgen_counter_column : modgen_counter_8_1 port map ( clock=>i_clock, 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>
      o_column_0_EXMPLR818, clk_en=>nx47386z1, aclear=>DANGLING(14), sload=>
      DANGLING(15), data(7)=>DANGLING(16), data(6)=>DANGLING(17), data(5)=>
      DANGLING(18), data(4)=>DANGLING(19), data(3)=>DANGLING(20), data(2)=>
      DANGLING(21), data(1)=>DANGLING(22), data(0)=>DANGLING(23), aset=>
      DANGLING(24), sclear=>nx47386z2, updn=>DANGLING(25), cnt_en=>
      first_bubble);
   u_mem1_mem : ram_dq_8_0 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_0(7), 
      rd_data1(6)=>mem_q_0(6), rd_data1(5)=>mem_q_0(5), rd_data1(4)=>
      mem_q_0(4), rd_data1(3)=>mem_q_0(3), rd_data1(2)=>mem_q_0(2), 
      rd_data1(1)=>mem_q_0(1), rd_data1(0)=>mem_q_0(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR818, wr_clk1=>i_clock, rd_clk1=>DANGLING(26
      ), wr_ena1=>mem_wrn(0), rd_ena1=>DANGLING(27), ena1=>DANGLING(28), 
      rst1=>DANGLING(29), regce1=>DANGLING(30));
   u_mem2_mem : ram_dq_8_1 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_1(7), 
      rd_data1(6)=>mem_q_1(6), rd_data1(5)=>mem_q_1(5), rd_data1(4)=>
      mem_q_1(4), rd_data1(3)=>mem_q_1(3), rd_data1(2)=>mem_q_1(2), 
      rd_data1(1)=>mem_q_1(1), rd_data1(0)=>mem_q_1(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR818, wr_clk1=>i_clock, rd_clk1=>DANGLING(31
      ), wr_ena1=>mem_wrn(1), rd_ena1=>DANGLING(32), ena1=>DANGLING(33), 
      rst1=>DANGLING(34), regce1=>DANGLING(35));
   u_mem3_mem : ram_dq_8_2 port map ( wr_data1(7)=>mem_data(7), wr_data1(6)
      =>mem_data(6), wr_data1(5)=>mem_data(5), wr_data1(4)=>mem_data(4), 
      wr_data1(3)=>mem_data(3), wr_data1(2)=>mem_data(2), wr_data1(1)=>
      mem_data(1), wr_data1(0)=>mem_data(0), rd_data1(7)=>mem_q_2(7), 
      rd_data1(6)=>mem_q_2(6), rd_data1(5)=>mem_q_2(5), rd_data1(4)=>
      mem_q_2(4), rd_data1(3)=>mem_q_2(3), rd_data1(2)=>mem_q_2(2), 
      rd_data1(1)=>mem_q_2(1), rd_data1(0)=>mem_q_2(0), addr1(7)=>column(7), 
      addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>column(4), 
      addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>column(1), 
      addr1(0)=>o_column_0_EXMPLR818, wr_clk1=>i_clock, rd_clk1=>DANGLING(36
      ), wr_ena1=>mem_wrn(2), rd_ena1=>DANGLING(37), ena1=>DANGLING(38), 
      rst1=>DANGLING(39), regce1=>DANGLING(40));
   not_first_bubble <= NOT first_bubble;
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_EXMPLR817, 
      datain=>nx60567z1, clk=>i_clock, sclr=>not_first_bubble);
   reg_o_row_7 : cycloneii_lcell_ff port map ( regout=>o_row(7), datain=>
      row(7), clk=>i_clock);
   reg_o_row_6 : cycloneii_lcell_ff port map ( regout=>o_row(6), datain=>
      row(6), clk=>i_clock);
   reg_o_row_5 : cycloneii_lcell_ff port map ( regout=>o_row(5), datain=>
      row(5), clk=>i_clock);
   reg_o_row_4 : cycloneii_lcell_ff port map ( regout=>o_row(4), datain=>
      row(4), clk=>i_clock);
   reg_o_row_3 : cycloneii_lcell_ff port map ( regout=>o_row(3), datain=>
      row(3), clk=>i_clock);
   reg_o_row_2 : cycloneii_lcell_ff port map ( regout=>o_row(2), datain=>
      row(2), clk=>i_clock);
   reg_o_row_1 : cycloneii_lcell_ff port map ( regout=>o_row(1), datain=>
      row(1), clk=>i_clock);
   reg_o_row_0 : cycloneii_lcell_ff port map ( regout=>o_row(0), datain=>
      row(0), clk=>i_clock);
   reg_mem_wrn_current_2 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(2), datain=>mem_wrn_current(1), clk=>i_clock, ena=>
      nx39109z2, sclr=>nx40106z1);
   reg_mem_wrn_current_1 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(1), datain=>mem_wrn_current(0), clk=>i_clock, ena=>
      nx39109z2, sclr=>nx40106z1);
   nx39109z1 <= '1';
   reg_mem_wrn_current_0 : cycloneii_lcell_ff port map ( regout=>
      mem_wrn_current(0), datain=>mem_wrn_current(2), sdata=>nx39109z1, clk
      =>i_clock, ena=>nx39109z2, sclr=>nx8852z1, sload=>nx39109z5);
   reg_mem_wrn_2 : cycloneii_lcell_ff port map ( regout=>mem_wrn(2), datain
      =>mem_wrn_current(2), clk=>i_clock, sclr=>nx17757z1);
   reg_mem_wrn_1 : cycloneii_lcell_ff port map ( regout=>mem_wrn(1), datain
      =>mem_wrn_current(1), clk=>i_clock, sclr=>nx17757z1);
   nx15763z1 <= '1';
   reg_mem_wrn_0 : cycloneii_lcell_ff port map ( regout=>mem_wrn(0), datain
      =>mem_wrn_current(0), sdata=>nx15763z1, clk=>i_clock, sclr=>nx47386z1, 
      sload=>nx15763z2);
   reg_mem_data_7 : cycloneii_lcell_ff port map ( regout=>mem_data(7), 
      datain=>i_pixel(7), clk=>i_clock);
   reg_mem_data_6 : cycloneii_lcell_ff port map ( regout=>mem_data(6), 
      datain=>i_pixel(6), clk=>i_clock);
   reg_mem_data_5 : cycloneii_lcell_ff port map ( regout=>mem_data(5), 
      datain=>i_pixel(5), clk=>i_clock);
   reg_mem_data_4 : cycloneii_lcell_ff port map ( regout=>mem_data(4), 
      datain=>i_pixel(4), clk=>i_clock);
   reg_mem_data_3 : cycloneii_lcell_ff port map ( regout=>mem_data(3), 
      datain=>i_pixel(3), clk=>i_clock);
   reg_mem_data_2 : cycloneii_lcell_ff port map ( regout=>mem_data(2), 
      datain=>i_pixel(2), clk=>i_clock);
   reg_mem_data_1 : cycloneii_lcell_ff port map ( regout=>mem_data(1), 
      datain=>i_pixel(1), clk=>i_clock);
   reg_mem_data_0 : cycloneii_lcell_ff port map ( regout=>mem_data(0), 
      datain=>i_pixel(0), clk=>i_clock);
   reg_first_bubble : cycloneii_lcell_ff port map ( regout=>first_bubble, 
      datain=>i_valid, clk=>i_clock);
   reg_busySignalDelayed : cycloneii_lcell_ff port map ( regout=>
      busySignalDelayed, datain=>busySignal, clk=>i_clock);
   reg_busySignal : cycloneii_lcell_ff port map ( regout=>busySignal, datain
      =>nx33254z1, clk=>i_clock, sclr=>nx8852z2);
   reg_buffer2_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(7), datain=>mem_q_2(7), sdata=>mem_data(7), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(6), datain=>mem_q_2(6), sdata=>mem_data(6), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(5), datain=>mem_q_2(5), sdata=>mem_data(5), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(4), datain=>mem_q_2(4), sdata=>mem_data(4), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(3), datain=>mem_q_2(3), sdata=>mem_data(3), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(2), datain=>mem_q_2(2), sdata=>mem_data(2), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(1), datain=>mem_q_2(1), sdata=>mem_data(1), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_2_EXMPLR908(0), datain=>mem_q_2(0), sdata=>mem_data(0), clk=>
      i_clock, ena=>first_bubble, sload=>nx57224z1);
   reg_buffer2_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(7), datain=>nx62359z1, sdata=>mem_q_1(7), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(6), datain=>nx61362z1, sdata=>mem_q_1(6), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(5), datain=>nx60365z1, sdata=>mem_q_1(5), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(4), datain=>nx59368z1, sdata=>mem_q_1(4), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(3), datain=>nx58371z1, sdata=>mem_q_1(3), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(2), datain=>nx57374z1, sdata=>mem_q_1(2), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(1), datain=>nx56377z1, sdata=>mem_q_1(1), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_1_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_1_EXMPLR907(0), datain=>nx55380z1, sdata=>mem_q_1(0), clk=>
      i_clock, ena=>first_bubble, sload=>b_1_dup_352);
   reg_buffer2_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(7), datain=>nx63578z1, sdata=>mem_q_0(7), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(6), datain=>nx64575z1, sdata=>mem_q_0(6), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(5), datain=>nx36z1, sdata=>mem_q_0(5), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(4), datain=>nx1033z1, sdata=>mem_q_0(4), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(3), datain=>nx2030z1, sdata=>mem_q_0(3), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(2), datain=>nx3027z1, sdata=>mem_q_0(2), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(1), datain=>nx4024z1, sdata=>mem_q_0(1), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer2_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image2_0_EXMPLR906(0), datain=>nx5021z1, sdata=>mem_q_0(0), clk=>
      i_clock, ena=>first_bubble, sload=>b_1);
   reg_buffer1_2_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(7), datain=>o_image2_2_EXMPLR908(7), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(6), datain=>o_image2_2_EXMPLR908(6), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(5), datain=>o_image2_2_EXMPLR908(5), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(4), datain=>o_image2_2_EXMPLR908(4), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(3), datain=>o_image2_2_EXMPLR908(3), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(2), datain=>o_image2_2_EXMPLR908(2), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(1), datain=>o_image2_2_EXMPLR908(1), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_2_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_2_EXMPLR905(0), datain=>o_image2_2_EXMPLR908(0), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_7_EXMPLR859, datain=>o_image2_1_EXMPLR907(7), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_6_EXMPLR860, datain=>o_image2_1_EXMPLR907(6), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_5_EXMPLR861, datain=>o_image2_1_EXMPLR907(5), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_4_EXMPLR862, datain=>o_image2_1_EXMPLR907(4), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_3_EXMPLR863, datain=>o_image2_1_EXMPLR907(3), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_2_EXMPLR864, datain=>o_image2_1_EXMPLR907(2), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_1_1_EXMPLR865, datain=>o_image2_1_EXMPLR907(1), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_1_0 : cycloneii_lcell_ff port map ( regout=>o_image1_1_dup0_0, 
      datain=>o_image2_1_EXMPLR907(0), clk=>i_clock, ena=>first_bubble);
   reg_buffer1_0_7 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(7), datain=>o_image2_0_EXMPLR906(7), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_6 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(6), datain=>o_image2_0_EXMPLR906(6), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_5 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(5), datain=>o_image2_0_EXMPLR906(5), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_4 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(4), datain=>o_image2_0_EXMPLR906(4), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_3 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(3), datain=>o_image2_0_EXMPLR906(3), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_2 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(2), datain=>o_image2_0_EXMPLR906(2), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_1 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(1), datain=>o_image2_0_EXMPLR906(1), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer1_0_0 : cycloneii_lcell_ff port map ( regout=>
      o_image1_0_EXMPLR904(0), datain=>o_image2_0_EXMPLR906(0), clk=>i_clock, 
      ena=>first_bubble);
   reg_buffer0_2_7 : cycloneii_lcell_ff port map ( regout=>o_image0_2(7), 
      datain=>o_image1_2_EXMPLR905(7), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_6 : cycloneii_lcell_ff port map ( regout=>o_image0_2(6), 
      datain=>o_image1_2_EXMPLR905(6), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_5 : cycloneii_lcell_ff port map ( regout=>o_image0_2(5), 
      datain=>o_image1_2_EXMPLR905(5), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_4 : cycloneii_lcell_ff port map ( regout=>o_image0_2(4), 
      datain=>o_image1_2_EXMPLR905(4), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_3 : cycloneii_lcell_ff port map ( regout=>o_image0_2(3), 
      datain=>o_image1_2_EXMPLR905(3), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_2 : cycloneii_lcell_ff port map ( regout=>o_image0_2(2), 
      datain=>o_image1_2_EXMPLR905(2), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_1 : cycloneii_lcell_ff port map ( regout=>o_image0_2(1), 
      datain=>o_image1_2_EXMPLR905(1), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_2_0 : cycloneii_lcell_ff port map ( regout=>o_image0_2(0), 
      datain=>o_image1_2_EXMPLR905(0), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_7 : cycloneii_lcell_ff port map ( regout=>o_image0_1(7), 
      datain=>o_image1_1_7_EXMPLR859, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_6 : cycloneii_lcell_ff port map ( regout=>o_image0_1(6), 
      datain=>o_image1_1_6_EXMPLR860, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_5 : cycloneii_lcell_ff port map ( regout=>o_image0_1(5), 
      datain=>o_image1_1_5_EXMPLR861, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_4 : cycloneii_lcell_ff port map ( regout=>o_image0_1(4), 
      datain=>o_image1_1_4_EXMPLR862, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_3 : cycloneii_lcell_ff port map ( regout=>o_image0_1(3), 
      datain=>o_image1_1_3_EXMPLR863, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_2 : cycloneii_lcell_ff port map ( regout=>o_image0_1(2), 
      datain=>o_image1_1_2_EXMPLR864, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_1 : cycloneii_lcell_ff port map ( regout=>o_image0_1(1), 
      datain=>o_image1_1_1_EXMPLR865, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_1_0 : cycloneii_lcell_ff port map ( regout=>o_image0_1(0), 
      datain=>o_image1_1_dup0_0, clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_7 : cycloneii_lcell_ff port map ( regout=>o_image0_0(7), 
      datain=>o_image1_0_EXMPLR904(7), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_6 : cycloneii_lcell_ff port map ( regout=>o_image0_0(6), 
      datain=>o_image1_0_EXMPLR904(6), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_5 : cycloneii_lcell_ff port map ( regout=>o_image0_0(5), 
      datain=>o_image1_0_EXMPLR904(5), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_4 : cycloneii_lcell_ff port map ( regout=>o_image0_0(4), 
      datain=>o_image1_0_EXMPLR904(4), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_3 : cycloneii_lcell_ff port map ( regout=>o_image0_0(3), 
      datain=>o_image1_0_EXMPLR904(3), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_2 : cycloneii_lcell_ff port map ( regout=>o_image0_0(2), 
      datain=>o_image1_0_EXMPLR904(2), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_1 : cycloneii_lcell_ff port map ( regout=>o_image0_0(1), 
      datain=>o_image1_0_EXMPLR904(1), clk=>i_clock, ena=>first_bubble);
   reg_buffer0_0_0 : cycloneii_lcell_ff port map ( regout=>o_image0_0(0), 
      datain=>o_image1_0_EXMPLR904(0), clk=>i_clock, ena=>first_bubble);
   ix39109z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5557") 
       port map ( combout=>nx39109z4, dataa=>i_valid, datab=>
      mem_wrn_current(2), datac=>mem_wrn_current(1), datad=>
      mem_wrn_current(0));
   ix8852z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx8852z5, dataa=>column(4), datab=>column(3));
   ix39109z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>nx39109z3, dataa=>i_valid, datab=>first_bubble, 
      datac=>nx8852z3);
   ix60567z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z6, dataa=>column(3), datab=>column(2), 
      datac=>column(1));
   ix5021z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx5021z2, dataa=>mem_data(0), datab=>nx60567z2, 
      datac=>mem_q_1(0));
   ix4024z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx4024z2, dataa=>mem_data(1), datab=>nx60567z2, 
      datac=>mem_q_1(1));
   ix3027z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx3027z2, dataa=>mem_data(2), datab=>nx60567z2, 
      datac=>mem_q_1(2));
   ix2030z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx2030z2, dataa=>mem_data(3), datab=>nx60567z2, 
      datac=>mem_q_1(3));
   ix1033z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx1033z2, dataa=>mem_data(4), datab=>nx60567z2, 
      datac=>mem_q_1(4));
   ix36z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx36z2, dataa=>mem_data(5), datab=>nx60567z2, 
      datac=>mem_q_1(5));
   ix64575z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx64575z2, dataa=>mem_data(6), datab=>nx60567z2, 
      datac=>mem_q_1(6));
   ix63578z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx63578z2, dataa=>mem_data(7), datab=>nx60567z2, 
      datac=>mem_q_1(7));
   ix55380z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx55380z2, dataa=>mem_data(0), datab=>nx60567z2, 
      datac=>mem_q_0(0));
   ix56377z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx56377z2, dataa=>mem_data(1), datab=>nx60567z2, 
      datac=>mem_q_0(1));
   ix57374z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx57374z2, dataa=>mem_data(2), datab=>nx60567z2, 
      datac=>mem_q_0(2));
   ix58371z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx58371z2, dataa=>mem_data(3), datab=>nx60567z2, 
      datac=>mem_q_0(3));
   ix59368z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx59368z2, dataa=>mem_data(4), datab=>nx60567z2, 
      datac=>mem_q_0(4));
   ix60365z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx60365z2, dataa=>mem_data(5), datab=>nx60567z2, 
      datac=>mem_q_0(5));
   ix61362z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx61362z2, dataa=>mem_data(6), datab=>nx60567z2, 
      datac=>mem_q_0(6));
   ix62359z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx62359z2, dataa=>mem_data(7), datab=>nx60567z2, 
      datac=>mem_q_0(7));
   ix60567z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx60567z5, dataa=>column(6), datab=>column(5), 
      datac=>column(4), datad=>nx60567z2);
   ix60567z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx60567z4, dataa=>o_valid_EXMPLR817, datab=>
      column(7), datac=>nx60567z2);
   ix60567z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z3, dataa=>row(4), datab=>row(3), datac=>
      row(2), datad=>row(1));
   ix8852z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z7, dataa=>row(3), datab=>row(2), datac=>
      row(1), datad=>row(0));
   ix8852z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z6, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>row(4));
   ix8852z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z4, dataa=>o_column_0_EXMPLR818, datab=>
      column(7), datac=>column(6), datad=>column(5));
   ix62359z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx62359z1, dataa=>mem_q_2(7), datab=>b_0_dup_353, 
      datac=>nx62359z2);
   ix61362z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx61362z1, dataa=>mem_q_2(6), datab=>b_0_dup_353, 
      datac=>nx61362z2);
   ix60365z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx60365z1, dataa=>mem_q_2(5), datab=>b_0_dup_353, 
      datac=>nx60365z2);
   ix59368z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx59368z1, dataa=>mem_q_2(4), datab=>b_0_dup_353, 
      datac=>nx59368z2);
   ix58371z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx58371z1, dataa=>mem_q_2(3), datab=>b_0_dup_353, 
      datac=>nx58371z2);
   ix57374z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx57374z1, dataa=>mem_q_2(2), datab=>b_0_dup_353, 
      datac=>nx57374z2);
   ix56377z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx56377z1, dataa=>mem_q_2(1), datab=>b_0_dup_353, 
      datac=>nx56377z2);
   ix55380z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx55380z1, dataa=>mem_q_2(0), datab=>b_0_dup_353, 
      datac=>nx55380z2);
   ix63578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx63578z1, dataa=>mem_q_2(7), datab=>b_0, datac=>
      nx63578z2);
   ix64575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx64575z1, dataa=>mem_q_2(6), datab=>b_0, datac=>
      nx64575z2);
   ix36z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx36z1, dataa=>mem_q_2(5), datab=>b_0, datac=>
      nx36z2);
   ix1033z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx1033z1, dataa=>mem_q_2(4), datab=>b_0, datac=>
      nx1033z2);
   ix2030z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx2030z1, dataa=>mem_q_2(3), datab=>b_0, datac=>
      nx2030z2);
   ix3027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx3027z1, dataa=>mem_q_2(2), datab=>b_0, datac=>
      nx3027z2);
   ix4024z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx4024z1, dataa=>mem_q_2(1), datab=>b_0, datac=>
      nx4024z2);
   ix5021z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>nx5021z1, dataa=>mem_q_2(0), datab=>b_0, datac=>
      nx5021z2);
   ix62359z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1515") 
       port map ( combout=>b_1_dup_352, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix62359z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a2a") 
       port map ( combout=>b_0_dup_353, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1313") 
       port map ( combout=>b_1, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix63578z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4c4c") 
       port map ( combout=>b_0, dataa=>mem_wrn_current(1), datab=>
      mem_wrn_current(0), datac=>nx60567z2);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefc") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>nx60567z4, 
      datac=>nx60567z5, datad=>nx60567z6);
   ix8852z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z3, dataa=>column(2), datab=>column(1), 
      datac=>nx8852z4, datad=>nx8852z5);
   ix15763z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx15763z3, dataa=>mem_wrn_current(2), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(0));
   ix40106z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"cecc") 
       port map ( combout=>nx40106z1, dataa=>i_valid, datab=>nx8852z1, datac
      =>nx39109z3, datad=>nx39109z4);
   ix57224z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx57224z1, dataa=>mem_wrn_current(2), datab=>
      nx60567z2);
   ix33254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx33254z1, dataa=>i_valid, datab=>busySignal);
   ix8852z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx8852z2, dataa=>first_bubble, datab=>nx8852z3, 
      datac=>nx8852z6, datad=>nx8852z7);
   ix60567z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z2, dataa=>row(7), datab=>row(6), datac=>
      row(5), datad=>nx60567z3);
   ix8852z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>not_rtlc2_X_0_n244, dataa=>i_valid, datab=>
      first_bubble, datac=>nx8852z3);
   ix39109z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"baff") 
       port map ( combout=>nx39109z2, dataa=>nx8852z2, datab=>nx39109z3, 
      datac=>nx39109z4, datad=>p_nrst_int_dup_22);
   ix47386z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bfbf") 
       port map ( combout=>nx47386z1, dataa=>nx8852z2, datab=>i_valid, datac
      =>p_nrst_int_dup_22);
   ix17757z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx17757z1, dataa=>nx8852z2, datab=>nx39109z4, 
      datac=>p_nrst_int_dup_22);
   ix15763z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx15763z2, dataa=>nx15763z3, datab=>nx8852z2, 
      datac=>i_valid, datad=>p_nrst_int_dup_22);
   ix8852z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx8852z1, dataa=>nx8852z2, datab=>
      p_nrst_int_dup_22);
   ix15976z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>o_mode(0), dataa=>busySignalDelayed, datab=>
      busySignal, datac=>i_valid, datad=>p_nrst_int_dup_22);
   ix39109z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx39109z5, dataa=>mem_wrn_current(0), datab=>
      mem_wrn_current(1), datac=>mem_wrn_current(2), datad=>i_valid);
   ix47386z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaff") 
       port map ( combout=>nx47386z2, dataa=>nx8852z2, datab=>first_bubble, 
      datac=>nx8852z3, datad=>p_nrst_int_dup_22);
end main_unfold_1492 ;

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
      nx23445z2, nx_sub_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx23445z2, dataa=>a(11), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z3);
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
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_12_0_vcc_net, cin=>nx23445z2
   );
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

entity gt_14_0 is 
   port (
      a : IN std_logic_vector (13 DOWNTO 0) ;
      b : IN std_logic_vector (13 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_14_0 ;

architecture IMPLEMENTATION of gt_14_0 is 
   signal nx100z40, nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, 
      nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_14_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(13), datab=>a(13), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z4);
   nx_gt_14_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(12), datab=>a(12), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z34, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z37);
   ix100z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z37, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_14_0_vcc_net, cin=>nx100z40);
   ix100z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z40, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_14_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_13_0 is 
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_13_0 ;

architecture IMPLEMENTATION of gt_13_0 is 
   signal nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, 
      nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_13_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b200",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(12), datab=>a(12), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z4);
   nx_gt_13_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(11), datab=>a(11), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(10), datab=>a(10), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z28, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z31);
   ix100z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z31, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z34);
   ix100z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z34, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_13_0_vcc_net, cin=>nx100z37);
   ix100z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z37, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_13_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn826 : IN std_logic ;
      p_rtlcn866 : IN std_logic) ;
end add_12_0 ;

architecture IMPLEMENTATION of add_12_0 is 
   signal nx63795z32, nx63795z29, nx63795z26, nx63795z23, nx63795z20, 
      nx63795z17, nx63795z14, nx63795z11, nx63795z8, nx63795z6, nx63795z4, 
      nx_add_12_0_vcc_net: std_logic ;

begin
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z4, dataa=>b(10), datab=>
      p_rtlcn826, datad=>nx_add_12_0_vcc_net, cin=>nx63795z6);
   nx_add_12_0_vcc_net <= '1';
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z8, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z11);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z11, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z14);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z14, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z17);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z17, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z20);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z20, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z23);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z23, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z26);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z26, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z29);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z29, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z32);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx63795z32, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_12_0_vcc_net);
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>p_rtlcn826, datab=>p_rtlcn866, 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z4);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>
      p_rtlcn826, datad=>nx_add_12_0_vcc_net, cin=>nx63795z8);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_12_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_rtlcn907 : IN std_logic ;
      p_rtlcn947 : IN std_logic) ;
end add_12_1 ;

architecture IMPLEMENTATION of add_12_1 is 
   signal nx63795z32, nx63795z29, nx63795z26, nx63795z23, nx63795z20, 
      nx63795z17, nx63795z14, nx63795z11, nx63795z8, nx63795z6, nx63795z4, 
      nx_add_12_1_vcc_net: std_logic ;

begin
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z4, dataa=>b(10), datab=>
      p_rtlcn907, datad=>nx_add_12_1_vcc_net, cin=>nx63795z6);
   nx_add_12_1_vcc_net <= '1';
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z8, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z11);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z11, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z14);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z14, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z17);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z17, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z20);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z20, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z23);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z23, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z26);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z26, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z29);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z29, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z32);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx63795z32, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_12_1_vcc_net);
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>p_rtlcn907, datab=>p_rtlcn947, 
      datad=>nx_add_12_1_vcc_net, cin=>nx63795z4);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>b(9), datab=>
      p_rtlcn907, datad=>nx_add_12_1_vcc_net, cin=>nx63795z8);
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
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx46946z29, 
      nx_sub_10_2_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>a(9), datad=>
      nx_sub_10_2_vcc_net, cin=>nx46946z3);
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
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_2_vcc_net, cin=>nx23445z2
   );
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
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx46946z29, 
      nx_sub_10_3_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>a(9), datad=>
      nx_sub_10_3_vcc_net, cin=>nx46946z3);
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
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_10_3_vcc_net, cin=>nx23445z2
   );
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
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_p5m_1 : OUT std_logic ;
      p_p5m_0 : OUT std_logic ;
      p_nrst_int_dup_22 : IN std_logic) ;
end flow ;

architecture main of flow is 
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component gt_14_0
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_13_0
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn826 : IN std_logic ;
         p_rtlcn866 : IN std_logic) ;
   end component ;
   component add_12_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_rtlcn907 : IN std_logic ;
         p_rtlcn947 : IN std_logic) ;
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
   signal o_edge_EXMPLR987: std_logic_vector (2 DOWNTO 2) ;
   
   signal p11: std_logic_vector (9 DOWNTO 0) ;
   
   signal p12: std_logic_vector (9 DOWNTO 0) ;
   
   signal p13: std_logic_vector (10 DOWNTO 1) ;
   
   signal p21: std_logic_vector (12 DOWNTO 0) ;
   
   signal p22: std_logic_vector (12 DOWNTO 0) ;
   
   signal p23: std_logic_vector (10 DOWNTO 0) ;
   
   signal p20: std_logic ;
   
   signal p31: std_logic_vector (12 DOWNTO 0) ;
   
   signal p32: std_logic_vector (10 DOWNTO 0) ;
   
   signal p35, p30, p41, p45, p40: std_logic ;
   
   signal p43: std_logic_vector (13 DOWNTO 0) ;
   
   signal p4s: std_logic_vector (13 DOWNTO 0) ;
   
   signal max_fwd, prev_edge: std_logic ;
   
   signal prev_max: std_logic_vector (13 DOWNTO 0) ;
   
   signal max_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal state: std_logic_vector (3 DOWNTO 0) ;
   
   signal p11_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p12_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal p13_0n0s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx26026z3, nx47310z3, p21_4n0r3_9, p21_4n0r3_8, p21_4n0r3_7, 
      p21_4n0r3_6, p21_4n0r3_5, p21_4n0r3_4, p21_4n0r3_3, p21_4n0r3_2, 
      p21_4n0r3_1, p21_4n0r3_0: std_logic ;
   
   signal p21_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p21_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal p22_4n0r3_9, p22_4n0r3_8, p22_4n0r3_7, p22_4n0r3_6, p22_4n0r3_5, 
      p22_4n0r3_4, p22_4n0r3_3, p22_4n0r3_2, p22_4n0r3_1, p22_4n0r3_0: 
   std_logic ;
   
   signal p22_4n0r4: std_logic_vector (11 DOWNTO 2) ;
   
   signal p22_4n0r2: std_logic_vector (12 DOWNTO 1) ;
   
   signal nx45188z1, nx10173z1, nx10173z2, nx6397z1, nx6397z2, nx15811z1, 
      nx20946z1, nx26081z1, nx16808z1, nx21943z1, nx27078z1, nx17805z1, 
      nx22940z1, nx28075z1, nx18802z1, nx23937z1, nx29072z1, nx19799z1, 
      nx24934z1, nx30069z1, nx20796z1, nx25931z1, nx31066z1, nx21793z1, 
      nx26928z1, nx32063z1, nx22790z1, nx27925z1, nx33060z1, nx41013z1, 
      nx46148z1, nx14253z1, nx42010z1, nx47145z1, nx13256z1, nx47310z2, 
      nx26026z1, nx5049z1, nx30752z1, nx27830z1, nx25033z1, PWR, nx47310z5, 
      nx47310z1, nx29521z1, nx25836z1, nx26833z1, nx26833z2, nx26026z2, 
      nx25836z2, nx47310z6, nx47310z7, nx47310z8, nx47310z9, nx47310z10, 
      nx47310z11, nx47310z12, nx25836z3, nx26026z4, nx26833z3, nx47310z4, 
      nx28524z1, NOT_state_3: std_logic ;
   
   signal DANGLING : std_logic_vector (36 downto 0 );

begin
   o_edge <= o_edge_EXMPLR987(2) ;
   p4s_sub12_0 : sub_12_0 port map ( cin=>DANGLING(0), a(11)=>p31(11), a(10)
      =>p31(10), a(9)=>p31(9), a(8)=>p31(8), a(7)=>p31(7), a(6)=>p31(6), 
      a(5)=>p31(5), a(4)=>p31(4), a(3)=>p31(3), a(2)=>p31(2), a(1)=>p31(1), 
      a(0)=>p31(0), b(11)=>DANGLING(1), b(10)=>p32(10), b(9)=>p32(9), b(8)=>
      p32(8), b(7)=>p32(7), b(6)=>p32(6), b(5)=>p32(5), b(4)=>p32(4), b(3)=>
      p32(3), b(2)=>p32(2), b(1)=>p32(1), b(0)=>p32(0), d(11)=>p4s(11), 
      d(10)=>p4s(10), d(9)=>p4s(9), d(8)=>p4s(8), d(7)=>p4s(7), d(6)=>p4s(6), 
      d(5)=>p4s(5), d(4)=>p4s(4), d(3)=>p4s(3), d(2)=>p4s(2), d(1)=>p4s(1), 
      d(0)=>p4s(0), cout=>nx26026z3);
   ix47310z8933 : gt_14_0 port map ( a(13)=>p43(13), a(12)=>p43(12), a(11)=>
      p43(11), a(10)=>p43(10), a(9)=>p43(9), a(8)=>p43(8), a(7)=>p43(7), 
      a(6)=>p43(6), a(5)=>p43(5), a(4)=>p43(4), a(3)=>p43(3), a(2)=>p43(2), 
      a(1)=>p43(1), a(0)=>p43(0), b(13)=>prev_max(13), b(12)=>prev_max(12), 
      b(11)=>prev_max(11), b(10)=>prev_max(10), b(9)=>prev_max(9), b(8)=>
      prev_max(8), b(7)=>prev_max(7), b(6)=>prev_max(6), b(5)=>prev_max(5), 
      b(4)=>prev_max(4), b(3)=>prev_max(3), b(2)=>prev_max(2), b(1)=>
      prev_max(1), b(0)=>prev_max(0), d=>nx47310z3);
   ix45188z19900 : gt_13_0 port map ( a(12)=>p22(12), a(11)=>p22(11), a(10)
      =>p22(10), a(9)=>p22(9), a(8)=>p22(8), a(7)=>p22(7), a(6)=>p22(6), 
      a(5)=>p22(5), a(4)=>p22(4), a(3)=>p22(3), a(2)=>p22(2), a(1)=>p22(1), 
      a(0)=>p22(0), b(12)=>p21(12), b(11)=>p21(11), b(10)=>p21(10), b(9)=>
      p21(9), b(8)=>p21(8), b(7)=>p21(7), b(6)=>p21(6), b(5)=>p21(5), b(4)=>
      p21(4), b(3)=>p21(3), b(2)=>p21(2), b(1)=>p21(1), b(0)=>p21(0), d=>
      nx45188z1);
   p21_add12_4i1 : add_12_0 port map ( cin=>DANGLING(2), a(11)=>DANGLING(3), 
      a(10)=>DANGLING(4), a(9)=>DANGLING(5), a(8)=>p21_4n0r3_9, a(7)=>
      p21_4n0r3_8, a(6)=>p21_4n0r3_7, a(5)=>p21_4n0r3_6, a(4)=>p21_4n0r3_5, 
      a(3)=>p21_4n0r3_4, a(2)=>p21_4n0r3_3, a(1)=>p21_4n0r3_2, a(0)=>
      p21_4n0r3_1, b(11)=>DANGLING(6), b(10)=>p21_4n0r4(11), b(9)=>
      p21_4n0r4(10), b(8)=>p21_4n0r4(9), b(7)=>p21_4n0r4(8), b(6)=>
      p21_4n0r4(7), b(5)=>p21_4n0r4(6), b(4)=>p21_4n0r4(5), b(3)=>
      p21_4n0r4(4), b(2)=>p21_4n0r4(3), b(1)=>p21_4n0r4(2), b(0)=>p12(0), 
      d(11)=>p21_4n0r2(12), d(10)=>p21_4n0r2(11), d(9)=>p21_4n0r2(10), d(8)
      =>p21_4n0r2(9), d(7)=>p21_4n0r2(8), d(6)=>p21_4n0r2(7), d(5)=>
      p21_4n0r2(6), d(4)=>p21_4n0r2(5), d(3)=>p21_4n0r2(4), d(2)=>
      p21_4n0r2(3), d(1)=>p21_4n0r2(2), d(0)=>p21_4n0r2(1), cout=>DANGLING(7
      ), p_rtlcn826=>nx10173z1, p_rtlcn866=>nx10173z2);
   p22_add12_4i2 : add_12_1 port map ( cin=>DANGLING(8), a(11)=>DANGLING(9), 
      a(10)=>DANGLING(10), a(9)=>DANGLING(11), a(8)=>p22_4n0r3_9, a(7)=>
      p22_4n0r3_8, a(6)=>p22_4n0r3_7, a(5)=>p22_4n0r3_6, a(4)=>p22_4n0r3_5, 
      a(3)=>p22_4n0r3_4, a(2)=>p22_4n0r3_3, a(1)=>p22_4n0r3_2, a(0)=>
      p22_4n0r3_1, b(11)=>DANGLING(12), b(10)=>p22_4n0r4(11), b(9)=>
      p22_4n0r4(10), b(8)=>p22_4n0r4(9), b(7)=>p22_4n0r4(8), b(6)=>
      p22_4n0r4(7), b(5)=>p22_4n0r4(6), b(4)=>p22_4n0r4(5), b(3)=>
      p22_4n0r4(4), b(2)=>p22_4n0r4(3), b(1)=>p22_4n0r4(2), b(0)=>p11(0), 
      d(11)=>p22_4n0r2(12), d(10)=>p22_4n0r2(11), d(9)=>p22_4n0r2(10), d(8)
      =>p22_4n0r2(9), d(7)=>p22_4n0r2(8), d(6)=>p22_4n0r2(7), d(5)=>
      p22_4n0r2(6), d(4)=>p22_4n0r2(5), d(3)=>p22_4n0r2(4), d(2)=>
      p22_4n0r2(3), d(1)=>p22_4n0r2(2), d(0)=>p22_4n0r2(1), cout=>DANGLING(
      13), p_rtlcn907=>nx6397z1, p_rtlcn947=>nx6397z2);
   p11_add8_0i1 : add_8_0 port map ( cin=>DANGLING(14), a(7)=>t1(7), a(6)=>
      t1(6), a(5)=>t1(5), a(4)=>t1(4), a(3)=>t1(3), a(2)=>t1(2), a(1)=>t1(1), 
      a(0)=>t1(0), b(7)=>t2(7), b(6)=>t2(6), b(5)=>t2(5), b(4)=>t2(4), b(3)
      =>t2(3), b(2)=>t2(2), b(1)=>t2(1), b(0)=>t2(0), d(7)=>p11_0n0s2(7), 
      d(6)=>p11_0n0s2(6), d(5)=>p11_0n0s2(5), d(4)=>p11_0n0s2(4), d(3)=>
      p11_0n0s2(3), d(2)=>p11_0n0s2(2), d(1)=>p11_0n0s2(1), d(0)=>
      p11_0n0s2(0), cout=>p11_0n0s2(8));
   p11_add9_1 : add_9_0 port map ( cin=>DANGLING(15), a(8)=>p11_0n0s2(8), 
      a(7)=>p11_0n0s2(7), a(6)=>p11_0n0s2(6), a(5)=>p11_0n0s2(5), a(4)=>
      p11_0n0s2(4), a(3)=>p11_0n0s2(3), a(2)=>p11_0n0s2(2), a(1)=>
      p11_0n0s2(1), a(0)=>p11_0n0s2(0), b(8)=>DANGLING(16), b(7)=>t3(7), 
      b(6)=>t3(6), b(5)=>t3(5), b(4)=>t3(4), b(3)=>t3(3), b(2)=>t3(2), b(1)
      =>t3(1), b(0)=>t3(0), d(8)=>p11(8), d(7)=>p11(7), d(6)=>p11(6), d(5)=>
      p11(5), d(4)=>p11(4), d(3)=>p11(3), d(2)=>p11(2), d(1)=>p11(1), d(0)=>
      p11(0), cout=>p11(9));
   p12_add8_0i2 : add_8_1 port map ( cin=>DANGLING(17), a(7)=>b1(7), a(6)=>
      b1(6), a(5)=>b1(5), a(4)=>b1(4), a(3)=>b1(3), a(2)=>b1(2), a(1)=>b1(1), 
      a(0)=>b1(0), b(7)=>b2(7), b(6)=>b2(6), b(5)=>b2(5), b(4)=>b2(4), b(3)
      =>b2(3), b(2)=>b2(2), b(1)=>b2(1), b(0)=>b2(0), d(7)=>p12_0n0s2(7), 
      d(6)=>p12_0n0s2(6), d(5)=>p12_0n0s2(5), d(4)=>p12_0n0s2(4), d(3)=>
      p12_0n0s2(3), d(2)=>p12_0n0s2(2), d(1)=>p12_0n0s2(1), d(0)=>
      p12_0n0s2(0), cout=>p12_0n0s2(8));
   p12_add9_2 : add_9_1 port map ( cin=>DANGLING(18), a(8)=>p12_0n0s2(8), 
      a(7)=>p12_0n0s2(7), a(6)=>p12_0n0s2(6), a(5)=>p12_0n0s2(5), a(4)=>
      p12_0n0s2(4), a(3)=>p12_0n0s2(3), a(2)=>p12_0n0s2(2), a(1)=>
      p12_0n0s2(1), a(0)=>p12_0n0s2(0), b(8)=>DANGLING(19), b(7)=>b3(7), 
      b(6)=>b3(6), b(5)=>b3(5), b(4)=>b3(4), b(3)=>b3(3), b(2)=>b3(2), b(1)
      =>b3(1), b(0)=>b3(0), d(8)=>p12(8), d(7)=>p12(7), d(6)=>p12(6), d(5)=>
      p12(5), d(4)=>p12(4), d(3)=>p12(3), d(2)=>p12(2), d(1)=>p12(1), d(0)=>
      p12(0), cout=>p12(9));
   p21_sub10_4i3 : sub_10_0 port map ( cin=>DANGLING(20), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>p12(9), b(8)
      =>p12(8), b(7)=>p12(7), b(6)=>p12(6), b(5)=>p12(5), b(4)=>p12(4), b(3)
      =>p12(3), b(2)=>p12(2), b(1)=>p12(1), b(0)=>p12(0), d(9)=>p21_4n0r3_9, 
      d(8)=>p21_4n0r3_8, d(7)=>p21_4n0r3_7, d(6)=>p21_4n0r3_6, d(5)=>
      p21_4n0r3_5, d(4)=>p21_4n0r3_4, d(3)=>p21_4n0r3_3, d(2)=>p21_4n0r3_2, 
      d(1)=>p21_4n0r3_1, d(0)=>p21_4n0r3_0, cout=>nx10173z1);
   p22_sub10_4i5 : sub_10_1 port map ( cin=>DANGLING(21), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>p11(9), b(8)
      =>p11(8), b(7)=>p11(7), b(6)=>p11(6), b(5)=>p11(5), b(4)=>p11(4), b(3)
      =>p11(3), b(2)=>p11(2), b(1)=>p11(1), b(0)=>p11(0), d(9)=>p22_4n0r3_9, 
      d(8)=>p22_4n0r3_8, d(7)=>p22_4n0r3_7, d(6)=>p22_4n0r3_6, d(5)=>
      p22_4n0r3_5, d(4)=>p22_4n0r3_4, d(3)=>p22_4n0r3_3, d(2)=>p22_4n0r3_2, 
      d(1)=>p22_4n0r3_1, d(0)=>p22_4n0r3_0, cout=>nx6397z1);
   p13_add8_0i3 : add_8_2 port map ( cin=>DANGLING(22), a(7)=>i1(7), a(6)=>
      i1(6), a(5)=>i1(5), a(4)=>i1(4), a(3)=>i1(3), a(2)=>i1(2), a(1)=>i1(1), 
      a(0)=>i1(0), b(7)=>i2(7), b(6)=>i2(6), b(5)=>i2(5), b(4)=>i2(4), b(3)
      =>i2(3), b(2)=>i2(2), b(1)=>i2(1), b(0)=>i2(0), d(7)=>p13_0n0s2(7), 
      d(6)=>p13_0n0s2(6), d(5)=>p13_0n0s2(5), d(4)=>p13_0n0s2(4), d(3)=>
      p13_0n0s2(3), d(2)=>p13_0n0s2(2), d(1)=>p13_0n0s2(1), d(0)=>
      p13_0n0s2(0), cout=>p13_0n0s2(8));
   p13_add9_3 : add_9_2 port map ( cin=>DANGLING(23), a(8)=>DANGLING(24), 
      a(7)=>p13_0n0s2(8), a(6)=>p13_0n0s2(7), a(5)=>p13_0n0s2(6), a(4)=>
      p13_0n0s2(5), a(3)=>p13_0n0s2(4), a(2)=>p13_0n0s2(3), a(1)=>
      p13_0n0s2(2), a(0)=>p13_0n0s2(1), b(8)=>DANGLING(25), b(7)=>DANGLING(
      26), b(6)=>DANGLING(27), b(5)=>DANGLING(28), b(4)=>DANGLING(29), b(3)
      =>DANGLING(30), b(2)=>DANGLING(31), b(1)=>DANGLING(32), b(0)=>
      p13_0n0s2(0), d(8)=>p13(9), d(7)=>p13(8), d(6)=>p13(7), d(5)=>p13(6), 
      d(4)=>p13(5), d(3)=>p13(4), d(2)=>p13(3), d(1)=>p13(2), d(0)=>p13(1), 
      cout=>p13(10));
   p21_sub11_4i4 : sub_10_2 port map ( cin=>DANGLING(33), a(9)=>p11(9), a(8)
      =>p11(8), a(7)=>p11(7), a(6)=>p11(6), a(5)=>p11(5), a(4)=>p11(4), a(3)
      =>p11(3), a(2)=>p11(2), a(1)=>p11(1), a(0)=>p11(0), b(9)=>DANGLING(34), 
      b(8)=>p12(9), b(7)=>p12(8), b(6)=>p12(7), b(5)=>p12(6), b(4)=>p12(5), 
      b(3)=>p12(4), b(2)=>p12(3), b(1)=>p12(2), b(0)=>p12(1), d(9)=>
      p21_4n0r4(11), d(8)=>p21_4n0r4(10), d(7)=>p21_4n0r4(9), d(6)=>
      p21_4n0r4(8), d(5)=>p21_4n0r4(7), d(4)=>p21_4n0r4(6), d(3)=>
      p21_4n0r4(5), d(2)=>p21_4n0r4(4), d(1)=>p21_4n0r4(3), d(0)=>
      p21_4n0r4(2), cout=>nx10173z2, p_p12_0=>p12(0));
   p22_sub11_4i6 : sub_10_3 port map ( cin=>DANGLING(35), a(9)=>p12(9), a(8)
      =>p12(8), a(7)=>p12(7), a(6)=>p12(6), a(5)=>p12(5), a(4)=>p12(4), a(3)
      =>p12(3), a(2)=>p12(2), a(1)=>p12(1), a(0)=>p12(0), b(9)=>DANGLING(36), 
      b(8)=>p11(9), b(7)=>p11(8), b(6)=>p11(7), b(5)=>p11(6), b(4)=>p11(5), 
      b(3)=>p11(4), b(2)=>p11(3), b(1)=>p11(2), b(0)=>p11(1), d(9)=>
      p22_4n0r4(11), d(8)=>p22_4n0r4(10), d(7)=>p22_4n0r4(9), d(6)=>
      p22_4n0r4(8), d(5)=>p22_4n0r4(7), d(4)=>p22_4n0r4(6), d(3)=>
      p22_4n0r4(5), d(2)=>p22_4n0r4(4), d(1)=>p22_4n0r4(3), d(0)=>
      p22_4n0r4(2), cout=>nx6397z2, p_p11_0=>p11(0));
   nx25033z1 <= NOT nx45188z1;
   PWR <= '1';
   state(0) <= NOT nx28524z1;
   NOT_state_3 <= NOT state(3);
   reg_tmp_o_edge : cycloneii_lcell_ff port map ( regout=>
      o_edge_EXMPLR987(2), datain=>prev_edge, sdata=>p41, clk=>i_clock, ena
      =>PWR, sload=>nx30752z1);
   reg_state_3 : cycloneii_lcell_ff port map ( regout=>state(3), datain=>
      state(2), clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_state_2 : cycloneii_lcell_ff port map ( regout=>state(2), datain=>
      state(1), clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_state_1 : cycloneii_lcell_ff port map ( regout=>state(1), datain=>
      state(0), clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_state_0 : cycloneii_lcell_ff port map ( regout=>nx28524z1, datain=>
      NOT_state_3, clk=>i_clock, ena=>nx29521z1, sclr=>i_reset);
   reg_prev_max_9 : cycloneii_lcell_ff port map ( regout=>prev_max(9), 
      datain=>p43(9), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_8 : cycloneii_lcell_ff port map ( regout=>prev_max(8), 
      datain=>p43(8), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_7 : cycloneii_lcell_ff port map ( regout=>prev_max(7), 
      datain=>p43(7), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_6 : cycloneii_lcell_ff port map ( regout=>prev_max(6), 
      datain=>p43(6), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_5 : cycloneii_lcell_ff port map ( regout=>prev_max(5), 
      datain=>p43(5), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_4 : cycloneii_lcell_ff port map ( regout=>prev_max(4), 
      datain=>p43(4), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_3 : cycloneii_lcell_ff port map ( regout=>prev_max(3), 
      datain=>p43(3), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_2 : cycloneii_lcell_ff port map ( regout=>prev_max(2), 
      datain=>p43(2), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_13 : cycloneii_lcell_ff port map ( regout=>prev_max(13), 
      datain=>p43(13), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_12 : cycloneii_lcell_ff port map ( regout=>prev_max(12), 
      datain=>p43(12), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_11 : cycloneii_lcell_ff port map ( regout=>prev_max(11), 
      datain=>p43(11), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_10 : cycloneii_lcell_ff port map ( regout=>prev_max(10), 
      datain=>p43(10), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_1 : cycloneii_lcell_ff port map ( regout=>prev_max(1), 
      datain=>p43(1), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_max_0 : cycloneii_lcell_ff port map ( regout=>prev_max(0), 
      datain=>p43(0), clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_prev_edge : cycloneii_lcell_ff port map ( regout=>prev_edge, datain=>
      p41, clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
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
   reg_p43_13 : cycloneii_lcell_ff port map ( regout=>p43(13), datain=>
      p4s(13), clk=>i_clock);
   reg_p43_12 : cycloneii_lcell_ff port map ( regout=>p43(12), datain=>
      p4s(12), clk=>i_clock);
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
   reg_p40 : cycloneii_lcell_ff port map ( regout=>p40, datain=>p30, clk=>
      i_clock);
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
      sdata=>p22(9), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_8 : cycloneii_lcell_ff port map ( regout=>p31(8), datain=>p21(8), 
      sdata=>p22(8), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_7 : cycloneii_lcell_ff port map ( regout=>p31(7), datain=>p21(7), 
      sdata=>p22(7), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_6 : cycloneii_lcell_ff port map ( regout=>p31(6), datain=>p21(6), 
      sdata=>p22(6), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_5 : cycloneii_lcell_ff port map ( regout=>p31(5), datain=>p21(5), 
      sdata=>p22(5), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_4 : cycloneii_lcell_ff port map ( regout=>p31(4), datain=>p21(4), 
      sdata=>p22(4), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_3 : cycloneii_lcell_ff port map ( regout=>p31(3), datain=>p21(3), 
      sdata=>p22(3), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_2 : cycloneii_lcell_ff port map ( regout=>p31(2), datain=>p21(2), 
      sdata=>p22(2), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_12 : cycloneii_lcell_ff port map ( regout=>p31(12), datain=>
      p21(12), sdata=>p22(12), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_11 : cycloneii_lcell_ff port map ( regout=>p31(11), datain=>
      p21(11), sdata=>p22(11), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_10 : cycloneii_lcell_ff port map ( regout=>p31(10), datain=>
      p21(10), sdata=>p22(10), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_1 : cycloneii_lcell_ff port map ( regout=>p31(1), datain=>p21(1), 
      sdata=>p22(1), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p31_0 : cycloneii_lcell_ff port map ( regout=>p31(0), datain=>p21(0), 
      sdata=>p22(0), clk=>i_clock, ena=>PWR, sload=>nx45188z1);
   reg_p30 : cycloneii_lcell_ff port map ( regout=>p30, datain=>p20, clk=>
      i_clock);
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
      p22_4n0r2(9), clk=>i_clock);
   reg_p22_8 : cycloneii_lcell_ff port map ( regout=>p22(8), datain=>
      p22_4n0r2(8), clk=>i_clock);
   reg_p22_7 : cycloneii_lcell_ff port map ( regout=>p22(7), datain=>
      p22_4n0r2(7), clk=>i_clock);
   reg_p22_6 : cycloneii_lcell_ff port map ( regout=>p22(6), datain=>
      p22_4n0r2(6), clk=>i_clock);
   reg_p22_5 : cycloneii_lcell_ff port map ( regout=>p22(5), datain=>
      p22_4n0r2(5), clk=>i_clock);
   reg_p22_4 : cycloneii_lcell_ff port map ( regout=>p22(4), datain=>
      p22_4n0r2(4), clk=>i_clock);
   reg_p22_3 : cycloneii_lcell_ff port map ( regout=>p22(3), datain=>
      p22_4n0r2(3), clk=>i_clock);
   reg_p22_2 : cycloneii_lcell_ff port map ( regout=>p22(2), datain=>
      p22_4n0r2(2), clk=>i_clock);
   reg_p22_12 : cycloneii_lcell_ff port map ( regout=>p22(12), datain=>
      p22_4n0r2(12), clk=>i_clock);
   reg_p22_11 : cycloneii_lcell_ff port map ( regout=>p22(11), datain=>
      p22_4n0r2(11), clk=>i_clock);
   reg_p22_10 : cycloneii_lcell_ff port map ( regout=>p22(10), datain=>
      p22_4n0r2(10), clk=>i_clock);
   reg_p22_1 : cycloneii_lcell_ff port map ( regout=>p22(1), datain=>
      p22_4n0r2(1), clk=>i_clock);
   reg_p22_0 : cycloneii_lcell_ff port map ( regout=>p22(0), datain=>
      p22_4n0r3_0, clk=>i_clock);
   reg_p21_9 : cycloneii_lcell_ff port map ( regout=>p21(9), datain=>
      p21_4n0r2(9), clk=>i_clock);
   reg_p21_8 : cycloneii_lcell_ff port map ( regout=>p21(8), datain=>
      p21_4n0r2(8), clk=>i_clock);
   reg_p21_7 : cycloneii_lcell_ff port map ( regout=>p21(7), datain=>
      p21_4n0r2(7), clk=>i_clock);
   reg_p21_6 : cycloneii_lcell_ff port map ( regout=>p21(6), datain=>
      p21_4n0r2(6), clk=>i_clock);
   reg_p21_5 : cycloneii_lcell_ff port map ( regout=>p21(5), datain=>
      p21_4n0r2(5), clk=>i_clock);
   reg_p21_4 : cycloneii_lcell_ff port map ( regout=>p21(4), datain=>
      p21_4n0r2(4), clk=>i_clock);
   reg_p21_3 : cycloneii_lcell_ff port map ( regout=>p21(3), datain=>
      p21_4n0r2(3), clk=>i_clock);
   reg_p21_2 : cycloneii_lcell_ff port map ( regout=>p21(2), datain=>
      p21_4n0r2(2), clk=>i_clock);
   reg_p21_12 : cycloneii_lcell_ff port map ( regout=>p21(12), datain=>
      p21_4n0r2(12), clk=>i_clock);
   reg_p21_11 : cycloneii_lcell_ff port map ( regout=>p21(11), datain=>
      p21_4n0r2(11), clk=>i_clock);
   reg_p21_10 : cycloneii_lcell_ff port map ( regout=>p21(10), datain=>
      p21_4n0r2(10), clk=>i_clock);
   reg_p21_1 : cycloneii_lcell_ff port map ( regout=>p21(1), datain=>
      p21_4n0r2(1), clk=>i_clock);
   reg_p21_0 : cycloneii_lcell_ff port map ( regout=>p21(0), datain=>
      p21_4n0r3_0, clk=>i_clock);
   reg_p20 : cycloneii_lcell_ff port map ( regout=>p20, datain=>i_valid, clk
      =>i_clock);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid, datain=>
      state(3), clk=>i_clock, sclr=>i_reset);
   reg_max_fwd : cycloneii_lcell_ff port map ( regout=>max_fwd, datain=>p45, 
      clk=>i_clock, ena=>nx47310z1, sclr=>nx5049z1);
   reg_max_dir_2 : cycloneii_lcell_ff port map ( regout=>max_dir(2), datain
      =>nx25836z1, clk=>i_clock);
   reg_max_dir_1 : cycloneii_lcell_ff port map ( regout=>max_dir(1), datain
      =>nx26833z1, clk=>i_clock);
   reg_max_dir_0 : cycloneii_lcell_ff port map ( regout=>max_dir(0), datain
      =>nx27830z1, clk=>i_clock, ena=>nx47310z2);
   ix259_reg_p5m_1 : cycloneii_lcell_ff port map ( regout=>p_p5m_1, datain=>
      nx14253z1, clk=>i_clock);
   ix259_reg_p5m_0 : cycloneii_lcell_ff port map ( regout=>p_p5m_0, datain=>
      nx13256z1, clk=>i_clock);
   ix259_reg_p4m_1 : cycloneii_lcell_ff port map ( regout=>nx14253z1, datain
      =>nx46148z1, clk=>i_clock);
   ix259_reg_p4m_0 : cycloneii_lcell_ff port map ( regout=>nx13256z1, datain
      =>nx47145z1, clk=>i_clock);
   ix259_reg_p3m_1 : cycloneii_lcell_ff port map ( regout=>nx46148z1, datain
      =>nx41013z1, clk=>i_clock);
   ix259_reg_p3m_0 : cycloneii_lcell_ff port map ( regout=>nx47145z1, datain
      =>nx42010z1, clk=>i_clock);
   ix259_reg_p2m_1 : cycloneii_lcell_ff port map ( regout=>nx41013z1, datain
      =>i_mode(1), clk=>i_clock);
   ix259_reg_p2m_0 : cycloneii_lcell_ff port map ( regout=>nx42010z1, datain
      =>i_mode(0), clk=>i_clock);
   ix258_reg_p5r_7 : cycloneii_lcell_ff port map ( regout=>o_row(7), datain
      =>nx26081z1, clk=>i_clock);
   ix258_reg_p5r_6 : cycloneii_lcell_ff port map ( regout=>o_row(6), datain
      =>nx27078z1, clk=>i_clock);
   ix258_reg_p5r_5 : cycloneii_lcell_ff port map ( regout=>o_row(5), datain
      =>nx28075z1, clk=>i_clock);
   ix258_reg_p5r_4 : cycloneii_lcell_ff port map ( regout=>o_row(4), datain
      =>nx29072z1, clk=>i_clock);
   ix258_reg_p5r_3 : cycloneii_lcell_ff port map ( regout=>o_row(3), datain
      =>nx30069z1, clk=>i_clock);
   ix258_reg_p5r_2 : cycloneii_lcell_ff port map ( regout=>o_row(2), datain
      =>nx31066z1, clk=>i_clock);
   ix258_reg_p5r_1 : cycloneii_lcell_ff port map ( regout=>o_row(1), datain
      =>nx32063z1, clk=>i_clock);
   ix258_reg_p5r_0 : cycloneii_lcell_ff port map ( regout=>o_row(0), datain
      =>nx33060z1, clk=>i_clock);
   ix258_reg_p4r_7 : cycloneii_lcell_ff port map ( regout=>nx26081z1, datain
      =>nx20946z1, clk=>i_clock);
   ix258_reg_p4r_6 : cycloneii_lcell_ff port map ( regout=>nx27078z1, datain
      =>nx21943z1, clk=>i_clock);
   ix258_reg_p4r_5 : cycloneii_lcell_ff port map ( regout=>nx28075z1, datain
      =>nx22940z1, clk=>i_clock);
   ix258_reg_p4r_4 : cycloneii_lcell_ff port map ( regout=>nx29072z1, datain
      =>nx23937z1, clk=>i_clock);
   ix258_reg_p4r_3 : cycloneii_lcell_ff port map ( regout=>nx30069z1, datain
      =>nx24934z1, clk=>i_clock);
   ix258_reg_p4r_2 : cycloneii_lcell_ff port map ( regout=>nx31066z1, datain
      =>nx25931z1, clk=>i_clock);
   ix258_reg_p4r_1 : cycloneii_lcell_ff port map ( regout=>nx32063z1, datain
      =>nx26928z1, clk=>i_clock);
   ix258_reg_p4r_0 : cycloneii_lcell_ff port map ( regout=>nx33060z1, datain
      =>nx27925z1, clk=>i_clock);
   ix258_reg_p3r_7 : cycloneii_lcell_ff port map ( regout=>nx20946z1, datain
      =>nx15811z1, clk=>i_clock);
   ix258_reg_p3r_6 : cycloneii_lcell_ff port map ( regout=>nx21943z1, datain
      =>nx16808z1, clk=>i_clock);
   ix258_reg_p3r_5 : cycloneii_lcell_ff port map ( regout=>nx22940z1, datain
      =>nx17805z1, clk=>i_clock);
   ix258_reg_p3r_4 : cycloneii_lcell_ff port map ( regout=>nx23937z1, datain
      =>nx18802z1, clk=>i_clock);
   ix258_reg_p3r_3 : cycloneii_lcell_ff port map ( regout=>nx24934z1, datain
      =>nx19799z1, clk=>i_clock);
   ix258_reg_p3r_2 : cycloneii_lcell_ff port map ( regout=>nx25931z1, datain
      =>nx20796z1, clk=>i_clock);
   ix258_reg_p3r_1 : cycloneii_lcell_ff port map ( regout=>nx26928z1, datain
      =>nx21793z1, clk=>i_clock);
   ix258_reg_p3r_0 : cycloneii_lcell_ff port map ( regout=>nx27925z1, datain
      =>nx22790z1, clk=>i_clock);
   ix258_reg_p2r_7 : cycloneii_lcell_ff port map ( regout=>nx15811z1, datain
      =>i_row(7), clk=>i_clock);
   ix258_reg_p2r_6 : cycloneii_lcell_ff port map ( regout=>nx16808z1, datain
      =>i_row(6), clk=>i_clock);
   ix258_reg_p2r_5 : cycloneii_lcell_ff port map ( regout=>nx17805z1, datain
      =>i_row(5), clk=>i_clock);
   ix258_reg_p2r_4 : cycloneii_lcell_ff port map ( regout=>nx18802z1, datain
      =>i_row(4), clk=>i_clock);
   ix258_reg_p2r_3 : cycloneii_lcell_ff port map ( regout=>nx19799z1, datain
      =>i_row(3), clk=>i_clock);
   ix258_reg_p2r_2 : cycloneii_lcell_ff port map ( regout=>nx20796z1, datain
      =>i_row(2), clk=>i_clock);
   ix258_reg_p2r_1 : cycloneii_lcell_ff port map ( regout=>nx21793z1, datain
      =>i_row(1), clk=>i_clock);
   ix258_reg_p2r_0 : cycloneii_lcell_ff port map ( regout=>nx22790z1, datain
      =>i_row(0), clk=>i_clock);
   ix5049z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bfbf") 
       port map ( combout=>nx5049z1, dataa=>state(3), datab=>p40, datac=>
      p_nrst_int_dup_22);
   ix47310z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efff") 
       port map ( combout=>nx47310z1, dataa=>nx47310z2, datab=>state(3), 
      datac=>p40, datad=>p_nrst_int_dup_22);
   ix47310z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx47310z4, dataa=>nx47310z5, datab=>nx47310z10, 
      datac=>nx47310z11, datad=>nx47310z12);
   ix26833z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx26833z3, dataa=>state(1), datab=>nx28524z1);
   ix26026z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx26026z4, dataa=>p4s(9), datab=>p4s(8), datac=>
      p4s(7));
   ix25836z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"c0aa") 
       port map ( combout=>nx25836z3, dataa=>max_dir(2), datab=>state(1), 
      datac=>nx28524z1, datad=>nx47310z2);
   ix47310z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z12, dataa=>p43(1), datab=>p43(0), datac=>
      prev_max(1), datad=>prev_max(0));
   ix47310z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z11, dataa=>p43(3), datab=>p43(2), datac=>
      prev_max(3), datad=>prev_max(2));
   ix47310z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z10, dataa=>p43(5), datab=>p43(4), datac=>
      prev_max(5), datad=>prev_max(4));
   ix47310z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z9, dataa=>p43(7), datab=>p43(6), datac=>
      prev_max(7), datad=>prev_max(6));
   ix47310z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z8, dataa=>p43(9), datab=>p43(8), datac=>
      prev_max(9), datad=>prev_max(8));
   ix47310z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z7, dataa=>p43(11), datab=>p43(10), datac
      =>prev_max(11), datad=>prev_max(10));
   ix47310z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx47310z6, dataa=>p43(13), datab=>p43(12), datac
      =>prev_max(13), datad=>prev_max(12));
   ix25836z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx25836z2, dataa=>max_dir(2), datab=>state(3), 
      datac=>nx47310z2);
   ix26026z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx26026z2, dataa=>p31(12), datab=>p30, datac=>
      nx26026z3);
   ix26833z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx26833z2, dataa=>state(3), datab=>state(2));
   ix26833z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ea22") 
       port map ( combout=>nx26833z1, dataa=>max_dir(1), datab=>nx47310z2, 
      datac=>nx26833z2, datad=>nx26833z3);
   ix25836z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff40") 
       port map ( combout=>nx25836z1, dataa=>state(2), datab=>nx28524z1, 
      datac=>nx25836z2, datad=>nx25836z3);
   ix47310z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx47310z5, dataa=>nx47310z6, datab=>nx47310z7, 
      datac=>nx47310z8, datad=>nx47310z9);
   ix27830z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx27830z1, dataa=>p45, datab=>nx28524z1);
   ix30752z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx30752z1, dataa=>state(3), datab=>nx47310z2);
   ix26026z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0e0") 
       port map ( combout=>nx26026z1, dataa=>p4s(11), datab=>p4s(10), datac
      =>nx26026z2, datad=>nx26026z4);
   ix47310z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx47310z2, dataa=>p45, datab=>max_fwd, datac=>
      nx47310z3, datad=>nx47310z4);
   ix28128z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>p4s(12), dataa=>p31(12), datab=>nx26026z3);
   ix29125z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>p4s(13), dataa=>p31(12), datab=>nx26026z3);
   ix63886z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(0), dataa=>o_edge_EXMPLR987(2), datab=>
      max_dir(0));
   ix62889z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(1), dataa=>o_edge_EXMPLR987(2), datab=>
      max_dir(1));
   ix61892z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(2), dataa=>o_edge_EXMPLR987(2), datab=>
      max_dir(2));
   ix29521z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx29521z1, dataa=>p40, datab=>p_nrst_int_dup_22);

end main ;

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
      debug_num_8 : OUT std_logic_vector (3 DOWNTO 0) ;
      px304 : OUT std_logic ;
      p_m_o_mode_0 : OUT std_logic ;
      p_nrst_int : IN std_logic) ;
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
         o_image2_2 : OUT std_logic_vector (7 DOWNTO 0) ;
         p_nrst_int_dup_22 : IN std_logic) ;
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
         o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_p5m_1 : OUT std_logic ;
         p_p5m_0 : OUT std_logic ;
         p_nrst_int_dup_22 : IN std_logic) ;
   end component ;
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
   
   signal f_i_row_next: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_mode_next: std_logic_vector (1 DOWNTO 0) ;
   
   signal m_o_image0_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image0_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image0_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image1_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image1_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image2_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image2_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal m_o_image2_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_t3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_b3: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i2: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal f_i_mode: std_logic_vector (1 DOWNTO 0) ;
   
   signal nx20836z1, nx57127z1, nx35105z1, nx57127z2, nx64956z1, 
      p5m_1_dup_10, p5m_0_dup_14, nx63959z1, NOT_f_state_3: std_logic ;
   
   signal DANGLING : std_logic_vector (18 downto 0 );

begin
   o_mode(1) <= p_nrst_int ;
   u_memory : memory port map ( i_valid=>i_valid, i_reset=>DANGLING(0), 
      i_pixel(7)=>i_pixel(7), i_pixel(6)=>i_pixel(6), i_pixel(5)=>i_pixel(5), 
      i_pixel(4)=>i_pixel(4), i_pixel(3)=>i_pixel(3), i_pixel(2)=>i_pixel(2), 
      i_pixel(1)=>i_pixel(1), i_pixel(0)=>i_pixel(0), i_clock=>i_clock, 
      o_valid=>m_o_valid, o_mode(1)=>m_o_mode(1), o_mode(0)=>m_o_mode(0), 
      o_column(7)=>DANGLING(1), o_column(6)=>DANGLING(2), o_column(5)=>
      DANGLING(3), o_column(4)=>DANGLING(4), o_column(3)=>DANGLING(5), 
      o_column(2)=>DANGLING(6), o_column(1)=>DANGLING(7), o_column(0)=>
      DANGLING(8), o_row(7)=>m_o_row(7), o_row(6)=>m_o_row(6), o_row(5)=>
      m_o_row(5), o_row(4)=>m_o_row(4), o_row(3)=>m_o_row(3), o_row(2)=>
      m_o_row(2), o_row(1)=>m_o_row(1), o_row(0)=>m_o_row(0), o_image0_0(7)
      =>m_o_image0_0(7), o_image0_0(6)=>m_o_image0_0(6), o_image0_0(5)=>
      m_o_image0_0(5), o_image0_0(4)=>m_o_image0_0(4), o_image0_0(3)=>
      m_o_image0_0(3), o_image0_0(2)=>m_o_image0_0(2), o_image0_0(1)=>
      m_o_image0_0(1), o_image0_0(0)=>m_o_image0_0(0), o_image0_1(7)=>
      m_o_image0_1(7), o_image0_1(6)=>m_o_image0_1(6), o_image0_1(5)=>
      m_o_image0_1(5), o_image0_1(4)=>m_o_image0_1(4), o_image0_1(3)=>
      m_o_image0_1(3), o_image0_1(2)=>m_o_image0_1(2), o_image0_1(1)=>
      m_o_image0_1(1), o_image0_1(0)=>m_o_image0_1(0), o_image0_2(7)=>
      m_o_image0_2(7), o_image0_2(6)=>m_o_image0_2(6), o_image0_2(5)=>
      m_o_image0_2(5), o_image0_2(4)=>m_o_image0_2(4), o_image0_2(3)=>
      m_o_image0_2(3), o_image0_2(2)=>m_o_image0_2(2), o_image0_2(1)=>
      m_o_image0_2(1), o_image0_2(0)=>m_o_image0_2(0), o_image1_0(7)=>
      m_o_image1_0(7), o_image1_0(6)=>m_o_image1_0(6), o_image1_0(5)=>
      m_o_image1_0(5), o_image1_0(4)=>m_o_image1_0(4), o_image1_0(3)=>
      m_o_image1_0(3), o_image1_0(2)=>m_o_image1_0(2), o_image1_0(1)=>
      m_o_image1_0(1), o_image1_0(0)=>m_o_image1_0(0), o_image1_1(7)=>
      DANGLING(9), o_image1_1(6)=>DANGLING(10), o_image1_1(5)=>DANGLING(11), 
      o_image1_1(4)=>DANGLING(12), o_image1_1(3)=>DANGLING(13), 
      o_image1_1(2)=>DANGLING(14), o_image1_1(1)=>DANGLING(15), 
      o_image1_1(0)=>DANGLING(16), o_image1_2(7)=>m_o_image1_2(7), 
      o_image1_2(6)=>m_o_image1_2(6), o_image1_2(5)=>m_o_image1_2(5), 
      o_image1_2(4)=>m_o_image1_2(4), o_image1_2(3)=>m_o_image1_2(3), 
      o_image1_2(2)=>m_o_image1_2(2), o_image1_2(1)=>m_o_image1_2(1), 
      o_image1_2(0)=>m_o_image1_2(0), o_image2_0(7)=>m_o_image2_0(7), 
      o_image2_0(6)=>m_o_image2_0(6), o_image2_0(5)=>m_o_image2_0(5), 
      o_image2_0(4)=>m_o_image2_0(4), o_image2_0(3)=>m_o_image2_0(3), 
      o_image2_0(2)=>m_o_image2_0(2), o_image2_0(1)=>m_o_image2_0(1), 
      o_image2_0(0)=>m_o_image2_0(0), o_image2_1(7)=>m_o_image2_1(7), 
      o_image2_1(6)=>m_o_image2_1(6), o_image2_1(5)=>m_o_image2_1(5), 
      o_image2_1(4)=>m_o_image2_1(4), o_image2_1(3)=>m_o_image2_1(3), 
      o_image2_1(2)=>m_o_image2_1(2), o_image2_1(1)=>m_o_image2_1(1), 
      o_image2_1(0)=>m_o_image2_1(0), o_image2_2(7)=>m_o_image2_2(7), 
      o_image2_2(6)=>m_o_image2_2(6), o_image2_2(5)=>m_o_image2_2(5), 
      o_image2_2(4)=>m_o_image2_2(4), o_image2_2(3)=>m_o_image2_2(3), 
      o_image2_2(2)=>m_o_image2_2(2), o_image2_2(1)=>m_o_image2_2(1), 
      o_image2_2(0)=>m_o_image2_2(0), p_nrst_int_dup_22=>p_nrst_int);
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
      f_i2(0), i_clock=>i_clock, i_reset=>i_reset, i_valid=>nx20836z1, 
      i_mode(1)=>f_i_mode(1), i_mode(0)=>f_i_mode(0), i_row(7)=>f_i_row(7), 
      i_row(6)=>f_i_row(6), i_row(5)=>f_i_row(5), i_row(4)=>f_i_row(4), 
      i_row(3)=>f_i_row(3), i_row(2)=>f_i_row(2), i_row(1)=>f_i_row(1), 
      i_row(0)=>f_i_row(0), o_dir(2)=>o_dir(2), o_dir(1)=>o_dir(1), o_dir(0)
      =>o_dir(0), o_edge=>o_edge, o_valid=>o_valid, o_mode(1)=>DANGLING(17), 
      o_mode(0)=>DANGLING(18), o_row(7)=>o_row(7), o_row(6)=>o_row(6), 
      o_row(5)=>o_row(5), o_row(4)=>o_row(4), o_row(3)=>o_row(3), o_row(2)=>
      o_row(2), o_row(1)=>o_row(1), o_row(0)=>o_row(0), p_p5m_1=>
      p5m_1_dup_10, p_p5m_0=>p5m_0_dup_14, p_nrst_int_dup_22=>p_nrst_int);
   f_state(0) <= NOT nx63959z1;
   NOT_f_state_3 <= NOT f_state(3);
   reg_f_t3_next_7 : cycloneii_lcell_ff port map ( regout=>f_t3_next(7), 
      datain=>f_i1_next(7), sdata=>m_o_image1_0(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_6 : cycloneii_lcell_ff port map ( regout=>f_t3_next(6), 
      datain=>f_i1_next(6), sdata=>m_o_image1_0(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_5 : cycloneii_lcell_ff port map ( regout=>f_t3_next(5), 
      datain=>f_i1_next(5), sdata=>m_o_image1_0(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_4 : cycloneii_lcell_ff port map ( regout=>f_t3_next(4), 
      datain=>f_i1_next(4), sdata=>m_o_image1_0(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_3 : cycloneii_lcell_ff port map ( regout=>f_t3_next(3), 
      datain=>f_i1_next(3), sdata=>m_o_image1_0(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_2 : cycloneii_lcell_ff port map ( regout=>f_t3_next(2), 
      datain=>f_i1_next(2), sdata=>m_o_image1_0(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_1 : cycloneii_lcell_ff port map ( regout=>f_t3_next(1), 
      datain=>f_i1_next(1), sdata=>m_o_image1_0(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t3_next_0 : cycloneii_lcell_ff port map ( regout=>f_t3_next(0), 
      datain=>f_i1_next(0), sdata=>m_o_image1_0(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_7 : cycloneii_lcell_ff port map ( regout=>f_t2_next(7), 
      datain=>f_t3_next(7), sdata=>m_o_image0_0(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_6 : cycloneii_lcell_ff port map ( regout=>f_t2_next(6), 
      datain=>f_t3_next(6), sdata=>m_o_image0_0(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_5 : cycloneii_lcell_ff port map ( regout=>f_t2_next(5), 
      datain=>f_t3_next(5), sdata=>m_o_image0_0(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_4 : cycloneii_lcell_ff port map ( regout=>f_t2_next(4), 
      datain=>f_t3_next(4), sdata=>m_o_image0_0(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_3 : cycloneii_lcell_ff port map ( regout=>f_t2_next(3), 
      datain=>f_t3_next(3), sdata=>m_o_image0_0(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_2 : cycloneii_lcell_ff port map ( regout=>f_t2_next(2), 
      datain=>f_t3_next(2), sdata=>m_o_image0_0(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_1 : cycloneii_lcell_ff port map ( regout=>f_t2_next(1), 
      datain=>f_t3_next(1), sdata=>m_o_image0_0(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t2_next_0 : cycloneii_lcell_ff port map ( regout=>f_t2_next(0), 
      datain=>f_t3_next(0), sdata=>m_o_image0_0(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_7 : cycloneii_lcell_ff port map ( regout=>f_t1_next(7), 
      datain=>f_t2_next(7), sdata=>m_o_image0_1(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_6 : cycloneii_lcell_ff port map ( regout=>f_t1_next(6), 
      datain=>f_t2_next(6), sdata=>m_o_image0_1(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_5 : cycloneii_lcell_ff port map ( regout=>f_t1_next(5), 
      datain=>f_t2_next(5), sdata=>m_o_image0_1(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_4 : cycloneii_lcell_ff port map ( regout=>f_t1_next(4), 
      datain=>f_t2_next(4), sdata=>m_o_image0_1(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_3 : cycloneii_lcell_ff port map ( regout=>f_t1_next(3), 
      datain=>f_t2_next(3), sdata=>m_o_image0_1(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_2 : cycloneii_lcell_ff port map ( regout=>f_t1_next(2), 
      datain=>f_t2_next(2), sdata=>m_o_image0_1(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_1 : cycloneii_lcell_ff port map ( regout=>f_t1_next(1), 
      datain=>f_t2_next(1), sdata=>m_o_image0_1(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_t1_next_0 : cycloneii_lcell_ff port map ( regout=>f_t1_next(0), 
      datain=>f_t2_next(0), sdata=>m_o_image0_1(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_state_3 : cycloneii_lcell_ff port map ( regout=>f_state(3), datain
      =>f_state(2), clk=>i_clock, ena=>nx64956z1, sclr=>i_reset);
   reg_f_state_2 : cycloneii_lcell_ff port map ( regout=>f_state(2), datain
      =>f_state(1), clk=>i_clock, ena=>nx64956z1, sclr=>i_reset);
   reg_f_state_1 : cycloneii_lcell_ff port map ( regout=>f_state(1), datain
      =>f_state(0), clk=>i_clock, ena=>nx64956z1, sclr=>i_reset);
   reg_f_state_0 : cycloneii_lcell_ff port map ( regout=>nx63959z1, datain=>
      NOT_f_state_3, clk=>i_clock, ena=>nx64956z1, sclr=>i_reset);
   reg_f_i_row_next_7 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(7), datain=>m_o_row(7), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_6 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(6), datain=>m_o_row(6), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_5 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(5), datain=>m_o_row(5), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_4 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(4), datain=>m_o_row(4), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_3 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(3), datain=>m_o_row(3), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_2 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(2), datain=>m_o_row(2), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_1 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(1), datain=>m_o_row(1), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_row_next_0 : cycloneii_lcell_ff port map ( regout=>
      f_i_row_next(0), datain=>m_o_row(0), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_mode_next_1 : cycloneii_lcell_ff port map ( regout=>
      f_i_mode_next(1), datain=>m_o_mode(1), clk=>i_clock, ena=>nx35105z1);
   reg_f_i_mode_next_0 : cycloneii_lcell_ff port map ( regout=>
      f_i_mode_next(0), datain=>m_o_mode(0), clk=>i_clock, ena=>nx35105z1);
   reg_f_i2_next_7 : cycloneii_lcell_ff port map ( regout=>f_i2_next(7), 
      datain=>f_t1_next(7), sdata=>m_o_image0_2(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_6 : cycloneii_lcell_ff port map ( regout=>f_i2_next(6), 
      datain=>f_t1_next(6), sdata=>m_o_image0_2(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_5 : cycloneii_lcell_ff port map ( regout=>f_i2_next(5), 
      datain=>f_t1_next(5), sdata=>m_o_image0_2(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_4 : cycloneii_lcell_ff port map ( regout=>f_i2_next(4), 
      datain=>f_t1_next(4), sdata=>m_o_image0_2(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_3 : cycloneii_lcell_ff port map ( regout=>f_i2_next(3), 
      datain=>f_t1_next(3), sdata=>m_o_image0_2(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_2 : cycloneii_lcell_ff port map ( regout=>f_i2_next(2), 
      datain=>f_t1_next(2), sdata=>m_o_image0_2(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_1 : cycloneii_lcell_ff port map ( regout=>f_i2_next(1), 
      datain=>f_t1_next(1), sdata=>m_o_image0_2(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i2_next_0 : cycloneii_lcell_ff port map ( regout=>f_i2_next(0), 
      datain=>f_t1_next(0), sdata=>m_o_image0_2(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_7 : cycloneii_lcell_ff port map ( regout=>f_i1_next(7), 
      datain=>f_b1_next(7), sdata=>m_o_image2_0(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_6 : cycloneii_lcell_ff port map ( regout=>f_i1_next(6), 
      datain=>f_b1_next(6), sdata=>m_o_image2_0(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_5 : cycloneii_lcell_ff port map ( regout=>f_i1_next(5), 
      datain=>f_b1_next(5), sdata=>m_o_image2_0(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_4 : cycloneii_lcell_ff port map ( regout=>f_i1_next(4), 
      datain=>f_b1_next(4), sdata=>m_o_image2_0(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_3 : cycloneii_lcell_ff port map ( regout=>f_i1_next(3), 
      datain=>f_b1_next(3), sdata=>m_o_image2_0(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_2 : cycloneii_lcell_ff port map ( regout=>f_i1_next(2), 
      datain=>f_b1_next(2), sdata=>m_o_image2_0(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_1 : cycloneii_lcell_ff port map ( regout=>f_i1_next(1), 
      datain=>f_b1_next(1), sdata=>m_o_image2_0(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_i1_next_0 : cycloneii_lcell_ff port map ( regout=>f_i1_next(0), 
      datain=>f_b1_next(0), sdata=>m_o_image2_0(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_7 : cycloneii_lcell_ff port map ( regout=>f_b3_next(7), 
      datain=>f_i2_next(7), sdata=>m_o_image1_2(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_6 : cycloneii_lcell_ff port map ( regout=>f_b3_next(6), 
      datain=>f_i2_next(6), sdata=>m_o_image1_2(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_5 : cycloneii_lcell_ff port map ( regout=>f_b3_next(5), 
      datain=>f_i2_next(5), sdata=>m_o_image1_2(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_4 : cycloneii_lcell_ff port map ( regout=>f_b3_next(4), 
      datain=>f_i2_next(4), sdata=>m_o_image1_2(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_3 : cycloneii_lcell_ff port map ( regout=>f_b3_next(3), 
      datain=>f_i2_next(3), sdata=>m_o_image1_2(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_2 : cycloneii_lcell_ff port map ( regout=>f_b3_next(2), 
      datain=>f_i2_next(2), sdata=>m_o_image1_2(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_1 : cycloneii_lcell_ff port map ( regout=>f_b3_next(1), 
      datain=>f_i2_next(1), sdata=>m_o_image1_2(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b3_next_0 : cycloneii_lcell_ff port map ( regout=>f_b3_next(0), 
      datain=>f_i2_next(0), sdata=>m_o_image1_2(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_7 : cycloneii_lcell_ff port map ( regout=>f_b2_next(7), 
      datain=>f_b3_next(7), sdata=>m_o_image2_2(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_6 : cycloneii_lcell_ff port map ( regout=>f_b2_next(6), 
      datain=>f_b3_next(6), sdata=>m_o_image2_2(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_5 : cycloneii_lcell_ff port map ( regout=>f_b2_next(5), 
      datain=>f_b3_next(5), sdata=>m_o_image2_2(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_4 : cycloneii_lcell_ff port map ( regout=>f_b2_next(4), 
      datain=>f_b3_next(4), sdata=>m_o_image2_2(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_3 : cycloneii_lcell_ff port map ( regout=>f_b2_next(3), 
      datain=>f_b3_next(3), sdata=>m_o_image2_2(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_2 : cycloneii_lcell_ff port map ( regout=>f_b2_next(2), 
      datain=>f_b3_next(2), sdata=>m_o_image2_2(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_1 : cycloneii_lcell_ff port map ( regout=>f_b2_next(1), 
      datain=>f_b3_next(1), sdata=>m_o_image2_2(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b2_next_0 : cycloneii_lcell_ff port map ( regout=>f_b2_next(0), 
      datain=>f_b3_next(0), sdata=>m_o_image2_2(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_7 : cycloneii_lcell_ff port map ( regout=>f_b1_next(7), 
      datain=>f_b2_next(7), sdata=>m_o_image2_1(7), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_6 : cycloneii_lcell_ff port map ( regout=>f_b1_next(6), 
      datain=>f_b2_next(6), sdata=>m_o_image2_1(6), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_5 : cycloneii_lcell_ff port map ( regout=>f_b1_next(5), 
      datain=>f_b2_next(5), sdata=>m_o_image2_1(5), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_4 : cycloneii_lcell_ff port map ( regout=>f_b1_next(4), 
      datain=>f_b2_next(4), sdata=>m_o_image2_1(4), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_3 : cycloneii_lcell_ff port map ( regout=>f_b1_next(3), 
      datain=>f_b2_next(3), sdata=>m_o_image2_1(3), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_2 : cycloneii_lcell_ff port map ( regout=>f_b1_next(2), 
      datain=>f_b2_next(2), sdata=>m_o_image2_1(2), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_1 : cycloneii_lcell_ff port map ( regout=>f_b1_next(1), 
      datain=>f_b2_next(1), sdata=>m_o_image2_1(1), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   reg_f_b1_next_0 : cycloneii_lcell_ff port map ( regout=>f_b1_next(0), 
      datain=>f_b2_next(0), sdata=>m_o_image2_1(0), clk=>i_clock, ena=>
      nx57127z1, sload=>nx57127z2);
   ix20836z52988 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i_mode(1), dataa=>f_i_mode_next(1), datab=>
      nx57127z2, datac=>p_nrst_int);
   ix64956z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"dfdf") 
       port map ( combout=>nx64956z1, dataa=>nx57127z2, datab=>m_o_valid, 
      datac=>p_nrst_int);
   ix57127z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx57127z2, dataa=>f_state(3), datab=>f_state(2), 
      datac=>f_state(1), datad=>nx63959z1);
   ix20836z52987 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx20836z1, dataa=>m_o_valid, datab=>nx57127z2);
   ix20836z52989 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_mode(0), dataa=>m_o_mode(0), datab=>
      f_i_mode_next(0), datac=>nx57127z2);
   ix35105z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx35105z1, dataa=>nx57127z2, datab=>m_o_valid, 
      datac=>p_nrst_int);
   ix20836z52997 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(0), dataa=>m_o_row(0), datab=>
      f_i_row_next(0), datac=>nx57127z2);
   ix20836z52996 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(1), dataa=>m_o_row(1), datab=>
      f_i_row_next(1), datac=>nx57127z2);
   ix20836z52995 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(2), dataa=>m_o_row(2), datab=>
      f_i_row_next(2), datac=>nx57127z2);
   ix20836z52994 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(3), dataa=>m_o_row(3), datab=>
      f_i_row_next(3), datac=>nx57127z2);
   ix20836z52993 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(4), dataa=>m_o_row(4), datab=>
      f_i_row_next(4), datac=>nx57127z2);
   ix20836z52992 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(5), dataa=>m_o_row(5), datab=>
      f_i_row_next(5), datac=>nx57127z2);
   ix20836z52991 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(6), dataa=>m_o_row(6), datab=>
      f_i_row_next(6), datac=>nx57127z2);
   ix20836z52990 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>f_i_row(7), dataa=>m_o_row(7), datab=>
      f_i_row_next(7), datac=>nx57127z2);
   ix20836z52986 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(0), dataa=>f_i2_next(0), datab=>nx57127z2, 
      datac=>m_o_image1_2(0));
   ix20836z52985 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(1), dataa=>f_i2_next(1), datab=>nx57127z2, 
      datac=>m_o_image1_2(1));
   ix20836z52984 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(2), dataa=>f_i2_next(2), datab=>nx57127z2, 
      datac=>m_o_image1_2(2));
   ix20836z52983 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(3), dataa=>f_i2_next(3), datab=>nx57127z2, 
      datac=>m_o_image1_2(3));
   ix20836z52982 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(4), dataa=>f_i2_next(4), datab=>nx57127z2, 
      datac=>m_o_image1_2(4));
   ix20836z52981 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(5), dataa=>f_i2_next(5), datab=>nx57127z2, 
      datac=>m_o_image1_2(5));
   ix20836z52980 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(6), dataa=>f_i2_next(6), datab=>nx57127z2, 
      datac=>m_o_image1_2(6));
   ix20836z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i2(7), dataa=>f_i2_next(7), datab=>nx57127z2, 
      datac=>m_o_image1_2(7));
   ix20836z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(0), dataa=>f_i1_next(0), datab=>nx57127z2, 
      datac=>m_o_image1_0(0));
   ix20836z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(1), dataa=>f_i1_next(1), datab=>nx57127z2, 
      datac=>m_o_image1_0(1));
   ix20836z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(2), dataa=>f_i1_next(2), datab=>nx57127z2, 
      datac=>m_o_image1_0(2));
   ix20836z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(3), dataa=>f_i1_next(3), datab=>nx57127z2, 
      datac=>m_o_image1_0(3));
   ix20836z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(4), dataa=>f_i1_next(4), datab=>nx57127z2, 
      datac=>m_o_image1_0(4));
   ix20836z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(5), dataa=>f_i1_next(5), datab=>nx57127z2, 
      datac=>m_o_image1_0(5));
   ix20836z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(6), dataa=>f_i1_next(6), datab=>nx57127z2, 
      datac=>m_o_image1_0(6));
   ix20836z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_i1(7), dataa=>f_i1_next(7), datab=>nx57127z2, 
      datac=>m_o_image1_0(7));
   ix20836z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(0), dataa=>f_b3_next(0), datab=>nx57127z2, 
      datac=>m_o_image2_2(0));
   ix20836z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(1), dataa=>f_b3_next(1), datab=>nx57127z2, 
      datac=>m_o_image2_2(1));
   ix20836z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(2), dataa=>f_b3_next(2), datab=>nx57127z2, 
      datac=>m_o_image2_2(2));
   ix20836z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(3), dataa=>f_b3_next(3), datab=>nx57127z2, 
      datac=>m_o_image2_2(3));
   ix20836z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(4), dataa=>f_b3_next(4), datab=>nx57127z2, 
      datac=>m_o_image2_2(4));
   ix20836z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(5), dataa=>f_b3_next(5), datab=>nx57127z2, 
      datac=>m_o_image2_2(5));
   ix57127z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx57127z1, dataa=>nx57127z2, datab=>m_o_valid, 
      datac=>p_nrst_int);
   ix20836z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(6), dataa=>f_b3_next(6), datab=>nx57127z2, 
      datac=>m_o_image2_2(6));
   ix20836z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b3(7), dataa=>f_b3_next(7), datab=>nx57127z2, 
      datac=>m_o_image2_2(7));
   ix20836z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(0), dataa=>f_b2_next(0), datab=>nx57127z2, 
      datac=>m_o_image2_1(0));
   ix20836z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(1), dataa=>f_b2_next(1), datab=>nx57127z2, 
      datac=>m_o_image2_1(1));
   ix20836z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(2), dataa=>f_b2_next(2), datab=>nx57127z2, 
      datac=>m_o_image2_1(2));
   ix20836z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(3), dataa=>f_b2_next(3), datab=>nx57127z2, 
      datac=>m_o_image2_1(3));
   ix20836z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(4), dataa=>f_b2_next(4), datab=>nx57127z2, 
      datac=>m_o_image2_1(4));
   ix20836z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(5), dataa=>f_b2_next(5), datab=>nx57127z2, 
      datac=>m_o_image2_1(5));
   ix20836z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(6), dataa=>f_b2_next(6), datab=>nx57127z2, 
      datac=>m_o_image2_1(6));
   ix20836z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b2(7), dataa=>f_b2_next(7), datab=>nx57127z2, 
      datac=>m_o_image2_1(7));
   ix20836z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(0), dataa=>f_b1_next(0), datab=>nx57127z2, 
      datac=>m_o_image2_0(0));
   ix20836z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(1), dataa=>f_b1_next(1), datab=>nx57127z2, 
      datac=>m_o_image2_0(1));
   ix20836z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(2), dataa=>f_b1_next(2), datab=>nx57127z2, 
      datac=>m_o_image2_0(2));
   ix20836z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(3), dataa=>f_b1_next(3), datab=>nx57127z2, 
      datac=>m_o_image2_0(3));
   ix20836z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(4), dataa=>f_b1_next(4), datab=>nx57127z2, 
      datac=>m_o_image2_0(4));
   ix20836z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(5), dataa=>f_b1_next(5), datab=>nx57127z2, 
      datac=>m_o_image2_0(5));
   ix20836z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(6), dataa=>f_b1_next(6), datab=>nx57127z2, 
      datac=>m_o_image2_0(6));
   ix20836z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_b1(7), dataa=>f_b1_next(7), datab=>nx57127z2, 
      datac=>m_o_image2_0(7));
   ix20836z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(0), dataa=>f_t3_next(0), datab=>nx57127z2, 
      datac=>m_o_image0_0(0));
   ix20836z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(1), dataa=>f_t3_next(1), datab=>nx57127z2, 
      datac=>m_o_image0_0(1));
   ix20836z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(2), dataa=>f_t3_next(2), datab=>nx57127z2, 
      datac=>m_o_image0_0(2));
   ix20836z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(3), dataa=>f_t3_next(3), datab=>nx57127z2, 
      datac=>m_o_image0_0(3));
   ix20836z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(4), dataa=>f_t3_next(4), datab=>nx57127z2, 
      datac=>m_o_image0_0(4));
   ix20836z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(5), dataa=>f_t3_next(5), datab=>nx57127z2, 
      datac=>m_o_image0_0(5));
   ix20836z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(6), dataa=>f_t3_next(6), datab=>nx57127z2, 
      datac=>m_o_image0_0(6));
   ix20836z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t3(7), dataa=>f_t3_next(7), datab=>nx57127z2, 
      datac=>m_o_image0_0(7));
   ix20836z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(0), dataa=>f_t2_next(0), datab=>nx57127z2, 
      datac=>m_o_image0_1(0));
   ix20836z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(1), dataa=>f_t2_next(1), datab=>nx57127z2, 
      datac=>m_o_image0_1(1));
   ix20836z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(2), dataa=>f_t2_next(2), datab=>nx57127z2, 
      datac=>m_o_image0_1(2));
   ix20836z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(3), dataa=>f_t2_next(3), datab=>nx57127z2, 
      datac=>m_o_image0_1(3));
   ix20836z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(4), dataa=>f_t2_next(4), datab=>nx57127z2, 
      datac=>m_o_image0_1(4));
   ix20836z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(5), dataa=>f_t2_next(5), datab=>nx57127z2, 
      datac=>m_o_image0_1(5));
   ix20836z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(6), dataa=>f_t2_next(6), datab=>nx57127z2, 
      datac=>m_o_image0_1(6));
   ix20836z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t2(7), dataa=>f_t2_next(7), datab=>nx57127z2, 
      datac=>m_o_image0_1(7));
   ix20836z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(0), dataa=>f_t1_next(0), datab=>nx57127z2, 
      datac=>m_o_image0_2(0));
   ix20836z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(1), dataa=>f_t1_next(1), datab=>nx57127z2, 
      datac=>m_o_image0_2(1));
   ix20836z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(2), dataa=>f_t1_next(2), datab=>nx57127z2, 
      datac=>m_o_image0_2(2));
   ix20836z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(3), dataa=>f_t1_next(3), datab=>nx57127z2, 
      datac=>m_o_image0_2(3));
   ix20836z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(4), dataa=>f_t1_next(4), datab=>nx57127z2, 
      datac=>m_o_image0_2(4));
   ix20836z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(5), dataa=>f_t1_next(5), datab=>nx57127z2, 
      datac=>m_o_image0_2(5));
   ix20836z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(6), dataa=>f_t1_next(6), datab=>nx57127z2, 
      datac=>m_o_image0_2(6));
   ix20836z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>f_t1(7), dataa=>f_t1_next(7), datab=>nx57127z2, 
      datac=>m_o_image0_2(7));
   ix15976z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8ff") 
       port map ( combout=>o_mode(0), dataa=>p5m_1_dup_10, datab=>
      p5m_0_dup_14, datac=>m_o_mode(0), datad=>p_nrst_int);
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
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         px304 : IN std_logic ;
         p_m_o_mode_0 : IN std_logic ;
         p_nrst_int : IN std_logic) ;
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
         debug_num_8 : OUT std_logic_vector (3 DOWNTO 0) ;
         px304 : OUT std_logic ;
         p_m_o_mode_0 : OUT std_logic ;
         p_nrst_int : IN std_logic) ;
   end component ;
   signal nrst_EXMPLR1055, clk_EXMPLR1056, rxflex_EXMPLR1057: std_logic ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_sevenseg_0_EXMPLR1125: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_1_EXMPLR1126: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_2_EXMPLR1127: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_3_EXMPLR1128: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_4_EXMPLR1129: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_sevenseg_5_EXMPLR1130: std_logic_vector (3 DOWNTO 0) ;
   
   signal pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal nrst_int, clk_int, rxflex_int, txflex_EXMPLR1082, 
      o_sevenseg_15_EXMPLR1083: std_logic ;
   
   signal o_sevenseg_EXMPLR1131: std_logic_vector (14 DOWNTO 0) ;
   
   signal o_mode_EXMPLR1132: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR1101: std_logic ;
   
   signal debug_led_red_EXMPLR1133: std_logic_vector (16 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR1134: std_logic_vector (5 DOWNTO 0) ;
   
   signal o_nrst_dup0: std_logic ;
   
   signal debug_led_red_dup0: std_logic_vector (16 DOWNTO 16) ;
   
   signal o_sevenseg_dup0_7, nx59584z1, nx60581z1, nx61578z1, nx63572z1, 
      nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, nx58587z1, 
      nx62575z1, nx30z1, nx1027z1, nx28674z1, Tx_Reg_14n6ss1_0_dup_4, 
      NOT_rtlcn2_dup_5, nx41851z1, nx42848z1, nx43845z1, nx44842z1, 
      nx45839z1, nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, 
      nx63537z1, nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (94 downto 0 );

begin
   nrst_EXMPLR1055 <= nrst ;
   clk_EXMPLR1056 <= clk ;
   rxflex_EXMPLR1057 <= rxflex ;
   txflex <= txflex_EXMPLR1082 ;
   o_sevenseg(15) <= o_sevenseg_15_EXMPLR1083 ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR1131(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR1131(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR1131(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR1131(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR1131(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR1131(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR1131(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR1131(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR1131(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR1131(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR1131(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR1131(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR1131(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR1131(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR1131(0) ;
   o_mode(1) <= o_mode_EXMPLR1132(1) ;
   o_mode(0) <= o_mode_EXMPLR1132(0) ;
   o_nrst <= o_nrst_EXMPLR1101 ;
   debug_led_red(16) <= debug_led_red_EXMPLR1133(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR1133(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR1133(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR1133(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR1133(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR1133(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR1133(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR1133(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR1133(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR1133(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR1133(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR1133(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR1133(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR1133(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR1133(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR1133(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR1133(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR1134(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR1134(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR1134(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR1134(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR1134(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR1134(0) ;
   debug_sevenseg_0(3) <= debug_sevenseg_0_EXMPLR1125(3) ;
   debug_sevenseg_0(2) <= debug_sevenseg_0_EXMPLR1125(2) ;
   debug_sevenseg_0(1) <= debug_sevenseg_0_EXMPLR1125(1) ;
   debug_sevenseg_0(0) <= debug_sevenseg_0_EXMPLR1125(0) ;
   debug_sevenseg_1(3) <= debug_sevenseg_1_EXMPLR1126(3) ;
   debug_sevenseg_1(2) <= debug_sevenseg_1_EXMPLR1126(2) ;
   debug_sevenseg_1(1) <= debug_sevenseg_1_EXMPLR1126(1) ;
   debug_sevenseg_1(0) <= debug_sevenseg_1_EXMPLR1126(0) ;
   debug_sevenseg_2(3) <= debug_sevenseg_2_EXMPLR1127(3) ;
   debug_sevenseg_2(2) <= debug_sevenseg_2_EXMPLR1127(2) ;
   debug_sevenseg_2(1) <= debug_sevenseg_2_EXMPLR1127(1) ;
   debug_sevenseg_2(0) <= debug_sevenseg_2_EXMPLR1127(0) ;
   debug_sevenseg_3(3) <= debug_sevenseg_3_EXMPLR1128(3) ;
   debug_sevenseg_3(2) <= debug_sevenseg_3_EXMPLR1128(2) ;
   debug_sevenseg_3(1) <= debug_sevenseg_3_EXMPLR1128(1) ;
   debug_sevenseg_3(0) <= debug_sevenseg_3_EXMPLR1128(0) ;
   debug_sevenseg_4(3) <= debug_sevenseg_4_EXMPLR1129(3) ;
   debug_sevenseg_4(2) <= debug_sevenseg_4_EXMPLR1129(2) ;
   debug_sevenseg_4(1) <= debug_sevenseg_4_EXMPLR1129(1) ;
   debug_sevenseg_4(0) <= debug_sevenseg_4_EXMPLR1129(0) ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_EXMPLR1130(3) ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_EXMPLR1130(2) ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_EXMPLR1130(1) ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_EXMPLR1130(0) ;
   u_uw_uart : uw_uart port map ( clk=>clk_int, rst=>o_nrst_dup0, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>DANGLING(0), i_mode(0)=>
      o_mode_dup0(0), datain(7)=>pixel(7), datain(6)=>pixel(6), datain(5)=>
      pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), datain(2)=>
      pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), o_pixavail=>
      pixavail, rxflex=>rxflex_int, txflex=>DANGLING(1), p_Tx_Reg_14n6ss1_0
      =>Tx_Reg_14n6ss1_0_dup_4, p_NOT_rtlcn2=>NOT_rtlcn2_dup_5, px304=>
      DANGLING(2), p_m_o_mode_0=>DANGLING(3), p_nrst_int=>nrst_int);
   u_kirsch : kirsch port map ( i_clock=>clk_int, i_reset=>o_nrst_dup0, 
      i_valid=>pixavail, i_pixel(7)=>pixel(7), i_pixel(6)=>pixel(6), 
      i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), i_pixel(3)=>pixel(3), 
      i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), i_pixel(0)=>pixel(0), 
      o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>dir(2), o_dir(1)=>
      dir(1), o_dir(0)=>dir(0), o_mode(1)=>o_mode_dup0(1), o_mode(0)=>
      o_mode_dup0(0), o_row(7)=>rowcount(7), o_row(6)=>rowcount(6), o_row(5)
      =>rowcount(5), o_row(4)=>rowcount(4), o_row(3)=>rowcount(3), o_row(2)
      =>rowcount(2), o_row(1)=>rowcount(1), o_row(0)=>rowcount(0), 
      debug_key(3)=>DANGLING(4), debug_key(2)=>DANGLING(5), debug_key(1)=>
      DANGLING(6), debug_switch(17)=>DANGLING(7), debug_switch(16)=>DANGLING
      (8), debug_switch(15)=>DANGLING(9), debug_switch(14)=>DANGLING(10), 
      debug_switch(13)=>DANGLING(11), debug_switch(12)=>DANGLING(12), 
      debug_switch(11)=>DANGLING(13), debug_switch(10)=>DANGLING(14), 
      debug_switch(9)=>DANGLING(15), debug_switch(8)=>DANGLING(16), 
      debug_switch(7)=>DANGLING(17), debug_switch(6)=>DANGLING(18), 
      debug_switch(5)=>DANGLING(19), debug_switch(4)=>DANGLING(20), 
      debug_switch(3)=>DANGLING(21), debug_switch(2)=>DANGLING(22), 
      debug_switch(1)=>DANGLING(23), debug_switch(0)=>DANGLING(24), 
      debug_column(7)=>DANGLING(25), debug_column(6)=>DANGLING(26), 
      debug_column(5)=>DANGLING(27), debug_column(4)=>DANGLING(28), 
      debug_column(3)=>DANGLING(29), debug_column(2)=>DANGLING(30), 
      debug_column(1)=>DANGLING(31), debug_column(0)=>DANGLING(32), 
      debug_led_red(17)=>DANGLING(33), debug_led_red(16)=>DANGLING(34), 
      debug_led_red(15)=>DANGLING(35), debug_led_red(14)=>DANGLING(36), 
      debug_led_red(13)=>DANGLING(37), debug_led_red(12)=>DANGLING(38), 
      debug_led_red(11)=>DANGLING(39), debug_led_red(10)=>DANGLING(40), 
      debug_led_red(9)=>DANGLING(41), debug_led_red(8)=>DANGLING(42), 
      debug_led_red(7)=>DANGLING(43), debug_led_red(6)=>DANGLING(44), 
      debug_led_red(5)=>DANGLING(45), debug_led_red(4)=>DANGLING(46), 
      debug_led_red(3)=>DANGLING(47), debug_led_red(2)=>DANGLING(48), 
      debug_led_red(1)=>DANGLING(49), debug_led_red(0)=>DANGLING(50), 
      debug_led_grn(5)=>DANGLING(51), debug_led_grn(4)=>DANGLING(52), 
      debug_led_grn(3)=>DANGLING(53), debug_led_grn(2)=>DANGLING(54), 
      debug_led_grn(1)=>DANGLING(55), debug_led_grn(0)=>DANGLING(56), 
      debug_num_0(3)=>DANGLING(57), debug_num_0(2)=>DANGLING(58), 
      debug_num_0(1)=>DANGLING(59), debug_num_0(0)=>DANGLING(60), 
      debug_num_1(3)=>DANGLING(61), debug_num_1(2)=>DANGLING(62), 
      debug_num_1(1)=>DANGLING(63), debug_num_1(0)=>DANGLING(64), 
      debug_num_2(3)=>DANGLING(65), debug_num_2(2)=>DANGLING(66), 
      debug_num_2(1)=>DANGLING(67), debug_num_2(0)=>DANGLING(68), 
      debug_num_3(3)=>DANGLING(69), debug_num_3(2)=>DANGLING(70), 
      debug_num_3(1)=>DANGLING(71), debug_num_3(0)=>DANGLING(72), 
      debug_num_4(3)=>DANGLING(73), debug_num_4(2)=>DANGLING(74), 
      debug_num_4(1)=>DANGLING(75), debug_num_4(0)=>DANGLING(76), 
      debug_num_5(3)=>DANGLING(77), debug_num_5(2)=>DANGLING(78), 
      debug_num_5(1)=>DANGLING(79), debug_num_5(0)=>DANGLING(80), 
      debug_num_6(3)=>DANGLING(81), debug_num_6(2)=>DANGLING(82), 
      debug_num_6(1)=>DANGLING(83), debug_num_6(0)=>DANGLING(84), 
      debug_num_7(3)=>DANGLING(85), debug_num_7(2)=>DANGLING(86), 
      debug_num_7(1)=>DANGLING(87), debug_num_7(0)=>DANGLING(88), 
      debug_num_8(3)=>DANGLING(89), debug_num_8(2)=>DANGLING(90), 
      debug_num_8(1)=>DANGLING(91), debug_num_8(0)=>DANGLING(92), px304=>
      DANGLING(93), p_m_o_mode_0=>DANGLING(94), p_nrst_int=>nrst_int);
   o_nrst_dup0 <= NOT nrst_int;
   debug_led_red_dup0(16) <= '0';
   o_sevenseg_dup0_7 <= '1';
   nx21351z1 <= NOT nx21351z2;
   rxflex_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR1057);
   reg_out_txflex_obuf : cycloneii_lcell_ff port map ( regout=>nx21351z2, 
      datain=>Tx_Reg_14n6ss1_0_dup_4, clk=>clk_int, ena=>NOT_rtlcn2_dup_5, 
      aclr=>o_nrst_dup0);
   reg_out_o_sevenseg_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx50824z1, datain=>nx1027z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx49827z1, datain=>nx30z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx47833z1, datain=>nx63572z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx46836z1, datain=>nx62575z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx45839z1, datain=>nx61578z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx44842z1, datain=>nx60581z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx43845z1, datain=>nx59584z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_14 : cycloneii_lcell_ff port map ( regout=>
      nx992z1, datain=>nx29671z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_13 : cycloneii_lcell_ff port map ( regout=>
      nx65531z1, datain=>nx28674z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_12 : cycloneii_lcell_ff port map ( regout=>
      nx64534z1, datain=>nx27677z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_11 : cycloneii_lcell_ff port map ( regout=>
      nx63537z1, datain=>nx26680z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx62540z1, datain=>nx25683z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx42848z1, datain=>nx58587z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx41851z1, datain=>nx57590z1, clk=>clk_int);
   o_sevenseg_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(7), datain=>o_sevenseg_dup0_7
   );
   o_sevenseg_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_15_EXMPLR1083, datain=>o_sevenseg_dup0_7
   );
   o_nrst_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_nrst_EXMPLR1101, datain=>o_nrst_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1132(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR1132(0), datain=>o_mode_dup0(0));
   nrst_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>nrst_int, padio=>nrst_EXMPLR1055);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR1082, datain=>nx21351z1);
   ix992z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(14), datain=>nx992z1);
   ix65531z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(13), datain=>nx65531z1);
   ix64534z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(12), datain=>nx64534z1);
   ix63537z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(11), datain=>nx63537z1);
   ix62540z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(10), datain=>nx62540z1);
   ix50824z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(9), datain=>nx50824z1);
   ix49827z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(8), datain=>nx49827z1);
   ix47833z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(6), datain=>nx47833z1);
   ix46836z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(5), datain=>nx46836z1);
   ix45839z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(4), datain=>nx45839z1);
   ix44842z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(3), datain=>nx44842z1);
   ix43845z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(2), datain=>nx43845z1);
   ix42848z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(1), datain=>nx42848z1);
   ix41851z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR1131(0), datain=>nx41851z1);
   debug_sevenseg_5_triBus8_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR1130(3), datain=>
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
       port map ( padio=>debug_sevenseg_5_EXMPLR1130(2), datain=>
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
       port map ( padio=>debug_sevenseg_5_EXMPLR1130(1), datain=>
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
       port map ( padio=>debug_sevenseg_5_EXMPLR1130(0), datain=>
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
       port map ( padio=>debug_sevenseg_4_EXMPLR1129(3), datain=>
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
       port map ( padio=>debug_sevenseg_4_EXMPLR1129(2), datain=>
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
       port map ( padio=>debug_sevenseg_4_EXMPLR1129(1), datain=>
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
       port map ( padio=>debug_sevenseg_4_EXMPLR1129(0), datain=>
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
       port map ( padio=>debug_sevenseg_3_EXMPLR1128(3), datain=>
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
       port map ( padio=>debug_sevenseg_3_EXMPLR1128(2), datain=>
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
       port map ( padio=>debug_sevenseg_3_EXMPLR1128(1), datain=>
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
       port map ( padio=>debug_sevenseg_3_EXMPLR1128(0), datain=>
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
       port map ( padio=>debug_sevenseg_2_EXMPLR1127(3), datain=>
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
       port map ( padio=>debug_sevenseg_2_EXMPLR1127(2), datain=>
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
       port map ( padio=>debug_sevenseg_2_EXMPLR1127(1), datain=>
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
       port map ( padio=>debug_sevenseg_2_EXMPLR1127(0), datain=>
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
       port map ( padio=>debug_sevenseg_1_EXMPLR1126(3), datain=>
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
       port map ( padio=>debug_sevenseg_1_EXMPLR1126(2), datain=>
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
       port map ( padio=>debug_sevenseg_1_EXMPLR1126(1), datain=>
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
       port map ( padio=>debug_sevenseg_1_EXMPLR1126(0), datain=>
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
       port map ( padio=>debug_sevenseg_0_EXMPLR1125(3), datain=>
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
       port map ( padio=>debug_sevenseg_0_EXMPLR1125(2), datain=>
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
       port map ( padio=>debug_sevenseg_0_EXMPLR1125(1), datain=>
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
       port map ( padio=>debug_sevenseg_0_EXMPLR1125(0), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(9), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(8), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(7), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(6), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(5), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(4), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(3), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(2), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(16), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(15), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(14), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(13), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(12), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(11), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(10), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(1), datain=>
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
       port map ( padio=>debug_led_red_EXMPLR1133(0), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1134(5), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1134(4), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1134(3), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1134(2), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1134(1), datain=>
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
       port map ( padio=>debug_led_grn_EXMPLR1134(0), datain=>
      debug_led_red_dup0(16));
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR1056);
   ix28674z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx28674z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix1027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx1027z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix30z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx30z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix62575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx62575z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix58587z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx58587z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix57590z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx57590z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix29671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx29671z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix27677z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx27677z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix26680z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx26680z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix25683z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx25683z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix63572z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx63572z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix61578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx61578z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix60581z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx60581z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix59584z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx59584z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
end main ;

