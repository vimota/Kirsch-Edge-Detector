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

// DATE "07/15/2014 18:51:35"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module max_chip (	i_left,
	i_right,
	o_left_greater);
input 	[12:0] i_left;
input 	[12:0] i_right;
output 	o_left_greater;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("max_v.sdo");
// synopsys translate_on

wire ix45699z19900_anx100z37;
wire ix45699z19900_anx100z34;
wire ix45699z19900_anx100z31;
wire ix45699z19900_anx100z28;
wire ix45699z19900_anx100z25;
wire ix45699z19900_anx100z22;
wire ix45699z19900_anx100z19;
wire ix45699z19900_anx100z16;
wire ix45699z19900_anx100z13;
wire ix45699z19900_anx100z10;
wire ix45699z19900_anx100z7;
wire ix45699z19900_anx100z4;
wire ix45699z19900_anx100z1;
wire [12:0] i_left_acombout;
wire [12:0] i_right_acombout;


// atom is at PIN_E24
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

// atom is at PIN_C9
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

// atom is at PIN_F11
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

// atom is at PIN_AE10
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

// atom is at PIN_AE7
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

// atom is at PIN_U24
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

// atom is at PIN_W12
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

// atom is at PIN_A9
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

// atom is at PIN_F2
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

// atom is at PIN_H12
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

// atom is at PIN_B9
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

// atom is at PIN_V11
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

// atom is at PIN_AC11
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

// atom is at PIN_C10
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

// atom is at PIN_AC10
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

// atom is at PIN_AE12
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

// atom is at PIN_F4
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

// atom is at PIN_AE8
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

// atom is at PIN_W11
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

// atom is at PIN_B10
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

// atom is at PIN_E10
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

// atom is at PIN_H11
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

// atom is at PIN_D10
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

// atom is at LCCOMB_X19_Y30_N2
cycloneii_lcell_comb ix45699z19900_aix100z52936(
// Equation(s):
// ix45699z19900_anx100z37 = CARRY(i_left_acombout[0] & !i_right_acombout[0])

	.dataa(i_left_acombout[0]),
	.datab(i_right_acombout[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix45699z19900_anx100z37));
// synopsys translate_off
defparam ix45699z19900_aix100z52936.lut_mask = 16'h0022;
defparam ix45699z19900_aix100z52936.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N4
cycloneii_lcell_comb ix45699z19900_aix100z52935(
// Equation(s):
// ix45699z19900_anx100z34 = CARRY(i_left_acombout[1] & i_right_acombout[1] & !ix45699z19900_anx100z37 # !i_left_acombout[1] & (i_right_acombout[1] # !ix45699z19900_anx100z37))

	.dataa(i_left_acombout[1]),
	.datab(i_right_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z37),
	.combout(),
	.cout(ix45699z19900_anx100z34));
// synopsys translate_off
defparam ix45699z19900_aix100z52935.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N6
cycloneii_lcell_comb ix45699z19900_aix100z52934(
// Equation(s):
// ix45699z19900_anx100z31 = CARRY(i_right_acombout[2] & i_left_acombout[2] & !ix45699z19900_anx100z34 # !i_right_acombout[2] & (i_left_acombout[2] # !ix45699z19900_anx100z34))

	.dataa(i_right_acombout[2]),
	.datab(i_left_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z34),
	.combout(),
	.cout(ix45699z19900_anx100z31));
// synopsys translate_off
defparam ix45699z19900_aix100z52934.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N8
cycloneii_lcell_comb ix45699z19900_aix100z52933(
// Equation(s):
// ix45699z19900_anx100z28 = CARRY(i_left_acombout[3] & i_right_acombout[3] & !ix45699z19900_anx100z31 # !i_left_acombout[3] & (i_right_acombout[3] # !ix45699z19900_anx100z31))

	.dataa(i_left_acombout[3]),
	.datab(i_right_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z31),
	.combout(),
	.cout(ix45699z19900_anx100z28));
// synopsys translate_off
defparam ix45699z19900_aix100z52933.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N10
cycloneii_lcell_comb ix45699z19900_aix100z52932(
// Equation(s):
// ix45699z19900_anx100z25 = CARRY(i_right_acombout[4] & i_left_acombout[4] & !ix45699z19900_anx100z28 # !i_right_acombout[4] & (i_left_acombout[4] # !ix45699z19900_anx100z28))

	.dataa(i_right_acombout[4]),
	.datab(i_left_acombout[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z28),
	.combout(),
	.cout(ix45699z19900_anx100z25));
// synopsys translate_off
defparam ix45699z19900_aix100z52932.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N12
cycloneii_lcell_comb ix45699z19900_aix100z52931(
// Equation(s):
// ix45699z19900_anx100z22 = CARRY(i_left_acombout[5] & i_right_acombout[5] & !ix45699z19900_anx100z25 # !i_left_acombout[5] & (i_right_acombout[5] # !ix45699z19900_anx100z25))

	.dataa(i_left_acombout[5]),
	.datab(i_right_acombout[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z25),
	.combout(),
	.cout(ix45699z19900_anx100z22));
// synopsys translate_off
defparam ix45699z19900_aix100z52931.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N14
cycloneii_lcell_comb ix45699z19900_aix100z52930(
// Equation(s):
// ix45699z19900_anx100z19 = CARRY(i_left_acombout[6] & (!ix45699z19900_anx100z22 # !i_right_acombout[6]) # !i_left_acombout[6] & !i_right_acombout[6] & !ix45699z19900_anx100z22)

	.dataa(i_left_acombout[6]),
	.datab(i_right_acombout[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z22),
	.combout(),
	.cout(ix45699z19900_anx100z19));
// synopsys translate_off
defparam ix45699z19900_aix100z52930.lut_mask = 16'h002B;
defparam ix45699z19900_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N16
cycloneii_lcell_comb ix45699z19900_aix100z52929(
// Equation(s):
// ix45699z19900_anx100z16 = CARRY(i_left_acombout[7] & i_right_acombout[7] & !ix45699z19900_anx100z19 # !i_left_acombout[7] & (i_right_acombout[7] # !ix45699z19900_anx100z19))

	.dataa(i_left_acombout[7]),
	.datab(i_right_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z19),
	.combout(),
	.cout(ix45699z19900_anx100z16));
// synopsys translate_off
defparam ix45699z19900_aix100z52929.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N18
cycloneii_lcell_comb ix45699z19900_aix100z52928(
// Equation(s):
// ix45699z19900_anx100z13 = CARRY(i_left_acombout[8] & (!ix45699z19900_anx100z16 # !i_right_acombout[8]) # !i_left_acombout[8] & !i_right_acombout[8] & !ix45699z19900_anx100z16)

	.dataa(i_left_acombout[8]),
	.datab(i_right_acombout[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z16),
	.combout(),
	.cout(ix45699z19900_anx100z13));
// synopsys translate_off
defparam ix45699z19900_aix100z52928.lut_mask = 16'h002B;
defparam ix45699z19900_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N20
cycloneii_lcell_comb ix45699z19900_aix100z52927(
// Equation(s):
// ix45699z19900_anx100z10 = CARRY(i_right_acombout[9] & (!ix45699z19900_anx100z13 # !i_left_acombout[9]) # !i_right_acombout[9] & !i_left_acombout[9] & !ix45699z19900_anx100z13)

	.dataa(i_right_acombout[9]),
	.datab(i_left_acombout[9]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z13),
	.combout(),
	.cout(ix45699z19900_anx100z10));
// synopsys translate_off
defparam ix45699z19900_aix100z52927.lut_mask = 16'h002B;
defparam ix45699z19900_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N22
cycloneii_lcell_comb ix45699z19900_aix100z52926(
// Equation(s):
// ix45699z19900_anx100z7 = CARRY(i_right_acombout[10] & i_left_acombout[10] & !ix45699z19900_anx100z10 # !i_right_acombout[10] & (i_left_acombout[10] # !ix45699z19900_anx100z10))

	.dataa(i_right_acombout[10]),
	.datab(i_left_acombout[10]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z10),
	.combout(),
	.cout(ix45699z19900_anx100z7));
// synopsys translate_off
defparam ix45699z19900_aix100z52926.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N24
cycloneii_lcell_comb ix45699z19900_aix100z52925(
// Equation(s):
// ix45699z19900_anx100z4 = CARRY(i_left_acombout[11] & i_right_acombout[11] & !ix45699z19900_anx100z7 # !i_left_acombout[11] & (i_right_acombout[11] # !ix45699z19900_anx100z7))

	.dataa(i_left_acombout[11]),
	.datab(i_right_acombout[11]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45699z19900_anx100z7),
	.combout(),
	.cout(ix45699z19900_anx100z4));
// synopsys translate_off
defparam ix45699z19900_aix100z52925.lut_mask = 16'h004D;
defparam ix45699z19900_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X19_Y30_N26
cycloneii_lcell_comb ix45699z19900_aix100z52923(
// Equation(s):
// ix45699z19900_anx100z1 = i_right_acombout[12] & !ix45699z19900_anx100z4 & i_left_acombout[12] # !i_right_acombout[12] & (i_left_acombout[12] # !ix45699z19900_anx100z4)

	.dataa(i_right_acombout[12]),
	.datab(vcc),
	.datac(vcc),
	.datad(i_left_acombout[12]),
	.cin(ix45699z19900_anx100z4),
	.combout(ix45699z19900_anx100z1),
	.cout());
// synopsys translate_off
defparam ix45699z19900_aix100z52923.lut_mask = 16'h5F05;
defparam ix45699z19900_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_A10
cycloneii_io o_left_greater_obuf(
	.datain(ix45699z19900_anx100z1),
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
