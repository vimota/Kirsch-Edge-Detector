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

-- DATE "07/21/2014 14:06:51"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	flow_chip IS
    PORT (
	debug_valid : OUT std_logic;
	debug_num_0 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_6 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_7 : OUT std_logic_vector(7 DOWNTO 0);
	debug_num_8 : OUT std_logic_vector(7 DOWNTO 0);
	t1 : IN std_logic_vector(7 DOWNTO 0);
	t2 : IN std_logic_vector(7 DOWNTO 0);
	t3 : IN std_logic_vector(7 DOWNTO 0);
	b1 : IN std_logic_vector(7 DOWNTO 0);
	b2 : IN std_logic_vector(7 DOWNTO 0);
	b3 : IN std_logic_vector(7 DOWNTO 0);
	i1 : IN std_logic_vector(7 DOWNTO 0);
	i2 : IN std_logic_vector(7 DOWNTO 0);
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_mode : IN std_logic_vector(1 DOWNTO 0);
	i_row : IN std_logic_vector(7 DOWNTO 0);
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_edge : OUT std_logic;
	o_valid : OUT std_logic;
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0)
	);
END flow_chip;

ARCHITECTURE structure OF flow_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_debug_valid : std_logic;
SIGNAL ww_debug_num_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_7 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_num_8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_t1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_t2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_t3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL prev_max_11_a : std_logic;
SIGNAL prev_max_8_a : std_logic;
SIGNAL prev_max_1_a : std_logic;
SIGNAL prev_max_0_a : std_logic;
SIGNAL nx31358z5 : std_logic;
SIGNAL nx31358z9 : std_logic;
SIGNAL p31_10_a : std_logic;
SIGNAL p32_9_a : std_logic;
SIGNAL p31_8_a : std_logic;
SIGNAL p31_7_a : std_logic;
SIGNAL p32_6_a : std_logic;
SIGNAL p32_5_a : std_logic;
SIGNAL p32_4_a : std_logic;
SIGNAL p31_3_a : std_logic;
SIGNAL p32_2_a : std_logic;
SIGNAL p31_1_a : std_logic;
SIGNAL p32_0_a : std_logic;
SIGNAL p22_10_a : std_logic;
SIGNAL p21_8_a : std_logic;
SIGNAL p22_7_a : std_logic;
SIGNAL p21_4_a : std_logic;
SIGNAL p22_3_a : std_logic;
SIGNAL p22_1_a : std_logic;
SIGNAL p23_9_a : std_logic;
SIGNAL p23_6_a : std_logic;
SIGNAL p23_5_a : std_logic;
SIGNAL p23_4_a : std_logic;
SIGNAL p23_2_a : std_logic;
SIGNAL p23_0_a : std_logic;
SIGNAL p11_add8_0i1_anx38970z1 : std_logic;
SIGNAL p11_add8_0i1_anx39967z1 : std_logic;
SIGNAL p11_add8_0i1_anx40964z1 : std_logic;
SIGNAL p11_add8_0i1_anx42958z1 : std_logic;
SIGNAL p12_add8_0i2_anx38970z1 : std_logic;
SIGNAL p12_add8_0i2_anx40964z1 : std_logic;
SIGNAL p12_add8_0i2_anx41961z1 : std_logic;
SIGNAL p12_add8_0i2_anx44952z1 : std_logic;
SIGNAL p21_sub11_3i1_anx37973z1 : std_logic;
SIGNAL p21_sub11_3i1_anx38970z1 : std_logic;
SIGNAL p21_sub11_3i1_anx40964z1 : std_logic;
SIGNAL p21_sub11_3i1_anx41961z1 : std_logic;
SIGNAL p21_sub11_3i1_anx42958z1 : std_logic;
SIGNAL p21_sub11_3i1_anx43955z1 : std_logic;
SIGNAL p21_sub11_3i1_anx45949z1 : std_logic;
SIGNAL p21_sub10_3i3_anx41961z1 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z1 : std_logic;
SIGNAL ix52975z52630_anx40964z1 : std_logic;
SIGNAL ix52975z52630_anx44952z1 : std_logic;
SIGNAL p22_sub11_3i2_anx37973z1 : std_logic;
SIGNAL p22_sub11_3i2_anx38970z1 : std_logic;
SIGNAL p22_sub11_3i2_anx40964z1 : std_logic;
SIGNAL p22_sub11_3i2_anx42958z1 : std_logic;
SIGNAL p22_sub11_3i2_anx45949z1 : std_logic;
SIGNAL p22_sub10_3i4_anx38970z1 : std_logic;
SIGNAL p22_sub10_3i4_anx41961z1 : std_logic;
SIGNAL p22_sub10_3i4_anx43955z1 : std_logic;
SIGNAL p22_sub10_3i4_anx45949z1 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z1 : std_logic;
SIGNAL ix47840z52631_anx37973z1 : std_logic;
SIGNAL ix47840z52631_anx39967z1 : std_logic;
SIGNAL ix47840z52631_anx43955z1 : std_logic;
SIGNAL ix47840z52631_anx46946z1 : std_logic;
SIGNAL p13_add8_0i3_anx38970z1 : std_logic;
SIGNAL p13_add8_0i3_anx41961z1 : std_logic;
SIGNAL p13_add8_0i3_anx44952z1 : std_logic;
SIGNAL p13_add9_3_anx38970z1 : std_logic;
SIGNAL p13_add9_3_anx40964z1 : std_logic;
SIGNAL p13_add9_3_anx41961z1 : std_logic;
SIGNAL p13_add9_3_anx42958z1 : std_logic;
SIGNAL p13_add9_3_anx45949z1 : std_logic;
SIGNAL p31_10_afeeder_combout : std_logic;
SIGNAL p31_8_afeeder_combout : std_logic;
SIGNAL p31_7_afeeder_combout : std_logic;
SIGNAL p31_3_afeeder_combout : std_logic;
SIGNAL p31_1_afeeder_combout : std_logic;
SIGNAL p32_6_afeeder_combout : std_logic;
SIGNAL p32_5_afeeder_combout : std_logic;
SIGNAL p32_4_afeeder_combout : std_logic;
SIGNAL p32_2_afeeder_combout : std_logic;
SIGNAL p32_0_afeeder_combout : std_logic;
SIGNAL p22_1_afeeder_combout : std_logic;
SIGNAL p22_3_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL nx28524z1_a_wirecell_combout : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL nx40824z1 : std_logic;
SIGNAL nx39827z1_afeeder_combout : std_logic;
SIGNAL nx39827z1 : std_logic;
SIGNAL p40 : std_logic;
SIGNAL nx26530z1 : std_logic;
SIGNAL state_1_a : std_logic;
SIGNAL state_2_a : std_logic;
SIGNAL state_3_a : std_logic;
SIGNAL state_3_a_wirecell_combout : std_logic;
SIGNAL nx28524z1 : std_logic;
SIGNAL p11_add8_0i1_anx44952z22 : std_logic;
SIGNAL p11_add8_0i1_anx44952z19 : std_logic;
SIGNAL p11_add8_0i1_anx44952z16 : std_logic;
SIGNAL p11_add8_0i1_anx44952z13 : std_logic;
SIGNAL p11_add8_0i1_anx44952z10 : std_logic;
SIGNAL p11_add8_0i1_anx44952z7 : std_logic;
SIGNAL p11_add8_0i1_anx44952z4 : std_logic;
SIGNAL p11_add8_0i1_anx23445z2 : std_logic;
SIGNAL p11_add8_0i1_anx23445z1 : std_logic;
SIGNAL p11_add8_0i1_anx44952z1 : std_logic;
SIGNAL p11_add8_0i1_anx43955z1 : std_logic;
SIGNAL p11_add8_0i1_anx41961z1 : std_logic;
SIGNAL p11_add8_0i1_anx37973z1 : std_logic;
SIGNAL p11_add9_1_anx45949z24 : std_logic;
SIGNAL p11_add9_1_anx45949z21 : std_logic;
SIGNAL p11_add9_1_anx45949z18 : std_logic;
SIGNAL p11_add9_1_anx45949z15 : std_logic;
SIGNAL p11_add9_1_anx45949z12 : std_logic;
SIGNAL p11_add9_1_anx45949z9 : std_logic;
SIGNAL p11_add9_1_anx45949z6 : std_logic;
SIGNAL p11_add9_1_anx45949z3 : std_logic;
SIGNAL p11_add9_1_anx23445z2 : std_logic;
SIGNAL p11_add9_1_anx23445z1 : std_logic;
SIGNAL p12_add8_0i2_anx44952z22 : std_logic;
SIGNAL p12_add8_0i2_anx44952z19 : std_logic;
SIGNAL p12_add8_0i2_anx44952z16 : std_logic;
SIGNAL p12_add8_0i2_anx44952z13 : std_logic;
SIGNAL p12_add8_0i2_anx44952z10 : std_logic;
SIGNAL p12_add8_0i2_anx44952z7 : std_logic;
SIGNAL p12_add8_0i2_anx44952z4 : std_logic;
SIGNAL p12_add8_0i2_anx23445z2 : std_logic;
SIGNAL p12_add8_0i2_anx23445z1 : std_logic;
SIGNAL p12_add8_0i2_anx43955z1 : std_logic;
SIGNAL p12_add8_0i2_anx42958z1 : std_logic;
SIGNAL p12_add8_0i2_anx39967z1 : std_logic;
SIGNAL p12_add8_0i2_anx37973z1 : std_logic;
SIGNAL p12_add9_2_anx45949z24 : std_logic;
SIGNAL p12_add9_2_anx45949z21 : std_logic;
SIGNAL p12_add9_2_anx45949z18 : std_logic;
SIGNAL p12_add9_2_anx45949z15 : std_logic;
SIGNAL p12_add9_2_anx45949z12 : std_logic;
SIGNAL p12_add9_2_anx45949z9 : std_logic;
SIGNAL p12_add9_2_anx45949z6 : std_logic;
SIGNAL p12_add9_2_anx45949z3 : std_logic;
SIGNAL p12_add9_2_anx45949z1 : std_logic;
SIGNAL p11_add9_1_anx44952z1 : std_logic;
SIGNAL p11_add9_1_anx43955z1 : std_logic;
SIGNAL p12_add9_2_anx42958z1 : std_logic;
SIGNAL p12_add9_2_anx41961z1 : std_logic;
SIGNAL p11_add9_1_anx40964z1 : std_logic;
SIGNAL p11_add9_1_anx39967z1 : std_logic;
SIGNAL p11_add9_1_anx38970z1 : std_logic;
SIGNAL p11_add9_1_anx37973z1 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z28 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z25 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z22 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z19 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z16 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z13 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z10 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z7 : std_logic;
SIGNAL p22_sub10_3i4_anx46946z4 : std_logic;
SIGNAL p22_sub10_3i4_anx23445z2 : std_logic;
SIGNAL p22_sub10_3i4_anx23445z1 : std_logic;
SIGNAL p12_add9_2_anx23445z2 : std_logic;
SIGNAL p12_add9_2_anx23445z1 : std_logic;
SIGNAL p11_add9_1_anx45949z1 : std_logic;
SIGNAL p12_add9_2_anx40964z1 : std_logic;
SIGNAL p12_add9_2_anx38970z1 : std_logic;
SIGNAL p12_add9_2_anx37973z1 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z29 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z27 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z24 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z21 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z18 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z15 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z12 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z9 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z6 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z3 : std_logic;
SIGNAL p22_sub11_3i2_anx46946z1 : std_logic;
SIGNAL p22_sub11_3i2_anx44952z1 : std_logic;
SIGNAL p22_sub11_3i2_anx43955z1 : std_logic;
SIGNAL p22_sub10_3i4_anx44952z1 : std_logic;
SIGNAL p22_sub11_3i2_anx41961z1 : std_logic;
SIGNAL p22_sub10_3i4_anx42958z1 : std_logic;
SIGNAL p22_sub11_3i2_anx39967z1 : std_logic;
SIGNAL p22_sub10_3i4_anx40964z1 : std_logic;
SIGNAL p22_sub10_3i4_anx39967z1 : std_logic;
SIGNAL ix47840z52631_anx62798z30 : std_logic;
SIGNAL ix47840z52631_anx62798z27 : std_logic;
SIGNAL ix47840z52631_anx62798z24 : std_logic;
SIGNAL ix47840z52631_anx62798z21 : std_logic;
SIGNAL ix47840z52631_anx62798z18 : std_logic;
SIGNAL ix47840z52631_anx62798z15 : std_logic;
SIGNAL ix47840z52631_anx62798z12 : std_logic;
SIGNAL ix47840z52631_anx62798z9 : std_logic;
SIGNAL ix47840z52631_anx62798z6 : std_logic;
SIGNAL ix47840z52631_anx62798z4 : std_logic;
SIGNAL ix47840z52631_anx62798z1 : std_logic;
SIGNAL p22_11_a : std_logic;
SIGNAL p12_add9_2_anx44952z1 : std_logic;
SIGNAL p12_add9_2_anx43955z1 : std_logic;
SIGNAL p11_add9_1_anx41961z1 : std_logic;
SIGNAL p12_add9_2_anx39967z1 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z28 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z25 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z22 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z19 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z16 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z13 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z10 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z7 : std_logic;
SIGNAL p21_sub10_3i3_anx46946z4 : std_logic;
SIGNAL p21_sub10_3i3_anx23445z2 : std_logic;
SIGNAL p21_sub10_3i3_anx23445z1 : std_logic;
SIGNAL p11_add9_1_anx42958z1 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z29 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z27 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z24 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z21 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z18 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z15 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z12 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z9 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z6 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z3 : std_logic;
SIGNAL p21_sub11_3i1_anx46946z1 : std_logic;
SIGNAL p21_sub11_3i1_anx44952z1 : std_logic;
SIGNAL p21_sub10_3i3_anx45949z1 : std_logic;
SIGNAL p21_sub10_3i3_anx44952z1 : std_logic;
SIGNAL p21_sub10_3i3_anx43955z1 : std_logic;
SIGNAL p21_sub10_3i3_anx42958z1 : std_logic;
SIGNAL p21_sub11_3i1_anx39967z1 : std_logic;
SIGNAL p21_sub10_3i3_anx40964z1 : std_logic;
SIGNAL p21_sub10_3i3_anx39967z1 : std_logic;
SIGNAL p21_sub10_3i3_anx38970z1 : std_logic;
SIGNAL ix52975z52630_anx62798z30 : std_logic;
SIGNAL ix52975z52630_anx62798z27 : std_logic;
SIGNAL ix52975z52630_anx62798z24 : std_logic;
SIGNAL ix52975z52630_anx62798z21 : std_logic;
SIGNAL ix52975z52630_anx62798z18 : std_logic;
SIGNAL ix52975z52630_anx62798z15 : std_logic;
SIGNAL ix52975z52630_anx62798z12 : std_logic;
SIGNAL ix52975z52630_anx62798z9 : std_logic;
SIGNAL ix52975z52630_anx62798z6 : std_logic;
SIGNAL ix52975z52630_anx62798z4 : std_logic;
SIGNAL ix52975z52630_anx62798z1 : std_logic;
SIGNAL p21_11_a : std_logic;
SIGNAL ix52975z52630_anx46946z1 : std_logic;
SIGNAL p21_10_a : std_logic;
SIGNAL ix47840z52631_anx45949z1 : std_logic;
SIGNAL p22_9_a : std_logic;
SIGNAL ix47840z52631_anx44952z1 : std_logic;
SIGNAL p22_8_a : std_logic;
SIGNAL ix52975z52630_anx43955z1 : std_logic;
SIGNAL p21_7_a : std_logic;
SIGNAL ix52975z52630_anx42958z1 : std_logic;
SIGNAL p21_6_a : std_logic;
SIGNAL ix52975z52630_anx41961z1 : std_logic;
SIGNAL p21_5_a : std_logic;
SIGNAL ix47840z52631_anx40964z1 : std_logic;
SIGNAL p22_4_afeeder_combout : std_logic;
SIGNAL p22_4_a : std_logic;
SIGNAL ix52975z52630_anx39967z1 : std_logic;
SIGNAL p21_3_a : std_logic;
SIGNAL ix52975z52630_anx38970z1 : std_logic;
SIGNAL p21_2_a : std_logic;
SIGNAL ix52975z52630_anx37973z1 : std_logic;
SIGNAL p21_1_a : std_logic;
SIGNAL p21_sub10_3i3_anx37973z1 : std_logic;
SIGNAL p21_0_a : std_logic;
SIGNAL ix45188z30868_anx100z34 : std_logic;
SIGNAL ix45188z30868_anx100z31 : std_logic;
SIGNAL ix45188z30868_anx100z28 : std_logic;
SIGNAL ix45188z30868_anx100z25 : std_logic;
SIGNAL ix45188z30868_anx100z22 : std_logic;
SIGNAL ix45188z30868_anx100z19 : std_logic;
SIGNAL ix45188z30868_anx100z16 : std_logic;
SIGNAL ix45188z30868_anx100z13 : std_logic;
SIGNAL ix45188z30868_anx100z10 : std_logic;
SIGNAL ix45188z30868_anx100z7 : std_logic;
SIGNAL ix45188z30868_anx100z4 : std_logic;
SIGNAL ix45188z30868_anx100z1 : std_logic;
SIGNAL ix45188z30868_anx100z1_a_wirecell_combout : std_logic;
SIGNAL p35 : std_logic;
SIGNAL p45_afeeder_combout : std_logic;
SIGNAL p45 : std_logic;
SIGNAL nx30409z1 : std_logic;
SIGNAL p31_11_afeeder_combout : std_logic;
SIGNAL p31_11_a : std_logic;
SIGNAL p13_add8_0i3_anx44952z22 : std_logic;
SIGNAL p13_add8_0i3_anx44952z19 : std_logic;
SIGNAL p13_add8_0i3_anx44952z16 : std_logic;
SIGNAL p13_add8_0i3_anx44952z13 : std_logic;
SIGNAL p13_add8_0i3_anx44952z10 : std_logic;
SIGNAL p13_add8_0i3_anx44952z7 : std_logic;
SIGNAL p13_add8_0i3_anx44952z4 : std_logic;
SIGNAL p13_add8_0i3_anx23445z2 : std_logic;
SIGNAL p13_add8_0i3_anx23445z1 : std_logic;
SIGNAL p13_add8_0i3_anx43955z1 : std_logic;
SIGNAL p13_add8_0i3_anx42958z1 : std_logic;
SIGNAL p13_add8_0i3_anx40964z1 : std_logic;
SIGNAL p13_add8_0i3_anx39967z1 : std_logic;
SIGNAL p13_add8_0i3_anx37973z1 : std_logic;
SIGNAL p13_add9_3_anx45949z17 : std_logic;
SIGNAL p13_add9_3_anx45949z15 : std_logic;
SIGNAL p13_add9_3_anx45949z13 : std_logic;
SIGNAL p13_add9_3_anx45949z11 : std_logic;
SIGNAL p13_add9_3_anx45949z9 : std_logic;
SIGNAL p13_add9_3_anx45949z7 : std_logic;
SIGNAL p13_add9_3_anx45949z5 : std_logic;
SIGNAL p13_add9_3_anx45949z3 : std_logic;
SIGNAL p13_add9_3_anx23445z2 : std_logic;
SIGNAL p13_add9_3_anx23445z1 : std_logic;
SIGNAL p23_10_a : std_logic;
SIGNAL p32_10_afeeder_combout : std_logic;
SIGNAL p32_10_a : std_logic;
SIGNAL ix52975z52630_anx45949z1 : std_logic;
SIGNAL p21_9_a : std_logic;
SIGNAL p31_9_afeeder_combout : std_logic;
SIGNAL p31_9_a : std_logic;
SIGNAL p13_add9_3_anx44952z1 : std_logic;
SIGNAL p23_8_a : std_logic;
SIGNAL p32_8_afeeder_combout : std_logic;
SIGNAL p32_8_a : std_logic;
SIGNAL p13_add9_3_anx43955z1 : std_logic;
SIGNAL p23_7_a : std_logic;
SIGNAL p32_7_a : std_logic;
SIGNAL p31_6_afeeder_combout : std_logic;
SIGNAL ix47840z52631_anx42958z1 : std_logic;
SIGNAL p22_6_a : std_logic;
SIGNAL p31_6_a : std_logic;
SIGNAL p31_5_afeeder_combout : std_logic;
SIGNAL ix47840z52631_anx41961z1 : std_logic;
SIGNAL p22_5_a : std_logic;
SIGNAL p31_5_a : std_logic;
SIGNAL p31_4_afeeder_combout : std_logic;
SIGNAL p31_4_a : std_logic;
SIGNAL p13_add9_3_anx39967z1 : std_logic;
SIGNAL p23_3_a : std_logic;
SIGNAL p32_3_a : std_logic;
SIGNAL p31_2_afeeder_combout : std_logic;
SIGNAL ix47840z52631_anx38970z1 : std_logic;
SIGNAL p22_2_afeeder_combout : std_logic;
SIGNAL p22_2_a : std_logic;
SIGNAL p31_2_a : std_logic;
SIGNAL p13_add9_3_anx37973z1 : std_logic;
SIGNAL p23_1_a : std_logic;
SIGNAL p32_1_afeeder_combout : std_logic;
SIGNAL p32_1_a : std_logic;
SIGNAL p31_0_afeeder_combout : std_logic;
SIGNAL p22_sub10_3i4_anx37973z1 : std_logic;
SIGNAL p22_0_a : std_logic;
SIGNAL p31_0_a : std_logic;
SIGNAL p4s_sub12_0_anx63795z33 : std_logic;
SIGNAL p4s_sub12_0_anx63795z30 : std_logic;
SIGNAL p4s_sub12_0_anx63795z27 : std_logic;
SIGNAL p4s_sub12_0_anx63795z24 : std_logic;
SIGNAL p4s_sub12_0_anx63795z21 : std_logic;
SIGNAL p4s_sub12_0_anx63795z18 : std_logic;
SIGNAL p4s_sub12_0_anx63795z15 : std_logic;
SIGNAL p4s_sub12_0_anx63795z12 : std_logic;
SIGNAL p4s_sub12_0_anx63795z9 : std_logic;
SIGNAL p4s_sub12_0_anx63795z6 : std_logic;
SIGNAL p4s_sub12_0_anx63795z3 : std_logic;
SIGNAL p4s_sub12_0_anx63795z1 : std_logic;
SIGNAL p43_11_a : std_logic;
SIGNAL p4s_sub12_0_anx62798z1 : std_logic;
SIGNAL p43_10_a : std_logic;
SIGNAL nx30361z1 : std_logic;
SIGNAL p4s_sub12_0_anx39967z1 : std_logic;
SIGNAL p43_2_a : std_logic;
SIGNAL prev_max_2_a : std_logic;
SIGNAL p4s_sub12_0_anx40964z1 : std_logic;
SIGNAL p43_3_a : std_logic;
SIGNAL prev_max_3_a : std_logic;
SIGNAL nx31358z8 : std_logic;
SIGNAL max_fwd : std_logic;
SIGNAL nx31358z10 : std_logic;
SIGNAL p4s_sub12_0_anx44952z1 : std_logic;
SIGNAL p43_7_a : std_logic;
SIGNAL prev_max_7_a : std_logic;
SIGNAL p4s_sub12_0_anx43955z1 : std_logic;
SIGNAL p43_6_a : std_logic;
SIGNAL prev_max_6_a : std_logic;
SIGNAL nx31358z6 : std_logic;
SIGNAL nx31358z4 : std_logic;
SIGNAL p4s_sub12_0_anx41961z1 : std_logic;
SIGNAL p43_4_a : std_logic;
SIGNAL p4s_sub12_0_anx42958z1 : std_logic;
SIGNAL p43_5_a : std_logic;
SIGNAL prev_max_5_a : std_logic;
SIGNAL prev_max_4_a : std_logic;
SIGNAL nx31358z7 : std_logic;
SIGNAL nx31358z3 : std_logic;
SIGNAL nx31358z2 : std_logic;
SIGNAL nx31358z1 : std_logic;
SIGNAL prev_max_10_a : std_logic;
SIGNAL p4s_sub12_0_anx46946z1 : std_logic;
SIGNAL p43_9_a : std_logic;
SIGNAL prev_max_9_a : std_logic;
SIGNAL p4s_sub12_0_anx45949z1 : std_logic;
SIGNAL p43_8_a : std_logic;
SIGNAL p4s_sub12_0_anx38970z1 : std_logic;
SIGNAL p43_1_a : std_logic;
SIGNAL p4s_sub12_0_anx37973z1 : std_logic;
SIGNAL p43_0_a : std_logic;
SIGNAL ix32403z30872_anx100z34 : std_logic;
SIGNAL ix32403z30872_anx100z31 : std_logic;
SIGNAL ix32403z30872_anx100z28 : std_logic;
SIGNAL ix32403z30872_anx100z25 : std_logic;
SIGNAL ix32403z30872_anx100z22 : std_logic;
SIGNAL ix32403z30872_anx100z19 : std_logic;
SIGNAL ix32403z30872_anx100z16 : std_logic;
SIGNAL ix32403z30872_anx100z13 : std_logic;
SIGNAL ix32403z30872_anx100z10 : std_logic;
SIGNAL ix32403z30872_anx100z7 : std_logic;
SIGNAL ix32403z30872_anx100z4 : std_logic;
SIGNAL ix32403z30872_anx100z1 : std_logic;
SIGNAL nx32403z3 : std_logic;
SIGNAL nx63886z1 : std_logic;
SIGNAL nx32403z5 : std_logic;
SIGNAL nx32403z2 : std_logic;
SIGNAL nx62889z1 : std_logic;
SIGNAL nx32403z1 : std_logic;
SIGNAL nx61892z1 : std_logic;
SIGNAL nx26026z2 : std_logic;
SIGNAL nx26026z1 : std_logic;
SIGNAL p41 : std_logic;
SIGNAL prev_edge : std_logic;
SIGNAL nx45767z1_afeeder_combout : std_logic;
SIGNAL nx45767z1 : std_logic;
SIGNAL o_valid_dup0 : std_logic;
SIGNAL nx42010z1 : std_logic;
SIGNAL nx47145z1_afeeder_combout : std_logic;
SIGNAL nx47145z1 : std_logic;
SIGNAL nx13256z1_afeeder_combout : std_logic;
SIGNAL nx13256z1 : std_logic;
SIGNAL p5m_0_a : std_logic;
SIGNAL o_mode_dup0_0_a : std_logic;
SIGNAL nx41013z1 : std_logic;
SIGNAL nx46148z1_afeeder_combout : std_logic;
SIGNAL nx46148z1 : std_logic;
SIGNAL nx14253z1_afeeder_combout : std_logic;
SIGNAL nx14253z1 : std_logic;
SIGNAL p5m_1_a : std_logic;
SIGNAL o_mode_dup0_1_a : std_logic;
SIGNAL nx22790z1 : std_logic;
SIGNAL nx27925z1_afeeder_combout : std_logic;
SIGNAL nx27925z1 : std_logic;
SIGNAL nx38634z1_afeeder_combout : std_logic;
SIGNAL nx38634z1 : std_logic;
SIGNAL nx16335z1_afeeder_combout : std_logic;
SIGNAL nx16335z1 : std_logic;
SIGNAL nx21793z1 : std_logic;
SIGNAL nx26928z1_afeeder_combout : std_logic;
SIGNAL nx26928z1 : std_logic;
SIGNAL nx39631z1_afeeder_combout : std_logic;
SIGNAL nx39631z1 : std_logic;
SIGNAL nx17332z1_afeeder_combout : std_logic;
SIGNAL nx17332z1 : std_logic;
SIGNAL nx20796z1 : std_logic;
SIGNAL nx25931z1_afeeder_combout : std_logic;
SIGNAL nx25931z1 : std_logic;
SIGNAL nx40628z1_afeeder_combout : std_logic;
SIGNAL nx40628z1 : std_logic;
SIGNAL nx18329z1_afeeder_combout : std_logic;
SIGNAL nx18329z1 : std_logic;
SIGNAL nx19799z1 : std_logic;
SIGNAL nx24934z1_afeeder_combout : std_logic;
SIGNAL nx24934z1 : std_logic;
SIGNAL nx41625z1_afeeder_combout : std_logic;
SIGNAL nx41625z1 : std_logic;
SIGNAL nx19326z1_afeeder_combout : std_logic;
SIGNAL nx19326z1 : std_logic;
SIGNAL nx18802z1 : std_logic;
SIGNAL nx23937z1_afeeder_combout : std_logic;
SIGNAL nx23937z1 : std_logic;
SIGNAL nx42622z1_afeeder_combout : std_logic;
SIGNAL nx42622z1 : std_logic;
SIGNAL nx20323z1_afeeder_combout : std_logic;
SIGNAL nx20323z1 : std_logic;
SIGNAL nx17805z1 : std_logic;
SIGNAL nx22940z1_afeeder_combout : std_logic;
SIGNAL nx22940z1 : std_logic;
SIGNAL nx43619z1_afeeder_combout : std_logic;
SIGNAL nx43619z1 : std_logic;
SIGNAL nx21320z1_afeeder_combout : std_logic;
SIGNAL nx21320z1 : std_logic;
SIGNAL nx16808z1 : std_logic;
SIGNAL nx21943z1_afeeder_combout : std_logic;
SIGNAL nx21943z1 : std_logic;
SIGNAL nx44616z1_afeeder_combout : std_logic;
SIGNAL nx44616z1 : std_logic;
SIGNAL nx22317z1_afeeder_combout : std_logic;
SIGNAL nx22317z1 : std_logic;
SIGNAL nx15811z1 : std_logic;
SIGNAL nx20946z1_afeeder_combout : std_logic;
SIGNAL nx20946z1 : std_logic;
SIGNAL nx45613z1_afeeder_combout : std_logic;
SIGNAL nx45613z1 : std_logic;
SIGNAL nx23314z1_afeeder_combout : std_logic;
SIGNAL nx23314z1 : std_logic;
SIGNAL b1_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL b2_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL b3_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL i1_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL i2_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL t1_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL t2_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL t3_acombout : std_logic_vector(7 DOWNTO 0);

BEGIN

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
ww_t1 <= t1;
ww_t2 <= t2;
ww_t3 <= t3;
ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_i1 <= i1;
ww_i2 <= i2;
ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_mode <= i_mode;
ww_i_row <= i_row;
o_dir <= ww_o_dir;
o_edge <= ww_o_edge;
o_valid <= ww_o_valid;
o_mode <= ww_o_mode;
o_row <= ww_o_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);

reg_prev_max_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_11_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_11_a);

reg_prev_max_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_8_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_8_a);

reg_prev_max_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_1_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_1_a);

reg_prev_max_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_0_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_0_a);

ix31358z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z5 = p43_9_a & (p43_8_a $ prev_max_8_a # !prev_max_9_a) # !p43_9_a & (prev_max_9_a # p43_8_a $ prev_max_8_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p43_9_a,
	datab => p43_8_a,
	datac => prev_max_9_a,
	datad => prev_max_8_a,
	combout => nx31358z5);

ix31358z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z9 = prev_max_0_a & (p43_1_a $ prev_max_1_a # !p43_0_a) # !prev_max_0_a & (p43_0_a # p43_1_a $ prev_max_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_0_a,
	datab => p43_0_a,
	datac => p43_1_a,
	datad => prev_max_1_a,
	combout => nx31358z9);

reg_p31_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_10_afeeder_combout,
	sdata => p22_10_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_10_a);

reg_p32_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p23_9_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_9_a);

reg_p31_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_8_afeeder_combout,
	sdata => p22_8_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_8_a);

reg_p31_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_7_afeeder_combout,
	sdata => p22_7_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_7_a);

reg_p32_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_6_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_6_a);

reg_p32_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_5_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_5_a);

reg_p32_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_4_a);

reg_p31_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_3_afeeder_combout,
	sdata => p22_3_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_3_a);

reg_p32_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_2_a);

reg_p31_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_1_afeeder_combout,
	sdata => p22_1_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_1_a);

reg_p32_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_0_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_0_a);

reg_p22_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_10_a);

reg_p21_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_8_a);

reg_p22_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_7_a);

reg_p21_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_4_a);

reg_p22_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p22_3_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_3_a);

reg_p22_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p22_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_1_a);

reg_p23_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_9_a);

reg_p23_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_6_a);

reg_p23_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_5_a);

reg_p23_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_4_a);

reg_p23_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_2_a);

reg_p23_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add8_0i3_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_0_a);

t2_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(7),
	combout => t2_acombout(7));

t2_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(6),
	combout => t2_acombout(6));

t1_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(5),
	combout => t1_acombout(5));

t2_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(4),
	combout => t2_acombout(4));

t2_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(3),
	combout => t2_acombout(3));

t1_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(2),
	combout => t1_acombout(2));

t2_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(1),
	combout => t2_acombout(1));

t2_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(0),
	combout => t2_acombout(0));

p11_add8_0i1_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx38970z1 = t2_acombout(1) & (t1_acombout(1) & p11_add8_0i1_anx44952z22 & VCC # !t1_acombout(1) & !p11_add8_0i1_anx44952z22) # !t2_acombout(1) & (t1_acombout(1) & !p11_add8_0i1_anx44952z22 # !t1_acombout(1) & (p11_add8_0i1_anx44952z22 # 
-- GND))
-- p11_add8_0i1_anx44952z19 = CARRY(t2_acombout(1) & !t1_acombout(1) & !p11_add8_0i1_anx44952z22 # !t2_acombout(1) & (!p11_add8_0i1_anx44952z22 # !t1_acombout(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2_acombout(1),
	datab => t1_acombout(1),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z22,
	combout => p11_add8_0i1_anx38970z1,
	cout => p11_add8_0i1_anx44952z19);

p11_add8_0i1_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx39967z1 = (t1_acombout(2) $ t2_acombout(2) $ !p11_add8_0i1_anx44952z19) # GND
-- p11_add8_0i1_anx44952z16 = CARRY(t1_acombout(2) & (t2_acombout(2) # !p11_add8_0i1_anx44952z19) # !t1_acombout(2) & t2_acombout(2) & !p11_add8_0i1_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1_acombout(2),
	datab => t2_acombout(2),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z19,
	combout => p11_add8_0i1_anx39967z1,
	cout => p11_add8_0i1_anx44952z16);

p11_add8_0i1_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx40964z1 = t2_acombout(3) & (t1_acombout(3) & p11_add8_0i1_anx44952z16 & VCC # !t1_acombout(3) & !p11_add8_0i1_anx44952z16) # !t2_acombout(3) & (t1_acombout(3) & !p11_add8_0i1_anx44952z16 # !t1_acombout(3) & (p11_add8_0i1_anx44952z16 # 
-- GND))
-- p11_add8_0i1_anx44952z13 = CARRY(t2_acombout(3) & !t1_acombout(3) & !p11_add8_0i1_anx44952z16 # !t2_acombout(3) & (!p11_add8_0i1_anx44952z16 # !t1_acombout(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2_acombout(3),
	datab => t1_acombout(3),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z16,
	combout => p11_add8_0i1_anx40964z1,
	cout => p11_add8_0i1_anx44952z13);

p11_add8_0i1_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx42958z1 = t1_acombout(5) & (t2_acombout(5) & p11_add8_0i1_anx44952z10 & VCC # !t2_acombout(5) & !p11_add8_0i1_anx44952z10) # !t1_acombout(5) & (t2_acombout(5) & !p11_add8_0i1_anx44952z10 # !t2_acombout(5) & (p11_add8_0i1_anx44952z10 # 
-- GND))
-- p11_add8_0i1_anx44952z7 = CARRY(t1_acombout(5) & !t2_acombout(5) & !p11_add8_0i1_anx44952z10 # !t1_acombout(5) & (!p11_add8_0i1_anx44952z10 # !t2_acombout(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1_acombout(5),
	datab => t2_acombout(5),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z10,
	combout => p11_add8_0i1_anx42958z1,
	cout => p11_add8_0i1_anx44952z7);

t3_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(7),
	combout => t3_acombout(7));

t3_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(6),
	combout => t3_acombout(6));

t3_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(4),
	combout => t3_acombout(4));

t3_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(0),
	combout => t3_acombout(0));

b1_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(7),
	combout => b1_acombout(7));

b1_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(6),
	combout => b1_acombout(6));

b2_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(5),
	combout => b2_acombout(5));

b1_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(4),
	combout => b1_acombout(4));

b1_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(3),
	combout => b1_acombout(3));

b1_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(2),
	combout => b1_acombout(2));

b2_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(1),
	combout => b2_acombout(1));

b2_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(0),
	combout => b2_acombout(0));

p12_add8_0i2_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx38970z1 = b2_acombout(1) & (b1_acombout(1) & p12_add8_0i2_anx44952z22 & VCC # !b1_acombout(1) & !p12_add8_0i2_anx44952z22) # !b2_acombout(1) & (b1_acombout(1) & !p12_add8_0i2_anx44952z22 # !b1_acombout(1) & (p12_add8_0i2_anx44952z22 # 
-- GND))
-- p12_add8_0i2_anx44952z19 = CARRY(b2_acombout(1) & !b1_acombout(1) & !p12_add8_0i2_anx44952z22 # !b2_acombout(1) & (!p12_add8_0i2_anx44952z22 # !b1_acombout(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b2_acombout(1),
	datab => b1_acombout(1),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z22,
	combout => p12_add8_0i2_anx38970z1,
	cout => p12_add8_0i2_anx44952z19);

p12_add8_0i2_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx40964z1 = b1_acombout(3) & (b2_acombout(3) & p12_add8_0i2_anx44952z16 & VCC # !b2_acombout(3) & !p12_add8_0i2_anx44952z16) # !b1_acombout(3) & (b2_acombout(3) & !p12_add8_0i2_anx44952z16 # !b2_acombout(3) & (p12_add8_0i2_anx44952z16 # 
-- GND))
-- p12_add8_0i2_anx44952z13 = CARRY(b1_acombout(3) & !b2_acombout(3) & !p12_add8_0i2_anx44952z16 # !b1_acombout(3) & (!p12_add8_0i2_anx44952z16 # !b2_acombout(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b1_acombout(3),
	datab => b2_acombout(3),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z16,
	combout => p12_add8_0i2_anx40964z1,
	cout => p12_add8_0i2_anx44952z13);

p12_add8_0i2_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx41961z1 = (b1_acombout(4) $ b2_acombout(4) $ !p12_add8_0i2_anx44952z13) # GND
-- p12_add8_0i2_anx44952z10 = CARRY(b1_acombout(4) & (b2_acombout(4) # !p12_add8_0i2_anx44952z13) # !b1_acombout(4) & b2_acombout(4) & !p12_add8_0i2_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b1_acombout(4),
	datab => b2_acombout(4),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z13,
	combout => p12_add8_0i2_anx41961z1,
	cout => p12_add8_0i2_anx44952z10);

p12_add8_0i2_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx44952z1 = b1_acombout(7) & (b2_acombout(7) & p12_add8_0i2_anx44952z4 & VCC # !b2_acombout(7) & !p12_add8_0i2_anx44952z4) # !b1_acombout(7) & (b2_acombout(7) & !p12_add8_0i2_anx44952z4 # !b2_acombout(7) & (p12_add8_0i2_anx44952z4 # GND))
-- p12_add8_0i2_anx23445z2 = CARRY(b1_acombout(7) & !b2_acombout(7) & !p12_add8_0i2_anx44952z4 # !b1_acombout(7) & (!p12_add8_0i2_anx44952z4 # !b2_acombout(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b1_acombout(7),
	datab => b2_acombout(7),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z4,
	combout => p12_add8_0i2_anx44952z1,
	cout => p12_add8_0i2_anx23445z2);

b3_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(6),
	combout => b3_acombout(6));

b3_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(5),
	combout => b3_acombout(5));

b3_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(2),
	combout => b3_acombout(2));

b3_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(0),
	combout => b3_acombout(0));

p21_sub11_3i1_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx37973z1 = p12_add9_2_anx37973z1 & (p12_add9_2_anx38970z1 & (p21_sub11_3i1_anx46946z29 # GND) # !p12_add9_2_anx38970z1 & !p21_sub11_3i1_anx46946z29) # !p12_add9_2_anx37973z1 & (p12_add9_2_anx38970z1 & !p21_sub11_3i1_anx46946z29 # 
-- !p12_add9_2_anx38970z1 & p21_sub11_3i1_anx46946z29 & VCC)
-- p21_sub11_3i1_anx46946z27 = CARRY(p12_add9_2_anx37973z1 & (p12_add9_2_anx38970z1 # !p21_sub11_3i1_anx46946z29) # !p12_add9_2_anx37973z1 & p12_add9_2_anx38970z1 & !p21_sub11_3i1_anx46946z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx37973z1,
	datab => p12_add9_2_anx38970z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z29,
	combout => p21_sub11_3i1_anx37973z1,
	cout => p21_sub11_3i1_anx46946z27);

p21_sub11_3i1_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx38970z1 = (p11_add9_1_anx38970z1 $ p12_add9_2_anx39967z1 $ p21_sub11_3i1_anx46946z27) # GND
-- p21_sub11_3i1_anx46946z24 = CARRY(p11_add9_1_anx38970z1 & (!p21_sub11_3i1_anx46946z27 # !p12_add9_2_anx39967z1) # !p11_add9_1_anx38970z1 & !p12_add9_2_anx39967z1 & !p21_sub11_3i1_anx46946z27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx38970z1,
	datab => p12_add9_2_anx39967z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z27,
	combout => p21_sub11_3i1_anx38970z1,
	cout => p21_sub11_3i1_anx46946z24);

p21_sub11_3i1_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx40964z1 = (p12_add9_2_anx41961z1 $ p11_add9_1_anx40964z1 $ p21_sub11_3i1_anx46946z21) # GND
-- p21_sub11_3i1_anx46946z18 = CARRY(p12_add9_2_anx41961z1 & p11_add9_1_anx40964z1 & !p21_sub11_3i1_anx46946z21 # !p12_add9_2_anx41961z1 & (p11_add9_1_anx40964z1 # !p21_sub11_3i1_anx46946z21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx41961z1,
	datab => p11_add9_1_anx40964z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z21,
	combout => p21_sub11_3i1_anx40964z1,
	cout => p21_sub11_3i1_anx46946z18);

p21_sub11_3i1_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx41961z1 = p12_add9_2_anx42958z1 & (p11_add9_1_anx41961z1 & !p21_sub11_3i1_anx46946z18 # !p11_add9_1_anx41961z1 & (p21_sub11_3i1_anx46946z18 # GND)) # !p12_add9_2_anx42958z1 & (p11_add9_1_anx41961z1 & p21_sub11_3i1_anx46946z18 & VCC # 
-- !p11_add9_1_anx41961z1 & !p21_sub11_3i1_anx46946z18)
-- p21_sub11_3i1_anx46946z15 = CARRY(p12_add9_2_anx42958z1 & (!p21_sub11_3i1_anx46946z18 # !p11_add9_1_anx41961z1) # !p12_add9_2_anx42958z1 & !p11_add9_1_anx41961z1 & !p21_sub11_3i1_anx46946z18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx42958z1,
	datab => p11_add9_1_anx41961z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z18,
	combout => p21_sub11_3i1_anx41961z1,
	cout => p21_sub11_3i1_anx46946z15);

p21_sub11_3i1_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx42958z1 = (p12_add9_2_anx43955z1 $ p11_add9_1_anx42958z1 $ p21_sub11_3i1_anx46946z15) # GND
-- p21_sub11_3i1_anx46946z12 = CARRY(p12_add9_2_anx43955z1 & p11_add9_1_anx42958z1 & !p21_sub11_3i1_anx46946z15 # !p12_add9_2_anx43955z1 & (p11_add9_1_anx42958z1 # !p21_sub11_3i1_anx46946z15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx43955z1,
	datab => p11_add9_1_anx42958z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z15,
	combout => p21_sub11_3i1_anx42958z1,
	cout => p21_sub11_3i1_anx46946z12);

p21_sub11_3i1_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx43955z1 = p11_add9_1_anx43955z1 & (p12_add9_2_anx44952z1 & !p21_sub11_3i1_anx46946z12 # !p12_add9_2_anx44952z1 & p21_sub11_3i1_anx46946z12 & VCC) # !p11_add9_1_anx43955z1 & (p12_add9_2_anx44952z1 & (p21_sub11_3i1_anx46946z12 # GND) # 
-- !p12_add9_2_anx44952z1 & !p21_sub11_3i1_anx46946z12)
-- p21_sub11_3i1_anx46946z9 = CARRY(p11_add9_1_anx43955z1 & p12_add9_2_anx44952z1 & !p21_sub11_3i1_anx46946z12 # !p11_add9_1_anx43955z1 & (p12_add9_2_anx44952z1 # !p21_sub11_3i1_anx46946z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx43955z1,
	datab => p12_add9_2_anx44952z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z12,
	combout => p21_sub11_3i1_anx43955z1,
	cout => p21_sub11_3i1_anx46946z9);

p21_sub11_3i1_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx45949z1 = p11_add9_1_anx45949z1 & (p12_add9_2_anx23445z1 & !p21_sub11_3i1_anx46946z6 # !p12_add9_2_anx23445z1 & p21_sub11_3i1_anx46946z6 & VCC) # !p11_add9_1_anx45949z1 & (p12_add9_2_anx23445z1 & (p21_sub11_3i1_anx46946z6 # GND) # 
-- !p12_add9_2_anx23445z1 & !p21_sub11_3i1_anx46946z6)
-- p21_sub11_3i1_anx46946z3 = CARRY(p11_add9_1_anx45949z1 & p12_add9_2_anx23445z1 & !p21_sub11_3i1_anx46946z6 # !p11_add9_1_anx45949z1 & (p12_add9_2_anx23445z1 # !p21_sub11_3i1_anx46946z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx45949z1,
	datab => p12_add9_2_anx23445z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z6,
	combout => p21_sub11_3i1_anx45949z1,
	cout => p21_sub11_3i1_anx46946z3);

p21_sub10_3i3_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx41961z1 = (p12_add9_2_anx41961z1 $ p11_add9_1_anx41961z1 $ p21_sub10_3i3_anx46946z19) # GND
-- p21_sub10_3i3_anx46946z16 = CARRY(p12_add9_2_anx41961z1 & p11_add9_1_anx41961z1 & !p21_sub10_3i3_anx46946z19 # !p12_add9_2_anx41961z1 & (p11_add9_1_anx41961z1 # !p21_sub10_3i3_anx46946z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx41961z1,
	datab => p11_add9_1_anx41961z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z19,
	combout => p21_sub10_3i3_anx41961z1,
	cout => p21_sub10_3i3_anx46946z16);

p21_sub10_3i3_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx46946z1 = p11_add9_1_anx23445z1 & (p12_add9_2_anx23445z1 & !p21_sub10_3i3_anx46946z4 # !p12_add9_2_anx23445z1 & p21_sub10_3i3_anx46946z4 & VCC) # !p11_add9_1_anx23445z1 & (p12_add9_2_anx23445z1 & (p21_sub10_3i3_anx46946z4 # GND) # 
-- !p12_add9_2_anx23445z1 & !p21_sub10_3i3_anx46946z4)
-- p21_sub10_3i3_anx23445z2 = CARRY(p11_add9_1_anx23445z1 & p12_add9_2_anx23445z1 & !p21_sub10_3i3_anx46946z4 # !p11_add9_1_anx23445z1 & (p12_add9_2_anx23445z1 # !p21_sub10_3i3_anx46946z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx23445z1,
	datab => p12_add9_2_anx23445z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z4,
	combout => p21_sub10_3i3_anx46946z1,
	cout => p21_sub10_3i3_anx23445z2);

ix52975z52630_aix62798z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx40964z1 = p21_sub10_3i3_anx41961z1 & (p21_sub11_3i1_anx39967z1 & ix52975z52630_anx62798z24 & VCC # !p21_sub11_3i1_anx39967z1 & !ix52975z52630_anx62798z24) # !p21_sub10_3i3_anx41961z1 & (p21_sub11_3i1_anx39967z1 & 
-- !ix52975z52630_anx62798z24 # !p21_sub11_3i1_anx39967z1 & (ix52975z52630_anx62798z24 # GND))
-- ix52975z52630_anx62798z21 = CARRY(p21_sub10_3i3_anx41961z1 & !p21_sub11_3i1_anx39967z1 & !ix52975z52630_anx62798z24 # !p21_sub10_3i3_anx41961z1 & (!ix52975z52630_anx62798z24 # !p21_sub11_3i1_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub10_3i3_anx41961z1,
	datab => p21_sub11_3i1_anx39967z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z24,
	combout => ix52975z52630_anx40964z1,
	cout => ix52975z52630_anx62798z21);

ix52975z52630_aix62798z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx44952z1 = p21_sub11_3i1_anx43955z1 & (p21_sub10_3i3_anx45949z1 & ix52975z52630_anx62798z12 & VCC # !p21_sub10_3i3_anx45949z1 & !ix52975z52630_anx62798z12) # !p21_sub11_3i1_anx43955z1 & (p21_sub10_3i3_anx45949z1 & 
-- !ix52975z52630_anx62798z12 # !p21_sub10_3i3_anx45949z1 & (ix52975z52630_anx62798z12 # GND))
-- ix52975z52630_anx62798z9 = CARRY(p21_sub11_3i1_anx43955z1 & !p21_sub10_3i3_anx45949z1 & !ix52975z52630_anx62798z12 # !p21_sub11_3i1_anx43955z1 & (!ix52975z52630_anx62798z12 # !p21_sub10_3i3_anx45949z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx43955z1,
	datab => p21_sub10_3i3_anx45949z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z12,
	combout => ix52975z52630_anx44952z1,
	cout => ix52975z52630_anx62798z9);

p22_sub11_3i2_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx37973z1 = p11_add9_1_anx38970z1 & (p11_add9_1_anx37973z1 & (p22_sub11_3i2_anx46946z29 # GND) # !p11_add9_1_anx37973z1 & !p22_sub11_3i2_anx46946z29) # !p11_add9_1_anx38970z1 & (p11_add9_1_anx37973z1 & !p22_sub11_3i2_anx46946z29 # 
-- !p11_add9_1_anx37973z1 & p22_sub11_3i2_anx46946z29 & VCC)
-- p22_sub11_3i2_anx46946z27 = CARRY(p11_add9_1_anx38970z1 & (p11_add9_1_anx37973z1 # !p22_sub11_3i2_anx46946z29) # !p11_add9_1_anx38970z1 & p11_add9_1_anx37973z1 & !p22_sub11_3i2_anx46946z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx38970z1,
	datab => p11_add9_1_anx37973z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z29,
	combout => p22_sub11_3i2_anx37973z1,
	cout => p22_sub11_3i2_anx46946z27);

p22_sub11_3i2_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx38970z1 = (p11_add9_1_anx39967z1 $ p12_add9_2_anx38970z1 $ p22_sub11_3i2_anx46946z27) # GND
-- p22_sub11_3i2_anx46946z24 = CARRY(p11_add9_1_anx39967z1 & p12_add9_2_anx38970z1 & !p22_sub11_3i2_anx46946z27 # !p11_add9_1_anx39967z1 & (p12_add9_2_anx38970z1 # !p22_sub11_3i2_anx46946z27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx39967z1,
	datab => p12_add9_2_anx38970z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z27,
	combout => p22_sub11_3i2_anx38970z1,
	cout => p22_sub11_3i2_anx46946z24);

p22_sub11_3i2_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx40964z1 = (p11_add9_1_anx41961z1 $ p12_add9_2_anx40964z1 $ p22_sub11_3i2_anx46946z21) # GND
-- p22_sub11_3i2_anx46946z18 = CARRY(p11_add9_1_anx41961z1 & p12_add9_2_anx40964z1 & !p22_sub11_3i2_anx46946z21 # !p11_add9_1_anx41961z1 & (p12_add9_2_anx40964z1 # !p22_sub11_3i2_anx46946z21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx41961z1,
	datab => p12_add9_2_anx40964z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z21,
	combout => p22_sub11_3i2_anx40964z1,
	cout => p22_sub11_3i2_anx46946z18);

p22_sub11_3i2_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx42958z1 = (p12_add9_2_anx42958z1 $ p11_add9_1_anx43955z1 $ p22_sub11_3i2_anx46946z15) # GND
-- p22_sub11_3i2_anx46946z12 = CARRY(p12_add9_2_anx42958z1 & (!p22_sub11_3i2_anx46946z15 # !p11_add9_1_anx43955z1) # !p12_add9_2_anx42958z1 & !p11_add9_1_anx43955z1 & !p22_sub11_3i2_anx46946z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx42958z1,
	datab => p11_add9_1_anx43955z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z15,
	combout => p22_sub11_3i2_anx42958z1,
	cout => p22_sub11_3i2_anx46946z12);

p22_sub11_3i2_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx45949z1 = p12_add9_2_anx45949z1 & (p11_add9_1_anx23445z1 & !p22_sub11_3i2_anx46946z6 # !p11_add9_1_anx23445z1 & p22_sub11_3i2_anx46946z6 & VCC) # !p12_add9_2_anx45949z1 & (p11_add9_1_anx23445z1 & (p22_sub11_3i2_anx46946z6 # GND) # 
-- !p11_add9_1_anx23445z1 & !p22_sub11_3i2_anx46946z6)
-- p22_sub11_3i2_anx46946z3 = CARRY(p12_add9_2_anx45949z1 & p11_add9_1_anx23445z1 & !p22_sub11_3i2_anx46946z6 # !p12_add9_2_anx45949z1 & (p11_add9_1_anx23445z1 # !p22_sub11_3i2_anx46946z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx45949z1,
	datab => p11_add9_1_anx23445z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z6,
	combout => p22_sub11_3i2_anx45949z1,
	cout => p22_sub11_3i2_anx46946z3);

p22_sub10_3i4_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx38970z1 = p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & !p22_sub10_3i4_anx46946z28 # !p11_add9_1_anx38970z1 & p22_sub10_3i4_anx46946z28 & VCC) # !p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & (p22_sub10_3i4_anx46946z28 # GND) # 
-- !p11_add9_1_anx38970z1 & !p22_sub10_3i4_anx46946z28)
-- p22_sub10_3i4_anx46946z25 = CARRY(p12_add9_2_anx38970z1 & p11_add9_1_anx38970z1 & !p22_sub10_3i4_anx46946z28 # !p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 # !p22_sub10_3i4_anx46946z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx38970z1,
	datab => p11_add9_1_anx38970z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z28,
	combout => p22_sub10_3i4_anx38970z1,
	cout => p22_sub10_3i4_anx46946z25);

p22_sub10_3i4_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx41961z1 = (p11_add9_1_anx41961z1 $ p12_add9_2_anx41961z1 $ p22_sub10_3i4_anx46946z19) # GND
-- p22_sub10_3i4_anx46946z16 = CARRY(p11_add9_1_anx41961z1 & p12_add9_2_anx41961z1 & !p22_sub10_3i4_anx46946z19 # !p11_add9_1_anx41961z1 & (p12_add9_2_anx41961z1 # !p22_sub10_3i4_anx46946z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx41961z1,
	datab => p12_add9_2_anx41961z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z19,
	combout => p22_sub10_3i4_anx41961z1,
	cout => p22_sub10_3i4_anx46946z16);

p22_sub10_3i4_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx43955z1 = (p12_add9_2_anx43955z1 $ p11_add9_1_anx43955z1 $ p22_sub10_3i4_anx46946z13) # GND
-- p22_sub10_3i4_anx46946z10 = CARRY(p12_add9_2_anx43955z1 & (!p22_sub10_3i4_anx46946z13 # !p11_add9_1_anx43955z1) # !p12_add9_2_anx43955z1 & !p11_add9_1_anx43955z1 & !p22_sub10_3i4_anx46946z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx43955z1,
	datab => p11_add9_1_anx43955z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z13,
	combout => p22_sub10_3i4_anx43955z1,
	cout => p22_sub10_3i4_anx46946z10);

p22_sub10_3i4_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx45949z1 = (p11_add9_1_anx45949z1 $ p12_add9_2_anx45949z1 $ p22_sub10_3i4_anx46946z7) # GND
-- p22_sub10_3i4_anx46946z4 = CARRY(p11_add9_1_anx45949z1 & p12_add9_2_anx45949z1 & !p22_sub10_3i4_anx46946z7 # !p11_add9_1_anx45949z1 & (p12_add9_2_anx45949z1 # !p22_sub10_3i4_anx46946z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx45949z1,
	datab => p12_add9_2_anx45949z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z7,
	combout => p22_sub10_3i4_anx45949z1,
	cout => p22_sub10_3i4_anx46946z4);

p22_sub10_3i4_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx46946z1 = p12_add9_2_anx23445z1 & (p11_add9_1_anx23445z1 & !p22_sub10_3i4_anx46946z4 # !p11_add9_1_anx23445z1 & p22_sub10_3i4_anx46946z4 & VCC) # !p12_add9_2_anx23445z1 & (p11_add9_1_anx23445z1 & (p22_sub10_3i4_anx46946z4 # GND) # 
-- !p11_add9_1_anx23445z1 & !p22_sub10_3i4_anx46946z4)
-- p22_sub10_3i4_anx23445z2 = CARRY(p12_add9_2_anx23445z1 & p11_add9_1_anx23445z1 & !p22_sub10_3i4_anx46946z4 # !p12_add9_2_anx23445z1 & (p11_add9_1_anx23445z1 # !p22_sub10_3i4_anx46946z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx23445z1,
	datab => p11_add9_1_anx23445z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z4,
	combout => p22_sub10_3i4_anx46946z1,
	cout => p22_sub10_3i4_anx23445z2);

ix47840z52631_aix62798z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx37973z1 = p22_sub10_3i4_anx38970z1 & (p11_add9_1_anx37973z1 $ VCC) # !p22_sub10_3i4_anx38970z1 & p11_add9_1_anx37973z1 & VCC
-- ix47840z52631_anx62798z30 = CARRY(p22_sub10_3i4_anx38970z1 & p11_add9_1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub10_3i4_anx38970z1,
	datab => p11_add9_1_anx37973z1,
	datad => VCC,
	combout => ix47840z52631_anx37973z1,
	cout => ix47840z52631_anx62798z30);

ix47840z52631_aix62798z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx39967z1 = (p22_sub11_3i2_anx38970z1 $ p22_sub10_3i4_anx40964z1 $ !ix47840z52631_anx62798z27) # GND
-- ix47840z52631_anx62798z24 = CARRY(p22_sub11_3i2_anx38970z1 & (p22_sub10_3i4_anx40964z1 # !ix47840z52631_anx62798z27) # !p22_sub11_3i2_anx38970z1 & p22_sub10_3i4_anx40964z1 & !ix47840z52631_anx62798z27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub11_3i2_anx38970z1,
	datab => p22_sub10_3i4_anx40964z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z27,
	combout => ix47840z52631_anx39967z1,
	cout => ix47840z52631_anx62798z24);

ix47840z52631_aix62798z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx43955z1 = (p22_sub11_3i2_anx42958z1 $ p22_sub10_3i4_anx44952z1 $ !ix47840z52631_anx62798z15) # GND
-- ix47840z52631_anx62798z12 = CARRY(p22_sub11_3i2_anx42958z1 & (p22_sub10_3i4_anx44952z1 # !ix47840z52631_anx62798z15) # !p22_sub11_3i2_anx42958z1 & p22_sub10_3i4_anx44952z1 & !ix47840z52631_anx62798z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub11_3i2_anx42958z1,
	datab => p22_sub10_3i4_anx44952z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z15,
	combout => ix47840z52631_anx43955z1,
	cout => ix47840z52631_anx62798z12);

ix47840z52631_aix62798z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx46946z1 = p22_sub11_3i2_anx45949z1 & (p22_sub10_3i4_anx23445z1 & !ix47840z52631_anx62798z6 # !p22_sub10_3i4_anx23445z1 & ix47840z52631_anx62798z6 & VCC) # !p22_sub11_3i2_anx45949z1 & (p22_sub10_3i4_anx23445z1 & (ix47840z52631_anx62798z6 # 
-- GND) # !p22_sub10_3i4_anx23445z1 & !ix47840z52631_anx62798z6)
-- ix47840z52631_anx62798z4 = CARRY(p22_sub11_3i2_anx45949z1 & p22_sub10_3i4_anx23445z1 & !ix47840z52631_anx62798z6 # !p22_sub11_3i2_anx45949z1 & (p22_sub10_3i4_anx23445z1 # !ix47840z52631_anx62798z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub11_3i2_anx45949z1,
	datab => p22_sub10_3i4_anx23445z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z6,
	combout => ix47840z52631_anx46946z1,
	cout => ix47840z52631_anx62798z4);

i1_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(7),
	combout => i1_acombout(7));

i1_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(6),
	combout => i1_acombout(6));

i1_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(5),
	combout => i1_acombout(5));

i2_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(4),
	combout => i2_acombout(4));

i2_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(3),
	combout => i2_acombout(3));

i2_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(2),
	combout => i2_acombout(2));

i2_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(1),
	combout => i2_acombout(1));

i1_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(0),
	combout => i1_acombout(0));

p13_add8_0i3_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx38970z1 = i2_acombout(1) & (i1_acombout(1) & p13_add8_0i3_anx44952z22 & VCC # !i1_acombout(1) & !p13_add8_0i3_anx44952z22) # !i2_acombout(1) & (i1_acombout(1) & !p13_add8_0i3_anx44952z22 # !i1_acombout(1) & (p13_add8_0i3_anx44952z22 # 
-- GND))
-- p13_add8_0i3_anx44952z19 = CARRY(i2_acombout(1) & !i1_acombout(1) & !p13_add8_0i3_anx44952z22 # !i2_acombout(1) & (!p13_add8_0i3_anx44952z22 # !i1_acombout(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_acombout(1),
	datab => i1_acombout(1),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z22,
	combout => p13_add8_0i3_anx38970z1,
	cout => p13_add8_0i3_anx44952z19);

p13_add8_0i3_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx41961z1 = (i2_acombout(4) $ i1_acombout(4) $ !p13_add8_0i3_anx44952z13) # GND
-- p13_add8_0i3_anx44952z10 = CARRY(i2_acombout(4) & (i1_acombout(4) # !p13_add8_0i3_anx44952z13) # !i2_acombout(4) & i1_acombout(4) & !p13_add8_0i3_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_acombout(4),
	datab => i1_acombout(4),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z13,
	combout => p13_add8_0i3_anx41961z1,
	cout => p13_add8_0i3_anx44952z10);

p13_add8_0i3_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx44952z1 = i1_acombout(7) & (i2_acombout(7) & p13_add8_0i3_anx44952z4 & VCC # !i2_acombout(7) & !p13_add8_0i3_anx44952z4) # !i1_acombout(7) & (i2_acombout(7) & !p13_add8_0i3_anx44952z4 # !i2_acombout(7) & (p13_add8_0i3_anx44952z4 # GND))
-- p13_add8_0i3_anx23445z2 = CARRY(i1_acombout(7) & !i2_acombout(7) & !p13_add8_0i3_anx44952z4 # !i1_acombout(7) & (!p13_add8_0i3_anx44952z4 # !i2_acombout(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1_acombout(7),
	datab => i2_acombout(7),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z4,
	combout => p13_add8_0i3_anx44952z1,
	cout => p13_add8_0i3_anx23445z2);

p13_add9_3_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx38970z1 = p13_add8_0i3_anx38970z1 & (p13_add8_0i3_anx39967z1 & p13_add9_3_anx45949z17 & VCC # !p13_add8_0i3_anx39967z1 & !p13_add9_3_anx45949z17) # !p13_add8_0i3_anx38970z1 & (p13_add8_0i3_anx39967z1 & !p13_add9_3_anx45949z17 # 
-- !p13_add8_0i3_anx39967z1 & (p13_add9_3_anx45949z17 # GND))
-- p13_add9_3_anx45949z15 = CARRY(p13_add8_0i3_anx38970z1 & !p13_add8_0i3_anx39967z1 & !p13_add9_3_anx45949z17 # !p13_add8_0i3_anx38970z1 & (!p13_add9_3_anx45949z17 # !p13_add8_0i3_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx38970z1,
	datab => p13_add8_0i3_anx39967z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z17,
	combout => p13_add9_3_anx38970z1,
	cout => p13_add9_3_anx45949z15);

p13_add9_3_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx40964z1 = p13_add8_0i3_anx41961z1 & (p13_add8_0i3_anx40964z1 & p13_add9_3_anx45949z13 & VCC # !p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z13) # !p13_add8_0i3_anx41961z1 & (p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z13 # 
-- !p13_add8_0i3_anx40964z1 & (p13_add9_3_anx45949z13 # GND))
-- p13_add9_3_anx45949z11 = CARRY(p13_add8_0i3_anx41961z1 & !p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z13 # !p13_add8_0i3_anx41961z1 & (!p13_add9_3_anx45949z13 # !p13_add8_0i3_anx40964z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx41961z1,
	datab => p13_add8_0i3_anx40964z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z13,
	combout => p13_add9_3_anx40964z1,
	cout => p13_add9_3_anx45949z11);

p13_add9_3_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx41961z1 = (p13_add8_0i3_anx41961z1 $ p13_add8_0i3_anx42958z1 $ !p13_add9_3_anx45949z11) # GND
-- p13_add9_3_anx45949z9 = CARRY(p13_add8_0i3_anx41961z1 & (p13_add8_0i3_anx42958z1 # !p13_add9_3_anx45949z11) # !p13_add8_0i3_anx41961z1 & p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx41961z1,
	datab => p13_add8_0i3_anx42958z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z11,
	combout => p13_add9_3_anx41961z1,
	cout => p13_add9_3_anx45949z9);

p13_add9_3_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx42958z1 = p13_add8_0i3_anx43955z1 & (p13_add8_0i3_anx42958z1 & p13_add9_3_anx45949z9 & VCC # !p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z9) # !p13_add8_0i3_anx43955z1 & (p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z9 # 
-- !p13_add8_0i3_anx42958z1 & (p13_add9_3_anx45949z9 # GND))
-- p13_add9_3_anx45949z7 = CARRY(p13_add8_0i3_anx43955z1 & !p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z9 # !p13_add8_0i3_anx43955z1 & (!p13_add9_3_anx45949z9 # !p13_add8_0i3_anx42958z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx43955z1,
	datab => p13_add8_0i3_anx42958z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z9,
	combout => p13_add9_3_anx42958z1,
	cout => p13_add9_3_anx45949z7);

p13_add9_3_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx45949z1 = p13_add8_0i3_anx23445z1 & (p13_add9_3_anx45949z3 $ GND) # !p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z3 & VCC
-- p13_add9_3_anx23445z2 = CARRY(p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p13_add8_0i3_anx23445z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z3,
	combout => p13_add9_3_anx45949z1,
	cout => p13_add9_3_anx23445z2);

p31_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_10_afeeder_combout = p21_10_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_10_a,
	combout => p31_10_afeeder_combout);

p31_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_8_afeeder_combout = p21_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p21_8_a,
	combout => p31_8_afeeder_combout);

p31_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_7_afeeder_combout = p21_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_7_a,
	combout => p31_7_afeeder_combout);

p31_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_3_afeeder_combout = p21_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_3_a,
	combout => p31_3_afeeder_combout);

p31_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_1_afeeder_combout = p21_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p21_1_a,
	combout => p31_1_afeeder_combout);

p32_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_6_afeeder_combout = p23_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p23_6_a,
	combout => p32_6_afeeder_combout);

p32_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_5_afeeder_combout = p23_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p23_5_a,
	combout => p32_5_afeeder_combout);

p32_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_4_afeeder_combout = p23_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p23_4_a,
	combout => p32_4_afeeder_combout);

p32_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_2_afeeder_combout = p23_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p23_2_a,
	combout => p32_2_afeeder_combout);

p32_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_0_afeeder_combout = p23_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => p23_0_a,
	combout => p32_0_afeeder_combout);

p22_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p22_1_afeeder_combout = ix47840z52631_anx37973z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ix47840z52631_anx37973z1,
	combout => p22_1_afeeder_combout);

p22_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p22_3_afeeder_combout = ix47840z52631_anx39967z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ix47840z52631_anx39967z1,
	combout => p22_3_afeeder_combout);

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

nx28524z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- nx28524z1_a_wirecell_combout = !nx28524z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx28524z1,
	combout => nx28524z1_a_wirecell_combout);

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

i_valid_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_valid,
	regout => nx40824z1);

nx39827z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx39827z1_afeeder_combout = nx40824z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx40824z1,
	combout => nx39827z1_afeeder_combout);

ix260_reg_p30 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx39827z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx39827z1);

ix260_reg_p40 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => nx39827z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p40);

ix26530z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26530z1 = p40 # i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => p40,
	datad => i_reset_acombout,
	combout => nx26530z1);

reg_state_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx28524z1_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => nx26530z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_1_a);

reg_state_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => state_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx26530z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_2_a);

reg_state_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => state_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx26530z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_3_a);

state_3_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- state_3_a_wirecell_combout = !state_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state_3_a,
	combout => state_3_a_wirecell_combout);

reg_state_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => state_3_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => nx26530z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx28524z1);

t1_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(7),
	combout => t1_acombout(7));

t1_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(6),
	combout => t1_acombout(6));

t2_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(5),
	combout => t2_acombout(5));

t1_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(4),
	combout => t1_acombout(4));

t1_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(3),
	combout => t1_acombout(3));

t2_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t2(2),
	combout => t2_acombout(2));

t1_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(1),
	combout => t1_acombout(1));

t1_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t1(0),
	combout => t1_acombout(0));

p11_add8_0i1_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx37973z1 = t2_acombout(0) & (t1_acombout(0) $ VCC) # !t2_acombout(0) & t1_acombout(0) & VCC
-- p11_add8_0i1_anx44952z22 = CARRY(t2_acombout(0) & t1_acombout(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t2_acombout(0),
	datab => t1_acombout(0),
	datad => VCC,
	combout => p11_add8_0i1_anx37973z1,
	cout => p11_add8_0i1_anx44952z22);

p11_add8_0i1_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx41961z1 = (t2_acombout(4) $ t1_acombout(4) $ !p11_add8_0i1_anx44952z13) # GND
-- p11_add8_0i1_anx44952z10 = CARRY(t2_acombout(4) & (t1_acombout(4) # !p11_add8_0i1_anx44952z13) # !t2_acombout(4) & t1_acombout(4) & !p11_add8_0i1_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2_acombout(4),
	datab => t1_acombout(4),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z13,
	combout => p11_add8_0i1_anx41961z1,
	cout => p11_add8_0i1_anx44952z10);

p11_add8_0i1_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx43955z1 = (t2_acombout(6) $ t1_acombout(6) $ !p11_add8_0i1_anx44952z7) # GND
-- p11_add8_0i1_anx44952z4 = CARRY(t2_acombout(6) & (t1_acombout(6) # !p11_add8_0i1_anx44952z7) # !t2_acombout(6) & t1_acombout(6) & !p11_add8_0i1_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2_acombout(6),
	datab => t1_acombout(6),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z7,
	combout => p11_add8_0i1_anx43955z1,
	cout => p11_add8_0i1_anx44952z4);

p11_add8_0i1_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx44952z1 = t2_acombout(7) & (t1_acombout(7) & p11_add8_0i1_anx44952z4 & VCC # !t1_acombout(7) & !p11_add8_0i1_anx44952z4) # !t2_acombout(7) & (t1_acombout(7) & !p11_add8_0i1_anx44952z4 # !t1_acombout(7) & (p11_add8_0i1_anx44952z4 # GND))
-- p11_add8_0i1_anx23445z2 = CARRY(t2_acombout(7) & !t1_acombout(7) & !p11_add8_0i1_anx44952z4 # !t2_acombout(7) & (!p11_add8_0i1_anx44952z4 # !t1_acombout(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2_acombout(7),
	datab => t1_acombout(7),
	datad => VCC,
	cin => p11_add8_0i1_anx44952z4,
	combout => p11_add8_0i1_anx44952z1,
	cout => p11_add8_0i1_anx23445z2);

p11_add8_0i1_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add8_0i1_anx23445z1 = !p11_add8_0i1_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p11_add8_0i1_anx23445z2,
	combout => p11_add8_0i1_anx23445z1);

t3_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(5),
	combout => t3_acombout(5));

t3_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(3),
	combout => t3_acombout(3));

t3_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(2),
	combout => t3_acombout(2));

t3_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_t3(1),
	combout => t3_acombout(1));

p11_add9_1_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx37973z1 = t3_acombout(0) & (p11_add8_0i1_anx37973z1 $ VCC) # !t3_acombout(0) & p11_add8_0i1_anx37973z1 & VCC
-- p11_add9_1_anx45949z24 = CARRY(t3_acombout(0) & p11_add8_0i1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t3_acombout(0),
	datab => p11_add8_0i1_anx37973z1,
	datad => VCC,
	combout => p11_add9_1_anx37973z1,
	cout => p11_add9_1_anx45949z24);

p11_add9_1_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx38970z1 = p11_add8_0i1_anx38970z1 & (t3_acombout(1) & p11_add9_1_anx45949z24 & VCC # !t3_acombout(1) & !p11_add9_1_anx45949z24) # !p11_add8_0i1_anx38970z1 & (t3_acombout(1) & !p11_add9_1_anx45949z24 # !t3_acombout(1) & 
-- (p11_add9_1_anx45949z24 # GND))
-- p11_add9_1_anx45949z21 = CARRY(p11_add8_0i1_anx38970z1 & !t3_acombout(1) & !p11_add9_1_anx45949z24 # !p11_add8_0i1_anx38970z1 & (!p11_add9_1_anx45949z24 # !t3_acombout(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add8_0i1_anx38970z1,
	datab => t3_acombout(1),
	datad => VCC,
	cin => p11_add9_1_anx45949z24,
	combout => p11_add9_1_anx38970z1,
	cout => p11_add9_1_anx45949z21);

p11_add9_1_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx39967z1 = (p11_add8_0i1_anx39967z1 $ t3_acombout(2) $ !p11_add9_1_anx45949z21) # GND
-- p11_add9_1_anx45949z18 = CARRY(p11_add8_0i1_anx39967z1 & (t3_acombout(2) # !p11_add9_1_anx45949z21) # !p11_add8_0i1_anx39967z1 & t3_acombout(2) & !p11_add9_1_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add8_0i1_anx39967z1,
	datab => t3_acombout(2),
	datad => VCC,
	cin => p11_add9_1_anx45949z21,
	combout => p11_add9_1_anx39967z1,
	cout => p11_add9_1_anx45949z18);

p11_add9_1_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx40964z1 = p11_add8_0i1_anx40964z1 & (t3_acombout(3) & p11_add9_1_anx45949z18 & VCC # !t3_acombout(3) & !p11_add9_1_anx45949z18) # !p11_add8_0i1_anx40964z1 & (t3_acombout(3) & !p11_add9_1_anx45949z18 # !t3_acombout(3) & 
-- (p11_add9_1_anx45949z18 # GND))
-- p11_add9_1_anx45949z15 = CARRY(p11_add8_0i1_anx40964z1 & !t3_acombout(3) & !p11_add9_1_anx45949z18 # !p11_add8_0i1_anx40964z1 & (!p11_add9_1_anx45949z18 # !t3_acombout(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add8_0i1_anx40964z1,
	datab => t3_acombout(3),
	datad => VCC,
	cin => p11_add9_1_anx45949z18,
	combout => p11_add9_1_anx40964z1,
	cout => p11_add9_1_anx45949z15);

p11_add9_1_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx41961z1 = (t3_acombout(4) $ p11_add8_0i1_anx41961z1 $ !p11_add9_1_anx45949z15) # GND
-- p11_add9_1_anx45949z12 = CARRY(t3_acombout(4) & (p11_add8_0i1_anx41961z1 # !p11_add9_1_anx45949z15) # !t3_acombout(4) & p11_add8_0i1_anx41961z1 & !p11_add9_1_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t3_acombout(4),
	datab => p11_add8_0i1_anx41961z1,
	datad => VCC,
	cin => p11_add9_1_anx45949z15,
	combout => p11_add9_1_anx41961z1,
	cout => p11_add9_1_anx45949z12);

p11_add9_1_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx42958z1 = p11_add8_0i1_anx42958z1 & (t3_acombout(5) & p11_add9_1_anx45949z12 & VCC # !t3_acombout(5) & !p11_add9_1_anx45949z12) # !p11_add8_0i1_anx42958z1 & (t3_acombout(5) & !p11_add9_1_anx45949z12 # !t3_acombout(5) & 
-- (p11_add9_1_anx45949z12 # GND))
-- p11_add9_1_anx45949z9 = CARRY(p11_add8_0i1_anx42958z1 & !t3_acombout(5) & !p11_add9_1_anx45949z12 # !p11_add8_0i1_anx42958z1 & (!p11_add9_1_anx45949z12 # !t3_acombout(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add8_0i1_anx42958z1,
	datab => t3_acombout(5),
	datad => VCC,
	cin => p11_add9_1_anx45949z12,
	combout => p11_add9_1_anx42958z1,
	cout => p11_add9_1_anx45949z9);

p11_add9_1_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx43955z1 = (t3_acombout(6) $ p11_add8_0i1_anx43955z1 $ !p11_add9_1_anx45949z9) # GND
-- p11_add9_1_anx45949z6 = CARRY(t3_acombout(6) & (p11_add8_0i1_anx43955z1 # !p11_add9_1_anx45949z9) # !t3_acombout(6) & p11_add8_0i1_anx43955z1 & !p11_add9_1_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t3_acombout(6),
	datab => p11_add8_0i1_anx43955z1,
	datad => VCC,
	cin => p11_add9_1_anx45949z9,
	combout => p11_add9_1_anx43955z1,
	cout => p11_add9_1_anx45949z6);

p11_add9_1_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx44952z1 = t3_acombout(7) & (p11_add8_0i1_anx44952z1 & p11_add9_1_anx45949z6 & VCC # !p11_add8_0i1_anx44952z1 & !p11_add9_1_anx45949z6) # !t3_acombout(7) & (p11_add8_0i1_anx44952z1 & !p11_add9_1_anx45949z6 # !p11_add8_0i1_anx44952z1 & 
-- (p11_add9_1_anx45949z6 # GND))
-- p11_add9_1_anx45949z3 = CARRY(t3_acombout(7) & !p11_add8_0i1_anx44952z1 & !p11_add9_1_anx45949z6 # !t3_acombout(7) & (!p11_add9_1_anx45949z6 # !p11_add8_0i1_anx44952z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t3_acombout(7),
	datab => p11_add8_0i1_anx44952z1,
	datad => VCC,
	cin => p11_add9_1_anx45949z6,
	combout => p11_add9_1_anx44952z1,
	cout => p11_add9_1_anx45949z3);

p11_add9_1_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx45949z1 = p11_add8_0i1_anx23445z1 & (p11_add9_1_anx45949z3 $ GND) # !p11_add8_0i1_anx23445z1 & !p11_add9_1_anx45949z3 & VCC
-- p11_add9_1_anx23445z2 = CARRY(p11_add8_0i1_anx23445z1 & !p11_add9_1_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p11_add8_0i1_anx23445z1,
	datad => VCC,
	cin => p11_add9_1_anx45949z3,
	combout => p11_add9_1_anx45949z1,
	cout => p11_add9_1_anx23445z2);

p11_add9_1_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p11_add9_1_anx23445z1 = p11_add9_1_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p11_add9_1_anx23445z2,
	combout => p11_add9_1_anx23445z1);

b2_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(7),
	combout => b2_acombout(7));

b2_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(6),
	combout => b2_acombout(6));

b1_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(5),
	combout => b1_acombout(5));

b2_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(4),
	combout => b2_acombout(4));

b2_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(3),
	combout => b2_acombout(3));

b2_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b2(2),
	combout => b2_acombout(2));

b1_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(1),
	combout => b1_acombout(1));

b1_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b1(0),
	combout => b1_acombout(0));

p12_add8_0i2_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx37973z1 = b2_acombout(0) & (b1_acombout(0) $ VCC) # !b2_acombout(0) & b1_acombout(0) & VCC
-- p12_add8_0i2_anx44952z22 = CARRY(b2_acombout(0) & b1_acombout(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b2_acombout(0),
	datab => b1_acombout(0),
	datad => VCC,
	combout => p12_add8_0i2_anx37973z1,
	cout => p12_add8_0i2_anx44952z22);

p12_add8_0i2_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx39967z1 = (b1_acombout(2) $ b2_acombout(2) $ !p12_add8_0i2_anx44952z19) # GND
-- p12_add8_0i2_anx44952z16 = CARRY(b1_acombout(2) & (b2_acombout(2) # !p12_add8_0i2_anx44952z19) # !b1_acombout(2) & b2_acombout(2) & !p12_add8_0i2_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b1_acombout(2),
	datab => b2_acombout(2),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z19,
	combout => p12_add8_0i2_anx39967z1,
	cout => p12_add8_0i2_anx44952z16);

p12_add8_0i2_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx42958z1 = b2_acombout(5) & (b1_acombout(5) & p12_add8_0i2_anx44952z10 & VCC # !b1_acombout(5) & !p12_add8_0i2_anx44952z10) # !b2_acombout(5) & (b1_acombout(5) & !p12_add8_0i2_anx44952z10 # !b1_acombout(5) & (p12_add8_0i2_anx44952z10 # 
-- GND))
-- p12_add8_0i2_anx44952z7 = CARRY(b2_acombout(5) & !b1_acombout(5) & !p12_add8_0i2_anx44952z10 # !b2_acombout(5) & (!p12_add8_0i2_anx44952z10 # !b1_acombout(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b2_acombout(5),
	datab => b1_acombout(5),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z10,
	combout => p12_add8_0i2_anx42958z1,
	cout => p12_add8_0i2_anx44952z7);

p12_add8_0i2_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx43955z1 = (b1_acombout(6) $ b2_acombout(6) $ !p12_add8_0i2_anx44952z7) # GND
-- p12_add8_0i2_anx44952z4 = CARRY(b1_acombout(6) & (b2_acombout(6) # !p12_add8_0i2_anx44952z7) # !b1_acombout(6) & b2_acombout(6) & !p12_add8_0i2_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b1_acombout(6),
	datab => b2_acombout(6),
	datad => VCC,
	cin => p12_add8_0i2_anx44952z7,
	combout => p12_add8_0i2_anx43955z1,
	cout => p12_add8_0i2_anx44952z4);

p12_add8_0i2_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add8_0i2_anx23445z1 = !p12_add8_0i2_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p12_add8_0i2_anx23445z2,
	combout => p12_add8_0i2_anx23445z1);

b3_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(7),
	combout => b3_acombout(7));

b3_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(4),
	combout => b3_acombout(4));

b3_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(3),
	combout => b3_acombout(3));

b3_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_b3(1),
	combout => b3_acombout(1));

p12_add9_2_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx37973z1 = b3_acombout(0) & (p12_add8_0i2_anx37973z1 $ VCC) # !b3_acombout(0) & p12_add8_0i2_anx37973z1 & VCC
-- p12_add9_2_anx45949z24 = CARRY(b3_acombout(0) & p12_add8_0i2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b3_acombout(0),
	datab => p12_add8_0i2_anx37973z1,
	datad => VCC,
	combout => p12_add9_2_anx37973z1,
	cout => p12_add9_2_anx45949z24);

p12_add9_2_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx38970z1 = p12_add8_0i2_anx38970z1 & (b3_acombout(1) & p12_add9_2_anx45949z24 & VCC # !b3_acombout(1) & !p12_add9_2_anx45949z24) # !p12_add8_0i2_anx38970z1 & (b3_acombout(1) & !p12_add9_2_anx45949z24 # !b3_acombout(1) & 
-- (p12_add9_2_anx45949z24 # GND))
-- p12_add9_2_anx45949z21 = CARRY(p12_add8_0i2_anx38970z1 & !b3_acombout(1) & !p12_add9_2_anx45949z24 # !p12_add8_0i2_anx38970z1 & (!p12_add9_2_anx45949z24 # !b3_acombout(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add8_0i2_anx38970z1,
	datab => b3_acombout(1),
	datad => VCC,
	cin => p12_add9_2_anx45949z24,
	combout => p12_add9_2_anx38970z1,
	cout => p12_add9_2_anx45949z21);

p12_add9_2_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx39967z1 = (b3_acombout(2) $ p12_add8_0i2_anx39967z1 $ !p12_add9_2_anx45949z21) # GND
-- p12_add9_2_anx45949z18 = CARRY(b3_acombout(2) & (p12_add8_0i2_anx39967z1 # !p12_add9_2_anx45949z21) # !b3_acombout(2) & p12_add8_0i2_anx39967z1 & !p12_add9_2_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b3_acombout(2),
	datab => p12_add8_0i2_anx39967z1,
	datad => VCC,
	cin => p12_add9_2_anx45949z21,
	combout => p12_add9_2_anx39967z1,
	cout => p12_add9_2_anx45949z18);

p12_add9_2_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx40964z1 = p12_add8_0i2_anx40964z1 & (b3_acombout(3) & p12_add9_2_anx45949z18 & VCC # !b3_acombout(3) & !p12_add9_2_anx45949z18) # !p12_add8_0i2_anx40964z1 & (b3_acombout(3) & !p12_add9_2_anx45949z18 # !b3_acombout(3) & 
-- (p12_add9_2_anx45949z18 # GND))
-- p12_add9_2_anx45949z15 = CARRY(p12_add8_0i2_anx40964z1 & !b3_acombout(3) & !p12_add9_2_anx45949z18 # !p12_add8_0i2_anx40964z1 & (!p12_add9_2_anx45949z18 # !b3_acombout(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add8_0i2_anx40964z1,
	datab => b3_acombout(3),
	datad => VCC,
	cin => p12_add9_2_anx45949z18,
	combout => p12_add9_2_anx40964z1,
	cout => p12_add9_2_anx45949z15);

p12_add9_2_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx41961z1 = (p12_add8_0i2_anx41961z1 $ b3_acombout(4) $ !p12_add9_2_anx45949z15) # GND
-- p12_add9_2_anx45949z12 = CARRY(p12_add8_0i2_anx41961z1 & (b3_acombout(4) # !p12_add9_2_anx45949z15) # !p12_add8_0i2_anx41961z1 & b3_acombout(4) & !p12_add9_2_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add8_0i2_anx41961z1,
	datab => b3_acombout(4),
	datad => VCC,
	cin => p12_add9_2_anx45949z15,
	combout => p12_add9_2_anx41961z1,
	cout => p12_add9_2_anx45949z12);

p12_add9_2_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx42958z1 = b3_acombout(5) & (p12_add8_0i2_anx42958z1 & p12_add9_2_anx45949z12 & VCC # !p12_add8_0i2_anx42958z1 & !p12_add9_2_anx45949z12) # !b3_acombout(5) & (p12_add8_0i2_anx42958z1 & !p12_add9_2_anx45949z12 # !p12_add8_0i2_anx42958z1 & 
-- (p12_add9_2_anx45949z12 # GND))
-- p12_add9_2_anx45949z9 = CARRY(b3_acombout(5) & !p12_add8_0i2_anx42958z1 & !p12_add9_2_anx45949z12 # !b3_acombout(5) & (!p12_add9_2_anx45949z12 # !p12_add8_0i2_anx42958z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b3_acombout(5),
	datab => p12_add8_0i2_anx42958z1,
	datad => VCC,
	cin => p12_add9_2_anx45949z12,
	combout => p12_add9_2_anx42958z1,
	cout => p12_add9_2_anx45949z9);

p12_add9_2_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx43955z1 = (b3_acombout(6) $ p12_add8_0i2_anx43955z1 $ !p12_add9_2_anx45949z9) # GND
-- p12_add9_2_anx45949z6 = CARRY(b3_acombout(6) & (p12_add8_0i2_anx43955z1 # !p12_add9_2_anx45949z9) # !b3_acombout(6) & p12_add8_0i2_anx43955z1 & !p12_add9_2_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b3_acombout(6),
	datab => p12_add8_0i2_anx43955z1,
	datad => VCC,
	cin => p12_add9_2_anx45949z9,
	combout => p12_add9_2_anx43955z1,
	cout => p12_add9_2_anx45949z6);

p12_add9_2_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx44952z1 = p12_add8_0i2_anx44952z1 & (b3_acombout(7) & p12_add9_2_anx45949z6 & VCC # !b3_acombout(7) & !p12_add9_2_anx45949z6) # !p12_add8_0i2_anx44952z1 & (b3_acombout(7) & !p12_add9_2_anx45949z6 # !b3_acombout(7) & (p12_add9_2_anx45949z6 # 
-- GND))
-- p12_add9_2_anx45949z3 = CARRY(p12_add8_0i2_anx44952z1 & !b3_acombout(7) & !p12_add9_2_anx45949z6 # !p12_add8_0i2_anx44952z1 & (!p12_add9_2_anx45949z6 # !b3_acombout(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add8_0i2_anx44952z1,
	datab => b3_acombout(7),
	datad => VCC,
	cin => p12_add9_2_anx45949z6,
	combout => p12_add9_2_anx44952z1,
	cout => p12_add9_2_anx45949z3);

p12_add9_2_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx45949z1 = p12_add8_0i2_anx23445z1 & (p12_add9_2_anx45949z3 $ GND) # !p12_add8_0i2_anx23445z1 & !p12_add9_2_anx45949z3 & VCC
-- p12_add9_2_anx23445z2 = CARRY(p12_add8_0i2_anx23445z1 & !p12_add9_2_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p12_add8_0i2_anx23445z1,
	datad => VCC,
	cin => p12_add9_2_anx45949z3,
	combout => p12_add9_2_anx45949z1,
	cout => p12_add9_2_anx23445z2);

p22_sub10_3i4_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx37973z1 = p12_add9_2_anx37973z1 & (GND # !p11_add9_1_anx37973z1) # !p12_add9_2_anx37973z1 & (p11_add9_1_anx37973z1 $ GND)
-- p22_sub10_3i4_anx46946z28 = CARRY(p12_add9_2_anx37973z1 # !p11_add9_1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx37973z1,
	datab => p11_add9_1_anx37973z1,
	datad => VCC,
	combout => p22_sub10_3i4_anx37973z1,
	cout => p22_sub10_3i4_anx46946z28);

p22_sub10_3i4_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx39967z1 = (p12_add9_2_anx39967z1 $ p11_add9_1_anx39967z1 $ p22_sub10_3i4_anx46946z25) # GND
-- p22_sub10_3i4_anx46946z22 = CARRY(p12_add9_2_anx39967z1 & (!p22_sub10_3i4_anx46946z25 # !p11_add9_1_anx39967z1) # !p12_add9_2_anx39967z1 & !p11_add9_1_anx39967z1 & !p22_sub10_3i4_anx46946z25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx39967z1,
	datab => p11_add9_1_anx39967z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z25,
	combout => p22_sub10_3i4_anx39967z1,
	cout => p22_sub10_3i4_anx46946z22);

p22_sub10_3i4_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx40964z1 = p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & !p22_sub10_3i4_anx46946z22 # !p11_add9_1_anx40964z1 & p22_sub10_3i4_anx46946z22 & VCC) # !p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & (p22_sub10_3i4_anx46946z22 # GND) # 
-- !p11_add9_1_anx40964z1 & !p22_sub10_3i4_anx46946z22)
-- p22_sub10_3i4_anx46946z19 = CARRY(p12_add9_2_anx40964z1 & p11_add9_1_anx40964z1 & !p22_sub10_3i4_anx46946z22 # !p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 # !p22_sub10_3i4_anx46946z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx40964z1,
	datab => p11_add9_1_anx40964z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z22,
	combout => p22_sub10_3i4_anx40964z1,
	cout => p22_sub10_3i4_anx46946z19);

p22_sub10_3i4_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx42958z1 = p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & !p22_sub10_3i4_anx46946z16 # !p12_add9_2_anx42958z1 & (p22_sub10_3i4_anx46946z16 # GND)) # !p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & p22_sub10_3i4_anx46946z16 & VCC # 
-- !p12_add9_2_anx42958z1 & !p22_sub10_3i4_anx46946z16)
-- p22_sub10_3i4_anx46946z13 = CARRY(p11_add9_1_anx42958z1 & (!p22_sub10_3i4_anx46946z16 # !p12_add9_2_anx42958z1) # !p11_add9_1_anx42958z1 & !p12_add9_2_anx42958z1 & !p22_sub10_3i4_anx46946z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx42958z1,
	datab => p12_add9_2_anx42958z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z16,
	combout => p22_sub10_3i4_anx42958z1,
	cout => p22_sub10_3i4_anx46946z13);

p22_sub10_3i4_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx44952z1 = p12_add9_2_anx44952z1 & (p11_add9_1_anx44952z1 & !p22_sub10_3i4_anx46946z10 # !p11_add9_1_anx44952z1 & p22_sub10_3i4_anx46946z10 & VCC) # !p12_add9_2_anx44952z1 & (p11_add9_1_anx44952z1 & (p22_sub10_3i4_anx46946z10 # GND) # 
-- !p11_add9_1_anx44952z1 & !p22_sub10_3i4_anx46946z10)
-- p22_sub10_3i4_anx46946z7 = CARRY(p12_add9_2_anx44952z1 & p11_add9_1_anx44952z1 & !p22_sub10_3i4_anx46946z10 # !p12_add9_2_anx44952z1 & (p11_add9_1_anx44952z1 # !p22_sub10_3i4_anx46946z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx44952z1,
	datab => p11_add9_1_anx44952z1,
	datad => VCC,
	cin => p22_sub10_3i4_anx46946z10,
	combout => p22_sub10_3i4_anx44952z1,
	cout => p22_sub10_3i4_anx46946z7);

p22_sub10_3i4_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub10_3i4_anx23445z1 = !p22_sub10_3i4_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p22_sub10_3i4_anx23445z2,
	combout => p22_sub10_3i4_anx23445z1);

p12_add9_2_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p12_add9_2_anx23445z1 = p12_add9_2_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p12_add9_2_anx23445z2,
	combout => p12_add9_2_anx23445z1);

p22_sub11_3i2_aix46946z52934 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx46946z29 = CARRY(p12_add9_2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p12_add9_2_anx37973z1,
	datad => VCC,
	cout => p22_sub11_3i2_anx46946z29);

p22_sub11_3i2_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx39967z1 = p12_add9_2_anx39967z1 & (p11_add9_1_anx40964z1 & !p22_sub11_3i2_anx46946z24 # !p11_add9_1_anx40964z1 & p22_sub11_3i2_anx46946z24 & VCC) # !p12_add9_2_anx39967z1 & (p11_add9_1_anx40964z1 & (p22_sub11_3i2_anx46946z24 # GND) # 
-- !p11_add9_1_anx40964z1 & !p22_sub11_3i2_anx46946z24)
-- p22_sub11_3i2_anx46946z21 = CARRY(p12_add9_2_anx39967z1 & p11_add9_1_anx40964z1 & !p22_sub11_3i2_anx46946z24 # !p12_add9_2_anx39967z1 & (p11_add9_1_anx40964z1 # !p22_sub11_3i2_anx46946z24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx39967z1,
	datab => p11_add9_1_anx40964z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z24,
	combout => p22_sub11_3i2_anx39967z1,
	cout => p22_sub11_3i2_anx46946z21);

p22_sub11_3i2_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx41961z1 = p11_add9_1_anx42958z1 & (p12_add9_2_anx41961z1 & !p22_sub11_3i2_anx46946z18 # !p12_add9_2_anx41961z1 & (p22_sub11_3i2_anx46946z18 # GND)) # !p11_add9_1_anx42958z1 & (p12_add9_2_anx41961z1 & p22_sub11_3i2_anx46946z18 & VCC # 
-- !p12_add9_2_anx41961z1 & !p22_sub11_3i2_anx46946z18)
-- p22_sub11_3i2_anx46946z15 = CARRY(p11_add9_1_anx42958z1 & (!p22_sub11_3i2_anx46946z18 # !p12_add9_2_anx41961z1) # !p11_add9_1_anx42958z1 & !p12_add9_2_anx41961z1 & !p22_sub11_3i2_anx46946z18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx42958z1,
	datab => p12_add9_2_anx41961z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z18,
	combout => p22_sub11_3i2_anx41961z1,
	cout => p22_sub11_3i2_anx46946z15);

p22_sub11_3i2_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx43955z1 = p12_add9_2_anx43955z1 & (p11_add9_1_anx44952z1 & !p22_sub11_3i2_anx46946z12 # !p11_add9_1_anx44952z1 & p22_sub11_3i2_anx46946z12 & VCC) # !p12_add9_2_anx43955z1 & (p11_add9_1_anx44952z1 & (p22_sub11_3i2_anx46946z12 # GND) # 
-- !p11_add9_1_anx44952z1 & !p22_sub11_3i2_anx46946z12)
-- p22_sub11_3i2_anx46946z9 = CARRY(p12_add9_2_anx43955z1 & p11_add9_1_anx44952z1 & !p22_sub11_3i2_anx46946z12 # !p12_add9_2_anx43955z1 & (p11_add9_1_anx44952z1 # !p22_sub11_3i2_anx46946z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx43955z1,
	datab => p11_add9_1_anx44952z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z12,
	combout => p22_sub11_3i2_anx43955z1,
	cout => p22_sub11_3i2_anx46946z9);

p22_sub11_3i2_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx44952z1 = (p12_add9_2_anx44952z1 $ p11_add9_1_anx45949z1 $ p22_sub11_3i2_anx46946z9) # GND
-- p22_sub11_3i2_anx46946z6 = CARRY(p12_add9_2_anx44952z1 & (!p22_sub11_3i2_anx46946z9 # !p11_add9_1_anx45949z1) # !p12_add9_2_anx44952z1 & !p11_add9_1_anx45949z1 & !p22_sub11_3i2_anx46946z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx44952z1,
	datab => p11_add9_1_anx45949z1,
	datad => VCC,
	cin => p22_sub11_3i2_anx46946z9,
	combout => p22_sub11_3i2_anx44952z1,
	cout => p22_sub11_3i2_anx46946z6);

p22_sub11_3i2_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p22_sub11_3i2_anx46946z1 = p22_sub11_3i2_anx46946z3 $ p12_add9_2_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => p12_add9_2_anx23445z1,
	cin => p22_sub11_3i2_anx46946z3,
	combout => p22_sub11_3i2_anx46946z1);

ix47840z52631_aix62798z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx38970z1 = p22_sub11_3i2_anx37973z1 & (p22_sub10_3i4_anx39967z1 & ix47840z52631_anx62798z30 & VCC # !p22_sub10_3i4_anx39967z1 & !ix47840z52631_anx62798z30) # !p22_sub11_3i2_anx37973z1 & (p22_sub10_3i4_anx39967z1 & 
-- !ix47840z52631_anx62798z30 # !p22_sub10_3i4_anx39967z1 & (ix47840z52631_anx62798z30 # GND))
-- ix47840z52631_anx62798z27 = CARRY(p22_sub11_3i2_anx37973z1 & !p22_sub10_3i4_anx39967z1 & !ix47840z52631_anx62798z30 # !p22_sub11_3i2_anx37973z1 & (!ix47840z52631_anx62798z30 # !p22_sub10_3i4_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub11_3i2_anx37973z1,
	datab => p22_sub10_3i4_anx39967z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z30,
	combout => ix47840z52631_anx38970z1,
	cout => ix47840z52631_anx62798z27);

ix47840z52631_aix62798z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx40964z1 = p22_sub10_3i4_anx41961z1 & (p22_sub11_3i2_anx39967z1 & ix47840z52631_anx62798z24 & VCC # !p22_sub11_3i2_anx39967z1 & !ix47840z52631_anx62798z24) # !p22_sub10_3i4_anx41961z1 & (p22_sub11_3i2_anx39967z1 & 
-- !ix47840z52631_anx62798z24 # !p22_sub11_3i2_anx39967z1 & (ix47840z52631_anx62798z24 # GND))
-- ix47840z52631_anx62798z21 = CARRY(p22_sub10_3i4_anx41961z1 & !p22_sub11_3i2_anx39967z1 & !ix47840z52631_anx62798z24 # !p22_sub10_3i4_anx41961z1 & (!ix47840z52631_anx62798z24 # !p22_sub11_3i2_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub10_3i4_anx41961z1,
	datab => p22_sub11_3i2_anx39967z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z24,
	combout => ix47840z52631_anx40964z1,
	cout => ix47840z52631_anx62798z21);

ix47840z52631_aix62798z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx41961z1 = (p22_sub11_3i2_anx40964z1 $ p22_sub10_3i4_anx42958z1 $ !ix47840z52631_anx62798z21) # GND
-- ix47840z52631_anx62798z18 = CARRY(p22_sub11_3i2_anx40964z1 & (p22_sub10_3i4_anx42958z1 # !ix47840z52631_anx62798z21) # !p22_sub11_3i2_anx40964z1 & p22_sub10_3i4_anx42958z1 & !ix47840z52631_anx62798z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub11_3i2_anx40964z1,
	datab => p22_sub10_3i4_anx42958z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z21,
	combout => ix47840z52631_anx41961z1,
	cout => ix47840z52631_anx62798z18);

ix47840z52631_aix62798z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx42958z1 = p22_sub10_3i4_anx43955z1 & (p22_sub11_3i2_anx41961z1 & ix47840z52631_anx62798z18 & VCC # !p22_sub11_3i2_anx41961z1 & !ix47840z52631_anx62798z18) # !p22_sub10_3i4_anx43955z1 & (p22_sub11_3i2_anx41961z1 & 
-- !ix47840z52631_anx62798z18 # !p22_sub11_3i2_anx41961z1 & (ix47840z52631_anx62798z18 # GND))
-- ix47840z52631_anx62798z15 = CARRY(p22_sub10_3i4_anx43955z1 & !p22_sub11_3i2_anx41961z1 & !ix47840z52631_anx62798z18 # !p22_sub10_3i4_anx43955z1 & (!ix47840z52631_anx62798z18 # !p22_sub11_3i2_anx41961z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub10_3i4_anx43955z1,
	datab => p22_sub11_3i2_anx41961z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z18,
	combout => ix47840z52631_anx42958z1,
	cout => ix47840z52631_anx62798z15);

ix47840z52631_aix62798z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx44952z1 = p22_sub10_3i4_anx45949z1 & (p22_sub11_3i2_anx43955z1 & ix47840z52631_anx62798z12 & VCC # !p22_sub11_3i2_anx43955z1 & !ix47840z52631_anx62798z12) # !p22_sub10_3i4_anx45949z1 & (p22_sub11_3i2_anx43955z1 & 
-- !ix47840z52631_anx62798z12 # !p22_sub11_3i2_anx43955z1 & (ix47840z52631_anx62798z12 # GND))
-- ix47840z52631_anx62798z9 = CARRY(p22_sub10_3i4_anx45949z1 & !p22_sub11_3i2_anx43955z1 & !ix47840z52631_anx62798z12 # !p22_sub10_3i4_anx45949z1 & (!ix47840z52631_anx62798z12 # !p22_sub11_3i2_anx43955z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub10_3i4_anx45949z1,
	datab => p22_sub11_3i2_anx43955z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z12,
	combout => ix47840z52631_anx44952z1,
	cout => ix47840z52631_anx62798z9);

ix47840z52631_aix62798z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx45949z1 = (p22_sub10_3i4_anx46946z1 $ p22_sub11_3i2_anx44952z1 $ !ix47840z52631_anx62798z9) # GND
-- ix47840z52631_anx62798z6 = CARRY(p22_sub10_3i4_anx46946z1 & (p22_sub11_3i2_anx44952z1 # !ix47840z52631_anx62798z9) # !p22_sub10_3i4_anx46946z1 & p22_sub11_3i2_anx44952z1 & !ix47840z52631_anx62798z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_sub10_3i4_anx46946z1,
	datab => p22_sub11_3i2_anx44952z1,
	datad => VCC,
	cin => ix47840z52631_anx62798z9,
	combout => ix47840z52631_anx45949z1,
	cout => ix47840z52631_anx62798z6);

ix47840z52631_aix62798z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix47840z52631_anx62798z1 = p22_sub10_3i4_anx23445z1 $ ix47840z52631_anx62798z4 $ p22_sub11_3i2_anx46946z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p22_sub10_3i4_anx23445z1,
	datad => p22_sub11_3i2_anx46946z1,
	cin => ix47840z52631_anx62798z4,
	combout => ix47840z52631_anx62798z1);

reg_p22_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_11_a);

p21_sub10_3i3_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx37973z1 = p12_add9_2_anx37973z1 & (p11_add9_1_anx37973z1 $ VCC) # !p12_add9_2_anx37973z1 & (p11_add9_1_anx37973z1 # GND)
-- p21_sub10_3i3_anx46946z28 = CARRY(p11_add9_1_anx37973z1 # !p12_add9_2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx37973z1,
	datab => p11_add9_1_anx37973z1,
	datad => VCC,
	combout => p21_sub10_3i3_anx37973z1,
	cout => p21_sub10_3i3_anx46946z28);

p21_sub10_3i3_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx38970z1 = p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & !p21_sub10_3i3_anx46946z28 # !p11_add9_1_anx38970z1 & (p21_sub10_3i3_anx46946z28 # GND)) # !p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & p21_sub10_3i3_anx46946z28 & VCC # 
-- !p11_add9_1_anx38970z1 & !p21_sub10_3i3_anx46946z28)
-- p21_sub10_3i3_anx46946z25 = CARRY(p12_add9_2_anx38970z1 & (!p21_sub10_3i3_anx46946z28 # !p11_add9_1_anx38970z1) # !p12_add9_2_anx38970z1 & !p11_add9_1_anx38970z1 & !p21_sub10_3i3_anx46946z28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx38970z1,
	datab => p11_add9_1_anx38970z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z28,
	combout => p21_sub10_3i3_anx38970z1,
	cout => p21_sub10_3i3_anx46946z25);

p21_sub10_3i3_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx39967z1 = (p11_add9_1_anx39967z1 $ p12_add9_2_anx39967z1 $ p21_sub10_3i3_anx46946z25) # GND
-- p21_sub10_3i3_anx46946z22 = CARRY(p11_add9_1_anx39967z1 & (!p21_sub10_3i3_anx46946z25 # !p12_add9_2_anx39967z1) # !p11_add9_1_anx39967z1 & !p12_add9_2_anx39967z1 & !p21_sub10_3i3_anx46946z25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx39967z1,
	datab => p12_add9_2_anx39967z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z25,
	combout => p21_sub10_3i3_anx39967z1,
	cout => p21_sub10_3i3_anx46946z22);

p21_sub10_3i3_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx40964z1 = p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & !p21_sub10_3i3_anx46946z22 # !p11_add9_1_anx40964z1 & (p21_sub10_3i3_anx46946z22 # GND)) # !p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & p21_sub10_3i3_anx46946z22 & VCC # 
-- !p11_add9_1_anx40964z1 & !p21_sub10_3i3_anx46946z22)
-- p21_sub10_3i3_anx46946z19 = CARRY(p12_add9_2_anx40964z1 & (!p21_sub10_3i3_anx46946z22 # !p11_add9_1_anx40964z1) # !p12_add9_2_anx40964z1 & !p11_add9_1_anx40964z1 & !p21_sub10_3i3_anx46946z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx40964z1,
	datab => p11_add9_1_anx40964z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z22,
	combout => p21_sub10_3i3_anx40964z1,
	cout => p21_sub10_3i3_anx46946z19);

p21_sub10_3i3_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx42958z1 = p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & !p21_sub10_3i3_anx46946z16 # !p12_add9_2_anx42958z1 & p21_sub10_3i3_anx46946z16 & VCC) # !p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & (p21_sub10_3i3_anx46946z16 # GND) # 
-- !p12_add9_2_anx42958z1 & !p21_sub10_3i3_anx46946z16)
-- p21_sub10_3i3_anx46946z13 = CARRY(p11_add9_1_anx42958z1 & p12_add9_2_anx42958z1 & !p21_sub10_3i3_anx46946z16 # !p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 # !p21_sub10_3i3_anx46946z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx42958z1,
	datab => p12_add9_2_anx42958z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z16,
	combout => p21_sub10_3i3_anx42958z1,
	cout => p21_sub10_3i3_anx46946z13);

p21_sub10_3i3_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx43955z1 = (p11_add9_1_anx43955z1 $ p12_add9_2_anx43955z1 $ p21_sub10_3i3_anx46946z13) # GND
-- p21_sub10_3i3_anx46946z10 = CARRY(p11_add9_1_anx43955z1 & (!p21_sub10_3i3_anx46946z13 # !p12_add9_2_anx43955z1) # !p11_add9_1_anx43955z1 & !p12_add9_2_anx43955z1 & !p21_sub10_3i3_anx46946z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx43955z1,
	datab => p12_add9_2_anx43955z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z13,
	combout => p21_sub10_3i3_anx43955z1,
	cout => p21_sub10_3i3_anx46946z10);

p21_sub10_3i3_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx44952z1 = p11_add9_1_anx44952z1 & (p12_add9_2_anx44952z1 & !p21_sub10_3i3_anx46946z10 # !p12_add9_2_anx44952z1 & p21_sub10_3i3_anx46946z10 & VCC) # !p11_add9_1_anx44952z1 & (p12_add9_2_anx44952z1 & (p21_sub10_3i3_anx46946z10 # GND) # 
-- !p12_add9_2_anx44952z1 & !p21_sub10_3i3_anx46946z10)
-- p21_sub10_3i3_anx46946z7 = CARRY(p11_add9_1_anx44952z1 & p12_add9_2_anx44952z1 & !p21_sub10_3i3_anx46946z10 # !p11_add9_1_anx44952z1 & (p12_add9_2_anx44952z1 # !p21_sub10_3i3_anx46946z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx44952z1,
	datab => p12_add9_2_anx44952z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z10,
	combout => p21_sub10_3i3_anx44952z1,
	cout => p21_sub10_3i3_anx46946z7);

p21_sub10_3i3_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx45949z1 = (p12_add9_2_anx45949z1 $ p11_add9_1_anx45949z1 $ p21_sub10_3i3_anx46946z7) # GND
-- p21_sub10_3i3_anx46946z4 = CARRY(p12_add9_2_anx45949z1 & p11_add9_1_anx45949z1 & !p21_sub10_3i3_anx46946z7 # !p12_add9_2_anx45949z1 & (p11_add9_1_anx45949z1 # !p21_sub10_3i3_anx46946z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx45949z1,
	datab => p11_add9_1_anx45949z1,
	datad => VCC,
	cin => p21_sub10_3i3_anx46946z7,
	combout => p21_sub10_3i3_anx45949z1,
	cout => p21_sub10_3i3_anx46946z4);

p21_sub10_3i3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub10_3i3_anx23445z1 = !p21_sub10_3i3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p21_sub10_3i3_anx23445z2,
	combout => p21_sub10_3i3_anx23445z1);

p21_sub11_3i1_aix46946z52934 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx46946z29 = CARRY(p11_add9_1_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx37973z1,
	datad => VCC,
	cout => p21_sub11_3i1_anx46946z29);

p21_sub11_3i1_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx39967z1 = p12_add9_2_anx40964z1 & (p11_add9_1_anx39967z1 & !p21_sub11_3i1_anx46946z24 # !p11_add9_1_anx39967z1 & (p21_sub11_3i1_anx46946z24 # GND)) # !p12_add9_2_anx40964z1 & (p11_add9_1_anx39967z1 & p21_sub11_3i1_anx46946z24 & VCC # 
-- !p11_add9_1_anx39967z1 & !p21_sub11_3i1_anx46946z24)
-- p21_sub11_3i1_anx46946z21 = CARRY(p12_add9_2_anx40964z1 & (!p21_sub11_3i1_anx46946z24 # !p11_add9_1_anx39967z1) # !p12_add9_2_anx40964z1 & !p11_add9_1_anx39967z1 & !p21_sub11_3i1_anx46946z24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx40964z1,
	datab => p11_add9_1_anx39967z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z24,
	combout => p21_sub11_3i1_anx39967z1,
	cout => p21_sub11_3i1_anx46946z21);

p21_sub11_3i1_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx44952z1 = (p11_add9_1_anx44952z1 $ p12_add9_2_anx45949z1 $ p21_sub11_3i1_anx46946z9) # GND
-- p21_sub11_3i1_anx46946z6 = CARRY(p11_add9_1_anx44952z1 & (!p21_sub11_3i1_anx46946z9 # !p12_add9_2_anx45949z1) # !p11_add9_1_anx44952z1 & !p12_add9_2_anx45949z1 & !p21_sub11_3i1_anx46946z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx44952z1,
	datab => p12_add9_2_anx45949z1,
	datad => VCC,
	cin => p21_sub11_3i1_anx46946z9,
	combout => p21_sub11_3i1_anx44952z1,
	cout => p21_sub11_3i1_anx46946z6);

p21_sub11_3i1_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p21_sub11_3i1_anx46946z1 = p11_add9_1_anx23445z1 $ p21_sub11_3i1_anx46946z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p11_add9_1_anx23445z1,
	cin => p21_sub11_3i1_anx46946z3,
	combout => p21_sub11_3i1_anx46946z1);

ix52975z52630_aix62798z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx37973z1 = p12_add9_2_anx37973z1 & (p21_sub10_3i3_anx38970z1 $ VCC) # !p12_add9_2_anx37973z1 & p21_sub10_3i3_anx38970z1 & VCC
-- ix52975z52630_anx62798z30 = CARRY(p12_add9_2_anx37973z1 & p21_sub10_3i3_anx38970z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p12_add9_2_anx37973z1,
	datab => p21_sub10_3i3_anx38970z1,
	datad => VCC,
	combout => ix52975z52630_anx37973z1,
	cout => ix52975z52630_anx62798z30);

ix52975z52630_aix62798z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx38970z1 = p21_sub11_3i1_anx37973z1 & (p21_sub10_3i3_anx39967z1 & ix52975z52630_anx62798z30 & VCC # !p21_sub10_3i3_anx39967z1 & !ix52975z52630_anx62798z30) # !p21_sub11_3i1_anx37973z1 & (p21_sub10_3i3_anx39967z1 & 
-- !ix52975z52630_anx62798z30 # !p21_sub10_3i3_anx39967z1 & (ix52975z52630_anx62798z30 # GND))
-- ix52975z52630_anx62798z27 = CARRY(p21_sub11_3i1_anx37973z1 & !p21_sub10_3i3_anx39967z1 & !ix52975z52630_anx62798z30 # !p21_sub11_3i1_anx37973z1 & (!ix52975z52630_anx62798z30 # !p21_sub10_3i3_anx39967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx37973z1,
	datab => p21_sub10_3i3_anx39967z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z30,
	combout => ix52975z52630_anx38970z1,
	cout => ix52975z52630_anx62798z27);

ix52975z52630_aix62798z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx39967z1 = (p21_sub11_3i1_anx38970z1 $ p21_sub10_3i3_anx40964z1 $ !ix52975z52630_anx62798z27) # GND
-- ix52975z52630_anx62798z24 = CARRY(p21_sub11_3i1_anx38970z1 & (p21_sub10_3i3_anx40964z1 # !ix52975z52630_anx62798z27) # !p21_sub11_3i1_anx38970z1 & p21_sub10_3i3_anx40964z1 & !ix52975z52630_anx62798z27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx38970z1,
	datab => p21_sub10_3i3_anx40964z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z27,
	combout => ix52975z52630_anx39967z1,
	cout => ix52975z52630_anx62798z24);

ix52975z52630_aix62798z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx41961z1 = (p21_sub11_3i1_anx40964z1 $ p21_sub10_3i3_anx42958z1 $ !ix52975z52630_anx62798z21) # GND
-- ix52975z52630_anx62798z18 = CARRY(p21_sub11_3i1_anx40964z1 & (p21_sub10_3i3_anx42958z1 # !ix52975z52630_anx62798z21) # !p21_sub11_3i1_anx40964z1 & p21_sub10_3i3_anx42958z1 & !ix52975z52630_anx62798z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx40964z1,
	datab => p21_sub10_3i3_anx42958z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z21,
	combout => ix52975z52630_anx41961z1,
	cout => ix52975z52630_anx62798z18);

ix52975z52630_aix62798z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx42958z1 = p21_sub11_3i1_anx41961z1 & (p21_sub10_3i3_anx43955z1 & ix52975z52630_anx62798z18 & VCC # !p21_sub10_3i3_anx43955z1 & !ix52975z52630_anx62798z18) # !p21_sub11_3i1_anx41961z1 & (p21_sub10_3i3_anx43955z1 & 
-- !ix52975z52630_anx62798z18 # !p21_sub10_3i3_anx43955z1 & (ix52975z52630_anx62798z18 # GND))
-- ix52975z52630_anx62798z15 = CARRY(p21_sub11_3i1_anx41961z1 & !p21_sub10_3i3_anx43955z1 & !ix52975z52630_anx62798z18 # !p21_sub11_3i1_anx41961z1 & (!ix52975z52630_anx62798z18 # !p21_sub10_3i3_anx43955z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx41961z1,
	datab => p21_sub10_3i3_anx43955z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z18,
	combout => ix52975z52630_anx42958z1,
	cout => ix52975z52630_anx62798z15);

ix52975z52630_aix62798z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx43955z1 = (p21_sub11_3i1_anx42958z1 $ p21_sub10_3i3_anx44952z1 $ !ix52975z52630_anx62798z15) # GND
-- ix52975z52630_anx62798z12 = CARRY(p21_sub11_3i1_anx42958z1 & (p21_sub10_3i3_anx44952z1 # !ix52975z52630_anx62798z15) # !p21_sub11_3i1_anx42958z1 & p21_sub10_3i3_anx44952z1 & !ix52975z52630_anx62798z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx42958z1,
	datab => p21_sub10_3i3_anx44952z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z15,
	combout => ix52975z52630_anx43955z1,
	cout => ix52975z52630_anx62798z12);

ix52975z52630_aix62798z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx45949z1 = (p21_sub10_3i3_anx46946z1 $ p21_sub11_3i1_anx44952z1 $ !ix52975z52630_anx62798z9) # GND
-- ix52975z52630_anx62798z6 = CARRY(p21_sub10_3i3_anx46946z1 & (p21_sub11_3i1_anx44952z1 # !ix52975z52630_anx62798z9) # !p21_sub10_3i3_anx46946z1 & p21_sub11_3i1_anx44952z1 & !ix52975z52630_anx62798z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub10_3i3_anx46946z1,
	datab => p21_sub11_3i1_anx44952z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z9,
	combout => ix52975z52630_anx45949z1,
	cout => ix52975z52630_anx62798z6);

ix52975z52630_aix62798z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx46946z1 = p21_sub11_3i1_anx45949z1 & (p21_sub10_3i3_anx23445z1 & !ix52975z52630_anx62798z6 # !p21_sub10_3i3_anx23445z1 & ix52975z52630_anx62798z6 & VCC) # !p21_sub11_3i1_anx45949z1 & (p21_sub10_3i3_anx23445z1 & (ix52975z52630_anx62798z6 # 
-- GND) # !p21_sub10_3i3_anx23445z1 & !ix52975z52630_anx62798z6)
-- ix52975z52630_anx62798z4 = CARRY(p21_sub11_3i1_anx45949z1 & p21_sub10_3i3_anx23445z1 & !ix52975z52630_anx62798z6 # !p21_sub11_3i1_anx45949z1 & (p21_sub10_3i3_anx23445z1 # !ix52975z52630_anx62798z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_sub11_3i1_anx45949z1,
	datab => p21_sub10_3i3_anx23445z1,
	datad => VCC,
	cin => ix52975z52630_anx62798z6,
	combout => ix52975z52630_anx46946z1,
	cout => ix52975z52630_anx62798z4);

ix52975z52630_aix62798z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix52975z52630_anx62798z1 = p21_sub10_3i3_anx23445z1 $ ix52975z52630_anx62798z4 $ p21_sub11_3i1_anx46946z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p21_sub10_3i3_anx23445z1,
	datad => p21_sub11_3i1_anx46946z1,
	cin => ix52975z52630_anx62798z4,
	combout => ix52975z52630_anx62798z1);

reg_p21_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_11_a);

reg_p21_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_10_a);

reg_p22_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_9_a);

reg_p22_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_8_a);

reg_p21_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_7_a);

reg_p21_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_6_a);

reg_p21_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_5_a);

p22_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p22_4_afeeder_combout = ix47840z52631_anx40964z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ix47840z52631_anx40964z1,
	combout => p22_4_afeeder_combout);

reg_p22_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p22_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_4_a);

reg_p21_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_3_a);

reg_p21_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_2_a);

reg_p21_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_1_a);

reg_p21_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p21_sub10_3i3_anx37973z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_0_a);

ix45188z30868_aix100z52935 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z34 = CARRY(p22_0_a & !p21_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p22_0_a,
	datab => p21_0_a,
	datad => VCC,
	cout => ix45188z30868_anx100z34);

ix45188z30868_aix100z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z31 = CARRY(p22_1_a & p21_1_a & !ix45188z30868_anx100z34 # !p22_1_a & (p21_1_a # !ix45188z30868_anx100z34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_1_a,
	datab => p21_1_a,
	datad => VCC,
	cin => ix45188z30868_anx100z34,
	cout => ix45188z30868_anx100z31);

ix45188z30868_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z28 = CARRY(p22_2_a & (!ix45188z30868_anx100z31 # !p21_2_a) # !p22_2_a & !p21_2_a & !ix45188z30868_anx100z31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_2_a,
	datab => p21_2_a,
	datad => VCC,
	cin => ix45188z30868_anx100z31,
	cout => ix45188z30868_anx100z28);

ix45188z30868_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z25 = CARRY(p22_3_a & p21_3_a & !ix45188z30868_anx100z28 # !p22_3_a & (p21_3_a # !ix45188z30868_anx100z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_3_a,
	datab => p21_3_a,
	datad => VCC,
	cin => ix45188z30868_anx100z28,
	cout => ix45188z30868_anx100z25);

ix45188z30868_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z22 = CARRY(p21_4_a & p22_4_a & !ix45188z30868_anx100z25 # !p21_4_a & (p22_4_a # !ix45188z30868_anx100z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_4_a,
	datab => p22_4_a,
	datad => VCC,
	cin => ix45188z30868_anx100z25,
	cout => ix45188z30868_anx100z22);

ix45188z30868_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z19 = CARRY(p22_5_a & p21_5_a & !ix45188z30868_anx100z22 # !p22_5_a & (p21_5_a # !ix45188z30868_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_5_a,
	datab => p21_5_a,
	datad => VCC,
	cin => ix45188z30868_anx100z22,
	cout => ix45188z30868_anx100z19);

ix45188z30868_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z16 = CARRY(p22_6_a & (!ix45188z30868_anx100z19 # !p21_6_a) # !p22_6_a & !p21_6_a & !ix45188z30868_anx100z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_6_a,
	datab => p21_6_a,
	datad => VCC,
	cin => ix45188z30868_anx100z19,
	cout => ix45188z30868_anx100z16);

ix45188z30868_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z13 = CARRY(p22_7_a & p21_7_a & !ix45188z30868_anx100z16 # !p22_7_a & (p21_7_a # !ix45188z30868_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_7_a,
	datab => p21_7_a,
	datad => VCC,
	cin => ix45188z30868_anx100z16,
	cout => ix45188z30868_anx100z13);

ix45188z30868_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z10 = CARRY(p21_8_a & p22_8_a & !ix45188z30868_anx100z13 # !p21_8_a & (p22_8_a # !ix45188z30868_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_8_a,
	datab => p22_8_a,
	datad => VCC,
	cin => ix45188z30868_anx100z13,
	cout => ix45188z30868_anx100z10);

ix45188z30868_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z7 = CARRY(p21_9_a & (!ix45188z30868_anx100z10 # !p22_9_a) # !p21_9_a & !p22_9_a & !ix45188z30868_anx100z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p21_9_a,
	datab => p22_9_a,
	datad => VCC,
	cin => ix45188z30868_anx100z10,
	cout => ix45188z30868_anx100z7);

ix45188z30868_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z4 = CARRY(p22_10_a & (!ix45188z30868_anx100z7 # !p21_10_a) # !p22_10_a & !p21_10_a & !ix45188z30868_anx100z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p22_10_a,
	datab => p21_10_a,
	datad => VCC,
	cin => ix45188z30868_anx100z7,
	cout => ix45188z30868_anx100z4);

ix45188z30868_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z1 = p22_11_a & ix45188z30868_anx100z4 & p21_11_a # !p22_11_a & (ix45188z30868_anx100z4 # p21_11_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p22_11_a,
	datad => p21_11_a,
	cin => ix45188z30868_anx100z4,
	combout => ix45188z30868_anx100z1);

ix45188z30868_anx100z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- ix45188z30868_anx100z1_a_wirecell_combout = !ix45188z30868_anx100z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ix45188z30868_anx100z1,
	combout => ix45188z30868_anx100z1_a_wirecell_combout);

reg_p35 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix45188z30868_anx100z1_a_wirecell_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p35);

p45_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p45_afeeder_combout = p35

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p35,
	combout => p45_afeeder_combout);

reg_p45 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p45_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p45);

ix30409z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30409z1 = nx28524z1 $ p45

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx28524z1,
	datad => p45,
	combout => nx30409z1);

p31_11_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_11_afeeder_combout = p21_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_11_a,
	combout => p31_11_afeeder_combout);

reg_p31_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_11_afeeder_combout,
	sdata => p22_11_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_11_a);

i2_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(7),
	combout => i2_acombout(7));

i2_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(6),
	combout => i2_acombout(6));

i2_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(5),
	combout => i2_acombout(5));

i1_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(4),
	combout => i1_acombout(4));

i1_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(3),
	combout => i1_acombout(3));

i1_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(2),
	combout => i1_acombout(2));

i1_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i1(1),
	combout => i1_acombout(1));

i2_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i2(0),
	combout => i2_acombout(0));

p13_add8_0i3_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx37973z1 = i1_acombout(0) & (i2_acombout(0) $ VCC) # !i1_acombout(0) & i2_acombout(0) & VCC
-- p13_add8_0i3_anx44952z22 = CARRY(i1_acombout(0) & i2_acombout(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_acombout(0),
	datab => i2_acombout(0),
	datad => VCC,
	combout => p13_add8_0i3_anx37973z1,
	cout => p13_add8_0i3_anx44952z22);

p13_add8_0i3_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx39967z1 = (i2_acombout(2) $ i1_acombout(2) $ !p13_add8_0i3_anx44952z19) # GND
-- p13_add8_0i3_anx44952z16 = CARRY(i2_acombout(2) & (i1_acombout(2) # !p13_add8_0i3_anx44952z19) # !i2_acombout(2) & i1_acombout(2) & !p13_add8_0i3_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_acombout(2),
	datab => i1_acombout(2),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z19,
	combout => p13_add8_0i3_anx39967z1,
	cout => p13_add8_0i3_anx44952z16);

p13_add8_0i3_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx40964z1 = i2_acombout(3) & (i1_acombout(3) & p13_add8_0i3_anx44952z16 & VCC # !i1_acombout(3) & !p13_add8_0i3_anx44952z16) # !i2_acombout(3) & (i1_acombout(3) & !p13_add8_0i3_anx44952z16 # !i1_acombout(3) & (p13_add8_0i3_anx44952z16 # 
-- GND))
-- p13_add8_0i3_anx44952z13 = CARRY(i2_acombout(3) & !i1_acombout(3) & !p13_add8_0i3_anx44952z16 # !i2_acombout(3) & (!p13_add8_0i3_anx44952z16 # !i1_acombout(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_acombout(3),
	datab => i1_acombout(3),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z16,
	combout => p13_add8_0i3_anx40964z1,
	cout => p13_add8_0i3_anx44952z13);

p13_add8_0i3_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx42958z1 = i1_acombout(5) & (i2_acombout(5) & p13_add8_0i3_anx44952z10 & VCC # !i2_acombout(5) & !p13_add8_0i3_anx44952z10) # !i1_acombout(5) & (i2_acombout(5) & !p13_add8_0i3_anx44952z10 # !i2_acombout(5) & (p13_add8_0i3_anx44952z10 # 
-- GND))
-- p13_add8_0i3_anx44952z7 = CARRY(i1_acombout(5) & !i2_acombout(5) & !p13_add8_0i3_anx44952z10 # !i1_acombout(5) & (!p13_add8_0i3_anx44952z10 # !i2_acombout(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1_acombout(5),
	datab => i2_acombout(5),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z10,
	combout => p13_add8_0i3_anx42958z1,
	cout => p13_add8_0i3_anx44952z7);

p13_add8_0i3_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx43955z1 = (i1_acombout(6) $ i2_acombout(6) $ !p13_add8_0i3_anx44952z7) # GND
-- p13_add8_0i3_anx44952z4 = CARRY(i1_acombout(6) & (i2_acombout(6) # !p13_add8_0i3_anx44952z7) # !i1_acombout(6) & i2_acombout(6) & !p13_add8_0i3_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1_acombout(6),
	datab => i2_acombout(6),
	datad => VCC,
	cin => p13_add8_0i3_anx44952z7,
	combout => p13_add8_0i3_anx43955z1,
	cout => p13_add8_0i3_anx44952z4);

p13_add8_0i3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add8_0i3_anx23445z1 = !p13_add8_0i3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p13_add8_0i3_anx23445z2,
	combout => p13_add8_0i3_anx23445z1);

p13_add9_3_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx37973z1 = p13_add8_0i3_anx38970z1 & (p13_add8_0i3_anx37973z1 $ VCC) # !p13_add8_0i3_anx38970z1 & p13_add8_0i3_anx37973z1 & VCC
-- p13_add9_3_anx45949z17 = CARRY(p13_add8_0i3_anx38970z1 & p13_add8_0i3_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx38970z1,
	datab => p13_add8_0i3_anx37973z1,
	datad => VCC,
	combout => p13_add9_3_anx37973z1,
	cout => p13_add9_3_anx45949z17);

p13_add9_3_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx39967z1 = (p13_add8_0i3_anx39967z1 $ p13_add8_0i3_anx40964z1 $ !p13_add9_3_anx45949z15) # GND
-- p13_add9_3_anx45949z13 = CARRY(p13_add8_0i3_anx39967z1 & (p13_add8_0i3_anx40964z1 # !p13_add9_3_anx45949z15) # !p13_add8_0i3_anx39967z1 & p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx39967z1,
	datab => p13_add8_0i3_anx40964z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z15,
	combout => p13_add9_3_anx39967z1,
	cout => p13_add9_3_anx45949z13);

p13_add9_3_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx43955z1 = (p13_add8_0i3_anx44952z1 $ p13_add8_0i3_anx43955z1 $ !p13_add9_3_anx45949z7) # GND
-- p13_add9_3_anx45949z5 = CARRY(p13_add8_0i3_anx44952z1 & (p13_add8_0i3_anx43955z1 # !p13_add9_3_anx45949z7) # !p13_add8_0i3_anx44952z1 & p13_add8_0i3_anx43955z1 & !p13_add9_3_anx45949z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx44952z1,
	datab => p13_add8_0i3_anx43955z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z7,
	combout => p13_add9_3_anx43955z1,
	cout => p13_add9_3_anx45949z5);

p13_add9_3_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx44952z1 = p13_add8_0i3_anx44952z1 & (p13_add8_0i3_anx23445z1 & p13_add9_3_anx45949z5 & VCC # !p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z5) # !p13_add8_0i3_anx44952z1 & (p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z5 # 
-- !p13_add8_0i3_anx23445z1 & (p13_add9_3_anx45949z5 # GND))
-- p13_add9_3_anx45949z3 = CARRY(p13_add8_0i3_anx44952z1 & !p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z5 # !p13_add8_0i3_anx44952z1 & (!p13_add9_3_anx45949z5 # !p13_add8_0i3_anx23445z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p13_add8_0i3_anx44952z1,
	datab => p13_add8_0i3_anx23445z1,
	datad => VCC,
	cin => p13_add9_3_anx45949z5,
	combout => p13_add9_3_anx44952z1,
	cout => p13_add9_3_anx45949z3);

p13_add9_3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p13_add9_3_anx23445z1 = p13_add9_3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => p13_add9_3_anx23445z2,
	combout => p13_add9_3_anx23445z1);

reg_p23_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_10_a);

p32_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_10_afeeder_combout = p23_10_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p23_10_a,
	combout => p32_10_afeeder_combout);

reg_p32_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_10_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_10_a);

reg_p21_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix52975z52630_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p21_9_a);

p31_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_9_afeeder_combout = p21_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_9_a,
	combout => p31_9_afeeder_combout);

reg_p31_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_9_afeeder_combout,
	sdata => p22_9_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_9_a);

reg_p23_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_8_a);

p32_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_8_afeeder_combout = p23_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p23_8_a,
	combout => p32_8_afeeder_combout);

reg_p32_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_8_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_8_a);

reg_p23_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_7_a);

reg_p32_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p23_7_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_7_a);

p31_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_6_afeeder_combout = p21_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_6_a,
	combout => p31_6_afeeder_combout);

reg_p22_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_6_a);

reg_p31_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_6_afeeder_combout,
	sdata => p22_6_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_6_a);

p31_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_5_afeeder_combout = p21_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_5_a,
	combout => p31_5_afeeder_combout);

reg_p22_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix47840z52631_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_5_a);

reg_p31_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_5_afeeder_combout,
	sdata => p22_5_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_5_a);

p31_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_4_afeeder_combout = p21_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p21_4_a,
	combout => p31_4_afeeder_combout);

reg_p31_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_4_afeeder_combout,
	sdata => p22_4_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_4_a);

reg_p23_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_3_a);

reg_p32_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p23_3_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_3_a);

p31_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_2_afeeder_combout = p21_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => p21_2_a,
	combout => p31_2_afeeder_combout);

p22_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p22_2_afeeder_combout = ix47840z52631_anx38970z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ix47840z52631_anx38970z1,
	combout => p22_2_afeeder_combout);

reg_p22_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p22_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_2_a);

reg_p31_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_2_afeeder_combout,
	sdata => p22_2_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_2_a);

reg_p23_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p13_add9_3_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p23_1_a);

p32_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p32_1_afeeder_combout = p23_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => p23_1_a,
	combout => p32_1_afeeder_combout);

reg_p32_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p32_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p32_1_a);

p31_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- p31_0_afeeder_combout = p21_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p21_0_a,
	combout => p31_0_afeeder_combout);

reg_p22_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p22_sub10_3i4_anx37973z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p22_0_a);

reg_p31_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p31_0_afeeder_combout,
	sdata => p22_0_a,
	sload => ix45188z30868_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p31_0_a);

p4s_sub12_0_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx37973z1 = p32_0_a & (p31_0_a $ VCC) # !p32_0_a & (p31_0_a # GND)
-- p4s_sub12_0_anx63795z33 = CARRY(p31_0_a # !p32_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p32_0_a,
	datab => p31_0_a,
	datad => VCC,
	combout => p4s_sub12_0_anx37973z1,
	cout => p4s_sub12_0_anx63795z33);

p4s_sub12_0_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx38970z1 = p31_1_a & (p32_1_a & !p4s_sub12_0_anx63795z33 # !p32_1_a & p4s_sub12_0_anx63795z33 & VCC) # !p31_1_a & (p32_1_a & (p4s_sub12_0_anx63795z33 # GND) # !p32_1_a & !p4s_sub12_0_anx63795z33)
-- p4s_sub12_0_anx63795z30 = CARRY(p31_1_a & p32_1_a & !p4s_sub12_0_anx63795z33 # !p31_1_a & (p32_1_a # !p4s_sub12_0_anx63795z33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p31_1_a,
	datab => p32_1_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z33,
	combout => p4s_sub12_0_anx38970z1,
	cout => p4s_sub12_0_anx63795z30);

p4s_sub12_0_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx39967z1 = (p32_2_a $ p31_2_a $ p4s_sub12_0_anx63795z30) # GND
-- p4s_sub12_0_anx63795z27 = CARRY(p32_2_a & p31_2_a & !p4s_sub12_0_anx63795z30 # !p32_2_a & (p31_2_a # !p4s_sub12_0_anx63795z30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p32_2_a,
	datab => p31_2_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z30,
	combout => p4s_sub12_0_anx39967z1,
	cout => p4s_sub12_0_anx63795z27);

p4s_sub12_0_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx40964z1 = p31_3_a & (p32_3_a & !p4s_sub12_0_anx63795z27 # !p32_3_a & p4s_sub12_0_anx63795z27 & VCC) # !p31_3_a & (p32_3_a & (p4s_sub12_0_anx63795z27 # GND) # !p32_3_a & !p4s_sub12_0_anx63795z27)
-- p4s_sub12_0_anx63795z24 = CARRY(p31_3_a & p32_3_a & !p4s_sub12_0_anx63795z27 # !p31_3_a & (p32_3_a # !p4s_sub12_0_anx63795z27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p31_3_a,
	datab => p32_3_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z27,
	combout => p4s_sub12_0_anx40964z1,
	cout => p4s_sub12_0_anx63795z24);

p4s_sub12_0_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx41961z1 = (p32_4_a $ p31_4_a $ p4s_sub12_0_anx63795z24) # GND
-- p4s_sub12_0_anx63795z21 = CARRY(p32_4_a & p31_4_a & !p4s_sub12_0_anx63795z24 # !p32_4_a & (p31_4_a # !p4s_sub12_0_anx63795z24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p32_4_a,
	datab => p31_4_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z24,
	combout => p4s_sub12_0_anx41961z1,
	cout => p4s_sub12_0_anx63795z21);

p4s_sub12_0_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx42958z1 = p32_5_a & (p31_5_a & !p4s_sub12_0_anx63795z21 # !p31_5_a & (p4s_sub12_0_anx63795z21 # GND)) # !p32_5_a & (p31_5_a & p4s_sub12_0_anx63795z21 & VCC # !p31_5_a & !p4s_sub12_0_anx63795z21)
-- p4s_sub12_0_anx63795z18 = CARRY(p32_5_a & (!p4s_sub12_0_anx63795z21 # !p31_5_a) # !p32_5_a & !p31_5_a & !p4s_sub12_0_anx63795z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p32_5_a,
	datab => p31_5_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z21,
	combout => p4s_sub12_0_anx42958z1,
	cout => p4s_sub12_0_anx63795z18);

p4s_sub12_0_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx43955z1 = (p32_6_a $ p31_6_a $ p4s_sub12_0_anx63795z18) # GND
-- p4s_sub12_0_anx63795z15 = CARRY(p32_6_a & p31_6_a & !p4s_sub12_0_anx63795z18 # !p32_6_a & (p31_6_a # !p4s_sub12_0_anx63795z18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p32_6_a,
	datab => p31_6_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z18,
	combout => p4s_sub12_0_anx43955z1,
	cout => p4s_sub12_0_anx63795z15);

p4s_sub12_0_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx44952z1 = p31_7_a & (p32_7_a & !p4s_sub12_0_anx63795z15 # !p32_7_a & p4s_sub12_0_anx63795z15 & VCC) # !p31_7_a & (p32_7_a & (p4s_sub12_0_anx63795z15 # GND) # !p32_7_a & !p4s_sub12_0_anx63795z15)
-- p4s_sub12_0_anx63795z12 = CARRY(p31_7_a & p32_7_a & !p4s_sub12_0_anx63795z15 # !p31_7_a & (p32_7_a # !p4s_sub12_0_anx63795z15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p31_7_a,
	datab => p32_7_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z15,
	combout => p4s_sub12_0_anx44952z1,
	cout => p4s_sub12_0_anx63795z12);

p4s_sub12_0_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx45949z1 = (p31_8_a $ p32_8_a $ p4s_sub12_0_anx63795z12) # GND
-- p4s_sub12_0_anx63795z9 = CARRY(p31_8_a & (!p4s_sub12_0_anx63795z12 # !p32_8_a) # !p31_8_a & !p32_8_a & !p4s_sub12_0_anx63795z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p31_8_a,
	datab => p32_8_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z12,
	combout => p4s_sub12_0_anx45949z1,
	cout => p4s_sub12_0_anx63795z9);

p4s_sub12_0_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx46946z1 = p32_9_a & (p31_9_a & !p4s_sub12_0_anx63795z9 # !p31_9_a & (p4s_sub12_0_anx63795z9 # GND)) # !p32_9_a & (p31_9_a & p4s_sub12_0_anx63795z9 & VCC # !p31_9_a & !p4s_sub12_0_anx63795z9)
-- p4s_sub12_0_anx63795z6 = CARRY(p32_9_a & (!p4s_sub12_0_anx63795z9 # !p31_9_a) # !p32_9_a & !p31_9_a & !p4s_sub12_0_anx63795z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p32_9_a,
	datab => p31_9_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z9,
	combout => p4s_sub12_0_anx46946z1,
	cout => p4s_sub12_0_anx63795z6);

p4s_sub12_0_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx62798z1 = (p31_10_a $ p32_10_a $ p4s_sub12_0_anx63795z6) # GND
-- p4s_sub12_0_anx63795z3 = CARRY(p31_10_a & (!p4s_sub12_0_anx63795z6 # !p32_10_a) # !p31_10_a & !p32_10_a & !p4s_sub12_0_anx63795z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p31_10_a,
	datab => p32_10_a,
	datad => VCC,
	cin => p4s_sub12_0_anx63795z6,
	combout => p4s_sub12_0_anx62798z1,
	cout => p4s_sub12_0_anx63795z3);

p4s_sub12_0_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- p4s_sub12_0_anx63795z1 = p4s_sub12_0_anx63795z3 $ !p31_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => p31_11_a,
	cin => p4s_sub12_0_anx63795z3,
	combout => p4s_sub12_0_anx63795z1);

reg_p43_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx63795z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_11_a);

reg_p43_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_10_a);

ix30361z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30361z1 = i_reset_acombout # state_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	datad => state_3_a,
	combout => nx30361z1);

reg_p43_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_2_a);

reg_prev_max_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_2_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_2_a);

reg_p43_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_3_a);

reg_prev_max_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_3_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_3_a);

ix31358z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z8 = p43_2_a & (prev_max_3_a $ p43_3_a # !prev_max_2_a) # !p43_2_a & (prev_max_2_a # prev_max_3_a $ p43_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p43_2_a,
	datab => prev_max_2_a,
	datac => prev_max_3_a,
	datad => p43_3_a,
	combout => nx31358z8);

reg_max_fwd : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p45,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => max_fwd);

ix31358z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z10 = !max_fwd & p45

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => max_fwd,
	datad => p45,
	combout => nx31358z10);

reg_p43_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_7_a);

reg_prev_max_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_7_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_7_a);

reg_p43_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_6_a);

reg_prev_max_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_6_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_6_a);

ix31358z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z6 = p43_6_a & (prev_max_7_a $ p43_7_a # !prev_max_6_a) # !p43_6_a & (prev_max_6_a # prev_max_7_a $ p43_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p43_6_a,
	datab => prev_max_7_a,
	datac => prev_max_6_a,
	datad => p43_7_a,
	combout => nx31358z6);

ix31358z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z4 = prev_max_11_a & (p43_10_a $ prev_max_10_a # !p43_11_a) # !prev_max_11_a & (p43_11_a # p43_10_a $ prev_max_10_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_11_a,
	datab => p43_10_a,
	datac => prev_max_10_a,
	datad => p43_11_a,
	combout => nx31358z4);

reg_p43_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_4_a);

reg_p43_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_5_a);

reg_prev_max_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_5_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_5_a);

reg_prev_max_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_4_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_4_a);

ix31358z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z7 = p43_5_a & (p43_4_a $ prev_max_4_a # !prev_max_5_a) # !p43_5_a & (prev_max_5_a # p43_4_a $ prev_max_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p43_5_a,
	datab => p43_4_a,
	datac => prev_max_5_a,
	datad => prev_max_4_a,
	combout => nx31358z7);

ix31358z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z3 = nx31358z5 # nx31358z6 # nx31358z4 # nx31358z7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx31358z5,
	datab => nx31358z6,
	datac => nx31358z4,
	datad => nx31358z7,
	combout => nx31358z3);

ix31358z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z2 = !nx31358z9 & !nx31358z8 & nx31358z10 & !nx31358z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx31358z9,
	datab => nx31358z8,
	datac => nx31358z10,
	datad => nx31358z3,
	combout => nx31358z2);

ix31358z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx31358z1 = i_reset_acombout # state_3_a # ix32403z30872_anx100z1 # nx31358z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => state_3_a,
	datac => ix32403z30872_anx100z1,
	datad => nx31358z2,
	combout => nx31358z1);

reg_prev_max_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_10_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_10_a);

reg_p43_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_9_a);

reg_prev_max_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p43_9_a,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_max_9_a);

reg_p43_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_8_a);

reg_p43_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_1_a);

reg_p43_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => p4s_sub12_0_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p43_0_a);

ix32403z30872_aix100z52935 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z34 = CARRY(!prev_max_0_a & p43_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_0_a,
	datab => p43_0_a,
	datad => VCC,
	cout => ix32403z30872_anx100z34);

ix32403z30872_aix100z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z31 = CARRY(prev_max_1_a & (!ix32403z30872_anx100z34 # !p43_1_a) # !prev_max_1_a & !p43_1_a & !ix32403z30872_anx100z34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_1_a,
	datab => p43_1_a,
	datad => VCC,
	cin => ix32403z30872_anx100z34,
	cout => ix32403z30872_anx100z31);

ix32403z30872_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z28 = CARRY(prev_max_2_a & p43_2_a & !ix32403z30872_anx100z31 # !prev_max_2_a & (p43_2_a # !ix32403z30872_anx100z31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_2_a,
	datab => p43_2_a,
	datad => VCC,
	cin => ix32403z30872_anx100z31,
	cout => ix32403z30872_anx100z28);

ix32403z30872_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z25 = CARRY(prev_max_3_a & (!ix32403z30872_anx100z28 # !p43_3_a) # !prev_max_3_a & !p43_3_a & !ix32403z30872_anx100z28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_3_a,
	datab => p43_3_a,
	datad => VCC,
	cin => ix32403z30872_anx100z28,
	cout => ix32403z30872_anx100z25);

ix32403z30872_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z22 = CARRY(prev_max_4_a & p43_4_a & !ix32403z30872_anx100z25 # !prev_max_4_a & (p43_4_a # !ix32403z30872_anx100z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_4_a,
	datab => p43_4_a,
	datad => VCC,
	cin => ix32403z30872_anx100z25,
	cout => ix32403z30872_anx100z22);

ix32403z30872_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z19 = CARRY(p43_5_a & prev_max_5_a & !ix32403z30872_anx100z22 # !p43_5_a & (prev_max_5_a # !ix32403z30872_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p43_5_a,
	datab => prev_max_5_a,
	datad => VCC,
	cin => ix32403z30872_anx100z22,
	cout => ix32403z30872_anx100z19);

ix32403z30872_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z16 = CARRY(p43_6_a & (!ix32403z30872_anx100z19 # !prev_max_6_a) # !p43_6_a & !prev_max_6_a & !ix32403z30872_anx100z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p43_6_a,
	datab => prev_max_6_a,
	datad => VCC,
	cin => ix32403z30872_anx100z19,
	cout => ix32403z30872_anx100z16);

ix32403z30872_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z13 = CARRY(prev_max_7_a & (!ix32403z30872_anx100z16 # !p43_7_a) # !prev_max_7_a & !p43_7_a & !ix32403z30872_anx100z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_7_a,
	datab => p43_7_a,
	datad => VCC,
	cin => ix32403z30872_anx100z16,
	cout => ix32403z30872_anx100z13);

ix32403z30872_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z10 = CARRY(prev_max_8_a & p43_8_a & !ix32403z30872_anx100z13 # !prev_max_8_a & (p43_8_a # !ix32403z30872_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_8_a,
	datab => p43_8_a,
	datad => VCC,
	cin => ix32403z30872_anx100z13,
	cout => ix32403z30872_anx100z10);

ix32403z30872_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z7 = CARRY(p43_9_a & prev_max_9_a & !ix32403z30872_anx100z10 # !p43_9_a & (prev_max_9_a # !ix32403z30872_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p43_9_a,
	datab => prev_max_9_a,
	datad => VCC,
	cin => ix32403z30872_anx100z10,
	cout => ix32403z30872_anx100z7);

ix32403z30872_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z4 = CARRY(p43_10_a & (!ix32403z30872_anx100z7 # !prev_max_10_a) # !p43_10_a & !prev_max_10_a & !ix32403z30872_anx100z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p43_10_a,
	datab => prev_max_10_a,
	datad => VCC,
	cin => ix32403z30872_anx100z7,
	cout => ix32403z30872_anx100z4);

ix32403z30872_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix32403z30872_anx100z1 = prev_max_11_a & (ix32403z30872_anx100z4 # !p43_11_a) # !prev_max_11_a & ix32403z30872_anx100z4 & !p43_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prev_max_11_a,
	datad => p43_11_a,
	cin => ix32403z30872_anx100z4,
	combout => ix32403z30872_anx100z1);

ix32403z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx32403z3 = ix32403z30872_anx100z1 # nx31358z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ix32403z30872_anx100z1,
	datad => nx31358z2,
	combout => nx32403z3);

reg_out_o_dir_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx30409z1,
	ena => nx32403z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63886z1);

ix32403z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx32403z5 = nx28524z1 & !state_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx28524z1,
	datac => state_1_a,
	combout => nx32403z5);

ix32403z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx32403z2 = nx32403z3 & (state_2_a # state_3_a # !nx32403z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_2_a,
	datab => nx32403z5,
	datac => state_3_a,
	datad => nx32403z3,
	combout => nx32403z2);

reg_out_o_dir_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx32403z5,
	ena => nx32403z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62889z1);

ix32403z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx32403z1 = nx28524z1 & (state_1_a # !state_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_2_a,
	datab => nx28524z1,
	datac => state_1_a,
	combout => nx32403z1);

reg_out_o_dir_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx32403z1,
	ena => nx32403z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx61892z1);

ix26026z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx26026z2 = !p4s_sub12_0_anx63795z1 & (p4s_sub12_0_anx46946z1 # p4s_sub12_0_anx44952z1 & p4s_sub12_0_anx45949z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4s_sub12_0_anx44952z1,
	datab => p4s_sub12_0_anx45949z1,
	datac => p4s_sub12_0_anx46946z1,
	datad => p4s_sub12_0_anx63795z1,
	combout => nx26026z2);

ix26026z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26026z1 = nx26026z2 # !p4s_sub12_0_anx63795z1 & p4s_sub12_0_anx62798z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p4s_sub12_0_anx63795z1,
	datac => p4s_sub12_0_anx62798z1,
	datad => nx26026z2,
	combout => nx26026z1);

reg_p41 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26026z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p41);

reg_prev_edge : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => p41,
	sclr => nx30361z1,
	sload => VCC,
	ena => nx31358z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prev_edge);

nx45767z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx45767z1_afeeder_combout = prev_edge

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => prev_edge,
	combout => nx45767z1_afeeder_combout);

reg_out_o_edge_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45767z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45767z1);

reg_o_valid : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => state_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_valid_dup0);

i_mode_ibuf_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_mode(0),
	regout => nx42010z1);

nx47145z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx47145z1_afeeder_combout = nx42010z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx42010z1,
	combout => nx47145z1_afeeder_combout);

ix259_reg_p3m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx47145z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47145z1);

nx13256z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx13256z1_afeeder_combout = nx47145z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx47145z1,
	combout => nx13256z1_afeeder_combout);

ix259_reg_p4m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx13256z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx13256z1);

ix259_reg_p5m_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => nx13256z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p5m_0_a);

ix47893z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_mode_dup0_0_a = p5m_0_a # i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => p5m_0_a,
	datad => i_reset_acombout,
	combout => o_mode_dup0_0_a);

i_mode_ibuf_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_mode(1),
	regout => nx41013z1);

nx46148z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx46148z1_afeeder_combout = nx41013z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx41013z1,
	combout => nx46148z1_afeeder_combout);

ix259_reg_p3m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx46148z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46148z1);

nx14253z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx14253z1_afeeder_combout = nx46148z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx46148z1,
	combout => nx14253z1_afeeder_combout);

ix259_reg_p4m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx14253z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx14253z1);

ix259_reg_p5m_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => nx14253z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p5m_1_a);

ix46896z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_mode_dup0_1_a = p5m_1_a & !i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => p5m_1_a,
	datad => i_reset_acombout,
	combout => o_mode_dup0_1_a);

i_row_ibuf_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(0),
	regout => nx22790z1);

nx27925z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx27925z1_afeeder_combout = nx22790z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx22790z1,
	combout => nx27925z1_afeeder_combout);

ix258_reg_p3r_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx27925z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx27925z1);

nx38634z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx38634z1_afeeder_combout = nx27925z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx27925z1,
	combout => nx38634z1_afeeder_combout);

ix258_reg_p4r_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx38634z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx38634z1);

nx16335z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx16335z1_afeeder_combout = nx38634z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx38634z1,
	combout => nx16335z1_afeeder_combout);

reg_out_o_row_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx16335z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx16335z1);

i_row_ibuf_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(1),
	regout => nx21793z1);

nx26928z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx26928z1_afeeder_combout = nx21793z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx21793z1,
	combout => nx26928z1_afeeder_combout);

ix258_reg_p3r_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26928z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx26928z1);

nx39631z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx39631z1_afeeder_combout = nx26928z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx26928z1,
	combout => nx39631z1_afeeder_combout);

ix258_reg_p4r_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx39631z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx39631z1);

nx17332z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx17332z1_afeeder_combout = nx39631z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx39631z1,
	combout => nx17332z1_afeeder_combout);

reg_out_o_row_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx17332z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx17332z1);

i_row_ibuf_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(2),
	regout => nx20796z1);

nx25931z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx25931z1_afeeder_combout = nx20796z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx20796z1,
	combout => nx25931z1_afeeder_combout);

ix258_reg_p3r_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx25931z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx25931z1);

nx40628z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx40628z1_afeeder_combout = nx25931z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx25931z1,
	combout => nx40628z1_afeeder_combout);

ix258_reg_p4r_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx40628z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx40628z1);

nx18329z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx18329z1_afeeder_combout = nx40628z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx40628z1,
	combout => nx18329z1_afeeder_combout);

reg_out_o_row_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx18329z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx18329z1);

i_row_ibuf_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(3),
	regout => nx19799z1);

nx24934z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx24934z1_afeeder_combout = nx19799z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx19799z1,
	combout => nx24934z1_afeeder_combout);

ix258_reg_p3r_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx24934z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx24934z1);

nx41625z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx41625z1_afeeder_combout = nx24934z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx24934z1,
	combout => nx41625z1_afeeder_combout);

ix258_reg_p4r_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx41625z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41625z1);

nx19326z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx19326z1_afeeder_combout = nx41625z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx41625z1,
	combout => nx19326z1_afeeder_combout);

reg_out_o_row_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx19326z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx19326z1);

i_row_ibuf_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(4),
	regout => nx18802z1);

nx23937z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx23937z1_afeeder_combout = nx18802z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx18802z1,
	combout => nx23937z1_afeeder_combout);

ix258_reg_p3r_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23937z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23937z1);

nx42622z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx42622z1_afeeder_combout = nx23937z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx23937z1,
	combout => nx42622z1_afeeder_combout);

ix258_reg_p4r_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx42622z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42622z1);

nx20323z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx20323z1_afeeder_combout = nx42622z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx42622z1,
	combout => nx20323z1_afeeder_combout);

reg_out_o_row_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20323z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20323z1);

i_row_ibuf_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(5),
	regout => nx17805z1);

nx22940z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx22940z1_afeeder_combout = nx17805z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx17805z1,
	combout => nx22940z1_afeeder_combout);

ix258_reg_p3r_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22940z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22940z1);

nx43619z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx43619z1_afeeder_combout = nx22940z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx22940z1,
	combout => nx43619z1_afeeder_combout);

ix258_reg_p4r_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43619z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43619z1);

nx21320z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx21320z1_afeeder_combout = nx43619z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx43619z1,
	combout => nx21320z1_afeeder_combout);

reg_out_o_row_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21320z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21320z1);

i_row_ibuf_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(6),
	regout => nx16808z1);

nx21943z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx21943z1_afeeder_combout = nx16808z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx16808z1,
	combout => nx21943z1_afeeder_combout);

ix258_reg_p3r_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21943z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21943z1);

nx44616z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx44616z1_afeeder_combout = nx21943z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx21943z1,
	combout => nx44616z1_afeeder_combout);

ix258_reg_p4r_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44616z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44616z1);

nx22317z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx22317z1_afeeder_combout = nx44616z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx44616z1,
	combout => nx22317z1_afeeder_combout);

reg_out_o_row_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22317z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22317z1);

i_row_ibuf_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
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
	inclk => i_clock_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_row(7),
	regout => nx15811z1);

nx20946z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx20946z1_afeeder_combout = nx15811z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx15811z1,
	combout => nx20946z1_afeeder_combout);

ix258_reg_p3r_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20946z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20946z1);

nx45613z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx45613z1_afeeder_combout = nx20946z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx20946z1,
	combout => nx45613z1_afeeder_combout);

ix258_reg_p4r_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45613z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45613z1);

nx23314z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx23314z1_afeeder_combout = nx45613z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx45613z1,
	combout => nx23314z1_afeeder_combout);

reg_out_o_row_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23314z1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23314z1);

ix6038z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_valid);

debug_num_0_triBus1_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(0));

debug_num_0_triBus1_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(1));

debug_num_0_triBus1_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(2));

debug_num_0_triBus1_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(3));

debug_num_0_triBus1_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(4));

debug_num_0_triBus1_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(5));

debug_num_0_triBus1_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(6));

debug_num_0_triBus1_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_0(7));

debug_num_1_triBus2_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(0));

debug_num_1_triBus2_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(1));

debug_num_1_triBus2_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(2));

debug_num_1_triBus2_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(3));

debug_num_1_triBus2_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(4));

debug_num_1_triBus2_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(5));

debug_num_1_triBus2_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(6));

debug_num_1_triBus2_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_1(7));

debug_num_2_triBus3_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(0));

debug_num_2_triBus3_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(1));

debug_num_2_triBus3_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(2));

debug_num_2_triBus3_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(3));

debug_num_2_triBus3_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(4));

debug_num_2_triBus3_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(5));

debug_num_2_triBus3_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(6));

debug_num_2_triBus3_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_2(7));

debug_num_3_triBus4_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_3_triBus4_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_4_triBus5_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_5_triBus6_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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

debug_num_6_triBus7_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(0));

debug_num_6_triBus7_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(1));

debug_num_6_triBus7_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(2));

debug_num_6_triBus7_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(3));

debug_num_6_triBus7_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(4));

debug_num_6_triBus7_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(5));

debug_num_6_triBus7_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(6));

debug_num_6_triBus7_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_6(7));

debug_num_7_triBus8_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(0));

debug_num_7_triBus8_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(1));

debug_num_7_triBus8_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(2));

debug_num_7_triBus8_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(3));

debug_num_7_triBus8_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(4));

debug_num_7_triBus8_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(5));

debug_num_7_triBus8_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(6));

debug_num_7_triBus8_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_7(7));

debug_num_8_triBus9_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(0));

debug_num_8_triBus9_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(1));

debug_num_8_triBus9_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(2));

debug_num_8_triBus9_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(3));

debug_num_8_triBus9_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(4));

debug_num_8_triBus9_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(5));

debug_num_8_triBus9_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(6));

debug_num_8_triBus9_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_debug_num_8(7));

ix63886z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx63886z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(0));

ix62889z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx62889z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(1));

ix61892z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx61892z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(2));

ix45767z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx45767z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_edge);

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
	datain => o_mode_dup0_1_a,
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
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity flow is
  port (
      debug_valid  : out STD_LOGIC
    ; debug_num_0  : out UNSIGNED (7 downto 0)
    ; debug_num_1  : out UNSIGNED (7 downto 0)
    ; debug_num_2  : out UNSIGNED (7 downto 0)
    ; debug_num_3  : out UNSIGNED (7 downto 0)
    ; debug_num_4  : out UNSIGNED (7 downto 0)
    ; debug_num_5  : out UNSIGNED (7 downto 0)
    ; debug_num_6  : out UNSIGNED (7 downto 0)
    ; debug_num_7  : out UNSIGNED (7 downto 0)
    ; debug_num_8  : out UNSIGNED (7 downto 0)
    ; t1  : in UNSIGNED (7 downto 0)
    ; t2  : in UNSIGNED (7 downto 0)
    ; t3  : in UNSIGNED (7 downto 0)
    ; b1  : in UNSIGNED (7 downto 0)
    ; b2  : in UNSIGNED (7 downto 0)
    ; b3  : in UNSIGNED (7 downto 0)
    ; i1  : in UNSIGNED (7 downto 0)
    ; i2  : in UNSIGNED (7 downto 0)
    ; i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_mode  : in std_logic_vector (1 downto 0)
    ; i_row  : in std_logic_vector (7 downto 0)
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_edge  : out STD_LOGIC
    ; o_valid  : out STD_LOGIC
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of flow is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.flow_chip
    port map (
        debug_valid => debug_valid
      , debug_num_0(7) => debug_num_0(7)
      , debug_num_0(6) => debug_num_0(6)
      , debug_num_0(5) => debug_num_0(5)
      , debug_num_0(4) => debug_num_0(4)
      , debug_num_0(3) => debug_num_0(3)
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(7) => debug_num_1(7)
      , debug_num_1(6) => debug_num_1(6)
      , debug_num_1(5) => debug_num_1(5)
      , debug_num_1(4) => debug_num_1(4)
      , debug_num_1(3) => debug_num_1(3)
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
      , debug_num_3(7) => debug_num_3(7)
      , debug_num_3(6) => debug_num_3(6)
      , debug_num_3(5) => debug_num_3(5)
      , debug_num_3(4) => debug_num_3(4)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(7) => debug_num_4(7)
      , debug_num_4(6) => debug_num_4(6)
      , debug_num_4(5) => debug_num_4(5)
      , debug_num_4(4) => debug_num_4(4)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(7) => debug_num_5(7)
      , debug_num_5(6) => debug_num_5(6)
      , debug_num_5(5) => debug_num_5(5)
      , debug_num_5(4) => debug_num_5(4)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
      , debug_num_6(7) => debug_num_6(7)
      , debug_num_6(6) => debug_num_6(6)
      , debug_num_6(5) => debug_num_6(5)
      , debug_num_6(4) => debug_num_6(4)
      , debug_num_6(3) => debug_num_6(3)
      , debug_num_6(2) => debug_num_6(2)
      , debug_num_6(1) => debug_num_6(1)
      , debug_num_6(0) => debug_num_6(0)
      , debug_num_7(7) => debug_num_7(7)
      , debug_num_7(6) => debug_num_7(6)
      , debug_num_7(5) => debug_num_7(5)
      , debug_num_7(4) => debug_num_7(4)
      , debug_num_7(3) => debug_num_7(3)
      , debug_num_7(2) => debug_num_7(2)
      , debug_num_7(1) => debug_num_7(1)
      , debug_num_7(0) => debug_num_7(0)
      , debug_num_8(7) => debug_num_8(7)
      , debug_num_8(6) => debug_num_8(6)
      , debug_num_8(5) => debug_num_8(5)
      , debug_num_8(4) => debug_num_8(4)
      , debug_num_8(3) => debug_num_8(3)
      , debug_num_8(2) => debug_num_8(2)
      , debug_num_8(1) => debug_num_8(1)
      , debug_num_8(0) => debug_num_8(0)
      , t1(7) => t1(7)
      , t1(6) => t1(6)
      , t1(5) => t1(5)
      , t1(4) => t1(4)
      , t1(3) => t1(3)
      , t1(2) => t1(2)
      , t1(1) => t1(1)
      , t1(0) => t1(0)
      , t2(7) => t2(7)
      , t2(6) => t2(6)
      , t2(5) => t2(5)
      , t2(4) => t2(4)
      , t2(3) => t2(3)
      , t2(2) => t2(2)
      , t2(1) => t2(1)
      , t2(0) => t2(0)
      , t3(7) => t3(7)
      , t3(6) => t3(6)
      , t3(5) => t3(5)
      , t3(4) => t3(4)
      , t3(3) => t3(3)
      , t3(2) => t3(2)
      , t3(1) => t3(1)
      , t3(0) => t3(0)
      , b1(7) => b1(7)
      , b1(6) => b1(6)
      , b1(5) => b1(5)
      , b1(4) => b1(4)
      , b1(3) => b1(3)
      , b1(2) => b1(2)
      , b1(1) => b1(1)
      , b1(0) => b1(0)
      , b2(7) => b2(7)
      , b2(6) => b2(6)
      , b2(5) => b2(5)
      , b2(4) => b2(4)
      , b2(3) => b2(3)
      , b2(2) => b2(2)
      , b2(1) => b2(1)
      , b2(0) => b2(0)
      , b3(7) => b3(7)
      , b3(6) => b3(6)
      , b3(5) => b3(5)
      , b3(4) => b3(4)
      , b3(3) => b3(3)
      , b3(2) => b3(2)
      , b3(1) => b3(1)
      , b3(0) => b3(0)
      , i1(7) => i1(7)
      , i1(6) => i1(6)
      , i1(5) => i1(5)
      , i1(4) => i1(4)
      , i1(3) => i1(3)
      , i1(2) => i1(2)
      , i1(1) => i1(1)
      , i1(0) => i1(0)
      , i2(7) => i2(7)
      , i2(6) => i2(6)
      , i2(5) => i2(5)
      , i2(4) => i2(4)
      , i2(3) => i2(3)
      , i2(2) => i2(2)
      , i2(1) => i2(1)
      , i2(0) => i2(0)
      , i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_mode(1) => i_mode(1)
      , i_mode(0) => i_mode(0)
      , i_row(7) => i_row(7)
      , i_row(6) => i_row(6)
      , i_row(5) => i_row(5)
      , i_row(4) => i_row(4)
      , i_row(3) => i_row(3)
      , i_row(2) => i_row(2)
      , i_row(1) => i_row(1)
      , i_row(0) => i_row(0)
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_edge => o_edge
      , o_valid => o_valid
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
    );
end architecture;

