// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

// DATE "07/16/2014 19:27:41"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module max_chip (	i_left,
	i_right,
	o_max,
	o_left_greater);
input 	[12:0] i_left;
input 	[12:0] i_right;
output 	[12:0] o_max;
output 	o_left_greater;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("max_v.sdo");
// synopsys translate_on

wire ix33371z19901_anx100z37;
wire ix33371z19901_anx100z34;
wire ix33371z19901_anx100z31;
wire ix33371z19901_anx100z28;
wire ix33371z19901_anx100z25;
wire ix33371z19901_anx100z22;
wire ix33371z19901_anx100z19;
wire ix33371z19901_anx100z16;
wire ix33371z19901_anx100z13;
wire ix33371z19901_anx100z10;
wire ix33371z19901_anx100z7;
wire ix33371z19901_anx100z4;
wire ix33371z19901_anx100z1;
wire o_max_dup0_0_;
wire o_max_dup0_1_;
wire o_max_dup0_2_;
wire o_max_dup0_3_;
wire o_max_dup0_4_;
wire o_max_dup0_5_;
wire o_max_dup0_6_;
wire o_max_dup0_7_;
wire o_max_dup0_8_;
wire o_max_dup0_9_;
wire o_max_dup0_10_;
wire o_max_dup0_11_;
wire o_max_dup0_12_;
wire [12:0] i_left_acombout;
wire [12:0] i_right_acombout;


// atom is at PIN_A14
cycloneii_io i_right_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[0]));
// synopsys translate_off
defparam i_right_ibuf_0_.input_async_reset = "none";
defparam i_right_ibuf_0_.input_power_up = "low";
defparam i_right_ibuf_0_.input_register_mode = "none";
defparam i_right_ibuf_0_.input_sync_reset = "none";
defparam i_right_ibuf_0_.oe_async_reset = "none";
defparam i_right_ibuf_0_.oe_power_up = "low";
defparam i_right_ibuf_0_.oe_register_mode = "none";
defparam i_right_ibuf_0_.oe_sync_reset = "none";
defparam i_right_ibuf_0_.operation_mode = "input";
defparam i_right_ibuf_0_.output_async_reset = "none";
defparam i_right_ibuf_0_.output_power_up = "low";
defparam i_right_ibuf_0_.output_register_mode = "none";
defparam i_right_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io i_right_ibuf_12_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[12]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[12]));
// synopsys translate_off
defparam i_right_ibuf_12_.input_async_reset = "none";
defparam i_right_ibuf_12_.input_power_up = "low";
defparam i_right_ibuf_12_.input_register_mode = "none";
defparam i_right_ibuf_12_.input_sync_reset = "none";
defparam i_right_ibuf_12_.oe_async_reset = "none";
defparam i_right_ibuf_12_.oe_power_up = "low";
defparam i_right_ibuf_12_.oe_register_mode = "none";
defparam i_right_ibuf_12_.oe_sync_reset = "none";
defparam i_right_ibuf_12_.operation_mode = "input";
defparam i_right_ibuf_12_.output_async_reset = "none";
defparam i_right_ibuf_12_.output_power_up = "low";
defparam i_right_ibuf_12_.output_register_mode = "none";
defparam i_right_ibuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D13
cycloneii_io i_left_ibuf_12_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[12]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[12]));
// synopsys translate_off
defparam i_left_ibuf_12_.input_async_reset = "none";
defparam i_left_ibuf_12_.input_power_up = "low";
defparam i_left_ibuf_12_.input_register_mode = "none";
defparam i_left_ibuf_12_.input_sync_reset = "none";
defparam i_left_ibuf_12_.oe_async_reset = "none";
defparam i_left_ibuf_12_.oe_power_up = "low";
defparam i_left_ibuf_12_.oe_register_mode = "none";
defparam i_left_ibuf_12_.oe_sync_reset = "none";
defparam i_left_ibuf_12_.operation_mode = "input";
defparam i_left_ibuf_12_.output_async_reset = "none";
defparam i_left_ibuf_12_.output_power_up = "low";
defparam i_left_ibuf_12_.output_register_mode = "none";
defparam i_left_ibuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F11
cycloneii_io i_left_ibuf_11_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[11]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[11]));
// synopsys translate_off
defparam i_left_ibuf_11_.input_async_reset = "none";
defparam i_left_ibuf_11_.input_power_up = "low";
defparam i_left_ibuf_11_.input_register_mode = "none";
defparam i_left_ibuf_11_.input_sync_reset = "none";
defparam i_left_ibuf_11_.oe_async_reset = "none";
defparam i_left_ibuf_11_.oe_power_up = "low";
defparam i_left_ibuf_11_.oe_register_mode = "none";
defparam i_left_ibuf_11_.oe_sync_reset = "none";
defparam i_left_ibuf_11_.operation_mode = "input";
defparam i_left_ibuf_11_.output_async_reset = "none";
defparam i_left_ibuf_11_.output_power_up = "low";
defparam i_left_ibuf_11_.output_register_mode = "none";
defparam i_left_ibuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF10
cycloneii_io i_left_ibuf_10_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[10]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[10]));
// synopsys translate_off
defparam i_left_ibuf_10_.input_async_reset = "none";
defparam i_left_ibuf_10_.input_power_up = "low";
defparam i_left_ibuf_10_.input_register_mode = "none";
defparam i_left_ibuf_10_.input_sync_reset = "none";
defparam i_left_ibuf_10_.oe_async_reset = "none";
defparam i_left_ibuf_10_.oe_power_up = "low";
defparam i_left_ibuf_10_.oe_register_mode = "none";
defparam i_left_ibuf_10_.oe_sync_reset = "none";
defparam i_left_ibuf_10_.operation_mode = "input";
defparam i_left_ibuf_10_.output_async_reset = "none";
defparam i_left_ibuf_10_.output_power_up = "low";
defparam i_left_ibuf_10_.output_register_mode = "none";
defparam i_left_ibuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C16
cycloneii_io i_right_ibuf_9_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[9]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[9]));
// synopsys translate_off
defparam i_right_ibuf_9_.input_async_reset = "none";
defparam i_right_ibuf_9_.input_power_up = "low";
defparam i_right_ibuf_9_.input_register_mode = "none";
defparam i_right_ibuf_9_.input_sync_reset = "none";
defparam i_right_ibuf_9_.oe_async_reset = "none";
defparam i_right_ibuf_9_.oe_power_up = "low";
defparam i_right_ibuf_9_.oe_register_mode = "none";
defparam i_right_ibuf_9_.oe_sync_reset = "none";
defparam i_right_ibuf_9_.operation_mode = "input";
defparam i_right_ibuf_9_.output_async_reset = "none";
defparam i_right_ibuf_9_.output_power_up = "low";
defparam i_right_ibuf_9_.output_register_mode = "none";
defparam i_right_ibuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F14
cycloneii_io i_left_ibuf_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[8]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[8]));
// synopsys translate_off
defparam i_left_ibuf_8_.input_async_reset = "none";
defparam i_left_ibuf_8_.input_power_up = "low";
defparam i_left_ibuf_8_.input_register_mode = "none";
defparam i_left_ibuf_8_.input_sync_reset = "none";
defparam i_left_ibuf_8_.oe_async_reset = "none";
defparam i_left_ibuf_8_.oe_power_up = "low";
defparam i_left_ibuf_8_.oe_register_mode = "none";
defparam i_left_ibuf_8_.oe_sync_reset = "none";
defparam i_left_ibuf_8_.operation_mode = "input";
defparam i_left_ibuf_8_.output_async_reset = "none";
defparam i_left_ibuf_8_.output_power_up = "low";
defparam i_left_ibuf_8_.output_register_mode = "none";
defparam i_left_ibuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE12
cycloneii_io i_right_ibuf_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[7]));
// synopsys translate_off
defparam i_right_ibuf_7_.input_async_reset = "none";
defparam i_right_ibuf_7_.input_power_up = "low";
defparam i_right_ibuf_7_.input_register_mode = "none";
defparam i_right_ibuf_7_.input_sync_reset = "none";
defparam i_right_ibuf_7_.oe_async_reset = "none";
defparam i_right_ibuf_7_.oe_power_up = "low";
defparam i_right_ibuf_7_.oe_register_mode = "none";
defparam i_right_ibuf_7_.oe_sync_reset = "none";
defparam i_right_ibuf_7_.operation_mode = "input";
defparam i_right_ibuf_7_.output_async_reset = "none";
defparam i_right_ibuf_7_.output_power_up = "low";
defparam i_right_ibuf_7_.output_register_mode = "none";
defparam i_right_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B14
cycloneii_io i_right_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[6]));
// synopsys translate_off
defparam i_right_ibuf_6_.input_async_reset = "none";
defparam i_right_ibuf_6_.input_power_up = "low";
defparam i_right_ibuf_6_.input_register_mode = "none";
defparam i_right_ibuf_6_.input_sync_reset = "none";
defparam i_right_ibuf_6_.oe_async_reset = "none";
defparam i_right_ibuf_6_.oe_power_up = "low";
defparam i_right_ibuf_6_.oe_register_mode = "none";
defparam i_right_ibuf_6_.oe_sync_reset = "none";
defparam i_right_ibuf_6_.operation_mode = "input";
defparam i_right_ibuf_6_.output_async_reset = "none";
defparam i_right_ibuf_6_.output_power_up = "low";
defparam i_right_ibuf_6_.output_register_mode = "none";
defparam i_right_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D14
cycloneii_io i_left_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[5]));
// synopsys translate_off
defparam i_left_ibuf_5_.input_async_reset = "none";
defparam i_left_ibuf_5_.input_power_up = "low";
defparam i_left_ibuf_5_.input_register_mode = "none";
defparam i_left_ibuf_5_.input_sync_reset = "none";
defparam i_left_ibuf_5_.oe_async_reset = "none";
defparam i_left_ibuf_5_.oe_power_up = "low";
defparam i_left_ibuf_5_.oe_register_mode = "none";
defparam i_left_ibuf_5_.oe_sync_reset = "none";
defparam i_left_ibuf_5_.operation_mode = "input";
defparam i_left_ibuf_5_.output_async_reset = "none";
defparam i_left_ibuf_5_.output_power_up = "low";
defparam i_left_ibuf_5_.output_register_mode = "none";
defparam i_left_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F12
cycloneii_io i_left_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[4]));
// synopsys translate_off
defparam i_left_ibuf_4_.input_async_reset = "none";
defparam i_left_ibuf_4_.input_power_up = "low";
defparam i_left_ibuf_4_.input_register_mode = "none";
defparam i_left_ibuf_4_.input_sync_reset = "none";
defparam i_left_ibuf_4_.oe_async_reset = "none";
defparam i_left_ibuf_4_.oe_power_up = "low";
defparam i_left_ibuf_4_.oe_register_mode = "none";
defparam i_left_ibuf_4_.oe_sync_reset = "none";
defparam i_left_ibuf_4_.operation_mode = "input";
defparam i_left_ibuf_4_.output_async_reset = "none";
defparam i_left_ibuf_4_.output_power_up = "low";
defparam i_left_ibuf_4_.output_register_mode = "none";
defparam i_left_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F13
cycloneii_io i_left_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[3]));
// synopsys translate_off
defparam i_left_ibuf_3_.input_async_reset = "none";
defparam i_left_ibuf_3_.input_power_up = "low";
defparam i_left_ibuf_3_.input_register_mode = "none";
defparam i_left_ibuf_3_.input_sync_reset = "none";
defparam i_left_ibuf_3_.oe_async_reset = "none";
defparam i_left_ibuf_3_.oe_power_up = "low";
defparam i_left_ibuf_3_.oe_register_mode = "none";
defparam i_left_ibuf_3_.oe_sync_reset = "none";
defparam i_left_ibuf_3_.operation_mode = "input";
defparam i_left_ibuf_3_.output_async_reset = "none";
defparam i_left_ibuf_3_.output_power_up = "low";
defparam i_left_ibuf_3_.output_register_mode = "none";
defparam i_left_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B12
cycloneii_io i_right_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[2]));
// synopsys translate_off
defparam i_right_ibuf_2_.input_async_reset = "none";
defparam i_right_ibuf_2_.input_power_up = "low";
defparam i_right_ibuf_2_.input_register_mode = "none";
defparam i_right_ibuf_2_.input_sync_reset = "none";
defparam i_right_ibuf_2_.oe_async_reset = "none";
defparam i_right_ibuf_2_.oe_power_up = "low";
defparam i_right_ibuf_2_.oe_register_mode = "none";
defparam i_right_ibuf_2_.oe_sync_reset = "none";
defparam i_right_ibuf_2_.operation_mode = "input";
defparam i_right_ibuf_2_.output_async_reset = "none";
defparam i_right_ibuf_2_.output_power_up = "low";
defparam i_right_ibuf_2_.output_register_mode = "none";
defparam i_right_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J11
cycloneii_io i_right_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[1]));
// synopsys translate_off
defparam i_right_ibuf_1_.input_async_reset = "none";
defparam i_right_ibuf_1_.input_power_up = "low";
defparam i_right_ibuf_1_.input_register_mode = "none";
defparam i_right_ibuf_1_.input_sync_reset = "none";
defparam i_right_ibuf_1_.oe_async_reset = "none";
defparam i_right_ibuf_1_.oe_power_up = "low";
defparam i_right_ibuf_1_.oe_register_mode = "none";
defparam i_right_ibuf_1_.oe_sync_reset = "none";
defparam i_right_ibuf_1_.operation_mode = "input";
defparam i_right_ibuf_1_.output_async_reset = "none";
defparam i_right_ibuf_1_.output_power_up = "low";
defparam i_right_ibuf_1_.output_register_mode = "none";
defparam i_right_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D12
cycloneii_io i_left_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[0]));
// synopsys translate_off
defparam i_left_ibuf_0_.input_async_reset = "none";
defparam i_left_ibuf_0_.input_power_up = "low";
defparam i_left_ibuf_0_.input_register_mode = "none";
defparam i_left_ibuf_0_.input_sync_reset = "none";
defparam i_left_ibuf_0_.oe_async_reset = "none";
defparam i_left_ibuf_0_.oe_power_up = "low";
defparam i_left_ibuf_0_.oe_register_mode = "none";
defparam i_left_ibuf_0_.oe_sync_reset = "none";
defparam i_left_ibuf_0_.operation_mode = "input";
defparam i_left_ibuf_0_.output_async_reset = "none";
defparam i_left_ibuf_0_.output_power_up = "low";
defparam i_left_ibuf_0_.output_register_mode = "none";
defparam i_left_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N6
cycloneii_lcell_comb ix33371z19901_aix100z52936(
// Equation(s):
// ix33371z19901_anx100z37 = CARRY(!i_right_acombout[0] & i_left_acombout[0])

	.dataa(i_right_acombout[0]),
	.datab(i_left_acombout[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix33371z19901_anx100z37));
// synopsys translate_off
defparam ix33371z19901_aix100z52936.lut_mask = 16'h0044;
defparam ix33371z19901_aix100z52936.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N8
cycloneii_lcell_comb ix33371z19901_aix100z52935(
// Equation(s):
// ix33371z19901_anx100z34 = CARRY(i_left_acombout[1] & i_right_acombout[1] & !ix33371z19901_anx100z37 # !i_left_acombout[1] & (i_right_acombout[1] # !ix33371z19901_anx100z37))

	.dataa(i_left_acombout[1]),
	.datab(i_right_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z37),
	.combout(),
	.cout(ix33371z19901_anx100z34));
// synopsys translate_off
defparam ix33371z19901_aix100z52935.lut_mask = 16'h004D;
defparam ix33371z19901_aix100z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N10
cycloneii_lcell_comb ix33371z19901_aix100z52934(
// Equation(s):
// ix33371z19901_anx100z31 = CARRY(i_left_acombout[2] & (!ix33371z19901_anx100z34 # !i_right_acombout[2]) # !i_left_acombout[2] & !i_right_acombout[2] & !ix33371z19901_anx100z34)

	.dataa(i_left_acombout[2]),
	.datab(i_right_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z34),
	.combout(),
	.cout(ix33371z19901_anx100z31));
// synopsys translate_off
defparam ix33371z19901_aix100z52934.lut_mask = 16'h002B;
defparam ix33371z19901_aix100z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N12
cycloneii_lcell_comb ix33371z19901_aix100z52933(
// Equation(s):
// ix33371z19901_anx100z28 = CARRY(i_right_acombout[3] & (!ix33371z19901_anx100z31 # !i_left_acombout[3]) # !i_right_acombout[3] & !i_left_acombout[3] & !ix33371z19901_anx100z31)

	.dataa(i_right_acombout[3]),
	.datab(i_left_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z31),
	.combout(),
	.cout(ix33371z19901_anx100z28));
// synopsys translate_off
defparam ix33371z19901_aix100z52933.lut_mask = 16'h002B;
defparam ix33371z19901_aix100z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N14
cycloneii_lcell_comb ix33371z19901_aix100z52932(
// Equation(s):
// ix33371z19901_anx100z25 = CARRY(i_right_acombout[4] & i_left_acombout[4] & !ix33371z19901_anx100z28 # !i_right_acombout[4] & (i_left_acombout[4] # !ix33371z19901_anx100z28))

	.dataa(i_right_acombout[4]),
	.datab(i_left_acombout[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z28),
	.combout(),
	.cout(ix33371z19901_anx100z25));
// synopsys translate_off
defparam ix33371z19901_aix100z52932.lut_mask = 16'h004D;
defparam ix33371z19901_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N16
cycloneii_lcell_comb ix33371z19901_aix100z52931(
// Equation(s):
// ix33371z19901_anx100z22 = CARRY(i_right_acombout[5] & (!ix33371z19901_anx100z25 # !i_left_acombout[5]) # !i_right_acombout[5] & !i_left_acombout[5] & !ix33371z19901_anx100z25)

	.dataa(i_right_acombout[5]),
	.datab(i_left_acombout[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z25),
	.combout(),
	.cout(ix33371z19901_anx100z22));
// synopsys translate_off
defparam ix33371z19901_aix100z52931.lut_mask = 16'h002B;
defparam ix33371z19901_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N18
cycloneii_lcell_comb ix33371z19901_aix100z52930(
// Equation(s):
// ix33371z19901_anx100z19 = CARRY(i_left_acombout[6] & (!ix33371z19901_anx100z22 # !i_right_acombout[6]) # !i_left_acombout[6] & !i_right_acombout[6] & !ix33371z19901_anx100z22)

	.dataa(i_left_acombout[6]),
	.datab(i_right_acombout[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z22),
	.combout(),
	.cout(ix33371z19901_anx100z19));
// synopsys translate_off
defparam ix33371z19901_aix100z52930.lut_mask = 16'h002B;
defparam ix33371z19901_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N20
cycloneii_lcell_comb ix33371z19901_aix100z52929(
// Equation(s):
// ix33371z19901_anx100z16 = CARRY(i_left_acombout[7] & i_right_acombout[7] & !ix33371z19901_anx100z19 # !i_left_acombout[7] & (i_right_acombout[7] # !ix33371z19901_anx100z19))

	.dataa(i_left_acombout[7]),
	.datab(i_right_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z19),
	.combout(),
	.cout(ix33371z19901_anx100z16));
// synopsys translate_off
defparam ix33371z19901_aix100z52929.lut_mask = 16'h004D;
defparam ix33371z19901_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N22
cycloneii_lcell_comb ix33371z19901_aix100z52928(
// Equation(s):
// ix33371z19901_anx100z13 = CARRY(i_right_acombout[8] & i_left_acombout[8] & !ix33371z19901_anx100z16 # !i_right_acombout[8] & (i_left_acombout[8] # !ix33371z19901_anx100z16))

	.dataa(i_right_acombout[8]),
	.datab(i_left_acombout[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z16),
	.combout(),
	.cout(ix33371z19901_anx100z13));
// synopsys translate_off
defparam ix33371z19901_aix100z52928.lut_mask = 16'h004D;
defparam ix33371z19901_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N24
cycloneii_lcell_comb ix33371z19901_aix100z52927(
// Equation(s):
// ix33371z19901_anx100z10 = CARRY(i_left_acombout[9] & i_right_acombout[9] & !ix33371z19901_anx100z13 # !i_left_acombout[9] & (i_right_acombout[9] # !ix33371z19901_anx100z13))

	.dataa(i_left_acombout[9]),
	.datab(i_right_acombout[9]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z13),
	.combout(),
	.cout(ix33371z19901_anx100z10));
// synopsys translate_off
defparam ix33371z19901_aix100z52927.lut_mask = 16'h004D;
defparam ix33371z19901_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N26
cycloneii_lcell_comb ix33371z19901_aix100z52926(
// Equation(s):
// ix33371z19901_anx100z7 = CARRY(i_right_acombout[10] & i_left_acombout[10] & !ix33371z19901_anx100z10 # !i_right_acombout[10] & (i_left_acombout[10] # !ix33371z19901_anx100z10))

	.dataa(i_right_acombout[10]),
	.datab(i_left_acombout[10]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z10),
	.combout(),
	.cout(ix33371z19901_anx100z7));
// synopsys translate_off
defparam ix33371z19901_aix100z52926.lut_mask = 16'h004D;
defparam ix33371z19901_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N28
cycloneii_lcell_comb ix33371z19901_aix100z52925(
// Equation(s):
// ix33371z19901_anx100z4 = CARRY(i_right_acombout[11] & (!ix33371z19901_anx100z7 # !i_left_acombout[11]) # !i_right_acombout[11] & !i_left_acombout[11] & !ix33371z19901_anx100z7)

	.dataa(i_right_acombout[11]),
	.datab(i_left_acombout[11]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix33371z19901_anx100z7),
	.combout(),
	.cout(ix33371z19901_anx100z4));
// synopsys translate_off
defparam ix33371z19901_aix100z52925.lut_mask = 16'h002B;
defparam ix33371z19901_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N30
cycloneii_lcell_comb ix33371z19901_aix100z52923(
// Equation(s):
// ix33371z19901_anx100z1 = i_right_acombout[12] & !ix33371z19901_anx100z4 & i_left_acombout[12] # !i_right_acombout[12] & (i_left_acombout[12] # !ix33371z19901_anx100z4)

	.dataa(vcc),
	.datab(i_right_acombout[12]),
	.datac(vcc),
	.datad(i_left_acombout[12]),
	.cin(ix33371z19901_anx100z4),
	.combout(ix33371z19901_anx100z1),
	.cout());
// synopsys translate_off
defparam ix33371z19901_aix100z52923.lut_mask = 16'h3F03;
defparam ix33371z19901_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N0
cycloneii_lcell_comb ix18852z52923(
// Equation(s):
// o_max_dup0_0_ = ix33371z19901_anx100z1 & (i_left_acombout[0]) # !ix33371z19901_anx100z1 & i_right_acombout[0]

	.dataa(i_right_acombout[0]),
	.datab(ix33371z19901_anx100z1),
	.datac(i_left_acombout[0]),
	.datad(vcc),
	.cin(gnd),
	.combout(o_max_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix18852z52923.lut_mask = 16'hE2E2;
defparam ix18852z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_J13
cycloneii_io i_left_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[1]));
// synopsys translate_off
defparam i_left_ibuf_1_.input_async_reset = "none";
defparam i_left_ibuf_1_.input_power_up = "low";
defparam i_left_ibuf_1_.input_register_mode = "none";
defparam i_left_ibuf_1_.input_sync_reset = "none";
defparam i_left_ibuf_1_.oe_async_reset = "none";
defparam i_left_ibuf_1_.oe_power_up = "low";
defparam i_left_ibuf_1_.oe_register_mode = "none";
defparam i_left_ibuf_1_.oe_sync_reset = "none";
defparam i_left_ibuf_1_.operation_mode = "input";
defparam i_left_ibuf_1_.output_async_reset = "none";
defparam i_left_ibuf_1_.output_power_up = "low";
defparam i_left_ibuf_1_.output_register_mode = "none";
defparam i_left_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N10
cycloneii_lcell_comb ix17855z52923(
// Equation(s):
// o_max_dup0_1_ = ix33371z19901_anx100z1 & i_left_acombout[1] # !ix33371z19901_anx100z1 & (i_right_acombout[1])

	.dataa(i_left_acombout[1]),
	.datab(i_right_acombout[1]),
	.datac(ix33371z19901_anx100z1),
	.datad(vcc),
	.cin(gnd),
	.combout(o_max_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix17855z52923.lut_mask = 16'hACAC;
defparam ix17855z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_AA12
cycloneii_io i_left_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[2]));
// synopsys translate_off
defparam i_left_ibuf_2_.input_async_reset = "none";
defparam i_left_ibuf_2_.input_power_up = "low";
defparam i_left_ibuf_2_.input_register_mode = "none";
defparam i_left_ibuf_2_.input_sync_reset = "none";
defparam i_left_ibuf_2_.oe_async_reset = "none";
defparam i_left_ibuf_2_.oe_power_up = "low";
defparam i_left_ibuf_2_.oe_register_mode = "none";
defparam i_left_ibuf_2_.oe_sync_reset = "none";
defparam i_left_ibuf_2_.operation_mode = "input";
defparam i_left_ibuf_2_.output_async_reset = "none";
defparam i_left_ibuf_2_.output_power_up = "low";
defparam i_left_ibuf_2_.output_register_mode = "none";
defparam i_left_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N0
cycloneii_lcell_comb ix16858z52923(
// Equation(s):
// o_max_dup0_2_ = ix33371z19901_anx100z1 & i_left_acombout[2] # !ix33371z19901_anx100z1 & (i_right_acombout[2])

	.dataa(vcc),
	.datab(i_left_acombout[2]),
	.datac(i_right_acombout[2]),
	.datad(ix33371z19901_anx100z1),
	.cin(gnd),
	.combout(o_max_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix16858z52923.lut_mask = 16'hCCF0;
defparam ix16858z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_J10
cycloneii_io i_right_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[3]));
// synopsys translate_off
defparam i_right_ibuf_3_.input_async_reset = "none";
defparam i_right_ibuf_3_.input_power_up = "low";
defparam i_right_ibuf_3_.input_register_mode = "none";
defparam i_right_ibuf_3_.input_sync_reset = "none";
defparam i_right_ibuf_3_.oe_async_reset = "none";
defparam i_right_ibuf_3_.oe_power_up = "low";
defparam i_right_ibuf_3_.oe_register_mode = "none";
defparam i_right_ibuf_3_.oe_sync_reset = "none";
defparam i_right_ibuf_3_.operation_mode = "input";
defparam i_right_ibuf_3_.output_async_reset = "none";
defparam i_right_ibuf_3_.output_power_up = "low";
defparam i_right_ibuf_3_.output_register_mode = "none";
defparam i_right_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N28
cycloneii_lcell_comb ix15861z52923(
// Equation(s):
// o_max_dup0_3_ = ix33371z19901_anx100z1 & (i_left_acombout[3]) # !ix33371z19901_anx100z1 & i_right_acombout[3]

	.dataa(i_right_acombout[3]),
	.datab(vcc),
	.datac(ix33371z19901_anx100z1),
	.datad(i_left_acombout[3]),
	.cin(gnd),
	.combout(o_max_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix15861z52923.lut_mask = 16'hFA0A;
defparam ix15861z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io i_right_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[4]));
// synopsys translate_off
defparam i_right_ibuf_4_.input_async_reset = "none";
defparam i_right_ibuf_4_.input_power_up = "low";
defparam i_right_ibuf_4_.input_register_mode = "none";
defparam i_right_ibuf_4_.input_sync_reset = "none";
defparam i_right_ibuf_4_.oe_async_reset = "none";
defparam i_right_ibuf_4_.oe_power_up = "low";
defparam i_right_ibuf_4_.oe_register_mode = "none";
defparam i_right_ibuf_4_.oe_sync_reset = "none";
defparam i_right_ibuf_4_.operation_mode = "input";
defparam i_right_ibuf_4_.output_async_reset = "none";
defparam i_right_ibuf_4_.output_power_up = "low";
defparam i_right_ibuf_4_.output_register_mode = "none";
defparam i_right_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N2
cycloneii_lcell_comb ix14864z52923(
// Equation(s):
// o_max_dup0_4_ = ix33371z19901_anx100z1 & (i_left_acombout[4]) # !ix33371z19901_anx100z1 & i_right_acombout[4]

	.dataa(i_right_acombout[4]),
	.datab(vcc),
	.datac(i_left_acombout[4]),
	.datad(ix33371z19901_anx100z1),
	.cin(gnd),
	.combout(o_max_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix14864z52923.lut_mask = 16'hF0AA;
defparam ix14864z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_J14
cycloneii_io i_right_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[5]));
// synopsys translate_off
defparam i_right_ibuf_5_.input_async_reset = "none";
defparam i_right_ibuf_5_.input_power_up = "low";
defparam i_right_ibuf_5_.input_register_mode = "none";
defparam i_right_ibuf_5_.input_sync_reset = "none";
defparam i_right_ibuf_5_.oe_async_reset = "none";
defparam i_right_ibuf_5_.oe_power_up = "low";
defparam i_right_ibuf_5_.oe_register_mode = "none";
defparam i_right_ibuf_5_.oe_sync_reset = "none";
defparam i_right_ibuf_5_.operation_mode = "input";
defparam i_right_ibuf_5_.output_async_reset = "none";
defparam i_right_ibuf_5_.output_power_up = "low";
defparam i_right_ibuf_5_.output_register_mode = "none";
defparam i_right_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N22
cycloneii_lcell_comb ix13867z52923(
// Equation(s):
// o_max_dup0_5_ = ix33371z19901_anx100z1 & (i_left_acombout[5]) # !ix33371z19901_anx100z1 & i_right_acombout[5]

	.dataa(vcc),
	.datab(i_right_acombout[5]),
	.datac(ix33371z19901_anx100z1),
	.datad(i_left_acombout[5]),
	.cin(gnd),
	.combout(o_max_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix13867z52923.lut_mask = 16'hFC0C;
defparam ix13867z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_P18
cycloneii_io i_left_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[6]));
// synopsys translate_off
defparam i_left_ibuf_6_.input_async_reset = "none";
defparam i_left_ibuf_6_.input_power_up = "low";
defparam i_left_ibuf_6_.input_register_mode = "none";
defparam i_left_ibuf_6_.input_sync_reset = "none";
defparam i_left_ibuf_6_.oe_async_reset = "none";
defparam i_left_ibuf_6_.oe_power_up = "low";
defparam i_left_ibuf_6_.oe_register_mode = "none";
defparam i_left_ibuf_6_.oe_sync_reset = "none";
defparam i_left_ibuf_6_.operation_mode = "input";
defparam i_left_ibuf_6_.output_async_reset = "none";
defparam i_left_ibuf_6_.output_power_up = "low";
defparam i_left_ibuf_6_.output_register_mode = "none";
defparam i_left_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N24
cycloneii_lcell_comb ix12870z52923(
// Equation(s):
// o_max_dup0_6_ = ix33371z19901_anx100z1 & (i_left_acombout[6]) # !ix33371z19901_anx100z1 & i_right_acombout[6]

	.dataa(i_right_acombout[6]),
	.datab(vcc),
	.datac(ix33371z19901_anx100z1),
	.datad(i_left_acombout[6]),
	.cin(gnd),
	.combout(o_max_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix12870z52923.lut_mask = 16'hFA0A;
defparam ix12870z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_H12
cycloneii_io i_left_ibuf_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[7]));
// synopsys translate_off
defparam i_left_ibuf_7_.input_async_reset = "none";
defparam i_left_ibuf_7_.input_power_up = "low";
defparam i_left_ibuf_7_.input_register_mode = "none";
defparam i_left_ibuf_7_.input_sync_reset = "none";
defparam i_left_ibuf_7_.oe_async_reset = "none";
defparam i_left_ibuf_7_.oe_power_up = "low";
defparam i_left_ibuf_7_.oe_register_mode = "none";
defparam i_left_ibuf_7_.oe_sync_reset = "none";
defparam i_left_ibuf_7_.operation_mode = "input";
defparam i_left_ibuf_7_.output_async_reset = "none";
defparam i_left_ibuf_7_.output_power_up = "low";
defparam i_left_ibuf_7_.output_register_mode = "none";
defparam i_left_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N26
cycloneii_lcell_comb ix11873z52923(
// Equation(s):
// o_max_dup0_7_ = ix33371z19901_anx100z1 & (i_left_acombout[7]) # !ix33371z19901_anx100z1 & i_right_acombout[7]

	.dataa(i_right_acombout[7]),
	.datab(ix33371z19901_anx100z1),
	.datac(i_left_acombout[7]),
	.datad(vcc),
	.cin(gnd),
	.combout(o_max_dup0_7_),
	.cout());
// synopsys translate_off
defparam ix11873z52923.lut_mask = 16'hE2E2;
defparam ix11873z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_E12
cycloneii_io i_right_ibuf_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[8]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[8]));
// synopsys translate_off
defparam i_right_ibuf_8_.input_async_reset = "none";
defparam i_right_ibuf_8_.input_power_up = "low";
defparam i_right_ibuf_8_.input_register_mode = "none";
defparam i_right_ibuf_8_.input_sync_reset = "none";
defparam i_right_ibuf_8_.oe_async_reset = "none";
defparam i_right_ibuf_8_.oe_power_up = "low";
defparam i_right_ibuf_8_.oe_register_mode = "none";
defparam i_right_ibuf_8_.oe_sync_reset = "none";
defparam i_right_ibuf_8_.operation_mode = "input";
defparam i_right_ibuf_8_.output_async_reset = "none";
defparam i_right_ibuf_8_.output_power_up = "low";
defparam i_right_ibuf_8_.output_register_mode = "none";
defparam i_right_ibuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N12
cycloneii_lcell_comb ix10876z52923(
// Equation(s):
// o_max_dup0_8_ = ix33371z19901_anx100z1 & (i_left_acombout[8]) # !ix33371z19901_anx100z1 & i_right_acombout[8]

	.dataa(vcc),
	.datab(i_right_acombout[8]),
	.datac(ix33371z19901_anx100z1),
	.datad(i_left_acombout[8]),
	.cin(gnd),
	.combout(o_max_dup0_8_),
	.cout());
// synopsys translate_off
defparam ix10876z52923.lut_mask = 16'hFC0C;
defparam ix10876z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_D6
cycloneii_io i_left_ibuf_9_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_left_acombout[9]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_left[9]));
// synopsys translate_off
defparam i_left_ibuf_9_.input_async_reset = "none";
defparam i_left_ibuf_9_.input_power_up = "low";
defparam i_left_ibuf_9_.input_register_mode = "none";
defparam i_left_ibuf_9_.input_sync_reset = "none";
defparam i_left_ibuf_9_.oe_async_reset = "none";
defparam i_left_ibuf_9_.oe_power_up = "low";
defparam i_left_ibuf_9_.oe_register_mode = "none";
defparam i_left_ibuf_9_.oe_sync_reset = "none";
defparam i_left_ibuf_9_.operation_mode = "input";
defparam i_left_ibuf_9_.output_async_reset = "none";
defparam i_left_ibuf_9_.output_power_up = "low";
defparam i_left_ibuf_9_.output_register_mode = "none";
defparam i_left_ibuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N6
cycloneii_lcell_comb ix9879z52923(
// Equation(s):
// o_max_dup0_9_ = ix33371z19901_anx100z1 & i_left_acombout[9] # !ix33371z19901_anx100z1 & (i_right_acombout[9])

	.dataa(vcc),
	.datab(ix33371z19901_anx100z1),
	.datac(i_left_acombout[9]),
	.datad(i_right_acombout[9]),
	.cin(gnd),
	.combout(o_max_dup0_9_),
	.cout());
// synopsys translate_off
defparam ix9879z52923.lut_mask = 16'hF3C0;
defparam ix9879z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_B3
cycloneii_io i_right_ibuf_10_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[10]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[10]));
// synopsys translate_off
defparam i_right_ibuf_10_.input_async_reset = "none";
defparam i_right_ibuf_10_.input_power_up = "low";
defparam i_right_ibuf_10_.input_register_mode = "none";
defparam i_right_ibuf_10_.input_sync_reset = "none";
defparam i_right_ibuf_10_.oe_async_reset = "none";
defparam i_right_ibuf_10_.oe_power_up = "low";
defparam i_right_ibuf_10_.oe_register_mode = "none";
defparam i_right_ibuf_10_.oe_sync_reset = "none";
defparam i_right_ibuf_10_.operation_mode = "input";
defparam i_right_ibuf_10_.output_async_reset = "none";
defparam i_right_ibuf_10_.output_power_up = "low";
defparam i_right_ibuf_10_.output_register_mode = "none";
defparam i_right_ibuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X30_Y35_N4
cycloneii_lcell_comb ix31377z52923(
// Equation(s):
// o_max_dup0_10_ = ix33371z19901_anx100z1 & i_left_acombout[10] # !ix33371z19901_anx100z1 & (i_right_acombout[10])

	.dataa(vcc),
	.datab(i_left_acombout[10]),
	.datac(i_right_acombout[10]),
	.datad(ix33371z19901_anx100z1),
	.cin(gnd),
	.combout(o_max_dup0_10_),
	.cout());
// synopsys translate_off
defparam ix31377z52923.lut_mask = 16'hCCF0;
defparam ix31377z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_G6
cycloneii_io i_right_ibuf_11_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_right_acombout[11]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_right[11]));
// synopsys translate_off
defparam i_right_ibuf_11_.input_async_reset = "none";
defparam i_right_ibuf_11_.input_power_up = "low";
defparam i_right_ibuf_11_.input_register_mode = "none";
defparam i_right_ibuf_11_.input_sync_reset = "none";
defparam i_right_ibuf_11_.oe_async_reset = "none";
defparam i_right_ibuf_11_.oe_power_up = "low";
defparam i_right_ibuf_11_.oe_register_mode = "none";
defparam i_right_ibuf_11_.oe_sync_reset = "none";
defparam i_right_ibuf_11_.operation_mode = "input";
defparam i_right_ibuf_11_.output_async_reset = "none";
defparam i_right_ibuf_11_.output_power_up = "low";
defparam i_right_ibuf_11_.output_register_mode = "none";
defparam i_right_ibuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N16
cycloneii_lcell_comb ix32374z52923(
// Equation(s):
// o_max_dup0_11_ = ix33371z19901_anx100z1 & (i_left_acombout[11]) # !ix33371z19901_anx100z1 & i_right_acombout[11]

	.dataa(i_right_acombout[11]),
	.datab(ix33371z19901_anx100z1),
	.datac(i_left_acombout[11]),
	.datad(vcc),
	.cin(gnd),
	.combout(o_max_dup0_11_),
	.cout());
// synopsys translate_off
defparam ix32374z52923.lut_mask = 16'hE2E2;
defparam ix32374z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X37_Y33_N18
cycloneii_lcell_comb ix33371z52923(
// Equation(s):
// o_max_dup0_12_ = ix33371z19901_anx100z1 & (i_left_acombout[12]) # !ix33371z19901_anx100z1 & i_right_acombout[12]

	.dataa(i_right_acombout[12]),
	.datab(vcc),
	.datac(ix33371z19901_anx100z1),
	.datad(i_left_acombout[12]),
	.cin(gnd),
	.combout(o_max_dup0_12_),
	.cout());
// synopsys translate_off
defparam ix33371z52923.lut_mask = 16'hFA0A;
defparam ix33371z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_G14
cycloneii_io o_max_obuf_0_(
	.datain(o_max_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[0]));
// synopsys translate_off
defparam o_max_obuf_0_.input_async_reset = "none";
defparam o_max_obuf_0_.input_power_up = "low";
defparam o_max_obuf_0_.input_register_mode = "none";
defparam o_max_obuf_0_.input_sync_reset = "none";
defparam o_max_obuf_0_.oe_async_reset = "none";
defparam o_max_obuf_0_.oe_power_up = "low";
defparam o_max_obuf_0_.oe_register_mode = "none";
defparam o_max_obuf_0_.oe_sync_reset = "none";
defparam o_max_obuf_0_.operation_mode = "output";
defparam o_max_obuf_0_.output_async_reset = "none";
defparam o_max_obuf_0_.output_power_up = "low";
defparam o_max_obuf_0_.output_register_mode = "none";
defparam o_max_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE10
cycloneii_io o_max_obuf_1_(
	.datain(o_max_dup0_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[1]));
// synopsys translate_off
defparam o_max_obuf_1_.input_async_reset = "none";
defparam o_max_obuf_1_.input_power_up = "low";
defparam o_max_obuf_1_.input_register_mode = "none";
defparam o_max_obuf_1_.input_sync_reset = "none";
defparam o_max_obuf_1_.oe_async_reset = "none";
defparam o_max_obuf_1_.oe_power_up = "low";
defparam o_max_obuf_1_.oe_register_mode = "none";
defparam o_max_obuf_1_.oe_sync_reset = "none";
defparam o_max_obuf_1_.operation_mode = "output";
defparam o_max_obuf_1_.output_async_reset = "none";
defparam o_max_obuf_1_.output_power_up = "low";
defparam o_max_obuf_1_.output_register_mode = "none";
defparam o_max_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C11
cycloneii_io o_max_obuf_2_(
	.datain(o_max_dup0_2_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[2]));
// synopsys translate_off
defparam o_max_obuf_2_.input_async_reset = "none";
defparam o_max_obuf_2_.input_power_up = "low";
defparam o_max_obuf_2_.input_register_mode = "none";
defparam o_max_obuf_2_.input_sync_reset = "none";
defparam o_max_obuf_2_.oe_async_reset = "none";
defparam o_max_obuf_2_.oe_power_up = "low";
defparam o_max_obuf_2_.oe_register_mode = "none";
defparam o_max_obuf_2_.oe_sync_reset = "none";
defparam o_max_obuf_2_.operation_mode = "output";
defparam o_max_obuf_2_.output_async_reset = "none";
defparam o_max_obuf_2_.output_power_up = "low";
defparam o_max_obuf_2_.output_register_mode = "none";
defparam o_max_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C15
cycloneii_io o_max_obuf_3_(
	.datain(o_max_dup0_3_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[3]));
// synopsys translate_off
defparam o_max_obuf_3_.input_async_reset = "none";
defparam o_max_obuf_3_.input_power_up = "low";
defparam o_max_obuf_3_.input_register_mode = "none";
defparam o_max_obuf_3_.input_sync_reset = "none";
defparam o_max_obuf_3_.oe_async_reset = "none";
defparam o_max_obuf_3_.oe_power_up = "low";
defparam o_max_obuf_3_.oe_register_mode = "none";
defparam o_max_obuf_3_.oe_sync_reset = "none";
defparam o_max_obuf_3_.operation_mode = "output";
defparam o_max_obuf_3_.output_async_reset = "none";
defparam o_max_obuf_3_.output_power_up = "low";
defparam o_max_obuf_3_.output_register_mode = "none";
defparam o_max_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C12
cycloneii_io o_max_obuf_4_(
	.datain(o_max_dup0_4_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[4]));
// synopsys translate_off
defparam o_max_obuf_4_.input_async_reset = "none";
defparam o_max_obuf_4_.input_power_up = "low";
defparam o_max_obuf_4_.input_register_mode = "none";
defparam o_max_obuf_4_.input_sync_reset = "none";
defparam o_max_obuf_4_.oe_async_reset = "none";
defparam o_max_obuf_4_.oe_power_up = "low";
defparam o_max_obuf_4_.oe_register_mode = "none";
defparam o_max_obuf_4_.oe_sync_reset = "none";
defparam o_max_obuf_4_.operation_mode = "output";
defparam o_max_obuf_4_.output_async_reset = "none";
defparam o_max_obuf_4_.output_power_up = "low";
defparam o_max_obuf_4_.output_register_mode = "none";
defparam o_max_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B16
cycloneii_io o_max_obuf_5_(
	.datain(o_max_dup0_5_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[5]));
// synopsys translate_off
defparam o_max_obuf_5_.input_async_reset = "none";
defparam o_max_obuf_5_.input_power_up = "low";
defparam o_max_obuf_5_.input_register_mode = "none";
defparam o_max_obuf_5_.input_sync_reset = "none";
defparam o_max_obuf_5_.oe_async_reset = "none";
defparam o_max_obuf_5_.oe_power_up = "low";
defparam o_max_obuf_5_.oe_register_mode = "none";
defparam o_max_obuf_5_.oe_sync_reset = "none";
defparam o_max_obuf_5_.operation_mode = "output";
defparam o_max_obuf_5_.output_async_reset = "none";
defparam o_max_obuf_5_.output_power_up = "low";
defparam o_max_obuf_5_.output_register_mode = "none";
defparam o_max_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E23
cycloneii_io o_max_obuf_6_(
	.datain(o_max_dup0_6_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[6]));
// synopsys translate_off
defparam o_max_obuf_6_.input_async_reset = "none";
defparam o_max_obuf_6_.input_power_up = "low";
defparam o_max_obuf_6_.input_register_mode = "none";
defparam o_max_obuf_6_.input_sync_reset = "none";
defparam o_max_obuf_6_.oe_async_reset = "none";
defparam o_max_obuf_6_.oe_power_up = "low";
defparam o_max_obuf_6_.oe_register_mode = "none";
defparam o_max_obuf_6_.oe_sync_reset = "none";
defparam o_max_obuf_6_.operation_mode = "output";
defparam o_max_obuf_6_.output_async_reset = "none";
defparam o_max_obuf_6_.output_power_up = "low";
defparam o_max_obuf_6_.output_register_mode = "none";
defparam o_max_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B15
cycloneii_io o_max_obuf_7_(
	.datain(o_max_dup0_7_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[7]));
// synopsys translate_off
defparam o_max_obuf_7_.input_async_reset = "none";
defparam o_max_obuf_7_.input_power_up = "low";
defparam o_max_obuf_7_.input_register_mode = "none";
defparam o_max_obuf_7_.input_sync_reset = "none";
defparam o_max_obuf_7_.oe_async_reset = "none";
defparam o_max_obuf_7_.oe_power_up = "low";
defparam o_max_obuf_7_.oe_register_mode = "none";
defparam o_max_obuf_7_.oe_sync_reset = "none";
defparam o_max_obuf_7_.operation_mode = "output";
defparam o_max_obuf_7_.output_async_reset = "none";
defparam o_max_obuf_7_.output_power_up = "low";
defparam o_max_obuf_7_.output_register_mode = "none";
defparam o_max_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC14
cycloneii_io o_max_obuf_8_(
	.datain(o_max_dup0_8_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[8]));
// synopsys translate_off
defparam o_max_obuf_8_.input_async_reset = "none";
defparam o_max_obuf_8_.input_power_up = "low";
defparam o_max_obuf_8_.input_register_mode = "none";
defparam o_max_obuf_8_.input_sync_reset = "none";
defparam o_max_obuf_8_.oe_async_reset = "none";
defparam o_max_obuf_8_.oe_power_up = "low";
defparam o_max_obuf_8_.oe_register_mode = "none";
defparam o_max_obuf_8_.oe_sync_reset = "none";
defparam o_max_obuf_8_.operation_mode = "output";
defparam o_max_obuf_8_.output_async_reset = "none";
defparam o_max_obuf_8_.output_power_up = "low";
defparam o_max_obuf_8_.output_register_mode = "none";
defparam o_max_obuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G13
cycloneii_io o_max_obuf_9_(
	.datain(o_max_dup0_9_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[9]));
// synopsys translate_off
defparam o_max_obuf_9_.input_async_reset = "none";
defparam o_max_obuf_9_.input_power_up = "low";
defparam o_max_obuf_9_.input_register_mode = "none";
defparam o_max_obuf_9_.input_sync_reset = "none";
defparam o_max_obuf_9_.oe_async_reset = "none";
defparam o_max_obuf_9_.oe_power_up = "low";
defparam o_max_obuf_9_.oe_register_mode = "none";
defparam o_max_obuf_9_.oe_sync_reset = "none";
defparam o_max_obuf_9_.operation_mode = "output";
defparam o_max_obuf_9_.output_async_reset = "none";
defparam o_max_obuf_9_.output_power_up = "low";
defparam o_max_obuf_9_.output_register_mode = "none";
defparam o_max_obuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G12
cycloneii_io o_max_obuf_10_(
	.datain(o_max_dup0_10_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[10]));
// synopsys translate_off
defparam o_max_obuf_10_.input_async_reset = "none";
defparam o_max_obuf_10_.input_power_up = "low";
defparam o_max_obuf_10_.input_register_mode = "none";
defparam o_max_obuf_10_.input_sync_reset = "none";
defparam o_max_obuf_10_.oe_async_reset = "none";
defparam o_max_obuf_10_.oe_power_up = "low";
defparam o_max_obuf_10_.oe_register_mode = "none";
defparam o_max_obuf_10_.oe_sync_reset = "none";
defparam o_max_obuf_10_.operation_mode = "output";
defparam o_max_obuf_10_.output_async_reset = "none";
defparam o_max_obuf_10_.output_power_up = "low";
defparam o_max_obuf_10_.output_register_mode = "none";
defparam o_max_obuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA14
cycloneii_io o_max_obuf_11_(
	.datain(o_max_dup0_11_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[11]));
// synopsys translate_off
defparam o_max_obuf_11_.input_async_reset = "none";
defparam o_max_obuf_11_.input_power_up = "low";
defparam o_max_obuf_11_.input_register_mode = "none";
defparam o_max_obuf_11_.input_sync_reset = "none";
defparam o_max_obuf_11_.oe_async_reset = "none";
defparam o_max_obuf_11_.oe_power_up = "low";
defparam o_max_obuf_11_.oe_register_mode = "none";
defparam o_max_obuf_11_.oe_sync_reset = "none";
defparam o_max_obuf_11_.operation_mode = "output";
defparam o_max_obuf_11_.output_async_reset = "none";
defparam o_max_obuf_11_.output_power_up = "low";
defparam o_max_obuf_11_.output_register_mode = "none";
defparam o_max_obuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D15
cycloneii_io o_max_obuf_12_(
	.datain(o_max_dup0_12_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_max[12]));
// synopsys translate_off
defparam o_max_obuf_12_.input_async_reset = "none";
defparam o_max_obuf_12_.input_power_up = "low";
defparam o_max_obuf_12_.input_register_mode = "none";
defparam o_max_obuf_12_.input_sync_reset = "none";
defparam o_max_obuf_12_.oe_async_reset = "none";
defparam o_max_obuf_12_.oe_power_up = "low";
defparam o_max_obuf_12_.oe_register_mode = "none";
defparam o_max_obuf_12_.oe_sync_reset = "none";
defparam o_max_obuf_12_.operation_mode = "output";
defparam o_max_obuf_12_.output_async_reset = "none";
defparam o_max_obuf_12_.output_power_up = "low";
defparam o_max_obuf_12_.output_register_mode = "none";
defparam o_max_obuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA13
cycloneii_io o_left_greater_obuf(
	.datain(ix33371z19901_anx100z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_left_greater));
// synopsys translate_off
defparam o_left_greater_obuf.input_async_reset = "none";
defparam o_left_greater_obuf.input_power_up = "low";
defparam o_left_greater_obuf.input_register_mode = "none";
defparam o_left_greater_obuf.input_sync_reset = "none";
defparam o_left_greater_obuf.oe_async_reset = "none";
defparam o_left_greater_obuf.oe_power_up = "low";
defparam o_left_greater_obuf.oe_register_mode = "none";
defparam o_left_greater_obuf.oe_sync_reset = "none";
defparam o_left_greater_obuf.operation_mode = "output";
defparam o_left_greater_obuf.output_async_reset = "none";
defparam o_left_greater_obuf.output_power_up = "low";
defparam o_left_greater_obuf.output_register_mode = "none";
defparam o_left_greater_obuf.output_sync_reset = "none";
// synopsys translate_on

endmodule
