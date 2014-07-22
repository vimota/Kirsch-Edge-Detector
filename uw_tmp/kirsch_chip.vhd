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

-- DATE "07/22/2014 01:29:49"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	kirsch_chip IS
    PORT (
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	o_valid : OUT std_logic;
	o_edge : OUT std_logic;
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	o_image0_0_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image0_1_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image0_2_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image1_0_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image1_1_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image1_2_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image2_0_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image2_1_a : OUT std_logic_vector(7 DOWNTO 0);
	o_image2_2_a : OUT std_logic_vector(7 DOWNTO 0);
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_column : OUT std_logic_vector(7 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(17 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_valid : OUT std_logic;
	debug_num_0 : OUT std_logic_vector(2 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(2 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(12 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(12 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(13 DOWNTO 0);
	debug_num_6 : OUT std_logic;
	debug_num_7 : OUT std_logic;
	debug_num_8 : OUT std_logic
	);
END kirsch_chip;

ARCHITECTURE structure OF kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
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
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_column : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_valid : std_logic;
SIGNAL ww_debug_num_0 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_debug_num_6 : std_logic;
SIGNAL ww_debug_num_7 : std_logic;
SIGNAL ww_debug_num_8 : std_logic;
SIGNAL u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL u_flow_aprev_max_9_a : std_logic;
SIGNAL u_flow_aprev_max_7_a : std_logic;
SIGNAL u_flow_aprev_max_6_a : std_logic;
SIGNAL u_flow_aprev_max_4_a : std_logic;
SIGNAL u_flow_aprev_max_1_a : std_logic;
SIGNAL u_flow_anx47310z6 : std_logic;
SIGNAL u_flow_anx47310z7 : std_logic;
SIGNAL u_flow_anx47310z8 : std_logic;
SIGNAL u_flow_anx47310z9 : std_logic;
SIGNAL u_flow_anx47310z5 : std_logic;
SIGNAL u_flow_anx26833z2 : std_logic;
SIGNAL u_memory_anx64575z2 : std_logic;
SIGNAL u_memory_anx56377z2 : std_logic;
SIGNAL u_memory_anx62359z2 : std_logic;
SIGNAL u_memory_anx62359z1 : std_logic;
SIGNAL u_memory_anx40106z2 : std_logic;
SIGNAL u_flow_ap31_11_a : std_logic;
SIGNAL u_flow_ap32_10_a : std_logic;
SIGNAL u_flow_ap32_9_a : std_logic;
SIGNAL u_flow_ap32_8_a : std_logic;
SIGNAL u_flow_ap31_7_a : std_logic;
SIGNAL u_flow_ap31_6_a : std_logic;
SIGNAL u_flow_ap32_5_a : std_logic;
SIGNAL u_flow_ap31_4_a : std_logic;
SIGNAL u_flow_ap32_3_a : std_logic;
SIGNAL u_flow_ap31_2_a : std_logic;
SIGNAL u_flow_ap31_1_a : std_logic;
SIGNAL u_flow_ap32_0_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx23445z2 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx23445z1 : std_logic;
SIGNAL u_flow_ap22_11_a : std_logic;
SIGNAL u_flow_ap21_7_a : std_logic;
SIGNAL u_flow_ap21_6_a : std_logic;
SIGNAL u_flow_ap22_4_a : std_logic;
SIGNAL u_flow_ap22_2_a : std_logic;
SIGNAL u_flow_ap22_1_a : std_logic;
SIGNAL u_flow_ap23_10_a : std_logic;
SIGNAL u_flow_ap23_9_a : std_logic;
SIGNAL u_flow_ap23_8_a : std_logic;
SIGNAL u_flow_ap23_5_a : std_logic;
SIGNAL u_flow_ap23_3_a : std_logic;
SIGNAL u_flow_ap23_0_a : std_logic;
SIGNAL f_t2_next_7_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_7_a : std_logic;
SIGNAL f_t2_7_a : std_logic;
SIGNAL f_t1_next_7_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_6_a : std_logic;
SIGNAL f_t1_next_6_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_6_a : std_logic;
SIGNAL f_t1_6_a : std_logic;
SIGNAL f_t2_next_5_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_5_a : std_logic;
SIGNAL f_t2_5_a : std_logic;
SIGNAL f_t1_next_5_a : std_logic;
SIGNAL f_t2_next_4_a : std_logic;
SIGNAL f_t1_next_4_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_4_a : std_logic;
SIGNAL f_t1_4_a : std_logic;
SIGNAL f_t2_next_3_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_3_a : std_logic;
SIGNAL f_t2_3_a : std_logic;
SIGNAL f_t1_next_3_a : std_logic;
SIGNAL f_t1_next_2_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_2_a : std_logic;
SIGNAL f_t1_2_a : std_logic;
SIGNAL f_t2_1_a : std_logic;
SIGNAL f_t1_0_a : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx40964z1 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx41961z1 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx42958z1 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx23445z2 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx23445z1 : std_logic;
SIGNAL f_t3_next_7_a : std_logic;
SIGNAL u_memory_ap_o_image0_0_7_a : std_logic;
SIGNAL f_t3_7_a : std_logic;
SIGNAL f_t3_6_a : std_logic;
SIGNAL f_t3_2_a : std_logic;
SIGNAL f_t3_next_1_a : std_logic;
SIGNAL f_t3_1_a : std_logic;
SIGNAL f_t3_0_a : std_logic;
SIGNAL u_flow_ap11_add9_1_anx38970z1 : std_logic;
SIGNAL f_b2_next_7_a : std_logic;
SIGNAL f_b2_7_a : std_logic;
SIGNAL f_b1_next_7_a : std_logic;
SIGNAL f_b1_6_a : std_logic;
SIGNAL f_b1_5_a : std_logic;
SIGNAL f_b1_4_a : std_logic;
SIGNAL f_b1_3_a : std_logic;
SIGNAL f_b1_2_a : std_logic;
SIGNAL f_b1_next_1_a : std_logic;
SIGNAL f_b1_1_a : std_logic;
SIGNAL f_b2_0_a : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx37973z1 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx40964z1 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx41961z1 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx42958z1 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx43955z1 : std_logic;
SIGNAL f_b3_next_7_a : std_logic;
SIGNAL f_b3_7_a : std_logic;
SIGNAL f_b3_2_a : std_logic;
SIGNAL f_b3_1_a : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx38970z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx40964z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx41961z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx43955z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx38970z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx39967z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx41961z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx44952z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z4 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx23445z2 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx23445z1 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx42958z1 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx43955z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx37973z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx39967z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx40964z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx41961z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx42958z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx44952z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx45949z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx40964z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx45949z1 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx37973z1 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx38970z1 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx40964z1 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx62798z1 : std_logic;
SIGNAL f_i2_next_7_a : std_logic;
SIGNAL f_i2_7_a : std_logic;
SIGNAL f_i1_next_7_a : std_logic;
SIGNAL f_i1_7_a : std_logic;
SIGNAL f_i2_next_6_a : std_logic;
SIGNAL f_i2_6_a : std_logic;
SIGNAL f_i2_next_5_a : std_logic;
SIGNAL f_i2_5_a : std_logic;
SIGNAL f_i2_next_4_a : std_logic;
SIGNAL f_i2_4_a : std_logic;
SIGNAL f_i1_3_a : std_logic;
SIGNAL f_i2_next_2_a : std_logic;
SIGNAL f_i2_2_a : std_logic;
SIGNAL f_i1_next_1_a : std_logic;
SIGNAL f_i1_1_a : std_logic;
SIGNAL f_i2_0_a : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx38970z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx42958z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z4 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx23445z2 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx23445z1 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx39967z1 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx41961z1 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z5 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx44952z1 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z3 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z1 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx23445z2 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx23445z1 : std_logic;
SIGNAL f_i_mode_next_0_a : std_logic;
SIGNAL f_i_row_next_1_a : std_logic;
SIGNAL f_i_row_next_3_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_5_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_1_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_1_7_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_2_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_2_6_afeeder_combout : std_logic;
SIGNAL u_flow_ap31_11_afeeder_combout : std_logic;
SIGNAL u_flow_ap31_7_afeeder_combout : std_logic;
SIGNAL u_flow_ap31_6_afeeder_combout : std_logic;
SIGNAL u_flow_ap31_4_afeeder_combout : std_logic;
SIGNAL u_flow_ap31_2_afeeder_combout : std_logic;
SIGNAL u_flow_ap31_1_afeeder_combout : std_logic;
SIGNAL u_flow_ap32_10_afeeder_combout : std_logic;
SIGNAL u_flow_ap32_9_afeeder_combout : std_logic;
SIGNAL u_flow_ap32_5_afeeder_combout : std_logic;
SIGNAL f_t1_next_7_afeeder_combout : std_logic;
SIGNAL f_i2_next_7_afeeder_combout : std_logic;
SIGNAL f_t1_next_6_afeeder_combout : std_logic;
SIGNAL f_i2_next_6_afeeder_combout : std_logic;
SIGNAL f_t1_next_5_afeeder_combout : std_logic;
SIGNAL f_i2_next_5_afeeder_combout : std_logic;
SIGNAL f_t1_next_4_afeeder_combout : std_logic;
SIGNAL f_i2_next_4_afeeder_combout : std_logic;
SIGNAL f_t1_next_3_afeeder_combout : std_logic;
SIGNAL f_t1_next_2_afeeder_combout : std_logic;
SIGNAL f_i2_next_2_afeeder_combout : std_logic;
SIGNAL f_t2_next_7_afeeder_combout : std_logic;
SIGNAL f_t2_next_5_afeeder_combout : std_logic;
SIGNAL f_t2_next_4_afeeder_combout : std_logic;
SIGNAL f_t2_next_3_afeeder_combout : std_logic;
SIGNAL f_b1_next_7_afeeder_combout : std_logic;
SIGNAL f_i1_next_7_afeeder_combout : std_logic;
SIGNAL f_b1_next_1_afeeder_combout : std_logic;
SIGNAL f_i1_next_1_afeeder_combout : std_logic;
SIGNAL f_b2_next_7_afeeder_combout : std_logic;
SIGNAL f_b3_next_7_afeeder_combout : std_logic;
SIGNAL f_t3_next_7_afeeder_combout : std_logic;
SIGNAL f_t3_next_1_afeeder_combout : std_logic;
SIGNAL f_i_row_next_1_afeeder_combout : std_logic;
SIGNAL f_i_row_next_3_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL u_flow_astate_3_a_wirecell_combout : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx51271z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z15_afeeder_combout : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx55259z1 : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx51271z1 : std_logic;
SIGNAL u_memory_anx8852z1 : std_logic;
SIGNAL debug_valid_dup0 : std_logic;
SIGNAL u_memory_anot_rtlc2_X_0_n244 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx57253z3 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z15 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z14 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx52268z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z13 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z12 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z10 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx54262z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z9 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z8 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z6 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z4 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx57253z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z3 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx56256z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z5 : std_logic;
SIGNAL u_memory_anx8852z6 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx53265z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z11 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx55259z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z7 : std_logic;
SIGNAL u_memory_anx8852z7 : std_logic;
SIGNAL u_memory_anx8852z2 : std_logic;
SIGNAL u_memory_anx47386z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx57253z3 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z7 : std_logic;
SIGNAL u_memory_anx8852z5 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z4 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx57253z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z3 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx52268z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z13 : std_logic;
SIGNAL u_memory_anx8852z4 : std_logic;
SIGNAL u_memory_anx8852z3 : std_logic;
SIGNAL u_memory_anx47386z2 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z15 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z14 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z12 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx53265z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z11 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z10 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z8 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z6 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx56256z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z5 : std_logic;
SIGNAL u_memory_anx60567z4 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z2 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx58250z1 : std_logic;
SIGNAL u_memory_amodgen_counter_row_anx1041z1 : std_logic;
SIGNAL u_memory_anx60567z3 : std_logic;
SIGNAL u_memory_anx60567z2 : std_logic;
SIGNAL u_memory_anx60567z1 : std_logic;
SIGNAL u_memory_ap_o_valid : std_logic;
SIGNAL nx64956z1 : std_logic;
SIGNAL f_state_3_a : std_logic;
SIGNAL f_state_3_a_wirecell_combout : std_logic;
SIGNAL nx63959z1 : std_logic;
SIGNAL nx63959z1_a_wirecell_combout : std_logic;
SIGNAL f_state_1_a : std_logic;
SIGNAL f_state_2_a : std_logic;
SIGNAL nx57127z2 : std_logic;
SIGNAL nx20836z1 : std_logic;
SIGNAL u_flow_ap20 : std_logic;
SIGNAL u_flow_ap30 : std_logic;
SIGNAL u_flow_ap40 : std_logic;
SIGNAL u_flow_anx29521z1 : std_logic;
SIGNAL u_flow_anx28524z1 : std_logic;
SIGNAL u_flow_anx28524z1_a_wirecell_combout : std_logic;
SIGNAL u_flow_astate_1_a : std_logic;
SIGNAL u_flow_astate_2_a : std_logic;
SIGNAL u_flow_astate_3_a : std_logic;
SIGNAL u_flow_ao_valid : std_logic;
SIGNAL debug_num_2_dup0_7_a : std_logic;
SIGNAL u_memory_anx40106z1 : std_logic;
SIGNAL u_memory_anx39109z3 : std_logic;
SIGNAL u_memory_anx39109z2 : std_logic;
SIGNAL u_memory_ap_debug_num_1_2_a : std_logic;
SIGNAL u_memory_ap_debug_num_1_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_debug_num_1_0_a : std_logic;
SIGNAL u_memory_ap_debug_num_1_1_a : std_logic;
SIGNAL u_memory_aNOT_b_0_a : std_logic;
SIGNAL debug_num_2_dup0_0_a : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx54262z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z9 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z2 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx58250z1 : std_logic;
SIGNAL u_memory_amodgen_counter_column_anx1041z1 : std_logic;
SIGNAL debug_num_2_dup0_1_a : std_logic;
SIGNAL debug_num_2_dup0_2_a : std_logic;
SIGNAL debug_num_2_dup0_3_a : std_logic;
SIGNAL debug_num_2_dup0_4_a : std_logic;
SIGNAL debug_num_2_dup0_5_a : std_logic;
SIGNAL debug_num_2_dup0_6_a : std_logic;
SIGNAL u_memory_anx63578z2 : std_logic;
SIGNAL u_memory_anx63578z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_7_afeeder_combout : std_logic;
SIGNAL u_memory_ab_1_a : std_logic;
SIGNAL u_memory_ap_o_image2_0_7_a : std_logic;
SIGNAL f_b1_7_a : std_logic;
SIGNAL u_memory_aNOT_b_0_dup_353 : std_logic;
SIGNAL u_memory_anx61362z2 : std_logic;
SIGNAL u_memory_anx61362z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_6_afeeder_combout : std_logic;
SIGNAL u_memory_ab_1_dup_352 : std_logic;
SIGNAL u_memory_ap_o_image2_1_6_a : std_logic;
SIGNAL f_b2_6_a : std_logic;
SIGNAL f_b3_next_5_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_5_afeeder_combout : std_logic;
SIGNAL u_memory_anx50245z1 : std_logic;
SIGNAL u_memory_ap_o_image2_2_5_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_5_a : std_logic;
SIGNAL nx57127z1 : std_logic;
SIGNAL f_b3_next_5_a : std_logic;
SIGNAL f_b2_next_5_afeeder_combout : std_logic;
SIGNAL f_b2_next_5_a : std_logic;
SIGNAL u_memory_anx60365z2 : std_logic;
SIGNAL u_memory_anx60365z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_5_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_5_a : std_logic;
SIGNAL f_b2_5_a : std_logic;
SIGNAL f_b3_next_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_4_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_4_a : std_logic;
SIGNAL f_b3_next_4_a : std_logic;
SIGNAL f_b2_next_4_afeeder_combout : std_logic;
SIGNAL f_b2_next_4_a : std_logic;
SIGNAL u_memory_anx59368z2 : std_logic;
SIGNAL u_memory_anx59368z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_4_a : std_logic;
SIGNAL f_b2_4_a : std_logic;
SIGNAL f_b2_next_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_3_a : std_logic;
SIGNAL f_b2_next_3_a : std_logic;
SIGNAL f_b2_3_a : std_logic;
SIGNAL f_b3_next_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_2_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_2_a : std_logic;
SIGNAL f_b3_next_2_a : std_logic;
SIGNAL f_b2_next_2_afeeder_combout : std_logic;
SIGNAL f_b2_next_2_a : std_logic;
SIGNAL f_b2_2_a : std_logic;
SIGNAL u_memory_anx56377z3 : std_logic;
SIGNAL u_memory_anx56377z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_1_a : std_logic;
SIGNAL f_t2_next_1_afeeder_combout : std_logic;
SIGNAL u_memory_anx4024z3 : std_logic;
SIGNAL u_memory_anx4024z2 : std_logic;
SIGNAL u_memory_anx4024z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_1_a : std_logic;
SIGNAL u_memory_ap_o_image1_0_1_a : std_logic;
SIGNAL u_memory_ap_o_image0_0_1_a : std_logic;
SIGNAL f_t2_next_1_a : std_logic;
SIGNAL f_t1_next_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_1_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_1_a : std_logic;
SIGNAL f_t1_next_1_a : std_logic;
SIGNAL f_i2_next_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_1_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_1_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_1_a : std_logic;
SIGNAL f_i2_next_1_a : std_logic;
SIGNAL f_b3_next_1_afeeder_combout : std_logic;
SIGNAL f_b3_next_1_a : std_logic;
SIGNAL f_b2_next_1_afeeder_combout : std_logic;
SIGNAL f_b2_next_1_a : std_logic;
SIGNAL f_b2_1_a : std_logic;
SIGNAL f_i1_next_0_afeeder_combout : std_logic;
SIGNAL u_memory_anx5021z3 : std_logic;
SIGNAL u_memory_anx5021z2 : std_logic;
SIGNAL u_memory_anx5021z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_0_a : std_logic;
SIGNAL f_i1_next_0_a : std_logic;
SIGNAL f_t3_next_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_0_0_a : std_logic;
SIGNAL f_t3_next_0_a : std_logic;
SIGNAL f_t2_next_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_0_0_a : std_logic;
SIGNAL f_t2_next_0_a : std_logic;
SIGNAL f_t1_next_0_afeeder_combout : std_logic;
SIGNAL u_memory_anx55380z3 : std_logic;
SIGNAL u_memory_anx55380z2 : std_logic;
SIGNAL u_memory_anx55380z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_0_a : std_logic;
SIGNAL u_memory_ap_o_image1_1_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_0_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_0_a : std_logic;
SIGNAL f_t1_next_0_a : std_logic;
SIGNAL f_i2_next_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_0_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_0_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_0_a : std_logic;
SIGNAL f_i2_next_0_a : std_logic;
SIGNAL f_b3_next_0_afeeder_combout : std_logic;
SIGNAL f_b3_next_0_a : std_logic;
SIGNAL f_b2_next_0_afeeder_combout : std_logic;
SIGNAL f_b2_next_0_a : std_logic;
SIGNAL f_b1_next_0_afeeder_combout : std_logic;
SIGNAL f_b1_next_0_a : std_logic;
SIGNAL f_b1_0_a : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z22 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z19 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z16 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z13 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z10 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z7 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z4 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx23445z2 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx23445z1 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx44952z1 : std_logic;
SIGNAL f_b3_next_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_6_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_6_a : std_logic;
SIGNAL f_b3_next_6_a : std_logic;
SIGNAL f_b3_6_a : std_logic;
SIGNAL f_b3_5_a : std_logic;
SIGNAL f_b3_4_a : std_logic;
SIGNAL f_i2_next_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_2_3_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_3_a : std_logic;
SIGNAL f_i2_next_3_a : std_logic;
SIGNAL f_b3_next_3_afeeder_combout : std_logic;
SIGNAL f_b3_next_3_a : std_logic;
SIGNAL f_b3_3_a : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx39967z1 : std_logic;
SIGNAL u_flow_ap12_add8_0i2_anx38970z1 : std_logic;
SIGNAL f_b3_0_a : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z24 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z21 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z18 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z15 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z12 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z9 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z6 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z3 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx23445z2 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx23445z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx45949z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx44952z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx43955z1 : std_logic;
SIGNAL u_memory_anx1033z2 : std_logic;
SIGNAL u_memory_anx1033z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_4_a : std_logic;
SIGNAL u_memory_ap_o_image1_0_4_a : std_logic;
SIGNAL u_memory_ap_o_image0_0_4_a : std_logic;
SIGNAL f_b1_next_4_afeeder_combout : std_logic;
SIGNAL f_b1_next_4_a : std_logic;
SIGNAL f_i1_next_4_afeeder_combout : std_logic;
SIGNAL f_i1_next_4_a : std_logic;
SIGNAL f_t3_next_4_afeeder_combout : std_logic;
SIGNAL f_t3_next_4_a : std_logic;
SIGNAL f_t3_4_a : std_logic;
SIGNAL u_memory_anx2030z2 : std_logic;
SIGNAL u_memory_anx2030z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_3_a : std_logic;
SIGNAL u_memory_ap_o_image1_0_3_a : std_logic;
SIGNAL u_memory_ap_o_image0_0_3_a : std_logic;
SIGNAL f_b1_next_3_afeeder_combout : std_logic;
SIGNAL u_memory_anx58371z2 : std_logic;
SIGNAL u_memory_anx58371z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_3_a : std_logic;
SIGNAL f_b1_next_3_a : std_logic;
SIGNAL f_i1_next_3_afeeder_combout : std_logic;
SIGNAL f_i1_next_3_a : std_logic;
SIGNAL f_t3_next_3_afeeder_combout : std_logic;
SIGNAL f_t3_next_3_a : std_logic;
SIGNAL f_t3_3_a : std_logic;
SIGNAL f_b1_next_2_afeeder_combout : std_logic;
SIGNAL u_memory_anx57374z2 : std_logic;
SIGNAL u_memory_anx57374z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_2_a : std_logic;
SIGNAL f_b1_next_2_a : std_logic;
SIGNAL f_i1_next_2_afeeder_combout : std_logic;
SIGNAL u_memory_anx3027z2 : std_logic;
SIGNAL u_memory_anx3027z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_2_a : std_logic;
SIGNAL f_i1_next_2_a : std_logic;
SIGNAL f_t3_next_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_0_2_a : std_logic;
SIGNAL f_t3_next_2_a : std_logic;
SIGNAL f_t2_next_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_0_2_a : std_logic;
SIGNAL f_t2_next_2_a : std_logic;
SIGNAL u_memory_ap_o_image1_1_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_2_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_2_a : std_logic;
SIGNAL f_t2_2_a : std_logic;
SIGNAL f_t1_1_a : std_logic;
SIGNAL f_t2_0_a : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z22 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z19 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx39967z1 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx38970z1 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx37973z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z24 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z21 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z18 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z15 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx41961z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx40964z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx40964z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx39967z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx37973z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx37973z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z29 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z27 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z24 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z21 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z18 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z15 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z12 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z9 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z6 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx45949z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx44952z1 : std_logic;
SIGNAL u_memory_ap_o_image2_2_7_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_2_7_a : std_logic;
SIGNAL u_memory_ap_o_image1_2_7_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_7_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_2_7_a : std_logic;
SIGNAL f_t1_7_a : std_logic;
SIGNAL f_b2_next_6_afeeder_combout : std_logic;
SIGNAL f_b2_next_6_a : std_logic;
SIGNAL f_b1_next_6_afeeder_combout : std_logic;
SIGNAL f_b1_next_6_a : std_logic;
SIGNAL f_i1_next_6_afeeder_combout : std_logic;
SIGNAL u_memory_anx64575z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_6_a : std_logic;
SIGNAL f_i1_next_6_a : std_logic;
SIGNAL f_t3_next_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_0_6_a : std_logic;
SIGNAL f_t3_next_6_a : std_logic;
SIGNAL f_t2_next_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_0_6_a : std_logic;
SIGNAL f_t2_next_6_a : std_logic;
SIGNAL f_t2_6_a : std_logic;
SIGNAL u_memory_ap_o_image0_2_5_a : std_logic;
SIGNAL f_t1_5_a : std_logic;
SIGNAL u_memory_ap_o_image1_1_4_a : std_logic;
SIGNAL u_memory_ap_o_image0_1_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image0_1_4_a : std_logic;
SIGNAL f_t2_4_a : std_logic;
SIGNAL f_t1_3_a : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z16 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z13 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z10 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z7 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z4 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx44952z1 : std_logic;
SIGNAL u_flow_ap11_add8_0i1_anx43955z1 : std_logic;
SIGNAL u_memory_anx36z2 : std_logic;
SIGNAL u_memory_anx36z1 : std_logic;
SIGNAL u_memory_ap_o_image2_0_5_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_0_5_a : std_logic;
SIGNAL u_memory_ap_o_image1_0_5_a : std_logic;
SIGNAL u_memory_ap_o_image0_0_5_a : std_logic;
SIGNAL f_b1_next_5_afeeder_combout : std_logic;
SIGNAL f_b1_next_5_a : std_logic;
SIGNAL f_i1_next_5_afeeder_combout : std_logic;
SIGNAL f_i1_next_5_a : std_logic;
SIGNAL f_t3_next_5_afeeder_combout : std_logic;
SIGNAL f_t3_next_5_a : std_logic;
SIGNAL f_t3_5_a : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z12 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z9 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z6 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx44952z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx43955z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx42958z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx39967z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx38970z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z28 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z25 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z22 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z19 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z16 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z13 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z10 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx46946z7 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx45949z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx42958z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx43955z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx42958z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx39967z1 : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx40964z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx37973z1 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z32 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z29 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z26 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z23 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z20 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z17 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z14 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z11 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z8 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx46946z1 : std_logic;
SIGNAL u_flow_ap21_10_a : std_logic;
SIGNAL u_flow_ap31_10_afeeder_combout : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z3 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx23445z2 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx23445z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx45949z1 : std_logic;
SIGNAL u_flow_ap12_add9_2_anx41961z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z28 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z25 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z22 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z19 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z16 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z13 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z10 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z7 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z4 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx23445z2 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx23445z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx46946z1 : std_logic;
SIGNAL u_flow_ap11_add9_1_anx42958z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z29 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z27 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z24 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z21 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z18 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z15 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z12 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx43955z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx44952z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx43955z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx42958z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx41961z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx38970z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx39967z1 : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx38970z1 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z32 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z29 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z26 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z23 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z20 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z17 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z14 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z11 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z8 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx46946z1 : std_logic;
SIGNAL u_flow_ap22_10_a : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z3 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx23445z2 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx23445z1 : std_logic;
SIGNAL u_flow_ap21_sub11_4i4_anx46946z1 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z6 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z4 : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx63795z1 : std_logic;
SIGNAL u_flow_ap21_12_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx62798z1 : std_logic;
SIGNAL u_flow_ap21_11_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx45949z1 : std_logic;
SIGNAL u_flow_ap21_9_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx44952z1 : std_logic;
SIGNAL u_flow_ap21_8_a : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx43955z1 : std_logic;
SIGNAL u_flow_ap22_7_a : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx42958z1 : std_logic;
SIGNAL u_flow_ap22_6_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx41961z1 : std_logic;
SIGNAL u_flow_ap21_5_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx40964z1 : std_logic;
SIGNAL u_flow_ap21_4_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx39967z1 : std_logic;
SIGNAL u_flow_ap21_3_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx38970z1 : std_logic;
SIGNAL u_flow_ap21_2_a : std_logic;
SIGNAL u_flow_ap21_add12_4i1_anx37973z1 : std_logic;
SIGNAL u_flow_ap21_1_a : std_logic;
SIGNAL u_flow_ap21_sub10_4i3_anx37973z1 : std_logic;
SIGNAL u_flow_ap21_0_a : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z37 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z34 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z31 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z28 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z25 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z22 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z19 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z16 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z13 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z10 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z7 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z4 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z1 : std_logic;
SIGNAL u_flow_ap31_10_a : std_logic;
SIGNAL u_flow_ap31_9_afeeder_combout : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx45949z1 : std_logic;
SIGNAL u_flow_ap22_9_a : std_logic;
SIGNAL u_flow_ap31_9_a : std_logic;
SIGNAL u_flow_ap31_8_afeeder_combout : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx44952z1 : std_logic;
SIGNAL u_flow_ap22_8_a : std_logic;
SIGNAL u_flow_ap31_8_a : std_logic;
SIGNAL f_i1_6_a : std_logic;
SIGNAL f_i1_5_a : std_logic;
SIGNAL f_i1_4_a : std_logic;
SIGNAL f_i2_3_a : std_logic;
SIGNAL f_i1_2_a : std_logic;
SIGNAL f_i2_1_a : std_logic;
SIGNAL f_i1_0_a : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z22 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z19 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z16 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z13 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z10 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx44952z7 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx43955z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx41961z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx40964z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx39967z1 : std_logic;
SIGNAL u_flow_ap13_add8_0i3_anx37973z1 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z17 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z15 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z13 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z11 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z9 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx45949z7 : std_logic;
SIGNAL u_flow_ap13_add9_3_anx43955z1 : std_logic;
SIGNAL u_flow_ap23_7_a : std_logic;
SIGNAL u_flow_ap32_7_a : std_logic;
SIGNAL u_flow_ap13_add9_3_anx42958z1 : std_logic;
SIGNAL u_flow_ap23_6_a : std_logic;
SIGNAL u_flow_ap32_6_a : std_logic;
SIGNAL u_flow_ap31_5_afeeder_combout : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx41961z1 : std_logic;
SIGNAL u_flow_ap22_5_a : std_logic;
SIGNAL u_flow_ap31_5_a : std_logic;
SIGNAL u_flow_ap13_add9_3_anx40964z1 : std_logic;
SIGNAL u_flow_ap23_4_a : std_logic;
SIGNAL u_flow_ap32_4_afeeder_combout : std_logic;
SIGNAL u_flow_ap32_4_a : std_logic;
SIGNAL u_flow_ap31_3_afeeder_combout : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx39967z1 : std_logic;
SIGNAL u_flow_ap22_3_a : std_logic;
SIGNAL u_flow_ap31_3_a : std_logic;
SIGNAL u_flow_ap13_add9_3_anx38970z1 : std_logic;
SIGNAL u_flow_ap23_2_a : std_logic;
SIGNAL u_flow_ap32_2_afeeder_combout : std_logic;
SIGNAL u_flow_ap32_2_a : std_logic;
SIGNAL u_flow_ap13_add9_3_anx37973z1 : std_logic;
SIGNAL u_flow_ap23_1_a : std_logic;
SIGNAL u_flow_ap32_1_afeeder_combout : std_logic;
SIGNAL u_flow_ap32_1_a : std_logic;
SIGNAL u_flow_ap31_0_afeeder_combout : std_logic;
SIGNAL u_flow_ap22_sub10_4i5_anx37973z1 : std_logic;
SIGNAL u_flow_ap22_0_a : std_logic;
SIGNAL u_flow_ap31_0_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z33 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z30 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z27 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z24 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z21 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z18 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z15 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z12 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z9 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z6 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx62798z1 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx44952z1 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx46946z1 : std_logic;
SIGNAL u_flow_anx26026z4 : std_logic;
SIGNAL u_flow_ap31_12_afeeder_combout : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z9 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z6 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z3 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx23445z2 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx23445z1 : std_logic;
SIGNAL u_flow_ap22_sub11_4i6_anx46946z1 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z6 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z4 : std_logic;
SIGNAL u_flow_ap22_add12_4i2_anx63795z1 : std_logic;
SIGNAL u_flow_ap22_12_a : std_logic;
SIGNAL u_flow_ap31_12_a : std_logic;
SIGNAL u_flow_anx26026z2 : std_logic;
SIGNAL u_flow_anx26026z1 : std_logic;
SIGNAL u_flow_ap41 : std_logic;
SIGNAL u_flow_anx5049z1 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx42958z1 : std_logic;
SIGNAL u_flow_ap43_5_a : std_logic;
SIGNAL u_flow_aprev_max_5_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx41961z1 : std_logic;
SIGNAL u_flow_ap43_4_a : std_logic;
SIGNAL u_flow_anx47310z10 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx40964z1 : std_logic;
SIGNAL u_flow_ap43_3_a : std_logic;
SIGNAL u_flow_aprev_max_3_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx39967z1 : std_logic;
SIGNAL u_flow_ap43_2_a : std_logic;
SIGNAL u_flow_aprev_max_2_a : std_logic;
SIGNAL u_flow_anx47310z11 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx37973z1 : std_logic;
SIGNAL u_flow_ap43_0_a : std_logic;
SIGNAL u_flow_aprev_max_0_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx38970z1 : std_logic;
SIGNAL u_flow_ap43_1_a : std_logic;
SIGNAL u_flow_anx47310z12 : std_logic;
SIGNAL u_flow_anx47310z4 : std_logic;
SIGNAL u_flow_aix45188z19900_anx100z1_a_wirecell_combout : std_logic;
SIGNAL u_flow_ap35 : std_logic;
SIGNAL u_flow_ap45_afeeder_combout : std_logic;
SIGNAL u_flow_ap45 : std_logic;
SIGNAL u_flow_amax_fwd : std_logic;
SIGNAL u_flow_ap4s_13_a : std_logic;
SIGNAL u_flow_ap43_13_a : std_logic;
SIGNAL u_flow_aprev_max_13_a : std_logic;
SIGNAL u_flow_ap4s_12_a : std_logic;
SIGNAL u_flow_ap43_12_a : std_logic;
SIGNAL u_flow_aprev_max_12_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z3 : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx63795z1 : std_logic;
SIGNAL u_flow_ap43_11_a : std_logic;
SIGNAL u_flow_aprev_max_11_a : std_logic;
SIGNAL u_flow_ap43_10_a : std_logic;
SIGNAL u_flow_aprev_max_10_a : std_logic;
SIGNAL u_flow_ap43_9_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx45949z1 : std_logic;
SIGNAL u_flow_ap43_8_a : std_logic;
SIGNAL u_flow_aprev_max_8_a : std_logic;
SIGNAL u_flow_ap43_7_afeeder_combout : std_logic;
SIGNAL u_flow_ap43_7_a : std_logic;
SIGNAL u_flow_ap4s_sub12_0_anx43955z1 : std_logic;
SIGNAL u_flow_ap43_6_a : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z40 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z37 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z34 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z31 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z28 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z25 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z22 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z19 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z16 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z13 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z10 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z7 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z4 : std_logic;
SIGNAL u_flow_aix47310z8933_anx100z1 : std_logic;
SIGNAL u_flow_anx47310z2 : std_logic;
SIGNAL u_flow_anx47310z1 : std_logic;
SIGNAL u_flow_aprev_edge : std_logic;
SIGNAL u_flow_ao_edge_afeeder_combout : std_logic;
SIGNAL u_flow_anx30752z1 : std_logic;
SIGNAL u_flow_ao_edge : std_logic;
SIGNAL u_flow_anx27830z1 : std_logic;
SIGNAL u_flow_amax_dir_0_a : std_logic;
SIGNAL u_flow_ao_dir_0_a : std_logic;
SIGNAL u_flow_anx26833z3 : std_logic;
SIGNAL u_flow_anx26833z1 : std_logic;
SIGNAL u_flow_amax_dir_1_a : std_logic;
SIGNAL u_flow_ao_dir_1_a : std_logic;
SIGNAL u_flow_anx25836z3 : std_logic;
SIGNAL u_flow_anx25836z2 : std_logic;
SIGNAL u_flow_anx25836z1 : std_logic;
SIGNAL u_flow_amax_dir_2_a : std_logic;
SIGNAL u_flow_ao_dir_2_a : std_logic;
SIGNAL u_memory_anx33254z1 : std_logic;
SIGNAL u_memory_abusySignal : std_logic;
SIGNAL u_memory_abusySignalDelayed_afeeder_combout : std_logic;
SIGNAL u_memory_abusySignalDelayed : std_logic;
SIGNAL u_memory_ap_o_mode_0_a : std_logic;
SIGNAL i_reset_int_a_wirecell_combout : std_logic;
SIGNAL nx35105z1 : std_logic;
SIGNAL f_i_mode_next_1_a : std_logic;
SIGNAL f_i_mode_1_a : std_logic;
SIGNAL u_flow_anx41013z1 : std_logic;
SIGNAL u_flow_anx46148z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx46148z1 : std_logic;
SIGNAL u_flow_anx14253z1 : std_logic;
SIGNAL u_flow_ap5m_1_a : std_logic;
SIGNAL f_i_mode_0_a : std_logic;
SIGNAL u_flow_anx42010z1 : std_logic;
SIGNAL u_flow_anx47145z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx47145z1 : std_logic;
SIGNAL u_flow_anx13256z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx13256z1 : std_logic;
SIGNAL u_flow_ap5m_0_afeeder_combout : std_logic;
SIGNAL u_flow_ap5m_0_a : std_logic;
SIGNAL o_mode_dup0_0_a : std_logic;
SIGNAL u_memory_ap_o_row_0_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_0_a : std_logic;
SIGNAL f_i_row_next_0_afeeder_combout : std_logic;
SIGNAL f_i_row_next_0_a : std_logic;
SIGNAL f_i_row_0_a : std_logic;
SIGNAL u_flow_anx22790z1 : std_logic;
SIGNAL u_flow_anx27925z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx27925z1 : std_logic;
SIGNAL u_flow_anx41852z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx41852z1 : std_logic;
SIGNAL nx16335z1_afeeder_combout : std_logic;
SIGNAL nx16335z1 : std_logic;
SIGNAL u_memory_ap_o_row_1_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_1_a : std_logic;
SIGNAL f_i_row_1_a : std_logic;
SIGNAL u_flow_anx21793z1 : std_logic;
SIGNAL u_flow_anx26928z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx26928z1 : std_logic;
SIGNAL u_flow_anx34065z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx34065z1 : std_logic;
SIGNAL nx17332z1_afeeder_combout : std_logic;
SIGNAL nx17332z1 : std_logic;
SIGNAL u_memory_ap_o_row_2_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_2_a : std_logic;
SIGNAL f_i_row_next_2_afeeder_combout : std_logic;
SIGNAL f_i_row_next_2_a : std_logic;
SIGNAL f_i_row_2_a : std_logic;
SIGNAL u_flow_anx20796z1 : std_logic;
SIGNAL u_flow_anx25931z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx25931z1 : std_logic;
SIGNAL u_flow_anx39258z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx39258z1 : std_logic;
SIGNAL nx18329z1 : std_logic;
SIGNAL u_memory_ap_o_row_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_3_a : std_logic;
SIGNAL f_i_row_3_a : std_logic;
SIGNAL u_flow_anx19799z1 : std_logic;
SIGNAL u_flow_anx24934z1 : std_logic;
SIGNAL u_flow_anx47045z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx47045z1 : std_logic;
SIGNAL nx19326z1_afeeder_combout : std_logic;
SIGNAL nx19326z1 : std_logic;
SIGNAL u_memory_ap_o_row_4_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_4_a : std_logic;
SIGNAL f_i_row_next_4_a : std_logic;
SIGNAL f_i_row_4_a : std_logic;
SIGNAL u_flow_anx18802z1 : std_logic;
SIGNAL u_flow_anx23937z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx23937z1 : std_logic;
SIGNAL u_flow_anx54832z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx54832z1 : std_logic;
SIGNAL nx20323z1_afeeder_combout : std_logic;
SIGNAL nx20323z1 : std_logic;
SIGNAL u_memory_ap_o_row_5_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_5_a : std_logic;
SIGNAL f_i_row_next_5_a : std_logic;
SIGNAL f_i_row_5_a : std_logic;
SIGNAL u_flow_anx17805z1 : std_logic;
SIGNAL u_flow_anx22940z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx22940z1 : std_logic;
SIGNAL u_flow_anx62619z1 : std_logic;
SIGNAL nx21320z1_afeeder_combout : std_logic;
SIGNAL nx21320z1 : std_logic;
SIGNAL u_memory_ap_o_row_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_6_a : std_logic;
SIGNAL f_i_row_next_6_a : std_logic;
SIGNAL f_i_row_6_a : std_logic;
SIGNAL u_flow_anx16808z1 : std_logic;
SIGNAL u_flow_anx21943z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx21943z1 : std_logic;
SIGNAL u_flow_anx22927z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx22927z1 : std_logic;
SIGNAL nx22317z1_afeeder_combout : std_logic;
SIGNAL nx22317z1 : std_logic;
SIGNAL u_memory_ap_o_row_7_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_row_7_a : std_logic;
SIGNAL f_i_row_next_7_a : std_logic;
SIGNAL f_i_row_7_a : std_logic;
SIGNAL u_flow_anx15811z1 : std_logic;
SIGNAL u_flow_anx20946z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx20946z1 : std_logic;
SIGNAL u_flow_anx30714z1_afeeder_combout : std_logic;
SIGNAL u_flow_anx30714z1 : std_logic;
SIGNAL nx23314z1_afeeder_combout : std_logic;
SIGNAL nx23314z1 : std_logic;
SIGNAL nx59473z1 : std_logic;
SIGNAL nx58476z1 : std_logic;
SIGNAL nx57479z1_afeeder_combout : std_logic;
SIGNAL nx57479z1 : std_logic;
SIGNAL nx56482z1 : std_logic;
SIGNAL nx55485z1 : std_logic;
SIGNAL nx54488z1 : std_logic;
SIGNAL nx53491z1 : std_logic;
SIGNAL u_memory_ap_o_image1_0_7_a : std_logic;
SIGNAL nx52494z1 : std_logic;
SIGNAL nx64608z1 : std_logic;
SIGNAL nx63611z1 : std_logic;
SIGNAL nx62614z1_afeeder_combout : std_logic;
SIGNAL nx62614z1 : std_logic;
SIGNAL u_memory_ap_o_image1_1_3_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_3_a : std_logic;
SIGNAL nx61617z1 : std_logic;
SIGNAL nx60620z1_afeeder_combout : std_logic;
SIGNAL nx60620z1 : std_logic;
SIGNAL u_memory_ap_o_image1_1_5_a : std_logic;
SIGNAL nx59623z1 : std_logic;
SIGNAL u_memory_ap_o_image1_1_6_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_6_a : std_logic;
SIGNAL nx58626z1 : std_logic;
SIGNAL u_memory_ap_o_image2_1_7_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image2_1_7_a : std_logic;
SIGNAL u_memory_ap_o_image1_1_7_afeeder_combout : std_logic;
SIGNAL u_memory_ap_o_image1_1_7_a : std_logic;
SIGNAL nx57629z1_afeeder_combout : std_logic;
SIGNAL nx57629z1 : std_logic;
SIGNAL nx4207z1 : std_logic;
SIGNAL nx3210z1_afeeder_combout : std_logic;
SIGNAL nx3210z1 : std_logic;
SIGNAL nx2213z1_afeeder_combout : std_logic;
SIGNAL nx2213z1 : std_logic;
SIGNAL nx1216z1_afeeder_combout : std_logic;
SIGNAL nx1216z1 : std_logic;
SIGNAL nx219z1_afeeder_combout : std_logic;
SIGNAL nx219z1 : std_logic;
SIGNAL nx64758z1 : std_logic;
SIGNAL nx63761z1 : std_logic;
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
SIGNAL nx45196z1 : std_logic;
SIGNAL nx46193z1 : std_logic;
SIGNAL nx47190z1 : std_logic;
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
SIGNAL nx32932z1 : std_logic;
SIGNAL nx33929z1_afeeder_combout : std_logic;
SIGNAL nx33929z1 : std_logic;
SIGNAL nx34926z1 : std_logic;
SIGNAL nx35923z1_afeeder_combout : std_logic;
SIGNAL nx35923z1 : std_logic;
SIGNAL nx36920z1 : std_logic;
SIGNAL nx37917z1 : std_logic;
SIGNAL nx4807z1 : std_logic;
SIGNAL u_memory_ap_o_column_2_a : std_logic;
SIGNAL u_memory_ap_o_column_3_a : std_logic;
SIGNAL u_memory_ap_o_column_4_a : std_logic;
SIGNAL u_memory_anx60567z5 : std_logic;
SIGNAL u_memory_ap_o_column_5_a : std_logic;
SIGNAL u_memory_ap_o_column_6_a : std_logic;
SIGNAL u_memory_ap_o_column_7_a : std_logic;
SIGNAL u_memory_ap_debug_num_0_0_afeeder_combout : std_logic;
SIGNAL u_memory_anx15763z2 : std_logic;
SIGNAL u_memory_ap_debug_num_0_0_a : std_logic;
SIGNAL u_memory_anx17757z1 : std_logic;
SIGNAL u_memory_ap_debug_num_0_1_a : std_logic;
SIGNAL u_memory_ap_debug_num_0_2_a : std_logic;
SIGNAL u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL i_pixel_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_i_reset_acombout : std_logic;
SIGNAL ALT_INV_u_memory_amodgen_counter_column_anx58250z13 : std_logic;
SIGNAL ALT_INV_debug_valid_dup0 : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_pixel <= i_pixel;
o_valid <= ww_o_valid;
o_edge <= ww_o_edge;
o_dir <= ww_o_dir;
o_mode <= ww_o_mode;
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
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_column <= ww_debug_column;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_valid <= ww_debug_valid;
debug_num_0 <= ww_debug_num_0;
debug_num_1 <= ww_debug_num_1;
debug_num_2 <= ww_debug_num_2;
debug_num_3 <= ww_debug_num_3;
debug_num_4 <= ww_debug_num_4;
debug_num_5 <= ww_debug_num_5;
debug_num_6 <= ww_debug_num_6;
debug_num_7 <= ww_debug_num_7;
debug_num_8 <= ww_debug_num_8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (debug_num_2_dup0_7_a & debug_num_2_dup0_6_a & debug_num_2_dup0_5_a & debug_num_2_dup0_4_a & debug_num_2_dup0_3_a & debug_num_2_dup0_2_a & debug_num_2_dup0_1_a & 
debug_num_2_dup0_0_a);

u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (u_memory_amodgen_counter_column_anx1041z1 & u_memory_amodgen_counter_column_anx58250z3 & u_memory_amodgen_counter_column_anx58250z5 & 
u_memory_amodgen_counter_column_anx58250z7 & u_memory_amodgen_counter_column_anx58250z9 & u_memory_amodgen_counter_column_anx58250z11 & u_memory_amodgen_counter_column_anx58250z13 & u_memory_amodgen_counter_column_anx58250z15);

u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7) <= u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (debug_num_2_dup0_7_a & debug_num_2_dup0_6_a & debug_num_2_dup0_5_a & debug_num_2_dup0_4_a & debug_num_2_dup0_3_a & debug_num_2_dup0_2_a & debug_num_2_dup0_1_a & 
debug_num_2_dup0_0_a);

u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (u_memory_amodgen_counter_column_anx1041z1 & u_memory_amodgen_counter_column_anx58250z3 & u_memory_amodgen_counter_column_anx58250z5 & 
u_memory_amodgen_counter_column_anx58250z7 & u_memory_amodgen_counter_column_anx58250z9 & u_memory_amodgen_counter_column_anx58250z11 & u_memory_amodgen_counter_column_anx58250z13 & u_memory_amodgen_counter_column_anx58250z15);

u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(0) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(1) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(2) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(3) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(4) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(5) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(6) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(7) <= u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (debug_num_2_dup0_7_a & debug_num_2_dup0_6_a & debug_num_2_dup0_5_a & debug_num_2_dup0_4_a & debug_num_2_dup0_3_a & debug_num_2_dup0_2_a & debug_num_2_dup0_1_a & 
debug_num_2_dup0_0_a);

u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (u_memory_amodgen_counter_column_anx1041z1 & u_memory_amodgen_counter_column_anx58250z3 & u_memory_amodgen_counter_column_anx58250z5 & 
u_memory_amodgen_counter_column_anx58250z7 & u_memory_amodgen_counter_column_anx58250z9 & u_memory_amodgen_counter_column_anx58250z11 & u_memory_amodgen_counter_column_anx58250z13 & u_memory_amodgen_counter_column_anx58250z15);

u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(0) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(1) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(2) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(3) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(4) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(5) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(6) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(7) <= u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);
ALT_INV_i_reset_acombout <= NOT i_reset_acombout;
ALT_INV_u_memory_amodgen_counter_column_anx58250z13 <= NOT u_memory_amodgen_counter_column_anx58250z13;
ALT_INV_debug_valid_dup0 <= NOT debug_valid_dup0;

u_flow_areg_prev_max_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_9_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_9_a);

u_flow_areg_prev_max_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_7_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_7_a);

u_flow_areg_prev_max_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_6_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_6_a);

u_flow_areg_prev_max_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_4_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_4_a);

u_flow_areg_prev_max_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_1_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_1_a);

u_flow_aix47310z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z6 = u_flow_ap43_12_a & (u_flow_ap43_13_a $ u_flow_aprev_max_13_a # !u_flow_aprev_max_12_a) # !u_flow_ap43_12_a & (u_flow_aprev_max_12_a # u_flow_ap43_13_a $ u_flow_aprev_max_13_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_12_a,
	datab => u_flow_ap43_13_a,
	datac => u_flow_aprev_max_13_a,
	datad => u_flow_aprev_max_12_a,
	combout => u_flow_anx47310z6);

u_flow_aix47310z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z7 = u_flow_ap43_11_a & (u_flow_aprev_max_10_a $ u_flow_ap43_10_a # !u_flow_aprev_max_11_a) # !u_flow_ap43_11_a & (u_flow_aprev_max_11_a # u_flow_aprev_max_10_a $ u_flow_ap43_10_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_11_a,
	datab => u_flow_aprev_max_10_a,
	datac => u_flow_aprev_max_11_a,
	datad => u_flow_ap43_10_a,
	combout => u_flow_anx47310z7);

u_flow_aix47310z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z8 = u_flow_aprev_max_9_a & (u_flow_aprev_max_8_a $ u_flow_ap43_8_a # !u_flow_ap43_9_a) # !u_flow_aprev_max_9_a & (u_flow_ap43_9_a # u_flow_aprev_max_8_a $ u_flow_ap43_8_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_9_a,
	datab => u_flow_aprev_max_8_a,
	datac => u_flow_ap43_9_a,
	datad => u_flow_ap43_8_a,
	combout => u_flow_anx47310z8);

u_flow_aix47310z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z9 = u_flow_ap43_6_a & (u_flow_ap43_7_a $ u_flow_aprev_max_7_a # !u_flow_aprev_max_6_a) # !u_flow_ap43_6_a & (u_flow_aprev_max_6_a # u_flow_ap43_7_a $ u_flow_aprev_max_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_6_a,
	datab => u_flow_ap43_7_a,
	datac => u_flow_aprev_max_7_a,
	datad => u_flow_aprev_max_6_a,
	combout => u_flow_anx47310z9);

u_flow_aix47310z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z5 = u_flow_anx47310z7 # u_flow_anx47310z8 # u_flow_anx47310z6 # u_flow_anx47310z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_anx47310z7,
	datab => u_flow_anx47310z8,
	datac => u_flow_anx47310z6,
	datad => u_flow_anx47310z9,
	combout => u_flow_anx47310z5);

u_flow_aix26833z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26833z2 = u_flow_astate_2_a # u_flow_astate_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_astate_2_a,
	datac => u_flow_astate_3_a,
	combout => u_flow_anx26833z2);

u_memory_aix64575z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx64575z2 = u_memory_aNOT_b_0_a & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6)) # !u_memory_aNOT_b_0_a & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(6),
	datac => u_memory_aNOT_b_0_a,
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6),
	combout => u_memory_anx64575z2);

u_memory_aix56377z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx56377z2 = debug_num_2_dup0_1_a & !u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debug_num_2_dup0_1_a,
	datac => u_memory_anx60567z2,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_anx56377z2);

u_memory_aix62359z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx62359z2 = u_memory_aNOT_b_0_dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7)) # !u_memory_aNOT_b_0_dup_353 & u_memory_anx60567z2 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(7),
	datac => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7),
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx62359z2);

u_memory_aix62359z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx62359z1 = u_memory_anx62359z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_dup_353 & debug_num_2_dup0_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_dup_353,
	datac => debug_num_2_dup0_7_a,
	datad => u_memory_anx62359z2,
	combout => u_memory_anx62359z1);

u_memory_aix40106z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx40106z2 = !u_memory_ap_debug_num_1_2_a & !u_memory_ap_debug_num_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_2_a,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_anx40106z2);

u_flow_areg_p31_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_11_afeeder_combout,
	sdata => u_flow_ap22_11_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_11_a);

u_flow_areg_p32_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap32_10_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_10_a);

u_flow_areg_p32_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap32_9_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_9_a);

u_flow_areg_p32_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap23_8_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_8_a);

u_flow_areg_p31_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_7_afeeder_combout,
	sdata => u_flow_ap22_7_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_7_a);

u_flow_areg_p31_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_6_afeeder_combout,
	sdata => u_flow_ap22_6_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_6_a);

u_flow_areg_p32_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap32_5_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_5_a);

u_flow_areg_p31_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_4_afeeder_combout,
	sdata => u_flow_ap22_4_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_4_a);

u_flow_areg_p32_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap23_3_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_3_a);

u_flow_areg_p31_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_2_afeeder_combout,
	sdata => u_flow_ap22_2_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_2_a);

u_flow_areg_p31_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_1_afeeder_combout,
	sdata => u_flow_ap22_1_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_1_a);

u_flow_areg_p32_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap23_0_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_0_a);

u_flow_ap4s_sub12_0_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx63795z1 = u_flow_ap31_11_a & u_flow_ap4s_sub12_0_anx63795z3 & VCC # !u_flow_ap31_11_a & !u_flow_ap4s_sub12_0_anx63795z3
-- u_flow_ap4s_sub12_0_anx23445z2 = CARRY(!u_flow_ap31_11_a & !u_flow_ap4s_sub12_0_anx63795z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap31_11_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z3,
	combout => u_flow_ap4s_sub12_0_anx63795z1,
	cout => u_flow_ap4s_sub12_0_anx23445z2);

u_flow_ap4s_sub12_0_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx23445z1 = !u_flow_ap4s_sub12_0_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap4s_sub12_0_anx23445z2,
	combout => u_flow_ap4s_sub12_0_anx23445z1);

u_flow_areg_p22_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_11_a);

u_flow_areg_p21_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_7_a);

u_flow_areg_p21_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_6_a);

u_flow_areg_p22_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_4_a);

u_flow_areg_p22_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_2_a);

u_flow_areg_p22_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_1_a);

u_flow_areg_p23_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_10_a);

u_flow_areg_p23_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_9_a);

u_flow_areg_p23_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_8_a);

u_flow_areg_p23_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_5_a);

u_flow_areg_p23_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_3_a);

u_flow_areg_p23_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add8_0i3_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_0_a);

reg_f_t2_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_7_a);

u_memory_areg_buffer0_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_1_7_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_7_a);

ix20836z52931 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_7_a = nx57127z2 & (u_memory_ap_o_image0_1_7_a) # !nx57127z2 & f_t2_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_next_7_a,
	datab => u_memory_ap_o_image0_1_7_a,
	datad => nx57127z2,
	combout => f_t2_7_a);

reg_f_t1_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_7_a);

u_memory_areg_buffer0_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_1_6_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_6_a);

reg_f_t1_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_6_a);

u_memory_areg_buffer0_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_2_6_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_6_a);

ix20836z52924 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_6_a = nx57127z2 & (u_memory_ap_o_image0_2_6_a) # !nx57127z2 & f_t1_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_next_6_a,
	datab => u_memory_ap_o_image0_2_6_a,
	datad => nx57127z2,
	combout => f_t1_6_a);

reg_f_t2_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_5_a);

u_memory_areg_buffer0_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_1_5_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_5_a);

ix20836z52933 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_5_a = nx57127z2 & u_memory_ap_o_image0_1_5_a # !nx57127z2 & (f_t2_next_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image0_1_5_a,
	datab => f_t2_next_5_a,
	datad => nx57127z2,
	combout => f_t2_5_a);

reg_f_t1_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_5_a);

reg_f_t2_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_4_a);

reg_f_t1_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_4_a);

u_memory_areg_buffer0_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_2_4_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_4_a);

ix20836z52926 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_4_a = nx57127z2 & u_memory_ap_o_image0_2_4_a # !nx57127z2 & (f_t1_next_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image0_2_4_a,
	datab => f_t1_next_4_a,
	datad => nx57127z2,
	combout => f_t1_4_a);

reg_f_t2_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_3_a);

u_memory_areg_buffer0_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_3_a);

ix20836z52935 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_3_a = nx57127z2 & u_memory_ap_o_image0_1_3_a # !nx57127z2 & (f_t2_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image0_1_3_a,
	datab => f_t2_next_3_a,
	datad => nx57127z2,
	combout => f_t2_3_a);

reg_f_t1_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_3_a);

reg_f_t1_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_2_a);

u_memory_areg_buffer0_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_2_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_2_a);

ix20836z52928 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_2_a = nx57127z2 & (u_memory_ap_o_image0_2_2_a) # !nx57127z2 & f_t1_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t1_next_2_a,
	datac => u_memory_ap_o_image0_2_2_a,
	datad => nx57127z2,
	combout => f_t1_2_a);

ix20836z52937 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_1_a = nx57127z2 & (u_memory_ap_o_image0_1_1_a) # !nx57127z2 & f_t2_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t2_next_1_a,
	datac => u_memory_ap_o_image0_1_1_a,
	datad => nx57127z2,
	combout => f_t2_1_a);

ix20836z52930 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_0_a = nx57127z2 & (u_memory_ap_o_image0_2_0_a) # !nx57127z2 & f_t1_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t1_next_0_a,
	datac => u_memory_ap_o_image0_2_0_a,
	datad => nx57127z2,
	combout => f_t1_0_a);

u_flow_ap11_add8_0i1_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx40964z1 = f_t2_3_a & (f_t1_3_a & u_flow_ap11_add8_0i1_anx44952z16 & VCC # !f_t1_3_a & !u_flow_ap11_add8_0i1_anx44952z16) # !f_t2_3_a & (f_t1_3_a & !u_flow_ap11_add8_0i1_anx44952z16 # !f_t1_3_a & (u_flow_ap11_add8_0i1_anx44952z16 # 
-- GND))
-- u_flow_ap11_add8_0i1_anx44952z13 = CARRY(f_t2_3_a & !f_t1_3_a & !u_flow_ap11_add8_0i1_anx44952z16 # !f_t2_3_a & (!u_flow_ap11_add8_0i1_anx44952z16 # !f_t1_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_3_a,
	datab => f_t1_3_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z16,
	combout => u_flow_ap11_add8_0i1_anx40964z1,
	cout => u_flow_ap11_add8_0i1_anx44952z13);

u_flow_ap11_add8_0i1_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx41961z1 = (f_t1_4_a $ f_t2_4_a $ !u_flow_ap11_add8_0i1_anx44952z13) # GND
-- u_flow_ap11_add8_0i1_anx44952z10 = CARRY(f_t1_4_a & (f_t2_4_a # !u_flow_ap11_add8_0i1_anx44952z13) # !f_t1_4_a & f_t2_4_a & !u_flow_ap11_add8_0i1_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_4_a,
	datab => f_t2_4_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z13,
	combout => u_flow_ap11_add8_0i1_anx41961z1,
	cout => u_flow_ap11_add8_0i1_anx44952z10);

u_flow_ap11_add8_0i1_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx42958z1 = f_t2_5_a & (f_t1_5_a & u_flow_ap11_add8_0i1_anx44952z10 & VCC # !f_t1_5_a & !u_flow_ap11_add8_0i1_anx44952z10) # !f_t2_5_a & (f_t1_5_a & !u_flow_ap11_add8_0i1_anx44952z10 # !f_t1_5_a & (u_flow_ap11_add8_0i1_anx44952z10 # 
-- GND))
-- u_flow_ap11_add8_0i1_anx44952z7 = CARRY(f_t2_5_a & !f_t1_5_a & !u_flow_ap11_add8_0i1_anx44952z10 # !f_t2_5_a & (!u_flow_ap11_add8_0i1_anx44952z10 # !f_t1_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_5_a,
	datab => f_t1_5_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z10,
	combout => u_flow_ap11_add8_0i1_anx42958z1,
	cout => u_flow_ap11_add8_0i1_anx44952z7);

u_flow_ap11_add8_0i1_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx44952z1 = f_t2_7_a & (f_t1_7_a & u_flow_ap11_add8_0i1_anx44952z4 & VCC # !f_t1_7_a & !u_flow_ap11_add8_0i1_anx44952z4) # !f_t2_7_a & (f_t1_7_a & !u_flow_ap11_add8_0i1_anx44952z4 # !f_t1_7_a & (u_flow_ap11_add8_0i1_anx44952z4 # 
-- GND))
-- u_flow_ap11_add8_0i1_anx23445z2 = CARRY(f_t2_7_a & !f_t1_7_a & !u_flow_ap11_add8_0i1_anx44952z4 # !f_t2_7_a & (!u_flow_ap11_add8_0i1_anx44952z4 # !f_t1_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_7_a,
	datab => f_t1_7_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z4,
	combout => u_flow_ap11_add8_0i1_anx44952z1,
	cout => u_flow_ap11_add8_0i1_anx23445z2);

u_flow_ap11_add8_0i1_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx23445z1 = !u_flow_ap11_add8_0i1_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap11_add8_0i1_anx23445z2,
	combout => u_flow_ap11_add8_0i1_anx23445z1);

reg_f_t3_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_7_a);

u_memory_areg_buffer0_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_7_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_7_a);

ix20836z52939 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_7_a = nx57127z2 & u_memory_ap_o_image0_0_7_a # !nx57127z2 & (f_t3_next_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image0_0_7_a,
	datab => nx57127z2,
	datad => f_t3_next_7_a,
	combout => f_t3_7_a);

ix20836z52940 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_6_a = nx57127z2 & u_memory_ap_o_image0_0_6_a # !nx57127z2 & (f_t3_next_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image0_0_6_a,
	datab => f_t3_next_6_a,
	datad => nx57127z2,
	combout => f_t3_6_a);

ix20836z52944 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_2_a = nx57127z2 & u_memory_ap_o_image0_0_2_a # !nx57127z2 & (f_t3_next_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image0_0_2_a,
	datad => f_t3_next_2_a,
	combout => f_t3_2_a);

reg_f_t3_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_1_a);

ix20836z52945 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_1_a = nx57127z2 & u_memory_ap_o_image0_0_1_a # !nx57127z2 & (f_t3_next_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image0_0_1_a,
	datad => f_t3_next_1_a,
	combout => f_t3_1_a);

ix20836z52946 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_0_a = nx57127z2 & u_memory_ap_o_image0_0_0_a # !nx57127z2 & (f_t3_next_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image0_0_0_a,
	datad => f_t3_next_0_a,
	combout => f_t3_0_a);

u_flow_ap11_add9_1_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx38970z1 = f_t3_1_a & (u_flow_ap11_add8_0i1_anx38970z1 & u_flow_ap11_add9_1_anx45949z24 & VCC # !u_flow_ap11_add8_0i1_anx38970z1 & !u_flow_ap11_add9_1_anx45949z24) # !f_t3_1_a & (u_flow_ap11_add8_0i1_anx38970z1 & 
-- !u_flow_ap11_add9_1_anx45949z24 # !u_flow_ap11_add8_0i1_anx38970z1 & (u_flow_ap11_add9_1_anx45949z24 # GND))
-- u_flow_ap11_add9_1_anx45949z21 = CARRY(f_t3_1_a & !u_flow_ap11_add8_0i1_anx38970z1 & !u_flow_ap11_add9_1_anx45949z24 # !f_t3_1_a & (!u_flow_ap11_add9_1_anx45949z24 # !u_flow_ap11_add8_0i1_anx38970z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t3_1_a,
	datab => u_flow_ap11_add8_0i1_anx38970z1,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z24,
	combout => u_flow_ap11_add9_1_anx38970z1,
	cout => u_flow_ap11_add9_1_anx45949z21);

reg_f_b2_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_7_a);

ix20836z52955 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_7_a = nx57127z2 & u_memory_ap_o_image2_1_7_a # !nx57127z2 & (f_b2_next_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image2_1_7_a,
	datac => f_b2_next_7_a,
	datad => nx57127z2,
	combout => f_b2_7_a);

reg_f_b1_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_7_a);

ix20836z52948 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_6_a = nx57127z2 & (u_memory_ap_o_image2_0_6_a) # !nx57127z2 & f_b1_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_next_6_a,
	datac => u_memory_ap_o_image2_0_6_a,
	datad => nx57127z2,
	combout => f_b1_6_a);

ix20836z52949 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_5_a = nx57127z2 & u_memory_ap_o_image2_0_5_a # !nx57127z2 & (f_b1_next_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_0_5_a,
	datab => f_b1_next_5_a,
	datac => nx57127z2,
	combout => f_b1_5_a);

ix20836z52950 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_4_a = nx57127z2 & (u_memory_ap_o_image2_0_4_a) # !nx57127z2 & f_b1_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_4_a,
	datac => u_memory_ap_o_image2_0_4_a,
	datad => nx57127z2,
	combout => f_b1_4_a);

ix20836z52951 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_3_a = nx57127z2 & u_memory_ap_o_image2_0_3_a # !nx57127z2 & (f_b1_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image2_0_3_a,
	datac => nx57127z2,
	datad => f_b1_next_3_a,
	combout => f_b1_3_a);

ix20836z52952 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_2_a = nx57127z2 & (u_memory_ap_o_image2_0_2_a) # !nx57127z2 & f_b1_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datab => f_b1_next_2_a,
	datad => u_memory_ap_o_image2_0_2_a,
	combout => f_b1_2_a);

reg_f_b1_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_1_a);

ix20836z52953 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_1_a = nx57127z2 & (u_memory_ap_o_image2_0_1_a) # !nx57127z2 & f_b1_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_1_a,
	datac => u_memory_ap_o_image2_0_1_a,
	datad => nx57127z2,
	combout => f_b1_1_a);

ix20836z52962 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_0_a = nx57127z2 & (u_memory_ap_o_image2_1_0_a) # !nx57127z2 & f_b2_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b2_next_0_a,
	datac => u_memory_ap_o_image2_1_0_a,
	datad => nx57127z2,
	combout => f_b2_0_a);

u_flow_ap12_add8_0i2_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx37973z1 = f_b2_0_a & (f_b1_0_a $ VCC) # !f_b2_0_a & f_b1_0_a & VCC
-- u_flow_ap12_add8_0i2_anx44952z22 = CARRY(f_b2_0_a & f_b1_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_b2_0_a,
	datab => f_b1_0_a,
	datad => VCC,
	combout => u_flow_ap12_add8_0i2_anx37973z1,
	cout => u_flow_ap12_add8_0i2_anx44952z22);

u_flow_ap12_add8_0i2_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx40964z1 = f_b1_3_a & (f_b2_3_a & u_flow_ap12_add8_0i2_anx44952z16 & VCC # !f_b2_3_a & !u_flow_ap12_add8_0i2_anx44952z16) # !f_b1_3_a & (f_b2_3_a & !u_flow_ap12_add8_0i2_anx44952z16 # !f_b2_3_a & (u_flow_ap12_add8_0i2_anx44952z16 # 
-- GND))
-- u_flow_ap12_add8_0i2_anx44952z13 = CARRY(f_b1_3_a & !f_b2_3_a & !u_flow_ap12_add8_0i2_anx44952z16 # !f_b1_3_a & (!u_flow_ap12_add8_0i2_anx44952z16 # !f_b2_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_3_a,
	datab => f_b2_3_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z16,
	combout => u_flow_ap12_add8_0i2_anx40964z1,
	cout => u_flow_ap12_add8_0i2_anx44952z13);

u_flow_ap12_add8_0i2_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx41961z1 = (f_b1_4_a $ f_b2_4_a $ !u_flow_ap12_add8_0i2_anx44952z13) # GND
-- u_flow_ap12_add8_0i2_anx44952z10 = CARRY(f_b1_4_a & (f_b2_4_a # !u_flow_ap12_add8_0i2_anx44952z13) # !f_b1_4_a & f_b2_4_a & !u_flow_ap12_add8_0i2_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_4_a,
	datab => f_b2_4_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z13,
	combout => u_flow_ap12_add8_0i2_anx41961z1,
	cout => u_flow_ap12_add8_0i2_anx44952z10);

u_flow_ap12_add8_0i2_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx42958z1 = f_b1_5_a & (f_b2_5_a & u_flow_ap12_add8_0i2_anx44952z10 & VCC # !f_b2_5_a & !u_flow_ap12_add8_0i2_anx44952z10) # !f_b1_5_a & (f_b2_5_a & !u_flow_ap12_add8_0i2_anx44952z10 # !f_b2_5_a & (u_flow_ap12_add8_0i2_anx44952z10 # 
-- GND))
-- u_flow_ap12_add8_0i2_anx44952z7 = CARRY(f_b1_5_a & !f_b2_5_a & !u_flow_ap12_add8_0i2_anx44952z10 # !f_b1_5_a & (!u_flow_ap12_add8_0i2_anx44952z10 # !f_b2_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_5_a,
	datab => f_b2_5_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z10,
	combout => u_flow_ap12_add8_0i2_anx42958z1,
	cout => u_flow_ap12_add8_0i2_anx44952z7);

u_flow_ap12_add8_0i2_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx43955z1 = (f_b1_6_a $ f_b2_6_a $ !u_flow_ap12_add8_0i2_anx44952z7) # GND
-- u_flow_ap12_add8_0i2_anx44952z4 = CARRY(f_b1_6_a & (f_b2_6_a # !u_flow_ap12_add8_0i2_anx44952z7) # !f_b1_6_a & f_b2_6_a & !u_flow_ap12_add8_0i2_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_6_a,
	datab => f_b2_6_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z7,
	combout => u_flow_ap12_add8_0i2_anx43955z1,
	cout => u_flow_ap12_add8_0i2_anx44952z4);

reg_f_b3_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_7_a);

ix20836z52963 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_7_a = nx57127z2 & u_memory_ap_o_image2_2_7_a # !nx57127z2 & (f_b3_next_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_2_7_a,
	datac => f_b3_next_7_a,
	datad => nx57127z2,
	combout => f_b3_7_a);

ix20836z52968 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_2_a = nx57127z2 & u_memory_ap_o_image2_2_2_a # !nx57127z2 & (f_b3_next_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image2_2_2_a,
	datac => nx57127z2,
	datad => f_b3_next_2_a,
	combout => f_b3_2_a);

ix20836z52969 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_1_a = nx57127z2 & u_memory_ap_o_image2_2_1_a # !nx57127z2 & (f_b3_next_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datab => u_memory_ap_o_image2_2_1_a,
	datac => f_b3_next_1_a,
	combout => f_b3_1_a);

u_flow_ap21_sub11_4i4_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx38970z1 = (u_flow_ap11_add9_1_anx38970z1 $ u_flow_ap12_add9_2_anx39967z1 $ u_flow_ap21_sub11_4i4_anx46946z27) # GND
-- u_flow_ap21_sub11_4i4_anx46946z24 = CARRY(u_flow_ap11_add9_1_anx38970z1 & (!u_flow_ap21_sub11_4i4_anx46946z27 # !u_flow_ap12_add9_2_anx39967z1) # !u_flow_ap11_add9_1_anx38970z1 & !u_flow_ap12_add9_2_anx39967z1 & !u_flow_ap21_sub11_4i4_anx46946z27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx38970z1,
	datab => u_flow_ap12_add9_2_anx39967z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z27,
	combout => u_flow_ap21_sub11_4i4_anx38970z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z24);

u_flow_ap21_sub11_4i4_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx40964z1 = (u_flow_ap12_add9_2_anx41961z1 $ u_flow_ap11_add9_1_anx40964z1 $ u_flow_ap21_sub11_4i4_anx46946z21) # GND
-- u_flow_ap21_sub11_4i4_anx46946z18 = CARRY(u_flow_ap12_add9_2_anx41961z1 & u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z21 # !u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx40964z1 # !u_flow_ap21_sub11_4i4_anx46946z21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx41961z1,
	datab => u_flow_ap11_add9_1_anx40964z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z21,
	combout => u_flow_ap21_sub11_4i4_anx40964z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z18);

u_flow_ap21_sub11_4i4_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx41961z1 = u_flow_ap12_add9_2_anx42958z1 & (u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub11_4i4_anx46946z18 # !u_flow_ap11_add9_1_anx41961z1 & (u_flow_ap21_sub11_4i4_anx46946z18 # GND)) # !u_flow_ap12_add9_2_anx42958z1 & 
-- (u_flow_ap11_add9_1_anx41961z1 & u_flow_ap21_sub11_4i4_anx46946z18 & VCC # !u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub11_4i4_anx46946z18)
-- u_flow_ap21_sub11_4i4_anx46946z15 = CARRY(u_flow_ap12_add9_2_anx42958z1 & (!u_flow_ap21_sub11_4i4_anx46946z18 # !u_flow_ap11_add9_1_anx41961z1) # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub11_4i4_anx46946z18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx42958z1,
	datab => u_flow_ap11_add9_1_anx41961z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z18,
	combout => u_flow_ap21_sub11_4i4_anx41961z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z15);

u_flow_ap21_sub11_4i4_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx43955z1 = u_flow_ap11_add9_1_anx43955z1 & (u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap21_sub11_4i4_anx46946z12 # !u_flow_ap12_add9_2_anx44952z1 & u_flow_ap21_sub11_4i4_anx46946z12 & VCC) # !u_flow_ap11_add9_1_anx43955z1 & 
-- (u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap21_sub11_4i4_anx46946z12 # GND) # !u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap21_sub11_4i4_anx46946z12)
-- u_flow_ap21_sub11_4i4_anx46946z9 = CARRY(u_flow_ap11_add9_1_anx43955z1 & u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap21_sub11_4i4_anx46946z12 # !u_flow_ap11_add9_1_anx43955z1 & (u_flow_ap12_add9_2_anx44952z1 # !u_flow_ap21_sub11_4i4_anx46946z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx43955z1,
	datab => u_flow_ap12_add9_2_anx44952z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z12,
	combout => u_flow_ap21_sub11_4i4_anx43955z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z9);

u_flow_ap21_sub10_4i3_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx38970z1 = u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap21_sub10_4i3_anx46946z28 # !u_flow_ap12_add9_2_anx38970z1 & u_flow_ap21_sub10_4i3_anx46946z28 & VCC) # !u_flow_ap11_add9_1_anx38970z1 & 
-- (u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap21_sub10_4i3_anx46946z28 # GND) # !u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap21_sub10_4i3_anx46946z28)
-- u_flow_ap21_sub10_4i3_anx46946z25 = CARRY(u_flow_ap11_add9_1_anx38970z1 & u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap21_sub10_4i3_anx46946z28 # !u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap12_add9_2_anx38970z1 # !u_flow_ap21_sub10_4i3_anx46946z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx38970z1,
	datab => u_flow_ap12_add9_2_anx38970z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z28,
	combout => u_flow_ap21_sub10_4i3_anx38970z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z25);

u_flow_ap21_sub10_4i3_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx39967z1 = (u_flow_ap12_add9_2_anx39967z1 $ u_flow_ap11_add9_1_anx39967z1 $ u_flow_ap21_sub10_4i3_anx46946z25) # GND
-- u_flow_ap21_sub10_4i3_anx46946z22 = CARRY(u_flow_ap12_add9_2_anx39967z1 & u_flow_ap11_add9_1_anx39967z1 & !u_flow_ap21_sub10_4i3_anx46946z25 # !u_flow_ap12_add9_2_anx39967z1 & (u_flow_ap11_add9_1_anx39967z1 # !u_flow_ap21_sub10_4i3_anx46946z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx39967z1,
	datab => u_flow_ap11_add9_1_anx39967z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z25,
	combout => u_flow_ap21_sub10_4i3_anx39967z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z22);

u_flow_ap21_sub10_4i3_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx41961z1 = (u_flow_ap12_add9_2_anx41961z1 $ u_flow_ap11_add9_1_anx41961z1 $ u_flow_ap21_sub10_4i3_anx46946z19) # GND
-- u_flow_ap21_sub10_4i3_anx46946z16 = CARRY(u_flow_ap12_add9_2_anx41961z1 & u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub10_4i3_anx46946z19 # !u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx41961z1 # !u_flow_ap21_sub10_4i3_anx46946z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx41961z1,
	datab => u_flow_ap11_add9_1_anx41961z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z19,
	combout => u_flow_ap21_sub10_4i3_anx41961z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z16);

u_flow_ap21_sub10_4i3_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx44952z1 = u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap21_sub10_4i3_anx46946z10 # !u_flow_ap11_add9_1_anx44952z1 & (u_flow_ap21_sub10_4i3_anx46946z10 # GND)) # !u_flow_ap12_add9_2_anx44952z1 & 
-- (u_flow_ap11_add9_1_anx44952z1 & u_flow_ap21_sub10_4i3_anx46946z10 & VCC # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap21_sub10_4i3_anx46946z10)
-- u_flow_ap21_sub10_4i3_anx46946z7 = CARRY(u_flow_ap12_add9_2_anx44952z1 & (!u_flow_ap21_sub10_4i3_anx46946z10 # !u_flow_ap11_add9_1_anx44952z1) # !u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap21_sub10_4i3_anx46946z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx44952z1,
	datab => u_flow_ap11_add9_1_anx44952z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z10,
	combout => u_flow_ap21_sub10_4i3_anx44952z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z7);

u_flow_ap21_sub10_4i3_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx45949z1 = (u_flow_ap11_add9_1_anx45949z1 $ u_flow_ap12_add9_2_anx45949z1 $ u_flow_ap21_sub10_4i3_anx46946z7) # GND
-- u_flow_ap21_sub10_4i3_anx46946z4 = CARRY(u_flow_ap11_add9_1_anx45949z1 & (!u_flow_ap21_sub10_4i3_anx46946z7 # !u_flow_ap12_add9_2_anx45949z1) # !u_flow_ap11_add9_1_anx45949z1 & !u_flow_ap12_add9_2_anx45949z1 & !u_flow_ap21_sub10_4i3_anx46946z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx45949z1,
	datab => u_flow_ap12_add9_2_anx45949z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z7,
	combout => u_flow_ap21_sub10_4i3_anx45949z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z4);

u_flow_ap21_sub10_4i3_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx46946z1 = u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub10_4i3_anx46946z4 # !u_flow_ap12_add9_2_anx23445z1 & u_flow_ap21_sub10_4i3_anx46946z4 & VCC) # !u_flow_ap11_add9_1_anx23445z1 & 
-- (u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap21_sub10_4i3_anx46946z4 # GND) # !u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub10_4i3_anx46946z4)
-- u_flow_ap21_sub10_4i3_anx23445z2 = CARRY(u_flow_ap11_add9_1_anx23445z1 & u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub10_4i3_anx46946z4 # !u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap12_add9_2_anx23445z1 # !u_flow_ap21_sub10_4i3_anx46946z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx23445z1,
	datab => u_flow_ap12_add9_2_anx23445z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z4,
	combout => u_flow_ap21_sub10_4i3_anx46946z1,
	cout => u_flow_ap21_sub10_4i3_anx23445z2);

u_flow_ap21_sub10_4i3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx23445z1 = !u_flow_ap21_sub10_4i3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap21_sub10_4i3_anx23445z2,
	combout => u_flow_ap21_sub10_4i3_anx23445z1);

u_flow_ap21_add12_4i1_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx42958z1 = u_flow_ap21_sub11_4i4_anx41961z1 & (u_flow_ap21_sub10_4i3_anx43955z1 & u_flow_ap21_add12_4i1_anx63795z20 & VCC # !u_flow_ap21_sub10_4i3_anx43955z1 & !u_flow_ap21_add12_4i1_anx63795z20) # !u_flow_ap21_sub11_4i4_anx41961z1 
-- & (u_flow_ap21_sub10_4i3_anx43955z1 & !u_flow_ap21_add12_4i1_anx63795z20 # !u_flow_ap21_sub10_4i3_anx43955z1 & (u_flow_ap21_add12_4i1_anx63795z20 # GND))
-- u_flow_ap21_add12_4i1_anx63795z17 = CARRY(u_flow_ap21_sub11_4i4_anx41961z1 & !u_flow_ap21_sub10_4i3_anx43955z1 & !u_flow_ap21_add12_4i1_anx63795z20 # !u_flow_ap21_sub11_4i4_anx41961z1 & (!u_flow_ap21_add12_4i1_anx63795z20 # 
-- !u_flow_ap21_sub10_4i3_anx43955z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub11_4i4_anx41961z1,
	datab => u_flow_ap21_sub10_4i3_anx43955z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z20,
	combout => u_flow_ap21_add12_4i1_anx42958z1,
	cout => u_flow_ap21_add12_4i1_anx63795z17);

u_flow_ap21_add12_4i1_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx43955z1 = (u_flow_ap21_sub10_4i3_anx44952z1 $ u_flow_ap21_sub11_4i4_anx42958z1 $ !u_flow_ap21_add12_4i1_anx63795z17) # GND
-- u_flow_ap21_add12_4i1_anx63795z14 = CARRY(u_flow_ap21_sub10_4i3_anx44952z1 & (u_flow_ap21_sub11_4i4_anx42958z1 # !u_flow_ap21_add12_4i1_anx63795z17) # !u_flow_ap21_sub10_4i3_anx44952z1 & u_flow_ap21_sub11_4i4_anx42958z1 & 
-- !u_flow_ap21_add12_4i1_anx63795z17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx44952z1,
	datab => u_flow_ap21_sub11_4i4_anx42958z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z17,
	combout => u_flow_ap21_add12_4i1_anx43955z1,
	cout => u_flow_ap21_add12_4i1_anx63795z14);

u_flow_ap22_sub11_4i6_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx37973z1 = u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap11_add9_1_anx37973z1 & (u_flow_ap22_sub11_4i6_anx46946z29 # GND) # !u_flow_ap11_add9_1_anx37973z1 & !u_flow_ap22_sub11_4i6_anx46946z29) # !u_flow_ap11_add9_1_anx38970z1 & 
-- (u_flow_ap11_add9_1_anx37973z1 & !u_flow_ap22_sub11_4i6_anx46946z29 # !u_flow_ap11_add9_1_anx37973z1 & u_flow_ap22_sub11_4i6_anx46946z29 & VCC)
-- u_flow_ap22_sub11_4i6_anx46946z27 = CARRY(u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap11_add9_1_anx37973z1 # !u_flow_ap22_sub11_4i6_anx46946z29) # !u_flow_ap11_add9_1_anx38970z1 & u_flow_ap11_add9_1_anx37973z1 & !u_flow_ap22_sub11_4i6_anx46946z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx38970z1,
	datab => u_flow_ap11_add9_1_anx37973z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z29,
	combout => u_flow_ap22_sub11_4i6_anx37973z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z27);

u_flow_ap22_sub11_4i6_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx39967z1 = u_flow_ap12_add9_2_anx39967z1 & (u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub11_4i6_anx46946z24 # !u_flow_ap11_add9_1_anx40964z1 & u_flow_ap22_sub11_4i6_anx46946z24 & VCC) # !u_flow_ap12_add9_2_anx39967z1 & 
-- (u_flow_ap11_add9_1_anx40964z1 & (u_flow_ap22_sub11_4i6_anx46946z24 # GND) # !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub11_4i6_anx46946z24)
-- u_flow_ap22_sub11_4i6_anx46946z21 = CARRY(u_flow_ap12_add9_2_anx39967z1 & u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub11_4i6_anx46946z24 # !u_flow_ap12_add9_2_anx39967z1 & (u_flow_ap11_add9_1_anx40964z1 # !u_flow_ap22_sub11_4i6_anx46946z24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx39967z1,
	datab => u_flow_ap11_add9_1_anx40964z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z24,
	combout => u_flow_ap22_sub11_4i6_anx39967z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z21);

u_flow_ap22_sub11_4i6_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx40964z1 = (u_flow_ap12_add9_2_anx40964z1 $ u_flow_ap11_add9_1_anx41961z1 $ u_flow_ap22_sub11_4i6_anx46946z21) # GND
-- u_flow_ap22_sub11_4i6_anx46946z18 = CARRY(u_flow_ap12_add9_2_anx40964z1 & (!u_flow_ap22_sub11_4i6_anx46946z21 # !u_flow_ap11_add9_1_anx41961z1) # !u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap22_sub11_4i6_anx46946z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx40964z1,
	datab => u_flow_ap11_add9_1_anx41961z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z21,
	combout => u_flow_ap22_sub11_4i6_anx40964z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z18);

u_flow_ap22_sub11_4i6_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx41961z1 = u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap22_sub11_4i6_anx46946z18 # !u_flow_ap11_add9_1_anx42958z1 & u_flow_ap22_sub11_4i6_anx46946z18 & VCC) # !u_flow_ap12_add9_2_anx41961z1 & 
-- (u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap22_sub11_4i6_anx46946z18 # GND) # !u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap22_sub11_4i6_anx46946z18)
-- u_flow_ap22_sub11_4i6_anx46946z15 = CARRY(u_flow_ap12_add9_2_anx41961z1 & u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap22_sub11_4i6_anx46946z18 # !u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx42958z1 # !u_flow_ap22_sub11_4i6_anx46946z18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx41961z1,
	datab => u_flow_ap11_add9_1_anx42958z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z18,
	combout => u_flow_ap22_sub11_4i6_anx41961z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z15);

u_flow_ap22_sub11_4i6_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx42958z1 = (u_flow_ap12_add9_2_anx42958z1 $ u_flow_ap11_add9_1_anx43955z1 $ u_flow_ap22_sub11_4i6_anx46946z15) # GND
-- u_flow_ap22_sub11_4i6_anx46946z12 = CARRY(u_flow_ap12_add9_2_anx42958z1 & (!u_flow_ap22_sub11_4i6_anx46946z15 # !u_flow_ap11_add9_1_anx43955z1) # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap11_add9_1_anx43955z1 & !u_flow_ap22_sub11_4i6_anx46946z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx42958z1,
	datab => u_flow_ap11_add9_1_anx43955z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z15,
	combout => u_flow_ap22_sub11_4i6_anx42958z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z12);

u_flow_ap22_sub11_4i6_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx44952z1 = (u_flow_ap11_add9_1_anx45949z1 $ u_flow_ap12_add9_2_anx44952z1 $ u_flow_ap22_sub11_4i6_anx46946z9) # GND
-- u_flow_ap22_sub11_4i6_anx46946z6 = CARRY(u_flow_ap11_add9_1_anx45949z1 & u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z9 # !u_flow_ap11_add9_1_anx45949z1 & (u_flow_ap12_add9_2_anx44952z1 # !u_flow_ap22_sub11_4i6_anx46946z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx45949z1,
	datab => u_flow_ap12_add9_2_anx44952z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z9,
	combout => u_flow_ap22_sub11_4i6_anx44952z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z6);

u_flow_ap22_sub11_4i6_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx45949z1 = u_flow_ap12_add9_2_anx45949z1 & (u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub11_4i6_anx46946z6 # !u_flow_ap11_add9_1_anx23445z1 & u_flow_ap22_sub11_4i6_anx46946z6 & VCC) # !u_flow_ap12_add9_2_anx45949z1 & 
-- (u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap22_sub11_4i6_anx46946z6 # GND) # !u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub11_4i6_anx46946z6)
-- u_flow_ap22_sub11_4i6_anx46946z3 = CARRY(u_flow_ap12_add9_2_anx45949z1 & u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub11_4i6_anx46946z6 # !u_flow_ap12_add9_2_anx45949z1 & (u_flow_ap11_add9_1_anx23445z1 # !u_flow_ap22_sub11_4i6_anx46946z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx45949z1,
	datab => u_flow_ap11_add9_1_anx23445z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z6,
	combout => u_flow_ap22_sub11_4i6_anx45949z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z3);

u_flow_ap22_sub10_4i5_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx40964z1 = u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub10_4i5_anx46946z22 # !u_flow_ap11_add9_1_anx40964z1 & u_flow_ap22_sub10_4i5_anx46946z22 & VCC) # !u_flow_ap12_add9_2_anx40964z1 & 
-- (u_flow_ap11_add9_1_anx40964z1 & (u_flow_ap22_sub10_4i5_anx46946z22 # GND) # !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub10_4i5_anx46946z22)
-- u_flow_ap22_sub10_4i5_anx46946z19 = CARRY(u_flow_ap12_add9_2_anx40964z1 & u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub10_4i5_anx46946z22 # !u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap11_add9_1_anx40964z1 # !u_flow_ap22_sub10_4i5_anx46946z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx40964z1,
	datab => u_flow_ap11_add9_1_anx40964z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z22,
	combout => u_flow_ap22_sub10_4i5_anx40964z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z19);

u_flow_ap22_sub10_4i5_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx45949z1 = (u_flow_ap12_add9_2_anx45949z1 $ u_flow_ap11_add9_1_anx45949z1 $ u_flow_ap22_sub10_4i5_anx46946z7) # GND
-- u_flow_ap22_sub10_4i5_anx46946z4 = CARRY(u_flow_ap12_add9_2_anx45949z1 & (!u_flow_ap22_sub10_4i5_anx46946z7 # !u_flow_ap11_add9_1_anx45949z1) # !u_flow_ap12_add9_2_anx45949z1 & !u_flow_ap11_add9_1_anx45949z1 & !u_flow_ap22_sub10_4i5_anx46946z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx45949z1,
	datab => u_flow_ap11_add9_1_anx45949z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z7,
	combout => u_flow_ap22_sub10_4i5_anx45949z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z4);

u_flow_ap22_add12_4i2_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx37973z1 = u_flow_ap11_add9_1_anx37973z1 & (u_flow_ap22_sub10_4i5_anx38970z1 $ VCC) # !u_flow_ap11_add9_1_anx37973z1 & u_flow_ap22_sub10_4i5_anx38970z1 & VCC
-- u_flow_ap22_add12_4i2_anx63795z32 = CARRY(u_flow_ap11_add9_1_anx37973z1 & u_flow_ap22_sub10_4i5_anx38970z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx37973z1,
	datab => u_flow_ap22_sub10_4i5_anx38970z1,
	datad => VCC,
	combout => u_flow_ap22_add12_4i2_anx37973z1,
	cout => u_flow_ap22_add12_4i2_anx63795z32);

u_flow_ap22_add12_4i2_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx38970z1 = u_flow_ap22_sub11_4i6_anx37973z1 & (u_flow_ap22_sub10_4i5_anx39967z1 & u_flow_ap22_add12_4i2_anx63795z32 & VCC # !u_flow_ap22_sub10_4i5_anx39967z1 & !u_flow_ap22_add12_4i2_anx63795z32) # !u_flow_ap22_sub11_4i6_anx37973z1 
-- & (u_flow_ap22_sub10_4i5_anx39967z1 & !u_flow_ap22_add12_4i2_anx63795z32 # !u_flow_ap22_sub10_4i5_anx39967z1 & (u_flow_ap22_add12_4i2_anx63795z32 # GND))
-- u_flow_ap22_add12_4i2_anx63795z29 = CARRY(u_flow_ap22_sub11_4i6_anx37973z1 & !u_flow_ap22_sub10_4i5_anx39967z1 & !u_flow_ap22_add12_4i2_anx63795z32 # !u_flow_ap22_sub11_4i6_anx37973z1 & (!u_flow_ap22_add12_4i2_anx63795z32 # 
-- !u_flow_ap22_sub10_4i5_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx37973z1,
	datab => u_flow_ap22_sub10_4i5_anx39967z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z32,
	combout => u_flow_ap22_add12_4i2_anx38970z1,
	cout => u_flow_ap22_add12_4i2_anx63795z29);

u_flow_ap22_add12_4i2_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx40964z1 = u_flow_ap22_sub11_4i6_anx39967z1 & (u_flow_ap22_sub10_4i5_anx41961z1 & u_flow_ap22_add12_4i2_anx63795z26 & VCC # !u_flow_ap22_sub10_4i5_anx41961z1 & !u_flow_ap22_add12_4i2_anx63795z26) # !u_flow_ap22_sub11_4i6_anx39967z1 
-- & (u_flow_ap22_sub10_4i5_anx41961z1 & !u_flow_ap22_add12_4i2_anx63795z26 # !u_flow_ap22_sub10_4i5_anx41961z1 & (u_flow_ap22_add12_4i2_anx63795z26 # GND))
-- u_flow_ap22_add12_4i2_anx63795z23 = CARRY(u_flow_ap22_sub11_4i6_anx39967z1 & !u_flow_ap22_sub10_4i5_anx41961z1 & !u_flow_ap22_add12_4i2_anx63795z26 # !u_flow_ap22_sub11_4i6_anx39967z1 & (!u_flow_ap22_add12_4i2_anx63795z26 # 
-- !u_flow_ap22_sub10_4i5_anx41961z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx39967z1,
	datab => u_flow_ap22_sub10_4i5_anx41961z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z26,
	combout => u_flow_ap22_add12_4i2_anx40964z1,
	cout => u_flow_ap22_add12_4i2_anx63795z23);

u_flow_ap22_add12_4i2_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx62798z1 = (u_flow_ap22_sub10_4i5_anx23445z1 $ u_flow_ap22_sub11_4i6_anx46946z1 $ u_flow_ap22_add12_4i2_anx63795z6) # GND
-- u_flow_ap22_add12_4i2_anx63795z4 = CARRY(u_flow_ap22_sub10_4i5_anx23445z1 & u_flow_ap22_sub11_4i6_anx46946z1 & !u_flow_ap22_add12_4i2_anx63795z6 # !u_flow_ap22_sub10_4i5_anx23445z1 & (u_flow_ap22_sub11_4i6_anx46946z1 # !u_flow_ap22_add12_4i2_anx63795z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub10_4i5_anx23445z1,
	datab => u_flow_ap22_sub11_4i6_anx46946z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z6,
	combout => u_flow_ap22_add12_4i2_anx62798z1,
	cout => u_flow_ap22_add12_4i2_anx63795z4);

reg_f_i2_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_7_a);

ix20836z52979 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_7_a = nx57127z2 & (u_memory_ap_o_image1_2_7_a) # !nx57127z2 & f_i2_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_next_7_a,
	datac => u_memory_ap_o_image1_2_7_a,
	datad => nx57127z2,
	combout => f_i2_7_a);

reg_f_i1_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_7_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_7_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_7_a);

ix20836z52971 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_7_a = nx57127z2 & u_memory_ap_o_image1_0_7_a # !nx57127z2 & (f_i1_next_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_0_7_a,
	datad => f_i1_next_7_a,
	combout => f_i1_7_a);

reg_f_i2_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_6_a);

ix20836z52980 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_6_a = nx57127z2 & u_memory_ap_o_image1_2_6_a # !nx57127z2 & (f_i2_next_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_2_6_a,
	datad => f_i2_next_6_a,
	combout => f_i2_6_a);

reg_f_i2_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_5_a);

ix20836z52981 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_5_a = nx57127z2 & u_memory_ap_o_image1_2_5_a # !nx57127z2 & (f_i2_next_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image1_2_5_a,
	datad => f_i2_next_5_a,
	combout => f_i2_5_a);

reg_f_i2_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_4_a);

ix20836z52982 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_4_a = nx57127z2 & u_memory_ap_o_image1_2_4_a # !nx57127z2 & (f_i2_next_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image1_2_4_a,
	datad => f_i2_next_4_a,
	combout => f_i2_4_a);

ix20836z52975 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_3_a = nx57127z2 & u_memory_ap_o_image1_0_3_a # !nx57127z2 & (f_i1_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image1_0_3_a,
	datac => nx57127z2,
	datad => f_i1_next_3_a,
	combout => f_i1_3_a);

reg_f_i2_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_2_a);

ix20836z52984 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_2_a = nx57127z2 & u_memory_ap_o_image1_2_2_a # !nx57127z2 & (f_i2_next_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image1_2_2_a,
	datad => f_i2_next_2_a,
	combout => f_i2_2_a);

reg_f_i1_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_1_a);

ix20836z52977 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_1_a = nx57127z2 & u_memory_ap_o_image1_0_1_a # !nx57127z2 & (f_i1_next_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_0_1_a,
	datad => f_i1_next_1_a,
	combout => f_i1_1_a);

ix20836z52986 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_0_a = nx57127z2 & u_memory_ap_o_image1_2_0_a # !nx57127z2 & (f_i2_next_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_2_0_a,
	datad => f_i2_next_0_a,
	combout => f_i2_0_a);

u_flow_ap13_add8_0i3_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx38970z1 = f_i1_1_a & (f_i2_1_a & u_flow_ap13_add8_0i3_anx44952z22 & VCC # !f_i2_1_a & !u_flow_ap13_add8_0i3_anx44952z22) # !f_i1_1_a & (f_i2_1_a & !u_flow_ap13_add8_0i3_anx44952z22 # !f_i2_1_a & (u_flow_ap13_add8_0i3_anx44952z22 # 
-- GND))
-- u_flow_ap13_add8_0i3_anx44952z19 = CARRY(f_i1_1_a & !f_i2_1_a & !u_flow_ap13_add8_0i3_anx44952z22 # !f_i1_1_a & (!u_flow_ap13_add8_0i3_anx44952z22 # !f_i2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i1_1_a,
	datab => f_i2_1_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z22,
	combout => u_flow_ap13_add8_0i3_anx38970z1,
	cout => u_flow_ap13_add8_0i3_anx44952z19);

u_flow_ap13_add8_0i3_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx42958z1 = f_i2_5_a & (f_i1_5_a & u_flow_ap13_add8_0i3_anx44952z10 & VCC # !f_i1_5_a & !u_flow_ap13_add8_0i3_anx44952z10) # !f_i2_5_a & (f_i1_5_a & !u_flow_ap13_add8_0i3_anx44952z10 # !f_i1_5_a & (u_flow_ap13_add8_0i3_anx44952z10 # 
-- GND))
-- u_flow_ap13_add8_0i3_anx44952z7 = CARRY(f_i2_5_a & !f_i1_5_a & !u_flow_ap13_add8_0i3_anx44952z10 # !f_i2_5_a & (!u_flow_ap13_add8_0i3_anx44952z10 # !f_i1_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_5_a,
	datab => f_i1_5_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z10,
	combout => u_flow_ap13_add8_0i3_anx42958z1,
	cout => u_flow_ap13_add8_0i3_anx44952z7);

u_flow_ap13_add8_0i3_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx43955z1 = (f_i2_6_a $ f_i1_6_a $ !u_flow_ap13_add8_0i3_anx44952z7) # GND
-- u_flow_ap13_add8_0i3_anx44952z4 = CARRY(f_i2_6_a & (f_i1_6_a # !u_flow_ap13_add8_0i3_anx44952z7) # !f_i2_6_a & f_i1_6_a & !u_flow_ap13_add8_0i3_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_6_a,
	datab => f_i1_6_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z7,
	combout => u_flow_ap13_add8_0i3_anx43955z1,
	cout => u_flow_ap13_add8_0i3_anx44952z4);

u_flow_ap13_add8_0i3_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx44952z1 = f_i2_7_a & (f_i1_7_a & u_flow_ap13_add8_0i3_anx44952z4 & VCC # !f_i1_7_a & !u_flow_ap13_add8_0i3_anx44952z4) # !f_i2_7_a & (f_i1_7_a & !u_flow_ap13_add8_0i3_anx44952z4 # !f_i1_7_a & (u_flow_ap13_add8_0i3_anx44952z4 # 
-- GND))
-- u_flow_ap13_add8_0i3_anx23445z2 = CARRY(f_i2_7_a & !f_i1_7_a & !u_flow_ap13_add8_0i3_anx44952z4 # !f_i2_7_a & (!u_flow_ap13_add8_0i3_anx44952z4 # !f_i1_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_7_a,
	datab => f_i1_7_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z4,
	combout => u_flow_ap13_add8_0i3_anx44952z1,
	cout => u_flow_ap13_add8_0i3_anx23445z2);

u_flow_ap13_add8_0i3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx23445z1 = !u_flow_ap13_add8_0i3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap13_add8_0i3_anx23445z2,
	combout => u_flow_ap13_add8_0i3_anx23445z1);

u_flow_ap13_add9_3_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx39967z1 = (u_flow_ap13_add8_0i3_anx39967z1 $ u_flow_ap13_add8_0i3_anx40964z1 $ !u_flow_ap13_add9_3_anx45949z15) # GND
-- u_flow_ap13_add9_3_anx45949z13 = CARRY(u_flow_ap13_add8_0i3_anx39967z1 & (u_flow_ap13_add8_0i3_anx40964z1 # !u_flow_ap13_add9_3_anx45949z15) # !u_flow_ap13_add8_0i3_anx39967z1 & u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx39967z1,
	datab => u_flow_ap13_add8_0i3_anx40964z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z15,
	combout => u_flow_ap13_add9_3_anx39967z1,
	cout => u_flow_ap13_add9_3_anx45949z13);

u_flow_ap13_add9_3_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx41961z1 = (u_flow_ap13_add8_0i3_anx42958z1 $ u_flow_ap13_add8_0i3_anx41961z1 $ !u_flow_ap13_add9_3_anx45949z11) # GND
-- u_flow_ap13_add9_3_anx45949z9 = CARRY(u_flow_ap13_add8_0i3_anx42958z1 & (u_flow_ap13_add8_0i3_anx41961z1 # !u_flow_ap13_add9_3_anx45949z11) # !u_flow_ap13_add8_0i3_anx42958z1 & u_flow_ap13_add8_0i3_anx41961z1 & !u_flow_ap13_add9_3_anx45949z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx42958z1,
	datab => u_flow_ap13_add8_0i3_anx41961z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z11,
	combout => u_flow_ap13_add9_3_anx41961z1,
	cout => u_flow_ap13_add9_3_anx45949z9);

u_flow_ap13_add9_3_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx43955z1 = (u_flow_ap13_add8_0i3_anx44952z1 $ u_flow_ap13_add8_0i3_anx43955z1 $ !u_flow_ap13_add9_3_anx45949z7) # GND
-- u_flow_ap13_add9_3_anx45949z5 = CARRY(u_flow_ap13_add8_0i3_anx44952z1 & (u_flow_ap13_add8_0i3_anx43955z1 # !u_flow_ap13_add9_3_anx45949z7) # !u_flow_ap13_add8_0i3_anx44952z1 & u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx44952z1,
	datab => u_flow_ap13_add8_0i3_anx43955z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z7,
	combout => u_flow_ap13_add9_3_anx43955z1,
	cout => u_flow_ap13_add9_3_anx45949z5);

u_flow_ap13_add9_3_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx44952z1 = u_flow_ap13_add8_0i3_anx44952z1 & (u_flow_ap13_add8_0i3_anx23445z1 & u_flow_ap13_add9_3_anx45949z5 & VCC # !u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z5) # !u_flow_ap13_add8_0i3_anx44952z1 & 
-- (u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z5 # !u_flow_ap13_add8_0i3_anx23445z1 & (u_flow_ap13_add9_3_anx45949z5 # GND))
-- u_flow_ap13_add9_3_anx45949z3 = CARRY(u_flow_ap13_add8_0i3_anx44952z1 & !u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z5 # !u_flow_ap13_add8_0i3_anx44952z1 & (!u_flow_ap13_add9_3_anx45949z5 # !u_flow_ap13_add8_0i3_anx23445z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx44952z1,
	datab => u_flow_ap13_add8_0i3_anx23445z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z5,
	combout => u_flow_ap13_add9_3_anx44952z1,
	cout => u_flow_ap13_add9_3_anx45949z3);

u_flow_ap13_add9_3_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx45949z1 = u_flow_ap13_add8_0i3_anx23445z1 & (u_flow_ap13_add9_3_anx45949z3 $ GND) # !u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z3 & VCC
-- u_flow_ap13_add9_3_anx23445z2 = CARRY(u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap13_add8_0i3_anx23445z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z3,
	combout => u_flow_ap13_add9_3_anx45949z1,
	cout => u_flow_ap13_add9_3_anx23445z2);

u_flow_ap13_add9_3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx23445z1 = u_flow_ap13_add9_3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap13_add9_3_anx23445z2,
	combout => u_flow_ap13_add9_3_anx23445z1);

reg_f_i_mode_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_mode_0_a,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_mode_next_0_a);

reg_f_i_row_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_next_1_afeeder_combout,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_1_a);

reg_f_i_row_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_next_3_afeeder_combout,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_3_a);

u_memory_ap_o_image0_1_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_1_5_afeeder_combout = u_memory_ap_o_image1_1_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_5_a,
	combout => u_memory_ap_o_image0_1_5_afeeder_combout);

u_memory_ap_o_image0_1_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_1_6_afeeder_combout = u_memory_ap_o_image1_1_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_6_a,
	combout => u_memory_ap_o_image0_1_6_afeeder_combout);

u_memory_ap_o_image0_1_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_1_7_afeeder_combout = u_memory_ap_o_image1_1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_7_a,
	combout => u_memory_ap_o_image0_1_7_afeeder_combout);

u_memory_ap_o_image0_2_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_2_4_afeeder_combout = u_memory_ap_o_image1_2_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_2_4_a,
	combout => u_memory_ap_o_image0_2_4_afeeder_combout);

u_memory_ap_o_image0_2_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_2_6_afeeder_combout = u_memory_ap_o_image1_2_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_2_6_a,
	combout => u_memory_ap_o_image0_2_6_afeeder_combout);

u_flow_ap31_11_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_11_afeeder_combout = u_flow_ap21_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap21_11_a,
	combout => u_flow_ap31_11_afeeder_combout);

u_flow_ap31_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_7_afeeder_combout = u_flow_ap21_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap21_7_a,
	combout => u_flow_ap31_7_afeeder_combout);

u_flow_ap31_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_6_afeeder_combout = u_flow_ap21_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap21_6_a,
	combout => u_flow_ap31_6_afeeder_combout);

u_flow_ap31_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_4_afeeder_combout = u_flow_ap21_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_4_a,
	combout => u_flow_ap31_4_afeeder_combout);

u_flow_ap31_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_2_afeeder_combout = u_flow_ap21_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap21_2_a,
	combout => u_flow_ap31_2_afeeder_combout);

u_flow_ap31_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_1_afeeder_combout = u_flow_ap21_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap21_1_a,
	combout => u_flow_ap31_1_afeeder_combout);

u_flow_ap32_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap32_10_afeeder_combout = u_flow_ap23_10_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap23_10_a,
	combout => u_flow_ap32_10_afeeder_combout);

u_flow_ap32_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap32_9_afeeder_combout = u_flow_ap23_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap23_9_a,
	combout => u_flow_ap32_9_afeeder_combout);

u_flow_ap32_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap32_5_afeeder_combout = u_flow_ap23_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap23_5_a,
	combout => u_flow_ap32_5_afeeder_combout);

f_t1_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_7_afeeder_combout = f_t2_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t2_next_7_a,
	combout => f_t1_next_7_afeeder_combout);

f_i2_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_7_afeeder_combout = f_t1_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t1_next_7_a,
	combout => f_i2_next_7_afeeder_combout);

f_t1_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_6_afeeder_combout = f_t2_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_next_6_a,
	combout => f_t1_next_6_afeeder_combout);

f_i2_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_6_afeeder_combout = f_t1_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t1_next_6_a,
	combout => f_i2_next_6_afeeder_combout);

f_t1_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_5_afeeder_combout = f_t2_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t2_next_5_a,
	combout => f_t1_next_5_afeeder_combout);

f_i2_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_5_afeeder_combout = f_t1_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t1_next_5_a,
	combout => f_i2_next_5_afeeder_combout);

f_t1_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_4_afeeder_combout = f_t2_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t2_next_4_a,
	combout => f_t1_next_4_afeeder_combout);

f_i2_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_4_afeeder_combout = f_t1_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t1_next_4_a,
	combout => f_i2_next_4_afeeder_combout);

f_t1_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_3_afeeder_combout = f_t2_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t2_next_3_a,
	combout => f_t1_next_3_afeeder_combout);

f_t1_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_2_afeeder_combout = f_t2_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t2_next_2_a,
	combout => f_t1_next_2_afeeder_combout);

f_i2_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_2_afeeder_combout = f_t1_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t1_next_2_a,
	combout => f_i2_next_2_afeeder_combout);

f_t2_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_7_afeeder_combout = f_t3_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t3_next_7_a,
	combout => f_t2_next_7_afeeder_combout);

f_t2_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_5_afeeder_combout = f_t3_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t3_next_5_a,
	combout => f_t2_next_5_afeeder_combout);

f_t2_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_4_afeeder_combout = f_t3_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t3_next_4_a,
	combout => f_t2_next_4_afeeder_combout);

f_t2_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_3_afeeder_combout = f_t3_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t3_next_3_a,
	combout => f_t2_next_3_afeeder_combout);

f_b1_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_7_afeeder_combout = f_b2_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_7_a,
	combout => f_b1_next_7_afeeder_combout);

f_i1_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_7_afeeder_combout = f_b1_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_7_a,
	combout => f_i1_next_7_afeeder_combout);

f_b1_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_1_afeeder_combout = f_b2_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_1_a,
	combout => f_b1_next_1_afeeder_combout);

f_i1_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_1_afeeder_combout = f_b1_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b1_next_1_a,
	combout => f_i1_next_1_afeeder_combout);

f_b2_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_7_afeeder_combout = f_b3_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_b3_next_7_a,
	combout => f_b2_next_7_afeeder_combout);

f_b3_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_7_afeeder_combout = f_i2_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i2_next_7_a,
	combout => f_b3_next_7_afeeder_combout);

f_t3_next_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_7_afeeder_combout = f_i1_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_7_a,
	combout => f_t3_next_7_afeeder_combout);

f_t3_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_1_afeeder_combout = f_i1_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_1_a,
	combout => f_t3_next_1_afeeder_combout);

f_i_row_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_next_1_afeeder_combout = u_memory_ap_o_row_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_row_1_a,
	combout => f_i_row_next_1_afeeder_combout);

f_i_row_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_next_3_afeeder_combout = u_memory_ap_o_row_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_row_3_a,
	combout => f_i_row_next_3_afeeder_combout);

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

u_flow_astate_3_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_astate_3_a_wirecell_combout = !u_flow_astate_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_astate_3_a,
	combout => u_flow_astate_3_a_wirecell_combout);

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

u_memory_amodgen_counter_column_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx51271z1 = u_memory_amodgen_counter_column_anx58250z15 $ VCC
-- u_memory_amodgen_counter_column_anx58250z14 = CARRY(u_memory_amodgen_counter_column_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_column_anx58250z15,
	datad => VCC,
	combout => u_memory_amodgen_counter_column_anx51271z1,
	cout => u_memory_amodgen_counter_column_anx58250z14);

u_memory_amodgen_counter_column_anx58250z15_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx58250z15_afeeder_combout = u_memory_amodgen_counter_column_anx51271z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_amodgen_counter_column_anx51271z1,
	combout => u_memory_amodgen_counter_column_anx58250z15_afeeder_combout);

u_memory_amodgen_counter_column_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx55259z1 = u_memory_amodgen_counter_column_anx58250z7 & (u_memory_amodgen_counter_column_anx58250z8 $ GND) # !u_memory_amodgen_counter_column_anx58250z7 & !u_memory_amodgen_counter_column_anx58250z8 & VCC
-- u_memory_amodgen_counter_column_anx58250z6 = CARRY(u_memory_amodgen_counter_column_anx58250z7 & !u_memory_amodgen_counter_column_anx58250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z7,
	datad => VCC,
	cin => u_memory_amodgen_counter_column_anx58250z8,
	combout => u_memory_amodgen_counter_column_anx55259z1,
	cout => u_memory_amodgen_counter_column_anx58250z6);

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

u_memory_amodgen_counter_row_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx51271z1 = u_memory_amodgen_counter_row_anx58250z15 $ VCC
-- u_memory_amodgen_counter_row_anx58250z14 = CARRY(u_memory_amodgen_counter_row_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_row_anx58250z15,
	datad => VCC,
	combout => u_memory_amodgen_counter_row_anx51271z1,
	cout => u_memory_amodgen_counter_row_anx58250z14);

u_memory_aix8852z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z1 = i_reset_acombout # u_memory_anx8852z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	datad => u_memory_anx8852z2,
	combout => u_memory_anx8852z1);

reg_in_i_valid_ibuf : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_valid_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_valid_dup0);

u_memory_aix8852z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anot_rtlc2_X_0_n244 = debug_valid_dup0 & !i_valid_acombout & u_memory_anx8852z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debug_valid_dup0,
	datac => i_valid_acombout,
	datad => u_memory_anx8852z3,
	combout => u_memory_anot_rtlc2_X_0_n244);

u_memory_amodgen_counter_row_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx57253z3 = u_memory_anot_rtlc2_X_0_n244 # i_reset_acombout # u_memory_anx8852z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_anot_rtlc2_X_0_n244,
	datac => i_reset_acombout,
	datad => u_memory_anx8852z2,
	combout => u_memory_amodgen_counter_row_anx57253z3);

u_memory_amodgen_counter_row_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx51271z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z15);

u_memory_amodgen_counter_row_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx52268z1 = u_memory_amodgen_counter_row_anx58250z13 & !u_memory_amodgen_counter_row_anx58250z14 # !u_memory_amodgen_counter_row_anx58250z13 & (u_memory_amodgen_counter_row_anx58250z14 # GND)
-- u_memory_amodgen_counter_row_anx58250z12 = CARRY(!u_memory_amodgen_counter_row_anx58250z14 # !u_memory_amodgen_counter_row_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_row_anx58250z13,
	datad => VCC,
	cin => u_memory_amodgen_counter_row_anx58250z14,
	combout => u_memory_amodgen_counter_row_anx52268z1,
	cout => u_memory_amodgen_counter_row_anx58250z12);

u_memory_amodgen_counter_row_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx52268z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z13);

u_memory_amodgen_counter_row_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx53265z1 = u_memory_amodgen_counter_row_anx58250z11 & (u_memory_amodgen_counter_row_anx58250z12 $ GND) # !u_memory_amodgen_counter_row_anx58250z11 & !u_memory_amodgen_counter_row_anx58250z12 & VCC
-- u_memory_amodgen_counter_row_anx58250z10 = CARRY(u_memory_amodgen_counter_row_anx58250z11 & !u_memory_amodgen_counter_row_anx58250z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx58250z11,
	datad => VCC,
	cin => u_memory_amodgen_counter_row_anx58250z12,
	combout => u_memory_amodgen_counter_row_anx53265z1,
	cout => u_memory_amodgen_counter_row_anx58250z10);

u_memory_amodgen_counter_row_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx54262z1 = u_memory_amodgen_counter_row_anx58250z9 & !u_memory_amodgen_counter_row_anx58250z10 # !u_memory_amodgen_counter_row_anx58250z9 & (u_memory_amodgen_counter_row_anx58250z10 # GND)
-- u_memory_amodgen_counter_row_anx58250z8 = CARRY(!u_memory_amodgen_counter_row_anx58250z10 # !u_memory_amodgen_counter_row_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_row_anx58250z9,
	datad => VCC,
	cin => u_memory_amodgen_counter_row_anx58250z10,
	combout => u_memory_amodgen_counter_row_anx54262z1,
	cout => u_memory_amodgen_counter_row_anx58250z8);

u_memory_amodgen_counter_row_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx54262z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z9);

u_memory_amodgen_counter_row_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx55259z1 = u_memory_amodgen_counter_row_anx58250z7 & (u_memory_amodgen_counter_row_anx58250z8 $ GND) # !u_memory_amodgen_counter_row_anx58250z7 & !u_memory_amodgen_counter_row_anx58250z8 & VCC
-- u_memory_amodgen_counter_row_anx58250z6 = CARRY(u_memory_amodgen_counter_row_anx58250z7 & !u_memory_amodgen_counter_row_anx58250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx58250z7,
	datad => VCC,
	cin => u_memory_amodgen_counter_row_anx58250z8,
	combout => u_memory_amodgen_counter_row_anx55259z1,
	cout => u_memory_amodgen_counter_row_anx58250z6);

u_memory_amodgen_counter_row_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx56256z1 = u_memory_amodgen_counter_row_anx58250z5 & !u_memory_amodgen_counter_row_anx58250z6 # !u_memory_amodgen_counter_row_anx58250z5 & (u_memory_amodgen_counter_row_anx58250z6 # GND)
-- u_memory_amodgen_counter_row_anx58250z4 = CARRY(!u_memory_amodgen_counter_row_anx58250z6 # !u_memory_amodgen_counter_row_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx58250z5,
	datad => VCC,
	cin => u_memory_amodgen_counter_row_anx58250z6,
	combout => u_memory_amodgen_counter_row_anx56256z1,
	cout => u_memory_amodgen_counter_row_anx58250z4);

u_memory_amodgen_counter_row_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx57253z1 = u_memory_amodgen_counter_row_anx58250z3 & (u_memory_amodgen_counter_row_anx58250z4 $ GND) # !u_memory_amodgen_counter_row_anx58250z3 & !u_memory_amodgen_counter_row_anx58250z4 & VCC
-- u_memory_amodgen_counter_row_anx58250z2 = CARRY(u_memory_amodgen_counter_row_anx58250z3 & !u_memory_amodgen_counter_row_anx58250z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_row_anx58250z3,
	datad => VCC,
	cin => u_memory_amodgen_counter_row_anx58250z4,
	combout => u_memory_amodgen_counter_row_anx57253z1,
	cout => u_memory_amodgen_counter_row_anx58250z2);

u_memory_amodgen_counter_row_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx57253z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z3);

u_memory_amodgen_counter_row_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx56256z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z5);

u_memory_aix8852z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z6 = u_memory_amodgen_counter_row_anx1041z1 & u_memory_amodgen_counter_row_anx58250z3 & u_memory_amodgen_counter_row_anx58250z15 & u_memory_amodgen_counter_row_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx1041z1,
	datab => u_memory_amodgen_counter_row_anx58250z3,
	datac => u_memory_amodgen_counter_row_anx58250z15,
	datad => u_memory_amodgen_counter_row_anx58250z5,
	combout => u_memory_anx8852z6);

u_memory_amodgen_counter_row_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx53265z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z11);

u_memory_amodgen_counter_row_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx55259z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx58250z7);

u_memory_aix8852z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z7 = u_memory_amodgen_counter_row_anx58250z9 & u_memory_amodgen_counter_row_anx58250z13 & u_memory_amodgen_counter_row_anx58250z11 & u_memory_amodgen_counter_row_anx58250z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx58250z9,
	datab => u_memory_amodgen_counter_row_anx58250z13,
	datac => u_memory_amodgen_counter_row_anx58250z11,
	datad => u_memory_amodgen_counter_row_anx58250z7,
	combout => u_memory_anx8852z7);

u_memory_aix8852z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z2 = u_memory_anx8852z3 & u_memory_anx8852z6 & debug_valid_dup0 & u_memory_anx8852z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx8852z3,
	datab => u_memory_anx8852z6,
	datac => debug_valid_dup0,
	datad => u_memory_anx8852z7,
	combout => u_memory_anx8852z2);

u_memory_aix47386z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx47386z1 = i_reset_acombout # u_memory_anx8852z2 # !i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datac => i_reset_acombout,
	datad => u_memory_anx8852z2,
	combout => u_memory_anx47386z1);

u_memory_amodgen_counter_column_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx57253z3 = u_memory_anx47386z1 & (debug_valid_dup0 # u_memory_anx47386z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debug_valid_dup0,
	datab => u_memory_anx47386z2,
	datad => u_memory_anx47386z1,
	combout => u_memory_amodgen_counter_column_anx57253z3);

u_memory_amodgen_counter_column_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx55259z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z7);

u_memory_aix8852z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z5 = u_memory_amodgen_counter_column_anx58250z5 & u_memory_amodgen_counter_column_anx58250z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_amodgen_counter_column_anx58250z5,
	datad => u_memory_amodgen_counter_column_anx58250z7,
	combout => u_memory_anx8852z5);

u_memory_amodgen_counter_column_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx56256z1 = u_memory_amodgen_counter_column_anx58250z5 & !u_memory_amodgen_counter_column_anx58250z6 # !u_memory_amodgen_counter_column_anx58250z5 & (u_memory_amodgen_counter_column_anx58250z6 # GND)
-- u_memory_amodgen_counter_column_anx58250z4 = CARRY(!u_memory_amodgen_counter_column_anx58250z6 # !u_memory_amodgen_counter_column_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_column_anx58250z5,
	datad => VCC,
	cin => u_memory_amodgen_counter_column_anx58250z6,
	combout => u_memory_amodgen_counter_column_anx56256z1,
	cout => u_memory_amodgen_counter_column_anx58250z4);

u_memory_amodgen_counter_column_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx57253z1 = u_memory_amodgen_counter_column_anx58250z3 & (u_memory_amodgen_counter_column_anx58250z4 $ GND) # !u_memory_amodgen_counter_column_anx58250z3 & !u_memory_amodgen_counter_column_anx58250z4 & VCC
-- u_memory_amodgen_counter_column_anx58250z2 = CARRY(u_memory_amodgen_counter_column_anx58250z3 & !u_memory_amodgen_counter_column_anx58250z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z3,
	datad => VCC,
	cin => u_memory_amodgen_counter_column_anx58250z4,
	combout => u_memory_amodgen_counter_column_anx57253z1,
	cout => u_memory_amodgen_counter_column_anx58250z2);

u_memory_amodgen_counter_column_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx57253z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z3);

u_memory_amodgen_counter_column_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx52268z1 = u_memory_amodgen_counter_column_anx58250z13 & !u_memory_amodgen_counter_column_anx58250z14 # !u_memory_amodgen_counter_column_anx58250z13 & (u_memory_amodgen_counter_column_anx58250z14 # GND)
-- u_memory_amodgen_counter_column_anx58250z12 = CARRY(!u_memory_amodgen_counter_column_anx58250z14 # !u_memory_amodgen_counter_column_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z13,
	datad => VCC,
	cin => u_memory_amodgen_counter_column_anx58250z14,
	combout => u_memory_amodgen_counter_column_anx52268z1,
	cout => u_memory_amodgen_counter_column_anx58250z12);

u_memory_amodgen_counter_column_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx52268z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z13);

u_memory_aix8852z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z4 = u_memory_amodgen_counter_column_anx58250z9 & u_memory_amodgen_counter_column_anx58250z15 & u_memory_amodgen_counter_column_anx58250z11 & u_memory_amodgen_counter_column_anx58250z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z9,
	datab => u_memory_amodgen_counter_column_anx58250z15,
	datac => u_memory_amodgen_counter_column_anx58250z11,
	datad => u_memory_amodgen_counter_column_anx58250z13,
	combout => u_memory_anx8852z4);

u_memory_aix8852z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx8852z3 = u_memory_amodgen_counter_column_anx1041z1 & u_memory_anx8852z5 & u_memory_amodgen_counter_column_anx58250z3 & u_memory_anx8852z4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx1041z1,
	datab => u_memory_anx8852z5,
	datac => u_memory_amodgen_counter_column_anx58250z3,
	datad => u_memory_anx8852z4,
	combout => u_memory_anx8852z3);

u_memory_aix47386z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx47386z2 = i_reset_acombout # u_memory_anx8852z3 & debug_valid_dup0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => u_memory_anx8852z3,
	datad => debug_valid_dup0,
	combout => u_memory_anx47386z2);

u_memory_amodgen_counter_column_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx58250z15_afeeder_combout,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z15);

u_memory_amodgen_counter_column_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx53265z1 = u_memory_amodgen_counter_column_anx58250z11 & (u_memory_amodgen_counter_column_anx58250z12 $ GND) # !u_memory_amodgen_counter_column_anx58250z11 & !u_memory_amodgen_counter_column_anx58250z12 & VCC
-- u_memory_amodgen_counter_column_anx58250z10 = CARRY(u_memory_amodgen_counter_column_anx58250z11 & !u_memory_amodgen_counter_column_anx58250z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_column_anx58250z11,
	datad => VCC,
	cin => u_memory_amodgen_counter_column_anx58250z12,
	combout => u_memory_amodgen_counter_column_anx53265z1,
	cout => u_memory_amodgen_counter_column_anx58250z10);

u_memory_amodgen_counter_column_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx53265z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z11);

u_memory_amodgen_counter_column_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx54262z1 = u_memory_amodgen_counter_column_anx58250z9 & !u_memory_amodgen_counter_column_anx58250z10 # !u_memory_amodgen_counter_column_anx58250z9 & (u_memory_amodgen_counter_column_anx58250z10 # GND)
-- u_memory_amodgen_counter_column_anx58250z8 = CARRY(!u_memory_amodgen_counter_column_anx58250z10 # !u_memory_amodgen_counter_column_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z9,
	datad => VCC,
	cin => u_memory_amodgen_counter_column_anx58250z10,
	combout => u_memory_amodgen_counter_column_anx54262z1,
	cout => u_memory_amodgen_counter_column_anx58250z8);

u_memory_amodgen_counter_column_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx56256z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z5);

u_memory_aix60567z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60567z4 = u_memory_anx60567z5 # u_memory_amodgen_counter_column_anx58250z5 # u_memory_amodgen_counter_column_anx58250z3 # u_memory_amodgen_counter_column_anx58250z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z5,
	datab => u_memory_amodgen_counter_column_anx58250z5,
	datac => u_memory_amodgen_counter_column_anx58250z3,
	datad => u_memory_amodgen_counter_column_anx58250z7,
	combout => u_memory_anx60567z4);

u_memory_amodgen_counter_row_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_row_anx58250z1 = u_memory_amodgen_counter_row_anx1041z1 $ u_memory_amodgen_counter_row_anx58250z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx1041z1,
	cin => u_memory_amodgen_counter_row_anx58250z2,
	combout => u_memory_amodgen_counter_row_anx58250z1);

u_memory_amodgen_counter_row_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_row_anx58250z1,
	sclr => u_memory_anx8852z1,
	ena => u_memory_amodgen_counter_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_row_anx1041z1);

u_memory_aix60567z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60567z3 = u_memory_amodgen_counter_row_anx58250z7 # u_memory_amodgen_counter_row_anx58250z9 # u_memory_amodgen_counter_row_anx58250z13 # u_memory_amodgen_counter_row_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx58250z7,
	datab => u_memory_amodgen_counter_row_anx58250z9,
	datac => u_memory_amodgen_counter_row_anx58250z13,
	datad => u_memory_amodgen_counter_row_anx58250z11,
	combout => u_memory_anx60567z3);

u_memory_aix60567z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60567z2 = u_memory_amodgen_counter_row_anx58250z5 # u_memory_amodgen_counter_row_anx58250z3 # u_memory_amodgen_counter_row_anx1041z1 # u_memory_anx60567z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_row_anx58250z5,
	datab => u_memory_amodgen_counter_row_anx58250z3,
	datac => u_memory_amodgen_counter_row_anx1041z1,
	datad => u_memory_anx60567z3,
	combout => u_memory_anx60567z2);

u_memory_aix60567z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60567z1 = u_memory_ap_o_valid # u_memory_anx60567z2 & (u_memory_amodgen_counter_column_anx1041z1 # u_memory_anx60567z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx1041z1,
	datab => u_memory_anx60567z4,
	datac => u_memory_ap_o_valid,
	datad => u_memory_anx60567z2,
	combout => u_memory_anx60567z1);

u_memory_areg_o_valid : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_anx60567z1,
	sclr => ALT_INV_debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_valid);

ix64956z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx64956z1 = i_reset_acombout # u_memory_ap_o_valid # !nx57127z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => i_reset_acombout,
	datad => u_memory_ap_o_valid,
	combout => nx64956z1);

reg_f_state_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_state_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx64956z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_state_3_a);

f_state_3_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- f_state_3_a_wirecell_combout = !f_state_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_state_3_a,
	combout => f_state_3_a_wirecell_combout);

reg_f_state_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_state_3_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => nx64956z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63959z1);

nx63959z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- nx63959z1_a_wirecell_combout = !nx63959z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx63959z1,
	combout => nx63959z1_a_wirecell_combout);

reg_f_state_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx63959z1_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => nx64956z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_state_1_a);

reg_f_state_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_state_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx64956z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_state_2_a);

ix57127z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx57127z2 = !f_state_3_a & !f_state_2_a & !f_state_1_a & !nx63959z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_state_3_a,
	datab => f_state_2_a,
	datac => f_state_1_a,
	datad => nx63959z1,
	combout => nx57127z2);

ix20836z52987 : cycloneii_lcell_comb
-- Equation(s):
-- nx20836z1 = u_memory_ap_o_valid # !nx57127z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx57127z2,
	datad => u_memory_ap_o_valid,
	combout => nx20836z1);

u_flow_areg_p20 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20836z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap20);

u_flow_areg_p30 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap20,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap30);

u_flow_areg_p40 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap30,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap40);

u_flow_aix29521z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx29521z1 = i_reset_acombout # u_flow_ap40

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	datad => u_flow_ap40,
	combout => u_flow_anx29521z1);

u_flow_areg_state_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_astate_3_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => u_flow_anx29521z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx28524z1);

u_flow_anx28524z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx28524z1_a_wirecell_combout = !u_flow_anx28524z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx28524z1,
	combout => u_flow_anx28524z1_a_wirecell_combout);

u_flow_areg_state_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx28524z1_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => u_flow_anx29521z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_astate_1_a);

u_flow_areg_state_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_astate_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => u_flow_anx29521z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_astate_2_a);

u_flow_areg_state_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_astate_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => u_flow_anx29521z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_astate_3_a);

u_flow_areg_o_valid : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_astate_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ao_valid);

ix37378z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_7_a);

u_memory_aix40106z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx40106z1 = u_memory_anx8852z1 # u_memory_anx40106z2 & i_valid_acombout & !u_memory_ap_debug_num_1_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx40106z2,
	datab => i_valid_acombout,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_anx8852z1,
	combout => u_memory_anx40106z1);

u_memory_aix39109z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx39109z3 = !u_memory_ap_debug_num_1_1_a & !u_memory_ap_debug_num_1_0_a & !u_memory_ap_debug_num_1_2_a & i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_1_a,
	datab => u_memory_ap_debug_num_1_0_a,
	datac => u_memory_ap_debug_num_1_2_a,
	datad => i_valid_acombout,
	combout => u_memory_anx39109z3);

u_memory_aix39109z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx39109z2 = i_reset_acombout # u_memory_anx39109z3 # u_memory_anot_rtlc2_X_0_n244 # u_memory_anx8852z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => u_memory_anx39109z3,
	datac => u_memory_anot_rtlc2_X_0_n244,
	datad => u_memory_anx8852z2,
	combout => u_memory_anx39109z2);

u_memory_areg_mem_wrn_current_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_debug_num_1_1_a,
	sclr => u_memory_anx40106z1,
	sload => VCC,
	ena => u_memory_anx39109z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_debug_num_1_2_a);

u_memory_ap_debug_num_1_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_debug_num_1_0_afeeder_combout = u_memory_ap_debug_num_1_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_debug_num_1_2_a,
	combout => u_memory_ap_debug_num_1_0_afeeder_combout);

u_memory_areg_mem_wrn_current_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_debug_num_1_0_afeeder_combout,
	sdata => VCC,
	sclr => u_memory_anx8852z1,
	sload => u_memory_anx39109z3,
	ena => u_memory_anx39109z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_debug_num_1_0_a);

u_memory_areg_mem_wrn_current_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_debug_num_1_0_a,
	sclr => u_memory_anx40106z1,
	sload => VCC,
	ena => u_memory_anx39109z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_debug_num_1_1_a);

u_memory_aix5021z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_aNOT_b_0_a = u_memory_ap_debug_num_1_1_a & u_memory_anx60567z2 # !u_memory_ap_debug_num_1_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_0_a,
	datac => u_memory_ap_debug_num_1_1_a,
	datad => u_memory_anx60567z2,
	combout => u_memory_aNOT_b_0_a);

ix30399z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_0_a);

u_memory_amodgen_counter_column_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx54262z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx58250z9);

u_memory_amodgen_counter_column_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_amodgen_counter_column_anx58250z1 = u_memory_amodgen_counter_column_anx58250z2 $ u_memory_amodgen_counter_column_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_column_anx1041z1,
	cin => u_memory_amodgen_counter_column_anx58250z2,
	combout => u_memory_amodgen_counter_column_anx58250z1);

u_memory_amodgen_counter_column_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx58250z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_amodgen_counter_column_anx1041z1);

ix31396z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_1_a);

ix32393z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_2_a);

ix33390z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_3_a);

ix34387z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_4_a);

ix35384z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_5_a);

ix36381z43919 : cycloneii_io
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

reg_in_i_pixel_ibuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug_num_2_dup0_6_a);

u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory_notri:u_memory|ram_dq_8_2:u_mem3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => u_memory_ap_debug_num_0_2_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory_notri:u_memory|ram_dq_8_1:u_mem2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => u_memory_ap_debug_num_0_1_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

u_memory_aix63578z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx63578z2 = u_memory_aNOT_b_0_a & u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7) # !u_memory_aNOT_b_0_a & (u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(7) & u_memory_anx60567z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_aNOT_b_0_a,
	datab => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7),
	datac => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(7),
	datad => u_memory_anx60567z2,
	combout => u_memory_anx63578z2);

u_memory_aix63578z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx63578z1 = u_memory_anx63578z2 # !u_memory_anx60567z2 & debug_num_2_dup0_7_a & !u_memory_aNOT_b_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => debug_num_2_dup0_7_a,
	datac => u_memory_aNOT_b_0_a,
	datad => u_memory_anx63578z2,
	combout => u_memory_anx63578z1);

u_memory_ap_o_image2_0_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_7_afeeder_combout = u_memory_anx63578z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx63578z1,
	combout => u_memory_ap_o_image2_0_7_afeeder_combout);

u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory_notri:u_memory|ram_dq_8_0:u_mem1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => u_memory_ap_debug_num_0_0_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

u_memory_aix5021z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ab_1_a = !u_memory_ap_debug_num_1_0_a & (!u_memory_ap_debug_num_1_1_a # !u_memory_anx60567z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_ab_1_a);

u_memory_areg_buffer2_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_7_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(7),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_7_a);

ix20836z52947 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_7_a = nx57127z2 & (u_memory_ap_o_image2_0_7_a) # !nx57127z2 & f_b1_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_next_7_a,
	datac => u_memory_ap_o_image2_0_7_a,
	datad => nx57127z2,
	combout => f_b1_7_a);

u_memory_aix55380z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_aNOT_b_0_dup_353 = u_memory_ap_debug_num_1_0_a & u_memory_anx60567z2 # !u_memory_ap_debug_num_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_0_a,
	datac => u_memory_anx60567z2,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_aNOT_b_0_dup_353);

u_memory_aix61362z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx61362z2 = u_memory_aNOT_b_0_dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6)) # !u_memory_aNOT_b_0_dup_353 & u_memory_anx60567z2 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_dup_353,
	datac => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(6),
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6),
	combout => u_memory_anx61362z2);

u_memory_aix61362z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx61362z1 = u_memory_anx61362z2 # !u_memory_anx60567z2 & debug_num_2_dup0_6_a & !u_memory_aNOT_b_0_dup_353

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_anx61362z2,
	datac => debug_num_2_dup0_6_a,
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx61362z1);

u_memory_ap_o_image2_1_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_6_afeeder_combout = u_memory_anx61362z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx61362z1,
	combout => u_memory_ap_o_image2_1_6_afeeder_combout);

u_memory_aix55380z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ab_1_dup_352 = !u_memory_ap_debug_num_1_1_a & (!u_memory_ap_debug_num_1_0_a # !u_memory_anx60567z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_ab_1_dup_352);

u_memory_areg_buffer2_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_6_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(6),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_6_a);

ix20836z52956 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_6_a = nx57127z2 & (u_memory_ap_o_image2_1_6_a) # !nx57127z2 & f_b2_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_b2_next_6_a,
	datac => u_memory_ap_o_image2_1_6_a,
	datad => nx57127z2,
	combout => f_b2_6_a);

f_b3_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_5_afeeder_combout = f_i2_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_next_5_a,
	combout => f_b3_next_5_afeeder_combout);

u_memory_ap_o_image2_2_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_5_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => u_memory_ap_o_image2_2_5_afeeder_combout);

u_memory_aix50245z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx50245z1 = u_memory_anx60567z2 # u_memory_ap_debug_num_1_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_anx60567z2,
	datad => u_memory_ap_debug_num_1_2_a,
	combout => u_memory_anx50245z1);

u_memory_areg_buffer2_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_5_afeeder_combout,
	sdata => debug_num_2_dup0_5_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_5_a);

u_memory_areg_buffer1_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_5_a);

ix57127z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57127z1 = !i_reset_acombout & (u_memory_ap_o_valid # !nx57127z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datab => i_reset_acombout,
	datad => u_memory_ap_o_valid,
	combout => nx57127z1);

reg_f_b3_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_5_a);

f_b2_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_5_afeeder_combout = f_b3_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b3_next_5_a,
	combout => f_b2_next_5_afeeder_combout);

reg_f_b2_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_5_a);

u_memory_aix60365z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60365z2 = u_memory_aNOT_b_0_dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5)) # !u_memory_aNOT_b_0_dup_353 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(5) & u_memory_anx60567z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(5),
	datab => u_memory_aNOT_b_0_dup_353,
	datac => u_memory_anx60567z2,
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => u_memory_anx60365z2);

u_memory_aix60365z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60365z1 = u_memory_anx60365z2 # debug_num_2_dup0_5_a & !u_memory_aNOT_b_0_dup_353 & !u_memory_anx60567z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debug_num_2_dup0_5_a,
	datab => u_memory_aNOT_b_0_dup_353,
	datac => u_memory_anx60567z2,
	datad => u_memory_anx60365z2,
	combout => u_memory_anx60365z1);

u_memory_ap_o_image2_1_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_5_afeeder_combout = u_memory_anx60365z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx60365z1,
	combout => u_memory_ap_o_image2_1_5_afeeder_combout);

u_memory_areg_buffer2_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_5_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(5),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_5_a);

ix20836z52957 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_5_a = nx57127z2 & (u_memory_ap_o_image2_1_5_a) # !nx57127z2 & f_b2_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b2_next_5_a,
	datac => nx57127z2,
	datad => u_memory_ap_o_image2_1_5_a,
	combout => f_b2_5_a);

f_b3_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_4_afeeder_combout = f_i2_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_next_4_a,
	combout => f_b3_next_4_afeeder_combout);

u_memory_ap_o_image2_2_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_4_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4),
	combout => u_memory_ap_o_image2_2_4_afeeder_combout);

u_memory_areg_buffer2_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_4_afeeder_combout,
	sdata => debug_num_2_dup0_4_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_4_a);

u_memory_areg_buffer1_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_4_a);

reg_f_b3_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_4_a);

f_b2_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_4_afeeder_combout = f_b3_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b3_next_4_a,
	combout => f_b2_next_4_afeeder_combout);

reg_f_b2_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_4_a);

u_memory_aix59368z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx59368z2 = u_memory_aNOT_b_0_dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4)) # !u_memory_aNOT_b_0_dup_353 & u_memory_anx60567z2 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_dup_353,
	datac => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(4),
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4),
	combout => u_memory_anx59368z2);

u_memory_aix59368z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx59368z1 = u_memory_anx59368z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_dup_353 & debug_num_2_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_dup_353,
	datac => debug_num_2_dup0_4_a,
	datad => u_memory_anx59368z2,
	combout => u_memory_anx59368z1);

u_memory_ap_o_image2_1_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_4_afeeder_combout = u_memory_anx59368z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx59368z1,
	combout => u_memory_ap_o_image2_1_4_afeeder_combout);

u_memory_areg_buffer2_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_4_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(4),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_4_a);

ix20836z52958 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_4_a = nx57127z2 & (u_memory_ap_o_image2_1_4_a) # !nx57127z2 & f_b2_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b2_next_4_a,
	datac => u_memory_ap_o_image2_1_4_a,
	datad => nx57127z2,
	combout => f_b2_4_a);

f_b2_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_3_afeeder_combout = f_b3_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_b3_next_3_a,
	combout => f_b2_next_3_afeeder_combout);

u_memory_ap_o_image2_2_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_3_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => u_memory_ap_o_image2_2_3_afeeder_combout);

u_memory_areg_buffer2_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_3_afeeder_combout,
	sdata => debug_num_2_dup0_3_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_3_a);

reg_f_b2_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_3_a);

ix20836z52959 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_3_a = nx57127z2 & u_memory_ap_o_image2_1_3_a # !nx57127z2 & (f_b2_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_1_3_a,
	datab => f_b2_next_3_a,
	datac => nx57127z2,
	combout => f_b2_3_a);

f_b3_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_2_afeeder_combout = f_i2_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_next_2_a,
	combout => f_b3_next_2_afeeder_combout);

u_memory_ap_o_image2_2_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_2_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2),
	combout => u_memory_ap_o_image2_2_2_afeeder_combout);

u_memory_areg_buffer2_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_2_afeeder_combout,
	sdata => debug_num_2_dup0_2_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_2_a);

u_memory_areg_buffer1_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_2_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_2_a);

reg_f_b3_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_2_a);

f_b2_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_2_afeeder_combout = f_b3_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b3_next_2_a,
	combout => f_b2_next_2_afeeder_combout);

reg_f_b2_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_2_a);

ix20836z52960 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_2_a = nx57127z2 & u_memory_ap_o_image2_1_2_a # !nx57127z2 & (f_b2_next_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_1_2_a,
	datac => f_b2_next_2_a,
	datad => nx57127z2,
	combout => f_b2_2_a);

u_memory_aix56377z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx56377z3 = u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_a & !u_memory_ap_debug_num_1_0_a & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_ap_debug_num_1_1_a,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(1),
	combout => u_memory_anx56377z3);

u_memory_aix56377z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx56377z1 = u_memory_anx56377z2 # u_memory_anx56377z3 # u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1) & u_memory_aNOT_b_0_dup_353

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx56377z2,
	datab => u_memory_anx56377z3,
	datac => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx56377z1);

u_memory_ap_o_image2_1_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_1_afeeder_combout = u_memory_anx56377z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_anx56377z1,
	combout => u_memory_ap_o_image2_1_1_afeeder_combout);

u_memory_areg_buffer2_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_1_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(1),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_1_a);

f_t2_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_1_afeeder_combout = f_t3_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t3_next_1_a,
	combout => f_t2_next_1_afeeder_combout);

u_memory_aix4024z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx4024z3 = u_memory_ap_debug_num_1_0_a & debug_num_2_dup0_1_a & !u_memory_anx60567z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_0_a,
	datac => debug_num_2_dup0_1_a,
	datad => u_memory_anx60567z2,
	combout => u_memory_anx4024z3);

u_memory_aix4024z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx4024z2 = u_memory_anx60567z2 & !u_memory_ap_debug_num_1_1_a & u_memory_ap_debug_num_1_0_a & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_ap_debug_num_1_1_a,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => u_memory_anx4024z2);

u_memory_aix4024z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx4024z1 = u_memory_anx4024z3 # u_memory_anx4024z2 # u_memory_aNOT_b_0_a & u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_aNOT_b_0_a,
	datab => u_memory_anx4024z3,
	datac => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_memory_anx4024z2,
	combout => u_memory_anx4024z1);

u_memory_ap_o_image2_0_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_1_afeeder_combout = u_memory_anx4024z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx4024z1,
	combout => u_memory_ap_o_image2_0_1_afeeder_combout);

u_memory_areg_buffer2_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_1_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(1),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_1_a);

u_memory_areg_buffer1_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_1_a);

u_memory_areg_buffer0_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_1_a);

reg_f_t2_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_1_a);

f_t1_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_1_afeeder_combout = f_t2_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t2_next_1_a,
	combout => f_t1_next_1_afeeder_combout);

u_memory_ap_o_image1_1_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image1_1_1_afeeder_combout = u_memory_ap_o_image2_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_1_a,
	combout => u_memory_ap_o_image1_1_1_afeeder_combout);

u_memory_areg_buffer1_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image1_1_1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_1_a);

u_memory_areg_buffer0_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_1_a);

reg_f_t1_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_1_a);

f_i2_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_1_afeeder_combout = f_t1_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t1_next_1_a,
	combout => f_i2_next_1_afeeder_combout);

u_memory_ap_o_image2_2_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_1_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(1),
	combout => u_memory_ap_o_image2_2_1_afeeder_combout);

u_memory_areg_buffer2_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_1_afeeder_combout,
	sdata => debug_num_2_dup0_1_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_1_a);

u_memory_areg_buffer1_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_1_a);

u_memory_areg_buffer0_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_1_a);

reg_f_i2_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_1_a);

f_b3_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_1_afeeder_combout = f_i2_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_i2_next_1_a,
	combout => f_b3_next_1_afeeder_combout);

reg_f_b3_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_1_a);

f_b2_next_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_1_afeeder_combout = f_b3_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b3_next_1_a,
	combout => f_b2_next_1_afeeder_combout);

reg_f_b2_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_1_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_1_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_1_a);

ix20836z52961 : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_1_a = nx57127z2 & u_memory_ap_o_image2_1_1_a # !nx57127z2 & (f_b2_next_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image2_1_1_a,
	datac => f_b2_next_1_a,
	datad => nx57127z2,
	combout => f_b2_1_a);

f_i1_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_0_afeeder_combout = f_b1_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b1_next_0_a,
	combout => f_i1_next_0_afeeder_combout);

u_memory_aix5021z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx5021z3 = u_memory_ap_debug_num_1_0_a & debug_num_2_dup0_0_a & !u_memory_anx60567z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_0_a,
	datac => debug_num_2_dup0_0_a,
	datad => u_memory_anx60567z2,
	combout => u_memory_anx5021z3);

u_memory_aix5021z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx5021z2 = u_memory_anx60567z2 & !u_memory_ap_debug_num_1_1_a & u_memory_ap_debug_num_1_0_a & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_ap_debug_num_1_1_a,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => u_memory_anx5021z2);

u_memory_aix5021z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx5021z1 = u_memory_anx5021z3 # u_memory_anx5021z2 # u_memory_aNOT_b_0_a & u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_aNOT_b_0_a,
	datab => u_memory_anx5021z3,
	datac => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0),
	datad => u_memory_anx5021z2,
	combout => u_memory_anx5021z1);

u_memory_ap_o_image2_0_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_0_afeeder_combout = u_memory_anx5021z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx5021z1,
	combout => u_memory_ap_o_image2_0_0_afeeder_combout);

u_memory_areg_buffer2_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_0_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(0),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_0_a);

reg_f_i1_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_0_a);

f_t3_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_0_afeeder_combout = f_i1_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_0_a,
	combout => f_t3_next_0_afeeder_combout);

u_memory_areg_buffer1_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_0_a);

reg_f_t3_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_0_a);

f_t2_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_0_afeeder_combout = f_t3_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t3_next_0_a,
	combout => f_t2_next_0_afeeder_combout);

u_memory_areg_buffer0_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_0_a);

reg_f_t2_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_0_a);

f_t1_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_next_0_afeeder_combout = f_t2_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t2_next_0_a,
	combout => f_t1_next_0_afeeder_combout);

u_memory_aix55380z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx55380z3 = !u_memory_ap_debug_num_1_0_a & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(0) & u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_debug_num_1_0_a,
	datab => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(0),
	datac => u_memory_anx60567z2,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_anx55380z3);

u_memory_aix55380z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx55380z2 = debug_num_2_dup0_0_a & !u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debug_num_2_dup0_0_a,
	datac => u_memory_anx60567z2,
	datad => u_memory_ap_debug_num_1_1_a,
	combout => u_memory_anx55380z2);

u_memory_aix55380z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx55380z1 = u_memory_anx55380z3 # u_memory_anx55380z2 # u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0) & u_memory_aNOT_b_0_dup_353

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0),
	datab => u_memory_anx55380z3,
	datac => u_memory_anx55380z2,
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx55380z1);

u_memory_ap_o_image2_1_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_0_afeeder_combout = u_memory_anx55380z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx55380z1,
	combout => u_memory_ap_o_image2_1_0_afeeder_combout);

u_memory_areg_buffer2_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_0_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(0),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_0_a);

u_memory_ap_o_image1_1_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image1_1_0_afeeder_combout = u_memory_ap_o_image2_1_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_0_a,
	combout => u_memory_ap_o_image1_1_0_afeeder_combout);

u_memory_areg_buffer1_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image1_1_0_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_0_a);

u_memory_areg_buffer0_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_0_a);

reg_f_t1_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t1_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image0_1_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t1_next_0_a);

f_i2_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_0_afeeder_combout = f_t1_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t1_next_0_a,
	combout => f_i2_next_0_afeeder_combout);

u_memory_ap_o_image2_2_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_0_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(0),
	combout => u_memory_ap_o_image2_2_0_afeeder_combout);

u_memory_areg_buffer2_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_0_afeeder_combout,
	sdata => debug_num_2_dup0_0_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_0_a);

u_memory_areg_buffer1_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_0_a);

u_memory_areg_buffer0_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_0_a);

reg_f_i2_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_0_a);

f_b3_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_0_afeeder_combout = f_i2_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i2_next_0_a,
	combout => f_b3_next_0_afeeder_combout);

reg_f_b3_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_0_a);

f_b2_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_0_afeeder_combout = f_b3_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b3_next_0_a,
	combout => f_b2_next_0_afeeder_combout);

reg_f_b2_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_0_a);

f_b1_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_0_afeeder_combout = f_b2_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_0_a,
	combout => f_b1_next_0_afeeder_combout);

reg_f_b1_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_0_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_0_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_0_a);

ix20836z52954 : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_0_a = nx57127z2 & u_memory_ap_o_image2_0_0_a # !nx57127z2 & (f_b1_next_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_0_0_a,
	datab => nx57127z2,
	datad => f_b1_next_0_a,
	combout => f_b1_0_a);

u_flow_ap12_add8_0i2_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx38970z1 = f_b1_1_a & (f_b2_1_a & u_flow_ap12_add8_0i2_anx44952z22 & VCC # !f_b2_1_a & !u_flow_ap12_add8_0i2_anx44952z22) # !f_b1_1_a & (f_b2_1_a & !u_flow_ap12_add8_0i2_anx44952z22 # !f_b2_1_a & (u_flow_ap12_add8_0i2_anx44952z22 # 
-- GND))
-- u_flow_ap12_add8_0i2_anx44952z19 = CARRY(f_b1_1_a & !f_b2_1_a & !u_flow_ap12_add8_0i2_anx44952z22 # !f_b1_1_a & (!u_flow_ap12_add8_0i2_anx44952z22 # !f_b2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_1_a,
	datab => f_b2_1_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z22,
	combout => u_flow_ap12_add8_0i2_anx38970z1,
	cout => u_flow_ap12_add8_0i2_anx44952z19);

u_flow_ap12_add8_0i2_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx39967z1 = (f_b1_2_a $ f_b2_2_a $ !u_flow_ap12_add8_0i2_anx44952z19) # GND
-- u_flow_ap12_add8_0i2_anx44952z16 = CARRY(f_b1_2_a & (f_b2_2_a # !u_flow_ap12_add8_0i2_anx44952z19) # !f_b1_2_a & f_b2_2_a & !u_flow_ap12_add8_0i2_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b1_2_a,
	datab => f_b2_2_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z19,
	combout => u_flow_ap12_add8_0i2_anx39967z1,
	cout => u_flow_ap12_add8_0i2_anx44952z16);

u_flow_ap12_add8_0i2_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx44952z1 = f_b2_7_a & (f_b1_7_a & u_flow_ap12_add8_0i2_anx44952z4 & VCC # !f_b1_7_a & !u_flow_ap12_add8_0i2_anx44952z4) # !f_b2_7_a & (f_b1_7_a & !u_flow_ap12_add8_0i2_anx44952z4 # !f_b1_7_a & (u_flow_ap12_add8_0i2_anx44952z4 # 
-- GND))
-- u_flow_ap12_add8_0i2_anx23445z2 = CARRY(f_b2_7_a & !f_b1_7_a & !u_flow_ap12_add8_0i2_anx44952z4 # !f_b2_7_a & (!u_flow_ap12_add8_0i2_anx44952z4 # !f_b1_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b2_7_a,
	datab => f_b1_7_a,
	datad => VCC,
	cin => u_flow_ap12_add8_0i2_anx44952z4,
	combout => u_flow_ap12_add8_0i2_anx44952z1,
	cout => u_flow_ap12_add8_0i2_anx23445z2);

u_flow_ap12_add8_0i2_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add8_0i2_anx23445z1 = !u_flow_ap12_add8_0i2_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap12_add8_0i2_anx23445z2,
	combout => u_flow_ap12_add8_0i2_anx23445z1);

f_b3_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_6_afeeder_combout = f_i2_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_next_6_a,
	combout => f_b3_next_6_afeeder_combout);

u_memory_ap_o_image2_2_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_6_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(6),
	combout => u_memory_ap_o_image2_2_6_afeeder_combout);

u_memory_areg_buffer2_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_6_afeeder_combout,
	sdata => debug_num_2_dup0_6_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_6_a);

u_memory_areg_buffer1_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_6_a);

reg_f_b3_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_6_a);

ix20836z52964 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_6_a = nx57127z2 & (u_memory_ap_o_image2_2_6_a) # !nx57127z2 & f_b3_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b3_next_6_a,
	datac => nx57127z2,
	datad => u_memory_ap_o_image2_2_6_a,
	combout => f_b3_6_a);

ix20836z52965 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_5_a = nx57127z2 & u_memory_ap_o_image2_2_5_a # !nx57127z2 & (f_b3_next_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_2_5_a,
	datac => nx57127z2,
	datad => f_b3_next_5_a,
	combout => f_b3_5_a);

ix20836z52966 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_4_a = nx57127z2 & u_memory_ap_o_image2_2_4_a # !nx57127z2 & (f_b3_next_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image2_2_4_a,
	datac => nx57127z2,
	datad => f_b3_next_4_a,
	combout => f_b3_4_a);

f_i2_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_next_3_afeeder_combout = f_t1_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_next_3_a,
	combout => f_i2_next_3_afeeder_combout);

u_memory_areg_buffer1_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_3_a);

u_memory_areg_buffer0_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_3_a);

reg_f_i2_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i2_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image0_2_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i2_next_3_a);

f_b3_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_next_3_afeeder_combout = f_i2_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i2_next_3_a,
	combout => f_b3_next_3_afeeder_combout);

reg_f_b3_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b3_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image1_2_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b3_next_3_a);

ix20836z52967 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_3_a = nx57127z2 & u_memory_ap_o_image2_2_3_a # !nx57127z2 & (f_b3_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image2_2_3_a,
	datab => nx57127z2,
	datac => f_b3_next_3_a,
	combout => f_b3_3_a);

ix20836z52970 : cycloneii_lcell_comb
-- Equation(s):
-- f_b3_0_a = nx57127z2 & u_memory_ap_o_image2_2_0_a # !nx57127z2 & (f_b3_next_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image2_2_0_a,
	datad => f_b3_next_0_a,
	combout => f_b3_0_a);

u_flow_ap12_add9_2_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx37973z1 = u_flow_ap12_add8_0i2_anx37973z1 & (f_b3_0_a $ VCC) # !u_flow_ap12_add8_0i2_anx37973z1 & f_b3_0_a & VCC
-- u_flow_ap12_add9_2_anx45949z24 = CARRY(u_flow_ap12_add8_0i2_anx37973z1 & f_b3_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add8_0i2_anx37973z1,
	datab => f_b3_0_a,
	datad => VCC,
	combout => u_flow_ap12_add9_2_anx37973z1,
	cout => u_flow_ap12_add9_2_anx45949z24);

u_flow_ap12_add9_2_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx38970z1 = f_b3_1_a & (u_flow_ap12_add8_0i2_anx38970z1 & u_flow_ap12_add9_2_anx45949z24 & VCC # !u_flow_ap12_add8_0i2_anx38970z1 & !u_flow_ap12_add9_2_anx45949z24) # !f_b3_1_a & (u_flow_ap12_add8_0i2_anx38970z1 & 
-- !u_flow_ap12_add9_2_anx45949z24 # !u_flow_ap12_add8_0i2_anx38970z1 & (u_flow_ap12_add9_2_anx45949z24 # GND))
-- u_flow_ap12_add9_2_anx45949z21 = CARRY(f_b3_1_a & !u_flow_ap12_add8_0i2_anx38970z1 & !u_flow_ap12_add9_2_anx45949z24 # !f_b3_1_a & (!u_flow_ap12_add9_2_anx45949z24 # !u_flow_ap12_add8_0i2_anx38970z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b3_1_a,
	datab => u_flow_ap12_add8_0i2_anx38970z1,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z24,
	combout => u_flow_ap12_add9_2_anx38970z1,
	cout => u_flow_ap12_add9_2_anx45949z21);

u_flow_ap12_add9_2_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx39967z1 = (f_b3_2_a $ u_flow_ap12_add8_0i2_anx39967z1 $ !u_flow_ap12_add9_2_anx45949z21) # GND
-- u_flow_ap12_add9_2_anx45949z18 = CARRY(f_b3_2_a & (u_flow_ap12_add8_0i2_anx39967z1 # !u_flow_ap12_add9_2_anx45949z21) # !f_b3_2_a & u_flow_ap12_add8_0i2_anx39967z1 & !u_flow_ap12_add9_2_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b3_2_a,
	datab => u_flow_ap12_add8_0i2_anx39967z1,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z21,
	combout => u_flow_ap12_add9_2_anx39967z1,
	cout => u_flow_ap12_add9_2_anx45949z18);

u_flow_ap12_add9_2_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx40964z1 = u_flow_ap12_add8_0i2_anx40964z1 & (f_b3_3_a & u_flow_ap12_add9_2_anx45949z18 & VCC # !f_b3_3_a & !u_flow_ap12_add9_2_anx45949z18) # !u_flow_ap12_add8_0i2_anx40964z1 & (f_b3_3_a & !u_flow_ap12_add9_2_anx45949z18 # !f_b3_3_a 
-- & (u_flow_ap12_add9_2_anx45949z18 # GND))
-- u_flow_ap12_add9_2_anx45949z15 = CARRY(u_flow_ap12_add8_0i2_anx40964z1 & !f_b3_3_a & !u_flow_ap12_add9_2_anx45949z18 # !u_flow_ap12_add8_0i2_anx40964z1 & (!u_flow_ap12_add9_2_anx45949z18 # !f_b3_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add8_0i2_anx40964z1,
	datab => f_b3_3_a,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z18,
	combout => u_flow_ap12_add9_2_anx40964z1,
	cout => u_flow_ap12_add9_2_anx45949z15);

u_flow_ap12_add9_2_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx41961z1 = (u_flow_ap12_add8_0i2_anx41961z1 $ f_b3_4_a $ !u_flow_ap12_add9_2_anx45949z15) # GND
-- u_flow_ap12_add9_2_anx45949z12 = CARRY(u_flow_ap12_add8_0i2_anx41961z1 & (f_b3_4_a # !u_flow_ap12_add9_2_anx45949z15) # !u_flow_ap12_add8_0i2_anx41961z1 & f_b3_4_a & !u_flow_ap12_add9_2_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add8_0i2_anx41961z1,
	datab => f_b3_4_a,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z15,
	combout => u_flow_ap12_add9_2_anx41961z1,
	cout => u_flow_ap12_add9_2_anx45949z12);

u_flow_ap12_add9_2_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx42958z1 = u_flow_ap12_add8_0i2_anx42958z1 & (f_b3_5_a & u_flow_ap12_add9_2_anx45949z12 & VCC # !f_b3_5_a & !u_flow_ap12_add9_2_anx45949z12) # !u_flow_ap12_add8_0i2_anx42958z1 & (f_b3_5_a & !u_flow_ap12_add9_2_anx45949z12 # !f_b3_5_a 
-- & (u_flow_ap12_add9_2_anx45949z12 # GND))
-- u_flow_ap12_add9_2_anx45949z9 = CARRY(u_flow_ap12_add8_0i2_anx42958z1 & !f_b3_5_a & !u_flow_ap12_add9_2_anx45949z12 # !u_flow_ap12_add8_0i2_anx42958z1 & (!u_flow_ap12_add9_2_anx45949z12 # !f_b3_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add8_0i2_anx42958z1,
	datab => f_b3_5_a,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z12,
	combout => u_flow_ap12_add9_2_anx42958z1,
	cout => u_flow_ap12_add9_2_anx45949z9);

u_flow_ap12_add9_2_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx43955z1 = (u_flow_ap12_add8_0i2_anx43955z1 $ f_b3_6_a $ !u_flow_ap12_add9_2_anx45949z9) # GND
-- u_flow_ap12_add9_2_anx45949z6 = CARRY(u_flow_ap12_add8_0i2_anx43955z1 & (f_b3_6_a # !u_flow_ap12_add9_2_anx45949z9) # !u_flow_ap12_add8_0i2_anx43955z1 & f_b3_6_a & !u_flow_ap12_add9_2_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add8_0i2_anx43955z1,
	datab => f_b3_6_a,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z9,
	combout => u_flow_ap12_add9_2_anx43955z1,
	cout => u_flow_ap12_add9_2_anx45949z6);

u_flow_ap12_add9_2_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx44952z1 = f_b3_7_a & (u_flow_ap12_add8_0i2_anx44952z1 & u_flow_ap12_add9_2_anx45949z6 & VCC # !u_flow_ap12_add8_0i2_anx44952z1 & !u_flow_ap12_add9_2_anx45949z6) # !f_b3_7_a & (u_flow_ap12_add8_0i2_anx44952z1 & 
-- !u_flow_ap12_add9_2_anx45949z6 # !u_flow_ap12_add8_0i2_anx44952z1 & (u_flow_ap12_add9_2_anx45949z6 # GND))
-- u_flow_ap12_add9_2_anx45949z3 = CARRY(f_b3_7_a & !u_flow_ap12_add8_0i2_anx44952z1 & !u_flow_ap12_add9_2_anx45949z6 # !f_b3_7_a & (!u_flow_ap12_add9_2_anx45949z6 # !u_flow_ap12_add8_0i2_anx44952z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_b3_7_a,
	datab => u_flow_ap12_add8_0i2_anx44952z1,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z6,
	combout => u_flow_ap12_add9_2_anx44952z1,
	cout => u_flow_ap12_add9_2_anx45949z3);

u_flow_ap12_add9_2_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx45949z1 = u_flow_ap12_add8_0i2_anx23445z1 & (u_flow_ap12_add9_2_anx45949z3 $ GND) # !u_flow_ap12_add8_0i2_anx23445z1 & !u_flow_ap12_add9_2_anx45949z3 & VCC
-- u_flow_ap12_add9_2_anx23445z2 = CARRY(u_flow_ap12_add8_0i2_anx23445z1 & !u_flow_ap12_add9_2_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap12_add8_0i2_anx23445z1,
	datad => VCC,
	cin => u_flow_ap12_add9_2_anx45949z3,
	combout => u_flow_ap12_add9_2_anx45949z1,
	cout => u_flow_ap12_add9_2_anx23445z2);

u_flow_ap12_add9_2_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap12_add9_2_anx23445z1 = u_flow_ap12_add9_2_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap12_add9_2_anx23445z2,
	combout => u_flow_ap12_add9_2_anx23445z1);

u_memory_aix1033z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx1033z2 = u_memory_aNOT_b_0_a & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4)) # !u_memory_aNOT_b_0_a & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(4),
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(4),
	combout => u_memory_anx1033z2);

u_memory_aix1033z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx1033z1 = u_memory_anx1033z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_a & debug_num_2_dup0_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => debug_num_2_dup0_4_a,
	datad => u_memory_anx1033z2,
	combout => u_memory_anx1033z1);

u_memory_ap_o_image2_0_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_4_afeeder_combout = u_memory_anx1033z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_anx1033z1,
	combout => u_memory_ap_o_image2_0_4_afeeder_combout);

u_memory_areg_buffer2_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_4_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(4),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_4_a);

u_memory_areg_buffer1_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_4_a);

u_memory_areg_buffer0_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_4_a);

f_b1_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_4_afeeder_combout = f_b2_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_4_a,
	combout => f_b1_next_4_afeeder_combout);

reg_f_b1_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_4_a);

f_i1_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_4_afeeder_combout = f_b1_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b1_next_4_a,
	combout => f_i1_next_4_afeeder_combout);

reg_f_i1_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_4_a);

f_t3_next_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_4_afeeder_combout = f_i1_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_4_a,
	combout => f_t3_next_4_afeeder_combout);

reg_f_t3_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_4_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_4_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_4_a);

ix20836z52942 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_4_a = nx57127z2 & u_memory_ap_o_image0_0_4_a # !nx57127z2 & (f_t3_next_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image0_0_4_a,
	datad => f_t3_next_4_a,
	combout => f_t3_4_a);

u_memory_aix2030z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx2030z2 = u_memory_aNOT_b_0_a & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3)) # !u_memory_aNOT_b_0_a & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(3),
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => u_memory_anx2030z2);

u_memory_aix2030z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx2030z1 = u_memory_anx2030z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_a & debug_num_2_dup0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => debug_num_2_dup0_3_a,
	datad => u_memory_anx2030z2,
	combout => u_memory_anx2030z1);

u_memory_ap_o_image2_0_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_3_afeeder_combout = u_memory_anx2030z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx2030z1,
	combout => u_memory_ap_o_image2_0_3_afeeder_combout);

u_memory_areg_buffer2_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_3_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(3),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_3_a);

u_memory_areg_buffer1_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_3_a);

u_memory_areg_buffer0_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_3_a);

f_b1_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_3_afeeder_combout = f_b2_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_3_a,
	combout => f_b1_next_3_afeeder_combout);

u_memory_aix58371z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx58371z2 = u_memory_aNOT_b_0_dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3)) # !u_memory_aNOT_b_0_dup_353 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(3) & (u_memory_anx60567z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(3),
	datab => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(3),
	datac => u_memory_anx60567z2,
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx58371z2);

u_memory_aix58371z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx58371z1 = u_memory_anx58371z2 # debug_num_2_dup0_3_a & !u_memory_anx60567z2 & !u_memory_aNOT_b_0_dup_353

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debug_num_2_dup0_3_a,
	datab => u_memory_anx60567z2,
	datac => u_memory_anx58371z2,
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx58371z1);

u_memory_ap_o_image2_1_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_3_afeeder_combout = u_memory_anx58371z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx58371z1,
	combout => u_memory_ap_o_image2_1_3_afeeder_combout);

u_memory_areg_buffer2_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_3_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(3),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_3_a);

reg_f_b1_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_3_a);

f_i1_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_3_afeeder_combout = f_b1_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_3_a,
	combout => f_i1_next_3_afeeder_combout);

reg_f_i1_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_3_a);

f_t3_next_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_3_afeeder_combout = f_i1_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_3_a,
	combout => f_t3_next_3_afeeder_combout);

reg_f_t3_next_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_3_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_3_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_3_a);

ix20836z52943 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_3_a = nx57127z2 & u_memory_ap_o_image0_0_3_a # !nx57127z2 & (f_t3_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image0_0_3_a,
	datad => f_t3_next_3_a,
	combout => f_t3_3_a);

f_b1_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_2_afeeder_combout = f_b2_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b2_next_2_a,
	combout => f_b1_next_2_afeeder_combout);

u_memory_aix57374z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx57374z2 = u_memory_aNOT_b_0_dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2)) # !u_memory_aNOT_b_0_dup_353 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(2) & (u_memory_anx60567z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(2),
	datab => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2),
	datac => u_memory_anx60567z2,
	datad => u_memory_aNOT_b_0_dup_353,
	combout => u_memory_anx57374z2);

u_memory_aix57374z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx57374z1 = u_memory_anx57374z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_dup_353 & debug_num_2_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_dup_353,
	datac => debug_num_2_dup0_2_a,
	datad => u_memory_anx57374z2,
	combout => u_memory_anx57374z1);

u_memory_ap_o_image2_1_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_2_afeeder_combout = u_memory_anx57374z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx57374z1,
	combout => u_memory_ap_o_image2_1_2_afeeder_combout);

u_memory_areg_buffer2_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_2_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(2),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_2_a);

reg_f_b1_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_2_a);

f_i1_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_2_afeeder_combout = f_b1_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_2_a,
	combout => f_i1_next_2_afeeder_combout);

u_memory_aix3027z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx3027z2 = u_memory_aNOT_b_0_a & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2)) # !u_memory_aNOT_b_0_a & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(2),
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(2),
	combout => u_memory_anx3027z2);

u_memory_aix3027z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx3027z1 = u_memory_anx3027z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_a & debug_num_2_dup0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => debug_num_2_dup0_2_a,
	datad => u_memory_anx3027z2,
	combout => u_memory_anx3027z1);

u_memory_ap_o_image2_0_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_2_afeeder_combout = u_memory_anx3027z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx3027z1,
	combout => u_memory_ap_o_image2_0_2_afeeder_combout);

u_memory_areg_buffer2_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_2_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(2),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_2_a);

reg_f_i1_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_2_a);

f_t3_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_2_afeeder_combout = f_i1_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_i1_next_2_a,
	combout => f_t3_next_2_afeeder_combout);

u_memory_areg_buffer1_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_2_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_2_a);

reg_f_t3_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_2_a);

f_t2_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_2_afeeder_combout = f_t3_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_t3_next_2_a,
	combout => f_t2_next_2_afeeder_combout);

u_memory_areg_buffer0_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_2_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_2_a);

reg_f_t2_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_2_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_2_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_2_a);

u_memory_ap_o_image1_1_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image1_1_2_afeeder_combout = u_memory_ap_o_image2_1_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_1_2_a,
	combout => u_memory_ap_o_image1_1_2_afeeder_combout);

u_memory_areg_buffer1_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image1_1_2_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_2_a);

u_memory_areg_buffer0_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_2_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_2_a);

ix20836z52936 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_2_a = nx57127z2 & (u_memory_ap_o_image0_1_2_a) # !nx57127z2 & f_t2_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t2_next_2_a,
	datac => u_memory_ap_o_image0_1_2_a,
	datad => nx57127z2,
	combout => f_t2_2_a);

ix20836z52929 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_1_a = nx57127z2 & (u_memory_ap_o_image0_2_1_a) # !nx57127z2 & f_t1_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t1_next_1_a,
	datac => u_memory_ap_o_image0_2_1_a,
	datad => nx57127z2,
	combout => f_t1_1_a);

ix20836z52938 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_0_a = nx57127z2 & (u_memory_ap_o_image0_1_0_a) # !nx57127z2 & f_t2_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t2_next_0_a,
	datac => u_memory_ap_o_image0_1_0_a,
	datad => nx57127z2,
	combout => f_t2_0_a);

u_flow_ap11_add8_0i1_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx37973z1 = f_t1_0_a & (f_t2_0_a $ VCC) # !f_t1_0_a & f_t2_0_a & VCC
-- u_flow_ap11_add8_0i1_anx44952z22 = CARRY(f_t1_0_a & f_t2_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_0_a,
	datab => f_t2_0_a,
	datad => VCC,
	combout => u_flow_ap11_add8_0i1_anx37973z1,
	cout => u_flow_ap11_add8_0i1_anx44952z22);

u_flow_ap11_add8_0i1_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx38970z1 = f_t2_1_a & (f_t1_1_a & u_flow_ap11_add8_0i1_anx44952z22 & VCC # !f_t1_1_a & !u_flow_ap11_add8_0i1_anx44952z22) # !f_t2_1_a & (f_t1_1_a & !u_flow_ap11_add8_0i1_anx44952z22 # !f_t1_1_a & (u_flow_ap11_add8_0i1_anx44952z22 # 
-- GND))
-- u_flow_ap11_add8_0i1_anx44952z19 = CARRY(f_t2_1_a & !f_t1_1_a & !u_flow_ap11_add8_0i1_anx44952z22 # !f_t2_1_a & (!u_flow_ap11_add8_0i1_anx44952z22 # !f_t1_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_1_a,
	datab => f_t1_1_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z22,
	combout => u_flow_ap11_add8_0i1_anx38970z1,
	cout => u_flow_ap11_add8_0i1_anx44952z19);

u_flow_ap11_add8_0i1_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx39967z1 = (f_t1_2_a $ f_t2_2_a $ !u_flow_ap11_add8_0i1_anx44952z19) # GND
-- u_flow_ap11_add8_0i1_anx44952z16 = CARRY(f_t1_2_a & (f_t2_2_a # !u_flow_ap11_add8_0i1_anx44952z19) # !f_t1_2_a & f_t2_2_a & !u_flow_ap11_add8_0i1_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_2_a,
	datab => f_t2_2_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z19,
	combout => u_flow_ap11_add8_0i1_anx39967z1,
	cout => u_flow_ap11_add8_0i1_anx44952z16);

u_flow_ap11_add9_1_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx37973z1 = f_t3_0_a & (u_flow_ap11_add8_0i1_anx37973z1 $ VCC) # !f_t3_0_a & u_flow_ap11_add8_0i1_anx37973z1 & VCC
-- u_flow_ap11_add9_1_anx45949z24 = CARRY(f_t3_0_a & u_flow_ap11_add8_0i1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t3_0_a,
	datab => u_flow_ap11_add8_0i1_anx37973z1,
	datad => VCC,
	combout => u_flow_ap11_add9_1_anx37973z1,
	cout => u_flow_ap11_add9_1_anx45949z24);

u_flow_ap11_add9_1_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx39967z1 = (f_t3_2_a $ u_flow_ap11_add8_0i1_anx39967z1 $ !u_flow_ap11_add9_1_anx45949z21) # GND
-- u_flow_ap11_add9_1_anx45949z18 = CARRY(f_t3_2_a & (u_flow_ap11_add8_0i1_anx39967z1 # !u_flow_ap11_add9_1_anx45949z21) # !f_t3_2_a & u_flow_ap11_add8_0i1_anx39967z1 & !u_flow_ap11_add9_1_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t3_2_a,
	datab => u_flow_ap11_add8_0i1_anx39967z1,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z21,
	combout => u_flow_ap11_add9_1_anx39967z1,
	cout => u_flow_ap11_add9_1_anx45949z18);

u_flow_ap11_add9_1_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx40964z1 = u_flow_ap11_add8_0i1_anx40964z1 & (f_t3_3_a & u_flow_ap11_add9_1_anx45949z18 & VCC # !f_t3_3_a & !u_flow_ap11_add9_1_anx45949z18) # !u_flow_ap11_add8_0i1_anx40964z1 & (f_t3_3_a & !u_flow_ap11_add9_1_anx45949z18 # !f_t3_3_a 
-- & (u_flow_ap11_add9_1_anx45949z18 # GND))
-- u_flow_ap11_add9_1_anx45949z15 = CARRY(u_flow_ap11_add8_0i1_anx40964z1 & !f_t3_3_a & !u_flow_ap11_add9_1_anx45949z18 # !u_flow_ap11_add8_0i1_anx40964z1 & (!u_flow_ap11_add9_1_anx45949z18 # !f_t3_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add8_0i1_anx40964z1,
	datab => f_t3_3_a,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z18,
	combout => u_flow_ap11_add9_1_anx40964z1,
	cout => u_flow_ap11_add9_1_anx45949z15);

u_flow_ap11_add9_1_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx41961z1 = (u_flow_ap11_add8_0i1_anx41961z1 $ f_t3_4_a $ !u_flow_ap11_add9_1_anx45949z15) # GND
-- u_flow_ap11_add9_1_anx45949z12 = CARRY(u_flow_ap11_add8_0i1_anx41961z1 & (f_t3_4_a # !u_flow_ap11_add9_1_anx45949z15) # !u_flow_ap11_add8_0i1_anx41961z1 & f_t3_4_a & !u_flow_ap11_add9_1_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add8_0i1_anx41961z1,
	datab => f_t3_4_a,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z15,
	combout => u_flow_ap11_add9_1_anx41961z1,
	cout => u_flow_ap11_add9_1_anx45949z12);

u_flow_ap21_sub11_4i4_aix46946z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx46946z29 = CARRY(u_flow_ap11_add9_1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap11_add9_1_anx37973z1,
	datad => VCC,
	cout => u_flow_ap21_sub11_4i4_anx46946z29);

u_flow_ap21_sub11_4i4_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx37973z1 = u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap21_sub11_4i4_anx46946z29 # GND) # !u_flow_ap12_add9_2_anx37973z1 & !u_flow_ap21_sub11_4i4_anx46946z29) # !u_flow_ap12_add9_2_anx38970z1 & 
-- (u_flow_ap12_add9_2_anx37973z1 & !u_flow_ap21_sub11_4i4_anx46946z29 # !u_flow_ap12_add9_2_anx37973z1 & u_flow_ap21_sub11_4i4_anx46946z29 & VCC)
-- u_flow_ap21_sub11_4i4_anx46946z27 = CARRY(u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap12_add9_2_anx37973z1 # !u_flow_ap21_sub11_4i4_anx46946z29) # !u_flow_ap12_add9_2_anx38970z1 & u_flow_ap12_add9_2_anx37973z1 & !u_flow_ap21_sub11_4i4_anx46946z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx38970z1,
	datab => u_flow_ap12_add9_2_anx37973z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z29,
	combout => u_flow_ap21_sub11_4i4_anx37973z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z27);

u_flow_ap21_sub11_4i4_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx39967z1 = u_flow_ap11_add9_1_anx39967z1 & (u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z24 # !u_flow_ap12_add9_2_anx40964z1 & u_flow_ap21_sub11_4i4_anx46946z24 & VCC) # !u_flow_ap11_add9_1_anx39967z1 & 
-- (u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap21_sub11_4i4_anx46946z24 # GND) # !u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z24)
-- u_flow_ap21_sub11_4i4_anx46946z21 = CARRY(u_flow_ap11_add9_1_anx39967z1 & u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z24 # !u_flow_ap11_add9_1_anx39967z1 & (u_flow_ap12_add9_2_anx40964z1 # !u_flow_ap21_sub11_4i4_anx46946z24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx39967z1,
	datab => u_flow_ap12_add9_2_anx40964z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z24,
	combout => u_flow_ap21_sub11_4i4_anx39967z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z21);

u_flow_ap21_sub11_4i4_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx42958z1 = (u_flow_ap11_add9_1_anx42958z1 $ u_flow_ap12_add9_2_anx43955z1 $ u_flow_ap21_sub11_4i4_anx46946z15) # GND
-- u_flow_ap21_sub11_4i4_anx46946z12 = CARRY(u_flow_ap11_add9_1_anx42958z1 & (!u_flow_ap21_sub11_4i4_anx46946z15 # !u_flow_ap12_add9_2_anx43955z1) # !u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap12_add9_2_anx43955z1 & !u_flow_ap21_sub11_4i4_anx46946z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx42958z1,
	datab => u_flow_ap12_add9_2_anx43955z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z15,
	combout => u_flow_ap21_sub11_4i4_anx42958z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z12);

u_flow_ap21_sub11_4i4_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx44952z1 = (u_flow_ap11_add9_1_anx44952z1 $ u_flow_ap12_add9_2_anx45949z1 $ u_flow_ap21_sub11_4i4_anx46946z9) # GND
-- u_flow_ap21_sub11_4i4_anx46946z6 = CARRY(u_flow_ap11_add9_1_anx44952z1 & (!u_flow_ap21_sub11_4i4_anx46946z9 # !u_flow_ap12_add9_2_anx45949z1) # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap12_add9_2_anx45949z1 & !u_flow_ap21_sub11_4i4_anx46946z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx44952z1,
	datab => u_flow_ap12_add9_2_anx45949z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z9,
	combout => u_flow_ap21_sub11_4i4_anx44952z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z6);

u_flow_ap21_sub11_4i4_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx45949z1 = u_flow_ap11_add9_1_anx45949z1 & (u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub11_4i4_anx46946z6 # !u_flow_ap12_add9_2_anx23445z1 & u_flow_ap21_sub11_4i4_anx46946z6 & VCC) # !u_flow_ap11_add9_1_anx45949z1 & 
-- (u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap21_sub11_4i4_anx46946z6 # GND) # !u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub11_4i4_anx46946z6)
-- u_flow_ap21_sub11_4i4_anx46946z3 = CARRY(u_flow_ap11_add9_1_anx45949z1 & u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub11_4i4_anx46946z6 # !u_flow_ap11_add9_1_anx45949z1 & (u_flow_ap12_add9_2_anx23445z1 # !u_flow_ap21_sub11_4i4_anx46946z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx45949z1,
	datab => u_flow_ap12_add9_2_anx23445z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z6,
	combout => u_flow_ap21_sub11_4i4_anx45949z1,
	cout => u_flow_ap21_sub11_4i4_anx46946z3);

u_memory_ap_o_image2_2_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_2_7_afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => u_memory_ap_o_image2_2_7_afeeder_combout);

u_memory_areg_buffer2_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_2_7_afeeder_combout,
	sdata => debug_num_2_dup0_7_a,
	sload => u_memory_anx50245z1,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_2_7_a);

u_memory_areg_buffer1_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_7_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_2_7_a);

u_memory_ap_o_image0_2_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_2_7_afeeder_combout = u_memory_ap_o_image1_2_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_2_7_a,
	combout => u_memory_ap_o_image0_2_7_afeeder_combout);

u_memory_areg_buffer0_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_2_7_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_7_a);

ix20836z52923 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_7_a = nx57127z2 & (u_memory_ap_o_image0_2_7_a) # !nx57127z2 & f_t1_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_next_7_a,
	datab => u_memory_ap_o_image0_2_7_a,
	datad => nx57127z2,
	combout => f_t1_7_a);

f_b2_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b2_next_6_afeeder_combout = f_b3_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b3_next_6_a,
	combout => f_b2_next_6_afeeder_combout);

reg_f_b2_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b2_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image2_2_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b2_next_6_a);

f_b1_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_6_afeeder_combout = f_b2_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_6_a,
	combout => f_b1_next_6_afeeder_combout);

reg_f_b1_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_6_a);

f_i1_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_6_afeeder_combout = f_b1_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_6_a,
	combout => f_i1_next_6_afeeder_combout);

u_memory_aix64575z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx64575z1 = u_memory_anx64575z2 # !u_memory_anx60567z2 & debug_num_2_dup0_6_a & !u_memory_aNOT_b_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx64575z2,
	datab => u_memory_anx60567z2,
	datac => debug_num_2_dup0_6_a,
	datad => u_memory_aNOT_b_0_a,
	combout => u_memory_anx64575z1);

u_memory_ap_o_image2_0_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_6_afeeder_combout = u_memory_anx64575z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx64575z1,
	combout => u_memory_ap_o_image2_0_6_afeeder_combout);

u_memory_areg_buffer2_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_6_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(6),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_6_a);

reg_f_i1_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_6_a);

f_t3_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_6_afeeder_combout = f_i1_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_6_a,
	combout => f_t3_next_6_afeeder_combout);

u_memory_areg_buffer1_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_6_a);

reg_f_t3_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_6_a);

f_t2_next_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_next_6_afeeder_combout = f_t3_next_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_t3_next_6_a,
	combout => f_t2_next_6_afeeder_combout);

u_memory_areg_buffer0_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_6_a);

reg_f_t2_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t2_next_6_afeeder_combout,
	sdata => u_memory_ap_o_image0_0_6_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t2_next_6_a);

ix20836z52932 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_6_a = nx57127z2 & u_memory_ap_o_image0_1_6_a # !nx57127z2 & (f_t2_next_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_image0_1_6_a,
	datab => f_t2_next_6_a,
	datad => nx57127z2,
	combout => f_t2_6_a);

u_memory_areg_buffer0_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_2_5_a);

ix20836z52925 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_5_a = nx57127z2 & (u_memory_ap_o_image0_2_5_a) # !nx57127z2 & f_t1_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_next_5_a,
	datab => u_memory_ap_o_image0_2_5_a,
	datad => nx57127z2,
	combout => f_t1_5_a);

u_memory_areg_buffer1_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_1_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_4_a);

u_memory_ap_o_image0_1_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image0_1_4_afeeder_combout = u_memory_ap_o_image1_1_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_4_a,
	combout => u_memory_ap_o_image0_1_4_afeeder_combout);

u_memory_areg_buffer0_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image0_1_4_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_1_4_a);

ix20836z52934 : cycloneii_lcell_comb
-- Equation(s):
-- f_t2_4_a = nx57127z2 & (u_memory_ap_o_image0_1_4_a) # !nx57127z2 & f_t2_next_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t2_next_4_a,
	datab => u_memory_ap_o_image0_1_4_a,
	datad => nx57127z2,
	combout => f_t2_4_a);

ix20836z52927 : cycloneii_lcell_comb
-- Equation(s):
-- f_t1_3_a = nx57127z2 & (u_memory_ap_o_image0_2_3_a) # !nx57127z2 & f_t1_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_next_3_a,
	datac => u_memory_ap_o_image0_2_3_a,
	datad => nx57127z2,
	combout => f_t1_3_a);

u_flow_ap11_add8_0i1_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add8_0i1_anx43955z1 = (f_t1_6_a $ f_t2_6_a $ !u_flow_ap11_add8_0i1_anx44952z7) # GND
-- u_flow_ap11_add8_0i1_anx44952z4 = CARRY(f_t1_6_a & (f_t2_6_a # !u_flow_ap11_add8_0i1_anx44952z7) # !f_t1_6_a & f_t2_6_a & !u_flow_ap11_add8_0i1_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t1_6_a,
	datab => f_t2_6_a,
	datad => VCC,
	cin => u_flow_ap11_add8_0i1_anx44952z7,
	combout => u_flow_ap11_add8_0i1_anx43955z1,
	cout => u_flow_ap11_add8_0i1_anx44952z4);

u_memory_aix36z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx36z2 = u_memory_aNOT_b_0_a & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5)) # !u_memory_aNOT_b_0_a & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(5),
	datad => u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => u_memory_anx36z2);

u_memory_aix36z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx36z1 = u_memory_anx36z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_a & debug_num_2_dup0_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z2,
	datab => u_memory_aNOT_b_0_a,
	datac => debug_num_2_dup0_5_a,
	datad => u_memory_anx36z2,
	combout => u_memory_anx36z1);

u_memory_ap_o_image2_0_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_0_5_afeeder_combout = u_memory_anx36z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_anx36z1,
	combout => u_memory_ap_o_image2_0_5_afeeder_combout);

u_memory_areg_buffer2_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_0_5_afeeder_combout,
	sdata => u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a(5),
	sload => u_memory_ab_1_a,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_0_5_a);

u_memory_areg_buffer1_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_5_a);

u_memory_areg_buffer0_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image0_0_5_a);

f_b1_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_b1_next_5_afeeder_combout = f_b2_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_b2_next_5_a,
	combout => f_b1_next_5_afeeder_combout);

reg_f_b1_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_b1_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image2_1_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_b1_next_5_a);

f_i1_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_next_5_afeeder_combout = f_b1_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_b1_next_5_a,
	combout => f_i1_next_5_afeeder_combout);

reg_f_i1_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i1_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image2_0_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i1_next_5_a);

f_t3_next_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_next_5_afeeder_combout = f_i1_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_i1_next_5_a,
	combout => f_t3_next_5_afeeder_combout);

reg_f_t3_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_t3_next_5_afeeder_combout,
	sdata => u_memory_ap_o_image1_0_5_a,
	sload => nx57127z2,
	ena => nx57127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_t3_next_5_a);

ix20836z52941 : cycloneii_lcell_comb
-- Equation(s):
-- f_t3_5_a = nx57127z2 & u_memory_ap_o_image0_0_5_a # !nx57127z2 & (f_t3_next_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image0_0_5_a,
	datad => f_t3_next_5_a,
	combout => f_t3_5_a);

u_flow_ap11_add9_1_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx42958z1 = u_flow_ap11_add8_0i1_anx42958z1 & (f_t3_5_a & u_flow_ap11_add9_1_anx45949z12 & VCC # !f_t3_5_a & !u_flow_ap11_add9_1_anx45949z12) # !u_flow_ap11_add8_0i1_anx42958z1 & (f_t3_5_a & !u_flow_ap11_add9_1_anx45949z12 # !f_t3_5_a 
-- & (u_flow_ap11_add9_1_anx45949z12 # GND))
-- u_flow_ap11_add9_1_anx45949z9 = CARRY(u_flow_ap11_add8_0i1_anx42958z1 & !f_t3_5_a & !u_flow_ap11_add9_1_anx45949z12 # !u_flow_ap11_add8_0i1_anx42958z1 & (!u_flow_ap11_add9_1_anx45949z12 # !f_t3_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add8_0i1_anx42958z1,
	datab => f_t3_5_a,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z12,
	combout => u_flow_ap11_add9_1_anx42958z1,
	cout => u_flow_ap11_add9_1_anx45949z9);

u_flow_ap11_add9_1_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx43955z1 = (f_t3_6_a $ u_flow_ap11_add8_0i1_anx43955z1 $ !u_flow_ap11_add9_1_anx45949z9) # GND
-- u_flow_ap11_add9_1_anx45949z6 = CARRY(f_t3_6_a & (u_flow_ap11_add8_0i1_anx43955z1 # !u_flow_ap11_add9_1_anx45949z9) # !f_t3_6_a & u_flow_ap11_add8_0i1_anx43955z1 & !u_flow_ap11_add9_1_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t3_6_a,
	datab => u_flow_ap11_add8_0i1_anx43955z1,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z9,
	combout => u_flow_ap11_add9_1_anx43955z1,
	cout => u_flow_ap11_add9_1_anx45949z6);

u_flow_ap11_add9_1_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx44952z1 = f_t3_7_a & (u_flow_ap11_add8_0i1_anx44952z1 & u_flow_ap11_add9_1_anx45949z6 & VCC # !u_flow_ap11_add8_0i1_anx44952z1 & !u_flow_ap11_add9_1_anx45949z6) # !f_t3_7_a & (u_flow_ap11_add8_0i1_anx44952z1 & 
-- !u_flow_ap11_add9_1_anx45949z6 # !u_flow_ap11_add8_0i1_anx44952z1 & (u_flow_ap11_add9_1_anx45949z6 # GND))
-- u_flow_ap11_add9_1_anx45949z3 = CARRY(f_t3_7_a & !u_flow_ap11_add8_0i1_anx44952z1 & !u_flow_ap11_add9_1_anx45949z6 # !f_t3_7_a & (!u_flow_ap11_add9_1_anx45949z6 # !u_flow_ap11_add8_0i1_anx44952z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_t3_7_a,
	datab => u_flow_ap11_add8_0i1_anx44952z1,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z6,
	combout => u_flow_ap11_add9_1_anx44952z1,
	cout => u_flow_ap11_add9_1_anx45949z3);

u_flow_ap21_sub10_4i3_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx37973z1 = u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap11_add9_1_anx37973z1 $ VCC) # !u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap11_add9_1_anx37973z1 # GND)
-- u_flow_ap21_sub10_4i3_anx46946z28 = CARRY(u_flow_ap11_add9_1_anx37973z1 # !u_flow_ap12_add9_2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx37973z1,
	datab => u_flow_ap11_add9_1_anx37973z1,
	datad => VCC,
	combout => u_flow_ap21_sub10_4i3_anx37973z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z28);

u_flow_ap21_sub10_4i3_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx40964z1 = u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub10_4i3_anx46946z22 # !u_flow_ap11_add9_1_anx40964z1 & (u_flow_ap21_sub10_4i3_anx46946z22 # GND)) # !u_flow_ap12_add9_2_anx40964z1 & 
-- (u_flow_ap11_add9_1_anx40964z1 & u_flow_ap21_sub10_4i3_anx46946z22 & VCC # !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub10_4i3_anx46946z22)
-- u_flow_ap21_sub10_4i3_anx46946z19 = CARRY(u_flow_ap12_add9_2_anx40964z1 & (!u_flow_ap21_sub10_4i3_anx46946z22 # !u_flow_ap11_add9_1_anx40964z1) # !u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub10_4i3_anx46946z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx40964z1,
	datab => u_flow_ap11_add9_1_anx40964z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z22,
	combout => u_flow_ap21_sub10_4i3_anx40964z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z19);

u_flow_ap21_sub10_4i3_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx42958z1 = u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap21_sub10_4i3_anx46946z16 # !u_flow_ap12_add9_2_anx42958z1 & u_flow_ap21_sub10_4i3_anx46946z16 & VCC) # !u_flow_ap11_add9_1_anx42958z1 & 
-- (u_flow_ap12_add9_2_anx42958z1 & (u_flow_ap21_sub10_4i3_anx46946z16 # GND) # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap21_sub10_4i3_anx46946z16)
-- u_flow_ap21_sub10_4i3_anx46946z13 = CARRY(u_flow_ap11_add9_1_anx42958z1 & u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap21_sub10_4i3_anx46946z16 # !u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap12_add9_2_anx42958z1 # !u_flow_ap21_sub10_4i3_anx46946z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx42958z1,
	datab => u_flow_ap12_add9_2_anx42958z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z16,
	combout => u_flow_ap21_sub10_4i3_anx42958z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z13);

u_flow_ap21_sub10_4i3_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub10_4i3_anx43955z1 = (u_flow_ap12_add9_2_anx43955z1 $ u_flow_ap11_add9_1_anx43955z1 $ u_flow_ap21_sub10_4i3_anx46946z13) # GND
-- u_flow_ap21_sub10_4i3_anx46946z10 = CARRY(u_flow_ap12_add9_2_anx43955z1 & u_flow_ap11_add9_1_anx43955z1 & !u_flow_ap21_sub10_4i3_anx46946z13 # !u_flow_ap12_add9_2_anx43955z1 & (u_flow_ap11_add9_1_anx43955z1 # !u_flow_ap21_sub10_4i3_anx46946z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx43955z1,
	datab => u_flow_ap11_add9_1_anx43955z1,
	datad => VCC,
	cin => u_flow_ap21_sub10_4i3_anx46946z13,
	combout => u_flow_ap21_sub10_4i3_anx43955z1,
	cout => u_flow_ap21_sub10_4i3_anx46946z10);

u_flow_ap21_add12_4i1_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx37973z1 = u_flow_ap21_sub10_4i3_anx38970z1 & (u_flow_ap12_add9_2_anx37973z1 $ VCC) # !u_flow_ap21_sub10_4i3_anx38970z1 & u_flow_ap12_add9_2_anx37973z1 & VCC
-- u_flow_ap21_add12_4i1_anx63795z32 = CARRY(u_flow_ap21_sub10_4i3_anx38970z1 & u_flow_ap12_add9_2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx38970z1,
	datab => u_flow_ap12_add9_2_anx37973z1,
	datad => VCC,
	combout => u_flow_ap21_add12_4i1_anx37973z1,
	cout => u_flow_ap21_add12_4i1_anx63795z32);

u_flow_ap21_add12_4i1_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx38970z1 = u_flow_ap21_sub10_4i3_anx39967z1 & (u_flow_ap21_sub11_4i4_anx37973z1 & u_flow_ap21_add12_4i1_anx63795z32 & VCC # !u_flow_ap21_sub11_4i4_anx37973z1 & !u_flow_ap21_add12_4i1_anx63795z32) # !u_flow_ap21_sub10_4i3_anx39967z1 
-- & (u_flow_ap21_sub11_4i4_anx37973z1 & !u_flow_ap21_add12_4i1_anx63795z32 # !u_flow_ap21_sub11_4i4_anx37973z1 & (u_flow_ap21_add12_4i1_anx63795z32 # GND))
-- u_flow_ap21_add12_4i1_anx63795z29 = CARRY(u_flow_ap21_sub10_4i3_anx39967z1 & !u_flow_ap21_sub11_4i4_anx37973z1 & !u_flow_ap21_add12_4i1_anx63795z32 # !u_flow_ap21_sub10_4i3_anx39967z1 & (!u_flow_ap21_add12_4i1_anx63795z32 # 
-- !u_flow_ap21_sub11_4i4_anx37973z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx39967z1,
	datab => u_flow_ap21_sub11_4i4_anx37973z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z32,
	combout => u_flow_ap21_add12_4i1_anx38970z1,
	cout => u_flow_ap21_add12_4i1_anx63795z29);

u_flow_ap21_add12_4i1_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx39967z1 = (u_flow_ap21_sub11_4i4_anx38970z1 $ u_flow_ap21_sub10_4i3_anx40964z1 $ !u_flow_ap21_add12_4i1_anx63795z29) # GND
-- u_flow_ap21_add12_4i1_anx63795z26 = CARRY(u_flow_ap21_sub11_4i4_anx38970z1 & (u_flow_ap21_sub10_4i3_anx40964z1 # !u_flow_ap21_add12_4i1_anx63795z29) # !u_flow_ap21_sub11_4i4_anx38970z1 & u_flow_ap21_sub10_4i3_anx40964z1 & 
-- !u_flow_ap21_add12_4i1_anx63795z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub11_4i4_anx38970z1,
	datab => u_flow_ap21_sub10_4i3_anx40964z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z29,
	combout => u_flow_ap21_add12_4i1_anx39967z1,
	cout => u_flow_ap21_add12_4i1_anx63795z26);

u_flow_ap21_add12_4i1_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx40964z1 = u_flow_ap21_sub10_4i3_anx41961z1 & (u_flow_ap21_sub11_4i4_anx39967z1 & u_flow_ap21_add12_4i1_anx63795z26 & VCC # !u_flow_ap21_sub11_4i4_anx39967z1 & !u_flow_ap21_add12_4i1_anx63795z26) # !u_flow_ap21_sub10_4i3_anx41961z1 
-- & (u_flow_ap21_sub11_4i4_anx39967z1 & !u_flow_ap21_add12_4i1_anx63795z26 # !u_flow_ap21_sub11_4i4_anx39967z1 & (u_flow_ap21_add12_4i1_anx63795z26 # GND))
-- u_flow_ap21_add12_4i1_anx63795z23 = CARRY(u_flow_ap21_sub10_4i3_anx41961z1 & !u_flow_ap21_sub11_4i4_anx39967z1 & !u_flow_ap21_add12_4i1_anx63795z26 # !u_flow_ap21_sub10_4i3_anx41961z1 & (!u_flow_ap21_add12_4i1_anx63795z26 # 
-- !u_flow_ap21_sub11_4i4_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx41961z1,
	datab => u_flow_ap21_sub11_4i4_anx39967z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z26,
	combout => u_flow_ap21_add12_4i1_anx40964z1,
	cout => u_flow_ap21_add12_4i1_anx63795z23);

u_flow_ap21_add12_4i1_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx41961z1 = (u_flow_ap21_sub11_4i4_anx40964z1 $ u_flow_ap21_sub10_4i3_anx42958z1 $ !u_flow_ap21_add12_4i1_anx63795z23) # GND
-- u_flow_ap21_add12_4i1_anx63795z20 = CARRY(u_flow_ap21_sub11_4i4_anx40964z1 & (u_flow_ap21_sub10_4i3_anx42958z1 # !u_flow_ap21_add12_4i1_anx63795z23) # !u_flow_ap21_sub11_4i4_anx40964z1 & u_flow_ap21_sub10_4i3_anx42958z1 & 
-- !u_flow_ap21_add12_4i1_anx63795z23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub11_4i4_anx40964z1,
	datab => u_flow_ap21_sub10_4i3_anx42958z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z23,
	combout => u_flow_ap21_add12_4i1_anx41961z1,
	cout => u_flow_ap21_add12_4i1_anx63795z20);

u_flow_ap21_add12_4i1_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx44952z1 = u_flow_ap21_sub11_4i4_anx43955z1 & (u_flow_ap21_sub10_4i3_anx45949z1 & u_flow_ap21_add12_4i1_anx63795z14 & VCC # !u_flow_ap21_sub10_4i3_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z14) # !u_flow_ap21_sub11_4i4_anx43955z1 
-- & (u_flow_ap21_sub10_4i3_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z14 # !u_flow_ap21_sub10_4i3_anx45949z1 & (u_flow_ap21_add12_4i1_anx63795z14 # GND))
-- u_flow_ap21_add12_4i1_anx63795z11 = CARRY(u_flow_ap21_sub11_4i4_anx43955z1 & !u_flow_ap21_sub10_4i3_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z14 # !u_flow_ap21_sub11_4i4_anx43955z1 & (!u_flow_ap21_add12_4i1_anx63795z14 # 
-- !u_flow_ap21_sub10_4i3_anx45949z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub11_4i4_anx43955z1,
	datab => u_flow_ap21_sub10_4i3_anx45949z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z14,
	combout => u_flow_ap21_add12_4i1_anx44952z1,
	cout => u_flow_ap21_add12_4i1_anx63795z11);

u_flow_ap21_add12_4i1_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx45949z1 = (u_flow_ap21_sub10_4i3_anx46946z1 $ u_flow_ap21_sub11_4i4_anx44952z1 $ !u_flow_ap21_add12_4i1_anx63795z11) # GND
-- u_flow_ap21_add12_4i1_anx63795z8 = CARRY(u_flow_ap21_sub10_4i3_anx46946z1 & (u_flow_ap21_sub11_4i4_anx44952z1 # !u_flow_ap21_add12_4i1_anx63795z11) # !u_flow_ap21_sub10_4i3_anx46946z1 & u_flow_ap21_sub11_4i4_anx44952z1 & 
-- !u_flow_ap21_add12_4i1_anx63795z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx46946z1,
	datab => u_flow_ap21_sub11_4i4_anx44952z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z11,
	combout => u_flow_ap21_add12_4i1_anx45949z1,
	cout => u_flow_ap21_add12_4i1_anx63795z8);

u_flow_ap21_add12_4i1_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx46946z1 = u_flow_ap21_sub10_4i3_anx23445z1 & (u_flow_ap21_sub11_4i4_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z8 # !u_flow_ap21_sub11_4i4_anx45949z1 & (u_flow_ap21_add12_4i1_anx63795z8 # GND)) # !u_flow_ap21_sub10_4i3_anx23445z1 
-- & (u_flow_ap21_sub11_4i4_anx45949z1 & u_flow_ap21_add12_4i1_anx63795z8 & VCC # !u_flow_ap21_sub11_4i4_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z8)
-- u_flow_ap21_add12_4i1_anx63795z6 = CARRY(u_flow_ap21_sub10_4i3_anx23445z1 & (!u_flow_ap21_add12_4i1_anx63795z8 # !u_flow_ap21_sub11_4i4_anx45949z1) # !u_flow_ap21_sub10_4i3_anx23445z1 & !u_flow_ap21_sub11_4i4_anx45949z1 & 
-- !u_flow_ap21_add12_4i1_anx63795z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx23445z1,
	datab => u_flow_ap21_sub11_4i4_anx45949z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z8,
	combout => u_flow_ap21_add12_4i1_anx46946z1,
	cout => u_flow_ap21_add12_4i1_anx63795z6);

u_flow_areg_p21_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_10_a);

u_flow_ap31_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_10_afeeder_combout = u_flow_ap21_10_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap21_10_a,
	combout => u_flow_ap31_10_afeeder_combout);

u_flow_ap11_add9_1_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx45949z1 = u_flow_ap11_add8_0i1_anx23445z1 & (u_flow_ap11_add9_1_anx45949z3 $ GND) # !u_flow_ap11_add8_0i1_anx23445z1 & !u_flow_ap11_add9_1_anx45949z3 & VCC
-- u_flow_ap11_add9_1_anx23445z2 = CARRY(u_flow_ap11_add8_0i1_anx23445z1 & !u_flow_ap11_add9_1_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add8_0i1_anx23445z1,
	datad => VCC,
	cin => u_flow_ap11_add9_1_anx45949z3,
	combout => u_flow_ap11_add9_1_anx45949z1,
	cout => u_flow_ap11_add9_1_anx23445z2);

u_flow_ap11_add9_1_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap11_add9_1_anx23445z1 = u_flow_ap11_add9_1_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap11_add9_1_anx23445z2,
	combout => u_flow_ap11_add9_1_anx23445z1);

u_flow_ap22_sub10_4i5_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx37973z1 = u_flow_ap12_add9_2_anx37973z1 & (GND # !u_flow_ap11_add9_1_anx37973z1) # !u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap11_add9_1_anx37973z1 $ GND)
-- u_flow_ap22_sub10_4i5_anx46946z28 = CARRY(u_flow_ap12_add9_2_anx37973z1 # !u_flow_ap11_add9_1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx37973z1,
	datab => u_flow_ap11_add9_1_anx37973z1,
	datad => VCC,
	combout => u_flow_ap22_sub10_4i5_anx37973z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z28);

u_flow_ap22_sub10_4i5_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx38970z1 = u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub10_4i5_anx46946z28 # !u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap22_sub10_4i5_anx46946z28 # GND)) # !u_flow_ap11_add9_1_anx38970z1 & 
-- (u_flow_ap12_add9_2_anx38970z1 & u_flow_ap22_sub10_4i5_anx46946z28 & VCC # !u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub10_4i5_anx46946z28)
-- u_flow_ap22_sub10_4i5_anx46946z25 = CARRY(u_flow_ap11_add9_1_anx38970z1 & (!u_flow_ap22_sub10_4i5_anx46946z28 # !u_flow_ap12_add9_2_anx38970z1) # !u_flow_ap11_add9_1_anx38970z1 & !u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub10_4i5_anx46946z28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx38970z1,
	datab => u_flow_ap12_add9_2_anx38970z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z28,
	combout => u_flow_ap22_sub10_4i5_anx38970z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z25);

u_flow_ap22_sub10_4i5_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx39967z1 = (u_flow_ap12_add9_2_anx39967z1 $ u_flow_ap11_add9_1_anx39967z1 $ u_flow_ap22_sub10_4i5_anx46946z25) # GND
-- u_flow_ap22_sub10_4i5_anx46946z22 = CARRY(u_flow_ap12_add9_2_anx39967z1 & (!u_flow_ap22_sub10_4i5_anx46946z25 # !u_flow_ap11_add9_1_anx39967z1) # !u_flow_ap12_add9_2_anx39967z1 & !u_flow_ap11_add9_1_anx39967z1 & !u_flow_ap22_sub10_4i5_anx46946z25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx39967z1,
	datab => u_flow_ap11_add9_1_anx39967z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z25,
	combout => u_flow_ap22_sub10_4i5_anx39967z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z22);

u_flow_ap22_sub10_4i5_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx41961z1 = (u_flow_ap11_add9_1_anx41961z1 $ u_flow_ap12_add9_2_anx41961z1 $ u_flow_ap22_sub10_4i5_anx46946z19) # GND
-- u_flow_ap22_sub10_4i5_anx46946z16 = CARRY(u_flow_ap11_add9_1_anx41961z1 & u_flow_ap12_add9_2_anx41961z1 & !u_flow_ap22_sub10_4i5_anx46946z19 # !u_flow_ap11_add9_1_anx41961z1 & (u_flow_ap12_add9_2_anx41961z1 # !u_flow_ap22_sub10_4i5_anx46946z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx41961z1,
	datab => u_flow_ap12_add9_2_anx41961z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z19,
	combout => u_flow_ap22_sub10_4i5_anx41961z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z16);

u_flow_ap22_sub10_4i5_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx42958z1 = u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap22_sub10_4i5_anx46946z16 # !u_flow_ap12_add9_2_anx42958z1 & (u_flow_ap22_sub10_4i5_anx46946z16 # GND)) # !u_flow_ap11_add9_1_anx42958z1 & 
-- (u_flow_ap12_add9_2_anx42958z1 & u_flow_ap22_sub10_4i5_anx46946z16 & VCC # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap22_sub10_4i5_anx46946z16)
-- u_flow_ap22_sub10_4i5_anx46946z13 = CARRY(u_flow_ap11_add9_1_anx42958z1 & (!u_flow_ap22_sub10_4i5_anx46946z16 # !u_flow_ap12_add9_2_anx42958z1) # !u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap22_sub10_4i5_anx46946z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx42958z1,
	datab => u_flow_ap12_add9_2_anx42958z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z16,
	combout => u_flow_ap22_sub10_4i5_anx42958z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z13);

u_flow_ap22_sub10_4i5_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx43955z1 = (u_flow_ap11_add9_1_anx43955z1 $ u_flow_ap12_add9_2_anx43955z1 $ u_flow_ap22_sub10_4i5_anx46946z13) # GND
-- u_flow_ap22_sub10_4i5_anx46946z10 = CARRY(u_flow_ap11_add9_1_anx43955z1 & u_flow_ap12_add9_2_anx43955z1 & !u_flow_ap22_sub10_4i5_anx46946z13 # !u_flow_ap11_add9_1_anx43955z1 & (u_flow_ap12_add9_2_anx43955z1 # !u_flow_ap22_sub10_4i5_anx46946z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx43955z1,
	datab => u_flow_ap12_add9_2_anx43955z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z13,
	combout => u_flow_ap22_sub10_4i5_anx43955z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z10);

u_flow_ap22_sub10_4i5_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx44952z1 = u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub10_4i5_anx46946z10 # !u_flow_ap11_add9_1_anx44952z1 & u_flow_ap22_sub10_4i5_anx46946z10 & VCC) # !u_flow_ap12_add9_2_anx44952z1 & 
-- (u_flow_ap11_add9_1_anx44952z1 & (u_flow_ap22_sub10_4i5_anx46946z10 # GND) # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub10_4i5_anx46946z10)
-- u_flow_ap22_sub10_4i5_anx46946z7 = CARRY(u_flow_ap12_add9_2_anx44952z1 & u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub10_4i5_anx46946z10 # !u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap11_add9_1_anx44952z1 # !u_flow_ap22_sub10_4i5_anx46946z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx44952z1,
	datab => u_flow_ap11_add9_1_anx44952z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z10,
	combout => u_flow_ap22_sub10_4i5_anx44952z1,
	cout => u_flow_ap22_sub10_4i5_anx46946z7);

u_flow_ap22_sub10_4i5_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx46946z1 = u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub10_4i5_anx46946z4 # !u_flow_ap11_add9_1_anx23445z1 & u_flow_ap22_sub10_4i5_anx46946z4 & VCC) # !u_flow_ap12_add9_2_anx23445z1 & 
-- (u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap22_sub10_4i5_anx46946z4 # GND) # !u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub10_4i5_anx46946z4)
-- u_flow_ap22_sub10_4i5_anx23445z2 = CARRY(u_flow_ap12_add9_2_anx23445z1 & u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub10_4i5_anx46946z4 # !u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap11_add9_1_anx23445z1 # !u_flow_ap22_sub10_4i5_anx46946z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx23445z1,
	datab => u_flow_ap11_add9_1_anx23445z1,
	datad => VCC,
	cin => u_flow_ap22_sub10_4i5_anx46946z4,
	combout => u_flow_ap22_sub10_4i5_anx46946z1,
	cout => u_flow_ap22_sub10_4i5_anx23445z2);

u_flow_ap22_sub10_4i5_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub10_4i5_anx23445z1 = !u_flow_ap22_sub10_4i5_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap22_sub10_4i5_anx23445z2,
	combout => u_flow_ap22_sub10_4i5_anx23445z1);

u_flow_ap22_sub11_4i6_aix46946z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx46946z29 = CARRY(u_flow_ap12_add9_2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx37973z1,
	datad => VCC,
	cout => u_flow_ap22_sub11_4i6_anx46946z29);

u_flow_ap22_sub11_4i6_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx38970z1 = (u_flow_ap11_add9_1_anx39967z1 $ u_flow_ap12_add9_2_anx38970z1 $ u_flow_ap22_sub11_4i6_anx46946z27) # GND
-- u_flow_ap22_sub11_4i6_anx46946z24 = CARRY(u_flow_ap11_add9_1_anx39967z1 & u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub11_4i6_anx46946z27 # !u_flow_ap11_add9_1_anx39967z1 & (u_flow_ap12_add9_2_anx38970z1 # !u_flow_ap22_sub11_4i6_anx46946z27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap11_add9_1_anx39967z1,
	datab => u_flow_ap12_add9_2_anx38970z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z27,
	combout => u_flow_ap22_sub11_4i6_anx38970z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z24);

u_flow_ap22_sub11_4i6_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx43955z1 = u_flow_ap12_add9_2_anx43955z1 & (u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z12 # !u_flow_ap11_add9_1_anx44952z1 & u_flow_ap22_sub11_4i6_anx46946z12 & VCC) # !u_flow_ap12_add9_2_anx43955z1 & 
-- (u_flow_ap11_add9_1_anx44952z1 & (u_flow_ap22_sub11_4i6_anx46946z12 # GND) # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z12)
-- u_flow_ap22_sub11_4i6_anx46946z9 = CARRY(u_flow_ap12_add9_2_anx43955z1 & u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z12 # !u_flow_ap12_add9_2_anx43955z1 & (u_flow_ap11_add9_1_anx44952z1 # !u_flow_ap22_sub11_4i6_anx46946z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap12_add9_2_anx43955z1,
	datab => u_flow_ap11_add9_1_anx44952z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z12,
	combout => u_flow_ap22_sub11_4i6_anx43955z1,
	cout => u_flow_ap22_sub11_4i6_anx46946z9);

u_flow_ap22_add12_4i2_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx39967z1 = (u_flow_ap22_sub10_4i5_anx40964z1 $ u_flow_ap22_sub11_4i6_anx38970z1 $ !u_flow_ap22_add12_4i2_anx63795z29) # GND
-- u_flow_ap22_add12_4i2_anx63795z26 = CARRY(u_flow_ap22_sub10_4i5_anx40964z1 & (u_flow_ap22_sub11_4i6_anx38970z1 # !u_flow_ap22_add12_4i2_anx63795z29) # !u_flow_ap22_sub10_4i5_anx40964z1 & u_flow_ap22_sub11_4i6_anx38970z1 & 
-- !u_flow_ap22_add12_4i2_anx63795z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub10_4i5_anx40964z1,
	datab => u_flow_ap22_sub11_4i6_anx38970z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z29,
	combout => u_flow_ap22_add12_4i2_anx39967z1,
	cout => u_flow_ap22_add12_4i2_anx63795z26);

u_flow_ap22_add12_4i2_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx41961z1 = (u_flow_ap22_sub11_4i6_anx40964z1 $ u_flow_ap22_sub10_4i5_anx42958z1 $ !u_flow_ap22_add12_4i2_anx63795z23) # GND
-- u_flow_ap22_add12_4i2_anx63795z20 = CARRY(u_flow_ap22_sub11_4i6_anx40964z1 & (u_flow_ap22_sub10_4i5_anx42958z1 # !u_flow_ap22_add12_4i2_anx63795z23) # !u_flow_ap22_sub11_4i6_anx40964z1 & u_flow_ap22_sub10_4i5_anx42958z1 & 
-- !u_flow_ap22_add12_4i2_anx63795z23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx40964z1,
	datab => u_flow_ap22_sub10_4i5_anx42958z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z23,
	combout => u_flow_ap22_add12_4i2_anx41961z1,
	cout => u_flow_ap22_add12_4i2_anx63795z20);

u_flow_ap22_add12_4i2_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx42958z1 = u_flow_ap22_sub11_4i6_anx41961z1 & (u_flow_ap22_sub10_4i5_anx43955z1 & u_flow_ap22_add12_4i2_anx63795z20 & VCC # !u_flow_ap22_sub10_4i5_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z20) # !u_flow_ap22_sub11_4i6_anx41961z1 
-- & (u_flow_ap22_sub10_4i5_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z20 # !u_flow_ap22_sub10_4i5_anx43955z1 & (u_flow_ap22_add12_4i2_anx63795z20 # GND))
-- u_flow_ap22_add12_4i2_anx63795z17 = CARRY(u_flow_ap22_sub11_4i6_anx41961z1 & !u_flow_ap22_sub10_4i5_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z20 # !u_flow_ap22_sub11_4i6_anx41961z1 & (!u_flow_ap22_add12_4i2_anx63795z20 # 
-- !u_flow_ap22_sub10_4i5_anx43955z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx41961z1,
	datab => u_flow_ap22_sub10_4i5_anx43955z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z20,
	combout => u_flow_ap22_add12_4i2_anx42958z1,
	cout => u_flow_ap22_add12_4i2_anx63795z17);

u_flow_ap22_add12_4i2_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx43955z1 = (u_flow_ap22_sub11_4i6_anx42958z1 $ u_flow_ap22_sub10_4i5_anx44952z1 $ !u_flow_ap22_add12_4i2_anx63795z17) # GND
-- u_flow_ap22_add12_4i2_anx63795z14 = CARRY(u_flow_ap22_sub11_4i6_anx42958z1 & (u_flow_ap22_sub10_4i5_anx44952z1 # !u_flow_ap22_add12_4i2_anx63795z17) # !u_flow_ap22_sub11_4i6_anx42958z1 & u_flow_ap22_sub10_4i5_anx44952z1 & 
-- !u_flow_ap22_add12_4i2_anx63795z17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx42958z1,
	datab => u_flow_ap22_sub10_4i5_anx44952z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z17,
	combout => u_flow_ap22_add12_4i2_anx43955z1,
	cout => u_flow_ap22_add12_4i2_anx63795z14);

u_flow_ap22_add12_4i2_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx44952z1 = u_flow_ap22_sub10_4i5_anx45949z1 & (u_flow_ap22_sub11_4i6_anx43955z1 & u_flow_ap22_add12_4i2_anx63795z14 & VCC # !u_flow_ap22_sub11_4i6_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z14) # !u_flow_ap22_sub10_4i5_anx45949z1 
-- & (u_flow_ap22_sub11_4i6_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z14 # !u_flow_ap22_sub11_4i6_anx43955z1 & (u_flow_ap22_add12_4i2_anx63795z14 # GND))
-- u_flow_ap22_add12_4i2_anx63795z11 = CARRY(u_flow_ap22_sub10_4i5_anx45949z1 & !u_flow_ap22_sub11_4i6_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z14 # !u_flow_ap22_sub10_4i5_anx45949z1 & (!u_flow_ap22_add12_4i2_anx63795z14 # 
-- !u_flow_ap22_sub11_4i6_anx43955z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub10_4i5_anx45949z1,
	datab => u_flow_ap22_sub11_4i6_anx43955z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z14,
	combout => u_flow_ap22_add12_4i2_anx44952z1,
	cout => u_flow_ap22_add12_4i2_anx63795z11);

u_flow_ap22_add12_4i2_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx45949z1 = (u_flow_ap22_sub11_4i6_anx44952z1 $ u_flow_ap22_sub10_4i5_anx46946z1 $ !u_flow_ap22_add12_4i2_anx63795z11) # GND
-- u_flow_ap22_add12_4i2_anx63795z8 = CARRY(u_flow_ap22_sub11_4i6_anx44952z1 & (u_flow_ap22_sub10_4i5_anx46946z1 # !u_flow_ap22_add12_4i2_anx63795z11) # !u_flow_ap22_sub11_4i6_anx44952z1 & u_flow_ap22_sub10_4i5_anx46946z1 & 
-- !u_flow_ap22_add12_4i2_anx63795z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx44952z1,
	datab => u_flow_ap22_sub10_4i5_anx46946z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z11,
	combout => u_flow_ap22_add12_4i2_anx45949z1,
	cout => u_flow_ap22_add12_4i2_anx63795z8);

u_flow_ap22_add12_4i2_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx46946z1 = u_flow_ap22_sub11_4i6_anx45949z1 & (u_flow_ap22_sub10_4i5_anx23445z1 & !u_flow_ap22_add12_4i2_anx63795z8 # !u_flow_ap22_sub10_4i5_anx23445z1 & u_flow_ap22_add12_4i2_anx63795z8 & VCC) # !u_flow_ap22_sub11_4i6_anx45949z1 & 
-- (u_flow_ap22_sub10_4i5_anx23445z1 & (u_flow_ap22_add12_4i2_anx63795z8 # GND) # !u_flow_ap22_sub10_4i5_anx23445z1 & !u_flow_ap22_add12_4i2_anx63795z8)
-- u_flow_ap22_add12_4i2_anx63795z6 = CARRY(u_flow_ap22_sub11_4i6_anx45949z1 & u_flow_ap22_sub10_4i5_anx23445z1 & !u_flow_ap22_add12_4i2_anx63795z8 # !u_flow_ap22_sub11_4i6_anx45949z1 & (u_flow_ap22_sub10_4i5_anx23445z1 # !u_flow_ap22_add12_4i2_anx63795z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_sub11_4i6_anx45949z1,
	datab => u_flow_ap22_sub10_4i5_anx23445z1,
	datad => VCC,
	cin => u_flow_ap22_add12_4i2_anx63795z8,
	combout => u_flow_ap22_add12_4i2_anx46946z1,
	cout => u_flow_ap22_add12_4i2_anx63795z6);

u_flow_areg_p22_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_10_a);

u_flow_ap21_sub11_4i4_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx46946z1 = u_flow_ap11_add9_1_anx23445z1 & (GND # !u_flow_ap21_sub11_4i4_anx46946z3) # !u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap21_sub11_4i4_anx46946z3 $ GND)
-- u_flow_ap21_sub11_4i4_anx23445z2 = CARRY(u_flow_ap11_add9_1_anx23445z1 # !u_flow_ap21_sub11_4i4_anx46946z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap11_add9_1_anx23445z1,
	datad => VCC,
	cin => u_flow_ap21_sub11_4i4_anx46946z3,
	combout => u_flow_ap21_sub11_4i4_anx46946z1,
	cout => u_flow_ap21_sub11_4i4_anx23445z2);

u_flow_ap21_sub11_4i4_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_sub11_4i4_anx23445z1 = u_flow_ap21_sub11_4i4_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap21_sub11_4i4_anx23445z2,
	combout => u_flow_ap21_sub11_4i4_anx23445z1);

u_flow_ap21_add12_4i1_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx62798z1 = (u_flow_ap21_sub10_4i3_anx23445z1 $ u_flow_ap21_sub11_4i4_anx46946z1 $ u_flow_ap21_add12_4i1_anx63795z6) # GND
-- u_flow_ap21_add12_4i1_anx63795z4 = CARRY(u_flow_ap21_sub10_4i3_anx23445z1 & u_flow_ap21_sub11_4i4_anx46946z1 & !u_flow_ap21_add12_4i1_anx63795z6 # !u_flow_ap21_sub10_4i3_anx23445z1 & (u_flow_ap21_sub11_4i4_anx46946z1 # !u_flow_ap21_add12_4i1_anx63795z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx23445z1,
	datab => u_flow_ap21_sub11_4i4_anx46946z1,
	datad => VCC,
	cin => u_flow_ap21_add12_4i1_anx63795z6,
	combout => u_flow_ap21_add12_4i1_anx62798z1,
	cout => u_flow_ap21_add12_4i1_anx63795z4);

u_flow_ap21_add12_4i1_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap21_add12_4i1_anx63795z1 = u_flow_ap21_sub10_4i3_anx23445z1 $ u_flow_ap21_add12_4i1_anx63795z4 $ u_flow_ap21_sub11_4i4_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_sub10_4i3_anx23445z1,
	datad => u_flow_ap21_sub11_4i4_anx23445z1,
	cin => u_flow_ap21_add12_4i1_anx63795z4,
	combout => u_flow_ap21_add12_4i1_anx63795z1);

u_flow_areg_p21_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx63795z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_12_a);

u_flow_areg_p21_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_11_a);

u_flow_areg_p21_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_9_a);

u_flow_areg_p21_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_8_a);

u_flow_areg_p22_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_7_a);

u_flow_areg_p22_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_6_a);

u_flow_areg_p21_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_5_a);

u_flow_areg_p21_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_4_a);

u_flow_areg_p21_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_3_a);

u_flow_areg_p21_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_2_a);

u_flow_areg_p21_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_add12_4i1_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_1_a);

u_flow_areg_p21_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap21_sub10_4i3_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap21_0_a);

u_flow_aix45188z19900_aix100z52936 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z37 = CARRY(u_flow_ap22_0_a & !u_flow_ap21_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_0_a,
	datab => u_flow_ap21_0_a,
	datad => VCC,
	cout => u_flow_aix45188z19900_anx100z37);

u_flow_aix45188z19900_aix100z52935 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z34 = CARRY(u_flow_ap22_1_a & u_flow_ap21_1_a & !u_flow_aix45188z19900_anx100z37 # !u_flow_ap22_1_a & (u_flow_ap21_1_a # !u_flow_aix45188z19900_anx100z37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_1_a,
	datab => u_flow_ap21_1_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z37,
	cout => u_flow_aix45188z19900_anx100z34);

u_flow_aix45188z19900_aix100z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z31 = CARRY(u_flow_ap22_2_a & (!u_flow_aix45188z19900_anx100z34 # !u_flow_ap21_2_a) # !u_flow_ap22_2_a & !u_flow_ap21_2_a & !u_flow_aix45188z19900_anx100z34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_2_a,
	datab => u_flow_ap21_2_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z34,
	cout => u_flow_aix45188z19900_anx100z31);

u_flow_aix45188z19900_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z28 = CARRY(u_flow_ap22_3_a & u_flow_ap21_3_a & !u_flow_aix45188z19900_anx100z31 # !u_flow_ap22_3_a & (u_flow_ap21_3_a # !u_flow_aix45188z19900_anx100z31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_3_a,
	datab => u_flow_ap21_3_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z31,
	cout => u_flow_aix45188z19900_anx100z28);

u_flow_aix45188z19900_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z25 = CARRY(u_flow_ap22_4_a & (!u_flow_aix45188z19900_anx100z28 # !u_flow_ap21_4_a) # !u_flow_ap22_4_a & !u_flow_ap21_4_a & !u_flow_aix45188z19900_anx100z28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_4_a,
	datab => u_flow_ap21_4_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z28,
	cout => u_flow_aix45188z19900_anx100z25);

u_flow_aix45188z19900_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z22 = CARRY(u_flow_ap22_5_a & u_flow_ap21_5_a & !u_flow_aix45188z19900_anx100z25 # !u_flow_ap22_5_a & (u_flow_ap21_5_a # !u_flow_aix45188z19900_anx100z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_5_a,
	datab => u_flow_ap21_5_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z25,
	cout => u_flow_aix45188z19900_anx100z22);

u_flow_aix45188z19900_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z19 = CARRY(u_flow_ap21_6_a & u_flow_ap22_6_a & !u_flow_aix45188z19900_anx100z22 # !u_flow_ap21_6_a & (u_flow_ap22_6_a # !u_flow_aix45188z19900_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_6_a,
	datab => u_flow_ap22_6_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z22,
	cout => u_flow_aix45188z19900_anx100z19);

u_flow_aix45188z19900_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z16 = CARRY(u_flow_ap21_7_a & (!u_flow_aix45188z19900_anx100z19 # !u_flow_ap22_7_a) # !u_flow_ap21_7_a & !u_flow_ap22_7_a & !u_flow_aix45188z19900_anx100z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_7_a,
	datab => u_flow_ap22_7_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z19,
	cout => u_flow_aix45188z19900_anx100z16);

u_flow_aix45188z19900_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z13 = CARRY(u_flow_ap22_8_a & (!u_flow_aix45188z19900_anx100z16 # !u_flow_ap21_8_a) # !u_flow_ap22_8_a & !u_flow_ap21_8_a & !u_flow_aix45188z19900_anx100z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_8_a,
	datab => u_flow_ap21_8_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z16,
	cout => u_flow_aix45188z19900_anx100z13);

u_flow_aix45188z19900_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z10 = CARRY(u_flow_ap22_9_a & u_flow_ap21_9_a & !u_flow_aix45188z19900_anx100z13 # !u_flow_ap22_9_a & (u_flow_ap21_9_a # !u_flow_aix45188z19900_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_9_a,
	datab => u_flow_ap21_9_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z13,
	cout => u_flow_aix45188z19900_anx100z10);

u_flow_aix45188z19900_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z7 = CARRY(u_flow_ap21_10_a & u_flow_ap22_10_a & !u_flow_aix45188z19900_anx100z10 # !u_flow_ap21_10_a & (u_flow_ap22_10_a # !u_flow_aix45188z19900_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_10_a,
	datab => u_flow_ap22_10_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z10,
	cout => u_flow_aix45188z19900_anx100z7);

u_flow_aix45188z19900_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z4 = CARRY(u_flow_ap22_11_a & u_flow_ap21_11_a & !u_flow_aix45188z19900_anx100z7 # !u_flow_ap22_11_a & (u_flow_ap21_11_a # !u_flow_aix45188z19900_anx100z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_11_a,
	datab => u_flow_ap21_11_a,
	datad => VCC,
	cin => u_flow_aix45188z19900_anx100z7,
	cout => u_flow_aix45188z19900_anx100z4);

u_flow_aix45188z19900_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z1 = u_flow_ap22_12_a & !u_flow_aix45188z19900_anx100z4 & u_flow_ap21_12_a # !u_flow_ap22_12_a & (u_flow_ap21_12_a # !u_flow_aix45188z19900_anx100z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap22_12_a,
	datad => u_flow_ap21_12_a,
	cin => u_flow_aix45188z19900_anx100z4,
	combout => u_flow_aix45188z19900_anx100z1);

u_flow_areg_p31_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_10_afeeder_combout,
	sdata => u_flow_ap22_10_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_10_a);

u_flow_ap31_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_9_afeeder_combout = u_flow_ap21_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_9_a,
	combout => u_flow_ap31_9_afeeder_combout);

u_flow_areg_p22_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_9_a);

u_flow_areg_p31_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_9_afeeder_combout,
	sdata => u_flow_ap22_9_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_9_a);

u_flow_ap31_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_8_afeeder_combout = u_flow_ap21_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap21_8_a,
	combout => u_flow_ap31_8_afeeder_combout);

u_flow_areg_p22_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_8_a);

u_flow_areg_p31_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_8_afeeder_combout,
	sdata => u_flow_ap22_8_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_8_a);

ix20836z52972 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_6_a = nx57127z2 & u_memory_ap_o_image1_0_6_a # !nx57127z2 & (f_i1_next_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_0_6_a,
	datad => f_i1_next_6_a,
	combout => f_i1_6_a);

ix20836z52973 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_5_a = nx57127z2 & u_memory_ap_o_image1_0_5_a # !nx57127z2 & (f_i1_next_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image1_0_5_a,
	datad => f_i1_next_5_a,
	combout => f_i1_5_a);

ix20836z52974 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_4_a = nx57127z2 & u_memory_ap_o_image1_0_4_a # !nx57127z2 & (f_i1_next_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datac => u_memory_ap_o_image1_0_4_a,
	datad => f_i1_next_4_a,
	combout => f_i1_4_a);

ix20836z52983 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_3_a = nx57127z2 & u_memory_ap_o_image1_2_3_a # !nx57127z2 & (f_i2_next_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_ap_o_image1_2_3_a,
	datac => nx57127z2,
	datad => f_i2_next_3_a,
	combout => f_i2_3_a);

ix20836z52976 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_2_a = nx57127z2 & (u_memory_ap_o_image1_0_2_a) # !nx57127z2 & f_i1_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57127z2,
	datab => f_i1_next_2_a,
	datac => u_memory_ap_o_image1_0_2_a,
	combout => f_i1_2_a);

ix20836z52985 : cycloneii_lcell_comb
-- Equation(s):
-- f_i2_1_a = nx57127z2 & u_memory_ap_o_image1_2_1_a # !nx57127z2 & (f_i2_next_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_2_1_a,
	datad => f_i2_next_1_a,
	combout => f_i2_1_a);

ix20836z52978 : cycloneii_lcell_comb
-- Equation(s):
-- f_i1_0_a = nx57127z2 & u_memory_ap_o_image1_0_0_a # !nx57127z2 & (f_i1_next_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => u_memory_ap_o_image1_0_0_a,
	datad => f_i1_next_0_a,
	combout => f_i1_0_a);

u_flow_ap13_add8_0i3_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx37973z1 = f_i2_0_a & (f_i1_0_a $ VCC) # !f_i2_0_a & f_i1_0_a & VCC
-- u_flow_ap13_add8_0i3_anx44952z22 = CARRY(f_i2_0_a & f_i1_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_0_a,
	datab => f_i1_0_a,
	datad => VCC,
	combout => u_flow_ap13_add8_0i3_anx37973z1,
	cout => u_flow_ap13_add8_0i3_anx44952z22);

u_flow_ap13_add8_0i3_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx39967z1 = (f_i2_2_a $ f_i1_2_a $ !u_flow_ap13_add8_0i3_anx44952z19) # GND
-- u_flow_ap13_add8_0i3_anx44952z16 = CARRY(f_i2_2_a & (f_i1_2_a # !u_flow_ap13_add8_0i3_anx44952z19) # !f_i2_2_a & f_i1_2_a & !u_flow_ap13_add8_0i3_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_2_a,
	datab => f_i1_2_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z19,
	combout => u_flow_ap13_add8_0i3_anx39967z1,
	cout => u_flow_ap13_add8_0i3_anx44952z16);

u_flow_ap13_add8_0i3_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx40964z1 = f_i1_3_a & (f_i2_3_a & u_flow_ap13_add8_0i3_anx44952z16 & VCC # !f_i2_3_a & !u_flow_ap13_add8_0i3_anx44952z16) # !f_i1_3_a & (f_i2_3_a & !u_flow_ap13_add8_0i3_anx44952z16 # !f_i2_3_a & (u_flow_ap13_add8_0i3_anx44952z16 # 
-- GND))
-- u_flow_ap13_add8_0i3_anx44952z13 = CARRY(f_i1_3_a & !f_i2_3_a & !u_flow_ap13_add8_0i3_anx44952z16 # !f_i1_3_a & (!u_flow_ap13_add8_0i3_anx44952z16 # !f_i2_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i1_3_a,
	datab => f_i2_3_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z16,
	combout => u_flow_ap13_add8_0i3_anx40964z1,
	cout => u_flow_ap13_add8_0i3_anx44952z13);

u_flow_ap13_add8_0i3_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add8_0i3_anx41961z1 = (f_i2_4_a $ f_i1_4_a $ !u_flow_ap13_add8_0i3_anx44952z13) # GND
-- u_flow_ap13_add8_0i3_anx44952z10 = CARRY(f_i2_4_a & (f_i1_4_a # !u_flow_ap13_add8_0i3_anx44952z13) # !f_i2_4_a & f_i1_4_a & !u_flow_ap13_add8_0i3_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_i2_4_a,
	datab => f_i1_4_a,
	datad => VCC,
	cin => u_flow_ap13_add8_0i3_anx44952z13,
	combout => u_flow_ap13_add8_0i3_anx41961z1,
	cout => u_flow_ap13_add8_0i3_anx44952z10);

u_flow_ap13_add9_3_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx37973z1 = u_flow_ap13_add8_0i3_anx38970z1 & (u_flow_ap13_add8_0i3_anx37973z1 $ VCC) # !u_flow_ap13_add8_0i3_anx38970z1 & u_flow_ap13_add8_0i3_anx37973z1 & VCC
-- u_flow_ap13_add9_3_anx45949z17 = CARRY(u_flow_ap13_add8_0i3_anx38970z1 & u_flow_ap13_add8_0i3_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx38970z1,
	datab => u_flow_ap13_add8_0i3_anx37973z1,
	datad => VCC,
	combout => u_flow_ap13_add9_3_anx37973z1,
	cout => u_flow_ap13_add9_3_anx45949z17);

u_flow_ap13_add9_3_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx38970z1 = u_flow_ap13_add8_0i3_anx38970z1 & (u_flow_ap13_add8_0i3_anx39967z1 & u_flow_ap13_add9_3_anx45949z17 & VCC # !u_flow_ap13_add8_0i3_anx39967z1 & !u_flow_ap13_add9_3_anx45949z17) # !u_flow_ap13_add8_0i3_anx38970z1 & 
-- (u_flow_ap13_add8_0i3_anx39967z1 & !u_flow_ap13_add9_3_anx45949z17 # !u_flow_ap13_add8_0i3_anx39967z1 & (u_flow_ap13_add9_3_anx45949z17 # GND))
-- u_flow_ap13_add9_3_anx45949z15 = CARRY(u_flow_ap13_add8_0i3_anx38970z1 & !u_flow_ap13_add8_0i3_anx39967z1 & !u_flow_ap13_add9_3_anx45949z17 # !u_flow_ap13_add8_0i3_anx38970z1 & (!u_flow_ap13_add9_3_anx45949z17 # !u_flow_ap13_add8_0i3_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx38970z1,
	datab => u_flow_ap13_add8_0i3_anx39967z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z17,
	combout => u_flow_ap13_add9_3_anx38970z1,
	cout => u_flow_ap13_add9_3_anx45949z15);

u_flow_ap13_add9_3_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx40964z1 = u_flow_ap13_add8_0i3_anx41961z1 & (u_flow_ap13_add8_0i3_anx40964z1 & u_flow_ap13_add9_3_anx45949z13 & VCC # !u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z13) # !u_flow_ap13_add8_0i3_anx41961z1 & 
-- (u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z13 # !u_flow_ap13_add8_0i3_anx40964z1 & (u_flow_ap13_add9_3_anx45949z13 # GND))
-- u_flow_ap13_add9_3_anx45949z11 = CARRY(u_flow_ap13_add8_0i3_anx41961z1 & !u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z13 # !u_flow_ap13_add8_0i3_anx41961z1 & (!u_flow_ap13_add9_3_anx45949z13 # !u_flow_ap13_add8_0i3_anx40964z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx41961z1,
	datab => u_flow_ap13_add8_0i3_anx40964z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z13,
	combout => u_flow_ap13_add9_3_anx40964z1,
	cout => u_flow_ap13_add9_3_anx45949z11);

u_flow_ap13_add9_3_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap13_add9_3_anx42958z1 = u_flow_ap13_add8_0i3_anx42958z1 & (u_flow_ap13_add8_0i3_anx43955z1 & u_flow_ap13_add9_3_anx45949z9 & VCC # !u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z9) # !u_flow_ap13_add8_0i3_anx42958z1 & 
-- (u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z9 # !u_flow_ap13_add8_0i3_anx43955z1 & (u_flow_ap13_add9_3_anx45949z9 # GND))
-- u_flow_ap13_add9_3_anx45949z7 = CARRY(u_flow_ap13_add8_0i3_anx42958z1 & !u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z9 # !u_flow_ap13_add8_0i3_anx42958z1 & (!u_flow_ap13_add9_3_anx45949z9 # !u_flow_ap13_add8_0i3_anx43955z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap13_add8_0i3_anx42958z1,
	datab => u_flow_ap13_add8_0i3_anx43955z1,
	datad => VCC,
	cin => u_flow_ap13_add9_3_anx45949z9,
	combout => u_flow_ap13_add9_3_anx42958z1,
	cout => u_flow_ap13_add9_3_anx45949z7);

u_flow_areg_p23_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_7_a);

u_flow_areg_p32_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap23_7_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_7_a);

u_flow_areg_p23_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_6_a);

u_flow_areg_p32_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap23_6_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_6_a);

u_flow_ap31_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_5_afeeder_combout = u_flow_ap21_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap21_5_a,
	combout => u_flow_ap31_5_afeeder_combout);

u_flow_areg_p22_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_5_a);

u_flow_areg_p31_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_5_afeeder_combout,
	sdata => u_flow_ap22_5_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_5_a);

u_flow_areg_p23_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_4_a);

u_flow_ap32_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap32_4_afeeder_combout = u_flow_ap23_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap23_4_a,
	combout => u_flow_ap32_4_afeeder_combout);

u_flow_areg_p32_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap32_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_4_a);

u_flow_ap31_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_3_afeeder_combout = u_flow_ap21_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap21_3_a,
	combout => u_flow_ap31_3_afeeder_combout);

u_flow_areg_p22_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_3_a);

u_flow_areg_p31_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_3_afeeder_combout,
	sdata => u_flow_ap22_3_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_3_a);

u_flow_areg_p23_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_2_a);

u_flow_ap32_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap32_2_afeeder_combout = u_flow_ap23_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap23_2_a,
	combout => u_flow_ap32_2_afeeder_combout);

u_flow_areg_p32_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap32_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_2_a);

u_flow_areg_p23_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap13_add9_3_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap23_1_a);

u_flow_ap32_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap32_1_afeeder_combout = u_flow_ap23_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap23_1_a,
	combout => u_flow_ap32_1_afeeder_combout);

u_flow_areg_p32_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap32_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap32_1_a);

u_flow_ap31_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_0_afeeder_combout = u_flow_ap21_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap21_0_a,
	combout => u_flow_ap31_0_afeeder_combout);

u_flow_areg_p22_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_sub10_4i5_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_0_a);

u_flow_areg_p31_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_0_afeeder_combout,
	sdata => u_flow_ap22_0_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_0_a);

u_flow_ap4s_sub12_0_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx37973z1 = u_flow_ap32_0_a & (u_flow_ap31_0_a $ VCC) # !u_flow_ap32_0_a & (u_flow_ap31_0_a # GND)
-- u_flow_ap4s_sub12_0_anx63795z33 = CARRY(u_flow_ap31_0_a # !u_flow_ap32_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap32_0_a,
	datab => u_flow_ap31_0_a,
	datad => VCC,
	combout => u_flow_ap4s_sub12_0_anx37973z1,
	cout => u_flow_ap4s_sub12_0_anx63795z33);

u_flow_ap4s_sub12_0_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx38970z1 = u_flow_ap31_1_a & (u_flow_ap32_1_a & !u_flow_ap4s_sub12_0_anx63795z33 # !u_flow_ap32_1_a & u_flow_ap4s_sub12_0_anx63795z33 & VCC) # !u_flow_ap31_1_a & (u_flow_ap32_1_a & (u_flow_ap4s_sub12_0_anx63795z33 # GND) # 
-- !u_flow_ap32_1_a & !u_flow_ap4s_sub12_0_anx63795z33)
-- u_flow_ap4s_sub12_0_anx63795z30 = CARRY(u_flow_ap31_1_a & u_flow_ap32_1_a & !u_flow_ap4s_sub12_0_anx63795z33 # !u_flow_ap31_1_a & (u_flow_ap32_1_a # !u_flow_ap4s_sub12_0_anx63795z33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap31_1_a,
	datab => u_flow_ap32_1_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z33,
	combout => u_flow_ap4s_sub12_0_anx38970z1,
	cout => u_flow_ap4s_sub12_0_anx63795z30);

u_flow_ap4s_sub12_0_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx39967z1 = (u_flow_ap31_2_a $ u_flow_ap32_2_a $ u_flow_ap4s_sub12_0_anx63795z30) # GND
-- u_flow_ap4s_sub12_0_anx63795z27 = CARRY(u_flow_ap31_2_a & (!u_flow_ap4s_sub12_0_anx63795z30 # !u_flow_ap32_2_a) # !u_flow_ap31_2_a & !u_flow_ap32_2_a & !u_flow_ap4s_sub12_0_anx63795z30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap31_2_a,
	datab => u_flow_ap32_2_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z30,
	combout => u_flow_ap4s_sub12_0_anx39967z1,
	cout => u_flow_ap4s_sub12_0_anx63795z27);

u_flow_ap4s_sub12_0_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx40964z1 = u_flow_ap32_3_a & (u_flow_ap31_3_a & !u_flow_ap4s_sub12_0_anx63795z27 # !u_flow_ap31_3_a & (u_flow_ap4s_sub12_0_anx63795z27 # GND)) # !u_flow_ap32_3_a & (u_flow_ap31_3_a & u_flow_ap4s_sub12_0_anx63795z27 & VCC # 
-- !u_flow_ap31_3_a & !u_flow_ap4s_sub12_0_anx63795z27)
-- u_flow_ap4s_sub12_0_anx63795z24 = CARRY(u_flow_ap32_3_a & (!u_flow_ap4s_sub12_0_anx63795z27 # !u_flow_ap31_3_a) # !u_flow_ap32_3_a & !u_flow_ap31_3_a & !u_flow_ap4s_sub12_0_anx63795z27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap32_3_a,
	datab => u_flow_ap31_3_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z27,
	combout => u_flow_ap4s_sub12_0_anx40964z1,
	cout => u_flow_ap4s_sub12_0_anx63795z24);

u_flow_ap4s_sub12_0_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx41961z1 = (u_flow_ap31_4_a $ u_flow_ap32_4_a $ u_flow_ap4s_sub12_0_anx63795z24) # GND
-- u_flow_ap4s_sub12_0_anx63795z21 = CARRY(u_flow_ap31_4_a & (!u_flow_ap4s_sub12_0_anx63795z24 # !u_flow_ap32_4_a) # !u_flow_ap31_4_a & !u_flow_ap32_4_a & !u_flow_ap4s_sub12_0_anx63795z24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap31_4_a,
	datab => u_flow_ap32_4_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z24,
	combout => u_flow_ap4s_sub12_0_anx41961z1,
	cout => u_flow_ap4s_sub12_0_anx63795z21);

u_flow_ap4s_sub12_0_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx42958z1 = u_flow_ap32_5_a & (u_flow_ap31_5_a & !u_flow_ap4s_sub12_0_anx63795z21 # !u_flow_ap31_5_a & (u_flow_ap4s_sub12_0_anx63795z21 # GND)) # !u_flow_ap32_5_a & (u_flow_ap31_5_a & u_flow_ap4s_sub12_0_anx63795z21 & VCC # 
-- !u_flow_ap31_5_a & !u_flow_ap4s_sub12_0_anx63795z21)
-- u_flow_ap4s_sub12_0_anx63795z18 = CARRY(u_flow_ap32_5_a & (!u_flow_ap4s_sub12_0_anx63795z21 # !u_flow_ap31_5_a) # !u_flow_ap32_5_a & !u_flow_ap31_5_a & !u_flow_ap4s_sub12_0_anx63795z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap32_5_a,
	datab => u_flow_ap31_5_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z21,
	combout => u_flow_ap4s_sub12_0_anx42958z1,
	cout => u_flow_ap4s_sub12_0_anx63795z18);

u_flow_ap4s_sub12_0_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx43955z1 = (u_flow_ap31_6_a $ u_flow_ap32_6_a $ u_flow_ap4s_sub12_0_anx63795z18) # GND
-- u_flow_ap4s_sub12_0_anx63795z15 = CARRY(u_flow_ap31_6_a & (!u_flow_ap4s_sub12_0_anx63795z18 # !u_flow_ap32_6_a) # !u_flow_ap31_6_a & !u_flow_ap32_6_a & !u_flow_ap4s_sub12_0_anx63795z18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap31_6_a,
	datab => u_flow_ap32_6_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z18,
	combout => u_flow_ap4s_sub12_0_anx43955z1,
	cout => u_flow_ap4s_sub12_0_anx63795z15);

u_flow_ap4s_sub12_0_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx44952z1 = u_flow_ap31_7_a & (u_flow_ap32_7_a & !u_flow_ap4s_sub12_0_anx63795z15 # !u_flow_ap32_7_a & u_flow_ap4s_sub12_0_anx63795z15 & VCC) # !u_flow_ap31_7_a & (u_flow_ap32_7_a & (u_flow_ap4s_sub12_0_anx63795z15 # GND) # 
-- !u_flow_ap32_7_a & !u_flow_ap4s_sub12_0_anx63795z15)
-- u_flow_ap4s_sub12_0_anx63795z12 = CARRY(u_flow_ap31_7_a & u_flow_ap32_7_a & !u_flow_ap4s_sub12_0_anx63795z15 # !u_flow_ap31_7_a & (u_flow_ap32_7_a # !u_flow_ap4s_sub12_0_anx63795z15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap31_7_a,
	datab => u_flow_ap32_7_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z15,
	combout => u_flow_ap4s_sub12_0_anx44952z1,
	cout => u_flow_ap4s_sub12_0_anx63795z12);

u_flow_ap4s_sub12_0_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx45949z1 = (u_flow_ap32_8_a $ u_flow_ap31_8_a $ u_flow_ap4s_sub12_0_anx63795z12) # GND
-- u_flow_ap4s_sub12_0_anx63795z9 = CARRY(u_flow_ap32_8_a & u_flow_ap31_8_a & !u_flow_ap4s_sub12_0_anx63795z12 # !u_flow_ap32_8_a & (u_flow_ap31_8_a # !u_flow_ap4s_sub12_0_anx63795z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap32_8_a,
	datab => u_flow_ap31_8_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z12,
	combout => u_flow_ap4s_sub12_0_anx45949z1,
	cout => u_flow_ap4s_sub12_0_anx63795z9);

u_flow_ap4s_sub12_0_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx46946z1 = u_flow_ap32_9_a & (u_flow_ap31_9_a & !u_flow_ap4s_sub12_0_anx63795z9 # !u_flow_ap31_9_a & (u_flow_ap4s_sub12_0_anx63795z9 # GND)) # !u_flow_ap32_9_a & (u_flow_ap31_9_a & u_flow_ap4s_sub12_0_anx63795z9 & VCC # 
-- !u_flow_ap31_9_a & !u_flow_ap4s_sub12_0_anx63795z9)
-- u_flow_ap4s_sub12_0_anx63795z6 = CARRY(u_flow_ap32_9_a & (!u_flow_ap4s_sub12_0_anx63795z9 # !u_flow_ap31_9_a) # !u_flow_ap32_9_a & !u_flow_ap31_9_a & !u_flow_ap4s_sub12_0_anx63795z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap32_9_a,
	datab => u_flow_ap31_9_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z9,
	combout => u_flow_ap4s_sub12_0_anx46946z1,
	cout => u_flow_ap4s_sub12_0_anx63795z6);

u_flow_ap4s_sub12_0_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_sub12_0_anx62798z1 = (u_flow_ap32_10_a $ u_flow_ap31_10_a $ u_flow_ap4s_sub12_0_anx63795z6) # GND
-- u_flow_ap4s_sub12_0_anx63795z3 = CARRY(u_flow_ap32_10_a & u_flow_ap31_10_a & !u_flow_ap4s_sub12_0_anx63795z6 # !u_flow_ap32_10_a & (u_flow_ap31_10_a # !u_flow_ap4s_sub12_0_anx63795z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap32_10_a,
	datab => u_flow_ap31_10_a,
	datad => VCC,
	cin => u_flow_ap4s_sub12_0_anx63795z6,
	combout => u_flow_ap4s_sub12_0_anx62798z1,
	cout => u_flow_ap4s_sub12_0_anx63795z3);

u_flow_aix26026z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26026z4 = u_flow_ap4s_sub12_0_anx46946z1 # u_flow_ap4s_sub12_0_anx45949z1 & u_flow_ap4s_sub12_0_anx44952z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap4s_sub12_0_anx45949z1,
	datab => u_flow_ap4s_sub12_0_anx44952z1,
	datad => u_flow_ap4s_sub12_0_anx46946z1,
	combout => u_flow_anx26026z4);

u_flow_ap31_12_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap31_12_afeeder_combout = u_flow_ap21_12_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap21_12_a,
	combout => u_flow_ap31_12_afeeder_combout);

u_flow_ap22_sub11_4i6_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx46946z1 = u_flow_ap12_add9_2_anx23445z1 & (GND # !u_flow_ap22_sub11_4i6_anx46946z3) # !u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap22_sub11_4i6_anx46946z3 $ GND)
-- u_flow_ap22_sub11_4i6_anx23445z2 = CARRY(u_flow_ap12_add9_2_anx23445z1 # !u_flow_ap22_sub11_4i6_anx46946z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap12_add9_2_anx23445z1,
	datad => VCC,
	cin => u_flow_ap22_sub11_4i6_anx46946z3,
	combout => u_flow_ap22_sub11_4i6_anx46946z1,
	cout => u_flow_ap22_sub11_4i6_anx23445z2);

u_flow_ap22_sub11_4i6_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_sub11_4i6_anx23445z1 = u_flow_ap22_sub11_4i6_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => u_flow_ap22_sub11_4i6_anx23445z2,
	combout => u_flow_ap22_sub11_4i6_anx23445z1);

u_flow_ap22_add12_4i2_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap22_add12_4i2_anx63795z1 = u_flow_ap22_sub10_4i5_anx23445z1 $ u_flow_ap22_add12_4i2_anx63795z4 $ u_flow_ap22_sub11_4i6_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap22_sub10_4i5_anx23445z1,
	datad => u_flow_ap22_sub11_4i6_anx23445z1,
	cin => u_flow_ap22_add12_4i2_anx63795z4,
	combout => u_flow_ap22_add12_4i2_anx63795z1);

u_flow_areg_p22_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap22_add12_4i2_anx63795z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap22_12_a);

u_flow_areg_p31_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap31_12_afeeder_combout,
	sdata => u_flow_ap22_12_a,
	sload => u_flow_aix45188z19900_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap31_12_a);

u_flow_aix26026z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26026z2 = u_flow_ap4s_sub12_0_anx23445z1 & !u_flow_ap31_12_a & u_flow_ap30

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap4s_sub12_0_anx23445z1,
	datab => u_flow_ap31_12_a,
	datac => u_flow_ap30,
	combout => u_flow_anx26026z2);

u_flow_aix26026z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26026z1 = u_flow_anx26026z2 & (u_flow_ap4s_sub12_0_anx63795z1 # u_flow_ap4s_sub12_0_anx62798z1 # u_flow_anx26026z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap4s_sub12_0_anx63795z1,
	datab => u_flow_ap4s_sub12_0_anx62798z1,
	datac => u_flow_anx26026z4,
	datad => u_flow_anx26026z2,
	combout => u_flow_anx26026z1);

u_flow_areg_p41 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx26026z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap41);

u_flow_aix5049z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx5049z1 = u_flow_astate_3_a # i_reset_acombout # !u_flow_ap40

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_astate_3_a,
	datac => i_reset_acombout,
	datad => u_flow_ap40,
	combout => u_flow_anx5049z1);

u_flow_areg_p43_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_5_a);

u_flow_areg_prev_max_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_5_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_5_a);

u_flow_areg_p43_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_4_a);

u_flow_aix47310z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z10 = u_flow_aprev_max_4_a & (u_flow_aprev_max_5_a $ u_flow_ap43_5_a # !u_flow_ap43_4_a) # !u_flow_aprev_max_4_a & (u_flow_ap43_4_a # u_flow_aprev_max_5_a $ u_flow_ap43_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_4_a,
	datab => u_flow_aprev_max_5_a,
	datac => u_flow_ap43_4_a,
	datad => u_flow_ap43_5_a,
	combout => u_flow_anx47310z10);

u_flow_areg_p43_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_3_a);

u_flow_areg_prev_max_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_3_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_3_a);

u_flow_areg_p43_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_2_a);

u_flow_areg_prev_max_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_2_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_2_a);

u_flow_aix47310z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z11 = u_flow_ap43_2_a & (u_flow_aprev_max_3_a $ u_flow_ap43_3_a # !u_flow_aprev_max_2_a) # !u_flow_ap43_2_a & (u_flow_aprev_max_2_a # u_flow_aprev_max_3_a $ u_flow_ap43_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_2_a,
	datab => u_flow_aprev_max_3_a,
	datac => u_flow_aprev_max_2_a,
	datad => u_flow_ap43_3_a,
	combout => u_flow_anx47310z11);

u_flow_areg_p43_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_0_a);

u_flow_areg_prev_max_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_0_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_0_a);

u_flow_areg_p43_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_1_a);

u_flow_aix47310z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z12 = u_flow_aprev_max_1_a & (u_flow_ap43_0_a $ u_flow_aprev_max_0_a # !u_flow_ap43_1_a) # !u_flow_aprev_max_1_a & (u_flow_ap43_1_a # u_flow_ap43_0_a $ u_flow_aprev_max_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_1_a,
	datab => u_flow_ap43_0_a,
	datac => u_flow_aprev_max_0_a,
	datad => u_flow_ap43_1_a,
	combout => u_flow_anx47310z12);

u_flow_aix47310z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z4 = !u_flow_anx47310z5 & !u_flow_anx47310z10 & !u_flow_anx47310z11 & !u_flow_anx47310z12

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_anx47310z5,
	datab => u_flow_anx47310z10,
	datac => u_flow_anx47310z11,
	datad => u_flow_anx47310z12,
	combout => u_flow_anx47310z4);

u_flow_aix45188z19900_anx100z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix45188z19900_anx100z1_a_wirecell_combout = !u_flow_aix45188z19900_anx100z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_aix45188z19900_anx100z1,
	combout => u_flow_aix45188z19900_anx100z1_a_wirecell_combout);

u_flow_areg_p35 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_aix45188z19900_anx100z1_a_wirecell_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap35);

u_flow_ap45_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap45_afeeder_combout = u_flow_ap35

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_ap35,
	combout => u_flow_ap45_afeeder_combout);

u_flow_areg_p45 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap45_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap45);

u_flow_areg_max_fwd : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap45,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_amax_fwd);

u_flow_aix29125z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_13_a = u_flow_ap31_12_a # !u_flow_ap4s_sub12_0_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap4s_sub12_0_anx23445z1,
	datac => u_flow_ap31_12_a,
	combout => u_flow_ap4s_13_a);

u_flow_areg_p43_13_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_13_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_13_a);

u_flow_areg_prev_max_13_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_13_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_13_a);

u_flow_aix28128z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap4s_12_a = u_flow_ap4s_sub12_0_anx23445z1 $ !u_flow_ap31_12_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap4s_sub12_0_anx23445z1,
	datac => u_flow_ap31_12_a,
	combout => u_flow_ap4s_12_a);

u_flow_areg_p43_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_12_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_12_a);

u_flow_areg_prev_max_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_12_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_12_a);

u_flow_areg_p43_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx63795z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_11_a);

u_flow_areg_prev_max_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_11_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_11_a);

u_flow_areg_p43_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_10_a);

u_flow_areg_prev_max_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_10_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_10_a);

u_flow_areg_p43_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_9_a);

u_flow_areg_p43_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_8_a);

u_flow_areg_prev_max_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap43_8_a,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_max_8_a);

u_flow_ap43_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap43_7_afeeder_combout = u_flow_ap4s_sub12_0_anx44952z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_flow_ap4s_sub12_0_anx44952z1,
	combout => u_flow_ap43_7_afeeder_combout);

u_flow_areg_p43_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap43_7_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_7_a);

u_flow_areg_p43_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap4s_sub12_0_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap43_6_a);

u_flow_aix47310z8933_aix100z52937 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z40 = CARRY(!u_flow_aprev_max_0_a & u_flow_ap43_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_0_a,
	datab => u_flow_ap43_0_a,
	datad => VCC,
	cout => u_flow_aix47310z8933_anx100z40);

u_flow_aix47310z8933_aix100z52936 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z37 = CARRY(u_flow_aprev_max_1_a & (!u_flow_aix47310z8933_anx100z40 # !u_flow_ap43_1_a) # !u_flow_aprev_max_1_a & !u_flow_ap43_1_a & !u_flow_aix47310z8933_anx100z40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_1_a,
	datab => u_flow_ap43_1_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z40,
	cout => u_flow_aix47310z8933_anx100z37);

u_flow_aix47310z8933_aix100z52935 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z34 = CARRY(u_flow_aprev_max_2_a & u_flow_ap43_2_a & !u_flow_aix47310z8933_anx100z37 # !u_flow_aprev_max_2_a & (u_flow_ap43_2_a # !u_flow_aix47310z8933_anx100z37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_2_a,
	datab => u_flow_ap43_2_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z37,
	cout => u_flow_aix47310z8933_anx100z34);

u_flow_aix47310z8933_aix100z52934 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z31 = CARRY(u_flow_ap43_3_a & u_flow_aprev_max_3_a & !u_flow_aix47310z8933_anx100z34 # !u_flow_ap43_3_a & (u_flow_aprev_max_3_a # !u_flow_aix47310z8933_anx100z34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_3_a,
	datab => u_flow_aprev_max_3_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z34,
	cout => u_flow_aix47310z8933_anx100z31);

u_flow_aix47310z8933_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z28 = CARRY(u_flow_aprev_max_4_a & u_flow_ap43_4_a & !u_flow_aix47310z8933_anx100z31 # !u_flow_aprev_max_4_a & (u_flow_ap43_4_a # !u_flow_aix47310z8933_anx100z31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_4_a,
	datab => u_flow_ap43_4_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z31,
	cout => u_flow_aix47310z8933_anx100z28);

u_flow_aix47310z8933_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z25 = CARRY(u_flow_aprev_max_5_a & (!u_flow_aix47310z8933_anx100z28 # !u_flow_ap43_5_a) # !u_flow_aprev_max_5_a & !u_flow_ap43_5_a & !u_flow_aix47310z8933_anx100z28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_5_a,
	datab => u_flow_ap43_5_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z28,
	cout => u_flow_aix47310z8933_anx100z25);

u_flow_aix47310z8933_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z22 = CARRY(u_flow_aprev_max_6_a & u_flow_ap43_6_a & !u_flow_aix47310z8933_anx100z25 # !u_flow_aprev_max_6_a & (u_flow_ap43_6_a # !u_flow_aix47310z8933_anx100z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_6_a,
	datab => u_flow_ap43_6_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z25,
	cout => u_flow_aix47310z8933_anx100z22);

u_flow_aix47310z8933_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z19 = CARRY(u_flow_aprev_max_7_a & (!u_flow_aix47310z8933_anx100z22 # !u_flow_ap43_7_a) # !u_flow_aprev_max_7_a & !u_flow_ap43_7_a & !u_flow_aix47310z8933_anx100z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_7_a,
	datab => u_flow_ap43_7_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z22,
	cout => u_flow_aix47310z8933_anx100z19);

u_flow_aix47310z8933_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z16 = CARRY(u_flow_ap43_8_a & (!u_flow_aix47310z8933_anx100z19 # !u_flow_aprev_max_8_a) # !u_flow_ap43_8_a & !u_flow_aprev_max_8_a & !u_flow_aix47310z8933_anx100z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_8_a,
	datab => u_flow_aprev_max_8_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z19,
	cout => u_flow_aix47310z8933_anx100z16);

u_flow_aix47310z8933_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z13 = CARRY(u_flow_aprev_max_9_a & (!u_flow_aix47310z8933_anx100z16 # !u_flow_ap43_9_a) # !u_flow_aprev_max_9_a & !u_flow_ap43_9_a & !u_flow_aix47310z8933_anx100z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_aprev_max_9_a,
	datab => u_flow_ap43_9_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z16,
	cout => u_flow_aix47310z8933_anx100z13);

u_flow_aix47310z8933_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z10 = CARRY(u_flow_ap43_10_a & (!u_flow_aix47310z8933_anx100z13 # !u_flow_aprev_max_10_a) # !u_flow_ap43_10_a & !u_flow_aprev_max_10_a & !u_flow_aix47310z8933_anx100z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_10_a,
	datab => u_flow_aprev_max_10_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z13,
	cout => u_flow_aix47310z8933_anx100z10);

u_flow_aix47310z8933_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z7 = CARRY(u_flow_ap43_11_a & u_flow_aprev_max_11_a & !u_flow_aix47310z8933_anx100z10 # !u_flow_ap43_11_a & (u_flow_aprev_max_11_a # !u_flow_aix47310z8933_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_11_a,
	datab => u_flow_aprev_max_11_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z10,
	cout => u_flow_aix47310z8933_anx100z7);

u_flow_aix47310z8933_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z4 = CARRY(u_flow_ap43_12_a & (!u_flow_aix47310z8933_anx100z7 # !u_flow_aprev_max_12_a) # !u_flow_ap43_12_a & !u_flow_aprev_max_12_a & !u_flow_aix47310z8933_anx100z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap43_12_a,
	datab => u_flow_aprev_max_12_a,
	datad => VCC,
	cin => u_flow_aix47310z8933_anx100z7,
	cout => u_flow_aix47310z8933_anx100z4);

u_flow_aix47310z8933_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_aix47310z8933_anx100z1 = u_flow_ap43_13_a & u_flow_aix47310z8933_anx100z4 & u_flow_aprev_max_13_a # !u_flow_ap43_13_a & (u_flow_aix47310z8933_anx100z4 # u_flow_aprev_max_13_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_flow_ap43_13_a,
	datad => u_flow_aprev_max_13_a,
	cin => u_flow_aix47310z8933_anx100z4,
	combout => u_flow_aix47310z8933_anx100z1);

u_flow_aix47310z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z2 = u_flow_aix47310z8933_anx100z1 # u_flow_ap45 & u_flow_anx47310z4 & !u_flow_amax_fwd

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_ap45,
	datab => u_flow_anx47310z4,
	datac => u_flow_amax_fwd,
	datad => u_flow_aix47310z8933_anx100z1,
	combout => u_flow_anx47310z2);

u_flow_aix47310z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47310z1 = u_flow_astate_3_a # i_reset_acombout # u_flow_anx47310z2 # !u_flow_ap40

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_astate_3_a,
	datab => i_reset_acombout,
	datac => u_flow_ap40,
	datad => u_flow_anx47310z2,
	combout => u_flow_anx47310z1);

u_flow_areg_prev_edge : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_ap41,
	sclr => u_flow_anx5049z1,
	sload => VCC,
	ena => u_flow_anx47310z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_aprev_edge);

u_flow_ao_edge_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ao_edge_afeeder_combout = u_flow_aprev_edge

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_aprev_edge,
	combout => u_flow_ao_edge_afeeder_combout);

u_flow_aix30752z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx30752z1 = u_flow_anx47310z2 & u_flow_astate_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_flow_anx47310z2,
	datad => u_flow_astate_3_a,
	combout => u_flow_anx30752z1);

u_flow_areg_tmp_o_edge : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ao_edge_afeeder_combout,
	sdata => u_flow_ap41,
	sload => u_flow_anx30752z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ao_edge);

u_flow_aix27830z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx27830z1 = u_flow_anx28524z1 $ u_flow_ap45

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_anx28524z1,
	datac => u_flow_ap45,
	combout => u_flow_anx27830z1);

u_flow_areg_max_dir_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx27830z1,
	ena => u_flow_anx47310z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_amax_dir_0_a);

u_flow_aix63886z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ao_dir_0_a = u_flow_amax_dir_0_a & u_flow_ao_edge

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_amax_dir_0_a,
	datad => u_flow_ao_edge,
	combout => u_flow_ao_dir_0_a);

u_flow_aix26833z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26833z3 = !u_flow_astate_1_a & u_flow_anx28524z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_astate_1_a,
	datac => u_flow_anx28524z1,
	combout => u_flow_anx26833z3);

u_flow_aix26833z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26833z1 = u_flow_anx47310z2 & u_flow_anx26833z3 & (u_flow_anx26833z2 # u_flow_amax_dir_1_a) # !u_flow_anx47310z2 & (u_flow_amax_dir_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_anx26833z2,
	datab => u_flow_anx47310z2,
	datac => u_flow_amax_dir_1_a,
	datad => u_flow_anx26833z3,
	combout => u_flow_anx26833z1);

u_flow_areg_max_dir_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx26833z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_amax_dir_1_a);

u_flow_aix62889z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ao_dir_1_a = u_flow_amax_dir_1_a & u_flow_ao_edge

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_amax_dir_1_a,
	datad => u_flow_ao_edge,
	combout => u_flow_ao_dir_1_a);

u_flow_aix25836z52925 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx25836z3 = u_flow_anx47310z2 & u_flow_anx28524z1 & (u_flow_astate_1_a) # !u_flow_anx47310z2 & (u_flow_amax_dir_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_anx28524z1,
	datab => u_flow_amax_dir_2_a,
	datac => u_flow_anx47310z2,
	datad => u_flow_astate_1_a,
	combout => u_flow_anx25836z3);

u_flow_aix25836z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx25836z2 = u_flow_amax_dir_2_a # u_flow_anx47310z2 & u_flow_astate_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_flow_amax_dir_2_a,
	datac => u_flow_anx47310z2,
	datad => u_flow_astate_3_a,
	combout => u_flow_anx25836z2);

u_flow_aix25836z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx25836z1 = u_flow_anx25836z3 # !u_flow_astate_2_a & u_flow_anx25836z2 & u_flow_anx28524z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_flow_astate_2_a,
	datab => u_flow_anx25836z3,
	datac => u_flow_anx25836z2,
	datad => u_flow_anx28524z1,
	combout => u_flow_anx25836z1);

u_flow_areg_max_dir_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx25836z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_amax_dir_2_a);

u_flow_aix61892z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ao_dir_2_a = u_flow_amax_dir_2_a & u_flow_ao_edge

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_flow_amax_dir_2_a,
	datad => u_flow_ao_edge,
	combout => u_flow_ao_dir_2_a);

u_memory_aix33254z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx33254z1 = i_valid_acombout # u_memory_abusySignal

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datac => u_memory_abusySignal,
	combout => u_memory_anx33254z1);

u_memory_areg_busySignal : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_anx33254z1,
	sclr => u_memory_anx8852z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_abusySignal);

u_memory_abusySignalDelayed_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_abusySignalDelayed_afeeder_combout = u_memory_abusySignal

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_abusySignal,
	combout => u_memory_abusySignalDelayed_afeeder_combout);

u_memory_areg_busySignalDelayed : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_abusySignalDelayed_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_abusySignalDelayed);

u_memory_aix64269z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_mode_0_a = u_memory_abusySignal # i_valid_acombout # i_reset_acombout # u_memory_abusySignalDelayed

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_abusySignal,
	datab => i_valid_acombout,
	datac => i_reset_acombout,
	datad => u_memory_abusySignalDelayed,
	combout => u_memory_ap_o_mode_0_a);

i_reset_int_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- i_reset_int_a_wirecell_combout = !i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	combout => i_reset_int_a_wirecell_combout);

ix35105z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35105z1 = nx57127z2 & !i_reset_acombout & u_memory_ap_o_valid

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => i_reset_acombout,
	datad => u_memory_ap_o_valid,
	combout => nx35105z1);

reg_f_i_mode_next_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_reset_int_a_wirecell_combout,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_mode_next_1_a);

ix20836z52988 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_mode_1_a = nx57127z2 & !i_reset_acombout # !nx57127z2 & (f_i_mode_next_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx57127z2,
	datac => i_reset_acombout,
	datad => f_i_mode_next_1_a,
	combout => f_i_mode_1_a);

u_flow_aix259_reg_p2m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_mode_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx41013z1);

u_flow_anx46148z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx46148z1_afeeder_combout = u_flow_anx41013z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx41013z1,
	combout => u_flow_anx46148z1_afeeder_combout);

u_flow_aix259_reg_p3m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx46148z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx46148z1);

u_flow_aix259_reg_p4m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_anx46148z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx14253z1);

u_flow_aix259_reg_p5m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_anx14253z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap5m_1_a);

ix20836z52989 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_mode_0_a = nx57127z2 & (u_memory_ap_o_mode_0_a) # !nx57127z2 & f_i_mode_next_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i_mode_next_0_a,
	datac => nx57127z2,
	datad => u_memory_ap_o_mode_0_a,
	combout => f_i_mode_0_a);

u_flow_aix259_reg_p2m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_mode_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx42010z1);

u_flow_anx47145z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47145z1_afeeder_combout = u_flow_anx42010z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx42010z1,
	combout => u_flow_anx47145z1_afeeder_combout);

u_flow_aix259_reg_p3m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx47145z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx47145z1);

u_flow_anx13256z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx13256z1_afeeder_combout = u_flow_anx47145z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx47145z1,
	combout => u_flow_anx13256z1_afeeder_combout);

u_flow_aix259_reg_p4m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx13256z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx13256z1);

u_flow_ap5m_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_ap5m_0_afeeder_combout = u_flow_anx13256z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx13256z1,
	combout => u_flow_ap5m_0_afeeder_combout);

u_flow_aix259_reg_p5m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_ap5m_0_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_ap5m_0_a);

ix47893z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_mode_dup0_0_a = i_reset_acombout # u_memory_ap_o_mode_0_a # u_flow_ap5m_1_a & u_flow_ap5m_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => u_memory_ap_o_mode_0_a,
	datac => u_flow_ap5m_1_a,
	datad => u_flow_ap5m_0_a,
	combout => o_mode_dup0_0_a);

u_memory_ap_o_row_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_0_afeeder_combout = u_memory_amodgen_counter_row_anx58250z15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_row_anx58250z15,
	combout => u_memory_ap_o_row_0_afeeder_combout);

u_memory_areg_o_row_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_0_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_0_a);

f_i_row_next_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_next_0_afeeder_combout = u_memory_ap_o_row_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_row_0_a,
	combout => f_i_row_next_0_afeeder_combout);

reg_f_i_row_next_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_next_0_afeeder_combout,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_0_a);

ix20836z52997 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_0_a = nx57127z2 & u_memory_ap_o_row_0_a # !nx57127z2 & (f_i_row_next_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_row_0_a,
	datac => nx57127z2,
	datad => f_i_row_next_0_a,
	combout => f_i_row_0_a);

u_flow_aix258_reg_p2r_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx22790z1);

u_flow_anx27925z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx27925z1_afeeder_combout = u_flow_anx22790z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx22790z1,
	combout => u_flow_anx27925z1_afeeder_combout);

u_flow_aix258_reg_p3r_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx27925z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx27925z1);

u_flow_anx41852z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx41852z1_afeeder_combout = u_flow_anx27925z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx27925z1,
	combout => u_flow_anx41852z1_afeeder_combout);

u_flow_aix258_reg_p4r_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx41852z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx41852z1);

nx16335z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx16335z1_afeeder_combout = u_flow_anx41852z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx41852z1,
	combout => nx16335z1_afeeder_combout);

reg_out_o_row_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx16335z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx16335z1);

u_memory_ap_o_row_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_1_afeeder_combout = u_memory_amodgen_counter_row_anx58250z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_row_anx58250z13,
	combout => u_memory_ap_o_row_1_afeeder_combout);

u_memory_areg_o_row_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_1_a);

ix20836z52996 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_1_a = nx57127z2 & (u_memory_ap_o_row_1_a) # !nx57127z2 & f_i_row_next_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i_row_next_1_a,
	datab => u_memory_ap_o_row_1_a,
	datad => nx57127z2,
	combout => f_i_row_1_a);

u_flow_aix258_reg_p2r_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx21793z1);

u_flow_anx26928z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx26928z1_afeeder_combout = u_flow_anx21793z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx21793z1,
	combout => u_flow_anx26928z1_afeeder_combout);

u_flow_aix258_reg_p3r_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx26928z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx26928z1);

u_flow_anx34065z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx34065z1_afeeder_combout = u_flow_anx26928z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_flow_anx26928z1,
	combout => u_flow_anx34065z1_afeeder_combout);

u_flow_aix258_reg_p4r_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx34065z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx34065z1);

nx17332z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx17332z1_afeeder_combout = u_flow_anx34065z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx34065z1,
	combout => nx17332z1_afeeder_combout);

reg_out_o_row_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx17332z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx17332z1);

u_memory_ap_o_row_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_2_afeeder_combout = u_memory_amodgen_counter_row_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_row_anx58250z11,
	combout => u_memory_ap_o_row_2_afeeder_combout);

u_memory_areg_o_row_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_2_a);

f_i_row_next_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_next_2_afeeder_combout = u_memory_ap_o_row_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_row_2_a,
	combout => f_i_row_next_2_afeeder_combout);

reg_f_i_row_next_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_next_2_afeeder_combout,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_2_a);

ix20836z52995 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_2_a = nx57127z2 & (u_memory_ap_o_row_2_a) # !nx57127z2 & f_i_row_next_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_i_row_next_2_a,
	datac => nx57127z2,
	datad => u_memory_ap_o_row_2_a,
	combout => f_i_row_2_a);

u_flow_aix258_reg_p2r_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx20796z1);

u_flow_anx25931z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx25931z1_afeeder_combout = u_flow_anx20796z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx20796z1,
	combout => u_flow_anx25931z1_afeeder_combout);

u_flow_aix258_reg_p3r_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx25931z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx25931z1);

u_flow_anx39258z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx39258z1_afeeder_combout = u_flow_anx25931z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx25931z1,
	combout => u_flow_anx39258z1_afeeder_combout);

u_flow_aix258_reg_p4r_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx39258z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx39258z1);

reg_out_o_row_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_anx39258z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx18329z1);

u_memory_ap_o_row_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_3_afeeder_combout = u_memory_amodgen_counter_row_anx58250z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_amodgen_counter_row_anx58250z9,
	combout => u_memory_ap_o_row_3_afeeder_combout);

u_memory_areg_o_row_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_3_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_3_a);

ix20836z52994 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_3_a = nx57127z2 & (u_memory_ap_o_row_3_a) # !nx57127z2 & f_i_row_next_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_i_row_next_3_a,
	datab => nx57127z2,
	datad => u_memory_ap_o_row_3_a,
	combout => f_i_row_3_a);

u_flow_aix258_reg_p2r_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx19799z1);

u_flow_aix258_reg_p3r_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_anx19799z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx24934z1);

u_flow_anx47045z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx47045z1_afeeder_combout = u_flow_anx24934z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx24934z1,
	combout => u_flow_anx47045z1_afeeder_combout);

u_flow_aix258_reg_p4r_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx47045z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx47045z1);

nx19326z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx19326z1_afeeder_combout = u_flow_anx47045z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx47045z1,
	combout => nx19326z1_afeeder_combout);

reg_out_o_row_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx19326z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx19326z1);

u_memory_ap_o_row_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_4_afeeder_combout = u_memory_amodgen_counter_row_anx58250z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_row_anx58250z7,
	combout => u_memory_ap_o_row_4_afeeder_combout);

u_memory_areg_o_row_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_4_a);

reg_f_i_row_next_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_row_4_a,
	sload => VCC,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_4_a);

ix20836z52993 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_4_a = nx57127z2 & u_memory_ap_o_row_4_a # !nx57127z2 & (f_i_row_next_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_row_4_a,
	datab => f_i_row_next_4_a,
	datad => nx57127z2,
	combout => f_i_row_4_a);

u_flow_aix258_reg_p2r_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx18802z1);

u_flow_anx23937z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx23937z1_afeeder_combout = u_flow_anx18802z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx18802z1,
	combout => u_flow_anx23937z1_afeeder_combout);

u_flow_aix258_reg_p3r_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx23937z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx23937z1);

u_flow_anx54832z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx54832z1_afeeder_combout = u_flow_anx23937z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx23937z1,
	combout => u_flow_anx54832z1_afeeder_combout);

u_flow_aix258_reg_p4r_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx54832z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx54832z1);

nx20323z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx20323z1_afeeder_combout = u_flow_anx54832z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx54832z1,
	combout => nx20323z1_afeeder_combout);

reg_out_o_row_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20323z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20323z1);

u_memory_ap_o_row_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_5_afeeder_combout = u_memory_amodgen_counter_row_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_row_anx58250z5,
	combout => u_memory_ap_o_row_5_afeeder_combout);

u_memory_areg_o_row_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_5_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_5_a);

reg_f_i_row_next_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_row_5_a,
	sload => VCC,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_5_a);

ix20836z52992 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_5_a = nx57127z2 & (u_memory_ap_o_row_5_a) # !nx57127z2 & f_i_row_next_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_i_row_next_5_a,
	datac => nx57127z2,
	datad => u_memory_ap_o_row_5_a,
	combout => f_i_row_5_a);

u_flow_aix258_reg_p2r_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx17805z1);

u_flow_anx22940z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx22940z1_afeeder_combout = u_flow_anx17805z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx17805z1,
	combout => u_flow_anx22940z1_afeeder_combout);

u_flow_aix258_reg_p3r_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx22940z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx22940z1);

u_flow_aix258_reg_p4r_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_flow_anx22940z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx62619z1);

nx21320z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx21320z1_afeeder_combout = u_flow_anx62619z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx62619z1,
	combout => nx21320z1_afeeder_combout);

reg_out_o_row_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21320z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21320z1);

u_memory_ap_o_row_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_6_afeeder_combout = u_memory_amodgen_counter_row_anx58250z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_amodgen_counter_row_anx58250z3,
	combout => u_memory_ap_o_row_6_afeeder_combout);

u_memory_areg_o_row_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_6_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_6_a);

reg_f_i_row_next_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_row_6_a,
	sload => VCC,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_6_a);

ix20836z52991 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_6_a = nx57127z2 & u_memory_ap_o_row_6_a # !nx57127z2 & (f_i_row_next_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_ap_o_row_6_a,
	datab => f_i_row_next_6_a,
	datac => nx57127z2,
	combout => f_i_row_6_a);

u_flow_aix258_reg_p2r_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx16808z1);

u_flow_anx21943z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx21943z1_afeeder_combout = u_flow_anx16808z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx16808z1,
	combout => u_flow_anx21943z1_afeeder_combout);

u_flow_aix258_reg_p3r_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx21943z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx21943z1);

u_flow_anx22927z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx22927z1_afeeder_combout = u_flow_anx21943z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx21943z1,
	combout => u_flow_anx22927z1_afeeder_combout);

u_flow_aix258_reg_p4r_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx22927z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx22927z1);

nx22317z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx22317z1_afeeder_combout = u_flow_anx22927z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx22927z1,
	combout => nx22317z1_afeeder_combout);

reg_out_o_row_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22317z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22317z1);

u_memory_ap_o_row_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_row_7_afeeder_combout = u_memory_amodgen_counter_row_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_amodgen_counter_row_anx1041z1,
	combout => u_memory_ap_o_row_7_afeeder_combout);

u_memory_areg_o_row_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_row_7_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_row_7_a);

reg_f_i_row_next_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_row_7_a,
	sload => VCC,
	ena => nx35105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_i_row_next_7_a);

ix20836z52990 : cycloneii_lcell_comb
-- Equation(s):
-- f_i_row_7_a = nx57127z2 & (u_memory_ap_o_row_7_a) # !nx57127z2 & f_i_row_next_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => f_i_row_next_7_a,
	datac => u_memory_ap_o_row_7_a,
	datad => nx57127z2,
	combout => f_i_row_7_a);

u_flow_aix258_reg_p2r_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => f_i_row_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx15811z1);

u_flow_anx20946z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx20946z1_afeeder_combout = u_flow_anx15811z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx15811z1,
	combout => u_flow_anx20946z1_afeeder_combout);

u_flow_aix258_reg_p3r_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx20946z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx20946z1);

u_flow_anx30714z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_flow_anx30714z1_afeeder_combout = u_flow_anx20946z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx20946z1,
	combout => u_flow_anx30714z1_afeeder_combout);

u_flow_aix258_reg_p4r_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_flow_anx30714z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_flow_anx30714z1);

nx23314z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx23314z1_afeeder_combout = u_flow_anx30714z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_flow_anx30714z1,
	combout => nx23314z1_afeeder_combout);

reg_out_o_row_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23314z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23314z1);

reg_out_o_image0_obuf_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx59473z1);

reg_out_o_image0_obuf_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx58476z1);

nx57479z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx57479z1_afeeder_combout = u_memory_ap_o_image1_0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image1_0_2_a,
	combout => nx57479z1_afeeder_combout);

reg_out_o_image0_obuf_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57479z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx57479z1);

reg_out_o_image0_obuf_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx56482z1);

reg_out_o_image0_obuf_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx55485z1);

reg_out_o_image0_obuf_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx54488z1);

reg_out_o_image0_obuf_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx53491z1);

u_memory_areg_buffer1_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_7_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_0_7_a);

reg_out_o_image0_obuf_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_0_7_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx52494z1);

reg_out_o_image0_obuf_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64608z1);

reg_out_o_image0_obuf_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_1_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63611z1);

nx62614z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx62614z1_afeeder_combout = u_memory_ap_o_image1_1_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_2_a,
	combout => nx62614z1_afeeder_combout);

reg_out_o_image0_obuf_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx62614z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62614z1);

u_memory_ap_o_image1_1_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image1_1_3_afeeder_combout = u_memory_ap_o_image2_1_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_1_3_a,
	combout => u_memory_ap_o_image1_1_3_afeeder_combout);

u_memory_areg_buffer1_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image1_1_3_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_3_a);

reg_out_o_image0_obuf_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_3_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx61617z1);

nx60620z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx60620z1_afeeder_combout = u_memory_ap_o_image1_1_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_4_a,
	combout => nx60620z1_afeeder_combout);

reg_out_o_image0_obuf_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx60620z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx60620z1);

u_memory_areg_buffer1_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_1_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_5_a);

reg_out_o_image0_obuf_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx59623z1);

u_memory_ap_o_image1_1_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image1_1_6_afeeder_combout = u_memory_ap_o_image2_1_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_6_a,
	combout => u_memory_ap_o_image1_1_6_afeeder_combout);

u_memory_areg_buffer1_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image1_1_6_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_6_a);

reg_out_o_image0_obuf_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_1_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx58626z1);

u_memory_ap_o_image2_1_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image2_1_7_afeeder_combout = u_memory_anx62359z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx62359z1,
	combout => u_memory_ap_o_image2_1_7_afeeder_combout);

u_memory_areg_buffer2_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image2_1_7_afeeder_combout,
	sdata => u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a(7),
	sload => u_memory_ab_1_dup_352,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image2_1_7_a);

u_memory_ap_o_image1_1_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_image1_1_7_afeeder_combout = u_memory_ap_o_image2_1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_7_a,
	combout => u_memory_ap_o_image1_1_7_afeeder_combout);

u_memory_areg_buffer1_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_o_image1_1_7_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_o_image1_1_7_a);

nx57629z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx57629z1_afeeder_combout = u_memory_ap_o_image1_1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_1_7_a,
	combout => nx57629z1_afeeder_combout);

reg_out_o_image0_obuf_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57629z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx57629z1);

reg_out_o_image0_obuf_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_0_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx4207z1);

nx3210z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx3210z1_afeeder_combout = u_memory_ap_o_image1_2_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_2_1_a,
	combout => nx3210z1_afeeder_combout);

reg_out_o_image0_obuf_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx3210z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx3210z1);

nx2213z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx2213z1_afeeder_combout = u_memory_ap_o_image1_2_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image1_2_2_a,
	combout => nx2213z1_afeeder_combout);

reg_out_o_image0_obuf_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx2213z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx2213z1);

nx1216z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx1216z1_afeeder_combout = u_memory_ap_o_image1_2_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image1_2_3_a,
	combout => nx1216z1_afeeder_combout);

reg_out_o_image0_obuf_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx1216z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx1216z1);

nx219z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx219z1_afeeder_combout = u_memory_ap_o_image1_2_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_2_4_a,
	combout => nx219z1_afeeder_combout);

reg_out_o_image0_obuf_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx219z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx219z1);

reg_out_o_image0_obuf_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64758z1);

reg_out_o_image0_obuf_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image1_2_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63761z1);

nx62764z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx62764z1_afeeder_combout = u_memory_ap_o_image1_2_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image1_2_7_a,
	combout => nx62764z1_afeeder_combout);

reg_out_o_image0_obuf_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx62764z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62764z1);

nx41208z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx41208z1_afeeder_combout = u_memory_ap_o_image2_0_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_0_0_a,
	combout => nx41208z1_afeeder_combout);

reg_out_o_image1_obuf_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx41208z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41208z1);

nx42205z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx42205z1_afeeder_combout = u_memory_ap_o_image2_0_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_0_1_a,
	combout => nx42205z1_afeeder_combout);

reg_out_o_image1_obuf_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx42205z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42205z1);

nx43202z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx43202z1_afeeder_combout = u_memory_ap_o_image2_0_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_0_2_a,
	combout => nx43202z1_afeeder_combout);

reg_out_o_image1_obuf_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43202z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43202z1);

nx44199z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx44199z1_afeeder_combout = u_memory_ap_o_image2_0_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_0_3_a,
	combout => nx44199z1_afeeder_combout);

reg_out_o_image1_obuf_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44199z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44199z1);

reg_out_o_image1_obuf_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45196z1);

reg_out_o_image1_obuf_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46193z1);

reg_out_o_image1_obuf_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47190z1);

reg_out_o_image1_obuf_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_0_7_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx48187z1);

nx36073z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx36073z1_afeeder_combout = u_memory_ap_o_image2_1_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_0_a,
	combout => nx36073z1_afeeder_combout);

reg_out_o_image1_obuf_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36073z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx36073z1);

nx37070z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx37070z1_afeeder_combout = u_memory_ap_o_image2_1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_1_a,
	combout => nx37070z1_afeeder_combout);

reg_out_o_image1_obuf_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx37070z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx37070z1);

nx38067z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx38067z1_afeeder_combout = u_memory_ap_o_image2_1_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_1_2_a,
	combout => nx38067z1_afeeder_combout);

reg_out_o_image1_obuf_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx38067z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx38067z1);

nx39064z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx39064z1_afeeder_combout = u_memory_ap_o_image2_1_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_1_3_a,
	combout => nx39064z1_afeeder_combout);

reg_out_o_image1_obuf_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx39064z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx39064z1);

reg_out_o_image1_obuf_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_1_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx40061z1);

reg_out_o_image1_obuf_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_1_5_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41058z1);

nx42055z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx42055z1_afeeder_combout = u_memory_ap_o_image2_1_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_6_a,
	combout => nx42055z1_afeeder_combout);

reg_out_o_image1_obuf_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx42055z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42055z1);

nx43052z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx43052z1_afeeder_combout = u_memory_ap_o_image2_1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_1_7_a,
	combout => nx43052z1_afeeder_combout);

reg_out_o_image1_obuf_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43052z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43052z1);

nx30938z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx30938z1_afeeder_combout = u_memory_ap_o_image2_2_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_2_0_a,
	combout => nx30938z1_afeeder_combout);

reg_out_o_image1_obuf_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx30938z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx30938z1);

nx31935z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx31935z1_afeeder_combout = u_memory_ap_o_image2_2_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_2_1_a,
	combout => nx31935z1_afeeder_combout);

reg_out_o_image1_obuf_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx31935z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx31935z1);

reg_out_o_image1_obuf_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_2_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx32932z1);

nx33929z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx33929z1_afeeder_combout = u_memory_ap_o_image2_2_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_ap_o_image2_2_3_a,
	combout => nx33929z1_afeeder_combout);

reg_out_o_image1_obuf_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx33929z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx33929z1);

reg_out_o_image1_obuf_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_4_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx34926z1);

nx35923z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx35923z1_afeeder_combout = u_memory_ap_o_image2_2_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_o_image2_2_5_a,
	combout => nx35923z1_afeeder_combout);

reg_out_o_image1_obuf_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35923z1_afeeder_combout,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx35923z1);

reg_out_o_image1_obuf_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_6_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx36920z1);

reg_out_o_image1_obuf_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_o_image2_2_7_a,
	sload => VCC,
	ena => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx37917z1);

reg_out_debug_column_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_amodgen_counter_column_anx51271z1,
	sclr => u_memory_anx47386z2,
	ena => u_memory_amodgen_counter_column_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx4807z1);

u_memory_aix52274z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_column_2_a = u_memory_amodgen_counter_column_anx58250z13 $ !u_memory_amodgen_counter_column_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_memory_amodgen_counter_column_anx58250z13,
	datad => u_memory_amodgen_counter_column_anx58250z11,
	combout => u_memory_ap_o_column_2_a);

u_memory_aix51277z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_column_3_a = u_memory_amodgen_counter_column_anx58250z9 $ (!u_memory_amodgen_counter_column_anx58250z13 & !u_memory_amodgen_counter_column_anx58250z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_amodgen_counter_column_anx58250z9,
	datac => u_memory_amodgen_counter_column_anx58250z13,
	datad => u_memory_amodgen_counter_column_anx58250z11,
	combout => u_memory_ap_o_column_3_a);

u_memory_aix50280z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_column_4_a = u_memory_amodgen_counter_column_anx58250z7 $ (!u_memory_amodgen_counter_column_anx58250z9 & !u_memory_amodgen_counter_column_anx58250z13 & !u_memory_amodgen_counter_column_anx58250z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z7,
	datab => u_memory_amodgen_counter_column_anx58250z9,
	datac => u_memory_amodgen_counter_column_anx58250z13,
	datad => u_memory_amodgen_counter_column_anx58250z11,
	combout => u_memory_ap_o_column_4_a);

u_memory_aix60567z52927 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx60567z5 = u_memory_amodgen_counter_column_anx58250z9 # u_memory_amodgen_counter_column_anx58250z11 # u_memory_amodgen_counter_column_anx58250z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_amodgen_counter_column_anx58250z9,
	datac => u_memory_amodgen_counter_column_anx58250z11,
	datad => u_memory_amodgen_counter_column_anx58250z13,
	combout => u_memory_anx60567z5);

u_memory_aix49283z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_column_5_a = u_memory_amodgen_counter_column_anx58250z5 $ (!u_memory_anx60567z5 & !u_memory_amodgen_counter_column_anx58250z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z5,
	datac => u_memory_amodgen_counter_column_anx58250z5,
	datad => u_memory_amodgen_counter_column_anx58250z7,
	combout => u_memory_ap_o_column_5_a);

u_memory_aix48286z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_column_6_a = u_memory_amodgen_counter_column_anx58250z3 $ (!u_memory_anx60567z5 & !u_memory_amodgen_counter_column_anx58250z5 & !u_memory_amodgen_counter_column_anx58250z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx60567z5,
	datab => u_memory_amodgen_counter_column_anx58250z5,
	datac => u_memory_amodgen_counter_column_anx58250z3,
	datad => u_memory_amodgen_counter_column_anx58250z7,
	combout => u_memory_ap_o_column_6_a);

u_memory_aix47289z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_o_column_7_a = u_memory_anx60567z4 $ !u_memory_amodgen_counter_column_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_memory_anx60567z4,
	datac => u_memory_amodgen_counter_column_anx1041z1,
	combout => u_memory_ap_o_column_7_a);

u_memory_ap_debug_num_0_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_ap_debug_num_0_0_afeeder_combout = u_memory_ap_debug_num_1_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_memory_ap_debug_num_1_0_a,
	combout => u_memory_ap_debug_num_0_0_afeeder_combout);

u_memory_aix15763z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx15763z2 = u_memory_anx40106z2 & i_valid_acombout & !u_memory_ap_debug_num_1_0_a & !u_memory_anx8852z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx40106z2,
	datab => i_valid_acombout,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_anx8852z1,
	combout => u_memory_anx15763z2);

u_memory_areg_mem_wrn_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => u_memory_ap_debug_num_0_0_afeeder_combout,
	sdata => VCC,
	sclr => u_memory_anx47386z1,
	sload => u_memory_anx15763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_debug_num_0_0_a);

u_memory_aix17757z52923 : cycloneii_lcell_comb
-- Equation(s):
-- u_memory_anx17757z1 = u_memory_anx8852z1 # u_memory_anx40106z2 & !u_memory_ap_debug_num_1_0_a # !i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_memory_anx40106z2,
	datab => i_valid_acombout,
	datac => u_memory_ap_debug_num_1_0_a,
	datad => u_memory_anx8852z1,
	combout => u_memory_anx17757z1);

u_memory_areg_mem_wrn_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_debug_num_1_1_a,
	sclr => u_memory_anx17757z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_debug_num_0_1_a);

u_memory_areg_mem_wrn_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => u_memory_ap_debug_num_1_2_a,
	sclr => u_memory_anx17757z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_memory_ap_debug_num_0_2_a);

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
	datain => u_flow_ao_valid,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_valid);

o_edge_obuf : cycloneii_io
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
	datain => u_flow_ao_edge,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_edge);

o_dir_obuf_0_a : cycloneii_io
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
	datain => u_flow_ao_dir_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(0));

o_dir_obuf_1_a : cycloneii_io
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
	datain => u_flow_ao_dir_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(1));

o_dir_obuf_2_a : cycloneii_io
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
	datain => u_flow_ao_dir_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(2));

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
	datain => u_memory_ap_o_image2_0_0_a,
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
	datain => u_memory_ap_o_image2_0_1_a,
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
	datain => u_memory_ap_o_image2_0_2_a,
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
	datain => u_memory_ap_o_image2_0_3_a,
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
	datain => u_memory_ap_o_image2_0_4_a,
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
	datain => u_memory_ap_o_image2_0_5_a,
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
	datain => u_memory_ap_o_image2_0_6_a,
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
	datain => u_memory_ap_o_image2_0_7_a,
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
	datain => u_memory_ap_o_image2_1_0_a,
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
	datain => u_memory_ap_o_image2_1_1_a,
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
	datain => u_memory_ap_o_image2_1_2_a,
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
	datain => u_memory_ap_o_image2_1_3_a,
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
	datain => u_memory_ap_o_image2_1_4_a,
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
	datain => u_memory_ap_o_image2_1_5_a,
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
	datain => u_memory_ap_o_image2_1_6_a,
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
	datain => u_memory_ap_o_image2_1_7_a,
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
	datain => u_memory_ap_o_image2_2_0_a,
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
	datain => u_memory_ap_o_image2_2_1_a,
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
	datain => u_memory_ap_o_image2_2_2_a,
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
	datain => u_memory_ap_o_image2_2_3_a,
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
	datain => u_memory_ap_o_image2_2_4_a,
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
	datain => u_memory_ap_o_image2_2_5_a,
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
	datain => u_memory_ap_o_image2_2_6_a,
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
	datain => u_memory_ap_o_image2_2_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_image2_2_a(7));

ix4807z43919 : cycloneii_io
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
	datain => nx4807z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(0));

debug_column_obuf_1_a : cycloneii_io
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
	datain => ALT_INV_u_memory_amodgen_counter_column_anx58250z13,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(1));

debug_column_obuf_2_a : cycloneii_io
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
	datain => u_memory_ap_o_column_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(2));

debug_column_obuf_3_a : cycloneii_io
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
	datain => u_memory_ap_o_column_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(3));

debug_column_obuf_4_a : cycloneii_io
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
	datain => u_memory_ap_o_column_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(4));

debug_column_obuf_5_a : cycloneii_io
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
	datain => u_memory_ap_o_column_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(5));

debug_column_obuf_6_a : cycloneii_io
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
	datain => u_memory_ap_o_column_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(6));

debug_column_obuf_7_a : cycloneii_io
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
	datain => u_memory_ap_o_column_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_column(7));

debug_led_red_obuf_0_a : cycloneii_io
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

debug_led_red_obuf_1_a : cycloneii_io
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

debug_led_red_obuf_2_a : cycloneii_io
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

debug_led_red_obuf_3_a : cycloneii_io
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

debug_led_red_obuf_4_a : cycloneii_io
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

debug_led_red_obuf_5_a : cycloneii_io
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

debug_led_red_obuf_6_a : cycloneii_io
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

debug_led_red_obuf_7_a : cycloneii_io
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

debug_led_red_obuf_8_a : cycloneii_io
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

debug_led_red_obuf_9_a : cycloneii_io
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

debug_led_red_obuf_10_a : cycloneii_io
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

debug_led_red_obuf_11_a : cycloneii_io
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

debug_led_red_obuf_12_a : cycloneii_io
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

debug_led_red_obuf_13_a : cycloneii_io
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

debug_led_red_obuf_14_a : cycloneii_io
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

debug_led_red_obuf_15_a : cycloneii_io
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

debug_led_red_obuf_16_a : cycloneii_io
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

debug_led_red_obuf_17_a : cycloneii_io
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
	padio => ww_debug_led_red(17));

debug_led_grn_obuf_0_a : cycloneii_io
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

debug_led_grn_obuf_1_a : cycloneii_io
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

debug_led_grn_obuf_2_a : cycloneii_io
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

debug_led_grn_obuf_3_a : cycloneii_io
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

debug_led_grn_obuf_4_a : cycloneii_io
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

debug_led_grn_obuf_5_a : cycloneii_io
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

debug_valid_obuf : cycloneii_io
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
	datain => debug_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_valid);

debug_num_0_obuf_0_a : cycloneii_io
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
	datain => u_memory_ap_debug_num_0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(0));

debug_num_0_obuf_1_a : cycloneii_io
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
	datain => u_memory_ap_debug_num_0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(1));

debug_num_0_obuf_2_a : cycloneii_io
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
	datain => u_memory_ap_debug_num_0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(2));

debug_num_1_obuf_0_a : cycloneii_io
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
	datain => u_memory_ap_debug_num_1_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(0));

debug_num_1_obuf_1_a : cycloneii_io
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
	datain => u_memory_ap_debug_num_1_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(1));

debug_num_1_obuf_2_a : cycloneii_io
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
	datain => u_memory_ap_debug_num_1_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(2));

debug_num_2_obuf_0_a : cycloneii_io
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
	datain => debug_num_2_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(0));

debug_num_2_obuf_1_a : cycloneii_io
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
	datain => debug_num_2_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(1));

debug_num_2_obuf_2_a : cycloneii_io
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
	datain => debug_num_2_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(2));

debug_num_2_obuf_3_a : cycloneii_io
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
	datain => debug_num_2_dup0_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(3));

debug_num_2_obuf_4_a : cycloneii_io
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
	datain => debug_num_2_dup0_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(4));

debug_num_2_obuf_5_a : cycloneii_io
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
	datain => debug_num_2_dup0_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(5));

debug_num_2_obuf_6_a : cycloneii_io
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
	datain => debug_num_2_dup0_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(6));

debug_num_2_obuf_7_a : cycloneii_io
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
	datain => debug_num_2_dup0_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(7));

u_memory_debug_num_3_triBus4_0_a : cycloneii_io
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
	padio => ww_debug_num_3(0));

u_memory_debug_num_3_triBus4_1_a : cycloneii_io
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
	padio => ww_debug_num_3(1));

u_memory_debug_num_3_triBus4_2_a : cycloneii_io
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
	padio => ww_debug_num_3(2));

u_memory_debug_num_3_triBus4_3_a : cycloneii_io
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
	padio => ww_debug_num_3(3));

u_memory_debug_num_3_triBus4_4_a : cycloneii_io
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
	padio => ww_debug_num_3(4));

u_memory_debug_num_3_triBus4_5_a : cycloneii_io
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
	padio => ww_debug_num_3(5));

u_memory_debug_num_3_triBus4_6_a : cycloneii_io
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
	padio => ww_debug_num_3(6));

u_memory_debug_num_3_triBus4_7_a : cycloneii_io
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
	padio => ww_debug_num_3(7));

u_memory_debug_num_3_triBus4_8_a : cycloneii_io
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
	padio => ww_debug_num_3(8));

u_memory_debug_num_3_triBus4_9_a : cycloneii_io
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
	padio => ww_debug_num_3(9));

u_memory_debug_num_3_triBus4_10_a : cycloneii_io
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
	padio => ww_debug_num_3(10));

u_memory_debug_num_3_triBus4_11_a : cycloneii_io
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
	padio => ww_debug_num_3(11));

u_memory_debug_num_3_triBus4_12_a : cycloneii_io
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
	padio => ww_debug_num_3(12));

u_memory_debug_num_4_triBus5_0_a : cycloneii_io
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
	padio => ww_debug_num_4(0));

u_memory_debug_num_4_triBus5_1_a : cycloneii_io
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
	padio => ww_debug_num_4(1));

u_memory_debug_num_4_triBus5_2_a : cycloneii_io
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
	padio => ww_debug_num_4(2));

u_memory_debug_num_4_triBus5_3_a : cycloneii_io
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
	padio => ww_debug_num_4(3));

u_memory_debug_num_4_triBus5_4_a : cycloneii_io
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
	padio => ww_debug_num_4(4));

u_memory_debug_num_4_triBus5_5_a : cycloneii_io
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
	padio => ww_debug_num_4(5));

u_memory_debug_num_4_triBus5_6_a : cycloneii_io
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
	padio => ww_debug_num_4(6));

u_memory_debug_num_4_triBus5_7_a : cycloneii_io
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
	padio => ww_debug_num_4(7));

u_memory_debug_num_4_triBus5_8_a : cycloneii_io
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
	padio => ww_debug_num_4(8));

u_memory_debug_num_4_triBus5_9_a : cycloneii_io
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
	padio => ww_debug_num_4(9));

u_memory_debug_num_4_triBus5_10_a : cycloneii_io
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
	padio => ww_debug_num_4(10));

u_memory_debug_num_4_triBus5_11_a : cycloneii_io
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
	padio => ww_debug_num_4(11));

u_memory_debug_num_4_triBus5_12_a : cycloneii_io
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
	padio => ww_debug_num_4(12));

u_memory_debug_num_5_triBus6_0_a : cycloneii_io
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
	padio => ww_debug_num_5(0));

u_memory_debug_num_5_triBus6_1_a : cycloneii_io
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
	padio => ww_debug_num_5(1));

u_memory_debug_num_5_triBus6_2_a : cycloneii_io
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
	padio => ww_debug_num_5(2));

u_memory_debug_num_5_triBus6_3_a : cycloneii_io
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
	padio => ww_debug_num_5(3));

u_memory_debug_num_5_triBus6_4_a : cycloneii_io
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
	padio => ww_debug_num_5(4));

u_memory_debug_num_5_triBus6_5_a : cycloneii_io
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
	padio => ww_debug_num_5(5));

u_memory_debug_num_5_triBus6_6_a : cycloneii_io
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
	padio => ww_debug_num_5(6));

u_memory_debug_num_5_triBus6_7_a : cycloneii_io
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
	padio => ww_debug_num_5(7));

u_memory_debug_num_5_triBus6_8_a : cycloneii_io
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
	padio => ww_debug_num_5(8));

u_memory_debug_num_5_triBus6_9_a : cycloneii_io
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
	padio => ww_debug_num_5(9));

u_memory_debug_num_5_triBus6_10_a : cycloneii_io
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
	padio => ww_debug_num_5(10));

u_memory_debug_num_5_triBus6_11_a : cycloneii_io
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
	padio => ww_debug_num_5(11));

u_memory_debug_num_5_triBus6_12_a : cycloneii_io
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
	padio => ww_debug_num_5(12));

u_memory_debug_num_5_triBus6_13_a : cycloneii_io
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
	padio => ww_debug_num_5(13));

u_memory_ix1313z43919 : cycloneii_io
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
	padio => ww_debug_num_6);

u_memory_ix1312z43919 : cycloneii_io
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
	padio => ww_debug_num_7);

u_memory_ix1311z43919 : cycloneii_io
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
	padio => ww_debug_num_8);

debug_key_a1_a_aI : cycloneii_io
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

debug_key_a2_a_aI : cycloneii_io
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

debug_key_a3_a_aI : cycloneii_io
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

debug_switch_a0_a_aI : cycloneii_io
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

debug_switch_a1_a_aI : cycloneii_io
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

debug_switch_a2_a_aI : cycloneii_io
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

debug_switch_a3_a_aI : cycloneii_io
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

debug_switch_a4_a_aI : cycloneii_io
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

debug_switch_a5_a_aI : cycloneii_io
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

debug_switch_a6_a_aI : cycloneii_io
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

debug_switch_a7_a_aI : cycloneii_io
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

debug_switch_a8_a_aI : cycloneii_io
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

debug_switch_a9_a_aI : cycloneii_io
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

debug_switch_a10_a_aI : cycloneii_io
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

debug_switch_a11_a_aI : cycloneii_io
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

debug_switch_a12_a_aI : cycloneii_io
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

debug_switch_a13_a_aI : cycloneii_io
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

debug_switch_a14_a_aI : cycloneii_io
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

debug_switch_a15_a_aI : cycloneii_io
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

debug_switch_a16_a_aI : cycloneii_io
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

debug_switch_a17_a_aI : cycloneii_io
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


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_utility_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; o_image0  : out std_logic_vector (7 downto 0)
    ; o_image1  : out std_logic_vector (7 downto 0)
    ; o_image2  : out std_logic_vector (7 downto 0)
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_column  : out std_logic_vector (7 downto 0)
    ; debug_led_red  : out std_logic_vector (17 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_valid  : out STD_LOGIC
    ; debug_num_0  : out std_logic_vector (2 downto 0)
    ; debug_num_1  : out std_logic_vector (2 downto 0)
    ; debug_num_2  : out UNSIGNED (7 downto 0)
    ; debug_num_3  : out SIGNED (12 downto 0)
    ; debug_num_4  : out SIGNED (12 downto 0)
    ; debug_num_5  : out SIGNED (13 downto 0)
    ; debug_num_6  : out STD_LOGIC
    ; debug_num_7  : out STD_LOGIC
    ; debug_num_8  : out STD_LOGIC
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.kirsch_chip
    port map (
        i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
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
      , debug_key(3) => debug_key(3)
      , debug_key(2) => debug_key(2)
      , debug_key(1) => debug_key(1)
      , debug_switch(17) => debug_switch(17)
      , debug_switch(16) => debug_switch(16)
      , debug_switch(15) => debug_switch(15)
      , debug_switch(14) => debug_switch(14)
      , debug_switch(13) => debug_switch(13)
      , debug_switch(12) => debug_switch(12)
      , debug_switch(11) => debug_switch(11)
      , debug_switch(10) => debug_switch(10)
      , debug_switch(9) => debug_switch(9)
      , debug_switch(8) => debug_switch(8)
      , debug_switch(7) => debug_switch(7)
      , debug_switch(6) => debug_switch(6)
      , debug_switch(5) => debug_switch(5)
      , debug_switch(4) => debug_switch(4)
      , debug_switch(3) => debug_switch(3)
      , debug_switch(2) => debug_switch(2)
      , debug_switch(1) => debug_switch(1)
      , debug_switch(0) => debug_switch(0)
      , debug_column(7) => debug_column(7)
      , debug_column(6) => debug_column(6)
      , debug_column(5) => debug_column(5)
      , debug_column(4) => debug_column(4)
      , debug_column(3) => debug_column(3)
      , debug_column(2) => debug_column(2)
      , debug_column(1) => debug_column(1)
      , debug_column(0) => debug_column(0)
      , debug_led_red(17) => debug_led_red(17)
      , debug_led_red(16) => debug_led_red(16)
      , debug_led_red(15) => debug_led_red(15)
      , debug_led_red(14) => debug_led_red(14)
      , debug_led_red(13) => debug_led_red(13)
      , debug_led_red(12) => debug_led_red(12)
      , debug_led_red(11) => debug_led_red(11)
      , debug_led_red(10) => debug_led_red(10)
      , debug_led_red(9) => debug_led_red(9)
      , debug_led_red(8) => debug_led_red(8)
      , debug_led_red(7) => debug_led_red(7)
      , debug_led_red(6) => debug_led_red(6)
      , debug_led_red(5) => debug_led_red(5)
      , debug_led_red(4) => debug_led_red(4)
      , debug_led_red(3) => debug_led_red(3)
      , debug_led_red(2) => debug_led_red(2)
      , debug_led_red(1) => debug_led_red(1)
      , debug_led_red(0) => debug_led_red(0)
      , debug_led_grn(5) => debug_led_grn(5)
      , debug_led_grn(4) => debug_led_grn(4)
      , debug_led_grn(3) => debug_led_grn(3)
      , debug_led_grn(2) => debug_led_grn(2)
      , debug_led_grn(1) => debug_led_grn(1)
      , debug_led_grn(0) => debug_led_grn(0)
      , debug_valid => debug_valid
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(2) => debug_num_1(2)
      , debug_num_1(1) => debug_num_1(1)
      , debug_num_1(0) => debug_num_1(0)
      , debug_num_2(7) => debug_num_2(7)
      , debug_num_2(6) => debug_num_2(6)
      , debug_num_2(5) => debug_num_2(5)
      , debug_num_2(4) => debug_num_2(4)
      , debug_num_2(3) => debug_num_2(3)
      , debug_num_2(2) => debug_num_2(2)
      , debug_num_2(1) => debug_num_2(1)
      , debug_num_2(0) => debug_num_2(0)
      , debug_num_3(12) => debug_num_3(12)
      , debug_num_3(11) => debug_num_3(11)
      , debug_num_3(10) => debug_num_3(10)
      , debug_num_3(9) => debug_num_3(9)
      , debug_num_3(8) => debug_num_3(8)
      , debug_num_3(7) => debug_num_3(7)
      , debug_num_3(6) => debug_num_3(6)
      , debug_num_3(5) => debug_num_3(5)
      , debug_num_3(4) => debug_num_3(4)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(12) => debug_num_4(12)
      , debug_num_4(11) => debug_num_4(11)
      , debug_num_4(10) => debug_num_4(10)
      , debug_num_4(9) => debug_num_4(9)
      , debug_num_4(8) => debug_num_4(8)
      , debug_num_4(7) => debug_num_4(7)
      , debug_num_4(6) => debug_num_4(6)
      , debug_num_4(5) => debug_num_4(5)
      , debug_num_4(4) => debug_num_4(4)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(13) => debug_num_5(13)
      , debug_num_5(12) => debug_num_5(12)
      , debug_num_5(11) => debug_num_5(11)
      , debug_num_5(10) => debug_num_5(10)
      , debug_num_5(9) => debug_num_5(9)
      , debug_num_5(8) => debug_num_5(8)
      , debug_num_5(7) => debug_num_5(7)
      , debug_num_5(6) => debug_num_5(6)
      , debug_num_5(5) => debug_num_5(5)
      , debug_num_5(4) => debug_num_5(4)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
      , debug_num_6 => debug_num_6
      , debug_num_7 => debug_num_7
      , debug_num_8 => debug_num_8
    );
end architecture;

