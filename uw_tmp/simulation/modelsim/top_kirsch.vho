-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "07/22/2014 01:54:13"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	top_kirsch IS
    PORT (
	nrst : IN std_logic;
	clk : IN std_logic;
	rxflex : IN std_logic;
	txflex : OUT std_logic;
	o_sevenseg : OUT std_logic_vector(15 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_nrst : OUT std_logic;
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(16 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_sevenseg_0 : OUT std_logic_vector(3 DOWNTO 0);
	debug_sevenseg_1 : OUT std_logic_vector(3 DOWNTO 0);
	debug_sevenseg_2 : OUT std_logic_vector(3 DOWNTO 0);
	debug_sevenseg_3 : OUT std_logic_vector(3 DOWNTO 0);
	debug_sevenseg_4 : OUT std_logic_vector(3 DOWNTO 0);
	debug_sevenseg_5 : OUT std_logic_vector(3 DOWNTO 0)
	);
END top_kirsch;

ARCHITECTURE structure OF top_kirsch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rxflex : std_logic;
SIGNAL ww_txflex : std_logic;
SIGNAL ww_o_sevenseg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_nrst : std_logic;
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_sevenseg_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_sevenseg_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_sevenseg_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_sevenseg_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_sevenseg_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_sevenseg_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uw_uart|i_uarts|nx61140z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z5\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z7\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28624z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx35603z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDivisor_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx30069z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx47386z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx29621z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z19\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z15\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx64508z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z7\ : std_logic;
SIGNAL \u_uw_uart|nx39480z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart|nx39480z7\ : std_logic;
SIGNAL \u_uw_uart|nx39480z5\ : std_logic;
SIGNAL \u_uw_uart|nx40736z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx24934z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|rawrx\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_edge\ : std_logic;
SIGNAL \u_uw_uart|nx38742z1\ : std_logic;
SIGNAL \u_uw_uart|nx40736z3\ : std_logic;
SIGNAL \u_uw_uart|nx40736z2\ : std_logic;
SIGNAL \u_uw_uart|mdata_1_\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30618z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z16\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx19090z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx20087z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx19799z1\ : std_logic;
SIGNAL \u_kirsch|f_i_mode_next_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx10367z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_edge\ : std_logic;
SIGNAL \u_kirsch|u_flow|p41\ : std_logic;
SIGNAL \u_kirsch|u_flow|p45\ : std_logic;
SIGNAL \u_kirsch|u_flow|max_fwd\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_13_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_13_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_12_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_12_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_11_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_11_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p43_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|prev_max_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z40\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z37\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z34\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z31\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z28\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z25\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix47310z8933|nx100z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z8\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z5\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z11\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z12\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx30752z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|max_dir_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_dir_0_\ : std_logic;
SIGNAL \u_uw_uart|mdata_2_\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx31615z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p40\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_3_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_3_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_3_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx5049z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47310z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_11_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z33\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z30\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z27\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z24\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z21\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z18\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z15\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z12\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_12_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p30\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26026z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26026z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26026z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p35\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_13_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p4s_12_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx27830z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|max_dir_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_dir_1_\ : std_logic;
SIGNAL \u_uw_uart|mdata_3_\ : std_logic;
SIGNAL \u_uw_uart|sdout_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32612z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60567z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60567z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_11_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_11_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_12_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_12_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z37\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z34\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z31\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z28\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z25\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_10_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_9_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_8_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p23_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p20\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26833z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26833z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26833z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|max_dir_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_dir_2_\ : std_logic;
SIGNAL \u_uw_uart|mdata_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx33609z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__7_\ : std_logic;
SIGNAL \u_kirsch|f_t2_7_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__7_\ : std_logic;
SIGNAL \u_kirsch|f_t1_7_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__6_\ : std_logic;
SIGNAL \u_kirsch|f_t2_6_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__6_\ : std_logic;
SIGNAL \u_kirsch|f_t1_6_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__5_\ : std_logic;
SIGNAL \u_kirsch|f_t2_5_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__5_\ : std_logic;
SIGNAL \u_kirsch|f_t1_5_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__4_\ : std_logic;
SIGNAL \u_kirsch|f_t2_4_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__4_\ : std_logic;
SIGNAL \u_kirsch|f_t1_4_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__3_\ : std_logic;
SIGNAL \u_kirsch|f_t2_3_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__3_\ : std_logic;
SIGNAL \u_kirsch|f_t1_3_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__2_\ : std_logic;
SIGNAL \u_kirsch|f_t2_2_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__2_\ : std_logic;
SIGNAL \u_kirsch|f_t1_2_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__1_\ : std_logic;
SIGNAL \u_kirsch|f_t2_1_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__1_\ : std_logic;
SIGNAL \u_kirsch|f_t1_1_\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_2__0_\ : std_logic;
SIGNAL \u_kirsch|f_t1_0_\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__0_\ : std_logic;
SIGNAL \u_kirsch|f_t2_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add8_0i1|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__7_\ : std_logic;
SIGNAL \u_kirsch|f_t3_7_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__6_\ : std_logic;
SIGNAL \u_kirsch|f_t3_6_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__5_\ : std_logic;
SIGNAL \u_kirsch|f_t3_5_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__4_\ : std_logic;
SIGNAL \u_kirsch|f_t3_4_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__3_\ : std_logic;
SIGNAL \u_kirsch|f_t3_3_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__2_\ : std_logic;
SIGNAL \u_kirsch|f_t3_2_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__1_\ : std_logic;
SIGNAL \u_kirsch|f_t3_1_\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__0_\ : std_logic;
SIGNAL \u_kirsch|f_t3_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z24\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z21\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z18\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z15\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z12\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p11_add9_1|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__7_\ : std_logic;
SIGNAL \u_kirsch|f_b2_7_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__7_\ : std_logic;
SIGNAL \u_kirsch|f_b1_7_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__6_\ : std_logic;
SIGNAL \u_kirsch|f_b2_6_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__6_\ : std_logic;
SIGNAL \u_kirsch|f_b1_6_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__5_\ : std_logic;
SIGNAL \u_kirsch|f_b2_5_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__5_\ : std_logic;
SIGNAL \u_kirsch|f_b1_5_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__4_\ : std_logic;
SIGNAL \u_kirsch|f_b2_4_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__4_\ : std_logic;
SIGNAL \u_kirsch|f_b1_4_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__3_\ : std_logic;
SIGNAL \u_kirsch|f_b2_3_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__3_\ : std_logic;
SIGNAL \u_kirsch|f_b1_3_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__2_\ : std_logic;
SIGNAL \u_kirsch|f_b2_2_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__2_\ : std_logic;
SIGNAL \u_kirsch|f_b1_2_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__1_\ : std_logic;
SIGNAL \u_kirsch|f_b2_1_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__1_\ : std_logic;
SIGNAL \u_kirsch|f_b1_1_\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_0__0_\ : std_logic;
SIGNAL \u_kirsch|f_b1_0_\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_1__0_\ : std_logic;
SIGNAL \u_kirsch|f_b2_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add8_0i2|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__7_\ : std_logic;
SIGNAL \u_kirsch|f_b3_7_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__6_\ : std_logic;
SIGNAL \u_kirsch|f_b3_6_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__5_\ : std_logic;
SIGNAL \u_kirsch|f_b3_5_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__4_\ : std_logic;
SIGNAL \u_kirsch|f_b3_4_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__3_\ : std_logic;
SIGNAL \u_kirsch|f_b3_3_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__2_\ : std_logic;
SIGNAL \u_kirsch|f_b3_2_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__1_\ : std_logic;
SIGNAL \u_kirsch|f_b3_1_\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__0_\ : std_logic;
SIGNAL \u_kirsch|f_b3_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z24\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z21\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z18\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z15\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z12\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p12_add9_2|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z29\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z23\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z17\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z11\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z8\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z29\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z23\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z17\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z11\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z8\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z6\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p21_add12_4i1|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p22_add12_4i2|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__7_\ : std_logic;
SIGNAL \u_kirsch|f_i2_7_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__7_\ : std_logic;
SIGNAL \u_kirsch|f_i1_7_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__6_\ : std_logic;
SIGNAL \u_kirsch|f_i2_6_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__6_\ : std_logic;
SIGNAL \u_kirsch|f_i1_6_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__5_\ : std_logic;
SIGNAL \u_kirsch|f_i2_5_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__5_\ : std_logic;
SIGNAL \u_kirsch|f_i1_5_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__4_\ : std_logic;
SIGNAL \u_kirsch|f_i2_4_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__4_\ : std_logic;
SIGNAL \u_kirsch|f_i1_4_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__3_\ : std_logic;
SIGNAL \u_kirsch|f_i2_3_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__3_\ : std_logic;
SIGNAL \u_kirsch|f_i1_3_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__2_\ : std_logic;
SIGNAL \u_kirsch|f_i2_2_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__2_\ : std_logic;
SIGNAL \u_kirsch|f_i1_2_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__1_\ : std_logic;
SIGNAL \u_kirsch|f_i2_1_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__1_\ : std_logic;
SIGNAL \u_kirsch|f_i1_1_\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_0__0_\ : std_logic;
SIGNAL \u_kirsch|f_i1_0_\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_2__0_\ : std_logic;
SIGNAL \u_kirsch|f_i2_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z19\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z17\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z15\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z13\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z11\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z9\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z7\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z5\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|p13_add9_3|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|nx20836z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx25836z2\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx25836z3\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx25836z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_4_\ : std_logic;
SIGNAL \u_uw_uart|sdout_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34606z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\ : std_logic;
SIGNAL \u_kirsch|nx57127z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__dup0_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_current_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_current_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|b_0__dup_353\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx62359z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx62359z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|b_1__dup_352\ : std_logic;
SIGNAL \u_kirsch|u_memory|b_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx63578z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx63578z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|b_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx61362z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx61362z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx64575z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx64575z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60365z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60365z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx36z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx36z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_4_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx59368z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx59368z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx1033z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx1033z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_3_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx58371z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx58371z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx2030z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx2030z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx57374z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx57374z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx3027z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx3027z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx56377z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx56377z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx4024z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx4024z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_data_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx5021z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx5021z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx55380z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx55380z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_current_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx57224z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_2_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx39109z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx39109z4\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx40106z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx39109z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx39109z5\ : std_logic;
SIGNAL \u_uw_uart|rdata_7_\ : std_logic;
SIGNAL \u_uw_uart|datain_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_1_\ : std_logic;
SIGNAL \u_uw_uart|rdata_6_\ : std_logic;
SIGNAL \u_uw_uart|datain_6_\ : std_logic;
SIGNAL \u_uw_uart|rdata_5_\ : std_logic;
SIGNAL \u_uw_uart|datain_5_\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_\ : std_logic;
SIGNAL \u_uw_uart|datain_4_\ : std_logic;
SIGNAL \u_uw_uart|rdata_3_\ : std_logic;
SIGNAL \u_uw_uart|datain_3_\ : std_logic;
SIGNAL \u_uw_uart|rdata_2_\ : std_logic;
SIGNAL \u_uw_uart|datain_2_\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_\ : std_logic;
SIGNAL \u_uw_uart|datain_1_\ : std_logic;
SIGNAL \u_uw_uart|rdata_0_\ : std_logic;
SIGNAL \u_uw_uart|datain_0_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx17757z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx15763z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx15763z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54636z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_mode_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx30069z1~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx24934z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_edge~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_11_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_12_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_10_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p31_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_10_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p32_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i2_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t1_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t2_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image1_1__2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i1_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b1_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b2_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_0__6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_t3_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_b3_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image0_1__6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_image2_2__0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopTx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|nx33354z2\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Rx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_Rx_r\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx65151z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopRx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx14544z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30017z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxRDY\ : std_logic;
SIGNAL \u_uw_uart|nx58116z1\ : std_logic;
SIGNAL \u_uw_uart|o_pixavail\ : std_logic;
SIGNAL \u_uw_uart|nx39480z1\ : std_logic;
SIGNAL \u_uw_uart|ack\ : std_logic;
SIGNAL \u_uw_uart|nx33354z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z31\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z30\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z29\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z28\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z27\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z26\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z25\ : std_logic;
SIGNAL \u_uw_uart|nx39480z4\ : std_logic;
SIGNAL \u_kirsch|u_flow|state_3_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx29521z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx28524z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx28524z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|state_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|state_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|state_3_\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_valid\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z24\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z23\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z22\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z20\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z18\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z17\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z21\ : std_logic;
SIGNAL \u_uw_uart|nx39480z3\ : std_logic;
SIGNAL \u_uw_uart|nx39480z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxErr\ : std_logic;
SIGNAL \u_uw_uart|nx46385z1\ : std_logic;
SIGNAL \u_uw_uart|dsend\ : std_logic;
SIGNAL \u_uw_uart|nx38868z1\ : std_logic;
SIGNAL \u_uw_uart|state\ : std_logic;
SIGNAL \u_uw_uart|nx18433z1\ : std_logic;
SIGNAL \u_uw_uart|ld_sdout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx5605z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx61812z1\ : std_logic;
SIGNAL nx21351z2 : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx51271z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx53265z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|first_bubble\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx57253z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z4\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx47386z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z15\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z14\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx52268z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z13\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z12\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z10\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx54262z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z9\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z8\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z6\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx56256z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z4\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx1041z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60567z4\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx55259z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_column|nx58250z7\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60567z5\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z14\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx52268z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx55259z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|not_rtlc2_X_0_n244\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx57253z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z7\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx1041z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z6\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx8852z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z13\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z12\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z10\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx54262z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z9\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z8\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z6\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx56256z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z5\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z4\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z3\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60567z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|nx60567z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_valid\ : std_logic;
SIGNAL \u_kirsch|nx64956z1\ : std_logic;
SIGNAL \u_kirsch|f_state_3_\ : std_logic;
SIGNAL \u_kirsch|f_state_3_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|nx63959z1\ : std_logic;
SIGNAL \u_kirsch|nx63959z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|f_state_1_\ : std_logic;
SIGNAL \u_kirsch|f_state_2_\ : std_logic;
SIGNAL \u_kirsch|nx57127z2\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx51271z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z15\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_0_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|nx35105z1\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_0_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx22790z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx27925z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx33060z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx33060z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_1_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_1_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx21793z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26928z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26928z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx32063z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx32063z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_1_\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx53265z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|modgen_counter_row|nx58250z11\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_2_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_2_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx20796z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx25931z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx25931z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx31066z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx31066z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_2_\ : std_logic;
SIGNAL nx57590z1 : std_logic;
SIGNAL nx41851z1 : std_logic;
SIGNAL nx58587z1 : std_logic;
SIGNAL nx42848z1 : std_logic;
SIGNAL nx59584z1 : std_logic;
SIGNAL nx43845z1 : std_logic;
SIGNAL nx60581z1 : std_logic;
SIGNAL nx44842z1 : std_logic;
SIGNAL nx61578z1 : std_logic;
SIGNAL nx45839z1 : std_logic;
SIGNAL nx62575z1 : std_logic;
SIGNAL nx46836z1 : std_logic;
SIGNAL nx63572z1 : std_logic;
SIGNAL nx47833z1 : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_6_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_6_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_6_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx16808z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx21943z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx21943z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx27078z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx27078z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_6_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_5_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_5_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_5_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx17805z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx22940z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx22940z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx28075z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx28075z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_5_\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_7_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_7_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_7_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx15811z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx20946z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx20946z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26081z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx26081z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_7_\ : std_logic;
SIGNAL nx30z1 : std_logic;
SIGNAL nx49827z1 : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_row_4_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_i_row_next_4_\ : std_logic;
SIGNAL \u_kirsch|f_i_row_4_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx18802z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx23937z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx29072z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx29072z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|o_row_4_\ : std_logic;
SIGNAL nx1027z1 : std_logic;
SIGNAL nx50824z1 : std_logic;
SIGNAL nx25683z1 : std_logic;
SIGNAL nx62540z1 : std_logic;
SIGNAL nx26680z1 : std_logic;
SIGNAL nx63537z1 : std_logic;
SIGNAL nx27677z1 : std_logic;
SIGNAL nx64534z1 : std_logic;
SIGNAL nx28674z1 : std_logic;
SIGNAL nx65531z1 : std_logic;
SIGNAL nx29671z1 : std_logic;
SIGNAL nx992z1 : std_logic;
SIGNAL \u_kirsch|u_memory|nx33254z1\ : std_logic;
SIGNAL \u_kirsch|u_memory|busySignal\ : std_logic;
SIGNAL \u_kirsch|u_memory|busySignalDelayed~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|busySignalDelayed\ : std_logic;
SIGNAL \u_kirsch|u_memory|o_mode_0_\ : std_logic;
SIGNAL \u_kirsch|f_i_mode_next_0_\ : std_logic;
SIGNAL \u_kirsch|f_i_mode_0_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx42010z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47145z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx47145z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx13256z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx13256z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p5m_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|p5m_0_\ : std_logic;
SIGNAL \u_kirsch|f_i_mode_1_\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx41013z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx46148z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx46148z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx14253z1~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|u_flow|nx14253z1\ : std_logic;
SIGNAL \u_kirsch|u_flow|p5m_1_\ : std_logic;
SIGNAL \u_kirsch|o_mode_0_\ : std_logic;
SIGNAL \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_nx21351z2 : std_logic;
SIGNAL \ALT_INV_nrst~combout\ : std_logic;
SIGNAL \u_kirsch|u_memory|ALT_INV_first_bubble\ : std_logic;
SIGNAL \u_kirsch|u_flow|ALT_INV_o_valid\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk <= clk;
ww_rxflex <= rxflex;
txflex <= ww_txflex;
o_sevenseg <= ww_o_sevenseg;
o_mode <= ww_o_mode;
o_nrst <= ww_o_nrst;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_sevenseg_0 <= ww_debug_sevenseg_0;
debug_sevenseg_1 <= ww_debug_sevenseg_1;
debug_sevenseg_2 <= ww_debug_sevenseg_2;
debug_sevenseg_3 <= ww_debug_sevenseg_3;
debug_sevenseg_4 <= ww_debug_sevenseg_4;
debug_sevenseg_5 <= ww_debug_sevenseg_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_kirsch|u_memory|mem_data_7_\ & \u_kirsch|u_memory|mem_data_6_\ & \u_kirsch|u_memory|mem_data_5_\ & \u_kirsch|u_memory|mem_data_4_\ & 
\u_kirsch|u_memory|mem_data_3_\ & \u_kirsch|u_memory|mem_data_2_\ & \u_kirsch|u_memory|mem_data_1_\ & \u_kirsch|u_memory|mem_data_0_\);

\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|u_memory|modgen_counter_column|nx1041z1\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ & 
\u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z9\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z13\ & 
\u_kirsch|u_memory|modgen_counter_column|nx58250z15\);

\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7) <= \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_kirsch|u_memory|mem_data_7_\ & \u_kirsch|u_memory|mem_data_6_\ & \u_kirsch|u_memory|mem_data_5_\ & \u_kirsch|u_memory|mem_data_4_\ & 
\u_kirsch|u_memory|mem_data_3_\ & \u_kirsch|u_memory|mem_data_2_\ & \u_kirsch|u_memory|mem_data_1_\ & \u_kirsch|u_memory|mem_data_0_\);

\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|u_memory|modgen_counter_column|nx1041z1\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ & 
\u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z9\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z13\ & 
\u_kirsch|u_memory|modgen_counter_column|nx58250z15\);

\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(0) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(1) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(2) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(3) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(4) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(5) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(6) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(7) <= \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_kirsch|u_memory|mem_data_7_\ & \u_kirsch|u_memory|mem_data_6_\ & \u_kirsch|u_memory|mem_data_5_\ & \u_kirsch|u_memory|mem_data_4_\ & 
\u_kirsch|u_memory|mem_data_3_\ & \u_kirsch|u_memory|mem_data_2_\ & \u_kirsch|u_memory|mem_data_1_\ & \u_kirsch|u_memory|mem_data_0_\);

\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|u_memory|modgen_counter_column|nx1041z1\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ & 
\u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z9\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z13\ & 
\u_kirsch|u_memory|modgen_counter_column|nx58250z15\);

\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(0) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(1) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(2) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(3) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(4) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(5) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(6) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(7) <= \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
ALT_INV_nx21351z2 <= NOT nx21351z2;
\ALT_INV_nrst~combout\ <= NOT \nrst~combout\;
\u_kirsch|u_memory|ALT_INV_first_bubble\ <= NOT \u_kirsch|u_memory|first_bubble\;
\u_kirsch|u_flow|ALT_INV_o_valid\ <= NOT \u_kirsch|u_flow|o_valid\;

\u_uw_uart|i_uarts|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx61140z1\);

\u_kirsch|u_flow|ix258_reg_p5r_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_row_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_3_\);

\u_kirsch|u_memory|ix8852z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z5\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|modgen_counter_column|nx58250z7\,
	datad => \u_kirsch|u_memory|modgen_counter_column|nx58250z9\,
	combout => \u_kirsch|u_memory|nx8852z5\);

\u_kirsch|u_memory|ix8852z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z7\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z13\ & \u_kirsch|u_memory|modgen_counter_row|nx58250z11\ & \u_kirsch|u_memory|modgen_counter_row|nx58250z15\ & \u_kirsch|u_memory|modgen_counter_row|nx58250z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_row|nx58250z13\,
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z11\,
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z15\,
	datad => \u_kirsch|u_memory|modgen_counter_row|nx58250z9\,
	combout => \u_kirsch|u_memory|nx8852z7\);

\u_uw_uart|reg_sdout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_0_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx28624z1\);

\u_uw_uart|i_uarts|ix28624z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx28624z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx28624z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\);

\u_uw_uart|i_uarts|ix35603z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx35603z1\ = !\u_uw_uart|i_uarts|TxFSM_0_\ & (\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|ld_sdout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|ld_sdout\,
	combout => \u_uw_uart|i_uarts|nx35603z1\);

\u_uw_uart|i_uarts|reg_TxDivisor_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDivisor_5_\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\);

\u_uw_uart|i_uarts|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z5\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	combout => \u_uw_uart|i_uarts|nx32400z5\);

\u_uw_uart|i_uarts|ix32400z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z7\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	combout => \u_uw_uart|i_uarts|nx32400z7\);

\u_kirsch|u_flow|ix258_reg_p4r_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx30069z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx30069z1\);

\u_kirsch|u_memory|ix47386z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx47386z1\ = \u_kirsch|u_memory|nx8852z2\ # !\u_uw_uart|o_pixavail\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z2\,
	datab => \nrst~combout\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|u_memory|nx47386z1\);

\u_uw_uart|reg_mdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_0_~feeder_combout\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|u_flow|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_0_\);

\u_uw_uart|reg_sdout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_1_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx29621z1\);

\u_uw_uart|i_uarts|ix29621z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx29621z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|sdout_1_\,
	datac => \u_uw_uart|i_uarts|nx29621z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\);

\u_uw_uart|i_uarts|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z2\ = !\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx50920z2\);

\u_uw_uart|modgen_counter_waitcount|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z19\);

\u_uw_uart|modgen_counter_waitcount|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z13\);

\u_uw_uart|modgen_counter_waitcount|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z15\);

\u_uw_uart|modgen_counter_waitcount|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx22081z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx64508z1\);

\u_uw_uart|modgen_counter_waitcount|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z3\);

\u_uw_uart|modgen_counter_waitcount|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z5\);

\u_uw_uart|modgen_counter_waitcount|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z7\);

\u_uw_uart|ix39480z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z6\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & !\u_uw_uart|modgen_counter_waitcount|nx64508z1\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	combout => \u_uw_uart|nx39480z6\);

\u_uw_uart|modgen_counter_waitcount|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z9\);

\u_uw_uart|modgen_counter_waitcount|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z11\);

\u_uw_uart|ix39480z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z7\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	combout => \u_uw_uart|nx39480z7\);

\u_uw_uart|ix39480z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z5\ = \u_uw_uart|nx39480z6\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & \u_uw_uart|nx39480z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z6\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	datad => \u_uw_uart|nx39480z7\,
	combout => \u_uw_uart|nx39480z5\);

\u_uw_uart|ix40736z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z1\ = \u_uw_uart|o_pixavail\ # \u_uw_uart|ack\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx40736z1\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\);

\u_kirsch|u_flow|ix258_reg_p3r_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx24934z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx24934z1\);

\u_uw_uart|i_uarts|ix34394z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z6\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & !\u_uw_uart|i_uarts|TxDivisor_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	datad => \u_uw_uart|i_uarts|TxDivisor_5_\,
	combout => \u_uw_uart|i_uarts|nx34394z6\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\);

\u_uw_uart|i_uarts|ix34394z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z7\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	combout => \u_uw_uart|i_uarts|nx34394z7\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\);

\u_uw_uart|i_uarts|ix34394z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z8\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	combout => \u_uw_uart|i_uarts|nx34394z8\);

\u_uw_uart|i_uarts|ix34394z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z5\ = \u_uw_uart|i_uarts|nx34394z8\ & \u_uw_uart|i_uarts|nx34394z6\ & \u_uw_uart|i_uarts|nx34394z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx34394z8\,
	datac => \u_uw_uart|i_uarts|nx34394z6\,
	datad => \u_uw_uart|i_uarts|nx34394z7\,
	combout => \u_uw_uart|i_uarts|nx34394z5\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx10367z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_1_\);

\u_uw_uart|ix15671z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx\ = \nrst~combout\ & \rxflex~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|rawrx\);

\u_kirsch|u_flow|reg_tmp_o_edge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_edge~feeder_combout\,
	sdata => \u_kirsch|u_flow|p41\,
	sload => \u_kirsch|u_flow|nx30752z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_edge\);

\u_uw_uart|ix38742z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx38742z1\ = \u_uw_uart|o_pixavail\ & (!\nrst~combout\ & \u_kirsch|o_mode_0_\) # !\u_uw_uart|o_pixavail\ & (!\nrst~combout\ & \u_kirsch|o_mode_0_\ # !\u_uw_uart|ack\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_uw_uart|ack\,
	datac => \nrst~combout\,
	datad => \u_kirsch|o_mode_0_\,
	combout => \u_uw_uart|nx38742z1\);

\u_uw_uart|ix40736z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z3\ = \u_uw_uart|o_pixavail\ & (\u_uw_uart|nx39480z2\) # !\u_uw_uart|o_pixavail\ & (\u_uw_uart|ack\ & (\u_uw_uart|nx39480z2\) # !\u_uw_uart|ack\ & \u_uw_uart|i_uarts|RxErr\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxErr\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|nx39480z2\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx40736z3\);

\u_uw_uart|ix40736z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z2\ = \nrst~combout\ & \u_uw_uart|nx40736z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nrst~combout\,
	datad => \u_uw_uart|nx40736z3\,
	combout => \u_uw_uart|nx40736z2\);

\u_uw_uart|reg_mdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_dir_0_\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|u_flow|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_1_\);

\u_uw_uart|reg_sdout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_2_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx30618z1\);

\u_uw_uart|i_uarts|ix30618z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx30618z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_2_\,
	datad => \u_uw_uart|i_uarts|nx30618z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx57253z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z19\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z20\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z20\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z18\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z20\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z18\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx58250z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z17\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z18\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z18\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z16\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z18\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z18\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z16\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx59247z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z15\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z16\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z16\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z14\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z16\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z14\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx60244z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z13\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z14\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z14\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z12\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z14\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z14\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z12\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx17096z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z11\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z12\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z12\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z10\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z12\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z10\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx18093z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z9\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z10\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z10\ # GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z8\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z10\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z10\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z8\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx19090z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z7\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z8\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z8\ & 
-- VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z6\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z8\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z6\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx20087z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z5\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z6\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z6\ # GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z4\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z6\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z6\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z4\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx21084z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z3\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z4\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z4\ & 
-- VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z2\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z4\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z2\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx22081z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z2\ $ \u_uw_uart|modgen_counter_waitcount|nx64508z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z2\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx22081z1\);

\u_kirsch|u_flow|ix258_reg_p2r_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx19799z1\);

\u_kirsch|reg_f_i_mode_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_mode_next_1_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_mode_next_1_\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\);

\u_uw_uart|i_uarts|ix9370z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z2\ = \u_uw_uart|i_uarts|RxBitCnt_1_\ & \u_uw_uart|i_uarts|RxBitCnt_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx9370z2\);

\u_uw_uart|i_uarts|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx10367z1\ = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ $ \u_uw_uart|i_uarts|RxBitCnt_1_\) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|RxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	combout => \u_uw_uart|i_uarts|nx10367z1\);

\u_kirsch|u_flow|reg_prev_edge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p41\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_edge\);

\u_kirsch|u_flow|reg_p41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx26026z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p41\);

\u_kirsch|u_flow|reg_p45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p35\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p45\);

\u_kirsch|u_flow|reg_max_fwd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p45\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|max_fwd\);

\u_kirsch|u_flow|reg_prev_max_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_13_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_13_\);

\u_kirsch|u_flow|reg_p43_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_13_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_13_\);

\u_kirsch|u_flow|reg_prev_max_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_12_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_12_\);

\u_kirsch|u_flow|reg_p43_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_12_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_12_\);

\u_kirsch|u_flow|reg_prev_max_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_11_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_11_\);

\u_kirsch|u_flow|reg_p43_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx63795z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_11_\);

\u_kirsch|u_flow|reg_prev_max_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_10_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_10_\);

\u_kirsch|u_flow|reg_p43_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx62798z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_10_\);

\u_kirsch|u_flow|reg_prev_max_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_9_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_9_\);

\u_kirsch|u_flow|reg_p43_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx46946z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_9_\);

\u_kirsch|u_flow|reg_prev_max_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_8_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_8_\);

\u_kirsch|u_flow|reg_p43_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_8_\);

\u_kirsch|u_flow|reg_prev_max_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_7_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_7_\);

\u_kirsch|u_flow|reg_p43_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_7_\);

\u_kirsch|u_flow|reg_prev_max_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_6_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_6_\);

\u_kirsch|u_flow|reg_p43_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_6_\);

\u_kirsch|u_flow|reg_prev_max_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_5_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_5_\);

\u_kirsch|u_flow|reg_p43_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_5_\);

\u_kirsch|u_flow|reg_prev_max_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_4_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_4_\);

\u_kirsch|u_flow|reg_p43_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_4_\);

\u_kirsch|u_flow|reg_prev_max_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_3_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_3_\);

\u_kirsch|u_flow|reg_p43_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_3_\);

\u_kirsch|u_flow|reg_prev_max_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_2_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_2_\);

\u_kirsch|u_flow|reg_p43_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_2_\);

\u_kirsch|u_flow|reg_prev_max_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_1_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_1_\);

\u_kirsch|u_flow|reg_p43_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_1_\);

\u_kirsch|u_flow|reg_p43_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p4s_sub12_0|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p43_0_\);

\u_kirsch|u_flow|reg_prev_max_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p43_0_\,
	sclr => \u_kirsch|u_flow|nx5049z1\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx47310z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|prev_max_0_\);

\u_kirsch|u_flow|ix47310z8933|ix100z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z40\ = CARRY(!\u_kirsch|u_flow|prev_max_0_\ & \u_kirsch|u_flow|p43_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_0_\,
	datab => \u_kirsch|u_flow|p43_0_\,
	datad => VCC,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z40\);

\u_kirsch|u_flow|ix47310z8933|ix100z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z37\ = CARRY(\u_kirsch|u_flow|p43_1_\ & \u_kirsch|u_flow|prev_max_1_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z40\ # !\u_kirsch|u_flow|p43_1_\ & (\u_kirsch|u_flow|prev_max_1_\ # !\u_kirsch|u_flow|ix47310z8933|nx100z40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_1_\,
	datab => \u_kirsch|u_flow|prev_max_1_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z40\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z37\);

\u_kirsch|u_flow|ix47310z8933|ix100z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z34\ = CARRY(\u_kirsch|u_flow|prev_max_2_\ & \u_kirsch|u_flow|p43_2_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z37\ # !\u_kirsch|u_flow|prev_max_2_\ & (\u_kirsch|u_flow|p43_2_\ # !\u_kirsch|u_flow|ix47310z8933|nx100z37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_2_\,
	datab => \u_kirsch|u_flow|p43_2_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z37\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z34\);

\u_kirsch|u_flow|ix47310z8933|ix100z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z31\ = CARRY(\u_kirsch|u_flow|prev_max_3_\ & (!\u_kirsch|u_flow|ix47310z8933|nx100z34\ # !\u_kirsch|u_flow|p43_3_\) # !\u_kirsch|u_flow|prev_max_3_\ & !\u_kirsch|u_flow|p43_3_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_3_\,
	datab => \u_kirsch|u_flow|p43_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z34\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z31\);

\u_kirsch|u_flow|ix47310z8933|ix100z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z28\ = CARRY(\u_kirsch|u_flow|prev_max_4_\ & \u_kirsch|u_flow|p43_4_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z31\ # !\u_kirsch|u_flow|prev_max_4_\ & (\u_kirsch|u_flow|p43_4_\ # !\u_kirsch|u_flow|ix47310z8933|nx100z31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_4_\,
	datab => \u_kirsch|u_flow|p43_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z31\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z28\);

\u_kirsch|u_flow|ix47310z8933|ix100z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z25\ = CARRY(\u_kirsch|u_flow|prev_max_5_\ & (!\u_kirsch|u_flow|ix47310z8933|nx100z28\ # !\u_kirsch|u_flow|p43_5_\) # !\u_kirsch|u_flow|prev_max_5_\ & !\u_kirsch|u_flow|p43_5_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_5_\,
	datab => \u_kirsch|u_flow|p43_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z28\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z25\);

\u_kirsch|u_flow|ix47310z8933|ix100z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z22\ = CARRY(\u_kirsch|u_flow|p43_6_\ & (!\u_kirsch|u_flow|ix47310z8933|nx100z25\ # !\u_kirsch|u_flow|prev_max_6_\) # !\u_kirsch|u_flow|p43_6_\ & !\u_kirsch|u_flow|prev_max_6_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_6_\,
	datab => \u_kirsch|u_flow|prev_max_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z25\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z22\);

\u_kirsch|u_flow|ix47310z8933|ix100z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z19\ = CARRY(\u_kirsch|u_flow|p43_7_\ & \u_kirsch|u_flow|prev_max_7_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z22\ # !\u_kirsch|u_flow|p43_7_\ & (\u_kirsch|u_flow|prev_max_7_\ # !\u_kirsch|u_flow|ix47310z8933|nx100z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_7_\,
	datab => \u_kirsch|u_flow|prev_max_7_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z22\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z19\);

\u_kirsch|u_flow|ix47310z8933|ix100z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z16\ = CARRY(\u_kirsch|u_flow|p43_8_\ & (!\u_kirsch|u_flow|ix47310z8933|nx100z19\ # !\u_kirsch|u_flow|prev_max_8_\) # !\u_kirsch|u_flow|p43_8_\ & !\u_kirsch|u_flow|prev_max_8_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_8_\,
	datab => \u_kirsch|u_flow|prev_max_8_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z19\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z16\);

\u_kirsch|u_flow|ix47310z8933|ix100z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z13\ = CARRY(\u_kirsch|u_flow|prev_max_9_\ & (!\u_kirsch|u_flow|ix47310z8933|nx100z16\ # !\u_kirsch|u_flow|p43_9_\) # !\u_kirsch|u_flow|prev_max_9_\ & !\u_kirsch|u_flow|p43_9_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_9_\,
	datab => \u_kirsch|u_flow|p43_9_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z16\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z13\);

\u_kirsch|u_flow|ix47310z8933|ix100z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z10\ = CARRY(\u_kirsch|u_flow|prev_max_10_\ & \u_kirsch|u_flow|p43_10_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z13\ # !\u_kirsch|u_flow|prev_max_10_\ & (\u_kirsch|u_flow|p43_10_\ # 
-- !\u_kirsch|u_flow|ix47310z8933|nx100z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_10_\,
	datab => \u_kirsch|u_flow|p43_10_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z13\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z10\);

\u_kirsch|u_flow|ix47310z8933|ix100z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z7\ = CARRY(\u_kirsch|u_flow|p43_11_\ & \u_kirsch|u_flow|prev_max_11_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z10\ # !\u_kirsch|u_flow|p43_11_\ & (\u_kirsch|u_flow|prev_max_11_\ # 
-- !\u_kirsch|u_flow|ix47310z8933|nx100z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_11_\,
	datab => \u_kirsch|u_flow|prev_max_11_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z10\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z7\);

\u_kirsch|u_flow|ix47310z8933|ix100z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z4\ = CARRY(\u_kirsch|u_flow|prev_max_12_\ & \u_kirsch|u_flow|p43_12_\ & !\u_kirsch|u_flow|ix47310z8933|nx100z7\ # !\u_kirsch|u_flow|prev_max_12_\ & (\u_kirsch|u_flow|p43_12_\ # !\u_kirsch|u_flow|ix47310z8933|nx100z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_12_\,
	datab => \u_kirsch|u_flow|p43_12_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z7\,
	cout => \u_kirsch|u_flow|ix47310z8933|nx100z4\);

\u_kirsch|u_flow|ix47310z8933|ix100z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix47310z8933|nx100z1\ = \u_kirsch|u_flow|p43_13_\ & \u_kirsch|u_flow|ix47310z8933|nx100z4\ & \u_kirsch|u_flow|prev_max_13_\ # !\u_kirsch|u_flow|p43_13_\ & (\u_kirsch|u_flow|ix47310z8933|nx100z4\ # \u_kirsch|u_flow|prev_max_13_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p43_13_\,
	datad => \u_kirsch|u_flow|prev_max_13_\,
	cin => \u_kirsch|u_flow|ix47310z8933|nx100z4\,
	combout => \u_kirsch|u_flow|ix47310z8933|nx100z1\);

\u_kirsch|u_flow|ix47310z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z6\ = \u_kirsch|u_flow|p43_13_\ & (\u_kirsch|u_flow|p43_12_\ $ \u_kirsch|u_flow|prev_max_12_\ # !\u_kirsch|u_flow|prev_max_13_\) # !\u_kirsch|u_flow|p43_13_\ & (\u_kirsch|u_flow|prev_max_13_\ # \u_kirsch|u_flow|p43_12_\ $ 
-- \u_kirsch|u_flow|prev_max_12_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_13_\,
	datab => \u_kirsch|u_flow|p43_12_\,
	datac => \u_kirsch|u_flow|prev_max_12_\,
	datad => \u_kirsch|u_flow|prev_max_13_\,
	combout => \u_kirsch|u_flow|nx47310z6\);

\u_kirsch|u_flow|ix47310z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z7\ = \u_kirsch|u_flow|prev_max_10_\ & (\u_kirsch|u_flow|prev_max_11_\ $ \u_kirsch|u_flow|p43_11_\ # !\u_kirsch|u_flow|p43_10_\) # !\u_kirsch|u_flow|prev_max_10_\ & (\u_kirsch|u_flow|p43_10_\ # \u_kirsch|u_flow|prev_max_11_\ $ 
-- \u_kirsch|u_flow|p43_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_10_\,
	datab => \u_kirsch|u_flow|prev_max_11_\,
	datac => \u_kirsch|u_flow|p43_10_\,
	datad => \u_kirsch|u_flow|p43_11_\,
	combout => \u_kirsch|u_flow|nx47310z7\);

\u_kirsch|u_flow|ix47310z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z8\ = \u_kirsch|u_flow|p43_8_\ & (\u_kirsch|u_flow|p43_9_\ $ \u_kirsch|u_flow|prev_max_9_\ # !\u_kirsch|u_flow|prev_max_8_\) # !\u_kirsch|u_flow|p43_8_\ & (\u_kirsch|u_flow|prev_max_8_\ # \u_kirsch|u_flow|p43_9_\ $ 
-- \u_kirsch|u_flow|prev_max_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_8_\,
	datab => \u_kirsch|u_flow|prev_max_8_\,
	datac => \u_kirsch|u_flow|p43_9_\,
	datad => \u_kirsch|u_flow|prev_max_9_\,
	combout => \u_kirsch|u_flow|nx47310z8\);

\u_kirsch|u_flow|ix47310z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z9\ = \u_kirsch|u_flow|p43_6_\ & (\u_kirsch|u_flow|prev_max_7_\ $ \u_kirsch|u_flow|p43_7_\ # !\u_kirsch|u_flow|prev_max_6_\) # !\u_kirsch|u_flow|p43_6_\ & (\u_kirsch|u_flow|prev_max_6_\ # \u_kirsch|u_flow|prev_max_7_\ $ 
-- \u_kirsch|u_flow|p43_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_6_\,
	datab => \u_kirsch|u_flow|prev_max_7_\,
	datac => \u_kirsch|u_flow|prev_max_6_\,
	datad => \u_kirsch|u_flow|p43_7_\,
	combout => \u_kirsch|u_flow|nx47310z9\);

\u_kirsch|u_flow|ix47310z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z5\ = \u_kirsch|u_flow|nx47310z7\ # \u_kirsch|u_flow|nx47310z9\ # \u_kirsch|u_flow|nx47310z8\ # \u_kirsch|u_flow|nx47310z6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|nx47310z7\,
	datab => \u_kirsch|u_flow|nx47310z9\,
	datac => \u_kirsch|u_flow|nx47310z8\,
	datad => \u_kirsch|u_flow|nx47310z6\,
	combout => \u_kirsch|u_flow|nx47310z5\);

\u_kirsch|u_flow|ix47310z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z10\ = \u_kirsch|u_flow|p43_5_\ & (\u_kirsch|u_flow|prev_max_4_\ $ \u_kirsch|u_flow|p43_4_\ # !\u_kirsch|u_flow|prev_max_5_\) # !\u_kirsch|u_flow|p43_5_\ & (\u_kirsch|u_flow|prev_max_5_\ # \u_kirsch|u_flow|prev_max_4_\ $ 
-- \u_kirsch|u_flow|p43_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_5_\,
	datab => \u_kirsch|u_flow|prev_max_4_\,
	datac => \u_kirsch|u_flow|prev_max_5_\,
	datad => \u_kirsch|u_flow|p43_4_\,
	combout => \u_kirsch|u_flow|nx47310z10\);

\u_kirsch|u_flow|ix47310z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z11\ = \u_kirsch|u_flow|p43_3_\ & (\u_kirsch|u_flow|prev_max_2_\ $ \u_kirsch|u_flow|p43_2_\ # !\u_kirsch|u_flow|prev_max_3_\) # !\u_kirsch|u_flow|p43_3_\ & (\u_kirsch|u_flow|prev_max_3_\ # \u_kirsch|u_flow|prev_max_2_\ $ 
-- \u_kirsch|u_flow|p43_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p43_3_\,
	datab => \u_kirsch|u_flow|prev_max_2_\,
	datac => \u_kirsch|u_flow|prev_max_3_\,
	datad => \u_kirsch|u_flow|p43_2_\,
	combout => \u_kirsch|u_flow|nx47310z11\);

\u_kirsch|u_flow|ix47310z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z12\ = \u_kirsch|u_flow|prev_max_1_\ & (\u_kirsch|u_flow|p43_0_\ $ \u_kirsch|u_flow|prev_max_0_\ # !\u_kirsch|u_flow|p43_1_\) # !\u_kirsch|u_flow|prev_max_1_\ & (\u_kirsch|u_flow|p43_1_\ # \u_kirsch|u_flow|p43_0_\ $ 
-- \u_kirsch|u_flow|prev_max_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|prev_max_1_\,
	datab => \u_kirsch|u_flow|p43_1_\,
	datac => \u_kirsch|u_flow|p43_0_\,
	datad => \u_kirsch|u_flow|prev_max_0_\,
	combout => \u_kirsch|u_flow|nx47310z12\);

\u_kirsch|u_flow|ix47310z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z4\ = !\u_kirsch|u_flow|nx47310z11\ & !\u_kirsch|u_flow|nx47310z12\ & !\u_kirsch|u_flow|nx47310z5\ & !\u_kirsch|u_flow|nx47310z10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|nx47310z11\,
	datab => \u_kirsch|u_flow|nx47310z12\,
	datac => \u_kirsch|u_flow|nx47310z5\,
	datad => \u_kirsch|u_flow|nx47310z10\,
	combout => \u_kirsch|u_flow|nx47310z4\);

\u_kirsch|u_flow|ix47310z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z2\ = \u_kirsch|u_flow|ix47310z8933|nx100z1\ # \u_kirsch|u_flow|nx47310z4\ & \u_kirsch|u_flow|p45\ & !\u_kirsch|u_flow|max_fwd\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|nx47310z4\,
	datab => \u_kirsch|u_flow|p45\,
	datac => \u_kirsch|u_flow|max_fwd\,
	datad => \u_kirsch|u_flow|ix47310z8933|nx100z1\,
	combout => \u_kirsch|u_flow|nx47310z2\);

\u_kirsch|u_flow|ix30752z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx30752z1\ = \u_kirsch|u_flow|state_3_\ & \u_kirsch|u_flow|nx47310z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|state_3_\,
	datad => \u_kirsch|u_flow|nx47310z2\,
	combout => \u_kirsch|u_flow|nx30752z1\);

\u_kirsch|u_flow|reg_max_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx27830z1\,
	ena => \u_kirsch|u_flow|nx47310z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|max_dir_0_\);

\u_kirsch|u_flow|ix63886z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_dir_0_\ = \u_kirsch|u_flow|max_dir_0_\ & \u_kirsch|u_flow|o_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|max_dir_0_\,
	datad => \u_kirsch|u_flow|o_edge\,
	combout => \u_kirsch|u_flow|o_dir_0_\);

\u_uw_uart|reg_mdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_dir_1_\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|u_flow|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_2_\);

\u_uw_uart|reg_sdout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_3_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx31615z1\);

\u_uw_uart|i_uarts|ix31615z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx31615z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_3_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx31615z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\);

\u_kirsch|u_flow|reg_p40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p30\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p40\);

\u_kirsch|u_memory|reg_o_row_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_3_\);

\u_kirsch|reg_f_i_row_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_3_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_3_\);

\u_kirsch|ix20836z52994\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_3_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_row_3_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i_row_next_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|o_row_3_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|f_i_row_next_3_\,
	combout => \u_kirsch|f_i_row_3_\);

\u_kirsch|reg_f_i_row_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_2_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_2_\);

\u_kirsch|u_flow|ix5049z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx5049z1\ = \u_kirsch|u_flow|state_3_\ # !\nrst~combout\ # !\u_kirsch|u_flow|p40\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p40\,
	datab => \u_kirsch|u_flow|state_3_\,
	datac => \nrst~combout\,
	combout => \u_kirsch|u_flow|nx5049z1\);

\u_kirsch|u_flow|ix47310z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47310z1\ = \u_kirsch|u_flow|state_3_\ # \u_kirsch|u_flow|nx47310z2\ # !\u_kirsch|u_flow|p40\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|state_3_\,
	datab => \nrst~combout\,
	datac => \u_kirsch|u_flow|p40\,
	datad => \u_kirsch|u_flow|nx47310z2\,
	combout => \u_kirsch|u_flow|nx47310z1\);

\u_kirsch|u_flow|reg_p31_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_11_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_11_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_11_\);

\u_kirsch|u_flow|reg_p32_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_10_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_10_\);

\u_kirsch|u_flow|reg_p31_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_10_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_10_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_10_\);

\u_kirsch|u_flow|reg_p32_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p23_9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_9_\);

\u_kirsch|u_flow|reg_p31_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_9_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_9_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_9_\);

\u_kirsch|u_flow|reg_p32_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p23_8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_8_\);

\u_kirsch|u_flow|reg_p31_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_8_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_8_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_8_\);

\u_kirsch|u_flow|reg_p32_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_7_\);

\u_kirsch|u_flow|reg_p31_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_7_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_7_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_7_\);

\u_kirsch|u_flow|reg_p32_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_6_\);

\u_kirsch|u_flow|reg_p31_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_6_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_6_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_6_\);

\u_kirsch|u_flow|reg_p32_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p23_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_5_\);

\u_kirsch|u_flow|reg_p31_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_5_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_5_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_5_\);

\u_kirsch|u_flow|reg_p32_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p23_4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_4_\);

\u_kirsch|u_flow|reg_p31_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_4_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_4_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_4_\);

\u_kirsch|u_flow|reg_p32_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_3_\);

\u_kirsch|u_flow|reg_p31_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_3_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_3_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_3_\);

\u_kirsch|u_flow|reg_p32_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_2_\);

\u_kirsch|u_flow|reg_p31_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_2_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_2_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_2_\);

\u_kirsch|u_flow|reg_p32_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_1_\);

\u_kirsch|u_flow|reg_p31_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_1_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_1_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_1_\);

\u_kirsch|u_flow|reg_p31_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_0_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_0_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_0_\);

\u_kirsch|u_flow|reg_p32_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p32_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p32_0_\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx37973z1\ = \u_kirsch|u_flow|p32_0_\ & (\u_kirsch|u_flow|p31_0_\ $ VCC) # !\u_kirsch|u_flow|p32_0_\ & (\u_kirsch|u_flow|p31_0_\ # GND)
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z33\ = CARRY(\u_kirsch|u_flow|p31_0_\ # !\u_kirsch|u_flow|p32_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_0_\,
	datab => \u_kirsch|u_flow|p31_0_\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx37973z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z33\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx38970z1\ = \u_kirsch|u_flow|p32_1_\ & (\u_kirsch|u_flow|p31_1_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z33\ # !\u_kirsch|u_flow|p31_1_\ & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z33\ # GND)) # !\u_kirsch|u_flow|p32_1_\ & 
-- (\u_kirsch|u_flow|p31_1_\ & \u_kirsch|u_flow|p4s_sub12_0|nx63795z33\ & VCC # !\u_kirsch|u_flow|p31_1_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z33\)
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z30\ = CARRY(\u_kirsch|u_flow|p32_1_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z33\ # !\u_kirsch|u_flow|p31_1_\) # !\u_kirsch|u_flow|p32_1_\ & !\u_kirsch|u_flow|p31_1_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_1_\,
	datab => \u_kirsch|u_flow|p31_1_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z33\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx38970z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z30\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx39967z1\ = (\u_kirsch|u_flow|p32_2_\ $ \u_kirsch|u_flow|p31_2_\ $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z30\) # GND
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z27\ = CARRY(\u_kirsch|u_flow|p32_2_\ & \u_kirsch|u_flow|p31_2_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z30\ # !\u_kirsch|u_flow|p32_2_\ & (\u_kirsch|u_flow|p31_2_\ # !\u_kirsch|u_flow|p4s_sub12_0|nx63795z30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_2_\,
	datab => \u_kirsch|u_flow|p31_2_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z30\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx39967z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z27\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx40964z1\ = \u_kirsch|u_flow|p32_3_\ & (\u_kirsch|u_flow|p31_3_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z27\ # !\u_kirsch|u_flow|p31_3_\ & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z27\ # GND)) # !\u_kirsch|u_flow|p32_3_\ & 
-- (\u_kirsch|u_flow|p31_3_\ & \u_kirsch|u_flow|p4s_sub12_0|nx63795z27\ & VCC # !\u_kirsch|u_flow|p31_3_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z27\)
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z24\ = CARRY(\u_kirsch|u_flow|p32_3_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z27\ # !\u_kirsch|u_flow|p31_3_\) # !\u_kirsch|u_flow|p32_3_\ & !\u_kirsch|u_flow|p31_3_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_3_\,
	datab => \u_kirsch|u_flow|p31_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z27\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx40964z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z24\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx41961z1\ = (\u_kirsch|u_flow|p31_4_\ $ \u_kirsch|u_flow|p32_4_\ $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z24\) # GND
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z21\ = CARRY(\u_kirsch|u_flow|p31_4_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z24\ # !\u_kirsch|u_flow|p32_4_\) # !\u_kirsch|u_flow|p31_4_\ & !\u_kirsch|u_flow|p32_4_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p31_4_\,
	datab => \u_kirsch|u_flow|p32_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z24\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx41961z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z21\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx42958z1\ = \u_kirsch|u_flow|p31_5_\ & (\u_kirsch|u_flow|p32_5_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21\ # !\u_kirsch|u_flow|p32_5_\ & \u_kirsch|u_flow|p4s_sub12_0|nx63795z21\ & VCC) # !\u_kirsch|u_flow|p31_5_\ & 
-- (\u_kirsch|u_flow|p32_5_\ & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z21\ # GND) # !\u_kirsch|u_flow|p32_5_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21\)
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z18\ = CARRY(\u_kirsch|u_flow|p31_5_\ & \u_kirsch|u_flow|p32_5_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21\ # !\u_kirsch|u_flow|p31_5_\ & (\u_kirsch|u_flow|p32_5_\ # !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p31_5_\,
	datab => \u_kirsch|u_flow|p32_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z21\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx42958z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z18\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx43955z1\ = (\u_kirsch|u_flow|p31_6_\ $ \u_kirsch|u_flow|p32_6_\ $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z18\) # GND
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z15\ = CARRY(\u_kirsch|u_flow|p31_6_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z18\ # !\u_kirsch|u_flow|p32_6_\) # !\u_kirsch|u_flow|p31_6_\ & !\u_kirsch|u_flow|p32_6_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p31_6_\,
	datab => \u_kirsch|u_flow|p32_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z18\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx43955z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z15\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx44952z1\ = \u_kirsch|u_flow|p32_7_\ & (\u_kirsch|u_flow|p31_7_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z15\ # !\u_kirsch|u_flow|p31_7_\ & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z15\ # GND)) # !\u_kirsch|u_flow|p32_7_\ & 
-- (\u_kirsch|u_flow|p31_7_\ & \u_kirsch|u_flow|p4s_sub12_0|nx63795z15\ & VCC # !\u_kirsch|u_flow|p31_7_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z15\)
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z12\ = CARRY(\u_kirsch|u_flow|p32_7_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z15\ # !\u_kirsch|u_flow|p31_7_\) # !\u_kirsch|u_flow|p32_7_\ & !\u_kirsch|u_flow|p31_7_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_7_\,
	datab => \u_kirsch|u_flow|p31_7_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z15\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx44952z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z12\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx45949z1\ = (\u_kirsch|u_flow|p31_8_\ $ \u_kirsch|u_flow|p32_8_\ $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z12\) # GND
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z9\ = CARRY(\u_kirsch|u_flow|p31_8_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z12\ # !\u_kirsch|u_flow|p32_8_\) # !\u_kirsch|u_flow|p31_8_\ & !\u_kirsch|u_flow|p32_8_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p31_8_\,
	datab => \u_kirsch|u_flow|p32_8_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z12\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx45949z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z9\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx46946z1\ = \u_kirsch|u_flow|p32_9_\ & (\u_kirsch|u_flow|p31_9_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z9\ # !\u_kirsch|u_flow|p31_9_\ & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z9\ # GND)) # !\u_kirsch|u_flow|p32_9_\ & 
-- (\u_kirsch|u_flow|p31_9_\ & \u_kirsch|u_flow|p4s_sub12_0|nx63795z9\ & VCC # !\u_kirsch|u_flow|p31_9_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z9\)
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z6\ = CARRY(\u_kirsch|u_flow|p32_9_\ & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z9\ # !\u_kirsch|u_flow|p31_9_\) # !\u_kirsch|u_flow|p32_9_\ & !\u_kirsch|u_flow|p31_9_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_9_\,
	datab => \u_kirsch|u_flow|p31_9_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z9\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx46946z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z6\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx62798z1\ = (\u_kirsch|u_flow|p32_10_\ $ \u_kirsch|u_flow|p31_10_\ $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z6\) # GND
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z3\ = CARRY(\u_kirsch|u_flow|p32_10_\ & \u_kirsch|u_flow|p31_10_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z6\ # !\u_kirsch|u_flow|p32_10_\ & (\u_kirsch|u_flow|p31_10_\ # !\u_kirsch|u_flow|p4s_sub12_0|nx63795z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p32_10_\,
	datab => \u_kirsch|u_flow|p31_10_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z6\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx62798z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z3\);

\u_kirsch|u_flow|p4s_sub12_0|ix63795z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx63795z1\ = \u_kirsch|u_flow|p31_11_\ & \u_kirsch|u_flow|p4s_sub12_0|nx63795z3\ & VCC # !\u_kirsch|u_flow|p31_11_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z3\
-- \u_kirsch|u_flow|p4s_sub12_0|nx23445z2\ = CARRY(!\u_kirsch|u_flow|p31_11_\ & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p31_11_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx63795z3\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx63795z1\,
	cout => \u_kirsch|u_flow|p4s_sub12_0|nx23445z2\);

\u_kirsch|u_flow|reg_p31_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p31_12_~feeder_combout\,
	sdata => \u_kirsch|u_flow|p22_12_\,
	sload => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p31_12_\);

\u_kirsch|u_flow|reg_p30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|p20\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p30\);

\u_kirsch|u_flow|p4s_sub12_0|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\ = !\u_kirsch|u_flow|p4s_sub12_0|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p4s_sub12_0|nx23445z2\,
	combout => \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\);

\u_kirsch|u_flow|ix26026z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26026z2\ = \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\ & \u_kirsch|u_flow|p30\ & !\u_kirsch|u_flow|p31_12_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\,
	datac => \u_kirsch|u_flow|p30\,
	datad => \u_kirsch|u_flow|p31_12_\,
	combout => \u_kirsch|u_flow|nx26026z2\);

\u_kirsch|u_flow|ix26026z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26026z4\ = \u_kirsch|u_flow|p4s_sub12_0|nx46946z1\ # \u_kirsch|u_flow|p4s_sub12_0|nx44952z1\ & \u_kirsch|u_flow|p4s_sub12_0|nx45949z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p4s_sub12_0|nx44952z1\,
	datac => \u_kirsch|u_flow|p4s_sub12_0|nx45949z1\,
	datad => \u_kirsch|u_flow|p4s_sub12_0|nx46946z1\,
	combout => \u_kirsch|u_flow|nx26026z4\);

\u_kirsch|u_flow|ix26026z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26026z1\ = \u_kirsch|u_flow|nx26026z2\ & (\u_kirsch|u_flow|nx26026z4\ # \u_kirsch|u_flow|p4s_sub12_0|nx62798z1\ # \u_kirsch|u_flow|p4s_sub12_0|nx63795z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|nx26026z2\,
	datab => \u_kirsch|u_flow|nx26026z4\,
	datac => \u_kirsch|u_flow|p4s_sub12_0|nx62798z1\,
	datad => \u_kirsch|u_flow|p4s_sub12_0|nx63795z1\,
	combout => \u_kirsch|u_flow|nx26026z1\);

\u_kirsch|u_flow|reg_p35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p35\);

\u_kirsch|u_flow|ix29125z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_13_\ = \u_kirsch|u_flow|p31_12_\ # !\u_kirsch|u_flow|p4s_sub12_0|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\,
	datad => \u_kirsch|u_flow|p31_12_\,
	combout => \u_kirsch|u_flow|p4s_13_\);

\u_kirsch|u_flow|ix28128z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p4s_12_\ = \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\ $ !\u_kirsch|u_flow|p31_12_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p4s_sub12_0|nx23445z1\,
	datad => \u_kirsch|u_flow|p31_12_\,
	combout => \u_kirsch|u_flow|p4s_12_\);

\u_kirsch|u_flow|ix27830z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx27830z1\ = \u_kirsch|u_flow|p45\ $ \u_kirsch|u_flow|nx28524z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p45\,
	datac => \u_kirsch|u_flow|nx28524z1\,
	combout => \u_kirsch|u_flow|nx27830z1\);

\u_kirsch|u_flow|reg_max_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx26833z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|max_dir_1_\);

\u_kirsch|u_flow|ix62889z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_dir_1_\ = \u_kirsch|u_flow|max_dir_1_\ & \u_kirsch|u_flow|o_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|max_dir_1_\,
	datad => \u_kirsch|u_flow|o_edge\,
	combout => \u_kirsch|u_flow|o_dir_1_\);

\u_uw_uart|reg_mdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_dir_2_\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|u_flow|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_3_\);

\u_uw_uart|reg_sdout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_5_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx32612z1\);

\u_uw_uart|i_uarts|ix32612z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx32612z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_5_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx32612z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\);

\u_kirsch|u_memory|ix60567z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60567z3\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z11\ # \u_kirsch|u_memory|modgen_counter_row|nx58250z7\ # \u_kirsch|u_memory|modgen_counter_row|nx58250z13\ # \u_kirsch|u_memory|modgen_counter_row|nx58250z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_row|nx58250z11\,
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z7\,
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z13\,
	datad => \u_kirsch|u_memory|modgen_counter_row|nx58250z9\,
	combout => \u_kirsch|u_memory|nx60567z3\);

\u_kirsch|u_memory|ix60567z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60567z6\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z9\ # \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ # \u_kirsch|u_memory|modgen_counter_column|nx58250z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z9\,
	datac => \u_kirsch|u_memory|modgen_counter_column|nx58250z11\,
	datad => \u_kirsch|u_memory|modgen_counter_column|nx58250z13\,
	combout => \u_kirsch|u_memory|nx60567z6\);

\u_kirsch|u_flow|reg_p21_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx62798z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_11_\);

\u_kirsch|u_flow|reg_p22_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx62798z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_11_\);

\u_kirsch|u_flow|reg_p21_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx63795z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_12_\);

\u_kirsch|u_flow|reg_p22_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx63795z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_12_\);

\u_kirsch|u_flow|reg_p21_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx46946z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_10_\);

\u_kirsch|u_flow|reg_p22_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx46946z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_10_\);

\u_kirsch|u_flow|reg_p21_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_9_\);

\u_kirsch|u_flow|reg_p22_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_9_\);

\u_kirsch|u_flow|reg_p21_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_8_\);

\u_kirsch|u_flow|reg_p22_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_8_\);

\u_kirsch|u_flow|reg_p21_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_7_\);

\u_kirsch|u_flow|reg_p22_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_7_\);

\u_kirsch|u_flow|reg_p21_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_6_\);

\u_kirsch|u_flow|reg_p22_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_6_\);

\u_kirsch|u_flow|reg_p21_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_5_\);

\u_kirsch|u_flow|reg_p22_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_5_\);

\u_kirsch|u_flow|reg_p21_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_4_\);

\u_kirsch|u_flow|reg_p22_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_4_\);

\u_kirsch|u_flow|reg_p21_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_3_\);

\u_kirsch|u_flow|reg_p22_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_3_\);

\u_kirsch|u_flow|reg_p21_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_2_\);

\u_kirsch|u_flow|reg_p22_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_2_\);

\u_kirsch|u_flow|reg_p21_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_add12_4i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_1_\);

\u_kirsch|u_flow|reg_p22_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_add12_4i2|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_1_\);

\u_kirsch|u_flow|reg_p22_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p22_sub10_4i5|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p22_0_\);

\u_kirsch|u_flow|reg_p21_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p21_sub10_4i3|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p21_0_\);

\u_kirsch|u_flow|ix45188z19900|ix100z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z37\ = CARRY(!\u_kirsch|u_flow|p21_0_\ & \u_kirsch|u_flow|p22_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_0_\,
	datab => \u_kirsch|u_flow|p22_0_\,
	datad => VCC,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z37\);

\u_kirsch|u_flow|ix45188z19900|ix100z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z34\ = CARRY(\u_kirsch|u_flow|p21_1_\ & (!\u_kirsch|u_flow|ix45188z19900|nx100z37\ # !\u_kirsch|u_flow|p22_1_\) # !\u_kirsch|u_flow|p21_1_\ & !\u_kirsch|u_flow|p22_1_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_1_\,
	datab => \u_kirsch|u_flow|p22_1_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z37\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z34\);

\u_kirsch|u_flow|ix45188z19900|ix100z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z31\ = CARRY(\u_kirsch|u_flow|p21_2_\ & \u_kirsch|u_flow|p22_2_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z34\ # !\u_kirsch|u_flow|p21_2_\ & (\u_kirsch|u_flow|p22_2_\ # !\u_kirsch|u_flow|ix45188z19900|nx100z34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_2_\,
	datab => \u_kirsch|u_flow|p22_2_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z34\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z31\);

\u_kirsch|u_flow|ix45188z19900|ix100z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z28\ = CARRY(\u_kirsch|u_flow|p22_3_\ & \u_kirsch|u_flow|p21_3_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z31\ # !\u_kirsch|u_flow|p22_3_\ & (\u_kirsch|u_flow|p21_3_\ # !\u_kirsch|u_flow|ix45188z19900|nx100z31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_3_\,
	datab => \u_kirsch|u_flow|p21_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z31\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z28\);

\u_kirsch|u_flow|ix45188z19900|ix100z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z25\ = CARRY(\u_kirsch|u_flow|p21_4_\ & \u_kirsch|u_flow|p22_4_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z28\ # !\u_kirsch|u_flow|p21_4_\ & (\u_kirsch|u_flow|p22_4_\ # !\u_kirsch|u_flow|ix45188z19900|nx100z28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_4_\,
	datab => \u_kirsch|u_flow|p22_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z28\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z25\);

\u_kirsch|u_flow|ix45188z19900|ix100z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z22\ = CARRY(\u_kirsch|u_flow|p22_5_\ & \u_kirsch|u_flow|p21_5_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z25\ # !\u_kirsch|u_flow|p22_5_\ & (\u_kirsch|u_flow|p21_5_\ # !\u_kirsch|u_flow|ix45188z19900|nx100z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_5_\,
	datab => \u_kirsch|u_flow|p21_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z25\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z22\);

\u_kirsch|u_flow|ix45188z19900|ix100z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z19\ = CARRY(\u_kirsch|u_flow|p22_6_\ & (!\u_kirsch|u_flow|ix45188z19900|nx100z22\ # !\u_kirsch|u_flow|p21_6_\) # !\u_kirsch|u_flow|p22_6_\ & !\u_kirsch|u_flow|p21_6_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_6_\,
	datab => \u_kirsch|u_flow|p21_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z22\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z19\);

\u_kirsch|u_flow|ix45188z19900|ix100z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z16\ = CARRY(\u_kirsch|u_flow|p21_7_\ & (!\u_kirsch|u_flow|ix45188z19900|nx100z19\ # !\u_kirsch|u_flow|p22_7_\) # !\u_kirsch|u_flow|p21_7_\ & !\u_kirsch|u_flow|p22_7_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_7_\,
	datab => \u_kirsch|u_flow|p22_7_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z19\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z16\);

\u_kirsch|u_flow|ix45188z19900|ix100z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z13\ = CARRY(\u_kirsch|u_flow|p22_8_\ & (!\u_kirsch|u_flow|ix45188z19900|nx100z16\ # !\u_kirsch|u_flow|p21_8_\) # !\u_kirsch|u_flow|p22_8_\ & !\u_kirsch|u_flow|p21_8_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_8_\,
	datab => \u_kirsch|u_flow|p21_8_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z16\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z13\);

\u_kirsch|u_flow|ix45188z19900|ix100z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z10\ = CARRY(\u_kirsch|u_flow|p22_9_\ & \u_kirsch|u_flow|p21_9_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z13\ # !\u_kirsch|u_flow|p22_9_\ & (\u_kirsch|u_flow|p21_9_\ # !\u_kirsch|u_flow|ix45188z19900|nx100z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_9_\,
	datab => \u_kirsch|u_flow|p21_9_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z13\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z10\);

\u_kirsch|u_flow|ix45188z19900|ix100z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z7\ = CARRY(\u_kirsch|u_flow|p22_10_\ & (!\u_kirsch|u_flow|ix45188z19900|nx100z10\ # !\u_kirsch|u_flow|p21_10_\) # !\u_kirsch|u_flow|p22_10_\ & !\u_kirsch|u_flow|p21_10_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_10_\,
	datab => \u_kirsch|u_flow|p21_10_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z10\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z7\);

\u_kirsch|u_flow|ix45188z19900|ix100z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z4\ = CARRY(\u_kirsch|u_flow|p21_11_\ & (!\u_kirsch|u_flow|ix45188z19900|nx100z7\ # !\u_kirsch|u_flow|p22_11_\) # !\u_kirsch|u_flow|p21_11_\ & !\u_kirsch|u_flow|p22_11_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_11_\,
	datab => \u_kirsch|u_flow|p22_11_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z7\,
	cout => \u_kirsch|u_flow|ix45188z19900|nx100z4\);

\u_kirsch|u_flow|ix45188z19900|ix100z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z1\ = \u_kirsch|u_flow|p22_12_\ & !\u_kirsch|u_flow|ix45188z19900|nx100z4\ & \u_kirsch|u_flow|p21_12_\ # !\u_kirsch|u_flow|p22_12_\ & (\u_kirsch|u_flow|p21_12_\ # !\u_kirsch|u_flow|ix45188z19900|nx100z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p22_12_\,
	datad => \u_kirsch|u_flow|p21_12_\,
	cin => \u_kirsch|u_flow|ix45188z19900|nx100z4\,
	combout => \u_kirsch|u_flow|ix45188z19900|nx100z1\);

\u_kirsch|u_flow|reg_p23_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx23445z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_10_\);

\u_kirsch|u_flow|reg_p23_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_9_\);

\u_kirsch|u_flow|reg_p23_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_8_\);

\u_kirsch|u_flow|reg_p23_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_7_\);

\u_kirsch|u_flow|reg_p23_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_6_\);

\u_kirsch|u_flow|reg_p23_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_5_\);

\u_kirsch|u_flow|reg_p23_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_4_\);

\u_kirsch|u_flow|reg_p23_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_3_\);

\u_kirsch|u_flow|reg_p23_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_2_\);

\u_kirsch|u_flow|reg_p23_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add9_3|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_1_\);

\u_kirsch|u_flow|reg_p23_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p13_add8_0i3|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p23_0_\);

\u_kirsch|u_flow|reg_p20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx20836z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p20\);

\u_kirsch|u_flow|ix26833z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26833z2\ = \u_kirsch|u_flow|state_3_\ # \u_kirsch|u_flow|state_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_flow|state_3_\,
	datad => \u_kirsch|u_flow|state_2_\,
	combout => \u_kirsch|u_flow|nx26833z2\);

\u_kirsch|u_flow|ix26833z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26833z3\ = \u_kirsch|u_flow|nx28524z1\ & !\u_kirsch|u_flow|state_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|nx28524z1\,
	datad => \u_kirsch|u_flow|state_1_\,
	combout => \u_kirsch|u_flow|nx26833z3\);

\u_kirsch|u_flow|ix26833z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26833z1\ = \u_kirsch|u_flow|nx47310z2\ & \u_kirsch|u_flow|nx26833z3\ & (\u_kirsch|u_flow|nx26833z2\ # \u_kirsch|u_flow|max_dir_1_\) # !\u_kirsch|u_flow|nx47310z2\ & (\u_kirsch|u_flow|max_dir_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|nx26833z2\,
	datab => \u_kirsch|u_flow|nx26833z3\,
	datac => \u_kirsch|u_flow|max_dir_1_\,
	datad => \u_kirsch|u_flow|nx47310z2\,
	combout => \u_kirsch|u_flow|nx26833z1\);

\u_kirsch|u_flow|reg_max_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx25836z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|max_dir_2_\);

\u_kirsch|u_flow|ix61892z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_dir_2_\ = \u_kirsch|u_flow|max_dir_2_\ & \u_kirsch|u_flow|o_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|max_dir_2_\,
	datad => \u_kirsch|u_flow|o_edge\,
	combout => \u_kirsch|u_flow|o_dir_2_\);

\u_uw_uart|reg_mdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_4_\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_5_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx33609z1\);

\u_uw_uart|i_uarts|ix33609z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx33609z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_5_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx33609z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\);

\u_kirsch|reg_f_t2_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_7_\);

\u_kirsch|u_memory|reg_buffer0_1__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__7_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__7_\);

\u_kirsch|ix20836z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_7_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image0_1__7_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_t2_next_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image0_1__7_\,
	datab => \u_kirsch|f_t2_next_7_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t2_7_\);

\u_kirsch|reg_f_t1_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_7_\);

\u_kirsch|u_memory|reg_buffer0_2__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__7_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__7_\);

\u_kirsch|ix20836z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_7_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__7_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_7_\,
	datab => \u_kirsch|u_memory|o_image0_2__7_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_7_\);

\u_kirsch|reg_f_t2_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_6_\);

\u_kirsch|u_memory|reg_buffer0_1__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image0_1__6_~feeder_combout\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__6_\);

\u_kirsch|ix20836z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_6_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image0_1__6_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_t2_next_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|u_memory|o_image0_1__6_\,
	datad => \u_kirsch|f_t2_next_6_\,
	combout => \u_kirsch|f_t2_6_\);

\u_kirsch|reg_f_t1_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_6_\);

\u_kirsch|u_memory|reg_buffer0_2__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__6_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__6_\);

\u_kirsch|ix20836z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_6_\,
	datab => \u_kirsch|u_memory|o_image0_2__6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_6_\);

\u_kirsch|reg_f_t2_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_5_\);

\u_kirsch|u_memory|reg_buffer0_1__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__5_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__5_\);

\u_kirsch|ix20836z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_5_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image0_1__5_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_t2_next_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image0_1__5_\,
	datab => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|f_t2_next_5_\,
	combout => \u_kirsch|f_t2_5_\);

\u_kirsch|reg_f_t1_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_5_\);

\u_kirsch|u_memory|reg_buffer0_2__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__5_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__5_\);

\u_kirsch|ix20836z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_5_\,
	datab => \u_kirsch|u_memory|o_image0_2__5_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_5_\);

\u_kirsch|reg_f_t2_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_4_\);

\u_kirsch|u_memory|reg_buffer0_1__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__4_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__4_\);

\u_kirsch|ix20836z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_4_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image0_1__4_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_t2_next_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image0_1__4_\,
	datab => \u_kirsch|f_t2_next_4_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t2_4_\);

\u_kirsch|reg_f_t1_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_4_\);

\u_kirsch|u_memory|reg_buffer0_2__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__4_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__4_\);

\u_kirsch|ix20836z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_4_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__4_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_4_\,
	datab => \u_kirsch|u_memory|o_image0_2__4_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_4_\);

\u_kirsch|reg_f_t2_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_3_\);

\u_kirsch|u_memory|reg_buffer0_1__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__3_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__3_\);

\u_kirsch|ix20836z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_3_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image0_1__3_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_t2_next_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|o_image0_1__3_\,
	datac => \u_kirsch|f_t2_next_3_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t2_3_\);

\u_kirsch|reg_f_t1_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_3_\);

\u_kirsch|u_memory|reg_buffer0_2__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__3_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__3_\);

\u_kirsch|ix20836z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_3_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__3_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_3_\,
	datac => \u_kirsch|u_memory|o_image0_2__3_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_3_\);

\u_kirsch|reg_f_t2_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_2_\);

\u_kirsch|u_memory|reg_buffer0_1__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__2_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__2_\);

\u_kirsch|ix20836z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_2_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_1__2_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t2_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t2_next_2_\,
	datac => \u_kirsch|u_memory|o_image0_1__2_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t2_2_\);

\u_kirsch|reg_f_t1_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_2_\);

\u_kirsch|u_memory|reg_buffer0_2__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__2_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__2_\);

\u_kirsch|ix20836z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_2_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__2_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t1_next_2_\,
	datac => \u_kirsch|u_memory|o_image0_2__2_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_2_\);

\u_kirsch|reg_f_t2_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_1_\);

\u_kirsch|u_memory|reg_buffer0_1__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__1_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__1_\);

\u_kirsch|ix20836z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_1_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_1__1_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t2_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t2_next_1_\,
	datac => \u_kirsch|u_memory|o_image0_1__1_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t2_1_\);

\u_kirsch|reg_f_t1_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_1_\);

\u_kirsch|u_memory|reg_buffer0_2__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__1_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__1_\);

\u_kirsch|ix20836z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_1_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__1_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_1_\,
	datac => \u_kirsch|u_memory|o_image0_2__1_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_1_\);

\u_kirsch|reg_f_t1_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t1_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_1__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t1_next_0_\);

\u_kirsch|u_memory|reg_buffer0_2__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_2__0_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_2__0_\);

\u_kirsch|ix20836z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_0_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_2__0_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t1_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_next_0_\,
	datac => \u_kirsch|u_memory|o_image0_2__0_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t1_0_\);

\u_kirsch|reg_f_t2_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t2_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_0__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t2_next_0_\);

\u_kirsch|u_memory|reg_buffer0_1__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_1__dup0_0_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_1__0_\);

\u_kirsch|ix20836z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_0_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_1__0_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t2_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_next_0_\,
	datac => \u_kirsch|u_memory|o_image0_1__0_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t2_0_\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx37973z1\ = \u_kirsch|f_t1_0_\ & (\u_kirsch|f_t2_0_\ $ VCC) # !\u_kirsch|f_t1_0_\ & \u_kirsch|f_t2_0_\ & VCC
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ = CARRY(\u_kirsch|f_t1_0_\ & \u_kirsch|f_t2_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_0_\,
	datab => \u_kirsch|f_t2_0_\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx37973z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z22\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ = \u_kirsch|f_t2_1_\ & (\u_kirsch|f_t1_1_\ & \u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ & VCC # !\u_kirsch|f_t1_1_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z22\) # !\u_kirsch|f_t2_1_\ & (\u_kirsch|f_t1_1_\ & 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ # !\u_kirsch|f_t1_1_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ # GND))
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z19\ = CARRY(\u_kirsch|f_t2_1_\ & !\u_kirsch|f_t1_1_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ # !\u_kirsch|f_t2_1_\ & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z22\ # !\u_kirsch|f_t1_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_1_\,
	datab => \u_kirsch|f_t1_1_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z22\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx38970z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z19\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx39967z1\ = (\u_kirsch|f_t2_2_\ $ \u_kirsch|f_t1_2_\ $ !\u_kirsch|u_flow|p11_add8_0i1|nx44952z19\) # GND
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ = CARRY(\u_kirsch|f_t2_2_\ & (\u_kirsch|f_t1_2_\ # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z19\) # !\u_kirsch|f_t2_2_\ & \u_kirsch|f_t1_2_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_2_\,
	datab => \u_kirsch|f_t1_2_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z19\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx39967z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z16\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx40964z1\ = \u_kirsch|f_t1_3_\ & (\u_kirsch|f_t2_3_\ & \u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ & VCC # !\u_kirsch|f_t2_3_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z16\) # !\u_kirsch|f_t1_3_\ & (\u_kirsch|f_t2_3_\ & 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ # !\u_kirsch|f_t2_3_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ # GND))
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z13\ = CARRY(\u_kirsch|f_t1_3_\ & !\u_kirsch|f_t2_3_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ # !\u_kirsch|f_t1_3_\ & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z16\ # !\u_kirsch|f_t2_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_3_\,
	datab => \u_kirsch|f_t2_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z16\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx40964z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z13\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx41961z1\ = (\u_kirsch|f_t1_4_\ $ \u_kirsch|f_t2_4_\ $ !\u_kirsch|u_flow|p11_add8_0i1|nx44952z13\) # GND
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ = CARRY(\u_kirsch|f_t1_4_\ & (\u_kirsch|f_t2_4_\ # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z13\) # !\u_kirsch|f_t1_4_\ & \u_kirsch|f_t2_4_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_4_\,
	datab => \u_kirsch|f_t2_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z13\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx41961z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z10\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx42958z1\ = \u_kirsch|f_t2_5_\ & (\u_kirsch|f_t1_5_\ & \u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ & VCC # !\u_kirsch|f_t1_5_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z10\) # !\u_kirsch|f_t2_5_\ & (\u_kirsch|f_t1_5_\ & 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ # !\u_kirsch|f_t1_5_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ # GND))
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z7\ = CARRY(\u_kirsch|f_t2_5_\ & !\u_kirsch|f_t1_5_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ # !\u_kirsch|f_t2_5_\ & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z10\ # !\u_kirsch|f_t1_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_5_\,
	datab => \u_kirsch|f_t1_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z10\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx42958z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z7\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx43955z1\ = (\u_kirsch|f_t1_6_\ $ \u_kirsch|f_t2_6_\ $ !\u_kirsch|u_flow|p11_add8_0i1|nx44952z7\) # GND
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ = CARRY(\u_kirsch|f_t1_6_\ & (\u_kirsch|f_t2_6_\ # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z7\) # !\u_kirsch|f_t1_6_\ & \u_kirsch|f_t2_6_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t1_6_\,
	datab => \u_kirsch|f_t2_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z7\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx43955z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z4\);

\u_kirsch|u_flow|p11_add8_0i1|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ = \u_kirsch|f_t2_7_\ & (\u_kirsch|f_t1_7_\ & \u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ & VCC # !\u_kirsch|f_t1_7_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z4\) # !\u_kirsch|f_t2_7_\ & (\u_kirsch|f_t1_7_\ & 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ # !\u_kirsch|f_t1_7_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ # GND))
-- \u_kirsch|u_flow|p11_add8_0i1|nx23445z2\ = CARRY(\u_kirsch|f_t2_7_\ & !\u_kirsch|f_t1_7_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ # !\u_kirsch|f_t2_7_\ & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z4\ # !\u_kirsch|f_t1_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_7_\,
	datab => \u_kirsch|f_t1_7_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx44952z4\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx44952z1\,
	cout => \u_kirsch|u_flow|p11_add8_0i1|nx23445z2\);

\u_kirsch|u_flow|p11_add8_0i1|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add8_0i1|nx23445z1\ = !\u_kirsch|u_flow|p11_add8_0i1|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p11_add8_0i1|nx23445z2\,
	combout => \u_kirsch|u_flow|p11_add8_0i1|nx23445z1\);

\u_kirsch|reg_f_t3_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_7_\);

\u_kirsch|u_memory|reg_buffer0_0__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__7_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__7_\);

\u_kirsch|ix20836z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_7_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__7_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|f_t3_next_7_\,
	datad => \u_kirsch|u_memory|o_image0_0__7_\,
	combout => \u_kirsch|f_t3_7_\);

\u_kirsch|reg_f_t3_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_6_\);

\u_kirsch|u_memory|reg_buffer0_0__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image0_0__6_~feeder_combout\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__6_\);

\u_kirsch|ix20836z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_next_6_\,
	datab => \u_kirsch|u_memory|o_image0_0__6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_6_\);

\u_kirsch|reg_f_t3_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_5_\);

\u_kirsch|u_memory|reg_buffer0_0__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__5_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__5_\);

\u_kirsch|ix20836z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_next_5_\,
	datac => \u_kirsch|u_memory|o_image0_0__5_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_5_\);

\u_kirsch|reg_f_t3_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_4_\);

\u_kirsch|u_memory|reg_buffer0_0__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__4_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__4_\);

\u_kirsch|ix20836z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_4_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__4_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t3_next_4_\,
	datac => \u_kirsch|u_memory|o_image0_0__4_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_4_\);

\u_kirsch|reg_f_t3_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_3_\);

\u_kirsch|u_memory|reg_buffer0_0__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__3_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__3_\);

\u_kirsch|ix20836z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_3_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__3_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_next_3_\,
	datac => \u_kirsch|u_memory|o_image0_0__3_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_3_\);

\u_kirsch|reg_f_t3_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_2_\);

\u_kirsch|u_memory|reg_buffer0_0__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__2_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__2_\);

\u_kirsch|ix20836z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_2_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__2_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t3_next_2_\,
	datac => \u_kirsch|u_memory|o_image0_0__2_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_2_\);

\u_kirsch|reg_f_t3_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_1_\);

\u_kirsch|u_memory|reg_buffer0_0__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__1_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__1_\);

\u_kirsch|ix20836z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_1_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__1_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t3_next_1_\,
	datac => \u_kirsch|u_memory|o_image0_0__1_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_1_\);

\u_kirsch|reg_f_t3_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_t3_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_0__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_t3_next_0_\);

\u_kirsch|u_memory|reg_buffer0_0__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image1_0__0_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image0_0__0_\);

\u_kirsch|ix20836z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_0_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image0_0__0_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_t3_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t3_next_0_\,
	datac => \u_kirsch|u_memory|o_image0_0__0_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_t3_0_\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx37973z1\ = \u_kirsch|f_t3_0_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx37973z1\ $ VCC) # !\u_kirsch|f_t3_0_\ & \u_kirsch|u_flow|p11_add8_0i1|nx37973z1\ & VCC
-- \u_kirsch|u_flow|p11_add9_1|nx45949z24\ = CARRY(\u_kirsch|f_t3_0_\ & \u_kirsch|u_flow|p11_add8_0i1|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_0_\,
	datab => \u_kirsch|u_flow|p11_add8_0i1|nx37973z1\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p11_add9_1|nx37973z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z24\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx38970z1\ = \u_kirsch|f_t3_1_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ & \u_kirsch|u_flow|p11_add9_1|nx45949z24\ & VCC # !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z24\) # 
-- !\u_kirsch|f_t3_1_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z24\ # !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ & (\u_kirsch|u_flow|p11_add9_1|nx45949z24\ # GND))
-- \u_kirsch|u_flow|p11_add9_1|nx45949z21\ = CARRY(\u_kirsch|f_t3_1_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z24\ # !\u_kirsch|f_t3_1_\ & (!\u_kirsch|u_flow|p11_add9_1|nx45949z24\ # 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_1_\,
	datab => \u_kirsch|u_flow|p11_add8_0i1|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z24\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx38970z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z21\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx39967z1\ = (\u_kirsch|f_t3_2_\ $ \u_kirsch|u_flow|p11_add8_0i1|nx39967z1\ $ !\u_kirsch|u_flow|p11_add9_1|nx45949z21\) # GND
-- \u_kirsch|u_flow|p11_add9_1|nx45949z18\ = CARRY(\u_kirsch|f_t3_2_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx39967z1\ # !\u_kirsch|u_flow|p11_add9_1|nx45949z21\) # !\u_kirsch|f_t3_2_\ & \u_kirsch|u_flow|p11_add8_0i1|nx39967z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx45949z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_2_\,
	datab => \u_kirsch|u_flow|p11_add8_0i1|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z21\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx39967z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z18\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx40964z1\ = \u_kirsch|u_flow|p11_add8_0i1|nx40964z1\ & (\u_kirsch|f_t3_3_\ & \u_kirsch|u_flow|p11_add9_1|nx45949z18\ & VCC # !\u_kirsch|f_t3_3_\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z18\) # 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx40964z1\ & (\u_kirsch|f_t3_3_\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z18\ # !\u_kirsch|f_t3_3_\ & (\u_kirsch|u_flow|p11_add9_1|nx45949z18\ # GND))
-- \u_kirsch|u_flow|p11_add9_1|nx45949z15\ = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx40964z1\ & !\u_kirsch|f_t3_3_\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z18\ # !\u_kirsch|u_flow|p11_add8_0i1|nx40964z1\ & (!\u_kirsch|u_flow|p11_add9_1|nx45949z18\ # 
-- !\u_kirsch|f_t3_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add8_0i1|nx40964z1\,
	datab => \u_kirsch|f_t3_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z18\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx40964z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z15\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx41961z1\ = (\u_kirsch|u_flow|p11_add8_0i1|nx41961z1\ $ \u_kirsch|f_t3_4_\ $ !\u_kirsch|u_flow|p11_add9_1|nx45949z15\) # GND
-- \u_kirsch|u_flow|p11_add9_1|nx45949z12\ = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx41961z1\ & (\u_kirsch|f_t3_4_\ # !\u_kirsch|u_flow|p11_add9_1|nx45949z15\) # !\u_kirsch|u_flow|p11_add8_0i1|nx41961z1\ & \u_kirsch|f_t3_4_\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx45949z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add8_0i1|nx41961z1\,
	datab => \u_kirsch|f_t3_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z15\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx41961z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z12\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx42958z1\ = \u_kirsch|u_flow|p11_add8_0i1|nx42958z1\ & (\u_kirsch|f_t3_5_\ & \u_kirsch|u_flow|p11_add9_1|nx45949z12\ & VCC # !\u_kirsch|f_t3_5_\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z12\) # 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx42958z1\ & (\u_kirsch|f_t3_5_\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z12\ # !\u_kirsch|f_t3_5_\ & (\u_kirsch|u_flow|p11_add9_1|nx45949z12\ # GND))
-- \u_kirsch|u_flow|p11_add9_1|nx45949z9\ = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx42958z1\ & !\u_kirsch|f_t3_5_\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z12\ # !\u_kirsch|u_flow|p11_add8_0i1|nx42958z1\ & (!\u_kirsch|u_flow|p11_add9_1|nx45949z12\ # 
-- !\u_kirsch|f_t3_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add8_0i1|nx42958z1\,
	datab => \u_kirsch|f_t3_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z12\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx42958z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z9\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx43955z1\ = (\u_kirsch|u_flow|p11_add8_0i1|nx43955z1\ $ \u_kirsch|f_t3_6_\ $ !\u_kirsch|u_flow|p11_add9_1|nx45949z9\) # GND
-- \u_kirsch|u_flow|p11_add9_1|nx45949z6\ = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx43955z1\ & (\u_kirsch|f_t3_6_\ # !\u_kirsch|u_flow|p11_add9_1|nx45949z9\) # !\u_kirsch|u_flow|p11_add8_0i1|nx43955z1\ & \u_kirsch|f_t3_6_\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx45949z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add8_0i1|nx43955z1\,
	datab => \u_kirsch|f_t3_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z9\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx43955z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z6\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx44952z1\ = \u_kirsch|f_t3_7_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ & \u_kirsch|u_flow|p11_add9_1|nx45949z6\ & VCC # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z6\) # 
-- !\u_kirsch|f_t3_7_\ & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z6\ # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx45949z6\ # GND))
-- \u_kirsch|u_flow|p11_add9_1|nx45949z3\ = CARRY(\u_kirsch|f_t3_7_\ & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z6\ # !\u_kirsch|f_t3_7_\ & (!\u_kirsch|u_flow|p11_add9_1|nx45949z6\ # 
-- !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_7_\,
	datab => \u_kirsch|u_flow|p11_add8_0i1|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z6\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx44952z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx45949z3\);

\u_kirsch|u_flow|p11_add9_1|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx45949z1\ = \u_kirsch|u_flow|p11_add8_0i1|nx23445z1\ & (\u_kirsch|u_flow|p11_add9_1|nx45949z3\ $ GND) # !\u_kirsch|u_flow|p11_add8_0i1|nx23445z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z3\ & VCC
-- \u_kirsch|u_flow|p11_add9_1|nx23445z2\ = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx23445z1\ & !\u_kirsch|u_flow|p11_add9_1|nx45949z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p11_add8_0i1|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p11_add9_1|nx45949z3\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx45949z1\,
	cout => \u_kirsch|u_flow|p11_add9_1|nx23445z2\);

\u_kirsch|u_flow|p11_add9_1|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p11_add9_1|nx23445z1\ = \u_kirsch|u_flow|p11_add9_1|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p11_add9_1|nx23445z2\,
	combout => \u_kirsch|u_flow|p11_add9_1|nx23445z1\);

\u_kirsch|reg_f_b2_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_7_\);

\u_kirsch|u_memory|reg_buffer2_1__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx62359z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(7),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__7_\);

\u_kirsch|ix20836z52955\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_7_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_1__7_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b2_next_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|o_image2_1__7_\,
	datac => \u_kirsch|f_b2_next_7_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_7_\);

\u_kirsch|reg_f_b1_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_7_\);

\u_kirsch|u_memory|reg_buffer2_0__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx63578z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(7),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__7_\);

\u_kirsch|ix20836z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_7_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_0__7_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b1_next_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image2_0__7_\,
	datad => \u_kirsch|f_b1_next_7_\,
	combout => \u_kirsch|f_b1_7_\);

\u_kirsch|reg_f_b2_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_6_\);

\u_kirsch|u_memory|reg_buffer2_1__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx61362z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(6),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__6_\);

\u_kirsch|ix20836z52956\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_1__6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b2_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_6_\,
	datac => \u_kirsch|u_memory|o_image2_1__6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_6_\);

\u_kirsch|reg_f_b1_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_6_\);

\u_kirsch|u_memory|reg_buffer2_0__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx64575z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(6),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__6_\);

\u_kirsch|ix20836z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_0__6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b1_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_next_6_\,
	datac => \u_kirsch|u_memory|o_image2_0__6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b1_6_\);

\u_kirsch|reg_f_b2_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_5_\);

\u_kirsch|u_memory|reg_buffer2_1__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx60365z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(5),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__5_\);

\u_kirsch|ix20836z52957\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_1__5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b2_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b2_next_5_\,
	datac => \u_kirsch|u_memory|o_image2_1__5_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_5_\);

\u_kirsch|reg_f_b1_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_5_\);

\u_kirsch|u_memory|reg_buffer2_0__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx36z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(5),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__5_\);

\u_kirsch|ix20836z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_0__5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b1_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b1_next_5_\,
	datac => \u_kirsch|u_memory|o_image2_0__5_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b1_5_\);

\u_kirsch|reg_f_b2_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_4_\);

\u_kirsch|u_memory|reg_buffer2_1__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx59368z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(4),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__4_\);

\u_kirsch|ix20836z52958\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_4_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_1__4_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b2_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_4_\,
	datac => \u_kirsch|u_memory|o_image2_1__4_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_4_\);

\u_kirsch|reg_f_b1_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_4_\);

\u_kirsch|u_memory|reg_buffer2_0__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx1033z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(4),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__4_\);

\u_kirsch|ix20836z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_4_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_0__4_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b1_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_next_4_\,
	datab => \u_kirsch|u_memory|o_image2_0__4_\,
	datac => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b1_4_\);

\u_kirsch|reg_f_b2_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_3_\);

\u_kirsch|u_memory|reg_buffer2_1__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx58371z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(3),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__3_\);

\u_kirsch|ix20836z52959\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_3_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_1__3_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b2_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_3_\,
	datac => \u_kirsch|u_memory|o_image2_1__3_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_3_\);

\u_kirsch|reg_f_b1_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_3_\);

\u_kirsch|u_memory|reg_buffer2_0__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx2030z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(3),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__3_\);

\u_kirsch|ix20836z52951\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_3_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_0__3_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b1_next_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|o_image2_0__3_\,
	datac => \u_kirsch|f_b1_next_3_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b1_3_\);

\u_kirsch|reg_f_b2_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_2_\);

\u_kirsch|u_memory|reg_buffer2_1__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx57374z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(2),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__2_\);

\u_kirsch|ix20836z52960\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_2_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_1__2_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b2_next_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image2_1__2_\,
	datac => \u_kirsch|f_b2_next_2_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_2_\);

\u_kirsch|reg_f_b1_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_2_\);

\u_kirsch|u_memory|reg_buffer2_0__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx3027z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(2),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__2_\);

\u_kirsch|ix20836z52952\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_2_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_0__2_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b1_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_next_2_\,
	datab => \u_kirsch|u_memory|o_image2_0__2_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b1_2_\);

\u_kirsch|reg_f_b2_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_1_\);

\u_kirsch|u_memory|reg_buffer2_1__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx56377z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(1),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__1_\);

\u_kirsch|ix20836z52961\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_1_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_1__1_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b2_next_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image2_1__1_\,
	datad => \u_kirsch|f_b2_next_1_\,
	combout => \u_kirsch|f_b2_1_\);

\u_kirsch|reg_f_b1_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_1_\);

\u_kirsch|u_memory|reg_buffer2_0__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx4024z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(1),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__1_\);

\u_kirsch|ix20836z52953\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_1_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_0__1_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b1_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|f_b1_next_1_\,
	datad => \u_kirsch|u_memory|o_image2_0__1_\,
	combout => \u_kirsch|f_b1_1_\);

\u_kirsch|reg_f_b1_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b1_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_1__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b1_next_0_\);

\u_kirsch|u_memory|reg_buffer2_0__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx5021z1\,
	sdata => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(0),
	sload => \u_kirsch|u_memory|b_1_\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_0__0_\);

\u_kirsch|ix20836z52954\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_0_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_0__0_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b1_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|f_b1_next_0_\,
	datad => \u_kirsch|u_memory|o_image2_0__0_\,
	combout => \u_kirsch|f_b1_0_\);

\u_kirsch|reg_f_b2_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b2_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_2__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b2_next_0_\);

\u_kirsch|u_memory|reg_buffer2_1__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx55380z1\,
	sdata => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(0),
	sload => \u_kirsch|u_memory|b_1__dup_352\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_1__0_\);

\u_kirsch|ix20836z52962\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_0_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_1__0_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b2_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_0_\,
	datac => \u_kirsch|u_memory|o_image2_1__0_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b2_0_\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx37973z1\ = \u_kirsch|f_b2_0_\ & (\u_kirsch|f_b1_0_\ $ VCC) # !\u_kirsch|f_b2_0_\ & \u_kirsch|f_b1_0_\ & VCC
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ = CARRY(\u_kirsch|f_b2_0_\ & \u_kirsch|f_b1_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_0_\,
	datab => \u_kirsch|f_b1_0_\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx37973z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z22\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ = \u_kirsch|f_b2_1_\ & (\u_kirsch|f_b1_1_\ & \u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ & VCC # !\u_kirsch|f_b1_1_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z22\) # !\u_kirsch|f_b2_1_\ & (\u_kirsch|f_b1_1_\ & 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ # !\u_kirsch|f_b1_1_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ # GND))
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z19\ = CARRY(\u_kirsch|f_b2_1_\ & !\u_kirsch|f_b1_1_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ # !\u_kirsch|f_b2_1_\ & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z22\ # !\u_kirsch|f_b1_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_1_\,
	datab => \u_kirsch|f_b1_1_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z22\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx38970z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z19\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx39967z1\ = (\u_kirsch|f_b2_2_\ $ \u_kirsch|f_b1_2_\ $ !\u_kirsch|u_flow|p12_add8_0i2|nx44952z19\) # GND
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ = CARRY(\u_kirsch|f_b2_2_\ & (\u_kirsch|f_b1_2_\ # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z19\) # !\u_kirsch|f_b2_2_\ & \u_kirsch|f_b1_2_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_2_\,
	datab => \u_kirsch|f_b1_2_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z19\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx39967z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z16\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx40964z1\ = \u_kirsch|f_b1_3_\ & (\u_kirsch|f_b2_3_\ & \u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ & VCC # !\u_kirsch|f_b2_3_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z16\) # !\u_kirsch|f_b1_3_\ & (\u_kirsch|f_b2_3_\ & 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ # !\u_kirsch|f_b2_3_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ # GND))
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z13\ = CARRY(\u_kirsch|f_b1_3_\ & !\u_kirsch|f_b2_3_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ # !\u_kirsch|f_b1_3_\ & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z16\ # !\u_kirsch|f_b2_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_3_\,
	datab => \u_kirsch|f_b2_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z16\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx40964z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z13\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx41961z1\ = (\u_kirsch|f_b1_4_\ $ \u_kirsch|f_b2_4_\ $ !\u_kirsch|u_flow|p12_add8_0i2|nx44952z13\) # GND
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ = CARRY(\u_kirsch|f_b1_4_\ & (\u_kirsch|f_b2_4_\ # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z13\) # !\u_kirsch|f_b1_4_\ & \u_kirsch|f_b2_4_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_4_\,
	datab => \u_kirsch|f_b2_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z13\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx41961z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z10\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx42958z1\ = \u_kirsch|f_b1_5_\ & (\u_kirsch|f_b2_5_\ & \u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ & VCC # !\u_kirsch|f_b2_5_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z10\) # !\u_kirsch|f_b1_5_\ & (\u_kirsch|f_b2_5_\ & 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ # !\u_kirsch|f_b2_5_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ # GND))
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z7\ = CARRY(\u_kirsch|f_b1_5_\ & !\u_kirsch|f_b2_5_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ # !\u_kirsch|f_b1_5_\ & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z10\ # !\u_kirsch|f_b2_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_5_\,
	datab => \u_kirsch|f_b2_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z10\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx42958z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z7\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx43955z1\ = (\u_kirsch|f_b2_6_\ $ \u_kirsch|f_b1_6_\ $ !\u_kirsch|u_flow|p12_add8_0i2|nx44952z7\) # GND
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ = CARRY(\u_kirsch|f_b2_6_\ & (\u_kirsch|f_b1_6_\ # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z7\) # !\u_kirsch|f_b2_6_\ & \u_kirsch|f_b1_6_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_6_\,
	datab => \u_kirsch|f_b1_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z7\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx43955z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z4\);

\u_kirsch|u_flow|p12_add8_0i2|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ = \u_kirsch|f_b1_7_\ & (\u_kirsch|f_b2_7_\ & \u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ & VCC # !\u_kirsch|f_b2_7_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z4\) # !\u_kirsch|f_b1_7_\ & (\u_kirsch|f_b2_7_\ & 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ # !\u_kirsch|f_b2_7_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ # GND))
-- \u_kirsch|u_flow|p12_add8_0i2|nx23445z2\ = CARRY(\u_kirsch|f_b1_7_\ & !\u_kirsch|f_b2_7_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ # !\u_kirsch|f_b1_7_\ & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z4\ # !\u_kirsch|f_b2_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_7_\,
	datab => \u_kirsch|f_b2_7_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx44952z4\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx44952z1\,
	cout => \u_kirsch|u_flow|p12_add8_0i2|nx23445z2\);

\u_kirsch|u_flow|p12_add8_0i2|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add8_0i2|nx23445z1\ = !\u_kirsch|u_flow|p12_add8_0i2|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p12_add8_0i2|nx23445z2\,
	combout => \u_kirsch|u_flow|p12_add8_0i2|nx23445z1\);

\u_kirsch|reg_f_b3_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_7_\);

\u_kirsch|u_memory|reg_buffer2_2__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_7_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__7_\);

\u_kirsch|ix20836z52963\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_7_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_2__7_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b3_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|f_b3_next_7_\,
	datad => \u_kirsch|u_memory|o_image2_2__7_\,
	combout => \u_kirsch|f_b3_7_\);

\u_kirsch|reg_f_b3_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_6_\);

\u_kirsch|u_memory|reg_buffer2_2__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_6_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__6_\);

\u_kirsch|ix20836z52964\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_2__6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b3_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b3_next_6_\,
	datac => \u_kirsch|u_memory|o_image2_2__6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b3_6_\);

\u_kirsch|reg_f_b3_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_5_\);

\u_kirsch|u_memory|reg_buffer2_2__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_5_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__5_\);

\u_kirsch|ix20836z52965\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_2__5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b3_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b3_next_5_\,
	datac => \u_kirsch|u_memory|o_image2_2__5_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b3_5_\);

\u_kirsch|reg_f_b3_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_4_\);

\u_kirsch|u_memory|reg_buffer2_2__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_4_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__4_\);

\u_kirsch|ix20836z52966\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_4_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_2__4_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b3_next_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|u_memory|o_image2_2__4_\,
	datac => \u_kirsch|f_b3_next_4_\,
	combout => \u_kirsch|f_b3_4_\);

\u_kirsch|reg_f_b3_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_3_\);

\u_kirsch|u_memory|reg_buffer2_2__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_3_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__3_\);

\u_kirsch|ix20836z52967\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_3_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_2__3_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b3_next_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image2_2__3_\,
	datab => \u_kirsch|f_b3_next_3_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_b3_3_\);

\u_kirsch|reg_f_b3_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_2_\);

\u_kirsch|u_memory|reg_buffer2_2__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_2_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__2_\);

\u_kirsch|ix20836z52968\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_2_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_2__2_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b3_next_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|o_image2_2__2_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|f_b3_next_2_\,
	combout => \u_kirsch|f_b3_2_\);

\u_kirsch|reg_f_b3_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_1_\);

\u_kirsch|u_memory|reg_buffer2_2__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_1_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__1_\);

\u_kirsch|ix20836z52969\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_1_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image2_2__1_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_b3_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b3_next_1_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|u_memory|o_image2_2__1_\,
	combout => \u_kirsch|f_b3_1_\);

\u_kirsch|reg_f_b3_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_b3_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image1_2__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_b3_next_0_\);

\u_kirsch|u_memory|reg_buffer2_2__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image2_2__0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|mem_data_0_\,
	sload => \u_kirsch|u_memory|nx57224z1\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image2_2__0_\);

\u_kirsch|ix20836z52970\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_0_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image2_2__0_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_b3_next_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image2_2__0_\,
	datab => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|f_b3_next_0_\,
	combout => \u_kirsch|f_b3_0_\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx37973z1\ = \u_kirsch|u_flow|p12_add8_0i2|nx37973z1\ & (\u_kirsch|f_b3_0_\ $ VCC) # !\u_kirsch|u_flow|p12_add8_0i2|nx37973z1\ & \u_kirsch|f_b3_0_\ & VCC
-- \u_kirsch|u_flow|p12_add9_2|nx45949z24\ = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx37973z1\ & \u_kirsch|f_b3_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add8_0i2|nx37973z1\,
	datab => \u_kirsch|f_b3_0_\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p12_add9_2|nx37973z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z24\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx38970z1\ = \u_kirsch|f_b3_1_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ & \u_kirsch|u_flow|p12_add9_2|nx45949z24\ & VCC # !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z24\) # 
-- !\u_kirsch|f_b3_1_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z24\ # !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ & (\u_kirsch|u_flow|p12_add9_2|nx45949z24\ # GND))
-- \u_kirsch|u_flow|p12_add9_2|nx45949z21\ = CARRY(\u_kirsch|f_b3_1_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z24\ # !\u_kirsch|f_b3_1_\ & (!\u_kirsch|u_flow|p12_add9_2|nx45949z24\ # 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b3_1_\,
	datab => \u_kirsch|u_flow|p12_add8_0i2|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z24\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx38970z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z21\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx39967z1\ = (\u_kirsch|f_b3_2_\ $ \u_kirsch|u_flow|p12_add8_0i2|nx39967z1\ $ !\u_kirsch|u_flow|p12_add9_2|nx45949z21\) # GND
-- \u_kirsch|u_flow|p12_add9_2|nx45949z18\ = CARRY(\u_kirsch|f_b3_2_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx39967z1\ # !\u_kirsch|u_flow|p12_add9_2|nx45949z21\) # !\u_kirsch|f_b3_2_\ & \u_kirsch|u_flow|p12_add8_0i2|nx39967z1\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx45949z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b3_2_\,
	datab => \u_kirsch|u_flow|p12_add8_0i2|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z21\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx39967z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z18\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx40964z1\ = \u_kirsch|u_flow|p12_add8_0i2|nx40964z1\ & (\u_kirsch|f_b3_3_\ & \u_kirsch|u_flow|p12_add9_2|nx45949z18\ & VCC # !\u_kirsch|f_b3_3_\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z18\) # 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx40964z1\ & (\u_kirsch|f_b3_3_\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z18\ # !\u_kirsch|f_b3_3_\ & (\u_kirsch|u_flow|p12_add9_2|nx45949z18\ # GND))
-- \u_kirsch|u_flow|p12_add9_2|nx45949z15\ = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx40964z1\ & !\u_kirsch|f_b3_3_\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z18\ # !\u_kirsch|u_flow|p12_add8_0i2|nx40964z1\ & (!\u_kirsch|u_flow|p12_add9_2|nx45949z18\ # 
-- !\u_kirsch|f_b3_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add8_0i2|nx40964z1\,
	datab => \u_kirsch|f_b3_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z18\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx40964z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z15\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx41961z1\ = (\u_kirsch|u_flow|p12_add8_0i2|nx41961z1\ $ \u_kirsch|f_b3_4_\ $ !\u_kirsch|u_flow|p12_add9_2|nx45949z15\) # GND
-- \u_kirsch|u_flow|p12_add9_2|nx45949z12\ = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx41961z1\ & (\u_kirsch|f_b3_4_\ # !\u_kirsch|u_flow|p12_add9_2|nx45949z15\) # !\u_kirsch|u_flow|p12_add8_0i2|nx41961z1\ & \u_kirsch|f_b3_4_\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx45949z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add8_0i2|nx41961z1\,
	datab => \u_kirsch|f_b3_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z15\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx41961z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z12\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx42958z1\ = \u_kirsch|u_flow|p12_add8_0i2|nx42958z1\ & (\u_kirsch|f_b3_5_\ & \u_kirsch|u_flow|p12_add9_2|nx45949z12\ & VCC # !\u_kirsch|f_b3_5_\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z12\) # 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx42958z1\ & (\u_kirsch|f_b3_5_\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z12\ # !\u_kirsch|f_b3_5_\ & (\u_kirsch|u_flow|p12_add9_2|nx45949z12\ # GND))
-- \u_kirsch|u_flow|p12_add9_2|nx45949z9\ = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx42958z1\ & !\u_kirsch|f_b3_5_\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z12\ # !\u_kirsch|u_flow|p12_add8_0i2|nx42958z1\ & (!\u_kirsch|u_flow|p12_add9_2|nx45949z12\ # 
-- !\u_kirsch|f_b3_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add8_0i2|nx42958z1\,
	datab => \u_kirsch|f_b3_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z12\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx42958z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z9\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx43955z1\ = (\u_kirsch|u_flow|p12_add8_0i2|nx43955z1\ $ \u_kirsch|f_b3_6_\ $ !\u_kirsch|u_flow|p12_add9_2|nx45949z9\) # GND
-- \u_kirsch|u_flow|p12_add9_2|nx45949z6\ = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx43955z1\ & (\u_kirsch|f_b3_6_\ # !\u_kirsch|u_flow|p12_add9_2|nx45949z9\) # !\u_kirsch|u_flow|p12_add8_0i2|nx43955z1\ & \u_kirsch|f_b3_6_\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx45949z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add8_0i2|nx43955z1\,
	datab => \u_kirsch|f_b3_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z9\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx43955z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z6\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx44952z1\ = \u_kirsch|f_b3_7_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ & \u_kirsch|u_flow|p12_add9_2|nx45949z6\ & VCC # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z6\) # 
-- !\u_kirsch|f_b3_7_\ & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z6\ # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ & (\u_kirsch|u_flow|p12_add9_2|nx45949z6\ # GND))
-- \u_kirsch|u_flow|p12_add9_2|nx45949z3\ = CARRY(\u_kirsch|f_b3_7_\ & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z6\ # !\u_kirsch|f_b3_7_\ & (!\u_kirsch|u_flow|p12_add9_2|nx45949z6\ # 
-- !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b3_7_\,
	datab => \u_kirsch|u_flow|p12_add8_0i2|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z6\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx44952z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx45949z3\);

\u_kirsch|u_flow|p12_add9_2|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx45949z1\ = \u_kirsch|u_flow|p12_add8_0i2|nx23445z1\ & (\u_kirsch|u_flow|p12_add9_2|nx45949z3\ $ GND) # !\u_kirsch|u_flow|p12_add8_0i2|nx23445z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z3\ & VCC
-- \u_kirsch|u_flow|p12_add9_2|nx23445z2\ = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx23445z1\ & !\u_kirsch|u_flow|p12_add9_2|nx45949z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p12_add8_0i2|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p12_add9_2|nx45949z3\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx45949z1\,
	cout => \u_kirsch|u_flow|p12_add9_2|nx23445z2\);

\u_kirsch|u_flow|p12_add9_2|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p12_add9_2|nx23445z1\ = \u_kirsch|u_flow|p12_add9_2|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p12_add9_2|nx23445z2\,
	combout => \u_kirsch|u_flow|p12_add9_2|nx23445z1\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx37973z1\,
	datad => VCC,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ = \u_kirsch|u_flow|p12_add9_2|nx37973z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\ # GND) # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & 
-- !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\) # !\u_kirsch|u_flow|p12_add9_2|nx37973z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\ # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & 
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\ & VCC)
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\) # !\u_kirsch|u_flow|p12_add9_2|nx37973z1\ & 
-- \u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx37973z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\ = (\u_kirsch|u_flow|p12_add9_2|nx39967z1\ $ \u_kirsch|u_flow|p11_add9_1|nx38970z1\ $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\) # GND
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & \u_kirsch|u_flow|p11_add9_1|nx38970z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\ # !\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx38970z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx39967z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\ = \u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\ # !\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & 
-- (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\ # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\ & VCC # !\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & 
-- !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\)
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (!\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\ # !\u_kirsch|u_flow|p11_add9_1|nx39967z1\) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx40964z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\ = (\u_kirsch|u_flow|p12_add9_2|nx41961z1\ $ \u_kirsch|u_flow|p11_add9_1|nx40964z1\ $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\) # GND
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & \u_kirsch|u_flow|p11_add9_1|nx40964z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\ # !\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx40964z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx41961z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\ = \u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\ # !\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & 
-- (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\ # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\ & VCC # !\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & 
-- !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\)
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (!\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\ # !\u_kirsch|u_flow|p11_add9_1|nx41961z1\) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx42958z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\ = (\u_kirsch|u_flow|p12_add9_2|nx43955z1\ $ \u_kirsch|u_flow|p11_add9_1|nx42958z1\ $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\) # GND
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & \u_kirsch|u_flow|p11_add9_1|nx42958z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\ # !\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx42958z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx43955z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx42958z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\ = \u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\ # !\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & 
-- (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\ # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\ & VCC # !\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & 
-- !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\)
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (!\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\ # !\u_kirsch|u_flow|p11_add9_1|nx43955z1\) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx44952z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\ = (\u_kirsch|u_flow|p12_add9_2|nx45949z1\ $ \u_kirsch|u_flow|p11_add9_1|nx44952z1\ $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\) # GND
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & \u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\ # !\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx45949z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\ = \u_kirsch|u_flow|p11_add9_1|nx45949z1\ & (\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\ # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\ 
-- & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx45949z1\ & (\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\ # GND) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\)
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx45949z1\ & \u_kirsch|u_flow|p12_add9_2|nx23445z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\ # !\u_kirsch|u_flow|p11_add9_1|nx45949z1\ & 
-- (\u_kirsch|u_flow|p12_add9_2|nx23445z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx45949z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\);

\u_kirsch|u_flow|p21_sub11_4i4|ix46946z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\ = \u_kirsch|u_flow|p11_add9_1|nx23445z1\ & (GND # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\ $ GND)
-- \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx23445z1\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p11_add9_1|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z3\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\,
	cout => \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx37973z1\ = \u_kirsch|u_flow|p11_add9_1|nx37973z1\ & (GND # !\u_kirsch|u_flow|p12_add9_2|nx37973z1\) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & (\u_kirsch|u_flow|p12_add9_2|nx37973z1\ $ GND)
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx37973z1\ # !\u_kirsch|u_flow|p12_add9_2|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx37973z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx37973z1\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx37973z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\ = \u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\ # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & 
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\ & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\ # GND) # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & 
-- !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\)
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & \u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\ # !\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & 
-- (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx38970z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\ = (\u_kirsch|u_flow|p12_add9_2|nx39967z1\ $ \u_kirsch|u_flow|p11_add9_1|nx39967z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\) # GND
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & \u_kirsch|u_flow|p11_add9_1|nx39967z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\ # !\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx39967z1\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx39967z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\ = \u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\ # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & 
-- (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\ # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\ & VCC # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & 
-- !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\)
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (!\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\ # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx40964z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ = (\u_kirsch|u_flow|p12_add9_2|nx41961z1\ $ \u_kirsch|u_flow|p11_add9_1|nx41961z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\) # GND
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & \u_kirsch|u_flow|p11_add9_1|nx41961z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\ # !\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx41961z1\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx41961z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\ = \u_kirsch|u_flow|p11_add9_1|nx42958z1\ & (\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\ # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & 
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\ & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & (\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\ # GND) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & 
-- !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\)
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & \u_kirsch|u_flow|p12_add9_2|nx42958z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\ # !\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & 
-- (\u_kirsch|u_flow|p12_add9_2|nx42958z1\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx42958z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx42958z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ = (\u_kirsch|u_flow|p11_add9_1|nx43955z1\ $ \u_kirsch|u_flow|p12_add9_2|nx43955z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\) # GND
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & (!\u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\ # !\u_kirsch|u_flow|p12_add9_2|nx43955z1\) # !\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx43955z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\ = \u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\ # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & 
-- (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\ # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\ & VCC # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & 
-- !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\)
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (!\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\ # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx44952z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ = (\u_kirsch|u_flow|p12_add9_2|nx45949z1\ $ \u_kirsch|u_flow|p11_add9_1|nx45949z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\) # GND
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & \u_kirsch|u_flow|p11_add9_1|nx45949z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\ # !\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx45949z1\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx45949z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx45949z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\);

\u_kirsch|u_flow|p21_sub10_4i3|ix46946z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\ = \u_kirsch|u_flow|p11_add9_1|nx23445z1\ & (\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\ # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\ 
-- & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & (\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\ # GND) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\)
-- \u_kirsch|u_flow|p21_sub10_4i3|nx23445z2\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & \u_kirsch|u_flow|p12_add9_2|nx23445z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\ # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & 
-- (\u_kirsch|u_flow|p12_add9_2|nx23445z1\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx23445z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\,
	cout => \u_kirsch|u_flow|p21_sub10_4i3|nx23445z2\);

\u_kirsch|u_flow|p21_sub10_4i3|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ = !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p21_sub10_4i3|nx23445z2\,
	combout => \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx37973z1\ = \u_kirsch|u_flow|p12_add9_2|nx37973z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\ $ VCC) # !\u_kirsch|u_flow|p12_add9_2|nx37973z1\ & \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\ & VCC
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1\ & \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx37973z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx37973z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z32\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx38970z1\ = \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ & \u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ & VCC # !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ & 
-- !\u_kirsch|u_flow|p21_add12_4i1|nx63795z32\) # !\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ & 
-- (\u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ # GND))
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z29\ = CARRY(\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\ & !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\ & 
-- (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z32\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1\,
	datab => \u_kirsch|u_flow|p21_sub11_4i4|nx37973z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z32\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx38970z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z29\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx39967z1\ = (\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\ $ \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\ $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z29\) # GND
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ = CARRY(\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\ # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z29\) # !\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\ & 
-- \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub10_4i3|nx40964z1\,
	datab => \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z29\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx39967z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z26\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx40964z1\ = \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ & \u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ & VCC # !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ & 
-- !\u_kirsch|u_flow|p21_add12_4i1|nx63795z26\) # !\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ & 
-- (\u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ # GND))
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z23\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\ & 
-- (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z26\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z26\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx40964z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z23\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx41961z1\ = (\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\ $ \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\ $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z23\) # GND
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ = CARRY(\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\ & (\u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\ # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z23\) # !\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\ & 
-- \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub10_4i3|nx42958z1\,
	datab => \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z23\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx41961z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z20\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx42958z1\ = \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ & \u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ & VCC # !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ & 
-- !\u_kirsch|u_flow|p21_add12_4i1|nx63795z20\) # !\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ & 
-- (\u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ # GND))
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z17\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\ & 
-- (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z20\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z20\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx42958z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z17\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx43955z1\ = (\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\ $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z17\) # GND
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\ # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z17\) # !\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\ & 
-- \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx42958z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z17\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx43955z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z14\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx44952z1\ = \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ & \u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ & VCC # !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ & 
-- !\u_kirsch|u_flow|p21_add12_4i1|nx63795z14\) # !\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ & 
-- (\u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ # GND))
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z11\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\ & !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\ & 
-- (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z14\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx45949z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z14\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx44952z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z11\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx45949z1\ = (\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\ $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z11\) # GND
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z8\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\ # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z11\) # !\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\ & 
-- \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx44952z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z11\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx45949z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z8\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx46946z1\ = \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ & 
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z8\ & VCC) # !\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\ & (\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ & (\u_kirsch|u_flow|p21_add12_4i1|nx63795z8\ # GND) # !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ & 
-- !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8\)
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z6\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\ & \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8\ # !\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\ & 
-- (\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z8\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx46946z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z6\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx62798z1\ = (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ $ \u_kirsch|u_flow|p21_add12_4i1|nx63795z6\) # GND
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z4\ = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\ & (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z6\ # !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\) # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\ & 
-- !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx46946z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z6\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx62798z1\,
	cout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z4\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p12_add9_2|nx37973z1\,
	datad => VCC,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ = \u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & 
-- !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\ # !\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & 
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\ & VCC)
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p11_add9_1|nx37973z1\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & 
-- \u_kirsch|u_flow|p11_add9_1|nx37973z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx38970z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx37973z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\ = (\u_kirsch|u_flow|p11_add9_1|nx39967z1\ $ \u_kirsch|u_flow|p12_add9_2|nx38970z1\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\) # GND
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & \u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\ # !\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & 
-- (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx39967z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ = \u_kirsch|u_flow|p12_add9_2|nx39967z1\ & (\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\ # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & 
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\ & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & (\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & 
-- !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\)
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & \u_kirsch|u_flow|p11_add9_1|nx40964z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\ # !\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx40964z1\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx39967z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\ = (\u_kirsch|u_flow|p12_add9_2|nx40964z1\ $ \u_kirsch|u_flow|p11_add9_1|nx41961z1\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\) # GND
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\ # !\u_kirsch|u_flow|p11_add9_1|nx41961z1\) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx40964z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\ = \u_kirsch|u_flow|p11_add9_1|nx42958z1\ & (\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\ # !\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & 
-- (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\ # GND)) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & (\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\ & VCC # !\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & 
-- !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\)
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\ # !\u_kirsch|u_flow|p12_add9_2|nx41961z1\) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx42958z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\ = (\u_kirsch|u_flow|p12_add9_2|nx42958z1\ $ \u_kirsch|u_flow|p11_add9_1|nx43955z1\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\) # GND
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\ # !\u_kirsch|u_flow|p11_add9_1|nx43955z1\) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx42958z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ = \u_kirsch|u_flow|p12_add9_2|nx43955z1\ & (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\ # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & 
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\ & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & 
-- !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\)
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & \u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\ # !\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx43955z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\ = (\u_kirsch|u_flow|p12_add9_2|nx44952z1\ $ \u_kirsch|u_flow|p11_add9_1|nx45949z1\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\) # GND
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\ # !\u_kirsch|u_flow|p11_add9_1|nx45949z1\) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx45949z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx44952z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx45949z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\ = \u_kirsch|u_flow|p12_add9_2|nx45949z1\ & (\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\ # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\ 
-- & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & (\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\)
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & \u_kirsch|u_flow|p11_add9_1|nx23445z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\ # !\u_kirsch|u_flow|p12_add9_2|nx45949z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx23445z1\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx45949z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\);

\u_kirsch|u_flow|p22_sub11_4i6|ix46946z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\ = \u_kirsch|u_flow|p12_add9_2|nx23445z1\ & (GND # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\ $ GND)
-- \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx23445z1\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p12_add9_2|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z3\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\,
	cout => \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx37973z1\ = \u_kirsch|u_flow|p11_add9_1|nx37973z1\ & (\u_kirsch|u_flow|p12_add9_2|nx37973z1\ $ VCC) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & (\u_kirsch|u_flow|p12_add9_2|nx37973z1\ # GND)
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1\ # !\u_kirsch|u_flow|p11_add9_1|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx37973z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx37973z1\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx37973z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\ = \u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\ # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & 
-- (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\ # GND)) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\ & VCC # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & 
-- !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\)
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\ # !\u_kirsch|u_flow|p12_add9_2|nx38970z1\) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx38970z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx38970z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\ = (\u_kirsch|u_flow|p12_add9_2|nx39967z1\ $ \u_kirsch|u_flow|p11_add9_1|nx39967z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\) # GND
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\ # !\u_kirsch|u_flow|p11_add9_1|nx39967z1\) # !\u_kirsch|u_flow|p12_add9_2|nx39967z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx39967z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx39967z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\ = \u_kirsch|u_flow|p11_add9_1|nx40964z1\ & (\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\ # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & 
-- (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\ # GND)) # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & (\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\ & VCC # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & 
-- !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\)
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\ # !\u_kirsch|u_flow|p12_add9_2|nx40964z1\) # !\u_kirsch|u_flow|p11_add9_1|nx40964z1\ & 
-- !\u_kirsch|u_flow|p12_add9_2|nx40964z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx40964z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\ = (\u_kirsch|u_flow|p12_add9_2|nx41961z1\ $ \u_kirsch|u_flow|p11_add9_1|nx41961z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\) # GND
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\ # !\u_kirsch|u_flow|p11_add9_1|nx41961z1\) # !\u_kirsch|u_flow|p12_add9_2|nx41961z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx41961z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx41961z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\ = \u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\ # !\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & 
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\ & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & (\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1\ & 
-- !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\)
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & \u_kirsch|u_flow|p11_add9_1|nx42958z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\ # !\u_kirsch|u_flow|p12_add9_2|nx42958z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx42958z1\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx42958z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx42958z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ = (\u_kirsch|u_flow|p12_add9_2|nx43955z1\ $ \u_kirsch|u_flow|p11_add9_1|nx43955z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\) # GND
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\ # !\u_kirsch|u_flow|p11_add9_1|nx43955z1\) # !\u_kirsch|u_flow|p12_add9_2|nx43955z1\ & 
-- !\u_kirsch|u_flow|p11_add9_1|nx43955z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx43955z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\ = \u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\ # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & 
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\ & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx44952z1\ & 
-- !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\)
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & \u_kirsch|u_flow|p11_add9_1|nx44952z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\ # !\u_kirsch|u_flow|p12_add9_2|nx44952z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx44952z1\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx44952z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\ = (\u_kirsch|u_flow|p11_add9_1|nx45949z1\ $ \u_kirsch|u_flow|p12_add9_2|nx45949z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\) # GND
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx45949z1\ & \u_kirsch|u_flow|p12_add9_2|nx45949z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\ # !\u_kirsch|u_flow|p11_add9_1|nx45949z1\ & 
-- (\u_kirsch|u_flow|p12_add9_2|nx45949z1\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx45949z1\,
	datab => \u_kirsch|u_flow|p12_add9_2|nx45949z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\);

\u_kirsch|u_flow|p22_sub10_4i5|ix46946z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\ = \u_kirsch|u_flow|p12_add9_2|nx23445z1\ & (\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\ # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\ 
-- & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & (\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\ # GND) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\)
-- \u_kirsch|u_flow|p22_sub10_4i5|nx23445z2\ = CARRY(\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & \u_kirsch|u_flow|p11_add9_1|nx23445z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\ # !\u_kirsch|u_flow|p12_add9_2|nx23445z1\ & 
-- (\u_kirsch|u_flow|p11_add9_1|nx23445z1\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p12_add9_2|nx23445z1\,
	datab => \u_kirsch|u_flow|p11_add9_1|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\,
	cout => \u_kirsch|u_flow|p22_sub10_4i5|nx23445z2\);

\u_kirsch|u_flow|p22_sub10_4i5|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ = !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p22_sub10_4i5|nx23445z2\,
	combout => \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx37973z1\ = \u_kirsch|u_flow|p11_add9_1|nx37973z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\ $ VCC) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\ & VCC
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ = CARRY(\u_kirsch|u_flow|p11_add9_1|nx37973z1\ & \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p11_add9_1|nx37973z1\,
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx37973z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z32\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx38970z1\ = \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ & \u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ & VCC # !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ & 
-- !\u_kirsch|u_flow|p22_add12_4i2|nx63795z32\) # !\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ & 
-- (\u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ # GND))
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z29\ = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\ & 
-- (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z32\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1\,
	datab => \u_kirsch|u_flow|p22_sub11_4i6|nx37973z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z32\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx38970z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z29\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx39967z1\ = (\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\ $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z29\) # GND
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\ # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z29\) # !\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\ & 
-- \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub10_4i5|nx40964z1\,
	datab => \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z29\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx39967z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z26\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx40964z1\ = \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ & \u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ & VCC # !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ & 
-- !\u_kirsch|u_flow|p22_add12_4i2|nx63795z26\) # !\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ & 
-- (\u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ # GND))
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z23\ = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\ & 
-- (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z26\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1\,
	datab => \u_kirsch|u_flow|p22_sub11_4i6|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z26\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx40964z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z23\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx41961z1\ = (\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\ $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z23\) # GND
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\ # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z23\) # !\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\ & 
-- \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub10_4i5|nx42958z1\,
	datab => \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z23\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx41961z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z20\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx42958z1\ = \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ & \u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ & VCC # !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ & 
-- !\u_kirsch|u_flow|p22_add12_4i2|nx63795z20\) # !\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ & 
-- (\u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ # GND))
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z17\ = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\ & !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\ & 
-- (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z20\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1\,
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z20\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx42958z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z17\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx43955z1\ = (\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\ $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z17\) # GND
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\ # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z17\) # !\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\ & 
-- \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub11_4i6|nx42958z1\,
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z17\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx43955z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z14\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx44952z1\ = \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ & \u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ & VCC # !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ & 
-- !\u_kirsch|u_flow|p22_add12_4i2|nx63795z14\) # !\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\ & (\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ & 
-- (\u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ # GND))
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z11\ = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\ & !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\ & 
-- (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z14\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1\,
	datab => \u_kirsch|u_flow|p22_sub11_4i6|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z14\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx44952z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z11\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx45949z1\ = (\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\ $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z11\) # GND
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z8\ = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\ # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z11\) # !\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\ & 
-- \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub11_4i6|nx44952z1\,
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z11\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx45949z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z8\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx46946z1\ = \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ & 
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z8\ & VCC) # !\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\ & (\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ & (\u_kirsch|u_flow|p22_add12_4i2|nx63795z8\ # GND) # !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ & 
-- !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8\)
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z6\ = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\ & \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8\ # !\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\ & 
-- (\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1\,
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z8\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx46946z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z6\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx62798z1\ = (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\ $ \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ $ \u_kirsch|u_flow|p22_add12_4i2|nx63795z6\) # GND
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z4\ = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\ & (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z6\ # !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\) # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\ & 
-- !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p22_sub11_4i6|nx46946z1\,
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z6\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx62798z1\,
	cout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z4\);

\u_kirsch|u_flow|p21_sub11_4i4|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1\ = \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2\,
	combout => \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1\);

\u_kirsch|u_flow|p21_add12_4i1|ix63795z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p21_add12_4i1|nx63795z1\ = \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1\ $ \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\ $ \u_kirsch|u_flow|p21_add12_4i1|nx63795z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1\,
	datab => \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1\,
	cin => \u_kirsch|u_flow|p21_add12_4i1|nx63795z4\,
	combout => \u_kirsch|u_flow|p21_add12_4i1|nx63795z1\);

\u_kirsch|u_flow|p22_sub11_4i6|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1\ = \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2\,
	combout => \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1\);

\u_kirsch|u_flow|p22_add12_4i2|ix63795z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p22_add12_4i2|nx63795z1\ = \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\ $ \u_kirsch|u_flow|p22_add12_4i2|nx63795z4\ $ \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1\,
	datad => \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1\,
	cin => \u_kirsch|u_flow|p22_add12_4i2|nx63795z4\,
	combout => \u_kirsch|u_flow|p22_add12_4i2|nx63795z1\);

\u_kirsch|reg_f_i2_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_7_\);

\u_kirsch|u_memory|reg_buffer1_2__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__7_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__7_\);

\u_kirsch|ix20836z52979\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_7_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image1_2__7_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i2_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|f_i2_next_7_\,
	datad => \u_kirsch|u_memory|o_image1_2__7_\,
	combout => \u_kirsch|f_i2_7_\);

\u_kirsch|reg_f_i1_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_7_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__7_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_7_\);

\u_kirsch|u_memory|reg_buffer1_0__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__7_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__7_\);

\u_kirsch|ix20836z52971\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_7_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_0__7_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i1_next_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|u_memory|o_image1_0__7_\,
	datad => \u_kirsch|f_i1_next_7_\,
	combout => \u_kirsch|f_i1_7_\);

\u_kirsch|reg_f_i2_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_6_\);

\u_kirsch|u_memory|reg_buffer1_2__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__6_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__6_\);

\u_kirsch|ix20836z52980\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_6_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__6_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_image1_2__6_\,
	datab => \u_kirsch|f_i2_next_6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_i2_6_\);

\u_kirsch|reg_f_i1_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_6_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__6_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_6_\);

\u_kirsch|u_memory|reg_buffer1_0__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__6_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__6_\);

\u_kirsch|ix20836z52972\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image1_0__6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i1_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|f_i1_next_6_\,
	datad => \u_kirsch|u_memory|o_image1_0__6_\,
	combout => \u_kirsch|f_i1_6_\);

\u_kirsch|reg_f_i2_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_5_\);

\u_kirsch|u_memory|reg_buffer1_2__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__5_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__5_\);

\u_kirsch|ix20836z52981\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_5_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__5_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|u_memory|o_image1_2__5_\,
	datad => \u_kirsch|f_i2_next_5_\,
	combout => \u_kirsch|f_i2_5_\);

\u_kirsch|reg_f_i1_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_5_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__5_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_5_\);

\u_kirsch|u_memory|reg_buffer1_0__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__5_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__5_\);

\u_kirsch|ix20836z52973\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_image1_0__5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i1_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|f_i1_next_5_\,
	datad => \u_kirsch|u_memory|o_image1_0__5_\,
	combout => \u_kirsch|f_i1_5_\);

\u_kirsch|reg_f_i2_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_4_\);

\u_kirsch|u_memory|reg_buffer1_2__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__4_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__4_\);

\u_kirsch|ix20836z52982\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_4_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__4_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|u_memory|o_image1_2__4_\,
	datad => \u_kirsch|f_i2_next_4_\,
	combout => \u_kirsch|f_i2_4_\);

\u_kirsch|reg_f_i1_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_4_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__4_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_4_\);

\u_kirsch|u_memory|reg_buffer1_0__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__4_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__4_\);

\u_kirsch|ix20836z52974\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_4_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_0__4_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i1_next_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datab => \u_kirsch|u_memory|o_image1_0__4_\,
	datad => \u_kirsch|f_i1_next_4_\,
	combout => \u_kirsch|f_i1_4_\);

\u_kirsch|reg_f_i2_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_3_\);

\u_kirsch|u_memory|reg_buffer1_2__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__3_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__3_\);

\u_kirsch|ix20836z52983\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_3_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__3_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_2__3_\,
	datad => \u_kirsch|f_i2_next_3_\,
	combout => \u_kirsch|f_i2_3_\);

\u_kirsch|reg_f_i1_next_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_3_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__3_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_3_\);

\u_kirsch|u_memory|reg_buffer1_0__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__3_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__3_\);

\u_kirsch|ix20836z52975\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_3_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_0__3_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i1_next_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_0__3_\,
	datad => \u_kirsch|f_i1_next_3_\,
	combout => \u_kirsch|f_i1_3_\);

\u_kirsch|reg_f_i2_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_2_\);

\u_kirsch|u_memory|reg_buffer1_2__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__2_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__2_\);

\u_kirsch|ix20836z52984\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_2_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__2_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_2__2_\,
	datad => \u_kirsch|f_i2_next_2_\,
	combout => \u_kirsch|f_i2_2_\);

\u_kirsch|reg_f_i1_next_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_2_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__2_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_2_\);

\u_kirsch|u_memory|reg_buffer1_0__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__2_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__2_\);

\u_kirsch|ix20836z52976\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_2_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_0__2_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i1_next_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_0__2_\,
	datad => \u_kirsch|f_i1_next_2_\,
	combout => \u_kirsch|f_i1_2_\);

\u_kirsch|reg_f_i2_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_1_\);

\u_kirsch|u_memory|reg_buffer1_2__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__1_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__1_\);

\u_kirsch|ix20836z52985\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_1_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__1_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_2__1_\,
	datad => \u_kirsch|f_i2_next_1_\,
	combout => \u_kirsch|f_i2_1_\);

\u_kirsch|reg_f_i1_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_1_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__1_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_1_\);

\u_kirsch|u_memory|reg_buffer1_0__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__1_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__1_\);

\u_kirsch|ix20836z52977\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_1_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_0__1_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i1_next_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_0__1_\,
	datad => \u_kirsch|f_i1_next_1_\,
	combout => \u_kirsch|f_i1_1_\);

\u_kirsch|reg_f_i1_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i1_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image2_0__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i1_next_0_\);

\u_kirsch|u_memory|reg_buffer1_0__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_0__0_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_0__0_\);

\u_kirsch|ix20836z52978\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_0_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_0__0_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i1_next_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_0__0_\,
	datad => \u_kirsch|f_i1_next_0_\,
	combout => \u_kirsch|f_i1_0_\);

\u_kirsch|reg_f_i2_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i2_next_0_~feeder_combout\,
	sdata => \u_kirsch|u_memory|o_image0_2__0_\,
	sload => \u_kirsch|nx57127z2\,
	ena => \u_kirsch|nx57127z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i2_next_0_\);

\u_kirsch|u_memory|reg_buffer1_2__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_2__0_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_2__0_\);

\u_kirsch|ix20836z52986\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_0_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_image1_2__0_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i2_next_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_image1_2__0_\,
	datad => \u_kirsch|f_i2_next_0_\,
	combout => \u_kirsch|f_i2_0_\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx37973z1\ = \u_kirsch|f_i2_0_\ & (\u_kirsch|f_i1_0_\ $ VCC) # !\u_kirsch|f_i2_0_\ & \u_kirsch|f_i1_0_\ & VCC
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ = CARRY(\u_kirsch|f_i2_0_\ & \u_kirsch|f_i1_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i2_0_\,
	datab => \u_kirsch|f_i1_0_\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx37973z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z22\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ = \u_kirsch|f_i2_1_\ & (\u_kirsch|f_i1_1_\ & \u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ & VCC # !\u_kirsch|f_i1_1_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z22\) # !\u_kirsch|f_i2_1_\ & (\u_kirsch|f_i1_1_\ & 
-- !\u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ # !\u_kirsch|f_i1_1_\ & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ # GND))
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z19\ = CARRY(\u_kirsch|f_i2_1_\ & !\u_kirsch|f_i1_1_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ # !\u_kirsch|f_i2_1_\ & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z22\ # !\u_kirsch|f_i1_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i2_1_\,
	datab => \u_kirsch|f_i1_1_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z22\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z19\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ = (\u_kirsch|f_i1_2_\ $ \u_kirsch|f_i2_2_\ $ !\u_kirsch|u_flow|p13_add8_0i3|nx44952z19\) # GND
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ = CARRY(\u_kirsch|f_i1_2_\ & (\u_kirsch|f_i2_2_\ # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z19\) # !\u_kirsch|f_i1_2_\ & \u_kirsch|f_i2_2_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i1_2_\,
	datab => \u_kirsch|f_i2_2_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z19\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx39967z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z16\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ = \u_kirsch|f_i2_3_\ & (\u_kirsch|f_i1_3_\ & \u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ & VCC # !\u_kirsch|f_i1_3_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z16\) # !\u_kirsch|f_i2_3_\ & (\u_kirsch|f_i1_3_\ & 
-- !\u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ # !\u_kirsch|f_i1_3_\ & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ # GND))
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z13\ = CARRY(\u_kirsch|f_i2_3_\ & !\u_kirsch|f_i1_3_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ # !\u_kirsch|f_i2_3_\ & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z16\ # !\u_kirsch|f_i1_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i2_3_\,
	datab => \u_kirsch|f_i1_3_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z16\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z13\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ = (\u_kirsch|f_i2_4_\ $ \u_kirsch|f_i1_4_\ $ !\u_kirsch|u_flow|p13_add8_0i3|nx44952z13\) # GND
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ = CARRY(\u_kirsch|f_i2_4_\ & (\u_kirsch|f_i1_4_\ # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z13\) # !\u_kirsch|f_i2_4_\ & \u_kirsch|f_i1_4_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i2_4_\,
	datab => \u_kirsch|f_i1_4_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z13\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx41961z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z10\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ = \u_kirsch|f_i2_5_\ & (\u_kirsch|f_i1_5_\ & \u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ & VCC # !\u_kirsch|f_i1_5_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z10\) # !\u_kirsch|f_i2_5_\ & (\u_kirsch|f_i1_5_\ & 
-- !\u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ # !\u_kirsch|f_i1_5_\ & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ # GND))
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z7\ = CARRY(\u_kirsch|f_i2_5_\ & !\u_kirsch|f_i1_5_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ # !\u_kirsch|f_i2_5_\ & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z10\ # !\u_kirsch|f_i1_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i2_5_\,
	datab => \u_kirsch|f_i1_5_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z10\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z7\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ = (\u_kirsch|f_i1_6_\ $ \u_kirsch|f_i2_6_\ $ !\u_kirsch|u_flow|p13_add8_0i3|nx44952z7\) # GND
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ = CARRY(\u_kirsch|f_i1_6_\ & (\u_kirsch|f_i2_6_\ # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z7\) # !\u_kirsch|f_i1_6_\ & \u_kirsch|f_i2_6_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i1_6_\,
	datab => \u_kirsch|f_i2_6_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z7\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z4\);

\u_kirsch|u_flow|p13_add8_0i3|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ = \u_kirsch|f_i2_7_\ & (\u_kirsch|f_i1_7_\ & \u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ & VCC # !\u_kirsch|f_i1_7_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z4\) # !\u_kirsch|f_i2_7_\ & (\u_kirsch|f_i1_7_\ & 
-- !\u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ # !\u_kirsch|f_i1_7_\ & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ # GND))
-- \u_kirsch|u_flow|p13_add8_0i3|nx23445z2\ = CARRY(\u_kirsch|f_i2_7_\ & !\u_kirsch|f_i1_7_\ & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ # !\u_kirsch|f_i2_7_\ & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z4\ # !\u_kirsch|f_i1_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i2_7_\,
	datab => \u_kirsch|f_i1_7_\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx44952z4\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx44952z1\,
	cout => \u_kirsch|u_flow|p13_add8_0i3|nx23445z2\);

\u_kirsch|u_flow|p13_add8_0i3|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ = !\u_kirsch|u_flow|p13_add8_0i3|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p13_add8_0i3|nx23445z2\,
	combout => \u_kirsch|u_flow|p13_add8_0i3|nx23445z1\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx37973z1\ = \u_kirsch|u_flow|p13_add8_0i3|nx37973z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ $ VCC) # !\u_kirsch|u_flow|p13_add8_0i3|nx37973z1\ & \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ & VCC
-- \u_kirsch|u_flow|p13_add9_3|nx45949z17\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx37973z1\ & \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx37973z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\,
	datad => VCC,
	combout => \u_kirsch|u_flow|p13_add9_3|nx37973z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z17\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx38970z1\ = \u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ & \u_kirsch|u_flow|p13_add9_3|nx45949z17\ & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ & 
-- !\u_kirsch|u_flow|p13_add9_3|nx45949z17\) # !\u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z17\ # !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ & 
-- (\u_kirsch|u_flow|p13_add9_3|nx45949z17\ # GND))
-- \u_kirsch|u_flow|p13_add9_3|nx45949z15\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ & !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z17\ # !\u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ & 
-- (!\u_kirsch|u_flow|p13_add9_3|nx45949z17\ # !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx39967z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z17\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx38970z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z15\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx39967z1\ = (\u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ $ \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ $ !\u_kirsch|u_flow|p13_add9_3|nx45949z15\) # GND
-- \u_kirsch|u_flow|p13_add9_3|nx45949z13\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ # !\u_kirsch|u_flow|p13_add9_3|nx45949z15\) # !\u_kirsch|u_flow|p13_add8_0i3|nx39967z1\ & 
-- \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx39967z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z15\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx39967z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z13\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx40964z1\ = \u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ & \u_kirsch|u_flow|p13_add9_3|nx45949z13\ & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ & 
-- !\u_kirsch|u_flow|p13_add9_3|nx45949z13\) # !\u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z13\ # !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ & 
-- (\u_kirsch|u_flow|p13_add9_3|nx45949z13\ # GND))
-- \u_kirsch|u_flow|p13_add9_3|nx45949z11\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ & !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z13\ # !\u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ & 
-- (!\u_kirsch|u_flow|p13_add9_3|nx45949z13\ # !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx41961z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z13\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx40964z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z11\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx41961z1\ = (\u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ $ \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ $ !\u_kirsch|u_flow|p13_add9_3|nx45949z11\) # GND
-- \u_kirsch|u_flow|p13_add9_3|nx45949z9\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ # !\u_kirsch|u_flow|p13_add9_3|nx45949z11\) # !\u_kirsch|u_flow|p13_add8_0i3|nx41961z1\ & 
-- \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx41961z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z11\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx41961z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z9\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx42958z1\ = \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ & \u_kirsch|u_flow|p13_add9_3|nx45949z9\ & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ & 
-- !\u_kirsch|u_flow|p13_add9_3|nx45949z9\) # !\u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z9\ # !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ & 
-- (\u_kirsch|u_flow|p13_add9_3|nx45949z9\ # GND))
-- \u_kirsch|u_flow|p13_add9_3|nx45949z7\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ & !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z9\ # !\u_kirsch|u_flow|p13_add8_0i3|nx42958z1\ & 
-- (!\u_kirsch|u_flow|p13_add9_3|nx45949z9\ # !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx42958z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z9\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx42958z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z7\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx43955z1\ = (\u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ $ \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ $ !\u_kirsch|u_flow|p13_add9_3|nx45949z7\) # GND
-- \u_kirsch|u_flow|p13_add9_3|nx45949z5\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ # !\u_kirsch|u_flow|p13_add9_3|nx45949z7\) # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ & 
-- \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx44952z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z7\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx43955z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z5\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx44952z1\ = \u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & \u_kirsch|u_flow|p13_add9_3|nx45949z5\ & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & 
-- !\u_kirsch|u_flow|p13_add9_3|nx45949z5\) # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ & (\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z5\ # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & 
-- (\u_kirsch|u_flow|p13_add9_3|nx45949z5\ # GND))
-- \u_kirsch|u_flow|p13_add9_3|nx45949z3\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ & !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z5\ # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z1\ & 
-- (!\u_kirsch|u_flow|p13_add9_3|nx45949z5\ # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p13_add8_0i3|nx44952z1\,
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z5\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx44952z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx45949z3\);

\u_kirsch|u_flow|p13_add9_3|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx45949z1\ = \u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & (\u_kirsch|u_flow|p13_add9_3|nx45949z3\ $ GND) # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z3\ & VCC
-- \u_kirsch|u_flow|p13_add9_3|nx23445z2\ = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx23445z1\ & !\u_kirsch|u_flow|p13_add9_3|nx45949z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p13_add8_0i3|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|u_flow|p13_add9_3|nx45949z3\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx45949z1\,
	cout => \u_kirsch|u_flow|p13_add9_3|nx23445z2\);

\u_kirsch|u_flow|p13_add9_3|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p13_add9_3|nx23445z1\ = \u_kirsch|u_flow|p13_add9_3|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|u_flow|p13_add9_3|nx23445z2\,
	combout => \u_kirsch|u_flow|p13_add9_3|nx23445z1\);

\u_kirsch|ix20836z52987\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20836z1\ = \u_kirsch|u_memory|o_valid\ # !\u_kirsch|nx57127z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|o_valid\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|nx20836z1\);

\u_kirsch|u_flow|ix25836z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx25836z2\ = \u_kirsch|u_flow|max_dir_2_\ # \u_kirsch|u_flow|state_3_\ & \u_kirsch|u_flow|nx47310z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|state_3_\,
	datac => \u_kirsch|u_flow|max_dir_2_\,
	datad => \u_kirsch|u_flow|nx47310z2\,
	combout => \u_kirsch|u_flow|nx25836z2\);

\u_kirsch|u_flow|ix25836z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx25836z3\ = \u_kirsch|u_flow|nx47310z2\ & (\u_kirsch|u_flow|nx28524z1\ & \u_kirsch|u_flow|state_1_\) # !\u_kirsch|u_flow|nx47310z2\ & \u_kirsch|u_flow|max_dir_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|max_dir_2_\,
	datab => \u_kirsch|u_flow|nx28524z1\,
	datac => \u_kirsch|u_flow|state_1_\,
	datad => \u_kirsch|u_flow|nx47310z2\,
	combout => \u_kirsch|u_flow|nx25836z3\);

\u_kirsch|u_flow|ix25836z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx25836z1\ = \u_kirsch|u_flow|nx25836z3\ # !\u_kirsch|u_flow|state_2_\ & \u_kirsch|u_flow|nx28524z1\ & \u_kirsch|u_flow|nx25836z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|state_2_\,
	datab => \u_kirsch|u_flow|nx28524z1\,
	datac => \u_kirsch|u_flow|nx25836z3\,
	datad => \u_kirsch|u_flow|nx25836z2\,
	combout => \u_kirsch|u_flow|nx25836z1\);

\u_uw_uart|ix38742z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_4_\ = \u_uw_uart|nx38742z1\ # !\u_kirsch|u_flow|o_valid\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|nx38742z1\,
	datad => \u_kirsch|u_flow|o_valid\,
	combout => \u_uw_uart|mdata_7n5ss1_4_\);

\u_uw_uart|reg_sdout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_7_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_7_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx34606z1\);

\u_uw_uart|i_uarts|ix34606z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx34606z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_7_\,
	datad => \u_uw_uart|i_uarts|nx34606z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\);

\u_kirsch|ix57127z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx57127z1\ = \nrst~combout\ & (\u_kirsch|u_memory|o_valid\ # !\u_kirsch|nx57127z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_valid\,
	datad => \nrst~combout\,
	combout => \u_kirsch|nx57127z1\);

\u_kirsch|u_memory|reg_buffer1_1__7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_1__7_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__7_\);

\u_kirsch|u_memory|reg_buffer1_1__6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_1__6_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__6_\);

\u_kirsch|u_memory|reg_buffer1_1__5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_1__5_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__5_\);

\u_kirsch|u_memory|reg_buffer1_1__4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_1__4_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__4_\);

\u_kirsch|u_memory|reg_buffer1_1__3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image1_1__3_~feeder_combout\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__3_\);

\u_kirsch|u_memory|reg_buffer1_1__2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_image1_1__2_~feeder_combout\,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__2_\);

\u_kirsch|u_memory|reg_buffer1_1__1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_1__1_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__1_\);

\u_kirsch|u_memory|reg_buffer1_1__0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|o_image2_1__0_\,
	sload => VCC,
	ena => \u_kirsch|u_memory|first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_image1_1__dup0_0_\);

\u_kirsch|u_memory|reg_mem_wrn_current_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|mem_wrn_current_0_\,
	sclr => \u_kirsch|u_memory|nx40106z1\,
	sload => VCC,
	ena => \u_kirsch|u_memory|nx39109z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_wrn_current_1_\);

\u_kirsch|u_memory|reg_mem_wrn_current_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout\,
	sdata => VCC,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	sload => \u_kirsch|u_memory|nx39109z5\,
	ena => \u_kirsch|u_memory|nx39109z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_wrn_current_0_\);

\u_kirsch|u_memory|ix62359z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|b_0__dup_353\ = \u_kirsch|u_memory|mem_wrn_current_1_\ & (!\u_kirsch|u_memory|nx60567z2\ # !\u_kirsch|u_memory|mem_wrn_current_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datac => \u_kirsch|u_memory|mem_wrn_current_0_\,
	datad => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|b_0__dup_353\);

\u_kirsch|u_memory|reg_mem_data_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_7_\);

\u_kirsch|u_memory|ix62359z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx62359z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(7) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datac => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(7),
	datad => \u_kirsch|u_memory|mem_data_7_\,
	combout => \u_kirsch|u_memory|nx62359z2\);

\u_kirsch|u_memory|ix62359z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx62359z1\ = \u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|nx62359z2\) # !\u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7),
	datab => \u_kirsch|u_memory|nx62359z2\,
	datad => \u_kirsch|u_memory|b_0__dup_353\,
	combout => \u_kirsch|u_memory|nx62359z1\);

\u_kirsch|u_memory|ix62359z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|b_1__dup_352\ = !\u_kirsch|u_memory|mem_wrn_current_1_\ & (!\u_kirsch|u_memory|nx60567z2\ # !\u_kirsch|u_memory|mem_wrn_current_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datac => \u_kirsch|u_memory|mem_wrn_current_0_\,
	datad => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|b_1__dup_352\);

\u_kirsch|u_memory|ix63578z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|b_0_\ = \u_kirsch|u_memory|mem_wrn_current_0_\ & (!\u_kirsch|u_memory|nx60567z2\ # !\u_kirsch|u_memory|mem_wrn_current_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datac => \u_kirsch|u_memory|mem_wrn_current_0_\,
	datad => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|b_0_\);

\u_kirsch|u_memory|ix63578z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx63578z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(7) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datac => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(7),
	datad => \u_kirsch|u_memory|mem_data_7_\,
	combout => \u_kirsch|u_memory|nx63578z2\);

\u_kirsch|u_memory|ix63578z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx63578z1\ = \u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|nx63578z2\ # !\u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|nx63578z2\,
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7),
	combout => \u_kirsch|u_memory|nx63578z1\);

\u_kirsch|u_memory|ix63578z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|b_1_\ = !\u_kirsch|u_memory|mem_wrn_current_0_\ & (!\u_kirsch|u_memory|nx60567z2\ # !\u_kirsch|u_memory|mem_wrn_current_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datac => \u_kirsch|u_memory|mem_wrn_current_0_\,
	datad => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|b_1_\);

\u_kirsch|u_memory|reg_mem_data_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_6_\);

\u_kirsch|u_memory|ix61362z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx61362z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(6) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datac => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(6),
	datad => \u_kirsch|u_memory|mem_data_6_\,
	combout => \u_kirsch|u_memory|nx61362z2\);

\u_kirsch|u_memory|ix61362z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx61362z1\ = \u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|nx61362z2\) # !\u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6),
	datab => \u_kirsch|u_memory|nx61362z2\,
	datad => \u_kirsch|u_memory|b_0__dup_353\,
	combout => \u_kirsch|u_memory|nx61362z1\);

\u_kirsch|u_memory|ix64575z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx64575z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(6) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(6),
	datad => \u_kirsch|u_memory|mem_data_6_\,
	combout => \u_kirsch|u_memory|nx64575z2\);

\u_kirsch|u_memory|ix64575z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx64575z1\ = \u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|nx64575z2\) # !\u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6),
	datad => \u_kirsch|u_memory|nx64575z2\,
	combout => \u_kirsch|u_memory|nx64575z1\);

\u_kirsch|u_memory|reg_mem_data_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_5_\);

\u_kirsch|u_memory|ix60365z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60365z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(5) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datac => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(5),
	datad => \u_kirsch|u_memory|mem_data_5_\,
	combout => \u_kirsch|u_memory|nx60365z2\);

\u_kirsch|u_memory|ix60365z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60365z1\ = \u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|nx60365z2\ # !\u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60365z2\,
	datab => \u_kirsch|u_memory|b_0__dup_353\,
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5),
	combout => \u_kirsch|u_memory|nx60365z1\);

\u_kirsch|u_memory|ix36z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx36z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(5) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datac => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(5),
	datad => \u_kirsch|u_memory|mem_data_5_\,
	combout => \u_kirsch|u_memory|nx36z2\);

\u_kirsch|u_memory|ix36z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx36z1\ = \u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|nx36z2\) # !\u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5),
	datad => \u_kirsch|u_memory|nx36z2\,
	combout => \u_kirsch|u_memory|nx36z1\);

\u_kirsch|u_memory|reg_mem_data_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_4_\);

\u_kirsch|u_memory|ix59368z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx59368z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(4)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_data_4_\,
	datac => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(4),
	datad => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|nx59368z2\);

\u_kirsch|u_memory|ix59368z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx59368z1\ = \u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|nx59368z2\) # !\u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4),
	datab => \u_kirsch|u_memory|b_0__dup_353\,
	datad => \u_kirsch|u_memory|nx59368z2\,
	combout => \u_kirsch|u_memory|nx59368z1\);

\u_kirsch|u_memory|ix1033z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx1033z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(4) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(4),
	datab => \u_kirsch|u_memory|mem_data_4_\,
	datac => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|nx1033z2\);

\u_kirsch|u_memory|ix1033z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx1033z1\ = \u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|nx1033z2\) # !\u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4),
	datad => \u_kirsch|u_memory|nx1033z2\,
	combout => \u_kirsch|u_memory|nx1033z1\);

\u_kirsch|u_memory|reg_mem_data_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_3_\);

\u_kirsch|u_memory|ix58371z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx58371z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(3) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(3),
	datac => \u_kirsch|u_memory|mem_data_3_\,
	combout => \u_kirsch|u_memory|nx58371z2\);

\u_kirsch|u_memory|ix58371z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx58371z1\ = \u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|nx58371z2\) # !\u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3),
	datab => \u_kirsch|u_memory|nx58371z2\,
	datad => \u_kirsch|u_memory|b_0__dup_353\,
	combout => \u_kirsch|u_memory|nx58371z1\);

\u_kirsch|u_memory|ix2030z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx2030z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(3)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|mem_data_3_\,
	datac => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(3),
	combout => \u_kirsch|u_memory|nx2030z2\);

\u_kirsch|u_memory|ix2030z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx2030z1\ = \u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|nx2030z2\ # !\u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|nx2030z2\,
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3),
	combout => \u_kirsch|u_memory|nx2030z1\);

\u_kirsch|u_memory|reg_mem_data_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_2_\);

\u_kirsch|u_memory|ix57374z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx57374z2\ = \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(2) # !\u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|mem_data_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(2),
	datac => \u_kirsch|u_memory|mem_data_2_\,
	combout => \u_kirsch|u_memory|nx57374z2\);

\u_kirsch|u_memory|ix57374z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx57374z1\ = \u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|nx57374z2\ # !\u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx57374z2\,
	datab => \u_kirsch|u_memory|b_0__dup_353\,
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2),
	combout => \u_kirsch|u_memory|nx57374z1\);

\u_kirsch|u_memory|ix3027z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx3027z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(2)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|mem_data_2_\,
	datad => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(2),
	combout => \u_kirsch|u_memory|nx3027z2\);

\u_kirsch|u_memory|ix3027z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx3027z1\ = \u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|nx3027z2\ # !\u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|nx3027z2\,
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2),
	combout => \u_kirsch|u_memory|nx3027z1\);

\u_kirsch|u_memory|reg_mem_data_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_1_\);

\u_kirsch|u_memory|ix56377z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx56377z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(1)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|mem_data_1_\,
	datac => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(1),
	combout => \u_kirsch|u_memory|nx56377z2\);

\u_kirsch|u_memory|ix56377z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx56377z1\ = \u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|nx56377z2\) # !\u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1),
	datab => \u_kirsch|u_memory|b_0__dup_353\,
	datad => \u_kirsch|u_memory|nx56377z2\,
	combout => \u_kirsch|u_memory|nx56377z1\);

\u_kirsch|u_memory|ix4024z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx4024z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(1)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|mem_data_1_\,
	datac => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(1),
	combout => \u_kirsch|u_memory|nx4024z2\);

\u_kirsch|u_memory|ix4024z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx4024z1\ = \u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|nx4024z2\ # !\u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|nx4024z2\,
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1),
	combout => \u_kirsch|u_memory|nx4024z1\);

\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch:u_kirsch|memory:u_memory|ram_dq_8_2:u_mem3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_kirsch|u_memory|mem_wrn_2_\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\u_kirsch|u_memory|reg_mem_data_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_data_0_\);

\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch:u_kirsch|memory:u_memory|ram_dq_8_1:u_mem2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_kirsch|u_memory|mem_wrn_1_\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\u_kirsch|u_memory|ix5021z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx5021z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(0)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|mem_data_0_\,
	datac => \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a\(0),
	combout => \u_kirsch|u_memory|nx5021z2\);

\u_kirsch|u_memory|ix5021z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx5021z1\ = \u_kirsch|u_memory|b_0_\ & (\u_kirsch|u_memory|nx5021z2\) # !\u_kirsch|u_memory|b_0_\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|b_0_\,
	datab => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0),
	datad => \u_kirsch|u_memory|nx5021z2\,
	combout => \u_kirsch|u_memory|nx5021z1\);

\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch:u_kirsch|memory:u_memory|ram_dq_8_0:u_mem1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_kirsch|u_memory|mem_wrn_0_\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\u_kirsch|u_memory|ix55380z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx55380z2\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(0)) # !\u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|mem_data_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|mem_data_0_\,
	datac => \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a\(0),
	combout => \u_kirsch|u_memory|nx55380z2\);

\u_kirsch|u_memory|ix55380z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx55380z1\ = \u_kirsch|u_memory|b_0__dup_353\ & (\u_kirsch|u_memory|nx55380z2\) # !\u_kirsch|u_memory|b_0__dup_353\ & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0),
	datab => \u_kirsch|u_memory|nx55380z2\,
	datad => \u_kirsch|u_memory|b_0__dup_353\,
	combout => \u_kirsch|u_memory|nx55380z1\);

\u_kirsch|u_memory|reg_mem_wrn_current_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|mem_wrn_current_1_\,
	sclr => \u_kirsch|u_memory|nx40106z1\,
	sload => VCC,
	ena => \u_kirsch|u_memory|nx39109z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_wrn_current_2_\);

\u_kirsch|u_memory|ix57224z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx57224z1\ = \u_kirsch|u_memory|nx60567z2\ # \u_kirsch|u_memory|mem_wrn_current_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|nx60567z2\,
	datad => \u_kirsch|u_memory|mem_wrn_current_2_\,
	combout => \u_kirsch|u_memory|nx57224z1\);

\u_uw_uart|reg_mdata_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_6_\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_7_\);

\u_uw_uart|i_uarts|ix35603z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ = !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_7_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\);

\u_kirsch|u_memory|reg_mem_wrn_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|mem_wrn_current_2_\,
	sclr => \u_kirsch|u_memory|nx17757z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_wrn_2_\);

\u_kirsch|u_memory|ix39109z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx39109z3\ = !\u_uw_uart|o_pixavail\ & (!\u_kirsch|u_memory|first_bubble\ # !\u_kirsch|u_memory|nx8852z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|nx8852z3\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|u_memory|first_bubble\,
	combout => \u_kirsch|u_memory|nx39109z3\);

\u_kirsch|u_memory|ix39109z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx39109z4\ = !\u_kirsch|u_memory|mem_wrn_current_0_\ & !\u_kirsch|u_memory|mem_wrn_current_2_\ & !\u_kirsch|u_memory|mem_wrn_current_1_\ # !\u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_0_\,
	datab => \u_kirsch|u_memory|mem_wrn_current_2_\,
	datac => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|u_memory|nx39109z4\);

\u_kirsch|u_memory|ix40106z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx40106z1\ = \u_kirsch|u_memory|nx8852z1\ # \u_uw_uart|o_pixavail\ & \u_kirsch|u_memory|nx39109z4\ & !\u_kirsch|u_memory|nx39109z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|u_memory|nx39109z4\,
	datac => \u_kirsch|u_memory|nx39109z3\,
	datad => \u_kirsch|u_memory|nx8852z1\,
	combout => \u_kirsch|u_memory|nx40106z1\);

\u_kirsch|u_memory|ix39109z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx39109z2\ = \u_kirsch|u_memory|nx8852z2\ # \u_kirsch|u_memory|nx39109z4\ & !\u_kirsch|u_memory|nx39109z3\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z2\,
	datab => \nrst~combout\,
	datac => \u_kirsch|u_memory|nx39109z4\,
	datad => \u_kirsch|u_memory|nx39109z3\,
	combout => \u_kirsch|u_memory|nx39109z2\);

\u_kirsch|u_memory|ix39109z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx39109z5\ = !\u_kirsch|u_memory|mem_wrn_current_1_\ & !\u_kirsch|u_memory|mem_wrn_current_2_\ & \u_uw_uart|o_pixavail\ & !\u_kirsch|u_memory|mem_wrn_current_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datab => \u_kirsch|u_memory|mem_wrn_current_2_\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|u_memory|mem_wrn_current_0_\,
	combout => \u_kirsch|u_memory|nx39109z5\);

\u_uw_uart|reg_rdata_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_7_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_7_\);

\u_uw_uart|ix47405z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_7_\ = \u_uw_uart|rdata_7_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|rdata_7_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_7_\);

\u_kirsch|u_memory|reg_mem_wrn_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|mem_wrn_0_~feeder_combout\,
	sdata => VCC,
	sclr => \u_kirsch|u_memory|nx47386z1\,
	sload => \u_kirsch|u_memory|nx15763z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_wrn_0_\);

\u_kirsch|u_memory|reg_mem_wrn_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_memory|mem_wrn_current_1_\,
	sclr => \u_kirsch|u_memory|nx17757z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|mem_wrn_1_\);

\u_uw_uart|reg_rdata_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_6_\);

\u_uw_uart|ix46408z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_6_\ = \u_uw_uart|rdata_6_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|rdata_6_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_6_\);

\u_uw_uart|reg_rdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_5_\);

\u_uw_uart|ix45411z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_5_\ = \u_uw_uart|rdata_5_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|rdata_5_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_5_\);

\u_uw_uart|reg_rdata_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_4_\);

\u_uw_uart|ix44414z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_4_\ = \u_uw_uart|rdata_4_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|rdata_4_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_4_\);

\u_uw_uart|reg_rdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_3_\);

\u_uw_uart|ix43417z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_3_\ = \u_uw_uart|rdata_3_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|rdata_3_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_3_\);

\u_uw_uart|reg_rdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_2_\);

\u_uw_uart|ix42420z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_2_\ = \u_uw_uart|rdata_2_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|rdata_2_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_2_\);

\u_uw_uart|reg_rdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_1_\);

\u_uw_uart|ix41423z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_1_\ = \u_uw_uart|rdata_1_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_1_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_1_\);

\u_uw_uart|reg_rdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_0_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_0_\);

\u_uw_uart|ix40426z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_0_\ = \u_uw_uart|rdata_0_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_0_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_0_\);

\u_uw_uart|ix40736z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_6_\ = \u_kirsch|u_flow|o_valid\ & !\u_uw_uart|nx40736z1\ & (\nrst~combout\ # !\u_kirsch|o_mode_0_\) # !\u_kirsch|u_flow|o_valid\ & (\nrst~combout\ # !\u_kirsch|o_mode_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_valid\,
	datab => \u_kirsch|o_mode_0_\,
	datac => \u_uw_uart|nx40736z1\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|mdata_7n5ss1_6_\);

\u_kirsch|u_memory|ix17757z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx17757z1\ = \u_kirsch|u_memory|nx8852z2\ # \u_kirsch|u_memory|nx39109z4\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z2\,
	datac => \nrst~combout\,
	datad => \u_kirsch|u_memory|nx39109z4\,
	combout => \u_kirsch|u_memory|nx17757z1\);

\u_uw_uart|i_uarts|reg_Dout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_7_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_7_\);

\u_kirsch|u_memory|ix15763z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx15763z3\ = !\u_kirsch|u_memory|mem_wrn_current_0_\ & !\u_kirsch|u_memory|mem_wrn_current_1_\ & !\u_kirsch|u_memory|mem_wrn_current_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_0_\,
	datab => \u_kirsch|u_memory|mem_wrn_current_1_\,
	datac => \u_kirsch|u_memory|mem_wrn_current_2_\,
	combout => \u_kirsch|u_memory|nx15763z3\);

\u_kirsch|u_memory|ix15763z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx15763z2\ = !\u_kirsch|u_memory|nx8852z2\ & \u_kirsch|u_memory|nx15763z3\ & \nrst~combout\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z2\,
	datab => \u_kirsch|u_memory|nx15763z3\,
	datac => \nrst~combout\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|u_memory|nx15763z2\);

\u_uw_uart|i_uarts|reg_Dout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_6_\);

\u_uw_uart|i_uarts|reg_Dout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_5_\);

\u_uw_uart|i_uarts|reg_Dout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_4_\);

\u_uw_uart|i_uarts|reg_Dout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_3_\);

\u_uw_uart|i_uarts|reg_Dout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_2_\);

\u_uw_uart|i_uarts|reg_Dout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_1_\);

\u_uw_uart|i_uarts|reg_Dout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_0_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_7_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_6_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_5_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_4_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_3_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_2_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_1_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_0_\);

\u_uw_uart|i_uarts|ix54636z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx54636z1\ = \u_uw_uart|i_uarts|RxFSM_3_\ & \u_uw_uart|i_uarts|TopRx\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|TopRx\,
	combout => \u_uw_uart|i_uarts|nx54636z1\);

\u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout\ = !\u_kirsch|u_flow|ix45188z19900|nx100z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|ix45188z19900|nx100z1\,
	combout => \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout\);

\u_uw_uart|i_uarts|not_Rx_r~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\ = !\u_uw_uart|i_uarts|not_Rx_r\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\);

\u_kirsch|f_i_mode_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_mode_next_1_~feeder_combout\ = \nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nrst~combout\,
	combout => \u_kirsch|f_i_mode_next_1_~feeder_combout\);

\u_kirsch|u_memory|o_row_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_3_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_row|nx58250z9\,
	combout => \u_kirsch|u_memory|o_row_3_~feeder_combout\);

\u_kirsch|u_flow|o_row_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_row_3_~feeder_combout\ = \u_kirsch|u_flow|nx30069z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx30069z1\,
	combout => \u_kirsch|u_flow|o_row_3_~feeder_combout\);

\u_uw_uart|sdout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_0_~feeder_combout\ = \u_uw_uart|mdata_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_0_\,
	combout => \u_uw_uart|sdout_0_~feeder_combout\);

\u_kirsch|u_flow|nx30069z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx30069z1~feeder_combout\ = \u_kirsch|u_flow|nx24934z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx24934z1\,
	combout => \u_kirsch|u_flow|nx30069z1~feeder_combout\);

\u_uw_uart|mdata_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_0_~feeder_combout\ = \u_kirsch|u_flow|o_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|o_edge\,
	combout => \u_uw_uart|mdata_0_~feeder_combout\);

\u_uw_uart|sdout_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_1_~feeder_combout\ = \u_uw_uart|mdata_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_1_\,
	combout => \u_uw_uart|sdout_1_~feeder_combout\);

\u_kirsch|u_flow|nx24934z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx24934z1~feeder_combout\ = \u_kirsch|u_flow|nx19799z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_flow|nx19799z1\,
	combout => \u_kirsch|u_flow|nx24934z1~feeder_combout\);

\u_kirsch|u_flow|o_edge~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_edge~feeder_combout\ = \u_kirsch|u_flow|prev_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|prev_edge\,
	combout => \u_kirsch|u_flow|o_edge~feeder_combout\);

\u_uw_uart|sdout_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_2_~feeder_combout\ = \u_uw_uart|mdata_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_2_\,
	combout => \u_uw_uart|sdout_2_~feeder_combout\);

\u_kirsch|f_i_row_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_3_~feeder_combout\ = \u_kirsch|u_memory|o_row_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_row_3_\,
	combout => \u_kirsch|f_i_row_next_3_~feeder_combout\);

\u_kirsch|f_i_row_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_2_~feeder_combout\ = \u_kirsch|u_memory|o_row_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_row_2_\,
	combout => \u_kirsch|f_i_row_next_2_~feeder_combout\);

\u_uw_uart|sdout_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_3_~feeder_combout\ = \u_uw_uart|mdata_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_3_\,
	combout => \u_uw_uart|sdout_3_~feeder_combout\);

\u_kirsch|u_flow|p31_11_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_11_~feeder_combout\ = \u_kirsch|u_flow|p21_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_11_\,
	combout => \u_kirsch|u_flow|p31_11_~feeder_combout\);

\u_kirsch|u_flow|p31_12_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_12_~feeder_combout\ = \u_kirsch|u_flow|p21_12_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_12_\,
	combout => \u_kirsch|u_flow|p31_12_~feeder_combout\);

\u_kirsch|u_flow|p31_10_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_10_~feeder_combout\ = \u_kirsch|u_flow|p21_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_10_\,
	combout => \u_kirsch|u_flow|p31_10_~feeder_combout\);

\u_kirsch|u_flow|p31_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_9_~feeder_combout\ = \u_kirsch|u_flow|p21_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_9_\,
	combout => \u_kirsch|u_flow|p31_9_~feeder_combout\);

\u_kirsch|u_flow|p31_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_8_~feeder_combout\ = \u_kirsch|u_flow|p21_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_8_\,
	combout => \u_kirsch|u_flow|p31_8_~feeder_combout\);

\u_kirsch|u_flow|p31_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_7_~feeder_combout\ = \u_kirsch|u_flow|p21_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_7_\,
	combout => \u_kirsch|u_flow|p31_7_~feeder_combout\);

\u_kirsch|u_flow|p31_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_6_~feeder_combout\ = \u_kirsch|u_flow|p21_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_6_\,
	combout => \u_kirsch|u_flow|p31_6_~feeder_combout\);

\u_kirsch|u_flow|p31_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_5_~feeder_combout\ = \u_kirsch|u_flow|p21_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p21_5_\,
	combout => \u_kirsch|u_flow|p31_5_~feeder_combout\);

\u_kirsch|u_flow|p31_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_4_~feeder_combout\ = \u_kirsch|u_flow|p21_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_4_\,
	combout => \u_kirsch|u_flow|p31_4_~feeder_combout\);

\u_kirsch|u_flow|p31_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_3_~feeder_combout\ = \u_kirsch|u_flow|p21_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p21_3_\,
	combout => \u_kirsch|u_flow|p31_3_~feeder_combout\);

\u_kirsch|u_flow|p31_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_2_~feeder_combout\ = \u_kirsch|u_flow|p21_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_2_\,
	combout => \u_kirsch|u_flow|p31_2_~feeder_combout\);

\u_kirsch|u_flow|p31_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_1_~feeder_combout\ = \u_kirsch|u_flow|p21_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p21_1_\,
	combout => \u_kirsch|u_flow|p31_1_~feeder_combout\);

\u_kirsch|u_flow|p31_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p31_0_~feeder_combout\ = \u_kirsch|u_flow|p21_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_flow|p21_0_\,
	combout => \u_kirsch|u_flow|p31_0_~feeder_combout\);

\u_kirsch|u_flow|p32_10_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_10_~feeder_combout\ = \u_kirsch|u_flow|p23_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_10_\,
	combout => \u_kirsch|u_flow|p32_10_~feeder_combout\);

\u_kirsch|u_flow|p32_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_7_~feeder_combout\ = \u_kirsch|u_flow|p23_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_7_\,
	combout => \u_kirsch|u_flow|p32_7_~feeder_combout\);

\u_kirsch|u_flow|p32_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_6_~feeder_combout\ = \u_kirsch|u_flow|p23_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_6_\,
	combout => \u_kirsch|u_flow|p32_6_~feeder_combout\);

\u_kirsch|u_flow|p32_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_3_~feeder_combout\ = \u_kirsch|u_flow|p23_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_3_\,
	combout => \u_kirsch|u_flow|p32_3_~feeder_combout\);

\u_kirsch|u_flow|p32_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_2_~feeder_combout\ = \u_kirsch|u_flow|p23_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_2_\,
	combout => \u_kirsch|u_flow|p32_2_~feeder_combout\);

\u_kirsch|u_flow|p32_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_1_~feeder_combout\ = \u_kirsch|u_flow|p23_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_1_\,
	combout => \u_kirsch|u_flow|p32_1_~feeder_combout\);

\u_kirsch|u_flow|p32_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p32_0_~feeder_combout\ = \u_kirsch|u_flow|p23_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|p23_0_\,
	combout => \u_kirsch|u_flow|p32_0_~feeder_combout\);

\u_uw_uart|sdout_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_5_~feeder_combout\ = \u_uw_uart|mdata_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|mdata_5_\,
	combout => \u_uw_uart|sdout_5_~feeder_combout\);

\u_kirsch|f_t1_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_7_~feeder_combout\ = \u_kirsch|f_t2_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_next_7_\,
	combout => \u_kirsch|f_t1_next_7_~feeder_combout\);

\u_kirsch|f_i2_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_7_~feeder_combout\ = \u_kirsch|f_t1_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t1_next_7_\,
	combout => \u_kirsch|f_i2_next_7_~feeder_combout\);

\u_kirsch|f_t1_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_6_~feeder_combout\ = \u_kirsch|f_t2_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t2_next_6_\,
	combout => \u_kirsch|f_t1_next_6_~feeder_combout\);

\u_kirsch|f_i2_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_6_~feeder_combout\ = \u_kirsch|f_t1_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t1_next_6_\,
	combout => \u_kirsch|f_i2_next_6_~feeder_combout\);

\u_kirsch|f_t1_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_5_~feeder_combout\ = \u_kirsch|f_t2_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_next_5_\,
	combout => \u_kirsch|f_t1_next_5_~feeder_combout\);

\u_kirsch|f_i2_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_5_~feeder_combout\ = \u_kirsch|f_t1_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t1_next_5_\,
	combout => \u_kirsch|f_i2_next_5_~feeder_combout\);

\u_kirsch|f_t1_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_4_~feeder_combout\ = \u_kirsch|f_t2_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t2_next_4_\,
	combout => \u_kirsch|f_t1_next_4_~feeder_combout\);

\u_kirsch|f_i2_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_4_~feeder_combout\ = \u_kirsch|f_t1_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t1_next_4_\,
	combout => \u_kirsch|f_i2_next_4_~feeder_combout\);

\u_kirsch|f_t1_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_3_~feeder_combout\ = \u_kirsch|f_t2_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t2_next_3_\,
	combout => \u_kirsch|f_t1_next_3_~feeder_combout\);

\u_kirsch|f_i2_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_3_~feeder_combout\ = \u_kirsch|f_t1_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t1_next_3_\,
	combout => \u_kirsch|f_i2_next_3_~feeder_combout\);

\u_kirsch|f_t1_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_2_~feeder_combout\ = \u_kirsch|f_t2_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t2_next_2_\,
	combout => \u_kirsch|f_t1_next_2_~feeder_combout\);

\u_kirsch|f_i2_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_2_~feeder_combout\ = \u_kirsch|f_t1_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t1_next_2_\,
	combout => \u_kirsch|f_i2_next_2_~feeder_combout\);

\u_kirsch|f_t1_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_1_~feeder_combout\ = \u_kirsch|f_t2_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t2_next_1_\,
	combout => \u_kirsch|f_t1_next_1_~feeder_combout\);

\u_kirsch|f_i2_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_1_~feeder_combout\ = \u_kirsch|f_t1_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t1_next_1_\,
	combout => \u_kirsch|f_i2_next_1_~feeder_combout\);

\u_kirsch|f_i2_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i2_next_0_~feeder_combout\ = \u_kirsch|f_t1_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t1_next_0_\,
	combout => \u_kirsch|f_i2_next_0_~feeder_combout\);

\u_kirsch|f_t1_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t1_next_0_~feeder_combout\ = \u_kirsch|f_t2_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_t2_next_0_\,
	combout => \u_kirsch|f_t1_next_0_~feeder_combout\);

\u_kirsch|f_t2_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_7_~feeder_combout\ = \u_kirsch|f_t3_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_next_7_\,
	combout => \u_kirsch|f_t2_next_7_~feeder_combout\);

\u_kirsch|f_t2_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_6_~feeder_combout\ = \u_kirsch|f_t3_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_t3_next_6_\,
	combout => \u_kirsch|f_t2_next_6_~feeder_combout\);

\u_kirsch|f_t2_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_5_~feeder_combout\ = \u_kirsch|f_t3_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t3_next_5_\,
	combout => \u_kirsch|f_t2_next_5_~feeder_combout\);

\u_kirsch|f_t2_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_4_~feeder_combout\ = \u_kirsch|f_t3_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t3_next_4_\,
	combout => \u_kirsch|f_t2_next_4_~feeder_combout\);

\u_kirsch|f_t2_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_3_~feeder_combout\ = \u_kirsch|f_t3_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t3_next_3_\,
	combout => \u_kirsch|f_t2_next_3_~feeder_combout\);

\u_kirsch|f_t2_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_2_~feeder_combout\ = \u_kirsch|f_t3_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t3_next_2_\,
	combout => \u_kirsch|f_t2_next_2_~feeder_combout\);

\u_kirsch|f_t2_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_1_~feeder_combout\ = \u_kirsch|f_t3_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t3_next_1_\,
	combout => \u_kirsch|f_t2_next_1_~feeder_combout\);

\u_kirsch|f_t2_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t2_next_0_~feeder_combout\ = \u_kirsch|f_t3_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_t3_next_0_\,
	combout => \u_kirsch|f_t2_next_0_~feeder_combout\);

\u_kirsch|f_b1_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_7_~feeder_combout\ = \u_kirsch|f_b2_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b2_next_7_\,
	combout => \u_kirsch|f_b1_next_7_~feeder_combout\);

\u_kirsch|f_i1_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_7_~feeder_combout\ = \u_kirsch|f_b1_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b1_next_7_\,
	combout => \u_kirsch|f_i1_next_7_~feeder_combout\);

\u_kirsch|f_b1_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_6_~feeder_combout\ = \u_kirsch|f_b2_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b2_next_6_\,
	combout => \u_kirsch|f_b1_next_6_~feeder_combout\);

\u_kirsch|f_i1_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_6_~feeder_combout\ = \u_kirsch|f_b1_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b1_next_6_\,
	combout => \u_kirsch|f_i1_next_6_~feeder_combout\);

\u_kirsch|f_b1_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_5_~feeder_combout\ = \u_kirsch|f_b2_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_5_\,
	combout => \u_kirsch|f_b1_next_5_~feeder_combout\);

\u_kirsch|f_i1_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_5_~feeder_combout\ = \u_kirsch|f_b1_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b1_next_5_\,
	combout => \u_kirsch|f_i1_next_5_~feeder_combout\);

\u_kirsch|f_b1_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_4_~feeder_combout\ = \u_kirsch|f_b2_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_4_\,
	combout => \u_kirsch|f_b1_next_4_~feeder_combout\);

\u_kirsch|f_i1_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_4_~feeder_combout\ = \u_kirsch|f_b1_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b1_next_4_\,
	combout => \u_kirsch|f_i1_next_4_~feeder_combout\);

\u_kirsch|f_b1_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_3_~feeder_combout\ = \u_kirsch|f_b2_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b2_next_3_\,
	combout => \u_kirsch|f_b1_next_3_~feeder_combout\);

\u_kirsch|u_memory|o_image1_1__3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image1_1__3_~feeder_combout\ = \u_kirsch|u_memory|o_image2_1__3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|o_image2_1__3_\,
	combout => \u_kirsch|u_memory|o_image1_1__3_~feeder_combout\);

\u_kirsch|f_i1_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_3_~feeder_combout\ = \u_kirsch|f_b1_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b1_next_3_\,
	combout => \u_kirsch|f_i1_next_3_~feeder_combout\);

\u_kirsch|f_b1_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_2_~feeder_combout\ = \u_kirsch|f_b2_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_2_\,
	combout => \u_kirsch|f_b1_next_2_~feeder_combout\);

\u_kirsch|u_memory|o_image1_1__2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image1_1__2_~feeder_combout\ = \u_kirsch|u_memory|o_image2_1__2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|o_image2_1__2_\,
	combout => \u_kirsch|u_memory|o_image1_1__2_~feeder_combout\);

\u_kirsch|f_i1_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_2_~feeder_combout\ = \u_kirsch|f_b1_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b1_next_2_\,
	combout => \u_kirsch|f_i1_next_2_~feeder_combout\);

\u_kirsch|f_b1_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_1_~feeder_combout\ = \u_kirsch|f_b2_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b2_next_1_\,
	combout => \u_kirsch|f_b1_next_1_~feeder_combout\);

\u_kirsch|f_i1_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_1_~feeder_combout\ = \u_kirsch|f_b1_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_b1_next_1_\,
	combout => \u_kirsch|f_i1_next_1_~feeder_combout\);

\u_kirsch|f_i1_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i1_next_0_~feeder_combout\ = \u_kirsch|f_b1_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b1_next_0_\,
	combout => \u_kirsch|f_i1_next_0_~feeder_combout\);

\u_kirsch|f_b1_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b1_next_0_~feeder_combout\ = \u_kirsch|f_b2_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b2_next_0_\,
	combout => \u_kirsch|f_b1_next_0_~feeder_combout\);

\u_kirsch|f_b2_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_7_~feeder_combout\ = \u_kirsch|f_b3_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b3_next_7_\,
	combout => \u_kirsch|f_b2_next_7_~feeder_combout\);

\u_kirsch|f_b2_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_6_~feeder_combout\ = \u_kirsch|f_b3_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b3_next_6_\,
	combout => \u_kirsch|f_b2_next_6_~feeder_combout\);

\u_kirsch|f_b2_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_5_~feeder_combout\ = \u_kirsch|f_b3_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b3_next_5_\,
	combout => \u_kirsch|f_b2_next_5_~feeder_combout\);

\u_kirsch|f_b2_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_4_~feeder_combout\ = \u_kirsch|f_b3_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b3_next_4_\,
	combout => \u_kirsch|f_b2_next_4_~feeder_combout\);

\u_kirsch|f_b2_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_3_~feeder_combout\ = \u_kirsch|f_b3_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b3_next_3_\,
	combout => \u_kirsch|f_b2_next_3_~feeder_combout\);

\u_kirsch|f_b2_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_2_~feeder_combout\ = \u_kirsch|f_b3_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b3_next_2_\,
	combout => \u_kirsch|f_b2_next_2_~feeder_combout\);

\u_kirsch|f_b2_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_1_~feeder_combout\ = \u_kirsch|f_b3_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_b3_next_1_\,
	combout => \u_kirsch|f_b2_next_1_~feeder_combout\);

\u_kirsch|f_b2_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b2_next_0_~feeder_combout\ = \u_kirsch|f_b3_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_b3_next_0_\,
	combout => \u_kirsch|f_b2_next_0_~feeder_combout\);

\u_kirsch|f_b3_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_7_~feeder_combout\ = \u_kirsch|f_i2_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i2_next_7_\,
	combout => \u_kirsch|f_b3_next_7_~feeder_combout\);

\u_kirsch|f_t3_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_7_~feeder_combout\ = \u_kirsch|f_i1_next_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i1_next_7_\,
	combout => \u_kirsch|f_t3_next_7_~feeder_combout\);

\u_kirsch|f_b3_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_6_~feeder_combout\ = \u_kirsch|f_i2_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i2_next_6_\,
	combout => \u_kirsch|f_b3_next_6_~feeder_combout\);

\u_kirsch|f_t3_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_6_~feeder_combout\ = \u_kirsch|f_i1_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i1_next_6_\,
	combout => \u_kirsch|f_t3_next_6_~feeder_combout\);

\u_kirsch|u_memory|o_image0_0__6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image0_0__6_~feeder_combout\ = \u_kirsch|u_memory|o_image1_0__6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_image1_0__6_\,
	combout => \u_kirsch|u_memory|o_image0_0__6_~feeder_combout\);

\u_kirsch|f_b3_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_5_~feeder_combout\ = \u_kirsch|f_i2_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i2_next_5_\,
	combout => \u_kirsch|f_b3_next_5_~feeder_combout\);

\u_kirsch|f_t3_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_5_~feeder_combout\ = \u_kirsch|f_i1_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i1_next_5_\,
	combout => \u_kirsch|f_t3_next_5_~feeder_combout\);

\u_kirsch|f_b3_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_4_~feeder_combout\ = \u_kirsch|f_i2_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i2_next_4_\,
	combout => \u_kirsch|f_b3_next_4_~feeder_combout\);

\u_kirsch|f_t3_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_4_~feeder_combout\ = \u_kirsch|f_i1_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i1_next_4_\,
	combout => \u_kirsch|f_t3_next_4_~feeder_combout\);

\u_kirsch|f_b3_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_3_~feeder_combout\ = \u_kirsch|f_i2_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i2_next_3_\,
	combout => \u_kirsch|f_b3_next_3_~feeder_combout\);

\u_kirsch|f_t3_next_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_3_~feeder_combout\ = \u_kirsch|f_i1_next_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i1_next_3_\,
	combout => \u_kirsch|f_t3_next_3_~feeder_combout\);

\u_kirsch|f_b3_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_2_~feeder_combout\ = \u_kirsch|f_i2_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i2_next_2_\,
	combout => \u_kirsch|f_b3_next_2_~feeder_combout\);

\u_kirsch|f_t3_next_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_2_~feeder_combout\ = \u_kirsch|f_i1_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i1_next_2_\,
	combout => \u_kirsch|f_t3_next_2_~feeder_combout\);

\u_kirsch|f_b3_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_1_~feeder_combout\ = \u_kirsch|f_i2_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i2_next_1_\,
	combout => \u_kirsch|f_b3_next_1_~feeder_combout\);

\u_kirsch|f_t3_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_1_~feeder_combout\ = \u_kirsch|f_i1_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i1_next_1_\,
	combout => \u_kirsch|f_t3_next_1_~feeder_combout\);

\u_kirsch|f_t3_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_t3_next_0_~feeder_combout\ = \u_kirsch|f_i1_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i1_next_0_\,
	combout => \u_kirsch|f_t3_next_0_~feeder_combout\);

\u_kirsch|f_b3_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_b3_next_0_~feeder_combout\ = \u_kirsch|f_i2_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_i2_next_0_\,
	combout => \u_kirsch|f_b3_next_0_~feeder_combout\);

\u_kirsch|u_memory|o_image0_1__6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image0_1__6_~feeder_combout\ = \u_kirsch|u_memory|o_image1_1__6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_image1_1__6_\,
	combout => \u_kirsch|u_memory|o_image0_1__6_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__7_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(7),
	combout => \u_kirsch|u_memory|o_image2_2__7_~feeder_combout\);

\u_kirsch|u_memory|mem_wrn_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|mem_wrn_0_~feeder_combout\ = \u_kirsch|u_memory|mem_wrn_current_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|mem_wrn_current_0_\,
	combout => \u_kirsch|u_memory|mem_wrn_0_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__6_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(6),
	combout => \u_kirsch|u_memory|o_image2_2__6_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__5_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(5),
	combout => \u_kirsch|u_memory|o_image2_2__5_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__4_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(4),
	combout => \u_kirsch|u_memory|o_image2_2__4_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__3_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(3),
	combout => \u_kirsch|u_memory|o_image2_2__3_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__2_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(2),
	combout => \u_kirsch|u_memory|o_image2_2__2_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__1_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(1),
	combout => \u_kirsch|u_memory|o_image2_2__1_~feeder_combout\);

\u_kirsch|u_memory|o_image2_2__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_image2_2__0_~feeder_combout\ = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a\(0),
	combout => \u_kirsch|u_memory|o_image2_2__0_~feeder_combout\);

\u_kirsch|u_memory|mem_wrn_current_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout\ = \u_kirsch|u_memory|mem_wrn_current_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|mem_wrn_current_2_\,
	combout => \u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout\);

\u_uw_uart|sdout_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_7_~feeder_combout\ = \u_uw_uart|mdata_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|mdata_7_\,
	combout => \u_uw_uart|sdout_7_~feeder_combout\);

\u_uw_uart|rdata_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_7_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_7_\,
	combout => \u_uw_uart|rdata_7_~feeder_combout\);

\u_uw_uart|rdata_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_6_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_6_\,
	combout => \u_uw_uart|rdata_6_~feeder_combout\);

\u_uw_uart|rdata_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_5_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_5_\,
	combout => \u_uw_uart|rdata_5_~feeder_combout\);

\u_uw_uart|rdata_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_4_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_4_\,
	combout => \u_uw_uart|rdata_4_~feeder_combout\);

\u_uw_uart|rdata_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_2_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_2_\,
	combout => \u_uw_uart|rdata_2_~feeder_combout\);

\u_uw_uart|rdata_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_1_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_1_\,
	combout => \u_uw_uart|rdata_1_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_7_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_7_\,
	combout => \u_uw_uart|i_uarts|Dout_7_~feeder_combout\);

\u_uw_uart|i_uarts|Rx_Reg_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_7_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_6_\,
	combout => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\);

\u_uw_uart|i_uarts|Rx_Reg_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_6_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_5_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	combout => \u_uw_uart|i_uarts|Dout_5_~feeder_combout\);

\u_uw_uart|i_uarts|Rx_Reg_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_4_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_4_\,
	combout => \u_uw_uart|i_uarts|Dout_4_~feeder_combout\);

\u_uw_uart|i_uarts|Rx_Reg_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_4_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_2_\,
	combout => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\);

\u_uw_uart|i_uarts|Rx_Reg_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_2_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_1_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	combout => \u_uw_uart|i_uarts|Dout_1_~feeder_combout\);

\u_uw_uart|i_uarts|Rx_Reg_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\);

\u_uw_uart|i_uarts|Dout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_0_\,
	combout => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\);

\u_uw_uart|i_uarts|TxDivisor_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\);

clk_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ $ VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => VCC,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\);

nrst_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nrst,
	combout => \nrst~combout\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\);

\u_uw_uart|i_uarts|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z6\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	combout => \u_uw_uart|i_uarts|nx32400z6\);

\u_uw_uart|i_uarts|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z4\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	combout => \u_uw_uart|i_uarts|nx32400z4\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ $ \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\);

\u_uw_uart|i_uarts|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z3\ = \u_uw_uart|i_uarts|TxDivisor_5_\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	combout => \u_uw_uart|i_uarts|nx32400z3\);

\u_uw_uart|i_uarts|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z2\ = \u_uw_uart|i_uarts|nx32400z5\ & \u_uw_uart|i_uarts|nx32400z4\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ & \u_uw_uart|i_uarts|nx32400z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z5\,
	datab => \u_uw_uart|i_uarts|nx32400z4\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => \u_uw_uart|i_uarts|nx32400z3\,
	combout => \u_uw_uart|i_uarts|nx32400z2\);

\u_uw_uart|i_uarts|ix32400z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z9\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	combout => \u_uw_uart|i_uarts|nx32400z9\);

\u_uw_uart|i_uarts|ix32400z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z8\ = !\u_uw_uart|i_uarts|TxDivisor_5_\ & \u_uw_uart|i_uarts|nx32400z9\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|nx32400z9\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	combout => \u_uw_uart|i_uarts|nx32400z8\);

\u_uw_uart|i_uarts|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z1\ = \u_uw_uart|i_uarts|nx32400z2\ # \u_uw_uart|i_uarts|nx32400z7\ & \u_uw_uart|i_uarts|nx32400z6\ & \u_uw_uart|i_uarts|nx32400z8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z7\,
	datab => \u_uw_uart|i_uarts|nx32400z6\,
	datac => \u_uw_uart|i_uarts|nx32400z2\,
	datad => \u_uw_uart|i_uarts|nx32400z8\,
	combout => \u_uw_uart|i_uarts|nx32400z1\);

\u_uw_uart|i_uarts|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx32400z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopTx\);

\u_uw_uart|i_uarts|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ (!\u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\)) # !\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ # 
-- \u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx48926z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx48926z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_0_\);

\u_uw_uart|i_uarts|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z2\ = \u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxFSM_0_\ $ \u_uw_uart|i_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx51917z2\);

\u_uw_uart|i_uarts|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx49923z1\ = \u_uw_uart|i_uarts|nx51917z2\ & !\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ !\u_uw_uart|i_uarts|TxBitCnt_1_\) # !\u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|TxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z2\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|nx51917z2\,
	combout => \u_uw_uart|i_uarts|nx49923z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx49923z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_1_\);

\u_uw_uart|i_uarts|ix50920z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z3\ = \u_uw_uart|i_uarts|TxBitCnt_1_\ # \u_uw_uart|i_uarts|TxBitCnt_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx50920z3\);

\u_uw_uart|i_uarts|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z1\ = \u_uw_uart|i_uarts|nx51917z2\ & !\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|nx50920z3\ $ !\u_uw_uart|i_uarts|TxBitCnt_2_\) # !\u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|TxBitCnt_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z2\,
	datab => \u_uw_uart|i_uarts|nx50920z3\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx51917z2\,
	combout => \u_uw_uart|i_uarts|nx50920z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx50920z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_2_\);

\u_uw_uart|i_uarts|ix51917z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z3\ = \u_uw_uart|i_uarts|TxBitCnt_2_\ # \u_uw_uart|i_uarts|TxBitCnt_1_\ # \u_uw_uart|i_uarts|TxBitCnt_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx51917z3\);

\u_uw_uart|i_uarts|ix51917z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z4\ = \u_uw_uart|i_uarts|nx50920z2\ # !\u_uw_uart|i_uarts|TxBitCnt_2_\ & !\u_uw_uart|i_uarts|TxBitCnt_3_\ & !\u_uw_uart|i_uarts|nx50920z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z2\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx50920z3\,
	combout => \u_uw_uart|i_uarts|nx51917z4\);

\u_uw_uart|i_uarts|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z1\ = \u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|nx51917z4\ # \u_uw_uart|i_uarts|nx51917z3\ & \u_uw_uart|i_uarts|TxBitCnt_3_\) # !\u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|TxBitCnt_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx51917z2\,
	datab => \u_uw_uart|i_uarts|nx51917z3\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx51917z4\,
	combout => \u_uw_uart|i_uarts|nx51917z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx51917z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_3_\);

\u_uw_uart|i_uarts|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z3\ = \u_uw_uart|i_uarts|TxBitCnt_2_\ # \u_uw_uart|i_uarts|TxBitCnt_3_\ # \u_uw_uart|i_uarts|TxBitCnt_1_\ # !\u_uw_uart|i_uarts|TxBitCnt_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx4608z3\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx51271z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z31\ $ VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z30\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datad => VCC,
	combout => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z30\);

\u_uw_uart|ix33354z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z2\ = \u_uw_uart|nx39480z2\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datac => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx33354z2\);

rxflex_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rxflex,
	combout => \rxflex~combout\);

\u_uw_uart|i_uarts|ix57064z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Rx\ = !\rxflex~combout\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|i_uarts|NOT_Rx\);

\u_uw_uart|i_uarts|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Rx\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|not_Rx_r\);

\u_uw_uart|i_uarts|RxFSM_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\ = \u_uw_uart|i_uarts|RxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_1_\,
	combout => \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ $ VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	datad => VCC,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\);

\u_uw_uart|i_uarts|ix65151z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx65151z1\ = \u_uw_uart|i_uarts|nx34394z3\ # !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datac => \u_uw_uart|i_uarts|nx34394z3\,
	combout => \u_uw_uart|i_uarts|nx65151z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\);

\u_uw_uart|i_uarts|ix34394z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z10\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	combout => \u_uw_uart|i_uarts|nx34394z10\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\);

\u_uw_uart|i_uarts|ix34394z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z9\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	combout => \u_uw_uart|i_uarts|nx34394z9\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ $ !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\);

\u_uw_uart|i_uarts|ix34394z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z4\ = \u_uw_uart|i_uarts|TxDivisor_5_\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	combout => \u_uw_uart|i_uarts|nx34394z4\);

\u_uw_uart|i_uarts|ix34394z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z3\ = \u_uw_uart|i_uarts|nx34394z5\ # \u_uw_uart|i_uarts|nx34394z10\ & \u_uw_uart|i_uarts|nx34394z9\ & \u_uw_uart|i_uarts|nx34394z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z5\,
	datab => \u_uw_uart|i_uarts|nx34394z10\,
	datac => \u_uw_uart|i_uarts|nx34394z9\,
	datad => \u_uw_uart|i_uarts|nx34394z4\,
	combout => \u_uw_uart|i_uarts|nx34394z3\);

\u_uw_uart|i_uarts|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z1\ = \u_uw_uart|i_uarts|nx34394z2\ & \u_uw_uart|i_uarts|nx34394z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datac => \u_uw_uart|i_uarts|nx34394z3\,
	combout => \u_uw_uart|i_uarts|nx34394z1\);

\u_uw_uart|i_uarts|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopRx\);

\u_uw_uart|i_uarts|ix15541z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z2\ = \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxFSM_6_\ & \u_uw_uart|rawrx\ # !\u_uw_uart|i_uarts|RxFSM_6_\ & (\u_uw_uart|i_uarts|TopRx\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|rawrx\,
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|RxFSM_6_\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx15541z2\);

\u_uw_uart|i_uarts|ix15541z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z3\ = \nrst~combout\ & \rxflex~combout\ # !\u_uw_uart|i_uarts|RxFSM_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datac => \u_uw_uart|i_uarts|RxFSM_6_\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|i_uarts|nx15541z3\);

\u_uw_uart|i_uarts|ix15541z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z1\ = \u_uw_uart|i_uarts|nx15541z2\ # \u_uw_uart|i_uarts|not_Rx_r\ & \u_uw_uart|i_uarts|nx15541z3\ & !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datab => \u_uw_uart|i_uarts|nx15541z2\,
	datac => \u_uw_uart|i_uarts|nx15541z3\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx15541z1\);

\u_uw_uart|i_uarts|reg_RxFSM_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|RxFSM_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|not_Rx_r\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_6_\);

\u_uw_uart|i_uarts|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx16538z1\ = !\u_uw_uart|i_uarts|RxFSM_6_\ & (\u_uw_uart|i_uarts|not_Rx_r\ # !\u_uw_uart|i_uarts|RxFSM_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datac => \u_uw_uart|i_uarts|RxFSM_5_\,
	datad => \u_uw_uart|i_uarts|RxFSM_6_\,
	combout => \u_uw_uart|i_uarts|nx16538z1\);

\u_uw_uart|i_uarts|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx16538z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx34394z2\);

\u_uw_uart|i_uarts|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ = \u_uw_uart|i_uarts|RxFSM_3_\ & (\u_uw_uart|i_uarts|TopRx\) # !\u_uw_uart|i_uarts|RxFSM_3_\ & !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_3_\,
	datac => \u_uw_uart|i_uarts|nx34394z2\,
	datad => \u_uw_uart|i_uarts|TopRx\,
	combout => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\);

\u_uw_uart|i_uarts|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z1\ = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|nx9370z2\ $ \u_uw_uart|i_uarts|RxBitCnt_2_\) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|RxBitCnt_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx9370z2\,
	datab => \u_uw_uart|i_uarts|nx34394z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	combout => \u_uw_uart|i_uarts|nx9370z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx9370z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_2_\);

\u_uw_uart|i_uarts|nx34394z2~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\ = !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\);

\u_uw_uart|i_uarts|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_1_\);

\u_uw_uart|i_uarts|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx14544z1\ = \u_uw_uart|i_uarts|RxFSM_3_\ # \u_uw_uart|i_uarts|not_Rx_r\ & \u_uw_uart|i_uarts|RxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datac => \u_uw_uart|i_uarts|RxFSM_1_\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx14544z1\);

\u_uw_uart|i_uarts|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx14544z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_2_\);

\u_uw_uart|i_uarts|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z1\ = !\u_uw_uart|i_uarts|nx13547z2\ & \u_uw_uart|i_uarts|RxFSM_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx13547z2\,
	datad => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx13547z1\);

\u_uw_uart|i_uarts|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx13547z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_3_\);

\u_uw_uart|i_uarts|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z1\ = \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ $ (\u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxFSM_3_\)) # !\u_uw_uart|i_uarts|nx34394z2\ & !\u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxBitCnt_0_\ 
-- & \u_uw_uart|i_uarts|RxFSM_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx11364z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11364z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_0_\);

\u_uw_uart|i_uarts|ix8373z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z2\ = \u_uw_uart|i_uarts|RxBitCnt_3_\ $ (\u_uw_uart|i_uarts|RxBitCnt_1_\ & \u_uw_uart|i_uarts|RxBitCnt_2_\ & \u_uw_uart|i_uarts|RxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	combout => \u_uw_uart|i_uarts|nx8373z2\);

\u_uw_uart|i_uarts|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z1\ = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & \u_uw_uart|i_uarts|nx34394z2\ & \u_uw_uart|i_uarts|nx8373z2\ # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|RxBitCnt_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|nx8373z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	combout => \u_uw_uart|i_uarts|nx8373z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx8373z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_3_\);

\u_uw_uart|i_uarts|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z2\ = !\u_uw_uart|i_uarts|RxBitCnt_1_\ & !\u_uw_uart|i_uarts|RxBitCnt_2_\ & !\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	combout => \u_uw_uart|i_uarts|nx13547z2\);

\u_uw_uart|i_uarts|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11553z1\ = \u_uw_uart|i_uarts|nx13547z2\ & \u_uw_uart|i_uarts|RxFSM_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx13547z2\,
	datad => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx11553z1\);

\u_uw_uart|i_uarts|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11553z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_5_\);

\u_uw_uart|i_uarts|ix30017z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx30017z1\ = \u_uw_uart|i_uarts|TopRx\ & !\u_uw_uart|i_uarts|not_Rx_r\ & \u_uw_uart|i_uarts|RxFSM_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|not_Rx_r\,
	datad => \u_uw_uart|i_uarts|RxFSM_5_\,
	combout => \u_uw_uart|i_uarts|nx30017z1\);

\u_uw_uart|i_uarts|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx30017z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxRDY\);

\u_uw_uart|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx58116z1\ = !\u_uw_uart|o_pixavail\ & \u_uw_uart|i_uarts|RxRDY\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|i_uarts|RxRDY\,
	combout => \u_uw_uart|nx58116z1\);

\u_uw_uart|reg_charavail\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx58116z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|o_pixavail\);

\u_uw_uart|ix39480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z1\ = !\u_uw_uart|nx39480z2\ & (\u_uw_uart|ack\ # \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|nx39480z2\,
	datac => \u_uw_uart|ack\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|nx39480z1\);

\u_uw_uart|reg_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39480z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ack\);

\u_uw_uart|ix33354z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z1\ = \u_uw_uart|ack\ # \u_uw_uart|o_pixavail\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|ack\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|nx33354z1\);

\u_uw_uart|modgen_counter_waitcount|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z31\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx52268z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z29\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z30\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z30\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z28\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z30\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z30\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z28\);

\u_uw_uart|modgen_counter_waitcount|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z29\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx53265z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z27\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z28\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z28\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z26\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z28\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z26\);

\u_uw_uart|modgen_counter_waitcount|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z27\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx54262z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z25\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z26\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z26\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z24\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z26\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z26\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z24\);

\u_uw_uart|modgen_counter_waitcount|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z25\);

\u_uw_uart|ix39480z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z4\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & \u_uw_uart|modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z31\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	combout => \u_uw_uart|nx39480z4\);

\u_kirsch|u_flow|state_3_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|state_3_~_wirecell_combout\ = !\u_kirsch|u_flow|state_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|state_3_\,
	combout => \u_kirsch|u_flow|state_3_~_wirecell_combout\);

\u_kirsch|u_flow|ix29521z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx29521z1\ = \u_kirsch|u_flow|p40\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p40\,
	datac => \nrst~combout\,
	combout => \u_kirsch|u_flow|nx29521z1\);

\u_kirsch|u_flow|reg_state_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|state_3_~_wirecell_combout\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|u_flow|nx29521z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx28524z1\);

\u_kirsch|u_flow|nx28524z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx28524z1~_wirecell_combout\ = !\u_kirsch|u_flow|nx28524z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_flow|nx28524z1\,
	combout => \u_kirsch|u_flow|nx28524z1~_wirecell_combout\);

\u_kirsch|u_flow|reg_state_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx28524z1~_wirecell_combout\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|u_flow|nx29521z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|state_1_\);

\u_kirsch|u_flow|reg_state_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|state_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx29521z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|state_2_\);

\u_kirsch|u_flow|reg_state_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|state_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|u_flow|nx29521z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|state_3_\);

\u_kirsch|u_flow|reg_o_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|state_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_valid\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx55259z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z23\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z24\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z24\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z22\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z24\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z22\);

\u_uw_uart|modgen_counter_waitcount|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z23\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx56256z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z21\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z22\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z22\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z20\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z22\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z22\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z20\);

\u_uw_uart|modgen_counter_waitcount|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z17\);

\u_uw_uart|modgen_counter_waitcount|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z21\);

\u_uw_uart|ix39480z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z3\ = \u_uw_uart|modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & \u_uw_uart|modgen_counter_waitcount|nx22081z21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	combout => \u_uw_uart|nx39480z3\);

\u_uw_uart|ix39480z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z2\ = \u_kirsch|u_flow|o_valid\ # \u_uw_uart|nx39480z5\ & \u_uw_uart|nx39480z4\ & \u_uw_uart|nx39480z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z5\,
	datab => \u_uw_uart|nx39480z4\,
	datac => \u_kirsch|u_flow|o_valid\,
	datad => \u_uw_uart|nx39480z3\,
	combout => \u_uw_uart|nx39480z2\);

\u_uw_uart|i_uarts|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15376z1\ = \u_uw_uart|i_uarts|RxFSM_6_\ # \u_uw_uart|i_uarts|RxErr\ & !\u_uw_uart|i_uarts|RxRDY\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_6_\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|i_uarts|RxRDY\,
	combout => \u_uw_uart|i_uarts|nx15376z1\);

\u_uw_uart|i_uarts|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx15376z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxErr\);

\u_uw_uart|ix46385z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z1\ = \u_uw_uart|nx40736z1\ & \u_uw_uart|nx39480z2\ # !\u_uw_uart|nx40736z1\ & (\u_uw_uart|i_uarts|RxErr\) # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx40736z1\,
	datab => \nrst~combout\,
	datac => \u_uw_uart|nx39480z2\,
	datad => \u_uw_uart|i_uarts|RxErr\,
	combout => \u_uw_uart|nx46385z1\);

\u_uw_uart|reg_dsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx46385z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|dsend\);

\u_uw_uart|ix38868z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx38868z1\ = !\u_uw_uart|state\ & \u_uw_uart|dsend\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|state\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx38868z1\);

\u_uw_uart|reg_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx38868z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|state\);

\u_uw_uart|ix18433z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx18433z1\ = !\u_uw_uart|state\ & (\u_uw_uart|ld_sdout\ # \u_uw_uart|dsend\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|state\,
	datac => \u_uw_uart|ld_sdout\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx18433z1\);

\u_uw_uart|reg_ld_sdout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx18433z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ld_sdout\);

\u_uw_uart|i_uarts|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z2\ = \u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxFSM_0_\ & !\u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_0_\ & (!\u_uw_uart|ld_sdout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|ld_sdout\,
	combout => \u_uw_uart|i_uarts|nx4608z2\);

\u_uw_uart|i_uarts|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z1\ = \u_uw_uart|i_uarts|TxFSM_0_\ & (\u_uw_uart|i_uarts|nx4608z2\) # !\u_uw_uart|i_uarts|TxFSM_0_\ & !\u_uw_uart|i_uarts|nx4608z2\ & (!\u_uw_uart|i_uarts|nx4608z3\ # !\u_uw_uart|i_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|nx4608z3\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|nx4608z2\,
	combout => \u_uw_uart|i_uarts|nx4608z1\);

\u_uw_uart|i_uarts|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx4608z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_0_\);

\u_uw_uart|i_uarts|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx5605z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ $ (\u_uw_uart|i_uarts|TopTx\ & \u_uw_uart|i_uarts|TxFSM_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx5605z1\);

\u_uw_uart|i_uarts|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx5605z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_1_\);

\u_uw_uart|i_uarts|ix61140z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\ = \u_uw_uart|i_uarts|TxFSM_0_\ # \u_uw_uart|i_uarts|nx61140z1\ & \u_uw_uart|i_uarts|TxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx61140z1\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TxFSM_0_\,
	combout => \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\);

\u_uw_uart|i_uarts|ix61812z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx61812z1\ = \u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\ & !\u_uw_uart|i_uarts|TxFSM_1_\ # !\u_uw_uart|i_uarts|TxFSM_0_\ & (\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & 
-- (\u_uw_uart|ld_sdout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|ld_sdout\,
	combout => \u_uw_uart|i_uarts|nx61812z1\);

reg_out_txflex_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx61812z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21351z2);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx51271z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z15\ $ VCC
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z14\ = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z15\,
	datad => VCC,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx51271z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z14\);

\u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_column|nx51271z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|modgen_counter_column|nx51271z1\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx53265z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & (\u_kirsch|u_memory|modgen_counter_column|nx58250z12\ $ GND) # !\u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & 
-- !\u_kirsch|u_memory|modgen_counter_column|nx58250z12\ & VCC
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z10\ = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & !\u_kirsch|u_memory|modgen_counter_column|nx58250z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_column|nx58250z11\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z12\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx53265z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z10\);

\u_kirsch|u_memory|reg_first_bubble\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|o_pixavail\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|first_bubble\);

\u_kirsch|u_memory|modgen_counter_column|ix57253z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx57253z3\ = \u_kirsch|u_memory|nx47386z1\ & (\u_kirsch|u_memory|nx47386z2\ # \u_kirsch|u_memory|first_bubble\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx47386z1\,
	datac => \u_kirsch|u_memory|nx47386z2\,
	datad => \u_kirsch|u_memory|first_bubble\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx53265z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z11\);

\u_kirsch|u_memory|ix8852z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z4\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ & \u_kirsch|u_memory|modgen_counter_column|nx1041z1\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_column|nx58250z5\,
	datab => \u_kirsch|u_memory|modgen_counter_column|nx1041z1\,
	datac => \u_kirsch|u_memory|modgen_counter_column|nx58250z3\,
	datad => \u_kirsch|u_memory|modgen_counter_column|nx58250z15\,
	combout => \u_kirsch|u_memory|nx8852z4\);

\u_kirsch|u_memory|ix8852z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z3\ = \u_kirsch|u_memory|nx8852z5\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z13\ & \u_kirsch|u_memory|modgen_counter_column|nx58250z11\ & \u_kirsch|u_memory|nx8852z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z5\,
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z13\,
	datac => \u_kirsch|u_memory|modgen_counter_column|nx58250z11\,
	datad => \u_kirsch|u_memory|nx8852z4\,
	combout => \u_kirsch|u_memory|nx8852z3\);

\u_kirsch|u_memory|ix47386z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx47386z2\ = \u_kirsch|u_memory|nx8852z2\ # \u_kirsch|u_memory|nx8852z3\ & \u_kirsch|u_memory|first_bubble\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z2\,
	datab => \u_kirsch|u_memory|nx8852z3\,
	datac => \nrst~combout\,
	datad => \u_kirsch|u_memory|first_bubble\,
	combout => \u_kirsch|u_memory|nx47386z2\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z15\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx52268z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z13\ & !\u_kirsch|u_memory|modgen_counter_column|nx58250z14\ # !\u_kirsch|u_memory|modgen_counter_column|nx58250z13\ & 
-- (\u_kirsch|u_memory|modgen_counter_column|nx58250z14\ # GND)
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z12\ = CARRY(!\u_kirsch|u_memory|modgen_counter_column|nx58250z14\ # !\u_kirsch|u_memory|modgen_counter_column|nx58250z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z13\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z14\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx52268z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z12\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx52268z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z13\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx54262z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z9\ & !\u_kirsch|u_memory|modgen_counter_column|nx58250z10\ # !\u_kirsch|u_memory|modgen_counter_column|nx58250z9\ & 
-- (\u_kirsch|u_memory|modgen_counter_column|nx58250z10\ # GND)
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z8\ = CARRY(!\u_kirsch|u_memory|modgen_counter_column|nx58250z10\ # !\u_kirsch|u_memory|modgen_counter_column|nx58250z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z9\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z10\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx54262z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z8\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx54262z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z9\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx55259z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & (\u_kirsch|u_memory|modgen_counter_column|nx58250z8\ $ GND) # !\u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & 
-- !\u_kirsch|u_memory|modgen_counter_column|nx58250z8\ & VCC
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z6\ = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z7\ & !\u_kirsch|u_memory|modgen_counter_column|nx58250z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_column|nx58250z7\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z8\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx55259z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z6\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx56256z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ & !\u_kirsch|u_memory|modgen_counter_column|nx58250z6\ # !\u_kirsch|u_memory|modgen_counter_column|nx58250z5\ & 
-- (\u_kirsch|u_memory|modgen_counter_column|nx58250z6\ # GND)
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z4\ = CARRY(!\u_kirsch|u_memory|modgen_counter_column|nx58250z6\ # !\u_kirsch|u_memory|modgen_counter_column|nx58250z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z5\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z6\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx56256z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z4\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx56256z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z5\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx57253z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & (\u_kirsch|u_memory|modgen_counter_column|nx58250z4\ $ GND) # !\u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & 
-- !\u_kirsch|u_memory|modgen_counter_column|nx58250z4\ & VCC
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z2\ = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z3\ & !\u_kirsch|u_memory|modgen_counter_column|nx58250z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z3\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z4\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx57253z1\,
	cout => \u_kirsch|u_memory|modgen_counter_column|nx58250z2\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx57253z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z3\);

\u_kirsch|u_memory|modgen_counter_column|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_column|nx58250z1\ = \u_kirsch|u_memory|modgen_counter_column|nx58250z2\ $ \u_kirsch|u_memory|modgen_counter_column|nx1041z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_column|nx1041z1\,
	cin => \u_kirsch|u_memory|modgen_counter_column|nx58250z2\,
	combout => \u_kirsch|u_memory|modgen_counter_column|nx58250z1\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx58250z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx1041z1\);

\u_kirsch|u_memory|ix60567z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60567z4\ = \u_kirsch|u_memory|o_valid\ # \u_kirsch|u_memory|nx60567z2\ & \u_kirsch|u_memory|modgen_counter_column|nx1041z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|modgen_counter_column|nx1041z1\,
	datac => \u_kirsch|u_memory|o_valid\,
	combout => \u_kirsch|u_memory|nx60567z4\);

\u_kirsch|u_memory|modgen_counter_column|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_column|nx55259z1\,
	sclr => \u_kirsch|u_memory|nx47386z2\,
	ena => \u_kirsch|u_memory|modgen_counter_column|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_column|nx58250z7\);

\u_kirsch|u_memory|ix60567z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60567z5\ = \u_kirsch|u_memory|nx60567z2\ & (\u_kirsch|u_memory|modgen_counter_column|nx58250z7\ # \u_kirsch|u_memory|modgen_counter_column|nx58250z5\ # \u_kirsch|u_memory|modgen_counter_column|nx58250z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z2\,
	datab => \u_kirsch|u_memory|modgen_counter_column|nx58250z7\,
	datac => \u_kirsch|u_memory|modgen_counter_column|nx58250z5\,
	datad => \u_kirsch|u_memory|modgen_counter_column|nx58250z3\,
	combout => \u_kirsch|u_memory|nx60567z5\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx51271z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z15\ $ VCC
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z14\ = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_row|nx58250z15\,
	datad => VCC,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx51271z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z14\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx52268z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z13\ & !\u_kirsch|u_memory|modgen_counter_row|nx58250z14\ # !\u_kirsch|u_memory|modgen_counter_row|nx58250z13\ & 
-- (\u_kirsch|u_memory|modgen_counter_row|nx58250z14\ # GND)
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z12\ = CARRY(!\u_kirsch|u_memory|modgen_counter_row|nx58250z14\ # !\u_kirsch|u_memory|modgen_counter_row|nx58250z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z13\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z14\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx52268z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z12\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx55259z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z7\ & (\u_kirsch|u_memory|modgen_counter_row|nx58250z8\ $ GND) # !\u_kirsch|u_memory|modgen_counter_row|nx58250z7\ & 
-- !\u_kirsch|u_memory|modgen_counter_row|nx58250z8\ & VCC
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z6\ = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z7\ & !\u_kirsch|u_memory|modgen_counter_row|nx58250z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_row|nx58250z7\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z8\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx55259z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z6\);

\u_kirsch|u_memory|ix8852z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|not_rtlc2_X_0_n244\ = \u_kirsch|u_memory|nx8852z3\ & !\u_uw_uart|o_pixavail\ & \u_kirsch|u_memory|first_bubble\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|nx8852z3\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|u_memory|first_bubble\,
	combout => \u_kirsch|u_memory|not_rtlc2_X_0_n244\);

\u_kirsch|u_memory|modgen_counter_row|ix57253z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx57253z3\ = \u_kirsch|u_memory|nx8852z2\ # \u_kirsch|u_memory|not_rtlc2_X_0_n244\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z2\,
	datab => \nrst~combout\,
	datac => \u_kirsch|u_memory|not_rtlc2_X_0_n244\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx55259z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z7\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx57253z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z3\ & (\u_kirsch|u_memory|modgen_counter_row|nx58250z4\ $ GND) # !\u_kirsch|u_memory|modgen_counter_row|nx58250z3\ & 
-- !\u_kirsch|u_memory|modgen_counter_row|nx58250z4\ & VCC
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z2\ = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z3\ & !\u_kirsch|u_memory|modgen_counter_row|nx58250z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z3\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z4\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx57253z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z2\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z2\ $ \u_kirsch|u_memory|modgen_counter_row|nx1041z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_row|nx1041z1\,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z2\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx58250z1\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx58250z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx1041z1\);

\u_kirsch|u_memory|ix8852z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z6\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z5\ & \u_kirsch|u_memory|modgen_counter_row|nx58250z7\ & \u_kirsch|u_memory|modgen_counter_row|nx58250z3\ & \u_kirsch|u_memory|modgen_counter_row|nx1041z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_row|nx58250z5\,
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z7\,
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z3\,
	datad => \u_kirsch|u_memory|modgen_counter_row|nx1041z1\,
	combout => \u_kirsch|u_memory|nx8852z6\);

\u_kirsch|u_memory|ix8852z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z2\ = \u_kirsch|u_memory|nx8852z7\ & \u_kirsch|u_memory|nx8852z6\ & \u_kirsch|u_memory|first_bubble\ & \u_kirsch|u_memory|nx8852z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx8852z7\,
	datab => \u_kirsch|u_memory|nx8852z6\,
	datac => \u_kirsch|u_memory|first_bubble\,
	datad => \u_kirsch|u_memory|nx8852z3\,
	combout => \u_kirsch|u_memory|nx8852z2\);

\u_kirsch|u_memory|ix8852z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx8852z1\ = \u_kirsch|u_memory|nx8852z2\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datac => \u_kirsch|u_memory|nx8852z2\,
	combout => \u_kirsch|u_memory|nx8852z1\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx52268z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z13\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx53265z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z11\ & (\u_kirsch|u_memory|modgen_counter_row|nx58250z12\ $ GND) # !\u_kirsch|u_memory|modgen_counter_row|nx58250z11\ & 
-- !\u_kirsch|u_memory|modgen_counter_row|nx58250z12\ & VCC
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z10\ = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z11\ & !\u_kirsch|u_memory|modgen_counter_row|nx58250z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|modgen_counter_row|nx58250z11\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z12\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx53265z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z10\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx54262z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z9\ & !\u_kirsch|u_memory|modgen_counter_row|nx58250z10\ # !\u_kirsch|u_memory|modgen_counter_row|nx58250z9\ & 
-- (\u_kirsch|u_memory|modgen_counter_row|nx58250z10\ # GND)
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z8\ = CARRY(!\u_kirsch|u_memory|modgen_counter_row|nx58250z10\ # !\u_kirsch|u_memory|modgen_counter_row|nx58250z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z9\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z10\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx54262z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z8\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx54262z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z9\);

\u_kirsch|u_memory|modgen_counter_row|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|modgen_counter_row|nx56256z1\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z5\ & !\u_kirsch|u_memory|modgen_counter_row|nx58250z6\ # !\u_kirsch|u_memory|modgen_counter_row|nx58250z5\ & (\u_kirsch|u_memory|modgen_counter_row|nx58250z6\ 
-- # GND)
-- \u_kirsch|u_memory|modgen_counter_row|nx58250z4\ = CARRY(!\u_kirsch|u_memory|modgen_counter_row|nx58250z6\ # !\u_kirsch|u_memory|modgen_counter_row|nx58250z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z5\,
	datad => VCC,
	cin => \u_kirsch|u_memory|modgen_counter_row|nx58250z6\,
	combout => \u_kirsch|u_memory|modgen_counter_row|nx56256z1\,
	cout => \u_kirsch|u_memory|modgen_counter_row|nx58250z4\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx56256z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z5\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx57253z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z3\);

\u_kirsch|u_memory|ix60567z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60567z2\ = \u_kirsch|u_memory|nx60567z3\ # \u_kirsch|u_memory|modgen_counter_row|nx58250z3\ # \u_kirsch|u_memory|modgen_counter_row|nx58250z5\ # \u_kirsch|u_memory|modgen_counter_row|nx1041z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z3\,
	datab => \u_kirsch|u_memory|modgen_counter_row|nx58250z3\,
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z5\,
	datad => \u_kirsch|u_memory|modgen_counter_row|nx1041z1\,
	combout => \u_kirsch|u_memory|nx60567z2\);

\u_kirsch|u_memory|ix60567z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx60567z1\ = \u_kirsch|u_memory|nx60567z4\ # \u_kirsch|u_memory|nx60567z5\ # \u_kirsch|u_memory|nx60567z6\ & \u_kirsch|u_memory|nx60567z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|nx60567z6\,
	datab => \u_kirsch|u_memory|nx60567z4\,
	datac => \u_kirsch|u_memory|nx60567z5\,
	datad => \u_kirsch|u_memory|nx60567z2\,
	combout => \u_kirsch|u_memory|nx60567z1\);

\u_kirsch|u_memory|reg_o_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx60567z1\,
	sclr => \u_kirsch|u_memory|ALT_INV_first_bubble\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_valid\);

\u_kirsch|ix64956z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx64956z1\ = \u_kirsch|u_memory|o_valid\ # !\nrst~combout\ # !\u_kirsch|nx57127z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_valid\,
	datad => \nrst~combout\,
	combout => \u_kirsch|nx64956z1\);

\u_kirsch|reg_f_state_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_state_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx64956z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_state_3_\);

\u_kirsch|f_state_3_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_state_3_~_wirecell_combout\ = !\u_kirsch|f_state_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_state_3_\,
	combout => \u_kirsch|f_state_3_~_wirecell_combout\);

\u_kirsch|reg_f_state_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_state_3_~_wirecell_combout\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx64956z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx63959z1\);

\u_kirsch|nx63959z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx63959z1~_wirecell_combout\ = !\u_kirsch|nx63959z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|nx63959z1\,
	combout => \u_kirsch|nx63959z1~_wirecell_combout\);

\u_kirsch|reg_f_state_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx63959z1~_wirecell_combout\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx64956z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_state_1_\);

\u_kirsch|reg_f_state_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_state_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx64956z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_state_2_\);

\u_kirsch|ix57127z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx57127z2\ = !\u_kirsch|f_state_3_\ & !\u_kirsch|f_state_2_\ & !\u_kirsch|f_state_1_\ & !\u_kirsch|nx63959z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_state_3_\,
	datab => \u_kirsch|f_state_2_\,
	datac => \u_kirsch|f_state_1_\,
	datad => \u_kirsch|nx63959z1\,
	combout => \u_kirsch|nx57127z2\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx51271z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z15\);

\u_kirsch|u_memory|o_row_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_0_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z15\,
	combout => \u_kirsch|u_memory|o_row_0_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_0_\);

\u_kirsch|f_i_row_next_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_0_~feeder_combout\ = \u_kirsch|u_memory|o_row_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|o_row_0_\,
	combout => \u_kirsch|f_i_row_next_0_~feeder_combout\);

\u_kirsch|ix35105z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx35105z1\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_valid\ & \nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|u_memory|o_valid\,
	datad => \nrst~combout\,
	combout => \u_kirsch|nx35105z1\);

\u_kirsch|reg_f_i_row_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_0_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_0_\);

\u_kirsch|ix20836z52997\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_0_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_row_0_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i_row_next_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_row_0_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|f_i_row_next_0_\,
	combout => \u_kirsch|f_i_row_0_\);

\u_kirsch|u_flow|ix258_reg_p2r_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx22790z1\);

\u_kirsch|u_flow|ix258_reg_p3r_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|nx22790z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx27925z1\);

\u_kirsch|u_flow|nx33060z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx33060z1~feeder_combout\ = \u_kirsch|u_flow|nx27925z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx27925z1\,
	combout => \u_kirsch|u_flow|nx33060z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx33060z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx33060z1\);

\u_kirsch|u_flow|o_row_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_row_0_~feeder_combout\ = \u_kirsch|u_flow|nx33060z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx33060z1\,
	combout => \u_kirsch|u_flow|o_row_0_~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p5r_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_row_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_0_\);

\u_kirsch|u_memory|o_row_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_1_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_row|nx58250z13\,
	combout => \u_kirsch|u_memory|o_row_1_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_1_\);

\u_kirsch|f_i_row_next_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_1_~feeder_combout\ = \u_kirsch|u_memory|o_row_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_row_1_\,
	combout => \u_kirsch|f_i_row_next_1_~feeder_combout\);

\u_kirsch|reg_f_i_row_next_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_1_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_1_\);

\u_kirsch|ix20836z52996\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_1_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_row_1_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_row_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i_row_next_1_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|u_memory|o_row_1_\,
	combout => \u_kirsch|f_i_row_1_\);

\u_kirsch|u_flow|ix258_reg_p2r_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx21793z1\);

\u_kirsch|u_flow|nx26928z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26928z1~feeder_combout\ = \u_kirsch|u_flow|nx21793z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx21793z1\,
	combout => \u_kirsch|u_flow|nx26928z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p3r_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx26928z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx26928z1\);

\u_kirsch|u_flow|nx32063z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx32063z1~feeder_combout\ = \u_kirsch|u_flow|nx26928z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx26928z1\,
	combout => \u_kirsch|u_flow|nx32063z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx32063z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx32063z1\);

\u_kirsch|u_flow|ix258_reg_p5r_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|nx32063z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_1_\);

\u_kirsch|u_memory|modgen_counter_row|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|modgen_counter_row|nx53265z1\,
	sclr => \u_kirsch|u_memory|nx8852z1\,
	ena => \u_kirsch|u_memory|modgen_counter_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|modgen_counter_row|nx58250z11\);

\u_kirsch|u_memory|o_row_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_2_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z11\,
	combout => \u_kirsch|u_memory|o_row_2_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_2_\);

\u_kirsch|ix20836z52995\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_2_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_row_2_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_row_next_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i_row_next_2_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|u_memory|o_row_2_\,
	combout => \u_kirsch|f_i_row_2_\);

\u_kirsch|u_flow|ix258_reg_p2r_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx20796z1\);

\u_kirsch|u_flow|nx25931z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx25931z1~feeder_combout\ = \u_kirsch|u_flow|nx20796z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx20796z1\,
	combout => \u_kirsch|u_flow|nx25931z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p3r_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx25931z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx25931z1\);

\u_kirsch|u_flow|nx31066z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx31066z1~feeder_combout\ = \u_kirsch|u_flow|nx25931z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx25931z1\,
	combout => \u_kirsch|u_flow|nx31066z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx31066z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx31066z1\);

\u_kirsch|u_flow|ix258_reg_p5r_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|nx31066z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_2_\);

ix57590z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57590z1 = \u_kirsch|u_flow|o_row_0_\ & !\u_kirsch|u_flow|o_row_3_\ & (\u_kirsch|u_flow|o_row_1_\ $ !\u_kirsch|u_flow|o_row_2_\) # !\u_kirsch|u_flow|o_row_0_\ & !\u_kirsch|u_flow|o_row_1_\ & (\u_kirsch|u_flow|o_row_3_\ $ !\u_kirsch|u_flow|o_row_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx57590z1);

\reg_out_o_sevenseg_obuf_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx57590z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41851z1);

ix58587z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58587z1 = \u_kirsch|u_flow|o_row_0_\ & (\u_kirsch|u_flow|o_row_3_\ $ (\u_kirsch|u_flow|o_row_1_\ # !\u_kirsch|u_flow|o_row_2_\)) # !\u_kirsch|u_flow|o_row_0_\ & !\u_kirsch|u_flow|o_row_3_\ & \u_kirsch|u_flow|o_row_1_\ & !\u_kirsch|u_flow|o_row_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx58587z1);

\reg_out_o_sevenseg_obuf_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx58587z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42848z1);

ix59584z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59584z1 = \u_kirsch|u_flow|o_row_1_\ & !\u_kirsch|u_flow|o_row_3_\ & \u_kirsch|u_flow|o_row_0_\ # !\u_kirsch|u_flow|o_row_1_\ & (\u_kirsch|u_flow|o_row_2_\ & !\u_kirsch|u_flow|o_row_3_\ # !\u_kirsch|u_flow|o_row_2_\ & (\u_kirsch|u_flow|o_row_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx59584z1);

\reg_out_o_sevenseg_obuf_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx59584z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43845z1);

ix60581z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60581z1 = \u_kirsch|u_flow|o_row_0_\ & (\u_kirsch|u_flow|o_row_1_\ $ !\u_kirsch|u_flow|o_row_2_\) # !\u_kirsch|u_flow|o_row_0_\ & (\u_kirsch|u_flow|o_row_3_\ & \u_kirsch|u_flow|o_row_1_\ & !\u_kirsch|u_flow|o_row_2_\ # !\u_kirsch|u_flow|o_row_3_\ & 
-- !\u_kirsch|u_flow|o_row_1_\ & \u_kirsch|u_flow|o_row_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx60581z1);

\reg_out_o_sevenseg_obuf_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx60581z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44842z1);

ix61578z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61578z1 = \u_kirsch|u_flow|o_row_3_\ & \u_kirsch|u_flow|o_row_2_\ & (\u_kirsch|u_flow|o_row_1_\ # !\u_kirsch|u_flow|o_row_0_\) # !\u_kirsch|u_flow|o_row_3_\ & !\u_kirsch|u_flow|o_row_0_\ & \u_kirsch|u_flow|o_row_1_\ & !\u_kirsch|u_flow|o_row_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx61578z1);

\reg_out_o_sevenseg_obuf_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx61578z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45839z1);

ix62575z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62575z1 = \u_kirsch|u_flow|o_row_3_\ & (\u_kirsch|u_flow|o_row_0_\ & \u_kirsch|u_flow|o_row_1_\ # !\u_kirsch|u_flow|o_row_0_\ & (\u_kirsch|u_flow|o_row_2_\)) # !\u_kirsch|u_flow|o_row_3_\ & \u_kirsch|u_flow|o_row_2_\ & (\u_kirsch|u_flow|o_row_0_\ $ 
-- \u_kirsch|u_flow|o_row_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx62575z1);

\reg_out_o_sevenseg_obuf_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx62575z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46836z1);

ix63572z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx63572z1 = \u_kirsch|u_flow|o_row_3_\ & \u_kirsch|u_flow|o_row_0_\ & (\u_kirsch|u_flow|o_row_1_\ $ \u_kirsch|u_flow|o_row_2_\) # !\u_kirsch|u_flow|o_row_3_\ & !\u_kirsch|u_flow|o_row_1_\ & (\u_kirsch|u_flow|o_row_0_\ $ \u_kirsch|u_flow|o_row_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_3_\,
	datab => \u_kirsch|u_flow|o_row_0_\,
	datac => \u_kirsch|u_flow|o_row_1_\,
	datad => \u_kirsch|u_flow|o_row_2_\,
	combout => nx63572z1);

\reg_out_o_sevenseg_obuf_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx63572z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47833z1);

\u_kirsch|u_memory|o_row_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_6_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_row|nx58250z3\,
	combout => \u_kirsch|u_memory|o_row_6_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_6_\);

\u_kirsch|f_i_row_next_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_6_~feeder_combout\ = \u_kirsch|u_memory|o_row_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_row_6_\,
	combout => \u_kirsch|f_i_row_next_6_~feeder_combout\);

\u_kirsch|reg_f_i_row_next_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_6_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_6_\);

\u_kirsch|ix20836z52991\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_6_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_row_6_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_row_next_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i_row_next_6_\,
	datac => \u_kirsch|u_memory|o_row_6_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_i_row_6_\);

\u_kirsch|u_flow|ix258_reg_p2r_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx16808z1\);

\u_kirsch|u_flow|nx21943z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx21943z1~feeder_combout\ = \u_kirsch|u_flow|nx16808z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx16808z1\,
	combout => \u_kirsch|u_flow|nx21943z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p3r_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx21943z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx21943z1\);

\u_kirsch|u_flow|nx27078z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx27078z1~feeder_combout\ = \u_kirsch|u_flow|nx21943z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx21943z1\,
	combout => \u_kirsch|u_flow|nx27078z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx27078z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx27078z1\);

\u_kirsch|u_flow|o_row_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_row_6_~feeder_combout\ = \u_kirsch|u_flow|nx27078z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx27078z1\,
	combout => \u_kirsch|u_flow|o_row_6_~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p5r_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_row_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_6_\);

\u_kirsch|u_memory|o_row_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_5_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_row|nx58250z5\,
	combout => \u_kirsch|u_memory|o_row_5_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_5_\);

\u_kirsch|f_i_row_next_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_5_~feeder_combout\ = \u_kirsch|u_memory|o_row_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_row_5_\,
	combout => \u_kirsch|f_i_row_next_5_~feeder_combout\);

\u_kirsch|reg_f_i_row_next_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_5_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_5_\);

\u_kirsch|ix20836z52992\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_5_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_row_5_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_row_next_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i_row_next_5_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|u_memory|o_row_5_\,
	combout => \u_kirsch|f_i_row_5_\);

\u_kirsch|u_flow|ix258_reg_p2r_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx17805z1\);

\u_kirsch|u_flow|nx22940z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx22940z1~feeder_combout\ = \u_kirsch|u_flow|nx17805z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx17805z1\,
	combout => \u_kirsch|u_flow|nx22940z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p3r_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx22940z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx22940z1\);

\u_kirsch|u_flow|nx28075z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx28075z1~feeder_combout\ = \u_kirsch|u_flow|nx22940z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx22940z1\,
	combout => \u_kirsch|u_flow|nx28075z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx28075z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx28075z1\);

\u_kirsch|u_flow|ix258_reg_p5r_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|nx28075z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_5_\);

\u_kirsch|u_memory|o_row_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_7_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx1041z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|modgen_counter_row|nx1041z1\,
	combout => \u_kirsch|u_memory|o_row_7_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_7_\);

\u_kirsch|f_i_row_next_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_7_~feeder_combout\ = \u_kirsch|u_memory|o_row_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|o_row_7_\,
	combout => \u_kirsch|f_i_row_next_7_~feeder_combout\);

\u_kirsch|reg_f_i_row_next_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_7_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_7_\);

\u_kirsch|ix20836z52990\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_7_\ = \u_kirsch|nx57127z2\ & \u_kirsch|u_memory|o_row_7_\ # !\u_kirsch|nx57127z2\ & (\u_kirsch|f_i_row_next_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_memory|o_row_7_\,
	datab => \u_kirsch|f_i_row_next_7_\,
	datad => \u_kirsch|nx57127z2\,
	combout => \u_kirsch|f_i_row_7_\);

\u_kirsch|u_flow|ix258_reg_p2r_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx15811z1\);

\u_kirsch|u_flow|nx20946z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx20946z1~feeder_combout\ = \u_kirsch|u_flow|nx15811z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_flow|nx15811z1\,
	combout => \u_kirsch|u_flow|nx20946z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p3r_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx20946z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx20946z1\);

\u_kirsch|u_flow|nx26081z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx26081z1~feeder_combout\ = \u_kirsch|u_flow|nx20946z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx20946z1\,
	combout => \u_kirsch|u_flow|nx26081z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx26081z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx26081z1\);

\u_kirsch|u_flow|o_row_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_row_7_~feeder_combout\ = \u_kirsch|u_flow|nx26081z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_flow|nx26081z1\,
	combout => \u_kirsch|u_flow|o_row_7_~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p5r_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_row_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_7_\);

ix30z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30z1 = \u_kirsch|u_flow|o_row_4_\ & !\u_kirsch|u_flow|o_row_7_\ & (\u_kirsch|u_flow|o_row_6_\ $ !\u_kirsch|u_flow|o_row_5_\) # !\u_kirsch|u_flow|o_row_4_\ & !\u_kirsch|u_flow|o_row_5_\ & (\u_kirsch|u_flow|o_row_6_\ $ !\u_kirsch|u_flow|o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_4_\,
	datab => \u_kirsch|u_flow|o_row_6_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_7_\,
	combout => nx30z1);

\reg_out_o_sevenseg_obuf_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx30z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx49827z1);

\u_kirsch|u_memory|o_row_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_row_4_~feeder_combout\ = \u_kirsch|u_memory|modgen_counter_row|nx58250z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|modgen_counter_row|nx58250z7\,
	combout => \u_kirsch|u_memory|o_row_4_~feeder_combout\);

\u_kirsch|u_memory|reg_o_row_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_row_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|o_row_4_\);

\u_kirsch|f_i_row_next_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_next_4_~feeder_combout\ = \u_kirsch|u_memory|o_row_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|o_row_4_\,
	combout => \u_kirsch|f_i_row_next_4_~feeder_combout\);

\u_kirsch|reg_f_i_row_next_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_next_4_~feeder_combout\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_row_next_4_\);

\u_kirsch|ix20836z52993\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_row_4_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_row_4_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_row_next_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_i_row_next_4_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \u_kirsch|u_memory|o_row_4_\,
	combout => \u_kirsch|f_i_row_4_\);

\u_kirsch|u_flow|ix258_reg_p2r_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_row_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx18802z1\);

\u_kirsch|u_flow|ix258_reg_p3r_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|nx18802z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx23937z1\);

\u_kirsch|u_flow|nx29072z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx29072z1~feeder_combout\ = \u_kirsch|u_flow|nx23937z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx23937z1\,
	combout => \u_kirsch|u_flow|nx29072z1~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p4r_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx29072z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx29072z1\);

\u_kirsch|u_flow|o_row_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|o_row_4_~feeder_combout\ = \u_kirsch|u_flow|nx29072z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx29072z1\,
	combout => \u_kirsch|u_flow|o_row_4_~feeder_combout\);

\u_kirsch|u_flow|ix258_reg_p5r_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|o_row_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|o_row_4_\);

ix1027z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx1027z1 = \u_kirsch|u_flow|o_row_4_\ & (\u_kirsch|u_flow|o_row_7_\ $ (\u_kirsch|u_flow|o_row_5_\ # !\u_kirsch|u_flow|o_row_6_\)) # !\u_kirsch|u_flow|o_row_4_\ & !\u_kirsch|u_flow|o_row_7_\ & \u_kirsch|u_flow|o_row_5_\ & !\u_kirsch|u_flow|o_row_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_7_\,
	datab => \u_kirsch|u_flow|o_row_4_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_6_\,
	combout => nx1027z1);

\reg_out_o_sevenseg_obuf_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx1027z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx50824z1);

ix25683z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25683z1 = \u_kirsch|u_flow|o_row_5_\ & !\u_kirsch|u_flow|o_row_7_\ & \u_kirsch|u_flow|o_row_4_\ # !\u_kirsch|u_flow|o_row_5_\ & (\u_kirsch|u_flow|o_row_6_\ & !\u_kirsch|u_flow|o_row_7_\ # !\u_kirsch|u_flow|o_row_6_\ & (\u_kirsch|u_flow|o_row_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_7_\,
	datab => \u_kirsch|u_flow|o_row_4_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_6_\,
	combout => nx25683z1);

\reg_out_o_sevenseg_obuf_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx25683z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62540z1);

ix26680z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26680z1 = \u_kirsch|u_flow|o_row_4_\ & (\u_kirsch|u_flow|o_row_5_\ $ !\u_kirsch|u_flow|o_row_6_\) # !\u_kirsch|u_flow|o_row_4_\ & (\u_kirsch|u_flow|o_row_7_\ & \u_kirsch|u_flow|o_row_5_\ & !\u_kirsch|u_flow|o_row_6_\ # !\u_kirsch|u_flow|o_row_7_\ & 
-- !\u_kirsch|u_flow|o_row_5_\ & \u_kirsch|u_flow|o_row_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_7_\,
	datab => \u_kirsch|u_flow|o_row_4_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_6_\,
	combout => nx26680z1);

\reg_out_o_sevenseg_obuf_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx26680z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63537z1);

ix27677z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27677z1 = \u_kirsch|u_flow|o_row_7_\ & \u_kirsch|u_flow|o_row_6_\ & (\u_kirsch|u_flow|o_row_5_\ # !\u_kirsch|u_flow|o_row_4_\) # !\u_kirsch|u_flow|o_row_7_\ & !\u_kirsch|u_flow|o_row_4_\ & \u_kirsch|u_flow|o_row_5_\ & !\u_kirsch|u_flow|o_row_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_7_\,
	datab => \u_kirsch|u_flow|o_row_4_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_6_\,
	combout => nx27677z1);

\reg_out_o_sevenseg_obuf_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx27677z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64534z1);

ix28674z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28674z1 = \u_kirsch|u_flow|o_row_7_\ & (\u_kirsch|u_flow|o_row_4_\ & \u_kirsch|u_flow|o_row_5_\ # !\u_kirsch|u_flow|o_row_4_\ & (\u_kirsch|u_flow|o_row_6_\)) # !\u_kirsch|u_flow|o_row_7_\ & \u_kirsch|u_flow|o_row_6_\ & (\u_kirsch|u_flow|o_row_4_\ $ 
-- \u_kirsch|u_flow|o_row_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_7_\,
	datab => \u_kirsch|u_flow|o_row_4_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_6_\,
	combout => nx28674z1);

\reg_out_o_sevenseg_obuf_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx28674z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx65531z1);

ix29671z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx29671z1 = \u_kirsch|u_flow|o_row_7_\ & \u_kirsch|u_flow|o_row_4_\ & (\u_kirsch|u_flow|o_row_5_\ $ \u_kirsch|u_flow|o_row_6_\) # !\u_kirsch|u_flow|o_row_7_\ & !\u_kirsch|u_flow|o_row_5_\ & (\u_kirsch|u_flow|o_row_4_\ $ \u_kirsch|u_flow|o_row_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|o_row_7_\,
	datab => \u_kirsch|u_flow|o_row_4_\,
	datac => \u_kirsch|u_flow|o_row_5_\,
	datad => \u_kirsch|u_flow|o_row_6_\,
	combout => nx29671z1);

\reg_out_o_sevenseg_obuf_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx29671z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx992z1);

\u_kirsch|u_memory|ix33254z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|nx33254z1\ = \u_kirsch|u_memory|busySignal\ # \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|u_memory|busySignal\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|u_memory|nx33254z1\);

\u_kirsch|u_memory|reg_busySignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|nx33254z1\,
	sclr => \u_kirsch|u_memory|nx8852z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|busySignal\);

\u_kirsch|u_memory|busySignalDelayed~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|busySignalDelayed~feeder_combout\ = \u_kirsch|u_memory|busySignal\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_memory|busySignal\,
	combout => \u_kirsch|u_memory|busySignalDelayed~feeder_combout\);

\u_kirsch|u_memory|reg_busySignalDelayed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|busySignalDelayed~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_memory|busySignalDelayed\);

\u_kirsch|u_memory|ix15976z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_memory|o_mode_0_\ = \u_uw_uart|o_pixavail\ # \u_kirsch|u_memory|busySignal\ # \u_kirsch|u_memory|busySignalDelayed\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|u_memory|busySignal\,
	datac => \u_kirsch|u_memory|busySignalDelayed\,
	datad => \nrst~combout\,
	combout => \u_kirsch|u_memory|o_mode_0_\);

\u_kirsch|reg_f_i_mode_next_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_memory|o_mode_0_\,
	ena => \u_kirsch|nx35105z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_i_mode_next_0_\);

\u_kirsch|ix20836z52989\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_mode_0_\ = \u_kirsch|nx57127z2\ & (\u_kirsch|u_memory|o_mode_0_\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_mode_next_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx57127z2\,
	datac => \u_kirsch|f_i_mode_next_0_\,
	datad => \u_kirsch|u_memory|o_mode_0_\,
	combout => \u_kirsch|f_i_mode_0_\);

\u_kirsch|u_flow|ix259_reg_p2m_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_mode_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx42010z1\);

\u_kirsch|u_flow|nx47145z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx47145z1~feeder_combout\ = \u_kirsch|u_flow|nx42010z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx42010z1\,
	combout => \u_kirsch|u_flow|nx47145z1~feeder_combout\);

\u_kirsch|u_flow|ix259_reg_p3m_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx47145z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx47145z1\);

\u_kirsch|u_flow|nx13256z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx13256z1~feeder_combout\ = \u_kirsch|u_flow|nx47145z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx47145z1\,
	combout => \u_kirsch|u_flow|nx13256z1~feeder_combout\);

\u_kirsch|u_flow|ix259_reg_p4m_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx13256z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx13256z1\);

\u_kirsch|u_flow|p5m_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|p5m_0_~feeder_combout\ = \u_kirsch|u_flow|nx13256z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx13256z1\,
	combout => \u_kirsch|u_flow|p5m_0_~feeder_combout\);

\u_kirsch|u_flow|ix259_reg_p5m_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|p5m_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p5m_0_\);

\u_kirsch|ix20836z52988\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_i_mode_1_\ = \u_kirsch|nx57127z2\ & (\nrst~combout\) # !\u_kirsch|nx57127z2\ & \u_kirsch|f_i_mode_next_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_i_mode_next_1_\,
	datac => \u_kirsch|nx57127z2\,
	datad => \nrst~combout\,
	combout => \u_kirsch|f_i_mode_1_\);

\u_kirsch|u_flow|ix259_reg_p2m_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_i_mode_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx41013z1\);

\u_kirsch|u_flow|nx46148z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx46148z1~feeder_combout\ = \u_kirsch|u_flow|nx41013z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx41013z1\,
	combout => \u_kirsch|u_flow|nx46148z1~feeder_combout\);

\u_kirsch|u_flow|ix259_reg_p3m_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx46148z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx46148z1\);

\u_kirsch|u_flow|nx14253z1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|u_flow|nx14253z1~feeder_combout\ = \u_kirsch|u_flow|nx46148z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|u_flow|nx46148z1\,
	combout => \u_kirsch|u_flow|nx14253z1~feeder_combout\);

\u_kirsch|u_flow|ix259_reg_p4m_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|u_flow|nx14253z1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|nx14253z1\);

\u_kirsch|u_flow|ix259_reg_p5m_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|u_flow|nx14253z1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|u_flow|p5m_1_\);

\u_kirsch|ix15976z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_mode_0_\ = \u_kirsch|u_memory|o_mode_0_\ # \u_kirsch|u_flow|p5m_0_\ & \u_kirsch|u_flow|p5m_1_\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|u_flow|p5m_0_\,
	datab => \u_kirsch|u_memory|o_mode_0_\,
	datac => \u_kirsch|u_flow|p5m_1_\,
	datad => \nrst~combout\,
	combout => \u_kirsch|o_mode_0_\);

ix21351z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_nx21351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txflex);

ix41851z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx41851z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(0));

ix42848z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx42848z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(1));

ix43845z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx43845z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(2));

ix44842z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx44842z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(3));

ix45839z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx45839z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(4));

ix46836z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx46836z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(5));

ix47833z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx47833z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(6));

\o_sevenseg_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(7));

ix49827z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx49827z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(8));

ix50824z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx50824z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(9));

ix62540z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx62540z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(10));

ix63537z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx63537z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(11));

ix64534z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx64534z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(12));

ix65531z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx65531z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(13));

ix992z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx992z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(14));

\o_sevenseg_obuf_15_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(15));

\o_mode_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_kirsch|o_mode_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

\o_mode_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

o_nrst_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_nrst);

\debug_led_red_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(0));

\debug_led_red_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(1));

\debug_led_red_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(2));

\debug_led_red_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(3));

\debug_led_red_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(4));

\debug_led_red_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(5));

\debug_led_red_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(6));

\debug_led_red_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(7));

\debug_led_red_obuf_8_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(8));

\debug_led_red_obuf_9_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(9));

\debug_led_red_obuf_10_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(10));

\debug_led_red_obuf_11_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(11));

\debug_led_red_obuf_12_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(12));

\debug_led_red_obuf_13_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(13));

\debug_led_red_obuf_14_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(14));

\debug_led_red_obuf_15_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(15));

\debug_led_red_obuf_16_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(16));

\debug_led_grn_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(0));

\debug_led_grn_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(1));

\debug_led_grn_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(2));

\debug_led_grn_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(3));

\debug_led_grn_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(4));

\debug_led_grn_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(5));

\debug_sevenseg_0_triBus3_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_0(0));

\debug_sevenseg_0_triBus3_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_0(1));

\debug_sevenseg_0_triBus3_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_0(2));

\debug_sevenseg_0_triBus3_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_0(3));

\debug_sevenseg_1_triBus4_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_1(0));

\debug_sevenseg_1_triBus4_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_1(1));

\debug_sevenseg_1_triBus4_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_1(2));

\debug_sevenseg_1_triBus4_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_1(3));

\debug_sevenseg_2_triBus5_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_2(0));

\debug_sevenseg_2_triBus5_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_2(1));

\debug_sevenseg_2_triBus5_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_2(2));

\debug_sevenseg_2_triBus5_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_2(3));

\debug_sevenseg_3_triBus6_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_3(0));

\debug_sevenseg_3_triBus6_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_3(1));

\debug_sevenseg_3_triBus6_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_3(2));

\debug_sevenseg_3_triBus6_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_3(3));

\debug_sevenseg_4_triBus7_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_4(0));

\debug_sevenseg_4_triBus7_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_4(1));

\debug_sevenseg_4_triBus7_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_4(2));

\debug_sevenseg_4_triBus7_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_4(3));

\debug_sevenseg_5_triBus8_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_5(0));

\debug_sevenseg_5_triBus8_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_5(1));

\debug_sevenseg_5_triBus8_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_5(2));

\debug_sevenseg_5_triBus8_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_sevenseg_5(3));

\debug_key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(1));

\debug_key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(2));

\debug_key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(3));

\debug_switch[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(0));

\debug_switch[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(1));

\debug_switch[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(2));

\debug_switch[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(3));

\debug_switch[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(4));

\debug_switch[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(5));

\debug_switch[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(6));

\debug_switch[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(7));

\debug_switch[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(8));

\debug_switch[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(9));

\debug_switch[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(10));

\debug_switch[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(11));

\debug_switch[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(12));

\debug_switch[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(13));

\debug_switch[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(14));

\debug_switch[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(15));

\debug_switch[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(16));

\debug_switch[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(17));
END structure;


