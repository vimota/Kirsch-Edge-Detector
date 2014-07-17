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

-- DATE "07/16/2014 19:27:39"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	max_chip IS
    PORT (
	i_left : IN std_logic_vector(12 DOWNTO 0);
	i_right : IN std_logic_vector(12 DOWNTO 0);
	o_max : OUT std_logic_vector(12 DOWNTO 0);
	o_left_greater : OUT std_logic
	);
END max_chip;

ARCHITECTURE structure OF max_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_left : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_i_right : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_o_max : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_o_left_greater : std_logic;
SIGNAL ix33371z19901_anx100z37 : std_logic;
SIGNAL ix33371z19901_anx100z34 : std_logic;
SIGNAL ix33371z19901_anx100z31 : std_logic;
SIGNAL ix33371z19901_anx100z28 : std_logic;
SIGNAL ix33371z19901_anx100z25 : std_logic;
SIGNAL ix33371z19901_anx100z22 : std_logic;
SIGNAL ix33371z19901_anx100z19 : std_logic;
SIGNAL ix33371z19901_anx100z16 : std_logic;
SIGNAL ix33371z19901_anx100z13 : std_logic;
SIGNAL ix33371z19901_anx100z10 : std_logic;
SIGNAL ix33371z19901_anx100z7 : std_logic;
SIGNAL ix33371z19901_anx100z4 : std_logic;
SIGNAL ix33371z19901_anx100z1 : std_logic;
SIGNAL o_max_dup0_0_a : std_logic;
SIGNAL o_max_dup0_1_a : std_logic;
SIGNAL o_max_dup0_2_a : std_logic;
SIGNAL o_max_dup0_3_a : std_logic;
SIGNAL o_max_dup0_4_a : std_logic;
SIGNAL o_max_dup0_5_a : std_logic;
SIGNAL o_max_dup0_6_a : std_logic;
SIGNAL o_max_dup0_7_a : std_logic;
SIGNAL o_max_dup0_8_a : std_logic;
SIGNAL o_max_dup0_9_a : std_logic;
SIGNAL o_max_dup0_10_a : std_logic;
SIGNAL o_max_dup0_11_a : std_logic;
SIGNAL o_max_dup0_12_a : std_logic;
SIGNAL i_left_acombout : std_logic_vector(12 DOWNTO 0);
SIGNAL i_right_acombout : std_logic_vector(12 DOWNTO 0);

BEGIN

ww_i_left <= i_left;
ww_i_right <= i_right;
o_max <= ww_o_max;
o_left_greater <= ww_o_left_greater;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

i_right_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(0),
	combout => i_right_acombout(0));

i_right_ibuf_12_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(12),
	combout => i_right_acombout(12));

i_left_ibuf_12_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(12),
	combout => i_left_acombout(12));

i_left_ibuf_11_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(11),
	combout => i_left_acombout(11));

i_left_ibuf_10_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(10),
	combout => i_left_acombout(10));

i_right_ibuf_9_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(9),
	combout => i_right_acombout(9));

i_left_ibuf_8_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(8),
	combout => i_left_acombout(8));

i_right_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(7),
	combout => i_right_acombout(7));

i_right_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(6),
	combout => i_right_acombout(6));

i_left_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(5),
	combout => i_left_acombout(5));

i_left_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(4),
	combout => i_left_acombout(4));

i_left_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(3),
	combout => i_left_acombout(3));

i_right_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(2),
	combout => i_right_acombout(2));

i_right_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(1),
	combout => i_right_acombout(1));

i_left_ibuf_0_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(0),
	combout => i_left_acombout(0));

ix33371z19901_aix100z52936 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z37 = CARRY(!i_right_acombout(0) & i_left_acombout(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(0),
	datab => i_left_acombout(0),
	datad => VCC,
	cout => ix33371z19901_anx100z37);

ix33371z19901_aix100z52935 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z34 = CARRY(i_left_acombout(1) & i_right_acombout(1) & !ix33371z19901_anx100z37 # !i_left_acombout(1) & (i_right_acombout(1) # !ix33371z19901_anx100z37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_left_acombout(1),
	datab => i_right_acombout(1),
	datad => VCC,
	cin => ix33371z19901_anx100z37,
	cout => ix33371z19901_anx100z34);

ix33371z19901_aix100z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z31 = CARRY(i_left_acombout(2) & (!ix33371z19901_anx100z34 # !i_right_acombout(2)) # !i_left_acombout(2) & !i_right_acombout(2) & !ix33371z19901_anx100z34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_left_acombout(2),
	datab => i_right_acombout(2),
	datad => VCC,
	cin => ix33371z19901_anx100z34,
	cout => ix33371z19901_anx100z31);

ix33371z19901_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z28 = CARRY(i_right_acombout(3) & (!ix33371z19901_anx100z31 # !i_left_acombout(3)) # !i_right_acombout(3) & !i_left_acombout(3) & !ix33371z19901_anx100z31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(3),
	datab => i_left_acombout(3),
	datad => VCC,
	cin => ix33371z19901_anx100z31,
	cout => ix33371z19901_anx100z28);

ix33371z19901_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z25 = CARRY(i_right_acombout(4) & i_left_acombout(4) & !ix33371z19901_anx100z28 # !i_right_acombout(4) & (i_left_acombout(4) # !ix33371z19901_anx100z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(4),
	datab => i_left_acombout(4),
	datad => VCC,
	cin => ix33371z19901_anx100z28,
	cout => ix33371z19901_anx100z25);

ix33371z19901_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z22 = CARRY(i_right_acombout(5) & (!ix33371z19901_anx100z25 # !i_left_acombout(5)) # !i_right_acombout(5) & !i_left_acombout(5) & !ix33371z19901_anx100z25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(5),
	datab => i_left_acombout(5),
	datad => VCC,
	cin => ix33371z19901_anx100z25,
	cout => ix33371z19901_anx100z22);

ix33371z19901_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z19 = CARRY(i_left_acombout(6) & (!ix33371z19901_anx100z22 # !i_right_acombout(6)) # !i_left_acombout(6) & !i_right_acombout(6) & !ix33371z19901_anx100z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_left_acombout(6),
	datab => i_right_acombout(6),
	datad => VCC,
	cin => ix33371z19901_anx100z22,
	cout => ix33371z19901_anx100z19);

ix33371z19901_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z16 = CARRY(i_left_acombout(7) & i_right_acombout(7) & !ix33371z19901_anx100z19 # !i_left_acombout(7) & (i_right_acombout(7) # !ix33371z19901_anx100z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_left_acombout(7),
	datab => i_right_acombout(7),
	datad => VCC,
	cin => ix33371z19901_anx100z19,
	cout => ix33371z19901_anx100z16);

ix33371z19901_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z13 = CARRY(i_right_acombout(8) & i_left_acombout(8) & !ix33371z19901_anx100z16 # !i_right_acombout(8) & (i_left_acombout(8) # !ix33371z19901_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(8),
	datab => i_left_acombout(8),
	datad => VCC,
	cin => ix33371z19901_anx100z16,
	cout => ix33371z19901_anx100z13);

ix33371z19901_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z10 = CARRY(i_left_acombout(9) & i_right_acombout(9) & !ix33371z19901_anx100z13 # !i_left_acombout(9) & (i_right_acombout(9) # !ix33371z19901_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_left_acombout(9),
	datab => i_right_acombout(9),
	datad => VCC,
	cin => ix33371z19901_anx100z13,
	cout => ix33371z19901_anx100z10);

ix33371z19901_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z7 = CARRY(i_right_acombout(10) & i_left_acombout(10) & !ix33371z19901_anx100z10 # !i_right_acombout(10) & (i_left_acombout(10) # !ix33371z19901_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(10),
	datab => i_left_acombout(10),
	datad => VCC,
	cin => ix33371z19901_anx100z10,
	cout => ix33371z19901_anx100z7);

ix33371z19901_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z4 = CARRY(i_right_acombout(11) & (!ix33371z19901_anx100z7 # !i_left_acombout(11)) # !i_right_acombout(11) & !i_left_acombout(11) & !ix33371z19901_anx100z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(11),
	datab => i_left_acombout(11),
	datad => VCC,
	cin => ix33371z19901_anx100z7,
	cout => ix33371z19901_anx100z4);

ix33371z19901_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix33371z19901_anx100z1 = i_right_acombout(12) & !ix33371z19901_anx100z4 & i_left_acombout(12) # !i_right_acombout(12) & (i_left_acombout(12) # !ix33371z19901_anx100z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_right_acombout(12),
	datad => i_left_acombout(12),
	cin => ix33371z19901_anx100z4,
	combout => ix33371z19901_anx100z1);

ix18852z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_0_a = ix33371z19901_anx100z1 & (i_left_acombout(0)) # !ix33371z19901_anx100z1 & i_right_acombout(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(0),
	datab => ix33371z19901_anx100z1,
	datac => i_left_acombout(0),
	combout => o_max_dup0_0_a);

i_left_ibuf_1_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(1),
	combout => i_left_acombout(1));

ix17855z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_1_a = ix33371z19901_anx100z1 & i_left_acombout(1) # !ix33371z19901_anx100z1 & (i_right_acombout(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_left_acombout(1),
	datab => i_right_acombout(1),
	datac => ix33371z19901_anx100z1,
	combout => o_max_dup0_1_a);

i_left_ibuf_2_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(2),
	combout => i_left_acombout(2));

ix16858z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_2_a = ix33371z19901_anx100z1 & i_left_acombout(2) # !ix33371z19901_anx100z1 & (i_right_acombout(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_left_acombout(2),
	datac => i_right_acombout(2),
	datad => ix33371z19901_anx100z1,
	combout => o_max_dup0_2_a);

i_right_ibuf_3_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(3),
	combout => i_right_acombout(3));

ix15861z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_3_a = ix33371z19901_anx100z1 & (i_left_acombout(3)) # !ix33371z19901_anx100z1 & i_right_acombout(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(3),
	datac => ix33371z19901_anx100z1,
	datad => i_left_acombout(3),
	combout => o_max_dup0_3_a);

i_right_ibuf_4_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(4),
	combout => i_right_acombout(4));

ix14864z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_4_a = ix33371z19901_anx100z1 & (i_left_acombout(4)) # !ix33371z19901_anx100z1 & i_right_acombout(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(4),
	datac => i_left_acombout(4),
	datad => ix33371z19901_anx100z1,
	combout => o_max_dup0_4_a);

i_right_ibuf_5_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(5),
	combout => i_right_acombout(5));

ix13867z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_5_a = ix33371z19901_anx100z1 & (i_left_acombout(5)) # !ix33371z19901_anx100z1 & i_right_acombout(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_right_acombout(5),
	datac => ix33371z19901_anx100z1,
	datad => i_left_acombout(5),
	combout => o_max_dup0_5_a);

i_left_ibuf_6_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(6),
	combout => i_left_acombout(6));

ix12870z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_6_a = ix33371z19901_anx100z1 & (i_left_acombout(6)) # !ix33371z19901_anx100z1 & i_right_acombout(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(6),
	datac => ix33371z19901_anx100z1,
	datad => i_left_acombout(6),
	combout => o_max_dup0_6_a);

i_left_ibuf_7_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(7),
	combout => i_left_acombout(7));

ix11873z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_7_a = ix33371z19901_anx100z1 & (i_left_acombout(7)) # !ix33371z19901_anx100z1 & i_right_acombout(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(7),
	datab => ix33371z19901_anx100z1,
	datac => i_left_acombout(7),
	combout => o_max_dup0_7_a);

i_right_ibuf_8_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(8),
	combout => i_right_acombout(8));

ix10876z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_8_a = ix33371z19901_anx100z1 & (i_left_acombout(8)) # !ix33371z19901_anx100z1 & i_right_acombout(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_right_acombout(8),
	datac => ix33371z19901_anx100z1,
	datad => i_left_acombout(8),
	combout => o_max_dup0_8_a);

i_left_ibuf_9_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_left(9),
	combout => i_left_acombout(9));

ix9879z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_9_a = ix33371z19901_anx100z1 & i_left_acombout(9) # !ix33371z19901_anx100z1 & (i_right_acombout(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ix33371z19901_anx100z1,
	datac => i_left_acombout(9),
	datad => i_right_acombout(9),
	combout => o_max_dup0_9_a);

i_right_ibuf_10_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(10),
	combout => i_right_acombout(10));

ix31377z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_10_a = ix33371z19901_anx100z1 & i_left_acombout(10) # !ix33371z19901_anx100z1 & (i_right_acombout(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_left_acombout(10),
	datac => i_right_acombout(10),
	datad => ix33371z19901_anx100z1,
	combout => o_max_dup0_10_a);

i_right_ibuf_11_a : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_right(11),
	combout => i_right_acombout(11));

ix32374z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_11_a = ix33371z19901_anx100z1 & (i_left_acombout(11)) # !ix33371z19901_anx100z1 & i_right_acombout(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(11),
	datab => ix33371z19901_anx100z1,
	datac => i_left_acombout(11),
	combout => o_max_dup0_11_a);

ix33371z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_max_dup0_12_a = ix33371z19901_anx100z1 & (i_left_acombout(12)) # !ix33371z19901_anx100z1 & i_right_acombout(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_right_acombout(12),
	datac => ix33371z19901_anx100z1,
	datad => i_left_acombout(12),
	combout => o_max_dup0_12_a);

o_max_obuf_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(0));

o_max_obuf_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(1));

o_max_obuf_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(2));

o_max_obuf_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(3));

o_max_obuf_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(4));

o_max_obuf_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(5));

o_max_obuf_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(6));

o_max_obuf_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(7));

o_max_obuf_8_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_8_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(8));

o_max_obuf_9_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_9_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(9));

o_max_obuf_10_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_10_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(10));

o_max_obuf_11_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_11_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(11));

o_max_obuf_12_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_max_dup0_12_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_max(12));

o_left_greater_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ix33371z19901_anx100z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_left_greater);
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity max is
  port (
      i_left  : in std_logic_vector (12 downto 0)
    ; i_right  : in std_logic_vector (12 downto 0)
    ; o_max  : out std_logic_vector (12 downto 0)
    ; o_left_greater  : out STD_LOGIC
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of max is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.max_chip
    port map (
        i_left(12) => i_left(12)
      , i_left(11) => i_left(11)
      , i_left(10) => i_left(10)
      , i_left(9) => i_left(9)
      , i_left(8) => i_left(8)
      , i_left(7) => i_left(7)
      , i_left(6) => i_left(6)
      , i_left(5) => i_left(5)
      , i_left(4) => i_left(4)
      , i_left(3) => i_left(3)
      , i_left(2) => i_left(2)
      , i_left(1) => i_left(1)
      , i_left(0) => i_left(0)
      , i_right(12) => i_right(12)
      , i_right(11) => i_right(11)
      , i_right(10) => i_right(10)
      , i_right(9) => i_right(9)
      , i_right(8) => i_right(8)
      , i_right(7) => i_right(7)
      , i_right(6) => i_right(6)
      , i_right(5) => i_right(5)
      , i_right(4) => i_right(4)
      , i_right(3) => i_right(3)
      , i_right(2) => i_right(2)
      , i_right(1) => i_right(1)
      , i_right(0) => i_right(0)
      , o_max(12) => o_max(12)
      , o_max(11) => o_max(11)
      , o_max(10) => o_max(10)
      , o_max(9) => o_max(9)
      , o_max(8) => o_max(8)
      , o_max(7) => o_max(7)
      , o_max(6) => o_max(6)
      , o_max(5) => o_max(5)
      , o_max(4) => o_max(4)
      , o_max(3) => o_max(3)
      , o_max(2) => o_max(2)
      , o_max(1) => o_max(1)
      , o_max(0) => o_max(0)
      , o_left_greater => o_left_greater
    );
end architecture;

