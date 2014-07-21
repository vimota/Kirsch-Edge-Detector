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

-- DATE "07/21/2014 14:17:11"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	memory_chip IS
    PORT (
	i_valid : IN std_logic;
	i_reset : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	i_clock : IN std_logic;
	o_valid : OUT std_logic;
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_column : OUT std_logic_vector(7 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	o_image0_0_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image0_1_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image0_2_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image1_0_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image1_1_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image1_2_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image2_0_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image2_1_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image2_2_a : OUT std_logic_vector(7 DOWNTO 0)
	);
END memory_chip;

ARCHITECTURE structure OF memory_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_column : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image0_0_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image0_1_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image0_2_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image1_0_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image1_1_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image1_2_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image2_0_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image2_1_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_image2_2_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL nx60567z6 : std_logic;
SIGNAL nx8852z7 : std_logic;
SIGNAL mem_wrn_1_a : std_logic;
SIGNAL mem_wrn_2_a : std_logic;
SIGNAL mem_wrn_0_a : std_logic;
SIGNAL nx16760z1 : std_logic;
SIGNAL nx15763z2 : std_logic;
SIGNAL nx15763z4 : std_logic;
SIGNAL nx15763z3 : std_logic;
SIGNAL mem_wrn_0_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL modgen_counter_column_anx58250z14 : std_logic;
SIGNAL modgen_counter_column_anx52268z1 : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL first_bubble : std_logic;
SIGNAL modgen_counter_row_anx51271z1 : std_logic;
SIGNAL nx8852z1 : std_logic;
SIGNAL modgen_counter_column_anx57253z1 : std_logic;
SIGNAL modgen_counter_column_anx57253z3 : std_logic;
SIGNAL modgen_counter_column_anx58250z3 : std_logic;
SIGNAL modgen_counter_column_anx56256z1 : std_logic;
SIGNAL modgen_counter_column_anx58250z5 : std_logic;
SIGNAL nx8852z4 : std_logic;
SIGNAL modgen_counter_column_anx53265z1 : std_logic;
SIGNAL modgen_counter_column_anx58250z11 : std_logic;
SIGNAL nx8852z5 : std_logic;
SIGNAL nx8852z3 : std_logic;
SIGNAL not_rtlc3_X_0_n252 : std_logic;
SIGNAL modgen_counter_row_anx57253z3 : std_logic;
SIGNAL modgen_counter_row_anx58250z15 : std_logic;
SIGNAL modgen_counter_row_anx58250z14 : std_logic;
SIGNAL modgen_counter_row_anx52268z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z13 : std_logic;
SIGNAL modgen_counter_row_anx58250z12 : std_logic;
SIGNAL modgen_counter_row_anx53265z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z11 : std_logic;
SIGNAL modgen_counter_row_anx58250z10 : std_logic;
SIGNAL modgen_counter_row_anx58250z8 : std_logic;
SIGNAL modgen_counter_row_anx55259z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z7 : std_logic;
SIGNAL modgen_counter_row_anx58250z6 : std_logic;
SIGNAL modgen_counter_row_anx58250z4 : std_logic;
SIGNAL modgen_counter_row_anx57253z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z3 : std_logic;
SIGNAL modgen_counter_row_anx56256z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z5 : std_logic;
SIGNAL nx8852z6 : std_logic;
SIGNAL nx8852z2 : std_logic;
SIGNAL nx47386z1 : std_logic;
SIGNAL modgen_counter_column_anx58250z13 : std_logic;
SIGNAL modgen_counter_column_anx58250z12 : std_logic;
SIGNAL modgen_counter_column_anx58250z10 : std_logic;
SIGNAL modgen_counter_column_anx54262z1 : std_logic;
SIGNAL modgen_counter_column_anx58250z9 : std_logic;
SIGNAL modgen_counter_column_anx58250z8 : std_logic;
SIGNAL modgen_counter_column_anx58250z6 : std_logic;
SIGNAL modgen_counter_column_anx58250z4 : std_logic;
SIGNAL modgen_counter_column_anx58250z2 : std_logic;
SIGNAL modgen_counter_column_anx58250z1 : std_logic;
SIGNAL modgen_counter_column_anx1041z1 : std_logic;
SIGNAL modgen_counter_row_anx54262z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z9 : std_logic;
SIGNAL nx60567z3 : std_logic;
SIGNAL nx60567z2 : std_logic;
SIGNAL nx60567z4 : std_logic;
SIGNAL modgen_counter_column_anx55259z1 : std_logic;
SIGNAL modgen_counter_column_anx58250z7 : std_logic;
SIGNAL nx60567z5 : std_logic;
SIGNAL nx60567z1 : std_logic;
SIGNAL o_valid_dup0 : std_logic;
SIGNAL nx33254z1 : std_logic;
SIGNAL busySignal : std_logic;
SIGNAL busySignalDelayed : std_logic;
SIGNAL o_mode_dup0_0_a : std_logic;
SIGNAL modgen_counter_column_anx51271z1 : std_logic;
SIGNAL modgen_counter_column_anx58250z15 : std_logic;
SIGNAL nx4657z1 : std_logic;
SIGNAL nx5654z1_afeeder_combout : std_logic;
SIGNAL nx5654z1 : std_logic;
SIGNAL nx6651z1_afeeder_combout : std_logic;
SIGNAL nx6651z1 : std_logic;
SIGNAL nx7648z1_afeeder_combout : std_logic;
SIGNAL nx7648z1 : std_logic;
SIGNAL nx8645z1_afeeder_combout : std_logic;
SIGNAL nx8645z1 : std_logic;
SIGNAL nx9642z1_afeeder_combout : std_logic;
SIGNAL nx9642z1 : std_logic;
SIGNAL nx10639z1 : std_logic;
SIGNAL nx11636z1_afeeder_combout : std_logic;
SIGNAL nx11636z1 : std_logic;
SIGNAL nx16335z1_afeeder_combout : std_logic;
SIGNAL nx16335z1 : std_logic;
SIGNAL nx17332z1_afeeder_combout : std_logic;
SIGNAL nx17332z1 : std_logic;
SIGNAL nx18329z1_afeeder_combout : std_logic;
SIGNAL nx18329z1 : std_logic;
SIGNAL nx19326z1_afeeder_combout : std_logic;
SIGNAL nx19326z1 : std_logic;
SIGNAL nx20323z1_afeeder_combout : std_logic;
SIGNAL nx20323z1 : std_logic;
SIGNAL nx21320z1_afeeder_combout : std_logic;
SIGNAL nx21320z1 : std_logic;
SIGNAL nx22317z1_afeeder_combout : std_logic;
SIGNAL nx22317z1 : std_logic;
SIGNAL modgen_counter_row_anx58250z2 : std_logic;
SIGNAL modgen_counter_row_anx58250z1 : std_logic;
SIGNAL modgen_counter_row_anx1041z1 : std_logic;
SIGNAL nx23314z1_afeeder_combout : std_logic;
SIGNAL nx23314z1 : std_logic;
SIGNAL mem_wrn_current_0_afeeder_combout : std_logic;
SIGNAL nx41103z3 : std_logic;
SIGNAL nx41103z4 : std_logic;
SIGNAL nx41103z2 : std_logic;
SIGNAL nx41103z1 : std_logic;
SIGNAL mem_wrn_current_1_a : std_logic;
SIGNAL mem_wrn_current_2_a : std_logic;
SIGNAL nx39109z3 : std_logic;
SIGNAL nx39109z2 : std_logic;
SIGNAL mem_wrn_current_0_a : std_logic;
SIGNAL nx63578z3 : std_logic;
SIGNAL buffer2_4n2ss1_0_a : std_logic;
SIGNAL nx5021z2 : std_logic;
SIGNAL nx5021z1 : std_logic;
SIGNAL o_image2_0_dup0_0_a : std_logic;
SIGNAL o_image1_0_dup0_0_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_0_a : std_logic;
SIGNAL nx59473z1_afeeder_combout : std_logic;
SIGNAL nx59473z1 : std_logic;
SIGNAL nx63578z4 : std_logic;
SIGNAL buffer2_4n2ss1_1_a : std_logic;
SIGNAL nx4024z2 : std_logic;
SIGNAL nx4024z1 : std_logic;
SIGNAL o_image2_0_dup0_1_a : std_logic;
SIGNAL o_image1_0_dup0_1_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_1_a : std_logic;
SIGNAL nx58476z1_afeeder_combout : std_logic;
SIGNAL nx58476z1 : std_logic;
SIGNAL buffer2_4n2ss1_2_a : std_logic;
SIGNAL nx3027z2 : std_logic;
SIGNAL nx3027z1 : std_logic;
SIGNAL o_image2_0_dup0_2_a : std_logic;
SIGNAL o_image1_0_dup0_2_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_2_a : std_logic;
SIGNAL nx57479z1_afeeder_combout : std_logic;
SIGNAL nx57479z1 : std_logic;
SIGNAL buffer2_4n2ss1_3_a : std_logic;
SIGNAL nx2030z2 : std_logic;
SIGNAL nx2030z1 : std_logic;
SIGNAL o_image2_0_dup0_3_a : std_logic;
SIGNAL o_image1_0_dup0_3_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_3_a : std_logic;
SIGNAL nx56482z1_afeeder_combout : std_logic;
SIGNAL nx56482z1 : std_logic;
SIGNAL buffer2_4n2ss1_4_a : std_logic;
SIGNAL nx1033z2 : std_logic;
SIGNAL nx1033z1 : std_logic;
SIGNAL o_image2_0_dup0_4_a : std_logic;
SIGNAL o_image1_0_dup0_4_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_4_a : std_logic;
SIGNAL nx55485z1_afeeder_combout : std_logic;
SIGNAL nx55485z1 : std_logic;
SIGNAL buffer2_4n2ss1_5_a : std_logic;
SIGNAL nx36z2 : std_logic;
SIGNAL nx36z1 : std_logic;
SIGNAL o_image2_0_dup0_5_a : std_logic;
SIGNAL o_image1_0_dup0_5_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_5_a : std_logic;
SIGNAL nx54488z1_afeeder_combout : std_logic;
SIGNAL nx54488z1 : std_logic;
SIGNAL buffer2_4n2ss1_6_a : std_logic;
SIGNAL nx64575z2 : std_logic;
SIGNAL nx64575z1 : std_logic;
SIGNAL o_image2_0_dup0_6_a : std_logic;
SIGNAL o_image1_0_dup0_6_a : std_logic;
SIGNAL nx53491z1_afeeder_combout : std_logic;
SIGNAL nx53491z1 : std_logic;
SIGNAL buffer2_4n2ss1_7_a : std_logic;
SIGNAL nx63578z2 : std_logic;
SIGNAL nx63578z1 : std_logic;
SIGNAL o_image2_0_dup0_7_a : std_logic;
SIGNAL o_image1_0_dup0_7_afeeder_combout : std_logic;
SIGNAL o_image1_0_dup0_7_a : std_logic;
SIGNAL nx52494z1 : std_logic;
SIGNAL nx62359z4 : std_logic;
SIGNAL nx62359z3 : std_logic;
SIGNAL nx55380z2 : std_logic;
SIGNAL nx55380z1 : std_logic;
SIGNAL o_image2_1_dup0_0_a : std_logic;
SIGNAL o_image1_1_dup0_0_afeeder_combout : std_logic;
SIGNAL o_image1_1_dup0_0_a : std_logic;
SIGNAL nx64608z1_afeeder_combout : std_logic;
SIGNAL nx64608z1 : std_logic;
SIGNAL nx56377z2 : std_logic;
SIGNAL nx56377z1 : std_logic;
SIGNAL o_image2_1_dup0_1_a : std_logic;
SIGNAL o_image1_1_dup0_1_afeeder_combout : std_logic;
SIGNAL o_image1_1_dup0_1_a : std_logic;
SIGNAL nx63611z1 : std_logic;
SIGNAL nx57374z2 : std_logic;
SIGNAL nx57374z1 : std_logic;
SIGNAL o_image2_1_dup0_2_a : std_logic;
SIGNAL o_image1_1_dup0_2_afeeder_combout : std_logic;
SIGNAL o_image1_1_dup0_2_a : std_logic;
SIGNAL nx62614z1_afeeder_combout : std_logic;
SIGNAL nx62614z1 : std_logic;
SIGNAL nx58371z2 : std_logic;
SIGNAL nx58371z1 : std_logic;
SIGNAL o_image2_1_dup0_3_a : std_logic;
SIGNAL o_image1_1_dup0_3_afeeder_combout : std_logic;
SIGNAL o_image1_1_dup0_3_a : std_logic;
SIGNAL nx61617z1_afeeder_combout : std_logic;
SIGNAL nx61617z1 : std_logic;
SIGNAL nx59368z2 : std_logic;
SIGNAL nx59368z1 : std_logic;
SIGNAL o_image2_1_dup0_4_a : std_logic;
SIGNAL o_image1_1_dup0_4_a : std_logic;
SIGNAL nx60620z1_afeeder_combout : std_logic;
SIGNAL nx60620z1 : std_logic;
SIGNAL nx60365z2 : std_logic;
SIGNAL nx60365z1 : std_logic;
SIGNAL o_image2_1_dup0_5_a : std_logic;
SIGNAL o_image1_1_dup0_5_a : std_logic;
SIGNAL nx59623z1 : std_logic;
SIGNAL nx61362z2 : std_logic;
SIGNAL nx61362z1 : std_logic;
SIGNAL o_image2_1_dup0_6_a : std_logic;
SIGNAL o_image1_1_dup0_6_afeeder_combout : std_logic;
SIGNAL o_image1_1_dup0_6_a : std_logic;
SIGNAL nx58626z1_afeeder_combout : std_logic;
SIGNAL nx58626z1 : std_logic;
SIGNAL nx62359z2 : std_logic;
SIGNAL nx62359z1 : std_logic;
SIGNAL o_image2_1_dup0_7_a : std_logic;
SIGNAL o_image1_1_dup0_7_afeeder_combout : std_logic;
SIGNAL o_image1_1_dup0_7_a : std_logic;
SIGNAL nx57629z1_afeeder_combout : std_logic;
SIGNAL nx57629z1 : std_logic;
SIGNAL nx50245z1 : std_logic;
SIGNAL o_image2_2_dup0_0_a : std_logic;
SIGNAL o_image1_2_dup0_0_afeeder_combout : std_logic;
SIGNAL o_image1_2_dup0_0_a : std_logic;
SIGNAL nx4207z1 : std_logic;
SIGNAL nx51242z1 : std_logic;
SIGNAL o_image2_2_dup0_1_a : std_logic;
SIGNAL o_image1_2_dup0_1_afeeder_combout : std_logic;
SIGNAL o_image1_2_dup0_1_a : std_logic;
SIGNAL nx3210z1 : std_logic;
SIGNAL nx52239z1 : std_logic;
SIGNAL o_image2_2_dup0_2_a : std_logic;
SIGNAL o_image1_2_dup0_2_afeeder_combout : std_logic;
SIGNAL o_image1_2_dup0_2_a : std_logic;
SIGNAL nx2213z1_afeeder_combout : std_logic;
SIGNAL nx2213z1 : std_logic;
SIGNAL nx53236z1 : std_logic;
SIGNAL o_image2_2_dup0_3_a : std_logic;
SIGNAL o_image1_2_dup0_3_a : std_logic;
SIGNAL nx1216z1 : std_logic;
SIGNAL nx54233z1 : std_logic;
SIGNAL o_image2_2_dup0_4_a : std_logic;
SIGNAL o_image1_2_dup0_4_afeeder_combout : std_logic;
SIGNAL o_image1_2_dup0_4_a : std_logic;
SIGNAL nx219z1 : std_logic;
SIGNAL nx55230z1 : std_logic;
SIGNAL o_image2_2_dup0_5_a : std_logic;
SIGNAL o_image1_2_dup0_5_a : std_logic;
SIGNAL nx64758z1_afeeder_combout : std_logic;
SIGNAL nx64758z1 : std_logic;
SIGNAL nx56227z1 : std_logic;
SIGNAL o_image2_2_dup0_6_a : std_logic;
SIGNAL o_image1_2_dup0_6_afeeder_combout : std_logic;
SIGNAL o_image1_2_dup0_6_a : std_logic;
SIGNAL nx63761z1_afeeder_combout : std_logic;
SIGNAL nx63761z1 : std_logic;
SIGNAL nx57224z1 : std_logic;
SIGNAL o_image2_2_dup0_7_a : std_logic;
SIGNAL o_image1_2_dup0_7_a : std_logic;
SIGNAL nx62764z1_afeeder_combout : std_logic;
SIGNAL nx62764z1 : std_logic;
SIGNAL nx41208z1_afeeder_combout : std_logic;
SIGNAL nx41208z1 : std_logic;
SIGNAL nx42205z1_afeeder_combout : std_logic;
SIGNAL nx42205z1 : std_logic;
SIGNAL nx43202z1_afeeder_combout : std_logic;
SIGNAL nx43202z1 : std_logic;
SIGNAL nx44199z1_afeeder_combout : std_logic;
SIGNAL nx44199z1 : std_logic;
SIGNAL nx45196z1_afeeder_combout : std_logic;
SIGNAL nx45196z1 : std_logic;
SIGNAL nx46193z1_afeeder_combout : std_logic;
SIGNAL nx46193z1 : std_logic;
SIGNAL nx47190z1 : std_logic;
SIGNAL nx48187z1_afeeder_combout : std_logic;
SIGNAL nx48187z1 : std_logic;
SIGNAL nx36073z1_afeeder_combout : std_logic;
SIGNAL nx36073z1 : std_logic;
SIGNAL nx37070z1_afeeder_combout : std_logic;
SIGNAL nx37070z1 : std_logic;
SIGNAL nx38067z1_afeeder_combout : std_logic;
SIGNAL nx38067z1 : std_logic;
SIGNAL nx39064z1_afeeder_combout : std_logic;
SIGNAL nx39064z1 : std_logic;
SIGNAL nx40061z1 : std_logic;
SIGNAL nx41058z1 : std_logic;
SIGNAL nx42055z1_afeeder_combout : std_logic;
SIGNAL nx42055z1 : std_logic;
SIGNAL nx43052z1_afeeder_combout : std_logic;
SIGNAL nx43052z1 : std_logic;
SIGNAL nx30938z1_afeeder_combout : std_logic;
SIGNAL nx30938z1 : std_logic;
SIGNAL nx31935z1_afeeder_combout : std_logic;
SIGNAL nx31935z1 : std_logic;
SIGNAL nx32932z1_afeeder_combout : std_logic;
SIGNAL nx32932z1 : std_logic;
SIGNAL nx33929z1 : std_logic;
SIGNAL nx34926z1_afeeder_combout : std_logic;
SIGNAL nx34926z1 : std_logic;
SIGNAL nx35923z1 : std_logic;
SIGNAL nx36920z1_afeeder_combout : std_logic;
SIGNAL nx36920z1 : std_logic;
SIGNAL nx37917z1 : std_logic;
SIGNAL u_mem1_mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL i_pixel_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem3_mem_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_mem2_mem_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_i_reset_acombout : std_logic;
SIGNAL ALT_INV_first_bubble : std_logic;

BEGIN

ww_i_valid <= i_valid;
ww_i_reset <= i_reset;
ww_i_pixel <= i_pixel;
ww_i_clock <= i_clock;
o_valid <= ww_o_valid;
o_mode <= ww_o_mode;
o_column <= ww_o_column;
o_row <= ww_o_row;
o_image0_0_a <= ww_o_image0_0_a;
o_image0_1_a <= ww_o_image0_1_a;
o_image0_2_a <= ww_o_image0_2_a;
o_image1_0_a <= ww_o_image1_0_a;
o_image1_1_a <= ww_o_image1_1_a;
o_image1_2_a <= ww_o_image1_2_a;
o_image2_0_a <= ww_o_image2_0_a;
o_image2_1_a <= ww_o_image2_1_a;
o_image2_2_a <= ww_o_image2_2_a;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_column_anx1041z1 & modgen_counter_column_anx58250z3 & modgen_counter_column_anx58250z5 & modgen_counter_column_anx58250z7 & modgen_counter_column_anx58250z9 & 
modgen_counter_column_anx58250z11 & modgen_counter_column_anx58250z13 & modgen_counter_column_anx58250z15);

u_mem2_mem_aix64056z29482_aauto_generated_aq_a(0) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(1) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(2) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(3) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(4) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(5) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(6) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_mem2_mem_aix64056z29482_aauto_generated_aq_a(7) <= u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_column_anx1041z1 & modgen_counter_column_anx58250z3 & modgen_counter_column_anx58250z5 & modgen_counter_column_anx58250z7 & modgen_counter_column_anx58250z9 & 
modgen_counter_column_anx58250z11 & modgen_counter_column_anx58250z13 & modgen_counter_column_anx58250z15);

u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7) <= u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_column_anx1041z1 & modgen_counter_column_anx58250z3 & modgen_counter_column_anx58250z5 & modgen_counter_column_anx58250z7 & modgen_counter_column_anx58250z9 & 
modgen_counter_column_anx58250z11 & modgen_counter_column_anx58250z13 & modgen_counter_column_anx58250z15);

u_mem1_mem_aix64056z29481_aauto_generated_aq_a(0) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(1) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(2) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(3) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(4) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(5) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(6) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_mem1_mem_aix64056z29481_aauto_generated_aq_a(7) <= u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);
ALT_INV_i_reset_acombout <= NOT i_reset_acombout;
ALT_INV_first_bubble <= NOT first_bubble;

ix60567z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx60567z6 = modgen_counter_column_anx58250z9 # modgen_counter_column_anx58250z11 # modgen_counter_column_anx58250z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_column_anx58250z9,
	datac => modgen_counter_column_anx58250z11,
	datad => modgen_counter_column_anx58250z13,
	combout => nx60567z6);

ix8852z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z7 = modgen_counter_row_anx58250z9 & modgen_counter_row_anx58250z15 & modgen_counter_row_anx58250z13 & modgen_counter_row_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx58250z9,
	datab => modgen_counter_row_anx58250z15,
	datac => modgen_counter_row_anx58250z13,
	datad => modgen_counter_row_anx58250z11,
	combout => nx8852z7);

reg_mem_wrn_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => mem_wrn_current_1_a,
	sclr => nx16760z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_wrn_1_a);

reg_mem_wrn_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => mem_wrn_current_2_a,
	sclr => nx16760z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_wrn_2_a);

reg_mem_wrn_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => mem_wrn_0_afeeder_combout,
	sdata => VCC,
	sclr => nx15763z2,
	sload => nx15763z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_wrn_0_a);

ix16760z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx16760z1 = nx41103z2 # i_reset_acombout # nx8852z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41103z2,
	datac => i_reset_acombout,
	datad => nx8852z2,
	combout => nx16760z1);

ix15763z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx15763z2 = nx8852z2 # i_reset_acombout # !i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx8852z2,
	datac => i_valid_acombout,
	datad => i_reset_acombout,
	combout => nx15763z2);

ix15763z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx15763z4 = mem_wrn_current_2_a # mem_wrn_current_1_a # mem_wrn_current_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_wrn_current_2_a,
	datac => mem_wrn_current_1_a,
	datad => mem_wrn_current_0_a,
	combout => nx15763z4);

ix15763z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx15763z3 = i_valid_acombout & !nx8852z2 & !nx15763z4 & !i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx8852z2,
	datac => nx15763z4,
	datad => i_reset_acombout,
	combout => nx15763z3);

mem_wrn_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- mem_wrn_0_afeeder_combout = mem_wrn_current_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_wrn_current_0_a,
	combout => mem_wrn_0_afeeder_combout);

i_clock_ibuf : cycloneii_io
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
	padio => ww_i_clock,
	combout => i_clock_acombout);

i_clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => i_clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_clock_aclkctrl_outclk);

modgen_counter_column_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx51271z1 = modgen_counter_column_anx58250z15 $ VCC
-- modgen_counter_column_anx58250z14 = CARRY(modgen_counter_column_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z15,
	datad => VCC,
	combout => modgen_counter_column_anx51271z1,
	cout => modgen_counter_column_anx58250z14);

modgen_counter_column_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx52268z1 = modgen_counter_column_anx58250z13 & !modgen_counter_column_anx58250z14 # !modgen_counter_column_anx58250z13 & (modgen_counter_column_anx58250z14 # GND)
-- modgen_counter_column_anx58250z12 = CARRY(!modgen_counter_column_anx58250z14 # !modgen_counter_column_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_column_anx58250z13,
	datad => VCC,
	cin => modgen_counter_column_anx58250z14,
	combout => modgen_counter_column_anx52268z1,
	cout => modgen_counter_column_anx58250z12);

i_reset_ibuf : cycloneii_io
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
	padio => ww_i_reset,
	combout => i_reset_acombout);

ix13876z43919 : cycloneii_io
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
	padio => ww_i_valid,
	combout => i_valid_acombout);

reg_in_i_valid_ibuf : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_valid_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => first_bubble);

modgen_counter_row_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx51271z1 = modgen_counter_row_anx58250z15 $ VCC
-- modgen_counter_row_anx58250z14 = CARRY(modgen_counter_row_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_row_anx58250z15,
	datad => VCC,
	combout => modgen_counter_row_anx51271z1,
	cout => modgen_counter_row_anx58250z14);

ix8852z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z1 = i_reset_acombout # nx8852z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_reset_acombout,
	datad => nx8852z2,
	combout => nx8852z1);

modgen_counter_column_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx57253z1 = modgen_counter_column_anx58250z3 & (modgen_counter_column_anx58250z4 $ GND) # !modgen_counter_column_anx58250z3 & !modgen_counter_column_anx58250z4 & VCC
-- modgen_counter_column_anx58250z2 = CARRY(modgen_counter_column_anx58250z3 & !modgen_counter_column_anx58250z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z3,
	datad => VCC,
	cin => modgen_counter_column_anx58250z4,
	combout => modgen_counter_column_anx57253z1,
	cout => modgen_counter_column_anx58250z2);

modgen_counter_column_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx57253z3 = i_valid_acombout & nx8852z1 & (first_bubble # nx47386z1) # !i_valid_acombout & (first_bubble # nx47386z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx8852z1,
	datac => first_bubble,
	datad => nx47386z1,
	combout => modgen_counter_column_anx57253z3);

modgen_counter_column_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx57253z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z3);

modgen_counter_column_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx56256z1 = modgen_counter_column_anx58250z5 & !modgen_counter_column_anx58250z6 # !modgen_counter_column_anx58250z5 & (modgen_counter_column_anx58250z6 # GND)
-- modgen_counter_column_anx58250z4 = CARRY(!modgen_counter_column_anx58250z6 # !modgen_counter_column_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z5,
	datad => VCC,
	cin => modgen_counter_column_anx58250z6,
	combout => modgen_counter_column_anx56256z1,
	cout => modgen_counter_column_anx58250z4);

modgen_counter_column_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx56256z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z5);

ix8852z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z4 = modgen_counter_column_anx58250z7 & modgen_counter_column_anx1041z1 & modgen_counter_column_anx58250z3 & modgen_counter_column_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z7,
	datab => modgen_counter_column_anx1041z1,
	datac => modgen_counter_column_anx58250z3,
	datad => modgen_counter_column_anx58250z5,
	combout => nx8852z4);

modgen_counter_column_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx53265z1 = modgen_counter_column_anx58250z11 & (modgen_counter_column_anx58250z12 $ GND) # !modgen_counter_column_anx58250z11 & !modgen_counter_column_anx58250z12 & VCC
-- modgen_counter_column_anx58250z10 = CARRY(modgen_counter_column_anx58250z11 & !modgen_counter_column_anx58250z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z11,
	datad => VCC,
	cin => modgen_counter_column_anx58250z12,
	combout => modgen_counter_column_anx53265z1,
	cout => modgen_counter_column_anx58250z10);

modgen_counter_column_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx53265z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z11);

ix8852z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z5 = modgen_counter_column_anx58250z11 & modgen_counter_column_anx58250z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_column_anx58250z11,
	datad => modgen_counter_column_anx58250z9,
	combout => nx8852z5);

ix8852z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z3 = modgen_counter_column_anx58250z15 & modgen_counter_column_anx58250z13 & nx8852z4 & nx8852z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z15,
	datab => modgen_counter_column_anx58250z13,
	datac => nx8852z4,
	datad => nx8852z5,
	combout => nx8852z3);

ix8852z52930 : cycloneii_lcell_comb
-- Equation(s):
-- not_rtlc3_X_0_n252 = first_bubble & !i_valid_acombout & nx8852z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first_bubble,
	datac => i_valid_acombout,
	datad => nx8852z3,
	combout => not_rtlc3_X_0_n252);

modgen_counter_row_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx57253z3 = i_reset_acombout # not_rtlc3_X_0_n252 # nx8852z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_reset_acombout,
	datac => not_rtlc3_X_0_n252,
	datad => nx8852z2,
	combout => modgen_counter_row_anx57253z3);

modgen_counter_row_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx51271z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z15);

modgen_counter_row_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx52268z1 = modgen_counter_row_anx58250z13 & !modgen_counter_row_anx58250z14 # !modgen_counter_row_anx58250z13 & (modgen_counter_row_anx58250z14 # GND)
-- modgen_counter_row_anx58250z12 = CARRY(!modgen_counter_row_anx58250z14 # !modgen_counter_row_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_row_anx58250z13,
	datad => VCC,
	cin => modgen_counter_row_anx58250z14,
	combout => modgen_counter_row_anx52268z1,
	cout => modgen_counter_row_anx58250z12);

modgen_counter_row_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx52268z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z13);

modgen_counter_row_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx53265z1 = modgen_counter_row_anx58250z11 & (modgen_counter_row_anx58250z12 $ GND) # !modgen_counter_row_anx58250z11 & !modgen_counter_row_anx58250z12 & VCC
-- modgen_counter_row_anx58250z10 = CARRY(modgen_counter_row_anx58250z11 & !modgen_counter_row_anx58250z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_row_anx58250z11,
	datad => VCC,
	cin => modgen_counter_row_anx58250z12,
	combout => modgen_counter_row_anx53265z1,
	cout => modgen_counter_row_anx58250z10);

modgen_counter_row_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx53265z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z11);

modgen_counter_row_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx54262z1 = modgen_counter_row_anx58250z9 & !modgen_counter_row_anx58250z10 # !modgen_counter_row_anx58250z9 & (modgen_counter_row_anx58250z10 # GND)
-- modgen_counter_row_anx58250z8 = CARRY(!modgen_counter_row_anx58250z10 # !modgen_counter_row_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx58250z9,
	datad => VCC,
	cin => modgen_counter_row_anx58250z10,
	combout => modgen_counter_row_anx54262z1,
	cout => modgen_counter_row_anx58250z8);

modgen_counter_row_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx55259z1 = modgen_counter_row_anx58250z7 & (modgen_counter_row_anx58250z8 $ GND) # !modgen_counter_row_anx58250z7 & !modgen_counter_row_anx58250z8 & VCC
-- modgen_counter_row_anx58250z6 = CARRY(modgen_counter_row_anx58250z7 & !modgen_counter_row_anx58250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_row_anx58250z7,
	datad => VCC,
	cin => modgen_counter_row_anx58250z8,
	combout => modgen_counter_row_anx55259z1,
	cout => modgen_counter_row_anx58250z6);

modgen_counter_row_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx55259z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z7);

modgen_counter_row_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx56256z1 = modgen_counter_row_anx58250z5 & !modgen_counter_row_anx58250z6 # !modgen_counter_row_anx58250z5 & (modgen_counter_row_anx58250z6 # GND)
-- modgen_counter_row_anx58250z4 = CARRY(!modgen_counter_row_anx58250z6 # !modgen_counter_row_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx58250z5,
	datad => VCC,
	cin => modgen_counter_row_anx58250z6,
	combout => modgen_counter_row_anx56256z1,
	cout => modgen_counter_row_anx58250z4);

modgen_counter_row_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx57253z1 = modgen_counter_row_anx58250z3 & (modgen_counter_row_anx58250z4 $ GND) # !modgen_counter_row_anx58250z3 & !modgen_counter_row_anx58250z4 & VCC
-- modgen_counter_row_anx58250z2 = CARRY(modgen_counter_row_anx58250z3 & !modgen_counter_row_anx58250z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx58250z3,
	datad => VCC,
	cin => modgen_counter_row_anx58250z4,
	combout => modgen_counter_row_anx57253z1,
	cout => modgen_counter_row_anx58250z2);

modgen_counter_row_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx57253z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z3);

modgen_counter_row_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx56256z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z5);

ix8852z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z6 = modgen_counter_row_anx1041z1 & modgen_counter_row_anx58250z7 & modgen_counter_row_anx58250z3 & modgen_counter_row_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx1041z1,
	datab => modgen_counter_row_anx58250z7,
	datac => modgen_counter_row_anx58250z3,
	datad => modgen_counter_row_anx58250z5,
	combout => nx8852z6);

ix8852z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx8852z2 = nx8852z7 & nx8852z6 & first_bubble & nx8852z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx8852z7,
	datab => nx8852z6,
	datac => first_bubble,
	datad => nx8852z3,
	combout => nx8852z2);

ix47386z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx47386z1 = i_reset_acombout # nx8852z2 # nx8852z3 & first_bubble

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx8852z3,
	datab => i_reset_acombout,
	datac => first_bubble,
	datad => nx8852z2,
	combout => nx47386z1);

modgen_counter_column_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx52268z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z13);

modgen_counter_column_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx54262z1 = modgen_counter_column_anx58250z9 & !modgen_counter_column_anx58250z10 # !modgen_counter_column_anx58250z9 & (modgen_counter_column_anx58250z10 # GND)
-- modgen_counter_column_anx58250z8 = CARRY(!modgen_counter_column_anx58250z10 # !modgen_counter_column_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_column_anx58250z9,
	datad => VCC,
	cin => modgen_counter_column_anx58250z10,
	combout => modgen_counter_column_anx54262z1,
	cout => modgen_counter_column_anx58250z8);

modgen_counter_column_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx54262z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z9);

modgen_counter_column_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx55259z1 = modgen_counter_column_anx58250z7 & (modgen_counter_column_anx58250z8 $ GND) # !modgen_counter_column_anx58250z7 & !modgen_counter_column_anx58250z8 & VCC
-- modgen_counter_column_anx58250z6 = CARRY(modgen_counter_column_anx58250z7 & !modgen_counter_column_anx58250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z7,
	datad => VCC,
	cin => modgen_counter_column_anx58250z8,
	combout => modgen_counter_column_anx55259z1,
	cout => modgen_counter_column_anx58250z6);

modgen_counter_column_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_column_anx58250z1 = modgen_counter_column_anx58250z2 $ modgen_counter_column_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_column_anx1041z1,
	cin => modgen_counter_column_anx58250z2,
	combout => modgen_counter_column_anx58250z1);

modgen_counter_column_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx58250z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx1041z1);

modgen_counter_row_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx54262z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx58250z9);

ix60567z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx60567z3 = modgen_counter_row_anx58250z11 # modgen_counter_row_anx58250z13 # modgen_counter_row_anx58250z7 # modgen_counter_row_anx58250z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx58250z11,
	datab => modgen_counter_row_anx58250z13,
	datac => modgen_counter_row_anx58250z7,
	datad => modgen_counter_row_anx58250z9,
	combout => nx60567z3);

ix60567z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx60567z2 = modgen_counter_row_anx1041z1 # nx60567z3 # modgen_counter_row_anx58250z3 # modgen_counter_row_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_row_anx1041z1,
	datab => nx60567z3,
	datac => modgen_counter_row_anx58250z3,
	datad => modgen_counter_row_anx58250z5,
	combout => nx60567z2);

ix60567z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx60567z4 = o_valid_dup0 # modgen_counter_column_anx1041z1 & nx60567z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_valid_dup0,
	datab => modgen_counter_column_anx1041z1,
	datac => nx60567z2,
	combout => nx60567z4);

modgen_counter_column_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx55259z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z7);

ix60567z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx60567z5 = nx60567z2 & (modgen_counter_column_anx58250z5 # modgen_counter_column_anx58250z3 # modgen_counter_column_anx58250z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_column_anx58250z5,
	datab => modgen_counter_column_anx58250z3,
	datac => nx60567z2,
	datad => modgen_counter_column_anx58250z7,
	combout => nx60567z5);

ix60567z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60567z1 = nx60567z4 # nx60567z5 # nx60567z6 & nx60567z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60567z6,
	datab => nx60567z4,
	datac => nx60567z5,
	datad => nx60567z2,
	combout => nx60567z1);

reg_o_valid : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx60567z1,
	sclr => ALT_INV_first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_valid_dup0);

ix33254z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx33254z1 = busySignal # i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => busySignal,
	datad => i_valid_acombout,
	combout => nx33254z1);

reg_busySignal : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx33254z1,
	sclr => nx8852z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => busySignal);

reg_busySignalDelayed : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => busySignal,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => busySignalDelayed);

ix47893z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_mode_dup0_0_a = i_valid_acombout # busySignal # busySignalDelayed # i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => busySignal,
	datac => busySignalDelayed,
	datad => i_reset_acombout,
	combout => o_mode_dup0_0_a);

modgen_counter_column_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_column_anx51271z1,
	sclr => nx47386z1,
	ena => modgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_column_anx58250z15);

reg_out_o_column_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_column_anx58250z15,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx4657z1);

nx5654z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx5654z1_afeeder_combout = modgen_counter_column_anx58250z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_column_anx58250z13,
	combout => nx5654z1_afeeder_combout);

reg_out_o_column_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx5654z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx5654z1);

nx6651z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx6651z1_afeeder_combout = modgen_counter_column_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_column_anx58250z11,
	combout => nx6651z1_afeeder_combout);

reg_out_o_column_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx6651z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx6651z1);

nx7648z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx7648z1_afeeder_combout = modgen_counter_column_anx58250z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_column_anx58250z9,
	combout => nx7648z1_afeeder_combout);

reg_out_o_column_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx7648z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx7648z1);

nx8645z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx8645z1_afeeder_combout = modgen_counter_column_anx58250z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_column_anx58250z7,
	combout => nx8645z1_afeeder_combout);

reg_out_o_column_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx8645z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx8645z1);

nx9642z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx9642z1_afeeder_combout = modgen_counter_column_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_column_anx58250z5,
	combout => nx9642z1_afeeder_combout);

reg_out_o_column_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx9642z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx9642z1);

reg_out_o_column_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_column_anx58250z3,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx10639z1);

nx11636z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx11636z1_afeeder_combout = modgen_counter_column_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_column_anx1041z1,
	combout => nx11636z1_afeeder_combout);

reg_out_o_column_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx11636z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx11636z1);

nx16335z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx16335z1_afeeder_combout = modgen_counter_row_anx58250z15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_row_anx58250z15,
	combout => nx16335z1_afeeder_combout);

reg_out_o_row_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx16335z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx16335z1);

nx17332z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx17332z1_afeeder_combout = modgen_counter_row_anx58250z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_row_anx58250z13,
	combout => nx17332z1_afeeder_combout);

reg_out_o_row_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx17332z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx17332z1);

nx18329z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx18329z1_afeeder_combout = modgen_counter_row_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_row_anx58250z11,
	combout => nx18329z1_afeeder_combout);

reg_out_o_row_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx18329z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx18329z1);

nx19326z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx19326z1_afeeder_combout = modgen_counter_row_anx58250z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_row_anx58250z9,
	combout => nx19326z1_afeeder_combout);

reg_out_o_row_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx19326z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx19326z1);

nx20323z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx20323z1_afeeder_combout = modgen_counter_row_anx58250z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_row_anx58250z7,
	combout => nx20323z1_afeeder_combout);

reg_out_o_row_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20323z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20323z1);

nx21320z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx21320z1_afeeder_combout = modgen_counter_row_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_row_anx58250z5,
	combout => nx21320z1_afeeder_combout);

reg_out_o_row_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21320z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21320z1);

nx22317z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx22317z1_afeeder_combout = modgen_counter_row_anx58250z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_row_anx58250z3,
	combout => nx22317z1_afeeder_combout);

reg_out_o_row_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22317z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22317z1);

modgen_counter_row_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_row_anx58250z1 = modgen_counter_row_anx1041z1 $ modgen_counter_row_anx58250z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_row_anx1041z1,
	cin => modgen_counter_row_anx58250z2,
	combout => modgen_counter_row_anx58250z1);

modgen_counter_row_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_row_anx58250z1,
	sclr => nx8852z1,
	ena => modgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_row_anx1041z1);

nx23314z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx23314z1_afeeder_combout = modgen_counter_row_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_row_anx1041z1,
	combout => nx23314z1_afeeder_combout);

reg_out_o_row_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23314z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23314z1);

i_pixel_ibuf_0_a : cycloneii_io
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
	padio => ww_i_pixel(0),
	combout => i_pixel_acombout(0));

i_pixel_ibuf_1_a : cycloneii_io
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
	padio => ww_i_pixel(1),
	combout => i_pixel_acombout(1));

i_pixel_ibuf_2_a : cycloneii_io
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
	padio => ww_i_pixel(2),
	combout => i_pixel_acombout(2));

i_pixel_ibuf_3_a : cycloneii_io
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
	padio => ww_i_pixel(3),
	combout => i_pixel_acombout(3));

i_pixel_ibuf_4_a : cycloneii_io
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
	padio => ww_i_pixel(4),
	combout => i_pixel_acombout(4));

i_pixel_ibuf_5_a : cycloneii_io
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
	padio => ww_i_pixel(5),
	combout => i_pixel_acombout(5));

i_pixel_ibuf_6_a : cycloneii_io
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
	padio => ww_i_pixel(6),
	combout => i_pixel_acombout(6));

i_pixel_ibuf_7_a : cycloneii_io
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
	padio => ww_i_pixel(7),
	combout => i_pixel_acombout(7));

u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:u_mem1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => mem_wrn_0_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

mem_wrn_current_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- mem_wrn_current_0_afeeder_combout = mem_wrn_current_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	combout => mem_wrn_current_0_afeeder_combout);

ix41103z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx41103z3 = !i_valid_acombout & (!nx8852z3 # !first_bubble)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first_bubble,
	datac => i_valid_acombout,
	datad => nx8852z3,
	combout => nx41103z3);

ix41103z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx41103z4 = nx8852z1 # nx41103z2 & !nx41103z3 & i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41103z2,
	datab => nx41103z3,
	datac => i_valid_acombout,
	datad => nx8852z1,
	combout => nx41103z4);

ix41103z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx41103z2 = !mem_wrn_current_0_a & !mem_wrn_current_2_a & !mem_wrn_current_1_a # !i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => mem_wrn_current_0_a,
	datac => mem_wrn_current_2_a,
	datad => mem_wrn_current_1_a,
	combout => nx41103z2);

ix41103z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx41103z1 = i_reset_acombout # nx8852z2 # nx41103z2 & !nx41103z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => nx41103z2,
	datac => nx41103z3,
	datad => nx8852z2,
	combout => nx41103z1);

reg_mem_wrn_current_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => mem_wrn_current_0_a,
	sclr => nx41103z4,
	sload => VCC,
	ena => nx41103z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_wrn_current_1_a);

reg_mem_wrn_current_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => mem_wrn_current_1_a,
	sclr => nx41103z4,
	sload => VCC,
	ena => nx41103z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_wrn_current_2_a);

ix39109z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx39109z3 = i_valid_acombout & !mem_wrn_current_2_a & !mem_wrn_current_1_a & !mem_wrn_current_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => mem_wrn_current_2_a,
	datac => mem_wrn_current_1_a,
	datad => mem_wrn_current_0_a,
	combout => nx39109z3);

ix39109z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx39109z2 = i_reset_acombout # nx8852z2 # nx41103z2 & !nx41103z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => nx41103z2,
	datac => nx41103z3,
	datad => nx8852z2,
	combout => nx39109z2);

reg_mem_wrn_current_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => mem_wrn_current_0_afeeder_combout,
	sdata => VCC,
	sclr => nx8852z1,
	sload => nx39109z3,
	ena => nx39109z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_wrn_current_0_a);

ix63578z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx63578z3 = mem_wrn_current_1_a & nx60567z2 # !mem_wrn_current_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_wrn_current_0_a,
	datac => mem_wrn_current_1_a,
	datad => nx60567z2,
	combout => nx63578z3);

u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:u_mem2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => mem_wrn_1_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

ix5021z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_0_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(0)) # !nx60567z2 & i_pixel_acombout(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60567z2,
	datab => i_pixel_acombout(0),
	datad => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => buffer2_4n2ss1_0_a);

ix5021z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx5021z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0) # !nx63578z3 & (buffer2_4n2ss1_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0),
	datac => nx63578z3,
	datad => buffer2_4n2ss1_0_a,
	combout => nx5021z2);

ix5021z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx5021z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(0) # !nx63578z4 & (nx5021z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(0),
	datad => nx5021z2,
	combout => nx5021z1);

reg_buffer2_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx5021z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_0_a);

o_image1_0_dup0_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_0_afeeder_combout = o_image2_0_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_0_a,
	combout => o_image1_0_dup0_0_afeeder_combout);

reg_buffer1_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_0_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_0_a);

nx59473z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx59473z1_afeeder_combout = o_image1_0_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_0_dup0_0_a,
	combout => nx59473z1_afeeder_combout);

reg_out_o_image0_obuf_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx59473z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx59473z1);

ix63578z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx63578z4 = !mem_wrn_current_0_a & (!nx60567z2 # !mem_wrn_current_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_wrn_current_1_a,
	datac => nx60567z2,
	datad => mem_wrn_current_0_a,
	combout => nx63578z4);

ix4024z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_1_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(1)) # !nx60567z2 & i_pixel_acombout(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx60567z2,
	datac => i_pixel_acombout(1),
	datad => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => buffer2_4n2ss1_1_a);

u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:u_mem3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => mem_wrn_2_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

ix4024z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx4024z2 = nx63578z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1)) # !nx63578z3 & buffer2_4n2ss1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63578z3,
	datac => buffer2_4n2ss1_1_a,
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1),
	combout => nx4024z2);

ix4024z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx4024z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(1) # !nx63578z4 & (nx4024z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(1),
	datad => nx4024z2,
	combout => nx4024z1);

reg_buffer2_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx4024z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_1_a);

o_image1_0_dup0_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_1_afeeder_combout = o_image2_0_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => o_image2_0_dup0_1_a,
	combout => o_image1_0_dup0_1_afeeder_combout);

reg_buffer1_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_1_a);

nx58476z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx58476z1_afeeder_combout = o_image1_0_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_0_dup0_1_a,
	combout => nx58476z1_afeeder_combout);

reg_out_o_image0_obuf_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx58476z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx58476z1);

ix3027z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_2_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(2)) # !nx60567z2 & i_pixel_acombout(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_pixel_acombout(2),
	datac => nx60567z2,
	datad => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(2),
	combout => buffer2_4n2ss1_2_a);

ix3027z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx3027z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2) # !nx63578z3 & (buffer2_4n2ss1_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63578z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2),
	datad => buffer2_4n2ss1_2_a,
	combout => nx3027z2);

ix3027z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx3027z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(2) # !nx63578z4 & (nx3027z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(2),
	datad => nx3027z2,
	combout => nx3027z1);

reg_buffer2_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx3027z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_2_a);

o_image1_0_dup0_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_2_afeeder_combout = o_image2_0_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_2_a,
	combout => o_image1_0_dup0_2_afeeder_combout);

reg_buffer1_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_2_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_2_a);

nx57479z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx57479z1_afeeder_combout = o_image1_0_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => o_image1_0_dup0_2_a,
	combout => nx57479z1_afeeder_combout);

reg_out_o_image0_obuf_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57479z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx57479z1);

ix2030z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_3_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(3)) # !nx60567z2 & i_pixel_acombout(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_pixel_acombout(3),
	datac => nx60567z2,
	datad => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(3),
	combout => buffer2_4n2ss1_3_a);

ix2030z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx2030z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3) # !nx63578z3 & (buffer2_4n2ss1_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63578z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3),
	datad => buffer2_4n2ss1_3_a,
	combout => nx2030z2);

ix2030z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx2030z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(3) # !nx63578z4 & (nx2030z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(3),
	datad => nx2030z2,
	combout => nx2030z1);

reg_buffer2_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx2030z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_3_a);

o_image1_0_dup0_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_3_afeeder_combout = o_image2_0_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_3_a,
	combout => o_image1_0_dup0_3_afeeder_combout);

reg_buffer1_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_3_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_3_a);

nx56482z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx56482z1_afeeder_combout = o_image1_0_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_0_dup0_3_a,
	combout => nx56482z1_afeeder_combout);

reg_out_o_image0_obuf_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx56482z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx56482z1);

ix1033z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_4_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(4)) # !nx60567z2 & i_pixel_acombout(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_pixel_acombout(4),
	datab => nx60567z2,
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(4),
	combout => buffer2_4n2ss1_4_a);

ix1033z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx1033z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4) # !nx63578z3 & (buffer2_4n2ss1_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => buffer2_4n2ss1_4_a,
	combout => nx1033z2);

ix1033z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx1033z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(4) # !nx63578z4 & (nx1033z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(4),
	datac => nx63578z4,
	datad => nx1033z2,
	combout => nx1033z1);

reg_buffer2_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx1033z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_4_a);

o_image1_0_dup0_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_4_afeeder_combout = o_image2_0_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_4_a,
	combout => o_image1_0_dup0_4_afeeder_combout);

reg_buffer1_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_4_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_4_a);

nx55485z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx55485z1_afeeder_combout = o_image1_0_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_0_dup0_4_a,
	combout => nx55485z1_afeeder_combout);

reg_out_o_image0_obuf_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx55485z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx55485z1);

ix36z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_5_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(5)) # !nx60567z2 & i_pixel_acombout(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx60567z2,
	datac => i_pixel_acombout(5),
	datad => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(5),
	combout => buffer2_4n2ss1_5_a);

ix36z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx36z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5) # !nx63578z3 & (buffer2_4n2ss1_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5),
	datad => buffer2_4n2ss1_5_a,
	combout => nx36z2);

ix36z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx36z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(5) # !nx63578z4 & (nx36z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(5),
	datad => nx36z2,
	combout => nx36z1);

reg_buffer2_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_5_a);

o_image1_0_dup0_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_5_afeeder_combout = o_image2_0_dup0_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => o_image2_0_dup0_5_a,
	combout => o_image1_0_dup0_5_afeeder_combout);

reg_buffer1_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_5_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_5_a);

nx54488z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx54488z1_afeeder_combout = o_image1_0_dup0_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_0_dup0_5_a,
	combout => nx54488z1_afeeder_combout);

reg_out_o_image0_obuf_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54488z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx54488z1);

ix64575z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_6_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(6)) # !nx60567z2 & i_pixel_acombout(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_pixel_acombout(6),
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(6),
	datad => nx60567z2,
	combout => buffer2_4n2ss1_6_a);

ix64575z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx64575z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6) # !nx63578z3 & (buffer2_4n2ss1_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63578z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6),
	datad => buffer2_4n2ss1_6_a,
	combout => nx64575z2);

ix64575z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx64575z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(6) # !nx63578z4 & (nx64575z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(6),
	datad => nx64575z2,
	combout => nx64575z1);

reg_buffer2_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx64575z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_6_a);

reg_buffer1_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_0_dup0_6_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_6_a);

nx53491z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx53491z1_afeeder_combout = o_image1_0_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_0_dup0_6_a,
	combout => nx53491z1_afeeder_combout);

reg_out_o_image0_obuf_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx53491z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx53491z1);

ix63578z52925 : cycloneii_lcell_comb
-- Equation(s):
-- buffer2_4n2ss1_7_a = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a(7)) # !nx60567z2 & i_pixel_acombout(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_pixel_acombout(7),
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(7),
	datad => nx60567z2,
	combout => buffer2_4n2ss1_7_a);

ix63578z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx63578z2 = nx63578z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7)) # !nx63578z3 & buffer2_4n2ss1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63578z3,
	datac => buffer2_4n2ss1_7_a,
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx63578z2);

ix63578z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx63578z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a(7) # !nx63578z4 & (nx63578z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx63578z4,
	datac => u_mem1_mem_aix64056z29481_aauto_generated_aq_a(7),
	datad => nx63578z2,
	combout => nx63578z1);

reg_buffer2_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx63578z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_0_dup0_7_a);

o_image1_0_dup0_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_0_dup0_7_afeeder_combout = o_image2_0_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_7_a,
	combout => o_image1_0_dup0_7_afeeder_combout);

reg_buffer1_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_0_dup0_7_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_0_dup0_7_a);

reg_out_o_image0_obuf_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_0_dup0_7_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx52494z1);

ix62359z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx62359z4 = !mem_wrn_current_1_a & (!mem_wrn_current_0_a # !nx60567z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_wrn_current_1_a,
	datac => nx60567z2,
	datad => mem_wrn_current_0_a,
	combout => nx62359z4);

ix62359z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx62359z3 = nx60567z2 & mem_wrn_current_0_a # !mem_wrn_current_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60567z2,
	datab => mem_wrn_current_0_a,
	datad => mem_wrn_current_1_a,
	combout => nx62359z3);

ix55380z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx55380z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0) # !nx62359z3 & (buffer2_4n2ss1_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0),
	datab => nx62359z3,
	datad => buffer2_4n2ss1_0_a,
	combout => nx55380z2);

ix55380z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx55380z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(0) # !nx62359z4 & (nx55380z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(0),
	datac => nx62359z4,
	datad => nx55380z2,
	combout => nx55380z1);

reg_buffer2_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx55380z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_0_a);

o_image1_1_dup0_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_1_dup0_0_afeeder_combout = o_image2_1_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_0_a,
	combout => o_image1_1_dup0_0_afeeder_combout);

reg_buffer1_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_1_dup0_0_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_0_a);

nx64608z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx64608z1_afeeder_combout = o_image1_1_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_1_dup0_0_a,
	combout => nx64608z1_afeeder_combout);

reg_out_o_image0_obuf_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx64608z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64608z1);

ix56377z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx56377z2 = nx62359z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1)) # !nx62359z3 & buffer2_4n2ss1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => buffer2_4n2ss1_1_a,
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1),
	combout => nx56377z2);

ix56377z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx56377z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(1) # !nx62359z4 & (nx56377z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx62359z4,
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(1),
	datad => nx56377z2,
	combout => nx56377z1);

reg_buffer2_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx56377z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_1_a);

o_image1_1_dup0_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_1_dup0_1_afeeder_combout = o_image2_1_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_1_a,
	combout => o_image1_1_dup0_1_afeeder_combout);

reg_buffer1_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_1_dup0_1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_1_a);

reg_out_o_image0_obuf_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_1_dup0_1_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63611z1);

ix57374z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx57374z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2) # !nx62359z3 & (buffer2_4n2ss1_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2),
	datad => buffer2_4n2ss1_2_a,
	combout => nx57374z2);

ix57374z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57374z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(2) # !nx62359z4 & (nx57374z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(2),
	datab => nx62359z4,
	datad => nx57374z2,
	combout => nx57374z1);

reg_buffer2_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57374z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_2_a);

o_image1_1_dup0_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_1_dup0_2_afeeder_combout = o_image2_1_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_2_a,
	combout => o_image1_1_dup0_2_afeeder_combout);

reg_buffer1_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_1_dup0_2_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_2_a);

nx62614z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx62614z1_afeeder_combout = o_image1_1_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_1_dup0_2_a,
	combout => nx62614z1_afeeder_combout);

reg_out_o_image0_obuf_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx62614z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62614z1);

ix58371z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx58371z2 = nx62359z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3)) # !nx62359z3 & buffer2_4n2ss1_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => buffer2_4n2ss1_3_a,
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx58371z2);

ix58371z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58371z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(3) # !nx62359z4 & (nx58371z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(3),
	datac => nx62359z4,
	datad => nx58371z2,
	combout => nx58371z1);

reg_buffer2_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx58371z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_3_a);

o_image1_1_dup0_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_1_dup0_3_afeeder_combout = o_image2_1_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_3_a,
	combout => o_image1_1_dup0_3_afeeder_combout);

reg_buffer1_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_1_dup0_3_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_3_a);

nx61617z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx61617z1_afeeder_combout = o_image1_1_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_1_dup0_3_a,
	combout => nx61617z1_afeeder_combout);

reg_out_o_image0_obuf_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx61617z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx61617z1);

ix59368z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx59368z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4) # !nx62359z3 & (buffer2_4n2ss1_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => buffer2_4n2ss1_4_a,
	combout => nx59368z2);

ix59368z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59368z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(4) # !nx62359z4 & (nx59368z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z4,
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(4),
	datad => nx59368z2,
	combout => nx59368z1);

reg_buffer2_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx59368z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_4_a);

reg_buffer1_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_1_dup0_4_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_4_a);

nx60620z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx60620z1_afeeder_combout = o_image1_1_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_1_dup0_4_a,
	combout => nx60620z1_afeeder_combout);

reg_out_o_image0_obuf_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx60620z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx60620z1);

ix60365z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx60365z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5) # !nx62359z3 & (buffer2_4n2ss1_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5),
	datad => buffer2_4n2ss1_5_a,
	combout => nx60365z2);

ix60365z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60365z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(5) # !nx62359z4 & (nx60365z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(5),
	datac => nx62359z4,
	datad => nx60365z2,
	combout => nx60365z1);

reg_buffer2_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx60365z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_5_a);

reg_buffer1_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_1_dup0_5_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_5_a);

reg_out_o_image0_obuf_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_1_dup0_5_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx59623z1);

ix61362z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx61362z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6) # !nx62359z3 & (buffer2_4n2ss1_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6),
	datad => buffer2_4n2ss1_6_a,
	combout => nx61362z2);

ix61362z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61362z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(6) # !nx62359z4 & (nx61362z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx62359z4,
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(6),
	datad => nx61362z2,
	combout => nx61362z1);

reg_buffer2_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx61362z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_6_a);

o_image1_1_dup0_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_1_dup0_6_afeeder_combout = o_image2_1_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_6_a,
	combout => o_image1_1_dup0_6_afeeder_combout);

reg_buffer1_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_1_dup0_6_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_6_a);

nx58626z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx58626z1_afeeder_combout = o_image1_1_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_1_dup0_6_a,
	combout => nx58626z1_afeeder_combout);

reg_out_o_image0_obuf_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx58626z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx58626z1);

ix62359z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx62359z2 = nx62359z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7)) # !nx62359z3 & buffer2_4n2ss1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62359z3,
	datac => buffer2_4n2ss1_7_a,
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx62359z2);

ix62359z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62359z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a(7) # !nx62359z4 & (nx62359z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx62359z4,
	datac => u_mem2_mem_aix64056z29482_aauto_generated_aq_a(7),
	datad => nx62359z2,
	combout => nx62359z1);

reg_buffer2_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx62359z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_1_dup0_7_a);

o_image1_1_dup0_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_1_dup0_7_afeeder_combout = o_image2_1_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_7_a,
	combout => o_image1_1_dup0_7_afeeder_combout);

reg_buffer1_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_1_dup0_7_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_1_dup0_7_a);

nx57629z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx57629z1_afeeder_combout = o_image1_1_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_1_dup0_7_a,
	combout => nx57629z1_afeeder_combout);

reg_out_o_image0_obuf_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57629z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx57629z1);

ix50245z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50245z1 = nx60567z2 & i_pixel_acombout(0) # !nx60567z2 & (mem_wrn_current_2_a & i_pixel_acombout(0) # !mem_wrn_current_2_a & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60567z2,
	datab => i_pixel_acombout(0),
	datac => mem_wrn_current_2_a,
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx50245z1);

reg_buffer2_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx50245z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_0_a);

o_image1_2_dup0_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_2_dup0_0_afeeder_combout = o_image2_2_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_0_a,
	combout => o_image1_2_dup0_0_afeeder_combout);

reg_buffer1_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_2_dup0_0_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_0_a);

reg_out_o_image0_obuf_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_2_dup0_0_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx4207z1);

ix51242z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx51242z1 = mem_wrn_current_2_a & (i_pixel_acombout(1)) # !mem_wrn_current_2_a & (nx60567z2 & i_pixel_acombout(1) # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => nx60567z2,
	datac => i_pixel_acombout(1),
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(1),
	combout => nx51242z1);

reg_buffer2_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx51242z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_1_a);

o_image1_2_dup0_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_2_dup0_1_afeeder_combout = o_image2_2_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_1_a,
	combout => o_image1_2_dup0_1_afeeder_combout);

reg_buffer1_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_2_dup0_1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_1_a);

reg_out_o_image0_obuf_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_2_dup0_1_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx3210z1);

ix52239z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx52239z1 = mem_wrn_current_2_a & i_pixel_acombout(2) # !mem_wrn_current_2_a & (nx60567z2 & i_pixel_acombout(2) # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => i_pixel_acombout(2),
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(2),
	datad => nx60567z2,
	combout => nx52239z1);

reg_buffer2_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx52239z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_2_a);

o_image1_2_dup0_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_2_dup0_2_afeeder_combout = o_image2_2_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_2_a,
	combout => o_image1_2_dup0_2_afeeder_combout);

reg_buffer1_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_2_dup0_2_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_2_a);

nx2213z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx2213z1_afeeder_combout = o_image1_2_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_2_dup0_2_a,
	combout => nx2213z1_afeeder_combout);

reg_out_o_image0_obuf_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx2213z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx2213z1);

ix53236z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx53236z1 = mem_wrn_current_2_a & (i_pixel_acombout(3)) # !mem_wrn_current_2_a & (nx60567z2 & i_pixel_acombout(3) # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => nx60567z2,
	datac => i_pixel_acombout(3),
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx53236z1);

reg_buffer2_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx53236z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_3_a);

reg_buffer1_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_2_dup0_3_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_3_a);

reg_out_o_image0_obuf_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_2_dup0_3_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx1216z1);

ix54233z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54233z1 = mem_wrn_current_2_a & (i_pixel_acombout(4)) # !mem_wrn_current_2_a & (nx60567z2 & (i_pixel_acombout(4)) # !nx60567z2 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => nx60567z2,
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => i_pixel_acombout(4),
	combout => nx54233z1);

reg_buffer2_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54233z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_4_a);

o_image1_2_dup0_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_2_dup0_4_afeeder_combout = o_image2_2_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_4_a,
	combout => o_image1_2_dup0_4_afeeder_combout);

reg_buffer1_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_2_dup0_4_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_4_a);

reg_out_o_image0_obuf_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image1_2_dup0_4_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx219z1);

ix55230z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx55230z1 = mem_wrn_current_2_a & (i_pixel_acombout(5)) # !mem_wrn_current_2_a & (nx60567z2 & i_pixel_acombout(5) # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => nx60567z2,
	datac => i_pixel_acombout(5),
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx55230z1);

reg_buffer2_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx55230z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_5_a);

reg_buffer1_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_2_dup0_5_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_5_a);

nx64758z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx64758z1_afeeder_combout = o_image1_2_dup0_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_2_dup0_5_a,
	combout => nx64758z1_afeeder_combout);

reg_out_o_image0_obuf_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx64758z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64758z1);

ix56227z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx56227z1 = mem_wrn_current_2_a & i_pixel_acombout(6) # !mem_wrn_current_2_a & (nx60567z2 & i_pixel_acombout(6) # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => i_pixel_acombout(6),
	datac => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(6),
	datad => nx60567z2,
	combout => nx56227z1);

reg_buffer2_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx56227z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_6_a);

o_image1_2_dup0_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_image1_2_dup0_6_afeeder_combout = o_image2_2_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_6_a,
	combout => o_image1_2_dup0_6_afeeder_combout);

reg_buffer1_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_image1_2_dup0_6_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_6_a);

nx63761z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx63761z1_afeeder_combout = o_image1_2_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_2_dup0_6_a,
	combout => nx63761z1_afeeder_combout);

reg_out_o_image0_obuf_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx63761z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63761z1);

ix57224z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57224z1 = mem_wrn_current_2_a & (i_pixel_acombout(7)) # !mem_wrn_current_2_a & (nx60567z2 & i_pixel_acombout(7) # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_wrn_current_2_a,
	datab => nx60567z2,
	datac => i_pixel_acombout(7),
	datad => u_mem3_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx57224z1);

reg_buffer2_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57224z1,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image2_2_dup0_7_a);

reg_buffer1_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_2_dup0_7_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_image1_2_dup0_7_a);

nx62764z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx62764z1_afeeder_combout = o_image1_2_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image1_2_dup0_7_a,
	combout => nx62764z1_afeeder_combout);

reg_out_o_image0_obuf_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx62764z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62764z1);

nx41208z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx41208z1_afeeder_combout = o_image2_0_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_0_a,
	combout => nx41208z1_afeeder_combout);

reg_out_o_image1_obuf_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx41208z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41208z1);

nx42205z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx42205z1_afeeder_combout = o_image2_0_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => o_image2_0_dup0_1_a,
	combout => nx42205z1_afeeder_combout);

reg_out_o_image1_obuf_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx42205z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42205z1);

nx43202z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx43202z1_afeeder_combout = o_image2_0_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_2_a,
	combout => nx43202z1_afeeder_combout);

reg_out_o_image1_obuf_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43202z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43202z1);

nx44199z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx44199z1_afeeder_combout = o_image2_0_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_3_a,
	combout => nx44199z1_afeeder_combout);

reg_out_o_image1_obuf_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44199z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44199z1);

nx45196z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx45196z1_afeeder_combout = o_image2_0_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_4_a,
	combout => nx45196z1_afeeder_combout);

reg_out_o_image1_obuf_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45196z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45196z1);

nx46193z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx46193z1_afeeder_combout = o_image2_0_dup0_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => o_image2_0_dup0_5_a,
	combout => nx46193z1_afeeder_combout);

reg_out_o_image1_obuf_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx46193z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46193z1);

reg_out_o_image1_obuf_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_0_dup0_6_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47190z1);

nx48187z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx48187z1_afeeder_combout = o_image2_0_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_0_dup0_7_a,
	combout => nx48187z1_afeeder_combout);

reg_out_o_image1_obuf_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx48187z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx48187z1);

nx36073z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx36073z1_afeeder_combout = o_image2_1_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_0_a,
	combout => nx36073z1_afeeder_combout);

reg_out_o_image1_obuf_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36073z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx36073z1);

nx37070z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx37070z1_afeeder_combout = o_image2_1_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_1_a,
	combout => nx37070z1_afeeder_combout);

reg_out_o_image1_obuf_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx37070z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx37070z1);

nx38067z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx38067z1_afeeder_combout = o_image2_1_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_2_a,
	combout => nx38067z1_afeeder_combout);

reg_out_o_image1_obuf_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx38067z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx38067z1);

nx39064z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx39064z1_afeeder_combout = o_image2_1_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_3_a,
	combout => nx39064z1_afeeder_combout);

reg_out_o_image1_obuf_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx39064z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx39064z1);

reg_out_o_image1_obuf_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_1_dup0_4_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx40061z1);

reg_out_o_image1_obuf_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_1_dup0_5_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41058z1);

nx42055z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx42055z1_afeeder_combout = o_image2_1_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_6_a,
	combout => nx42055z1_afeeder_combout);

reg_out_o_image1_obuf_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx42055z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42055z1);

nx43052z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx43052z1_afeeder_combout = o_image2_1_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_1_dup0_7_a,
	combout => nx43052z1_afeeder_combout);

reg_out_o_image1_obuf_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43052z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43052z1);

nx30938z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx30938z1_afeeder_combout = o_image2_2_dup0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_0_a,
	combout => nx30938z1_afeeder_combout);

reg_out_o_image1_obuf_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx30938z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx30938z1);

nx31935z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx31935z1_afeeder_combout = o_image2_2_dup0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_1_a,
	combout => nx31935z1_afeeder_combout);

reg_out_o_image1_obuf_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx31935z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx31935z1);

nx32932z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx32932z1_afeeder_combout = o_image2_2_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_2_a,
	combout => nx32932z1_afeeder_combout);

reg_out_o_image1_obuf_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx32932z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx32932z1);

reg_out_o_image1_obuf_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_2_dup0_3_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx33929z1);

nx34926z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx34926z1_afeeder_combout = o_image2_2_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_4_a,
	combout => nx34926z1_afeeder_combout);

reg_out_o_image1_obuf_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx34926z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx34926z1);

reg_out_o_image1_obuf_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_2_dup0_5_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx35923z1);

nx36920z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx36920z1_afeeder_combout = o_image2_2_dup0_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_image2_2_dup0_6_a,
	combout => nx36920z1_afeeder_combout);

reg_out_o_image1_obuf_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36920z1_afeeder_combout,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx36920z1);

reg_out_o_image1_obuf_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_image2_2_dup0_7_a,
	sload => VCC,
	ena => first_bubble,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx37917z1);

o_valid_obuf : cycloneii_io
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
	datain => o_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_valid);

o_mode_obuf_0_a : cycloneii_io
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
	datain => o_mode_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

o_mode_obuf_1_a : cycloneii_io
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
	datain => ALT_INV_i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

ix4657z43919 : cycloneii_io
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
	datain => nx4657z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(0));

ix5654z43919 : cycloneii_io
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
	datain => nx5654z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(1));

ix6651z43919 : cycloneii_io
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
	datain => nx6651z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(2));

ix7648z43919 : cycloneii_io
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
	datain => nx7648z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(3));

ix8645z43919 : cycloneii_io
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
	datain => nx8645z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(4));

ix9642z43919 : cycloneii_io
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
	datain => nx9642z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(5));

ix10639z43919 : cycloneii_io
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
	datain => nx10639z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(6));

ix11636z43919 : cycloneii_io
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
	datain => nx11636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_column(7));

ix16335z43919 : cycloneii_io
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
	datain => nx16335z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(0));

ix17332z43919 : cycloneii_io
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
	datain => nx17332z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(1));

ix18329z43919 : cycloneii_io
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
	datain => nx18329z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(2));

ix19326z43919 : cycloneii_io
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
	datain => nx19326z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(3));

ix20323z43919 : cycloneii_io
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
	datain => nx20323z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(4));

ix21320z43919 : cycloneii_io
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
	datain => nx21320z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(5));

ix22317z43919 : cycloneii_io
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
	datain => nx22317z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(6));

ix23314z43919 : cycloneii_io
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
	datain => nx23314z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(7));

ix59473z43919 : cycloneii_io
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
	datain => nx59473z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(0));

ix58476z43919 : cycloneii_io
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
	datain => nx58476z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(1));

ix57479z43919 : cycloneii_io
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
	datain => nx57479z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(2));

ix56482z43919 : cycloneii_io
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
	datain => nx56482z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(3));

ix55485z43919 : cycloneii_io
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
	datain => nx55485z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(4));

ix54488z43919 : cycloneii_io
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
	datain => nx54488z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(5));

ix53491z43919 : cycloneii_io
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
	datain => nx53491z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(6));

ix52494z43919 : cycloneii_io
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
	datain => nx52494z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_0_a(7));

ix64608z43919 : cycloneii_io
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
	datain => nx64608z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(0));

ix63611z43919 : cycloneii_io
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
	datain => nx63611z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(1));

ix62614z43919 : cycloneii_io
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
	datain => nx62614z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(2));

ix61617z43919 : cycloneii_io
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
	datain => nx61617z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(3));

ix60620z43919 : cycloneii_io
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
	datain => nx60620z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(4));

ix59623z43919 : cycloneii_io
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
	datain => nx59623z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(5));

ix58626z43919 : cycloneii_io
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
	datain => nx58626z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(6));

ix57629z43919 : cycloneii_io
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
	datain => nx57629z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_1_a(7));

ix4207z43919 : cycloneii_io
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
	datain => nx4207z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(0));

ix3210z43919 : cycloneii_io
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
	datain => nx3210z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(1));

ix2213z43919 : cycloneii_io
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
	datain => nx2213z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(2));

ix1216z43919 : cycloneii_io
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
	datain => nx1216z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(3));

ix219z43919 : cycloneii_io
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
	datain => nx219z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(4));

ix64758z43919 : cycloneii_io
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
	datain => nx64758z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(5));

ix63761z43919 : cycloneii_io
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
	datain => nx63761z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(6));

ix62764z43919 : cycloneii_io
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
	datain => nx62764z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image0_2_a(7));

ix41208z43919 : cycloneii_io
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
	datain => nx41208z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(0));

ix42205z43919 : cycloneii_io
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
	datain => nx42205z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(1));

ix43202z43919 : cycloneii_io
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
	datain => nx43202z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(2));

ix44199z43919 : cycloneii_io
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
	datain => nx44199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(3));

ix45196z43919 : cycloneii_io
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
	datain => nx45196z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(4));

ix46193z43919 : cycloneii_io
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
	datain => nx46193z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(5));

ix47190z43919 : cycloneii_io
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
	datain => nx47190z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(6));

ix48187z43919 : cycloneii_io
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
	datain => nx48187z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_0_a(7));

ix36073z43919 : cycloneii_io
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
	datain => nx36073z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(0));

ix37070z43919 : cycloneii_io
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
	datain => nx37070z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(1));

ix38067z43919 : cycloneii_io
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
	datain => nx38067z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(2));

ix39064z43919 : cycloneii_io
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
	datain => nx39064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(3));

ix40061z43919 : cycloneii_io
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
	datain => nx40061z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(4));

ix41058z43919 : cycloneii_io
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
	datain => nx41058z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(5));

ix42055z43919 : cycloneii_io
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
	datain => nx42055z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(6));

ix43052z43919 : cycloneii_io
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
	datain => nx43052z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_1_a(7));

ix30938z43919 : cycloneii_io
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
	datain => nx30938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(0));

ix31935z43919 : cycloneii_io
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
	datain => nx31935z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(1));

ix32932z43919 : cycloneii_io
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
	datain => nx32932z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(2));

ix33929z43919 : cycloneii_io
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
	datain => nx33929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(3));

ix34926z43919 : cycloneii_io
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
	datain => nx34926z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(4));

ix35923z43919 : cycloneii_io
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
	datain => nx35923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(5));

ix36920z43919 : cycloneii_io
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
	datain => nx36920z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(6));

ix37917z43919 : cycloneii_io
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
	datain => nx37917z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image1_2_a(7));

o_image2_obuf_0_0_a : cycloneii_io
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
	datain => o_image2_0_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(0));

o_image2_obuf_0_1_a : cycloneii_io
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
	datain => o_image2_0_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(1));

o_image2_obuf_0_2_a : cycloneii_io
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
	datain => o_image2_0_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(2));

o_image2_obuf_0_3_a : cycloneii_io
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
	datain => o_image2_0_dup0_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(3));

o_image2_obuf_0_4_a : cycloneii_io
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
	datain => o_image2_0_dup0_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(4));

o_image2_obuf_0_5_a : cycloneii_io
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
	datain => o_image2_0_dup0_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(5));

o_image2_obuf_0_6_a : cycloneii_io
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
	datain => o_image2_0_dup0_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(6));

o_image2_obuf_0_7_a : cycloneii_io
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
	datain => o_image2_0_dup0_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_0_a(7));

o_image2_obuf_1_0_a : cycloneii_io
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
	datain => o_image2_1_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(0));

o_image2_obuf_1_1_a : cycloneii_io
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
	datain => o_image2_1_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(1));

o_image2_obuf_1_2_a : cycloneii_io
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
	datain => o_image2_1_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(2));

o_image2_obuf_1_3_a : cycloneii_io
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
	datain => o_image2_1_dup0_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(3));

o_image2_obuf_1_4_a : cycloneii_io
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
	datain => o_image2_1_dup0_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(4));

o_image2_obuf_1_5_a : cycloneii_io
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
	datain => o_image2_1_dup0_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(5));

o_image2_obuf_1_6_a : cycloneii_io
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
	datain => o_image2_1_dup0_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(6));

o_image2_obuf_1_7_a : cycloneii_io
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
	datain => o_image2_1_dup0_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_1_a(7));

o_image2_obuf_2_0_a : cycloneii_io
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
	datain => o_image2_2_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(0));

o_image2_obuf_2_1_a : cycloneii_io
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
	datain => o_image2_2_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(1));

o_image2_obuf_2_2_a : cycloneii_io
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
	datain => o_image2_2_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(2));

o_image2_obuf_2_3_a : cycloneii_io
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
	datain => o_image2_2_dup0_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(3));

o_image2_obuf_2_4_a : cycloneii_io
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
	datain => o_image2_2_dup0_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(4));

o_image2_obuf_2_5_a : cycloneii_io
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
	datain => o_image2_2_dup0_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(5));

o_image2_obuf_2_6_a : cycloneii_io
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
	datain => o_image2_2_dup0_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(6));

o_image2_obuf_2_7_a : cycloneii_io
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
	datain => o_image2_2_dup0_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(7));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_utility_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity memory is
  port (
      i_valid  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; i_clock  : in STD_LOGIC
    ; o_valid  : out STD_LOGIC
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_column  : out std_logic_vector (7 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; o_image0  : out std_logic_vector (7 downto 0)
    ; o_image1  : out std_logic_vector (7 downto 0)
    ; o_image2  : out std_logic_vector (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of memory is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.memory_chip
    port map (
        i_valid => i_valid
      , i_reset => i_reset
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , i_clock => i_clock
      , o_valid => o_valid
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_column(7) => o_column(7)
      , o_column(6) => o_column(6)
      , o_column(5) => o_column(5)
      , o_column(4) => o_column(4)
      , o_column(3) => o_column(3)
      , o_column(2) => o_column(2)
      , o_column(1) => o_column(1)
      , o_column(0) => o_column(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_image0_0_(7) => o_image0_0_(7)
      , o_image0_0_(6) => o_image0_0_(6)
      , o_image0_0_(5) => o_image0_0_(5)
      , o_image0_0_(4) => o_image0_0_(4)
      , o_image0_0_(3) => o_image0_0_(3)
      , o_image0_0_(2) => o_image0_0_(2)
      , o_image0_0_(1) => o_image0_0_(1)
      , o_image0_0_(0) => o_image0_0_(0)
      , o_image0_1_(7) => o_image0_1_(7)
      , o_image0_1_(6) => o_image0_1_(6)
      , o_image0_1_(5) => o_image0_1_(5)
      , o_image0_1_(4) => o_image0_1_(4)
      , o_image0_1_(3) => o_image0_1_(3)
      , o_image0_1_(2) => o_image0_1_(2)
      , o_image0_1_(1) => o_image0_1_(1)
      , o_image0_1_(0) => o_image0_1_(0)
      , o_image0_2_(7) => o_image0_2_(7)
      , o_image0_2_(6) => o_image0_2_(6)
      , o_image0_2_(5) => o_image0_2_(5)
      , o_image0_2_(4) => o_image0_2_(4)
      , o_image0_2_(3) => o_image0_2_(3)
      , o_image0_2_(2) => o_image0_2_(2)
      , o_image0_2_(1) => o_image0_2_(1)
      , o_image0_2_(0) => o_image0_2_(0)
      , o_image1_0_(7) => o_image1_0_(7)
      , o_image1_0_(6) => o_image1_0_(6)
      , o_image1_0_(5) => o_image1_0_(5)
      , o_image1_0_(4) => o_image1_0_(4)
      , o_image1_0_(3) => o_image1_0_(3)
      , o_image1_0_(2) => o_image1_0_(2)
      , o_image1_0_(1) => o_image1_0_(1)
      , o_image1_0_(0) => o_image1_0_(0)
      , o_image1_1_(7) => o_image1_1_(7)
      , o_image1_1_(6) => o_image1_1_(6)
      , o_image1_1_(5) => o_image1_1_(5)
      , o_image1_1_(4) => o_image1_1_(4)
      , o_image1_1_(3) => o_image1_1_(3)
      , o_image1_1_(2) => o_image1_1_(2)
      , o_image1_1_(1) => o_image1_1_(1)
      , o_image1_1_(0) => o_image1_1_(0)
      , o_image1_2_(7) => o_image1_2_(7)
      , o_image1_2_(6) => o_image1_2_(6)
      , o_image1_2_(5) => o_image1_2_(5)
      , o_image1_2_(4) => o_image1_2_(4)
      , o_image1_2_(3) => o_image1_2_(3)
      , o_image1_2_(2) => o_image1_2_(2)
      , o_image1_2_(1) => o_image1_2_(1)
      , o_image1_2_(0) => o_image1_2_(0)
      , o_image2_0_(7) => o_image2_0_(7)
      , o_image2_0_(6) => o_image2_0_(6)
      , o_image2_0_(5) => o_image2_0_(5)
      , o_image2_0_(4) => o_image2_0_(4)
      , o_image2_0_(3) => o_image2_0_(3)
      , o_image2_0_(2) => o_image2_0_(2)
      , o_image2_0_(1) => o_image2_0_(1)
      , o_image2_0_(0) => o_image2_0_(0)
      , o_image2_1_(7) => o_image2_1_(7)
      , o_image2_1_(6) => o_image2_1_(6)
      , o_image2_1_(5) => o_image2_1_(5)
      , o_image2_1_(4) => o_image2_1_(4)
      , o_image2_1_(3) => o_image2_1_(3)
      , o_image2_1_(2) => o_image2_1_(2)
      , o_image2_1_(1) => o_image2_1_(1)
      , o_image2_1_(0) => o_image2_1_(0)
      , o_image2_2_(7) => o_image2_2_(7)
      , o_image2_2_(6) => o_image2_2_(6)
      , o_image2_2_(5) => o_image2_2_(5)
      , o_image2_2_(4) => o_image2_2_(4)
      , o_image2_2_(3) => o_image2_2_(3)
      , o_image2_2_(2) => o_image2_2_(2)
      , o_image2_2_(1) => o_image2_2_(1)
      , o_image2_2_(0) => o_image2_2_(0)
    );
end architecture;

