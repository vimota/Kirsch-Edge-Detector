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

// DATE "07/21/2014 14:06:53"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module flow_chip (	debug_valid,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5,
	debug_num_6,
	debug_num_7,
	debug_num_8,
	t1,
	t2,
	t3,
	b1,
	b2,
	b3,
	i1,
	i2,
	i_clock,
	i_reset,
	i_valid,
	i_mode,
	i_row,
	o_dir,
	o_edge,
	o_valid,
	o_mode,
	o_row);
output 	debug_valid;
output 	[7:0] debug_num_0;
output 	[7:0] debug_num_1;
output 	[7:0] debug_num_2;
output 	[7:0] debug_num_3;
output 	[7:0] debug_num_4;
output 	[7:0] debug_num_5;
output 	[7:0] debug_num_6;
output 	[7:0] debug_num_7;
output 	[7:0] debug_num_8;
input 	[7:0] t1;
input 	[7:0] t2;
input 	[7:0] t3;
input 	[7:0] b1;
input 	[7:0] b2;
input 	[7:0] b3;
input 	[7:0] i1;
input 	[7:0] i2;
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[1:0] i_mode;
input 	[7:0] i_row;
output 	[2:0] o_dir;
output 	o_edge;
output 	o_valid;
output 	[1:0] o_mode;
output 	[7:0] o_row;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("flow_v.sdo");
// synopsys translate_on

wire prev_max_11_;
wire prev_max_8_;
wire prev_max_1_;
wire prev_max_0_;
wire nx31358z5;
wire nx31358z9;
wire p31_10_;
wire p32_9_;
wire p31_8_;
wire p31_7_;
wire p32_6_;
wire p32_5_;
wire p32_4_;
wire p31_3_;
wire p32_2_;
wire p31_1_;
wire p32_0_;
wire p22_10_;
wire p21_8_;
wire p22_7_;
wire p21_4_;
wire p22_3_;
wire p22_1_;
wire p23_9_;
wire p23_6_;
wire p23_5_;
wire p23_4_;
wire p23_2_;
wire p23_0_;
wire p11_add8_0i1_anx38970z1;
wire p11_add8_0i1_anx39967z1;
wire p11_add8_0i1_anx40964z1;
wire p11_add8_0i1_anx42958z1;
wire p12_add8_0i2_anx38970z1;
wire p12_add8_0i2_anx40964z1;
wire p12_add8_0i2_anx41961z1;
wire p12_add8_0i2_anx44952z1;
wire p21_sub11_3i1_anx37973z1;
wire p21_sub11_3i1_anx38970z1;
wire p21_sub11_3i1_anx40964z1;
wire p21_sub11_3i1_anx41961z1;
wire p21_sub11_3i1_anx42958z1;
wire p21_sub11_3i1_anx43955z1;
wire p21_sub11_3i1_anx45949z1;
wire p21_sub10_3i3_anx41961z1;
wire p21_sub10_3i3_anx46946z1;
wire ix52975z52630_anx40964z1;
wire ix52975z52630_anx44952z1;
wire p22_sub11_3i2_anx37973z1;
wire p22_sub11_3i2_anx38970z1;
wire p22_sub11_3i2_anx40964z1;
wire p22_sub11_3i2_anx42958z1;
wire p22_sub11_3i2_anx45949z1;
wire p22_sub10_3i4_anx38970z1;
wire p22_sub10_3i4_anx41961z1;
wire p22_sub10_3i4_anx43955z1;
wire p22_sub10_3i4_anx45949z1;
wire p22_sub10_3i4_anx46946z1;
wire ix47840z52631_anx37973z1;
wire ix47840z52631_anx39967z1;
wire ix47840z52631_anx43955z1;
wire ix47840z52631_anx46946z1;
wire p13_add8_0i3_anx38970z1;
wire p13_add8_0i3_anx41961z1;
wire p13_add8_0i3_anx44952z1;
wire p13_add9_3_anx38970z1;
wire p13_add9_3_anx40964z1;
wire p13_add9_3_anx41961z1;
wire p13_add9_3_anx42958z1;
wire p13_add9_3_anx45949z1;
wire p31_10__afeeder_combout;
wire p31_8__afeeder_combout;
wire p31_7__afeeder_combout;
wire p31_3__afeeder_combout;
wire p31_1__afeeder_combout;
wire p32_6__afeeder_combout;
wire p32_5__afeeder_combout;
wire p32_4__afeeder_combout;
wire p32_2__afeeder_combout;
wire p32_0__afeeder_combout;
wire p22_1__afeeder_combout;
wire p22_3__afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire nx28524z1_a_wirecell_combout;
wire i_reset_acombout;
wire nx40824z1;
wire nx39827z1_afeeder_combout;
wire nx39827z1;
wire p40;
wire nx26530z1;
wire state_1_;
wire state_2_;
wire state_3_;
wire state_3__a_wirecell_combout;
wire nx28524z1;
wire p11_add8_0i1_anx44952z22;
wire p11_add8_0i1_anx44952z19;
wire p11_add8_0i1_anx44952z16;
wire p11_add8_0i1_anx44952z13;
wire p11_add8_0i1_anx44952z10;
wire p11_add8_0i1_anx44952z7;
wire p11_add8_0i1_anx44952z4;
wire p11_add8_0i1_anx23445z2;
wire p11_add8_0i1_anx23445z1;
wire p11_add8_0i1_anx44952z1;
wire p11_add8_0i1_anx43955z1;
wire p11_add8_0i1_anx41961z1;
wire p11_add8_0i1_anx37973z1;
wire p11_add9_1_anx45949z24;
wire p11_add9_1_anx45949z21;
wire p11_add9_1_anx45949z18;
wire p11_add9_1_anx45949z15;
wire p11_add9_1_anx45949z12;
wire p11_add9_1_anx45949z9;
wire p11_add9_1_anx45949z6;
wire p11_add9_1_anx45949z3;
wire p11_add9_1_anx23445z2;
wire p11_add9_1_anx23445z1;
wire p12_add8_0i2_anx44952z22;
wire p12_add8_0i2_anx44952z19;
wire p12_add8_0i2_anx44952z16;
wire p12_add8_0i2_anx44952z13;
wire p12_add8_0i2_anx44952z10;
wire p12_add8_0i2_anx44952z7;
wire p12_add8_0i2_anx44952z4;
wire p12_add8_0i2_anx23445z2;
wire p12_add8_0i2_anx23445z1;
wire p12_add8_0i2_anx43955z1;
wire p12_add8_0i2_anx42958z1;
wire p12_add8_0i2_anx39967z1;
wire p12_add8_0i2_anx37973z1;
wire p12_add9_2_anx45949z24;
wire p12_add9_2_anx45949z21;
wire p12_add9_2_anx45949z18;
wire p12_add9_2_anx45949z15;
wire p12_add9_2_anx45949z12;
wire p12_add9_2_anx45949z9;
wire p12_add9_2_anx45949z6;
wire p12_add9_2_anx45949z3;
wire p12_add9_2_anx45949z1;
wire p11_add9_1_anx44952z1;
wire p11_add9_1_anx43955z1;
wire p12_add9_2_anx42958z1;
wire p12_add9_2_anx41961z1;
wire p11_add9_1_anx40964z1;
wire p11_add9_1_anx39967z1;
wire p11_add9_1_anx38970z1;
wire p11_add9_1_anx37973z1;
wire p22_sub10_3i4_anx46946z28;
wire p22_sub10_3i4_anx46946z25;
wire p22_sub10_3i4_anx46946z22;
wire p22_sub10_3i4_anx46946z19;
wire p22_sub10_3i4_anx46946z16;
wire p22_sub10_3i4_anx46946z13;
wire p22_sub10_3i4_anx46946z10;
wire p22_sub10_3i4_anx46946z7;
wire p22_sub10_3i4_anx46946z4;
wire p22_sub10_3i4_anx23445z2;
wire p22_sub10_3i4_anx23445z1;
wire p12_add9_2_anx23445z2;
wire p12_add9_2_anx23445z1;
wire p11_add9_1_anx45949z1;
wire p12_add9_2_anx40964z1;
wire p12_add9_2_anx38970z1;
wire p12_add9_2_anx37973z1;
wire p22_sub11_3i2_anx46946z29;
wire p22_sub11_3i2_anx46946z27;
wire p22_sub11_3i2_anx46946z24;
wire p22_sub11_3i2_anx46946z21;
wire p22_sub11_3i2_anx46946z18;
wire p22_sub11_3i2_anx46946z15;
wire p22_sub11_3i2_anx46946z12;
wire p22_sub11_3i2_anx46946z9;
wire p22_sub11_3i2_anx46946z6;
wire p22_sub11_3i2_anx46946z3;
wire p22_sub11_3i2_anx46946z1;
wire p22_sub11_3i2_anx44952z1;
wire p22_sub11_3i2_anx43955z1;
wire p22_sub10_3i4_anx44952z1;
wire p22_sub11_3i2_anx41961z1;
wire p22_sub10_3i4_anx42958z1;
wire p22_sub11_3i2_anx39967z1;
wire p22_sub10_3i4_anx40964z1;
wire p22_sub10_3i4_anx39967z1;
wire ix47840z52631_anx62798z30;
wire ix47840z52631_anx62798z27;
wire ix47840z52631_anx62798z24;
wire ix47840z52631_anx62798z21;
wire ix47840z52631_anx62798z18;
wire ix47840z52631_anx62798z15;
wire ix47840z52631_anx62798z12;
wire ix47840z52631_anx62798z9;
wire ix47840z52631_anx62798z6;
wire ix47840z52631_anx62798z4;
wire ix47840z52631_anx62798z1;
wire p22_11_;
wire p12_add9_2_anx44952z1;
wire p12_add9_2_anx43955z1;
wire p11_add9_1_anx41961z1;
wire p12_add9_2_anx39967z1;
wire p21_sub10_3i3_anx46946z28;
wire p21_sub10_3i3_anx46946z25;
wire p21_sub10_3i3_anx46946z22;
wire p21_sub10_3i3_anx46946z19;
wire p21_sub10_3i3_anx46946z16;
wire p21_sub10_3i3_anx46946z13;
wire p21_sub10_3i3_anx46946z10;
wire p21_sub10_3i3_anx46946z7;
wire p21_sub10_3i3_anx46946z4;
wire p21_sub10_3i3_anx23445z2;
wire p21_sub10_3i3_anx23445z1;
wire p11_add9_1_anx42958z1;
wire p21_sub11_3i1_anx46946z29;
wire p21_sub11_3i1_anx46946z27;
wire p21_sub11_3i1_anx46946z24;
wire p21_sub11_3i1_anx46946z21;
wire p21_sub11_3i1_anx46946z18;
wire p21_sub11_3i1_anx46946z15;
wire p21_sub11_3i1_anx46946z12;
wire p21_sub11_3i1_anx46946z9;
wire p21_sub11_3i1_anx46946z6;
wire p21_sub11_3i1_anx46946z3;
wire p21_sub11_3i1_anx46946z1;
wire p21_sub11_3i1_anx44952z1;
wire p21_sub10_3i3_anx45949z1;
wire p21_sub10_3i3_anx44952z1;
wire p21_sub10_3i3_anx43955z1;
wire p21_sub10_3i3_anx42958z1;
wire p21_sub11_3i1_anx39967z1;
wire p21_sub10_3i3_anx40964z1;
wire p21_sub10_3i3_anx39967z1;
wire p21_sub10_3i3_anx38970z1;
wire ix52975z52630_anx62798z30;
wire ix52975z52630_anx62798z27;
wire ix52975z52630_anx62798z24;
wire ix52975z52630_anx62798z21;
wire ix52975z52630_anx62798z18;
wire ix52975z52630_anx62798z15;
wire ix52975z52630_anx62798z12;
wire ix52975z52630_anx62798z9;
wire ix52975z52630_anx62798z6;
wire ix52975z52630_anx62798z4;
wire ix52975z52630_anx62798z1;
wire p21_11_;
wire ix52975z52630_anx46946z1;
wire p21_10_;
wire ix47840z52631_anx45949z1;
wire p22_9_;
wire ix47840z52631_anx44952z1;
wire p22_8_;
wire ix52975z52630_anx43955z1;
wire p21_7_;
wire ix52975z52630_anx42958z1;
wire p21_6_;
wire ix52975z52630_anx41961z1;
wire p21_5_;
wire ix47840z52631_anx40964z1;
wire p22_4__afeeder_combout;
wire p22_4_;
wire ix52975z52630_anx39967z1;
wire p21_3_;
wire ix52975z52630_anx38970z1;
wire p21_2_;
wire ix52975z52630_anx37973z1;
wire p21_1_;
wire p21_sub10_3i3_anx37973z1;
wire p21_0_;
wire ix45188z30868_anx100z34;
wire ix45188z30868_anx100z31;
wire ix45188z30868_anx100z28;
wire ix45188z30868_anx100z25;
wire ix45188z30868_anx100z22;
wire ix45188z30868_anx100z19;
wire ix45188z30868_anx100z16;
wire ix45188z30868_anx100z13;
wire ix45188z30868_anx100z10;
wire ix45188z30868_anx100z7;
wire ix45188z30868_anx100z4;
wire ix45188z30868_anx100z1;
wire ix45188z30868_anx100z1_a_wirecell_combout;
wire p35;
wire p45_afeeder_combout;
wire p45;
wire nx30409z1;
wire p31_11__afeeder_combout;
wire p31_11_;
wire p13_add8_0i3_anx44952z22;
wire p13_add8_0i3_anx44952z19;
wire p13_add8_0i3_anx44952z16;
wire p13_add8_0i3_anx44952z13;
wire p13_add8_0i3_anx44952z10;
wire p13_add8_0i3_anx44952z7;
wire p13_add8_0i3_anx44952z4;
wire p13_add8_0i3_anx23445z2;
wire p13_add8_0i3_anx23445z1;
wire p13_add8_0i3_anx43955z1;
wire p13_add8_0i3_anx42958z1;
wire p13_add8_0i3_anx40964z1;
wire p13_add8_0i3_anx39967z1;
wire p13_add8_0i3_anx37973z1;
wire p13_add9_3_anx45949z17;
wire p13_add9_3_anx45949z15;
wire p13_add9_3_anx45949z13;
wire p13_add9_3_anx45949z11;
wire p13_add9_3_anx45949z9;
wire p13_add9_3_anx45949z7;
wire p13_add9_3_anx45949z5;
wire p13_add9_3_anx45949z3;
wire p13_add9_3_anx23445z2;
wire p13_add9_3_anx23445z1;
wire p23_10_;
wire p32_10__afeeder_combout;
wire p32_10_;
wire ix52975z52630_anx45949z1;
wire p21_9_;
wire p31_9__afeeder_combout;
wire p31_9_;
wire p13_add9_3_anx44952z1;
wire p23_8_;
wire p32_8__afeeder_combout;
wire p32_8_;
wire p13_add9_3_anx43955z1;
wire p23_7_;
wire p32_7_;
wire p31_6__afeeder_combout;
wire ix47840z52631_anx42958z1;
wire p22_6_;
wire p31_6_;
wire p31_5__afeeder_combout;
wire ix47840z52631_anx41961z1;
wire p22_5_;
wire p31_5_;
wire p31_4__afeeder_combout;
wire p31_4_;
wire p13_add9_3_anx39967z1;
wire p23_3_;
wire p32_3_;
wire p31_2__afeeder_combout;
wire ix47840z52631_anx38970z1;
wire p22_2__afeeder_combout;
wire p22_2_;
wire p31_2_;
wire p13_add9_3_anx37973z1;
wire p23_1_;
wire p32_1__afeeder_combout;
wire p32_1_;
wire p31_0__afeeder_combout;
wire p22_sub10_3i4_anx37973z1;
wire p22_0_;
wire p31_0_;
wire p4s_sub12_0_anx63795z33;
wire p4s_sub12_0_anx63795z30;
wire p4s_sub12_0_anx63795z27;
wire p4s_sub12_0_anx63795z24;
wire p4s_sub12_0_anx63795z21;
wire p4s_sub12_0_anx63795z18;
wire p4s_sub12_0_anx63795z15;
wire p4s_sub12_0_anx63795z12;
wire p4s_sub12_0_anx63795z9;
wire p4s_sub12_0_anx63795z6;
wire p4s_sub12_0_anx63795z3;
wire p4s_sub12_0_anx63795z1;
wire p43_11_;
wire p4s_sub12_0_anx62798z1;
wire p43_10_;
wire nx30361z1;
wire p4s_sub12_0_anx39967z1;
wire p43_2_;
wire prev_max_2_;
wire p4s_sub12_0_anx40964z1;
wire p43_3_;
wire prev_max_3_;
wire nx31358z8;
wire max_fwd;
wire nx31358z10;
wire p4s_sub12_0_anx44952z1;
wire p43_7_;
wire prev_max_7_;
wire p4s_sub12_0_anx43955z1;
wire p43_6_;
wire prev_max_6_;
wire nx31358z6;
wire nx31358z4;
wire p4s_sub12_0_anx41961z1;
wire p43_4_;
wire p4s_sub12_0_anx42958z1;
wire p43_5_;
wire prev_max_5_;
wire prev_max_4_;
wire nx31358z7;
wire nx31358z3;
wire nx31358z2;
wire nx31358z1;
wire prev_max_10_;
wire p4s_sub12_0_anx46946z1;
wire p43_9_;
wire prev_max_9_;
wire p4s_sub12_0_anx45949z1;
wire p43_8_;
wire p4s_sub12_0_anx38970z1;
wire p43_1_;
wire p4s_sub12_0_anx37973z1;
wire p43_0_;
wire ix32403z30872_anx100z34;
wire ix32403z30872_anx100z31;
wire ix32403z30872_anx100z28;
wire ix32403z30872_anx100z25;
wire ix32403z30872_anx100z22;
wire ix32403z30872_anx100z19;
wire ix32403z30872_anx100z16;
wire ix32403z30872_anx100z13;
wire ix32403z30872_anx100z10;
wire ix32403z30872_anx100z7;
wire ix32403z30872_anx100z4;
wire ix32403z30872_anx100z1;
wire nx32403z3;
wire nx63886z1;
wire nx32403z5;
wire nx32403z2;
wire nx62889z1;
wire nx32403z1;
wire nx61892z1;
wire nx26026z2;
wire nx26026z1;
wire p41;
wire prev_edge;
wire nx45767z1_afeeder_combout;
wire nx45767z1;
wire o_valid_dup0;
wire nx42010z1;
wire nx47145z1_afeeder_combout;
wire nx47145z1;
wire nx13256z1_afeeder_combout;
wire nx13256z1;
wire p5m_0_;
wire o_mode_dup0_0_;
wire nx41013z1;
wire nx46148z1_afeeder_combout;
wire nx46148z1;
wire nx14253z1_afeeder_combout;
wire nx14253z1;
wire p5m_1_;
wire o_mode_dup0_1_;
wire nx22790z1;
wire nx27925z1_afeeder_combout;
wire nx27925z1;
wire nx38634z1_afeeder_combout;
wire nx38634z1;
wire nx16335z1_afeeder_combout;
wire nx16335z1;
wire nx21793z1;
wire nx26928z1_afeeder_combout;
wire nx26928z1;
wire nx39631z1_afeeder_combout;
wire nx39631z1;
wire nx17332z1_afeeder_combout;
wire nx17332z1;
wire nx20796z1;
wire nx25931z1_afeeder_combout;
wire nx25931z1;
wire nx40628z1_afeeder_combout;
wire nx40628z1;
wire nx18329z1_afeeder_combout;
wire nx18329z1;
wire nx19799z1;
wire nx24934z1_afeeder_combout;
wire nx24934z1;
wire nx41625z1_afeeder_combout;
wire nx41625z1;
wire nx19326z1_afeeder_combout;
wire nx19326z1;
wire nx18802z1;
wire nx23937z1_afeeder_combout;
wire nx23937z1;
wire nx42622z1_afeeder_combout;
wire nx42622z1;
wire nx20323z1_afeeder_combout;
wire nx20323z1;
wire nx17805z1;
wire nx22940z1_afeeder_combout;
wire nx22940z1;
wire nx43619z1_afeeder_combout;
wire nx43619z1;
wire nx21320z1_afeeder_combout;
wire nx21320z1;
wire nx16808z1;
wire nx21943z1_afeeder_combout;
wire nx21943z1;
wire nx44616z1_afeeder_combout;
wire nx44616z1;
wire nx22317z1_afeeder_combout;
wire nx22317z1;
wire nx15811z1;
wire nx20946z1_afeeder_combout;
wire nx20946z1;
wire nx45613z1_afeeder_combout;
wire nx45613z1;
wire nx23314z1_afeeder_combout;
wire nx23314z1;
wire [7:0] b1_acombout;
wire [7:0] b2_acombout;
wire [7:0] b3_acombout;
wire [7:0] i1_acombout;
wire [7:0] i2_acombout;
wire [7:0] t1_acombout;
wire [7:0] t2_acombout;
wire [7:0] t3_acombout;


// atom is at LCFF_X55_Y23_N25
cycloneii_lcell_ff reg_prev_max_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_11_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_11_));

// atom is at LCFF_X55_Y23_N23
cycloneii_lcell_ff reg_prev_max_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_8_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_8_));

// atom is at LCFF_X55_Y23_N7
cycloneii_lcell_ff reg_prev_max_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_1_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_1_));

// atom is at LCFF_X55_Y23_N5
cycloneii_lcell_ff reg_prev_max_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_0_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_0_));

// atom is at LCCOMB_X55_Y23_N2
cycloneii_lcell_comb ix31358z52927(
// Equation(s):
// nx31358z5 = p43_9_ & (p43_8_ $ prev_max_8_ # !prev_max_9_) # !p43_9_ & (prev_max_9_ # p43_8_ $ prev_max_8_)

	.dataa(p43_9_),
	.datab(p43_8_),
	.datac(prev_max_9_),
	.datad(prev_max_8_),
	.cin(gnd),
	.combout(nx31358z5),
	.cout());
// synopsys translate_off
defparam ix31358z52927.lut_mask = 16'h7BDE;
defparam ix31358z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N24
cycloneii_lcell_comb ix31358z52931(
// Equation(s):
// nx31358z9 = prev_max_0_ & (p43_1_ $ prev_max_1_ # !p43_0_) # !prev_max_0_ & (p43_0_ # p43_1_ $ prev_max_1_)

	.dataa(prev_max_0_),
	.datab(p43_0_),
	.datac(p43_1_),
	.datad(prev_max_1_),
	.cin(gnd),
	.combout(nx31358z9),
	.cout());
// synopsys translate_off
defparam ix31358z52931.lut_mask = 16'h6FF6;
defparam ix31358z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N3
cycloneii_lcell_ff reg_p31_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_10__afeeder_combout),
	.sdata(p22_10_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_10_));

// atom is at LCFF_X56_Y27_N3
cycloneii_lcell_ff reg_p32_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p23_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_9_));

// atom is at LCFF_X57_Y22_N3
cycloneii_lcell_ff reg_p31_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_8__afeeder_combout),
	.sdata(p22_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_8_));

// atom is at LCFF_X56_Y22_N5
cycloneii_lcell_ff reg_p31_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_7__afeeder_combout),
	.sdata(p22_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_7_));

// atom is at LCFF_X56_Y24_N17
cycloneii_lcell_ff reg_p32_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_6_));

// atom is at LCFF_X56_Y27_N27
cycloneii_lcell_ff reg_p32_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_5_));

// atom is at LCFF_X56_Y27_N29
cycloneii_lcell_ff reg_p32_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_4_));

// atom is at LCFF_X55_Y22_N1
cycloneii_lcell_ff reg_p31_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_3__afeeder_combout),
	.sdata(p22_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_3_));

// atom is at LCFF_X55_Y24_N17
cycloneii_lcell_ff reg_p32_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_2_));

// atom is at LCFF_X56_Y23_N3
cycloneii_lcell_ff reg_p31_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_1__afeeder_combout),
	.sdata(p22_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_1_));

// atom is at LCFF_X56_Y23_N31
cycloneii_lcell_ff reg_p32_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_0_));

// atom is at LCFF_X55_Y22_N27
cycloneii_lcell_ff reg_p22_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_10_));

// atom is at LCFF_X57_Y22_N25
cycloneii_lcell_ff reg_p21_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_8_));

// atom is at LCFF_X55_Y22_N21
cycloneii_lcell_ff reg_p22_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_7_));

// atom is at LCFF_X57_Y22_N17
cycloneii_lcell_ff reg_p21_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_4_));

// atom is at LCFF_X55_Y22_N3
cycloneii_lcell_ff reg_p22_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p22_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_3_));

// atom is at LCFF_X55_Y22_N7
cycloneii_lcell_ff reg_p22_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p22_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_1_));

// atom is at LCFF_X56_Y27_N21
cycloneii_lcell_ff reg_p23_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_9_));

// atom is at LCFF_X56_Y27_N15
cycloneii_lcell_ff reg_p23_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_6_));

// atom is at LCFF_X56_Y27_N13
cycloneii_lcell_ff reg_p23_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_5_));

// atom is at LCFF_X56_Y27_N11
cycloneii_lcell_ff reg_p23_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_4_));

// atom is at LCFF_X56_Y27_N7
cycloneii_lcell_ff reg_p23_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_2_));

// atom is at LCFF_X57_Y27_N3
cycloneii_lcell_ff reg_p23_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add8_0i3_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_0_));

// atom is at PIN_D13
cycloneii_io t2_ibuf_7_(
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
	.combout(t2_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[7]));
// synopsys translate_off
defparam t2_ibuf_7_.input_async_reset = "none";
defparam t2_ibuf_7_.input_power_up = "low";
defparam t2_ibuf_7_.input_register_mode = "none";
defparam t2_ibuf_7_.input_sync_reset = "none";
defparam t2_ibuf_7_.oe_async_reset = "none";
defparam t2_ibuf_7_.oe_power_up = "low";
defparam t2_ibuf_7_.oe_register_mode = "none";
defparam t2_ibuf_7_.oe_sync_reset = "none";
defparam t2_ibuf_7_.operation_mode = "input";
defparam t2_ibuf_7_.output_async_reset = "none";
defparam t2_ibuf_7_.output_power_up = "low";
defparam t2_ibuf_7_.output_register_mode = "none";
defparam t2_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L20
cycloneii_io t2_ibuf_6_(
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
	.combout(t2_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[6]));
// synopsys translate_off
defparam t2_ibuf_6_.input_async_reset = "none";
defparam t2_ibuf_6_.input_power_up = "low";
defparam t2_ibuf_6_.input_register_mode = "none";
defparam t2_ibuf_6_.input_sync_reset = "none";
defparam t2_ibuf_6_.oe_async_reset = "none";
defparam t2_ibuf_6_.oe_power_up = "low";
defparam t2_ibuf_6_.oe_register_mode = "none";
defparam t2_ibuf_6_.oe_sync_reset = "none";
defparam t2_ibuf_6_.operation_mode = "input";
defparam t2_ibuf_6_.output_async_reset = "none";
defparam t2_ibuf_6_.output_power_up = "low";
defparam t2_ibuf_6_.output_register_mode = "none";
defparam t2_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J26
cycloneii_io t1_ibuf_5_(
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
	.combout(t1_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[5]));
// synopsys translate_off
defparam t1_ibuf_5_.input_async_reset = "none";
defparam t1_ibuf_5_.input_power_up = "low";
defparam t1_ibuf_5_.input_register_mode = "none";
defparam t1_ibuf_5_.input_sync_reset = "none";
defparam t1_ibuf_5_.oe_async_reset = "none";
defparam t1_ibuf_5_.oe_power_up = "low";
defparam t1_ibuf_5_.oe_register_mode = "none";
defparam t1_ibuf_5_.oe_sync_reset = "none";
defparam t1_ibuf_5_.operation_mode = "input";
defparam t1_ibuf_5_.output_async_reset = "none";
defparam t1_ibuf_5_.output_power_up = "low";
defparam t1_ibuf_5_.output_register_mode = "none";
defparam t1_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K19
cycloneii_io t2_ibuf_4_(
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
	.combout(t2_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[4]));
// synopsys translate_off
defparam t2_ibuf_4_.input_async_reset = "none";
defparam t2_ibuf_4_.input_power_up = "low";
defparam t2_ibuf_4_.input_register_mode = "none";
defparam t2_ibuf_4_.input_sync_reset = "none";
defparam t2_ibuf_4_.oe_async_reset = "none";
defparam t2_ibuf_4_.oe_power_up = "low";
defparam t2_ibuf_4_.oe_register_mode = "none";
defparam t2_ibuf_4_.oe_sync_reset = "none";
defparam t2_ibuf_4_.operation_mode = "input";
defparam t2_ibuf_4_.output_async_reset = "none";
defparam t2_ibuf_4_.output_power_up = "low";
defparam t2_ibuf_4_.output_register_mode = "none";
defparam t2_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B19
cycloneii_io t2_ibuf_3_(
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
	.combout(t2_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[3]));
// synopsys translate_off
defparam t2_ibuf_3_.input_async_reset = "none";
defparam t2_ibuf_3_.input_power_up = "low";
defparam t2_ibuf_3_.input_register_mode = "none";
defparam t2_ibuf_3_.input_sync_reset = "none";
defparam t2_ibuf_3_.oe_async_reset = "none";
defparam t2_ibuf_3_.oe_power_up = "low";
defparam t2_ibuf_3_.oe_register_mode = "none";
defparam t2_ibuf_3_.oe_sync_reset = "none";
defparam t2_ibuf_3_.operation_mode = "input";
defparam t2_ibuf_3_.output_async_reset = "none";
defparam t2_ibuf_3_.output_power_up = "low";
defparam t2_ibuf_3_.output_register_mode = "none";
defparam t2_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J18
cycloneii_io t1_ibuf_2_(
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
	.combout(t1_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[2]));
// synopsys translate_off
defparam t1_ibuf_2_.input_async_reset = "none";
defparam t1_ibuf_2_.input_power_up = "low";
defparam t1_ibuf_2_.input_register_mode = "none";
defparam t1_ibuf_2_.input_sync_reset = "none";
defparam t1_ibuf_2_.oe_async_reset = "none";
defparam t1_ibuf_2_.oe_power_up = "low";
defparam t1_ibuf_2_.oe_register_mode = "none";
defparam t1_ibuf_2_.oe_sync_reset = "none";
defparam t1_ibuf_2_.operation_mode = "input";
defparam t1_ibuf_2_.output_async_reset = "none";
defparam t1_ibuf_2_.output_power_up = "low";
defparam t1_ibuf_2_.output_register_mode = "none";
defparam t1_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A20
cycloneii_io t2_ibuf_1_(
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
	.combout(t2_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[1]));
// synopsys translate_off
defparam t2_ibuf_1_.input_async_reset = "none";
defparam t2_ibuf_1_.input_power_up = "low";
defparam t2_ibuf_1_.input_register_mode = "none";
defparam t2_ibuf_1_.input_sync_reset = "none";
defparam t2_ibuf_1_.oe_async_reset = "none";
defparam t2_ibuf_1_.oe_power_up = "low";
defparam t2_ibuf_1_.oe_register_mode = "none";
defparam t2_ibuf_1_.oe_sync_reset = "none";
defparam t2_ibuf_1_.operation_mode = "input";
defparam t2_ibuf_1_.output_async_reset = "none";
defparam t2_ibuf_1_.output_power_up = "low";
defparam t2_ibuf_1_.output_register_mode = "none";
defparam t2_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D19
cycloneii_io t2_ibuf_0_(
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
	.combout(t2_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[0]));
// synopsys translate_off
defparam t2_ibuf_0_.input_async_reset = "none";
defparam t2_ibuf_0_.input_power_up = "low";
defparam t2_ibuf_0_.input_register_mode = "none";
defparam t2_ibuf_0_.input_sync_reset = "none";
defparam t2_ibuf_0_.oe_async_reset = "none";
defparam t2_ibuf_0_.oe_power_up = "low";
defparam t2_ibuf_0_.oe_register_mode = "none";
defparam t2_ibuf_0_.oe_sync_reset = "none";
defparam t2_ibuf_0_.operation_mode = "input";
defparam t2_ibuf_0_.output_async_reset = "none";
defparam t2_ibuf_0_.output_power_up = "low";
defparam t2_ibuf_0_.output_register_mode = "none";
defparam t2_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N12
cycloneii_lcell_comb p11_add8_0i1_aix44952z52930(
// Equation(s):
// p11_add8_0i1_anx38970z1 = t2_acombout[1] & (t1_acombout[1] & p11_add8_0i1_anx44952z22 & VCC # !t1_acombout[1] & !p11_add8_0i1_anx44952z22) # !t2_acombout[1] & (t1_acombout[1] & !p11_add8_0i1_anx44952z22 # !t1_acombout[1] & (p11_add8_0i1_anx44952z22 # 
// GND))
// p11_add8_0i1_anx44952z19 = CARRY(t2_acombout[1] & !t1_acombout[1] & !p11_add8_0i1_anx44952z22 # !t2_acombout[1] & (!p11_add8_0i1_anx44952z22 # !t1_acombout[1]))

	.dataa(t2_acombout[1]),
	.datab(t1_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z22),
	.combout(p11_add8_0i1_anx38970z1),
	.cout(p11_add8_0i1_anx44952z19));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52930.lut_mask = 16'h9617;
defparam p11_add8_0i1_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N14
cycloneii_lcell_comb p11_add8_0i1_aix44952z52929(
// Equation(s):
// p11_add8_0i1_anx39967z1 = (t1_acombout[2] $ t2_acombout[2] $ !p11_add8_0i1_anx44952z19) # GND
// p11_add8_0i1_anx44952z16 = CARRY(t1_acombout[2] & (t2_acombout[2] # !p11_add8_0i1_anx44952z19) # !t1_acombout[2] & t2_acombout[2] & !p11_add8_0i1_anx44952z19)

	.dataa(t1_acombout[2]),
	.datab(t2_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z19),
	.combout(p11_add8_0i1_anx39967z1),
	.cout(p11_add8_0i1_anx44952z16));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52929.lut_mask = 16'h698E;
defparam p11_add8_0i1_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N16
cycloneii_lcell_comb p11_add8_0i1_aix44952z52928(
// Equation(s):
// p11_add8_0i1_anx40964z1 = t2_acombout[3] & (t1_acombout[3] & p11_add8_0i1_anx44952z16 & VCC # !t1_acombout[3] & !p11_add8_0i1_anx44952z16) # !t2_acombout[3] & (t1_acombout[3] & !p11_add8_0i1_anx44952z16 # !t1_acombout[3] & (p11_add8_0i1_anx44952z16 # 
// GND))
// p11_add8_0i1_anx44952z13 = CARRY(t2_acombout[3] & !t1_acombout[3] & !p11_add8_0i1_anx44952z16 # !t2_acombout[3] & (!p11_add8_0i1_anx44952z16 # !t1_acombout[3]))

	.dataa(t2_acombout[3]),
	.datab(t1_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z16),
	.combout(p11_add8_0i1_anx40964z1),
	.cout(p11_add8_0i1_anx44952z13));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52928.lut_mask = 16'h9617;
defparam p11_add8_0i1_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N20
cycloneii_lcell_comb p11_add8_0i1_aix44952z52926(
// Equation(s):
// p11_add8_0i1_anx42958z1 = t1_acombout[5] & (t2_acombout[5] & p11_add8_0i1_anx44952z10 & VCC # !t2_acombout[5] & !p11_add8_0i1_anx44952z10) # !t1_acombout[5] & (t2_acombout[5] & !p11_add8_0i1_anx44952z10 # !t2_acombout[5] & (p11_add8_0i1_anx44952z10 # 
// GND))
// p11_add8_0i1_anx44952z7 = CARRY(t1_acombout[5] & !t2_acombout[5] & !p11_add8_0i1_anx44952z10 # !t1_acombout[5] & (!p11_add8_0i1_anx44952z10 # !t2_acombout[5]))

	.dataa(t1_acombout[5]),
	.datab(t2_acombout[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z10),
	.combout(p11_add8_0i1_anx42958z1),
	.cout(p11_add8_0i1_anx44952z7));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52926.lut_mask = 16'h9617;
defparam p11_add8_0i1_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_M22
cycloneii_io t3_ibuf_7_(
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
	.combout(t3_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[7]));
// synopsys translate_off
defparam t3_ibuf_7_.input_async_reset = "none";
defparam t3_ibuf_7_.input_power_up = "low";
defparam t3_ibuf_7_.input_register_mode = "none";
defparam t3_ibuf_7_.input_sync_reset = "none";
defparam t3_ibuf_7_.oe_async_reset = "none";
defparam t3_ibuf_7_.oe_power_up = "low";
defparam t3_ibuf_7_.oe_register_mode = "none";
defparam t3_ibuf_7_.oe_sync_reset = "none";
defparam t3_ibuf_7_.operation_mode = "input";
defparam t3_ibuf_7_.output_async_reset = "none";
defparam t3_ibuf_7_.output_power_up = "low";
defparam t3_ibuf_7_.output_register_mode = "none";
defparam t3_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K25
cycloneii_io t3_ibuf_6_(
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
	.combout(t3_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[6]));
// synopsys translate_off
defparam t3_ibuf_6_.input_async_reset = "none";
defparam t3_ibuf_6_.input_power_up = "low";
defparam t3_ibuf_6_.input_register_mode = "none";
defparam t3_ibuf_6_.input_sync_reset = "none";
defparam t3_ibuf_6_.oe_async_reset = "none";
defparam t3_ibuf_6_.oe_power_up = "low";
defparam t3_ibuf_6_.oe_register_mode = "none";
defparam t3_ibuf_6_.oe_sync_reset = "none";
defparam t3_ibuf_6_.operation_mode = "input";
defparam t3_ibuf_6_.output_async_reset = "none";
defparam t3_ibuf_6_.output_power_up = "low";
defparam t3_ibuf_6_.output_register_mode = "none";
defparam t3_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B21
cycloneii_io t3_ibuf_4_(
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
	.combout(t3_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[4]));
// synopsys translate_off
defparam t3_ibuf_4_.input_async_reset = "none";
defparam t3_ibuf_4_.input_power_up = "low";
defparam t3_ibuf_4_.input_register_mode = "none";
defparam t3_ibuf_4_.input_sync_reset = "none";
defparam t3_ibuf_4_.oe_async_reset = "none";
defparam t3_ibuf_4_.oe_power_up = "low";
defparam t3_ibuf_4_.oe_register_mode = "none";
defparam t3_ibuf_4_.oe_sync_reset = "none";
defparam t3_ibuf_4_.operation_mode = "input";
defparam t3_ibuf_4_.output_async_reset = "none";
defparam t3_ibuf_4_.output_power_up = "low";
defparam t3_ibuf_4_.output_register_mode = "none";
defparam t3_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K21
cycloneii_io t3_ibuf_0_(
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
	.combout(t3_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[0]));
// synopsys translate_off
defparam t3_ibuf_0_.input_async_reset = "none";
defparam t3_ibuf_0_.input_power_up = "low";
defparam t3_ibuf_0_.input_register_mode = "none";
defparam t3_ibuf_0_.input_sync_reset = "none";
defparam t3_ibuf_0_.oe_async_reset = "none";
defparam t3_ibuf_0_.oe_power_up = "low";
defparam t3_ibuf_0_.oe_register_mode = "none";
defparam t3_ibuf_0_.oe_sync_reset = "none";
defparam t3_ibuf_0_.operation_mode = "input";
defparam t3_ibuf_0_.output_async_reset = "none";
defparam t3_ibuf_0_.output_power_up = "low";
defparam t3_ibuf_0_.output_register_mode = "none";
defparam t3_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R17
cycloneii_io b1_ibuf_7_(
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
	.combout(b1_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[7]));
// synopsys translate_off
defparam b1_ibuf_7_.input_async_reset = "none";
defparam b1_ibuf_7_.input_power_up = "low";
defparam b1_ibuf_7_.input_register_mode = "none";
defparam b1_ibuf_7_.input_sync_reset = "none";
defparam b1_ibuf_7_.oe_async_reset = "none";
defparam b1_ibuf_7_.oe_power_up = "low";
defparam b1_ibuf_7_.oe_register_mode = "none";
defparam b1_ibuf_7_.oe_sync_reset = "none";
defparam b1_ibuf_7_.operation_mode = "input";
defparam b1_ibuf_7_.output_async_reset = "none";
defparam b1_ibuf_7_.output_power_up = "low";
defparam b1_ibuf_7_.output_register_mode = "none";
defparam b1_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T22
cycloneii_io b1_ibuf_6_(
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
	.combout(b1_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[6]));
// synopsys translate_off
defparam b1_ibuf_6_.input_async_reset = "none";
defparam b1_ibuf_6_.input_power_up = "low";
defparam b1_ibuf_6_.input_register_mode = "none";
defparam b1_ibuf_6_.input_sync_reset = "none";
defparam b1_ibuf_6_.oe_async_reset = "none";
defparam b1_ibuf_6_.oe_power_up = "low";
defparam b1_ibuf_6_.oe_register_mode = "none";
defparam b1_ibuf_6_.oe_sync_reset = "none";
defparam b1_ibuf_6_.operation_mode = "input";
defparam b1_ibuf_6_.output_async_reset = "none";
defparam b1_ibuf_6_.output_power_up = "low";
defparam b1_ibuf_6_.output_register_mode = "none";
defparam b1_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U25
cycloneii_io b2_ibuf_5_(
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
	.combout(b2_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[5]));
// synopsys translate_off
defparam b2_ibuf_5_.input_async_reset = "none";
defparam b2_ibuf_5_.input_power_up = "low";
defparam b2_ibuf_5_.input_register_mode = "none";
defparam b2_ibuf_5_.input_sync_reset = "none";
defparam b2_ibuf_5_.oe_async_reset = "none";
defparam b2_ibuf_5_.oe_power_up = "low";
defparam b2_ibuf_5_.oe_register_mode = "none";
defparam b2_ibuf_5_.oe_sync_reset = "none";
defparam b2_ibuf_5_.operation_mode = "input";
defparam b2_ibuf_5_.output_async_reset = "none";
defparam b2_ibuf_5_.output_power_up = "low";
defparam b2_ibuf_5_.output_register_mode = "none";
defparam b2_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R20
cycloneii_io b1_ibuf_4_(
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
	.combout(b1_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[4]));
// synopsys translate_off
defparam b1_ibuf_4_.input_async_reset = "none";
defparam b1_ibuf_4_.input_power_up = "low";
defparam b1_ibuf_4_.input_register_mode = "none";
defparam b1_ibuf_4_.input_sync_reset = "none";
defparam b1_ibuf_4_.oe_async_reset = "none";
defparam b1_ibuf_4_.oe_power_up = "low";
defparam b1_ibuf_4_.oe_register_mode = "none";
defparam b1_ibuf_4_.oe_sync_reset = "none";
defparam b1_ibuf_4_.operation_mode = "input";
defparam b1_ibuf_4_.output_async_reset = "none";
defparam b1_ibuf_4_.output_power_up = "low";
defparam b1_ibuf_4_.output_register_mode = "none";
defparam b1_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T25
cycloneii_io b1_ibuf_3_(
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
	.combout(b1_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[3]));
// synopsys translate_off
defparam b1_ibuf_3_.input_async_reset = "none";
defparam b1_ibuf_3_.input_power_up = "low";
defparam b1_ibuf_3_.input_register_mode = "none";
defparam b1_ibuf_3_.input_sync_reset = "none";
defparam b1_ibuf_3_.oe_async_reset = "none";
defparam b1_ibuf_3_.oe_power_up = "low";
defparam b1_ibuf_3_.oe_register_mode = "none";
defparam b1_ibuf_3_.oe_sync_reset = "none";
defparam b1_ibuf_3_.operation_mode = "input";
defparam b1_ibuf_3_.output_async_reset = "none";
defparam b1_ibuf_3_.output_power_up = "low";
defparam b1_ibuf_3_.output_register_mode = "none";
defparam b1_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T24
cycloneii_io b1_ibuf_2_(
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
	.combout(b1_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[2]));
// synopsys translate_off
defparam b1_ibuf_2_.input_async_reset = "none";
defparam b1_ibuf_2_.input_power_up = "low";
defparam b1_ibuf_2_.input_register_mode = "none";
defparam b1_ibuf_2_.input_sync_reset = "none";
defparam b1_ibuf_2_.oe_async_reset = "none";
defparam b1_ibuf_2_.oe_power_up = "low";
defparam b1_ibuf_2_.oe_register_mode = "none";
defparam b1_ibuf_2_.oe_sync_reset = "none";
defparam b1_ibuf_2_.operation_mode = "input";
defparam b1_ibuf_2_.output_async_reset = "none";
defparam b1_ibuf_2_.output_power_up = "low";
defparam b1_ibuf_2_.output_register_mode = "none";
defparam b1_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R24
cycloneii_io b2_ibuf_1_(
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
	.combout(b2_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[1]));
// synopsys translate_off
defparam b2_ibuf_1_.input_async_reset = "none";
defparam b2_ibuf_1_.input_power_up = "low";
defparam b2_ibuf_1_.input_register_mode = "none";
defparam b2_ibuf_1_.input_sync_reset = "none";
defparam b2_ibuf_1_.oe_async_reset = "none";
defparam b2_ibuf_1_.oe_power_up = "low";
defparam b2_ibuf_1_.oe_register_mode = "none";
defparam b2_ibuf_1_.oe_sync_reset = "none";
defparam b2_ibuf_1_.operation_mode = "input";
defparam b2_ibuf_1_.output_async_reset = "none";
defparam b2_ibuf_1_.output_power_up = "low";
defparam b2_ibuf_1_.output_register_mode = "none";
defparam b2_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P24
cycloneii_io b2_ibuf_0_(
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
	.combout(b2_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[0]));
// synopsys translate_off
defparam b2_ibuf_0_.input_async_reset = "none";
defparam b2_ibuf_0_.input_power_up = "low";
defparam b2_ibuf_0_.input_register_mode = "none";
defparam b2_ibuf_0_.input_sync_reset = "none";
defparam b2_ibuf_0_.oe_async_reset = "none";
defparam b2_ibuf_0_.oe_power_up = "low";
defparam b2_ibuf_0_.oe_register_mode = "none";
defparam b2_ibuf_0_.oe_sync_reset = "none";
defparam b2_ibuf_0_.operation_mode = "input";
defparam b2_ibuf_0_.output_async_reset = "none";
defparam b2_ibuf_0_.output_power_up = "low";
defparam b2_ibuf_0_.output_register_mode = "none";
defparam b2_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N14
cycloneii_lcell_comb p12_add8_0i2_aix44952z52930(
// Equation(s):
// p12_add8_0i2_anx38970z1 = b2_acombout[1] & (b1_acombout[1] & p12_add8_0i2_anx44952z22 & VCC # !b1_acombout[1] & !p12_add8_0i2_anx44952z22) # !b2_acombout[1] & (b1_acombout[1] & !p12_add8_0i2_anx44952z22 # !b1_acombout[1] & (p12_add8_0i2_anx44952z22 # 
// GND))
// p12_add8_0i2_anx44952z19 = CARRY(b2_acombout[1] & !b1_acombout[1] & !p12_add8_0i2_anx44952z22 # !b2_acombout[1] & (!p12_add8_0i2_anx44952z22 # !b1_acombout[1]))

	.dataa(b2_acombout[1]),
	.datab(b1_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z22),
	.combout(p12_add8_0i2_anx38970z1),
	.cout(p12_add8_0i2_anx44952z19));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52930.lut_mask = 16'h9617;
defparam p12_add8_0i2_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N18
cycloneii_lcell_comb p12_add8_0i2_aix44952z52928(
// Equation(s):
// p12_add8_0i2_anx40964z1 = b1_acombout[3] & (b2_acombout[3] & p12_add8_0i2_anx44952z16 & VCC # !b2_acombout[3] & !p12_add8_0i2_anx44952z16) # !b1_acombout[3] & (b2_acombout[3] & !p12_add8_0i2_anx44952z16 # !b2_acombout[3] & (p12_add8_0i2_anx44952z16 # 
// GND))
// p12_add8_0i2_anx44952z13 = CARRY(b1_acombout[3] & !b2_acombout[3] & !p12_add8_0i2_anx44952z16 # !b1_acombout[3] & (!p12_add8_0i2_anx44952z16 # !b2_acombout[3]))

	.dataa(b1_acombout[3]),
	.datab(b2_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z16),
	.combout(p12_add8_0i2_anx40964z1),
	.cout(p12_add8_0i2_anx44952z13));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52928.lut_mask = 16'h9617;
defparam p12_add8_0i2_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N20
cycloneii_lcell_comb p12_add8_0i2_aix44952z52927(
// Equation(s):
// p12_add8_0i2_anx41961z1 = (b1_acombout[4] $ b2_acombout[4] $ !p12_add8_0i2_anx44952z13) # GND
// p12_add8_0i2_anx44952z10 = CARRY(b1_acombout[4] & (b2_acombout[4] # !p12_add8_0i2_anx44952z13) # !b1_acombout[4] & b2_acombout[4] & !p12_add8_0i2_anx44952z13)

	.dataa(b1_acombout[4]),
	.datab(b2_acombout[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z13),
	.combout(p12_add8_0i2_anx41961z1),
	.cout(p12_add8_0i2_anx44952z10));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52927.lut_mask = 16'h698E;
defparam p12_add8_0i2_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N26
cycloneii_lcell_comb p12_add8_0i2_aix44952z52923(
// Equation(s):
// p12_add8_0i2_anx44952z1 = b1_acombout[7] & (b2_acombout[7] & p12_add8_0i2_anx44952z4 & VCC # !b2_acombout[7] & !p12_add8_0i2_anx44952z4) # !b1_acombout[7] & (b2_acombout[7] & !p12_add8_0i2_anx44952z4 # !b2_acombout[7] & (p12_add8_0i2_anx44952z4 # GND))
// p12_add8_0i2_anx23445z2 = CARRY(b1_acombout[7] & !b2_acombout[7] & !p12_add8_0i2_anx44952z4 # !b1_acombout[7] & (!p12_add8_0i2_anx44952z4 # !b2_acombout[7]))

	.dataa(b1_acombout[7]),
	.datab(b2_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z4),
	.combout(p12_add8_0i2_anx44952z1),
	.cout(p12_add8_0i2_anx23445z2));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52923.lut_mask = 16'h9617;
defparam p12_add8_0i2_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_M19
cycloneii_io b3_ibuf_6_(
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
	.combout(b3_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[6]));
// synopsys translate_off
defparam b3_ibuf_6_.input_async_reset = "none";
defparam b3_ibuf_6_.input_power_up = "low";
defparam b3_ibuf_6_.input_register_mode = "none";
defparam b3_ibuf_6_.input_sync_reset = "none";
defparam b3_ibuf_6_.oe_async_reset = "none";
defparam b3_ibuf_6_.oe_power_up = "low";
defparam b3_ibuf_6_.oe_register_mode = "none";
defparam b3_ibuf_6_.oe_sync_reset = "none";
defparam b3_ibuf_6_.operation_mode = "input";
defparam b3_ibuf_6_.output_async_reset = "none";
defparam b3_ibuf_6_.output_power_up = "low";
defparam b3_ibuf_6_.output_register_mode = "none";
defparam b3_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M24
cycloneii_io b3_ibuf_5_(
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
	.combout(b3_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[5]));
// synopsys translate_off
defparam b3_ibuf_5_.input_async_reset = "none";
defparam b3_ibuf_5_.input_power_up = "low";
defparam b3_ibuf_5_.input_register_mode = "none";
defparam b3_ibuf_5_.input_sync_reset = "none";
defparam b3_ibuf_5_.oe_async_reset = "none";
defparam b3_ibuf_5_.oe_power_up = "low";
defparam b3_ibuf_5_.oe_register_mode = "none";
defparam b3_ibuf_5_.oe_sync_reset = "none";
defparam b3_ibuf_5_.operation_mode = "input";
defparam b3_ibuf_5_.output_async_reset = "none";
defparam b3_ibuf_5_.output_power_up = "low";
defparam b3_ibuf_5_.output_register_mode = "none";
defparam b3_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M21
cycloneii_io b3_ibuf_2_(
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
	.combout(b3_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[2]));
// synopsys translate_off
defparam b3_ibuf_2_.input_async_reset = "none";
defparam b3_ibuf_2_.input_power_up = "low";
defparam b3_ibuf_2_.input_register_mode = "none";
defparam b3_ibuf_2_.input_sync_reset = "none";
defparam b3_ibuf_2_.oe_async_reset = "none";
defparam b3_ibuf_2_.oe_power_up = "low";
defparam b3_ibuf_2_.oe_register_mode = "none";
defparam b3_ibuf_2_.oe_sync_reset = "none";
defparam b3_ibuf_2_.operation_mode = "input";
defparam b3_ibuf_2_.output_async_reset = "none";
defparam b3_ibuf_2_.output_power_up = "low";
defparam b3_ibuf_2_.output_register_mode = "none";
defparam b3_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N20
cycloneii_io b3_ibuf_0_(
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
	.combout(b3_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[0]));
// synopsys translate_off
defparam b3_ibuf_0_.input_async_reset = "none";
defparam b3_ibuf_0_.input_power_up = "low";
defparam b3_ibuf_0_.input_register_mode = "none";
defparam b3_ibuf_0_.input_sync_reset = "none";
defparam b3_ibuf_0_.oe_async_reset = "none";
defparam b3_ibuf_0_.oe_power_up = "low";
defparam b3_ibuf_0_.oe_register_mode = "none";
defparam b3_ibuf_0_.oe_sync_reset = "none";
defparam b3_ibuf_0_.operation_mode = "input";
defparam b3_ibuf_0_.output_async_reset = "none";
defparam b3_ibuf_0_.output_power_up = "low";
defparam b3_ibuf_0_.output_register_mode = "none";
defparam b3_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N10
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52933(
// Equation(s):
// p21_sub11_3i1_anx37973z1 = p12_add9_2_anx37973z1 & (p12_add9_2_anx38970z1 & (p21_sub11_3i1_anx46946z29 # GND) # !p12_add9_2_anx38970z1 & !p21_sub11_3i1_anx46946z29) # !p12_add9_2_anx37973z1 & (p12_add9_2_anx38970z1 & !p21_sub11_3i1_anx46946z29 # 
// !p12_add9_2_anx38970z1 & p21_sub11_3i1_anx46946z29 & VCC)
// p21_sub11_3i1_anx46946z27 = CARRY(p12_add9_2_anx37973z1 & (p12_add9_2_anx38970z1 # !p21_sub11_3i1_anx46946z29) # !p12_add9_2_anx37973z1 & p12_add9_2_anx38970z1 & !p21_sub11_3i1_anx46946z29)

	.dataa(p12_add9_2_anx37973z1),
	.datab(p12_add9_2_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z29),
	.combout(p21_sub11_3i1_anx37973z1),
	.cout(p21_sub11_3i1_anx46946z27));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52933.lut_mask = 16'h968E;
defparam p21_sub11_3i1_aix46946z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N12
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52932(
// Equation(s):
// p21_sub11_3i1_anx38970z1 = (p11_add9_1_anx38970z1 $ p12_add9_2_anx39967z1 $ p21_sub11_3i1_anx46946z27) # GND
// p21_sub11_3i1_anx46946z24 = CARRY(p11_add9_1_anx38970z1 & (!p21_sub11_3i1_anx46946z27 # !p12_add9_2_anx39967z1) # !p11_add9_1_anx38970z1 & !p12_add9_2_anx39967z1 & !p21_sub11_3i1_anx46946z27)

	.dataa(p11_add9_1_anx38970z1),
	.datab(p12_add9_2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z27),
	.combout(p21_sub11_3i1_anx38970z1),
	.cout(p21_sub11_3i1_anx46946z24));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52932.lut_mask = 16'h962B;
defparam p21_sub11_3i1_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N16
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52930(
// Equation(s):
// p21_sub11_3i1_anx40964z1 = (p12_add9_2_anx41961z1 $ p11_add9_1_anx40964z1 $ p21_sub11_3i1_anx46946z21) # GND
// p21_sub11_3i1_anx46946z18 = CARRY(p12_add9_2_anx41961z1 & p11_add9_1_anx40964z1 & !p21_sub11_3i1_anx46946z21 # !p12_add9_2_anx41961z1 & (p11_add9_1_anx40964z1 # !p21_sub11_3i1_anx46946z21))

	.dataa(p12_add9_2_anx41961z1),
	.datab(p11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z21),
	.combout(p21_sub11_3i1_anx40964z1),
	.cout(p21_sub11_3i1_anx46946z18));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52930.lut_mask = 16'h964D;
defparam p21_sub11_3i1_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N18
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52929(
// Equation(s):
// p21_sub11_3i1_anx41961z1 = p12_add9_2_anx42958z1 & (p11_add9_1_anx41961z1 & !p21_sub11_3i1_anx46946z18 # !p11_add9_1_anx41961z1 & (p21_sub11_3i1_anx46946z18 # GND)) # !p12_add9_2_anx42958z1 & (p11_add9_1_anx41961z1 & p21_sub11_3i1_anx46946z18 & VCC # 
// !p11_add9_1_anx41961z1 & !p21_sub11_3i1_anx46946z18)
// p21_sub11_3i1_anx46946z15 = CARRY(p12_add9_2_anx42958z1 & (!p21_sub11_3i1_anx46946z18 # !p11_add9_1_anx41961z1) # !p12_add9_2_anx42958z1 & !p11_add9_1_anx41961z1 & !p21_sub11_3i1_anx46946z18)

	.dataa(p12_add9_2_anx42958z1),
	.datab(p11_add9_1_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z18),
	.combout(p21_sub11_3i1_anx41961z1),
	.cout(p21_sub11_3i1_anx46946z15));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52929.lut_mask = 16'h692B;
defparam p21_sub11_3i1_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N20
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52928(
// Equation(s):
// p21_sub11_3i1_anx42958z1 = (p12_add9_2_anx43955z1 $ p11_add9_1_anx42958z1 $ p21_sub11_3i1_anx46946z15) # GND
// p21_sub11_3i1_anx46946z12 = CARRY(p12_add9_2_anx43955z1 & p11_add9_1_anx42958z1 & !p21_sub11_3i1_anx46946z15 # !p12_add9_2_anx43955z1 & (p11_add9_1_anx42958z1 # !p21_sub11_3i1_anx46946z15))

	.dataa(p12_add9_2_anx43955z1),
	.datab(p11_add9_1_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z15),
	.combout(p21_sub11_3i1_anx42958z1),
	.cout(p21_sub11_3i1_anx46946z12));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52928.lut_mask = 16'h964D;
defparam p21_sub11_3i1_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N22
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52927(
// Equation(s):
// p21_sub11_3i1_anx43955z1 = p11_add9_1_anx43955z1 & (p12_add9_2_anx44952z1 & !p21_sub11_3i1_anx46946z12 # !p12_add9_2_anx44952z1 & p21_sub11_3i1_anx46946z12 & VCC) # !p11_add9_1_anx43955z1 & (p12_add9_2_anx44952z1 & (p21_sub11_3i1_anx46946z12 # GND) # 
// !p12_add9_2_anx44952z1 & !p21_sub11_3i1_anx46946z12)
// p21_sub11_3i1_anx46946z9 = CARRY(p11_add9_1_anx43955z1 & p12_add9_2_anx44952z1 & !p21_sub11_3i1_anx46946z12 # !p11_add9_1_anx43955z1 & (p12_add9_2_anx44952z1 # !p21_sub11_3i1_anx46946z12))

	.dataa(p11_add9_1_anx43955z1),
	.datab(p12_add9_2_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z12),
	.combout(p21_sub11_3i1_anx43955z1),
	.cout(p21_sub11_3i1_anx46946z9));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52927.lut_mask = 16'h694D;
defparam p21_sub11_3i1_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N26
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52925(
// Equation(s):
// p21_sub11_3i1_anx45949z1 = p11_add9_1_anx45949z1 & (p12_add9_2_anx23445z1 & !p21_sub11_3i1_anx46946z6 # !p12_add9_2_anx23445z1 & p21_sub11_3i1_anx46946z6 & VCC) # !p11_add9_1_anx45949z1 & (p12_add9_2_anx23445z1 & (p21_sub11_3i1_anx46946z6 # GND) # 
// !p12_add9_2_anx23445z1 & !p21_sub11_3i1_anx46946z6)
// p21_sub11_3i1_anx46946z3 = CARRY(p11_add9_1_anx45949z1 & p12_add9_2_anx23445z1 & !p21_sub11_3i1_anx46946z6 # !p11_add9_1_anx45949z1 & (p12_add9_2_anx23445z1 # !p21_sub11_3i1_anx46946z6))

	.dataa(p11_add9_1_anx45949z1),
	.datab(p12_add9_2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z6),
	.combout(p21_sub11_3i1_anx45949z1),
	.cout(p21_sub11_3i1_anx46946z3));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52925.lut_mask = 16'h694D;
defparam p21_sub11_3i1_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N16
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52929(
// Equation(s):
// p21_sub10_3i3_anx41961z1 = (p12_add9_2_anx41961z1 $ p11_add9_1_anx41961z1 $ p21_sub10_3i3_anx46946z19) # GND
// p21_sub10_3i3_anx46946z16 = CARRY(p12_add9_2_anx41961z1 & p11_add9_1_anx41961z1 & !p21_sub10_3i3_anx46946z19 # !p12_add9_2_anx41961z1 & (p11_add9_1_anx41961z1 # !p21_sub10_3i3_anx46946z19))

	.dataa(p12_add9_2_anx41961z1),
	.datab(p11_add9_1_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z19),
	.combout(p21_sub10_3i3_anx41961z1),
	.cout(p21_sub10_3i3_anx46946z16));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52929.lut_mask = 16'h964D;
defparam p21_sub10_3i3_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N26
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52923(
// Equation(s):
// p21_sub10_3i3_anx46946z1 = p11_add9_1_anx23445z1 & (p12_add9_2_anx23445z1 & !p21_sub10_3i3_anx46946z4 # !p12_add9_2_anx23445z1 & p21_sub10_3i3_anx46946z4 & VCC) # !p11_add9_1_anx23445z1 & (p12_add9_2_anx23445z1 & (p21_sub10_3i3_anx46946z4 # GND) # 
// !p12_add9_2_anx23445z1 & !p21_sub10_3i3_anx46946z4)
// p21_sub10_3i3_anx23445z2 = CARRY(p11_add9_1_anx23445z1 & p12_add9_2_anx23445z1 & !p21_sub10_3i3_anx46946z4 # !p11_add9_1_anx23445z1 & (p12_add9_2_anx23445z1 # !p21_sub10_3i3_anx46946z4))

	.dataa(p11_add9_1_anx23445z1),
	.datab(p12_add9_2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z4),
	.combout(p21_sub10_3i3_anx46946z1),
	.cout(p21_sub10_3i3_anx23445z2));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52923.lut_mask = 16'h694D;
defparam p21_sub10_3i3_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N16
cycloneii_lcell_comb ix52975z52630_aix62798z52931(
// Equation(s):
// ix52975z52630_anx40964z1 = p21_sub10_3i3_anx41961z1 & (p21_sub11_3i1_anx39967z1 & ix52975z52630_anx62798z24 & VCC # !p21_sub11_3i1_anx39967z1 & !ix52975z52630_anx62798z24) # !p21_sub10_3i3_anx41961z1 & (p21_sub11_3i1_anx39967z1 & 
// !ix52975z52630_anx62798z24 # !p21_sub11_3i1_anx39967z1 & (ix52975z52630_anx62798z24 # GND))
// ix52975z52630_anx62798z21 = CARRY(p21_sub10_3i3_anx41961z1 & !p21_sub11_3i1_anx39967z1 & !ix52975z52630_anx62798z24 # !p21_sub10_3i3_anx41961z1 & (!ix52975z52630_anx62798z24 # !p21_sub11_3i1_anx39967z1))

	.dataa(p21_sub10_3i3_anx41961z1),
	.datab(p21_sub11_3i1_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z24),
	.combout(ix52975z52630_anx40964z1),
	.cout(ix52975z52630_anx62798z21));
// synopsys translate_off
defparam ix52975z52630_aix62798z52931.lut_mask = 16'h9617;
defparam ix52975z52630_aix62798z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N24
cycloneii_lcell_comb ix52975z52630_aix62798z52927(
// Equation(s):
// ix52975z52630_anx44952z1 = p21_sub11_3i1_anx43955z1 & (p21_sub10_3i3_anx45949z1 & ix52975z52630_anx62798z12 & VCC # !p21_sub10_3i3_anx45949z1 & !ix52975z52630_anx62798z12) # !p21_sub11_3i1_anx43955z1 & (p21_sub10_3i3_anx45949z1 & 
// !ix52975z52630_anx62798z12 # !p21_sub10_3i3_anx45949z1 & (ix52975z52630_anx62798z12 # GND))
// ix52975z52630_anx62798z9 = CARRY(p21_sub11_3i1_anx43955z1 & !p21_sub10_3i3_anx45949z1 & !ix52975z52630_anx62798z12 # !p21_sub11_3i1_anx43955z1 & (!ix52975z52630_anx62798z12 # !p21_sub10_3i3_anx45949z1))

	.dataa(p21_sub11_3i1_anx43955z1),
	.datab(p21_sub10_3i3_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z12),
	.combout(ix52975z52630_anx44952z1),
	.cout(ix52975z52630_anx62798z9));
// synopsys translate_off
defparam ix52975z52630_aix62798z52927.lut_mask = 16'h9617;
defparam ix52975z52630_aix62798z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N6
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52933(
// Equation(s):
// p22_sub11_3i2_anx37973z1 = p11_add9_1_anx38970z1 & (p11_add9_1_anx37973z1 & (p22_sub11_3i2_anx46946z29 # GND) # !p11_add9_1_anx37973z1 & !p22_sub11_3i2_anx46946z29) # !p11_add9_1_anx38970z1 & (p11_add9_1_anx37973z1 & !p22_sub11_3i2_anx46946z29 # 
// !p11_add9_1_anx37973z1 & p22_sub11_3i2_anx46946z29 & VCC)
// p22_sub11_3i2_anx46946z27 = CARRY(p11_add9_1_anx38970z1 & (p11_add9_1_anx37973z1 # !p22_sub11_3i2_anx46946z29) # !p11_add9_1_anx38970z1 & p11_add9_1_anx37973z1 & !p22_sub11_3i2_anx46946z29)

	.dataa(p11_add9_1_anx38970z1),
	.datab(p11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z29),
	.combout(p22_sub11_3i2_anx37973z1),
	.cout(p22_sub11_3i2_anx46946z27));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52933.lut_mask = 16'h968E;
defparam p22_sub11_3i2_aix46946z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N8
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52932(
// Equation(s):
// p22_sub11_3i2_anx38970z1 = (p11_add9_1_anx39967z1 $ p12_add9_2_anx38970z1 $ p22_sub11_3i2_anx46946z27) # GND
// p22_sub11_3i2_anx46946z24 = CARRY(p11_add9_1_anx39967z1 & p12_add9_2_anx38970z1 & !p22_sub11_3i2_anx46946z27 # !p11_add9_1_anx39967z1 & (p12_add9_2_anx38970z1 # !p22_sub11_3i2_anx46946z27))

	.dataa(p11_add9_1_anx39967z1),
	.datab(p12_add9_2_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z27),
	.combout(p22_sub11_3i2_anx38970z1),
	.cout(p22_sub11_3i2_anx46946z24));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52932.lut_mask = 16'h964D;
defparam p22_sub11_3i2_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N12
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52930(
// Equation(s):
// p22_sub11_3i2_anx40964z1 = (p11_add9_1_anx41961z1 $ p12_add9_2_anx40964z1 $ p22_sub11_3i2_anx46946z21) # GND
// p22_sub11_3i2_anx46946z18 = CARRY(p11_add9_1_anx41961z1 & p12_add9_2_anx40964z1 & !p22_sub11_3i2_anx46946z21 # !p11_add9_1_anx41961z1 & (p12_add9_2_anx40964z1 # !p22_sub11_3i2_anx46946z21))

	.dataa(p11_add9_1_anx41961z1),
	.datab(p12_add9_2_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z21),
	.combout(p22_sub11_3i2_anx40964z1),
	.cout(p22_sub11_3i2_anx46946z18));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52930.lut_mask = 16'h964D;
defparam p22_sub11_3i2_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N16
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52928(
// Equation(s):
// p22_sub11_3i2_anx42958z1 = (p12_add9_2_anx42958z1 $ p11_add9_1_anx43955z1 $ p22_sub11_3i2_anx46946z15) # GND
// p22_sub11_3i2_anx46946z12 = CARRY(p12_add9_2_anx42958z1 & (!p22_sub11_3i2_anx46946z15 # !p11_add9_1_anx43955z1) # !p12_add9_2_anx42958z1 & !p11_add9_1_anx43955z1 & !p22_sub11_3i2_anx46946z15)

	.dataa(p12_add9_2_anx42958z1),
	.datab(p11_add9_1_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z15),
	.combout(p22_sub11_3i2_anx42958z1),
	.cout(p22_sub11_3i2_anx46946z12));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52928.lut_mask = 16'h962B;
defparam p22_sub11_3i2_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N22
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52925(
// Equation(s):
// p22_sub11_3i2_anx45949z1 = p12_add9_2_anx45949z1 & (p11_add9_1_anx23445z1 & !p22_sub11_3i2_anx46946z6 # !p11_add9_1_anx23445z1 & p22_sub11_3i2_anx46946z6 & VCC) # !p12_add9_2_anx45949z1 & (p11_add9_1_anx23445z1 & (p22_sub11_3i2_anx46946z6 # GND) # 
// !p11_add9_1_anx23445z1 & !p22_sub11_3i2_anx46946z6)
// p22_sub11_3i2_anx46946z3 = CARRY(p12_add9_2_anx45949z1 & p11_add9_1_anx23445z1 & !p22_sub11_3i2_anx46946z6 # !p12_add9_2_anx45949z1 & (p11_add9_1_anx23445z1 # !p22_sub11_3i2_anx46946z6))

	.dataa(p12_add9_2_anx45949z1),
	.datab(p11_add9_1_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z6),
	.combout(p22_sub11_3i2_anx45949z1),
	.cout(p22_sub11_3i2_anx46946z3));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52925.lut_mask = 16'h694D;
defparam p22_sub11_3i2_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N10
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52932(
// Equation(s):
// p22_sub10_3i4_anx38970z1 = p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & !p22_sub10_3i4_anx46946z28 # !p11_add9_1_anx38970z1 & p22_sub10_3i4_anx46946z28 & VCC) # !p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & (p22_sub10_3i4_anx46946z28 # GND) # 
// !p11_add9_1_anx38970z1 & !p22_sub10_3i4_anx46946z28)
// p22_sub10_3i4_anx46946z25 = CARRY(p12_add9_2_anx38970z1 & p11_add9_1_anx38970z1 & !p22_sub10_3i4_anx46946z28 # !p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 # !p22_sub10_3i4_anx46946z28))

	.dataa(p12_add9_2_anx38970z1),
	.datab(p11_add9_1_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z28),
	.combout(p22_sub10_3i4_anx38970z1),
	.cout(p22_sub10_3i4_anx46946z25));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52932.lut_mask = 16'h694D;
defparam p22_sub10_3i4_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N16
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52929(
// Equation(s):
// p22_sub10_3i4_anx41961z1 = (p11_add9_1_anx41961z1 $ p12_add9_2_anx41961z1 $ p22_sub10_3i4_anx46946z19) # GND
// p22_sub10_3i4_anx46946z16 = CARRY(p11_add9_1_anx41961z1 & p12_add9_2_anx41961z1 & !p22_sub10_3i4_anx46946z19 # !p11_add9_1_anx41961z1 & (p12_add9_2_anx41961z1 # !p22_sub10_3i4_anx46946z19))

	.dataa(p11_add9_1_anx41961z1),
	.datab(p12_add9_2_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z19),
	.combout(p22_sub10_3i4_anx41961z1),
	.cout(p22_sub10_3i4_anx46946z16));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52929.lut_mask = 16'h964D;
defparam p22_sub10_3i4_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N20
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52927(
// Equation(s):
// p22_sub10_3i4_anx43955z1 = (p12_add9_2_anx43955z1 $ p11_add9_1_anx43955z1 $ p22_sub10_3i4_anx46946z13) # GND
// p22_sub10_3i4_anx46946z10 = CARRY(p12_add9_2_anx43955z1 & (!p22_sub10_3i4_anx46946z13 # !p11_add9_1_anx43955z1) # !p12_add9_2_anx43955z1 & !p11_add9_1_anx43955z1 & !p22_sub10_3i4_anx46946z13)

	.dataa(p12_add9_2_anx43955z1),
	.datab(p11_add9_1_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z13),
	.combout(p22_sub10_3i4_anx43955z1),
	.cout(p22_sub10_3i4_anx46946z10));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52927.lut_mask = 16'h962B;
defparam p22_sub10_3i4_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N24
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52925(
// Equation(s):
// p22_sub10_3i4_anx45949z1 = (p11_add9_1_anx45949z1 $ p12_add9_2_anx45949z1 $ p22_sub10_3i4_anx46946z7) # GND
// p22_sub10_3i4_anx46946z4 = CARRY(p11_add9_1_anx45949z1 & p12_add9_2_anx45949z1 & !p22_sub10_3i4_anx46946z7 # !p11_add9_1_anx45949z1 & (p12_add9_2_anx45949z1 # !p22_sub10_3i4_anx46946z7))

	.dataa(p11_add9_1_anx45949z1),
	.datab(p12_add9_2_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z7),
	.combout(p22_sub10_3i4_anx45949z1),
	.cout(p22_sub10_3i4_anx46946z4));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52925.lut_mask = 16'h964D;
defparam p22_sub10_3i4_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N26
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52923(
// Equation(s):
// p22_sub10_3i4_anx46946z1 = p12_add9_2_anx23445z1 & (p11_add9_1_anx23445z1 & !p22_sub10_3i4_anx46946z4 # !p11_add9_1_anx23445z1 & p22_sub10_3i4_anx46946z4 & VCC) # !p12_add9_2_anx23445z1 & (p11_add9_1_anx23445z1 & (p22_sub10_3i4_anx46946z4 # GND) # 
// !p11_add9_1_anx23445z1 & !p22_sub10_3i4_anx46946z4)
// p22_sub10_3i4_anx23445z2 = CARRY(p12_add9_2_anx23445z1 & p11_add9_1_anx23445z1 & !p22_sub10_3i4_anx46946z4 # !p12_add9_2_anx23445z1 & (p11_add9_1_anx23445z1 # !p22_sub10_3i4_anx46946z4))

	.dataa(p12_add9_2_anx23445z1),
	.datab(p11_add9_1_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z4),
	.combout(p22_sub10_3i4_anx46946z1),
	.cout(p22_sub10_3i4_anx23445z2));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52923.lut_mask = 16'h694D;
defparam p22_sub10_3i4_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N8
cycloneii_lcell_comb ix47840z52631_aix62798z52934(
// Equation(s):
// ix47840z52631_anx37973z1 = p22_sub10_3i4_anx38970z1 & (p11_add9_1_anx37973z1 $ VCC) # !p22_sub10_3i4_anx38970z1 & p11_add9_1_anx37973z1 & VCC
// ix47840z52631_anx62798z30 = CARRY(p22_sub10_3i4_anx38970z1 & p11_add9_1_anx37973z1)

	.dataa(p22_sub10_3i4_anx38970z1),
	.datab(p11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(ix47840z52631_anx37973z1),
	.cout(ix47840z52631_anx62798z30));
// synopsys translate_off
defparam ix47840z52631_aix62798z52934.lut_mask = 16'h6688;
defparam ix47840z52631_aix62798z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N12
cycloneii_lcell_comb ix47840z52631_aix62798z52932(
// Equation(s):
// ix47840z52631_anx39967z1 = (p22_sub11_3i2_anx38970z1 $ p22_sub10_3i4_anx40964z1 $ !ix47840z52631_anx62798z27) # GND
// ix47840z52631_anx62798z24 = CARRY(p22_sub11_3i2_anx38970z1 & (p22_sub10_3i4_anx40964z1 # !ix47840z52631_anx62798z27) # !p22_sub11_3i2_anx38970z1 & p22_sub10_3i4_anx40964z1 & !ix47840z52631_anx62798z27)

	.dataa(p22_sub11_3i2_anx38970z1),
	.datab(p22_sub10_3i4_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z27),
	.combout(ix47840z52631_anx39967z1),
	.cout(ix47840z52631_anx62798z24));
// synopsys translate_off
defparam ix47840z52631_aix62798z52932.lut_mask = 16'h698E;
defparam ix47840z52631_aix62798z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N20
cycloneii_lcell_comb ix47840z52631_aix62798z52928(
// Equation(s):
// ix47840z52631_anx43955z1 = (p22_sub11_3i2_anx42958z1 $ p22_sub10_3i4_anx44952z1 $ !ix47840z52631_anx62798z15) # GND
// ix47840z52631_anx62798z12 = CARRY(p22_sub11_3i2_anx42958z1 & (p22_sub10_3i4_anx44952z1 # !ix47840z52631_anx62798z15) # !p22_sub11_3i2_anx42958z1 & p22_sub10_3i4_anx44952z1 & !ix47840z52631_anx62798z15)

	.dataa(p22_sub11_3i2_anx42958z1),
	.datab(p22_sub10_3i4_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z15),
	.combout(ix47840z52631_anx43955z1),
	.cout(ix47840z52631_anx62798z12));
// synopsys translate_off
defparam ix47840z52631_aix62798z52928.lut_mask = 16'h698E;
defparam ix47840z52631_aix62798z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N26
cycloneii_lcell_comb ix47840z52631_aix62798z52925(
// Equation(s):
// ix47840z52631_anx46946z1 = p22_sub11_3i2_anx45949z1 & (p22_sub10_3i4_anx23445z1 & !ix47840z52631_anx62798z6 # !p22_sub10_3i4_anx23445z1 & ix47840z52631_anx62798z6 & VCC) # !p22_sub11_3i2_anx45949z1 & (p22_sub10_3i4_anx23445z1 & (ix47840z52631_anx62798z6 # 
// GND) # !p22_sub10_3i4_anx23445z1 & !ix47840z52631_anx62798z6)
// ix47840z52631_anx62798z4 = CARRY(p22_sub11_3i2_anx45949z1 & p22_sub10_3i4_anx23445z1 & !ix47840z52631_anx62798z6 # !p22_sub11_3i2_anx45949z1 & (p22_sub10_3i4_anx23445z1 # !ix47840z52631_anx62798z6))

	.dataa(p22_sub11_3i2_anx45949z1),
	.datab(p22_sub10_3i4_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z6),
	.combout(ix47840z52631_anx46946z1),
	.cout(ix47840z52631_anx62798z4));
// synopsys translate_off
defparam ix47840z52631_aix62798z52925.lut_mask = 16'h694D;
defparam ix47840z52631_aix62798z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_G24
cycloneii_io i1_ibuf_7_(
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
	.combout(i1_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[7]));
// synopsys translate_off
defparam i1_ibuf_7_.input_async_reset = "none";
defparam i1_ibuf_7_.input_power_up = "low";
defparam i1_ibuf_7_.input_register_mode = "none";
defparam i1_ibuf_7_.input_sync_reset = "none";
defparam i1_ibuf_7_.oe_async_reset = "none";
defparam i1_ibuf_7_.oe_power_up = "low";
defparam i1_ibuf_7_.oe_register_mode = "none";
defparam i1_ibuf_7_.oe_sync_reset = "none";
defparam i1_ibuf_7_.operation_mode = "input";
defparam i1_ibuf_7_.output_async_reset = "none";
defparam i1_ibuf_7_.output_power_up = "low";
defparam i1_ibuf_7_.output_register_mode = "none";
defparam i1_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H24
cycloneii_io i1_ibuf_6_(
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
	.combout(i1_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[6]));
// synopsys translate_off
defparam i1_ibuf_6_.input_async_reset = "none";
defparam i1_ibuf_6_.input_power_up = "low";
defparam i1_ibuf_6_.input_register_mode = "none";
defparam i1_ibuf_6_.input_sync_reset = "none";
defparam i1_ibuf_6_.oe_async_reset = "none";
defparam i1_ibuf_6_.oe_power_up = "low";
defparam i1_ibuf_6_.oe_register_mode = "none";
defparam i1_ibuf_6_.oe_sync_reset = "none";
defparam i1_ibuf_6_.operation_mode = "input";
defparam i1_ibuf_6_.output_async_reset = "none";
defparam i1_ibuf_6_.output_power_up = "low";
defparam i1_ibuf_6_.output_register_mode = "none";
defparam i1_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G23
cycloneii_io i1_ibuf_5_(
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
	.combout(i1_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[5]));
// synopsys translate_off
defparam i1_ibuf_5_.input_async_reset = "none";
defparam i1_ibuf_5_.input_power_up = "low";
defparam i1_ibuf_5_.input_register_mode = "none";
defparam i1_ibuf_5_.input_sync_reset = "none";
defparam i1_ibuf_5_.oe_async_reset = "none";
defparam i1_ibuf_5_.oe_power_up = "low";
defparam i1_ibuf_5_.oe_register_mode = "none";
defparam i1_ibuf_5_.oe_sync_reset = "none";
defparam i1_ibuf_5_.operation_mode = "input";
defparam i1_ibuf_5_.output_async_reset = "none";
defparam i1_ibuf_5_.output_power_up = "low";
defparam i1_ibuf_5_.output_register_mode = "none";
defparam i1_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K17
cycloneii_io i2_ibuf_4_(
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
	.combout(i2_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[4]));
// synopsys translate_off
defparam i2_ibuf_4_.input_async_reset = "none";
defparam i2_ibuf_4_.input_power_up = "low";
defparam i2_ibuf_4_.input_register_mode = "none";
defparam i2_ibuf_4_.input_sync_reset = "none";
defparam i2_ibuf_4_.oe_async_reset = "none";
defparam i2_ibuf_4_.oe_power_up = "low";
defparam i2_ibuf_4_.oe_register_mode = "none";
defparam i2_ibuf_4_.oe_sync_reset = "none";
defparam i2_ibuf_4_.operation_mode = "input";
defparam i2_ibuf_4_.output_async_reset = "none";
defparam i2_ibuf_4_.output_power_up = "low";
defparam i2_ibuf_4_.output_register_mode = "none";
defparam i2_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K22
cycloneii_io i2_ibuf_3_(
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
	.combout(i2_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[3]));
// synopsys translate_off
defparam i2_ibuf_3_.input_async_reset = "none";
defparam i2_ibuf_3_.input_power_up = "low";
defparam i2_ibuf_3_.input_register_mode = "none";
defparam i2_ibuf_3_.input_sync_reset = "none";
defparam i2_ibuf_3_.oe_async_reset = "none";
defparam i2_ibuf_3_.oe_power_up = "low";
defparam i2_ibuf_3_.oe_register_mode = "none";
defparam i2_ibuf_3_.oe_sync_reset = "none";
defparam i2_ibuf_3_.operation_mode = "input";
defparam i2_ibuf_3_.output_async_reset = "none";
defparam i2_ibuf_3_.output_power_up = "low";
defparam i2_ibuf_3_.output_register_mode = "none";
defparam i2_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D20
cycloneii_io i2_ibuf_2_(
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
	.combout(i2_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[2]));
// synopsys translate_off
defparam i2_ibuf_2_.input_async_reset = "none";
defparam i2_ibuf_2_.input_power_up = "low";
defparam i2_ibuf_2_.input_register_mode = "none";
defparam i2_ibuf_2_.input_sync_reset = "none";
defparam i2_ibuf_2_.oe_async_reset = "none";
defparam i2_ibuf_2_.oe_power_up = "low";
defparam i2_ibuf_2_.oe_register_mode = "none";
defparam i2_ibuf_2_.oe_sync_reset = "none";
defparam i2_ibuf_2_.operation_mode = "input";
defparam i2_ibuf_2_.output_async_reset = "none";
defparam i2_ibuf_2_.output_power_up = "low";
defparam i2_ibuf_2_.output_register_mode = "none";
defparam i2_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J16
cycloneii_io i2_ibuf_1_(
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
	.combout(i2_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[1]));
// synopsys translate_off
defparam i2_ibuf_1_.input_async_reset = "none";
defparam i2_ibuf_1_.input_power_up = "low";
defparam i2_ibuf_1_.input_register_mode = "none";
defparam i2_ibuf_1_.input_sync_reset = "none";
defparam i2_ibuf_1_.oe_async_reset = "none";
defparam i2_ibuf_1_.oe_power_up = "low";
defparam i2_ibuf_1_.oe_register_mode = "none";
defparam i2_ibuf_1_.oe_sync_reset = "none";
defparam i2_ibuf_1_.operation_mode = "input";
defparam i2_ibuf_1_.output_async_reset = "none";
defparam i2_ibuf_1_.output_power_up = "low";
defparam i2_ibuf_1_.output_register_mode = "none";
defparam i2_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G26
cycloneii_io i1_ibuf_0_(
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
	.combout(i1_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[0]));
// synopsys translate_off
defparam i1_ibuf_0_.input_async_reset = "none";
defparam i1_ibuf_0_.input_power_up = "low";
defparam i1_ibuf_0_.input_register_mode = "none";
defparam i1_ibuf_0_.input_sync_reset = "none";
defparam i1_ibuf_0_.oe_async_reset = "none";
defparam i1_ibuf_0_.oe_power_up = "low";
defparam i1_ibuf_0_.oe_register_mode = "none";
defparam i1_ibuf_0_.oe_sync_reset = "none";
defparam i1_ibuf_0_.operation_mode = "input";
defparam i1_ibuf_0_.output_async_reset = "none";
defparam i1_ibuf_0_.output_power_up = "low";
defparam i1_ibuf_0_.output_register_mode = "none";
defparam i1_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N4
cycloneii_lcell_comb p13_add8_0i3_aix44952z52930(
// Equation(s):
// p13_add8_0i3_anx38970z1 = i2_acombout[1] & (i1_acombout[1] & p13_add8_0i3_anx44952z22 & VCC # !i1_acombout[1] & !p13_add8_0i3_anx44952z22) # !i2_acombout[1] & (i1_acombout[1] & !p13_add8_0i3_anx44952z22 # !i1_acombout[1] & (p13_add8_0i3_anx44952z22 # 
// GND))
// p13_add8_0i3_anx44952z19 = CARRY(i2_acombout[1] & !i1_acombout[1] & !p13_add8_0i3_anx44952z22 # !i2_acombout[1] & (!p13_add8_0i3_anx44952z22 # !i1_acombout[1]))

	.dataa(i2_acombout[1]),
	.datab(i1_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z22),
	.combout(p13_add8_0i3_anx38970z1),
	.cout(p13_add8_0i3_anx44952z19));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52930.lut_mask = 16'h9617;
defparam p13_add8_0i3_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N10
cycloneii_lcell_comb p13_add8_0i3_aix44952z52927(
// Equation(s):
// p13_add8_0i3_anx41961z1 = (i2_acombout[4] $ i1_acombout[4] $ !p13_add8_0i3_anx44952z13) # GND
// p13_add8_0i3_anx44952z10 = CARRY(i2_acombout[4] & (i1_acombout[4] # !p13_add8_0i3_anx44952z13) # !i2_acombout[4] & i1_acombout[4] & !p13_add8_0i3_anx44952z13)

	.dataa(i2_acombout[4]),
	.datab(i1_acombout[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z13),
	.combout(p13_add8_0i3_anx41961z1),
	.cout(p13_add8_0i3_anx44952z10));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52927.lut_mask = 16'h698E;
defparam p13_add8_0i3_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N16
cycloneii_lcell_comb p13_add8_0i3_aix44952z52923(
// Equation(s):
// p13_add8_0i3_anx44952z1 = i1_acombout[7] & (i2_acombout[7] & p13_add8_0i3_anx44952z4 & VCC # !i2_acombout[7] & !p13_add8_0i3_anx44952z4) # !i1_acombout[7] & (i2_acombout[7] & !p13_add8_0i3_anx44952z4 # !i2_acombout[7] & (p13_add8_0i3_anx44952z4 # GND))
// p13_add8_0i3_anx23445z2 = CARRY(i1_acombout[7] & !i2_acombout[7] & !p13_add8_0i3_anx44952z4 # !i1_acombout[7] & (!p13_add8_0i3_anx44952z4 # !i2_acombout[7]))

	.dataa(i1_acombout[7]),
	.datab(i2_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z4),
	.combout(p13_add8_0i3_anx44952z1),
	.cout(p13_add8_0i3_anx23445z2));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52923.lut_mask = 16'h9617;
defparam p13_add8_0i3_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N6
cycloneii_lcell_comb p13_add9_3_aix45949z52931(
// Equation(s):
// p13_add9_3_anx38970z1 = p13_add8_0i3_anx38970z1 & (p13_add8_0i3_anx39967z1 & p13_add9_3_anx45949z17 & VCC # !p13_add8_0i3_anx39967z1 & !p13_add9_3_anx45949z17) # !p13_add8_0i3_anx38970z1 & (p13_add8_0i3_anx39967z1 & !p13_add9_3_anx45949z17 # 
// !p13_add8_0i3_anx39967z1 & (p13_add9_3_anx45949z17 # GND))
// p13_add9_3_anx45949z15 = CARRY(p13_add8_0i3_anx38970z1 & !p13_add8_0i3_anx39967z1 & !p13_add9_3_anx45949z17 # !p13_add8_0i3_anx38970z1 & (!p13_add9_3_anx45949z17 # !p13_add8_0i3_anx39967z1))

	.dataa(p13_add8_0i3_anx38970z1),
	.datab(p13_add8_0i3_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z17),
	.combout(p13_add9_3_anx38970z1),
	.cout(p13_add9_3_anx45949z15));
// synopsys translate_off
defparam p13_add9_3_aix45949z52931.lut_mask = 16'h9617;
defparam p13_add9_3_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N10
cycloneii_lcell_comb p13_add9_3_aix45949z52929(
// Equation(s):
// p13_add9_3_anx40964z1 = p13_add8_0i3_anx41961z1 & (p13_add8_0i3_anx40964z1 & p13_add9_3_anx45949z13 & VCC # !p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z13) # !p13_add8_0i3_anx41961z1 & (p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z13 # 
// !p13_add8_0i3_anx40964z1 & (p13_add9_3_anx45949z13 # GND))
// p13_add9_3_anx45949z11 = CARRY(p13_add8_0i3_anx41961z1 & !p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z13 # !p13_add8_0i3_anx41961z1 & (!p13_add9_3_anx45949z13 # !p13_add8_0i3_anx40964z1))

	.dataa(p13_add8_0i3_anx41961z1),
	.datab(p13_add8_0i3_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z13),
	.combout(p13_add9_3_anx40964z1),
	.cout(p13_add9_3_anx45949z11));
// synopsys translate_off
defparam p13_add9_3_aix45949z52929.lut_mask = 16'h9617;
defparam p13_add9_3_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N12
cycloneii_lcell_comb p13_add9_3_aix45949z52928(
// Equation(s):
// p13_add9_3_anx41961z1 = (p13_add8_0i3_anx41961z1 $ p13_add8_0i3_anx42958z1 $ !p13_add9_3_anx45949z11) # GND
// p13_add9_3_anx45949z9 = CARRY(p13_add8_0i3_anx41961z1 & (p13_add8_0i3_anx42958z1 # !p13_add9_3_anx45949z11) # !p13_add8_0i3_anx41961z1 & p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z11)

	.dataa(p13_add8_0i3_anx41961z1),
	.datab(p13_add8_0i3_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z11),
	.combout(p13_add9_3_anx41961z1),
	.cout(p13_add9_3_anx45949z9));
// synopsys translate_off
defparam p13_add9_3_aix45949z52928.lut_mask = 16'h698E;
defparam p13_add9_3_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N14
cycloneii_lcell_comb p13_add9_3_aix45949z52927(
// Equation(s):
// p13_add9_3_anx42958z1 = p13_add8_0i3_anx43955z1 & (p13_add8_0i3_anx42958z1 & p13_add9_3_anx45949z9 & VCC # !p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z9) # !p13_add8_0i3_anx43955z1 & (p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z9 # 
// !p13_add8_0i3_anx42958z1 & (p13_add9_3_anx45949z9 # GND))
// p13_add9_3_anx45949z7 = CARRY(p13_add8_0i3_anx43955z1 & !p13_add8_0i3_anx42958z1 & !p13_add9_3_anx45949z9 # !p13_add8_0i3_anx43955z1 & (!p13_add9_3_anx45949z9 # !p13_add8_0i3_anx42958z1))

	.dataa(p13_add8_0i3_anx43955z1),
	.datab(p13_add8_0i3_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z9),
	.combout(p13_add9_3_anx42958z1),
	.cout(p13_add9_3_anx45949z7));
// synopsys translate_off
defparam p13_add9_3_aix45949z52927.lut_mask = 16'h9617;
defparam p13_add9_3_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N20
cycloneii_lcell_comb p13_add9_3_aix45949z52923(
// Equation(s):
// p13_add9_3_anx45949z1 = p13_add8_0i3_anx23445z1 & (p13_add9_3_anx45949z3 $ GND) # !p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z3 & VCC
// p13_add9_3_anx23445z2 = CARRY(p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z3)

	.dataa(vcc),
	.datab(p13_add8_0i3_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z3),
	.combout(p13_add9_3_anx45949z1),
	.cout(p13_add9_3_anx23445z2));
// synopsys translate_off
defparam p13_add9_3_aix45949z52923.lut_mask = 16'hC30C;
defparam p13_add9_3_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N2
cycloneii_lcell_comb p31_10__afeeder(
// Equation(s):
// p31_10__afeeder_combout = p21_10_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_10_),
	.cin(gnd),
	.combout(p31_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_10__afeeder.lut_mask = 16'hFF00;
defparam p31_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N2
cycloneii_lcell_comb p31_8__afeeder(
// Equation(s):
// p31_8__afeeder_combout = p21_8_

	.dataa(p21_8_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p31_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_8__afeeder.lut_mask = 16'hAAAA;
defparam p31_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N4
cycloneii_lcell_comb p31_7__afeeder(
// Equation(s):
// p31_7__afeeder_combout = p21_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_7_),
	.cin(gnd),
	.combout(p31_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_7__afeeder.lut_mask = 16'hFF00;
defparam p31_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N0
cycloneii_lcell_comb p31_3__afeeder(
// Equation(s):
// p31_3__afeeder_combout = p21_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_3_),
	.cin(gnd),
	.combout(p31_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_3__afeeder.lut_mask = 16'hFF00;
defparam p31_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N2
cycloneii_lcell_comb p31_1__afeeder(
// Equation(s):
// p31_1__afeeder_combout = p21_1_

	.dataa(vcc),
	.datab(p21_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p31_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_1__afeeder.lut_mask = 16'hCCCC;
defparam p31_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y24_N16
cycloneii_lcell_comb p32_6__afeeder(
// Equation(s):
// p32_6__afeeder_combout = p23_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p23_6_),
	.cin(gnd),
	.combout(p32_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_6__afeeder.lut_mask = 16'hFF00;
defparam p32_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N26
cycloneii_lcell_comb p32_5__afeeder(
// Equation(s):
// p32_5__afeeder_combout = p23_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p23_5_),
	.cin(gnd),
	.combout(p32_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_5__afeeder.lut_mask = 16'hFF00;
defparam p32_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N28
cycloneii_lcell_comb p32_4__afeeder(
// Equation(s):
// p32_4__afeeder_combout = p23_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p23_4_),
	.cin(gnd),
	.combout(p32_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_4__afeeder.lut_mask = 16'hFF00;
defparam p32_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y24_N16
cycloneii_lcell_comb p32_2__afeeder(
// Equation(s):
// p32_2__afeeder_combout = p23_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p23_2_),
	.cin(gnd),
	.combout(p32_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_2__afeeder.lut_mask = 16'hFF00;
defparam p32_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N30
cycloneii_lcell_comb p32_0__afeeder(
// Equation(s):
// p32_0__afeeder_combout = p23_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(p23_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(p32_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_0__afeeder.lut_mask = 16'hF0F0;
defparam p32_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N6
cycloneii_lcell_comb p22_1__afeeder(
// Equation(s):
// p22_1__afeeder_combout = ix47840z52631_anx37973z1

	.dataa(vcc),
	.datab(vcc),
	.datac(ix47840z52631_anx37973z1),
	.datad(vcc),
	.cin(gnd),
	.combout(p22_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p22_1__afeeder.lut_mask = 16'hF0F0;
defparam p22_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N2
cycloneii_lcell_comb p22_3__afeeder(
// Equation(s):
// p22_3__afeeder_combout = ix47840z52631_anx39967z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(ix47840z52631_anx39967z1),
	.cin(gnd),
	.combout(p22_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p22_3__afeeder.lut_mask = 16'hFF00;
defparam p22_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_P2
cycloneii_io i_clock_ibuf(
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
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_ibuf.input_async_reset = "none";
defparam i_clock_ibuf.input_power_up = "low";
defparam i_clock_ibuf.input_register_mode = "none";
defparam i_clock_ibuf.input_sync_reset = "none";
defparam i_clock_ibuf.oe_async_reset = "none";
defparam i_clock_ibuf.oe_power_up = "low";
defparam i_clock_ibuf.oe_register_mode = "none";
defparam i_clock_ibuf.oe_sync_reset = "none";
defparam i_clock_ibuf.operation_mode = "input";
defparam i_clock_ibuf.output_async_reset = "none";
defparam i_clock_ibuf.output_power_up = "low";
defparam i_clock_ibuf.output_register_mode = "none";
defparam i_clock_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at LCCOMB_X53_Y23_N20
cycloneii_lcell_comb nx28524z1_a_wirecell(
// Equation(s):
// nx28524z1_a_wirecell_combout = !nx28524z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx28524z1),
	.cin(gnd),
	.combout(nx28524z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam nx28524z1_a_wirecell.lut_mask = 16'h00FF;
defparam nx28524z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io i_reset_ibuf(
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
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_ibuf.input_async_reset = "none";
defparam i_reset_ibuf.input_power_up = "low";
defparam i_reset_ibuf.input_register_mode = "none";
defparam i_reset_ibuf.input_sync_reset = "none";
defparam i_reset_ibuf.oe_async_reset = "none";
defparam i_reset_ibuf.oe_power_up = "low";
defparam i_reset_ibuf.oe_register_mode = "none";
defparam i_reset_ibuf.oe_sync_reset = "none";
defparam i_reset_ibuf.operation_mode = "input";
defparam i_reset_ibuf.output_async_reset = "none";
defparam i_reset_ibuf.output_power_up = "low";
defparam i_reset_ibuf.output_register_mode = "none";
defparam i_reset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y26
cycloneii_io i_valid_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx40824z1),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_ibuf.input_async_reset = "none";
defparam i_valid_ibuf.input_power_up = "low";
defparam i_valid_ibuf.input_register_mode = "register";
defparam i_valid_ibuf.input_sync_reset = "none";
defparam i_valid_ibuf.oe_async_reset = "none";
defparam i_valid_ibuf.oe_power_up = "low";
defparam i_valid_ibuf.oe_register_mode = "none";
defparam i_valid_ibuf.oe_sync_reset = "none";
defparam i_valid_ibuf.operation_mode = "input";
defparam i_valid_ibuf.output_async_reset = "none";
defparam i_valid_ibuf.output_power_up = "low";
defparam i_valid_ibuf.output_register_mode = "none";
defparam i_valid_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y8_N30
cycloneii_lcell_comb nx39827z1_afeeder(
// Equation(s):
// nx39827z1_afeeder_combout = nx40824z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx40824z1),
	.cin(gnd),
	.combout(nx39827z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx39827z1_afeeder.lut_mask = 16'hFF00;
defparam nx39827z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y8_N31
cycloneii_lcell_ff ix260_reg_p30(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx39827z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx39827z1));

// atom is at LCFF_X64_Y8_N9
cycloneii_lcell_ff ix260_reg_p40(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(nx39827z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p40));

// atom is at LCCOMB_X64_Y8_N8
cycloneii_lcell_comb ix26530z52923(
// Equation(s):
// nx26530z1 = p40 # i_reset_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(p40),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx26530z1),
	.cout());
// synopsys translate_off
defparam ix26530z52923.lut_mask = 16'hFFF0;
defparam ix26530z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y23_N21
cycloneii_lcell_ff reg_state_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx28524z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx26530z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(state_1_));

// atom is at LCFF_X54_Y23_N17
cycloneii_lcell_ff reg_state_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(state_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx26530z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(state_2_));

// atom is at LCFF_X54_Y23_N23
cycloneii_lcell_ff reg_state_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(state_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx26530z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(state_3_));

// atom is at LCCOMB_X53_Y23_N18
cycloneii_lcell_comb state_3__a_wirecell(
// Equation(s):
// state_3__a_wirecell_combout = !state_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(state_3_),
	.datad(vcc),
	.cin(gnd),
	.combout(state_3__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam state_3__a_wirecell.lut_mask = 16'h0F0F;
defparam state_3__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y23_N19
cycloneii_lcell_ff reg_state_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(state_3__a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx26530z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx28524z1));

// atom is at PIN_K23
cycloneii_io t1_ibuf_7_(
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
	.combout(t1_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[7]));
// synopsys translate_off
defparam t1_ibuf_7_.input_async_reset = "none";
defparam t1_ibuf_7_.input_power_up = "low";
defparam t1_ibuf_7_.input_register_mode = "none";
defparam t1_ibuf_7_.input_sync_reset = "none";
defparam t1_ibuf_7_.oe_async_reset = "none";
defparam t1_ibuf_7_.oe_power_up = "low";
defparam t1_ibuf_7_.oe_register_mode = "none";
defparam t1_ibuf_7_.oe_sync_reset = "none";
defparam t1_ibuf_7_.operation_mode = "input";
defparam t1_ibuf_7_.output_async_reset = "none";
defparam t1_ibuf_7_.output_power_up = "low";
defparam t1_ibuf_7_.output_register_mode = "none";
defparam t1_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L24
cycloneii_io t1_ibuf_6_(
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
	.combout(t1_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[6]));
// synopsys translate_off
defparam t1_ibuf_6_.input_async_reset = "none";
defparam t1_ibuf_6_.input_power_up = "low";
defparam t1_ibuf_6_.input_register_mode = "none";
defparam t1_ibuf_6_.input_sync_reset = "none";
defparam t1_ibuf_6_.oe_async_reset = "none";
defparam t1_ibuf_6_.oe_power_up = "low";
defparam t1_ibuf_6_.oe_register_mode = "none";
defparam t1_ibuf_6_.oe_sync_reset = "none";
defparam t1_ibuf_6_.operation_mode = "input";
defparam t1_ibuf_6_.output_async_reset = "none";
defparam t1_ibuf_6_.output_power_up = "low";
defparam t1_ibuf_6_.output_register_mode = "none";
defparam t1_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A21
cycloneii_io t2_ibuf_5_(
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
	.combout(t2_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[5]));
// synopsys translate_off
defparam t2_ibuf_5_.input_async_reset = "none";
defparam t2_ibuf_5_.input_power_up = "low";
defparam t2_ibuf_5_.input_register_mode = "none";
defparam t2_ibuf_5_.input_sync_reset = "none";
defparam t2_ibuf_5_.oe_async_reset = "none";
defparam t2_ibuf_5_.oe_power_up = "low";
defparam t2_ibuf_5_.oe_register_mode = "none";
defparam t2_ibuf_5_.oe_sync_reset = "none";
defparam t2_ibuf_5_.operation_mode = "input";
defparam t2_ibuf_5_.output_async_reset = "none";
defparam t2_ibuf_5_.output_power_up = "low";
defparam t2_ibuf_5_.output_register_mode = "none";
defparam t2_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K16
cycloneii_io t1_ibuf_4_(
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
	.combout(t1_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[4]));
// synopsys translate_off
defparam t1_ibuf_4_.input_async_reset = "none";
defparam t1_ibuf_4_.input_power_up = "low";
defparam t1_ibuf_4_.input_register_mode = "none";
defparam t1_ibuf_4_.input_sync_reset = "none";
defparam t1_ibuf_4_.oe_async_reset = "none";
defparam t1_ibuf_4_.oe_power_up = "low";
defparam t1_ibuf_4_.oe_register_mode = "none";
defparam t1_ibuf_4_.oe_sync_reset = "none";
defparam t1_ibuf_4_.operation_mode = "input";
defparam t1_ibuf_4_.output_async_reset = "none";
defparam t1_ibuf_4_.output_power_up = "low";
defparam t1_ibuf_4_.output_register_mode = "none";
defparam t1_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A19
cycloneii_io t1_ibuf_3_(
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
	.combout(t1_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[3]));
// synopsys translate_off
defparam t1_ibuf_3_.input_async_reset = "none";
defparam t1_ibuf_3_.input_power_up = "low";
defparam t1_ibuf_3_.input_register_mode = "none";
defparam t1_ibuf_3_.input_sync_reset = "none";
defparam t1_ibuf_3_.oe_async_reset = "none";
defparam t1_ibuf_3_.oe_power_up = "low";
defparam t1_ibuf_3_.oe_register_mode = "none";
defparam t1_ibuf_3_.oe_sync_reset = "none";
defparam t1_ibuf_3_.operation_mode = "input";
defparam t1_ibuf_3_.output_async_reset = "none";
defparam t1_ibuf_3_.output_power_up = "low";
defparam t1_ibuf_3_.output_register_mode = "none";
defparam t1_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J25
cycloneii_io t2_ibuf_2_(
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
	.combout(t2_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t2[2]));
// synopsys translate_off
defparam t2_ibuf_2_.input_async_reset = "none";
defparam t2_ibuf_2_.input_power_up = "low";
defparam t2_ibuf_2_.input_register_mode = "none";
defparam t2_ibuf_2_.input_sync_reset = "none";
defparam t2_ibuf_2_.oe_async_reset = "none";
defparam t2_ibuf_2_.oe_power_up = "low";
defparam t2_ibuf_2_.oe_register_mode = "none";
defparam t2_ibuf_2_.oe_sync_reset = "none";
defparam t2_ibuf_2_.operation_mode = "input";
defparam t2_ibuf_2_.output_async_reset = "none";
defparam t2_ibuf_2_.output_power_up = "low";
defparam t2_ibuf_2_.output_register_mode = "none";
defparam t2_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K24
cycloneii_io t1_ibuf_1_(
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
	.combout(t1_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[1]));
// synopsys translate_off
defparam t1_ibuf_1_.input_async_reset = "none";
defparam t1_ibuf_1_.input_power_up = "low";
defparam t1_ibuf_1_.input_register_mode = "none";
defparam t1_ibuf_1_.input_sync_reset = "none";
defparam t1_ibuf_1_.oe_async_reset = "none";
defparam t1_ibuf_1_.oe_power_up = "low";
defparam t1_ibuf_1_.oe_register_mode = "none";
defparam t1_ibuf_1_.oe_sync_reset = "none";
defparam t1_ibuf_1_.operation_mode = "input";
defparam t1_ibuf_1_.output_async_reset = "none";
defparam t1_ibuf_1_.output_power_up = "low";
defparam t1_ibuf_1_.output_register_mode = "none";
defparam t1_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L21
cycloneii_io t1_ibuf_0_(
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
	.combout(t1_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t1[0]));
// synopsys translate_off
defparam t1_ibuf_0_.input_async_reset = "none";
defparam t1_ibuf_0_.input_power_up = "low";
defparam t1_ibuf_0_.input_register_mode = "none";
defparam t1_ibuf_0_.input_sync_reset = "none";
defparam t1_ibuf_0_.oe_async_reset = "none";
defparam t1_ibuf_0_.oe_power_up = "low";
defparam t1_ibuf_0_.oe_register_mode = "none";
defparam t1_ibuf_0_.oe_sync_reset = "none";
defparam t1_ibuf_0_.operation_mode = "input";
defparam t1_ibuf_0_.output_async_reset = "none";
defparam t1_ibuf_0_.output_power_up = "low";
defparam t1_ibuf_0_.output_register_mode = "none";
defparam t1_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N10
cycloneii_lcell_comb p11_add8_0i1_aix44952z52931(
// Equation(s):
// p11_add8_0i1_anx37973z1 = t2_acombout[0] & (t1_acombout[0] $ VCC) # !t2_acombout[0] & t1_acombout[0] & VCC
// p11_add8_0i1_anx44952z22 = CARRY(t2_acombout[0] & t1_acombout[0])

	.dataa(t2_acombout[0]),
	.datab(t1_acombout[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p11_add8_0i1_anx37973z1),
	.cout(p11_add8_0i1_anx44952z22));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52931.lut_mask = 16'h6688;
defparam p11_add8_0i1_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N18
cycloneii_lcell_comb p11_add8_0i1_aix44952z52927(
// Equation(s):
// p11_add8_0i1_anx41961z1 = (t2_acombout[4] $ t1_acombout[4] $ !p11_add8_0i1_anx44952z13) # GND
// p11_add8_0i1_anx44952z10 = CARRY(t2_acombout[4] & (t1_acombout[4] # !p11_add8_0i1_anx44952z13) # !t2_acombout[4] & t1_acombout[4] & !p11_add8_0i1_anx44952z13)

	.dataa(t2_acombout[4]),
	.datab(t1_acombout[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z13),
	.combout(p11_add8_0i1_anx41961z1),
	.cout(p11_add8_0i1_anx44952z10));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52927.lut_mask = 16'h698E;
defparam p11_add8_0i1_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N22
cycloneii_lcell_comb p11_add8_0i1_aix44952z52925(
// Equation(s):
// p11_add8_0i1_anx43955z1 = (t2_acombout[6] $ t1_acombout[6] $ !p11_add8_0i1_anx44952z7) # GND
// p11_add8_0i1_anx44952z4 = CARRY(t2_acombout[6] & (t1_acombout[6] # !p11_add8_0i1_anx44952z7) # !t2_acombout[6] & t1_acombout[6] & !p11_add8_0i1_anx44952z7)

	.dataa(t2_acombout[6]),
	.datab(t1_acombout[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z7),
	.combout(p11_add8_0i1_anx43955z1),
	.cout(p11_add8_0i1_anx44952z4));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52925.lut_mask = 16'h698E;
defparam p11_add8_0i1_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N24
cycloneii_lcell_comb p11_add8_0i1_aix44952z52923(
// Equation(s):
// p11_add8_0i1_anx44952z1 = t2_acombout[7] & (t1_acombout[7] & p11_add8_0i1_anx44952z4 & VCC # !t1_acombout[7] & !p11_add8_0i1_anx44952z4) # !t2_acombout[7] & (t1_acombout[7] & !p11_add8_0i1_anx44952z4 # !t1_acombout[7] & (p11_add8_0i1_anx44952z4 # GND))
// p11_add8_0i1_anx23445z2 = CARRY(t2_acombout[7] & !t1_acombout[7] & !p11_add8_0i1_anx44952z4 # !t2_acombout[7] & (!p11_add8_0i1_anx44952z4 # !t1_acombout[7]))

	.dataa(t2_acombout[7]),
	.datab(t1_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx44952z4),
	.combout(p11_add8_0i1_anx44952z1),
	.cout(p11_add8_0i1_anx23445z2));
// synopsys translate_off
defparam p11_add8_0i1_aix44952z52923.lut_mask = 16'h9617;
defparam p11_add8_0i1_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y24_N26
cycloneii_lcell_comb p11_add8_0i1_aix23445z52923(
// Equation(s):
// p11_add8_0i1_anx23445z1 = !p11_add8_0i1_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add8_0i1_anx23445z2),
	.combout(p11_add8_0i1_anx23445z1),
	.cout());
// synopsys translate_off
defparam p11_add8_0i1_aix23445z52923.lut_mask = 16'h0F0F;
defparam p11_add8_0i1_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_B24
cycloneii_io t3_ibuf_5_(
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
	.combout(t3_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[5]));
// synopsys translate_off
defparam t3_ibuf_5_.input_async_reset = "none";
defparam t3_ibuf_5_.input_power_up = "low";
defparam t3_ibuf_5_.input_register_mode = "none";
defparam t3_ibuf_5_.input_sync_reset = "none";
defparam t3_ibuf_5_.oe_async_reset = "none";
defparam t3_ibuf_5_.oe_power_up = "low";
defparam t3_ibuf_5_.oe_register_mode = "none";
defparam t3_ibuf_5_.oe_sync_reset = "none";
defparam t3_ibuf_5_.operation_mode = "input";
defparam t3_ibuf_5_.output_async_reset = "none";
defparam t3_ibuf_5_.output_power_up = "low";
defparam t3_ibuf_5_.output_register_mode = "none";
defparam t3_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K18
cycloneii_io t3_ibuf_3_(
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
	.combout(t3_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[3]));
// synopsys translate_off
defparam t3_ibuf_3_.input_async_reset = "none";
defparam t3_ibuf_3_.input_power_up = "low";
defparam t3_ibuf_3_.input_register_mode = "none";
defparam t3_ibuf_3_.input_sync_reset = "none";
defparam t3_ibuf_3_.oe_async_reset = "none";
defparam t3_ibuf_3_.oe_power_up = "low";
defparam t3_ibuf_3_.oe_register_mode = "none";
defparam t3_ibuf_3_.oe_sync_reset = "none";
defparam t3_ibuf_3_.operation_mode = "input";
defparam t3_ibuf_3_.output_async_reset = "none";
defparam t3_ibuf_3_.output_power_up = "low";
defparam t3_ibuf_3_.output_register_mode = "none";
defparam t3_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M23
cycloneii_io t3_ibuf_2_(
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
	.combout(t3_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[2]));
// synopsys translate_off
defparam t3_ibuf_2_.input_async_reset = "none";
defparam t3_ibuf_2_.input_power_up = "low";
defparam t3_ibuf_2_.input_register_mode = "none";
defparam t3_ibuf_2_.input_sync_reset = "none";
defparam t3_ibuf_2_.oe_async_reset = "none";
defparam t3_ibuf_2_.oe_power_up = "low";
defparam t3_ibuf_2_.oe_register_mode = "none";
defparam t3_ibuf_2_.oe_sync_reset = "none";
defparam t3_ibuf_2_.operation_mode = "input";
defparam t3_ibuf_2_.output_async_reset = "none";
defparam t3_ibuf_2_.output_power_up = "low";
defparam t3_ibuf_2_.output_register_mode = "none";
defparam t3_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K26
cycloneii_io t3_ibuf_1_(
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
	.combout(t3_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(t3[1]));
// synopsys translate_off
defparam t3_ibuf_1_.input_async_reset = "none";
defparam t3_ibuf_1_.input_power_up = "low";
defparam t3_ibuf_1_.input_register_mode = "none";
defparam t3_ibuf_1_.input_sync_reset = "none";
defparam t3_ibuf_1_.oe_async_reset = "none";
defparam t3_ibuf_1_.oe_power_up = "low";
defparam t3_ibuf_1_.oe_register_mode = "none";
defparam t3_ibuf_1_.oe_sync_reset = "none";
defparam t3_ibuf_1_.operation_mode = "input";
defparam t3_ibuf_1_.output_async_reset = "none";
defparam t3_ibuf_1_.output_power_up = "low";
defparam t3_ibuf_1_.output_register_mode = "none";
defparam t3_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N0
cycloneii_lcell_comb p11_add9_1_aix45949z52932(
// Equation(s):
// p11_add9_1_anx37973z1 = t3_acombout[0] & (p11_add8_0i1_anx37973z1 $ VCC) # !t3_acombout[0] & p11_add8_0i1_anx37973z1 & VCC
// p11_add9_1_anx45949z24 = CARRY(t3_acombout[0] & p11_add8_0i1_anx37973z1)

	.dataa(t3_acombout[0]),
	.datab(p11_add8_0i1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p11_add9_1_anx37973z1),
	.cout(p11_add9_1_anx45949z24));
// synopsys translate_off
defparam p11_add9_1_aix45949z52932.lut_mask = 16'h6688;
defparam p11_add9_1_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N2
cycloneii_lcell_comb p11_add9_1_aix45949z52931(
// Equation(s):
// p11_add9_1_anx38970z1 = p11_add8_0i1_anx38970z1 & (t3_acombout[1] & p11_add9_1_anx45949z24 & VCC # !t3_acombout[1] & !p11_add9_1_anx45949z24) # !p11_add8_0i1_anx38970z1 & (t3_acombout[1] & !p11_add9_1_anx45949z24 # !t3_acombout[1] & 
// (p11_add9_1_anx45949z24 # GND))
// p11_add9_1_anx45949z21 = CARRY(p11_add8_0i1_anx38970z1 & !t3_acombout[1] & !p11_add9_1_anx45949z24 # !p11_add8_0i1_anx38970z1 & (!p11_add9_1_anx45949z24 # !t3_acombout[1]))

	.dataa(p11_add8_0i1_anx38970z1),
	.datab(t3_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z24),
	.combout(p11_add9_1_anx38970z1),
	.cout(p11_add9_1_anx45949z21));
// synopsys translate_off
defparam p11_add9_1_aix45949z52931.lut_mask = 16'h9617;
defparam p11_add9_1_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N4
cycloneii_lcell_comb p11_add9_1_aix45949z52930(
// Equation(s):
// p11_add9_1_anx39967z1 = (p11_add8_0i1_anx39967z1 $ t3_acombout[2] $ !p11_add9_1_anx45949z21) # GND
// p11_add9_1_anx45949z18 = CARRY(p11_add8_0i1_anx39967z1 & (t3_acombout[2] # !p11_add9_1_anx45949z21) # !p11_add8_0i1_anx39967z1 & t3_acombout[2] & !p11_add9_1_anx45949z21)

	.dataa(p11_add8_0i1_anx39967z1),
	.datab(t3_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z21),
	.combout(p11_add9_1_anx39967z1),
	.cout(p11_add9_1_anx45949z18));
// synopsys translate_off
defparam p11_add9_1_aix45949z52930.lut_mask = 16'h698E;
defparam p11_add9_1_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N6
cycloneii_lcell_comb p11_add9_1_aix45949z52929(
// Equation(s):
// p11_add9_1_anx40964z1 = p11_add8_0i1_anx40964z1 & (t3_acombout[3] & p11_add9_1_anx45949z18 & VCC # !t3_acombout[3] & !p11_add9_1_anx45949z18) # !p11_add8_0i1_anx40964z1 & (t3_acombout[3] & !p11_add9_1_anx45949z18 # !t3_acombout[3] & 
// (p11_add9_1_anx45949z18 # GND))
// p11_add9_1_anx45949z15 = CARRY(p11_add8_0i1_anx40964z1 & !t3_acombout[3] & !p11_add9_1_anx45949z18 # !p11_add8_0i1_anx40964z1 & (!p11_add9_1_anx45949z18 # !t3_acombout[3]))

	.dataa(p11_add8_0i1_anx40964z1),
	.datab(t3_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z18),
	.combout(p11_add9_1_anx40964z1),
	.cout(p11_add9_1_anx45949z15));
// synopsys translate_off
defparam p11_add9_1_aix45949z52929.lut_mask = 16'h9617;
defparam p11_add9_1_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N8
cycloneii_lcell_comb p11_add9_1_aix45949z52928(
// Equation(s):
// p11_add9_1_anx41961z1 = (t3_acombout[4] $ p11_add8_0i1_anx41961z1 $ !p11_add9_1_anx45949z15) # GND
// p11_add9_1_anx45949z12 = CARRY(t3_acombout[4] & (p11_add8_0i1_anx41961z1 # !p11_add9_1_anx45949z15) # !t3_acombout[4] & p11_add8_0i1_anx41961z1 & !p11_add9_1_anx45949z15)

	.dataa(t3_acombout[4]),
	.datab(p11_add8_0i1_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z15),
	.combout(p11_add9_1_anx41961z1),
	.cout(p11_add9_1_anx45949z12));
// synopsys translate_off
defparam p11_add9_1_aix45949z52928.lut_mask = 16'h698E;
defparam p11_add9_1_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N10
cycloneii_lcell_comb p11_add9_1_aix45949z52927(
// Equation(s):
// p11_add9_1_anx42958z1 = p11_add8_0i1_anx42958z1 & (t3_acombout[5] & p11_add9_1_anx45949z12 & VCC # !t3_acombout[5] & !p11_add9_1_anx45949z12) # !p11_add8_0i1_anx42958z1 & (t3_acombout[5] & !p11_add9_1_anx45949z12 # !t3_acombout[5] & 
// (p11_add9_1_anx45949z12 # GND))
// p11_add9_1_anx45949z9 = CARRY(p11_add8_0i1_anx42958z1 & !t3_acombout[5] & !p11_add9_1_anx45949z12 # !p11_add8_0i1_anx42958z1 & (!p11_add9_1_anx45949z12 # !t3_acombout[5]))

	.dataa(p11_add8_0i1_anx42958z1),
	.datab(t3_acombout[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z12),
	.combout(p11_add9_1_anx42958z1),
	.cout(p11_add9_1_anx45949z9));
// synopsys translate_off
defparam p11_add9_1_aix45949z52927.lut_mask = 16'h9617;
defparam p11_add9_1_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N12
cycloneii_lcell_comb p11_add9_1_aix45949z52926(
// Equation(s):
// p11_add9_1_anx43955z1 = (t3_acombout[6] $ p11_add8_0i1_anx43955z1 $ !p11_add9_1_anx45949z9) # GND
// p11_add9_1_anx45949z6 = CARRY(t3_acombout[6] & (p11_add8_0i1_anx43955z1 # !p11_add9_1_anx45949z9) # !t3_acombout[6] & p11_add8_0i1_anx43955z1 & !p11_add9_1_anx45949z9)

	.dataa(t3_acombout[6]),
	.datab(p11_add8_0i1_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z9),
	.combout(p11_add9_1_anx43955z1),
	.cout(p11_add9_1_anx45949z6));
// synopsys translate_off
defparam p11_add9_1_aix45949z52926.lut_mask = 16'h698E;
defparam p11_add9_1_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N14
cycloneii_lcell_comb p11_add9_1_aix45949z52925(
// Equation(s):
// p11_add9_1_anx44952z1 = t3_acombout[7] & (p11_add8_0i1_anx44952z1 & p11_add9_1_anx45949z6 & VCC # !p11_add8_0i1_anx44952z1 & !p11_add9_1_anx45949z6) # !t3_acombout[7] & (p11_add8_0i1_anx44952z1 & !p11_add9_1_anx45949z6 # !p11_add8_0i1_anx44952z1 & 
// (p11_add9_1_anx45949z6 # GND))
// p11_add9_1_anx45949z3 = CARRY(t3_acombout[7] & !p11_add8_0i1_anx44952z1 & !p11_add9_1_anx45949z6 # !t3_acombout[7] & (!p11_add9_1_anx45949z6 # !p11_add8_0i1_anx44952z1))

	.dataa(t3_acombout[7]),
	.datab(p11_add8_0i1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z6),
	.combout(p11_add9_1_anx44952z1),
	.cout(p11_add9_1_anx45949z3));
// synopsys translate_off
defparam p11_add9_1_aix45949z52925.lut_mask = 16'h9617;
defparam p11_add9_1_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N16
cycloneii_lcell_comb p11_add9_1_aix45949z52923(
// Equation(s):
// p11_add9_1_anx45949z1 = p11_add8_0i1_anx23445z1 & (p11_add9_1_anx45949z3 $ GND) # !p11_add8_0i1_anx23445z1 & !p11_add9_1_anx45949z3 & VCC
// p11_add9_1_anx23445z2 = CARRY(p11_add8_0i1_anx23445z1 & !p11_add9_1_anx45949z3)

	.dataa(vcc),
	.datab(p11_add8_0i1_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx45949z3),
	.combout(p11_add9_1_anx45949z1),
	.cout(p11_add9_1_anx23445z2));
// synopsys translate_off
defparam p11_add9_1_aix45949z52923.lut_mask = 16'hC30C;
defparam p11_add9_1_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y24_N18
cycloneii_lcell_comb p11_add9_1_aix23445z52923(
// Equation(s):
// p11_add9_1_anx23445z1 = p11_add9_1_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p11_add9_1_anx23445z2),
	.combout(p11_add9_1_anx23445z1),
	.cout());
// synopsys translate_off
defparam p11_add9_1_aix23445z52923.lut_mask = 16'hF0F0;
defparam p11_add9_1_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_U24
cycloneii_io b2_ibuf_7_(
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
	.combout(b2_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[7]));
// synopsys translate_off
defparam b2_ibuf_7_.input_async_reset = "none";
defparam b2_ibuf_7_.input_power_up = "low";
defparam b2_ibuf_7_.input_register_mode = "none";
defparam b2_ibuf_7_.input_sync_reset = "none";
defparam b2_ibuf_7_.oe_async_reset = "none";
defparam b2_ibuf_7_.oe_power_up = "low";
defparam b2_ibuf_7_.oe_register_mode = "none";
defparam b2_ibuf_7_.oe_sync_reset = "none";
defparam b2_ibuf_7_.operation_mode = "input";
defparam b2_ibuf_7_.output_async_reset = "none";
defparam b2_ibuf_7_.output_power_up = "low";
defparam b2_ibuf_7_.output_register_mode = "none";
defparam b2_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P17
cycloneii_io b2_ibuf_6_(
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
	.combout(b2_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[6]));
// synopsys translate_off
defparam b2_ibuf_6_.input_async_reset = "none";
defparam b2_ibuf_6_.input_power_up = "low";
defparam b2_ibuf_6_.input_register_mode = "none";
defparam b2_ibuf_6_.input_sync_reset = "none";
defparam b2_ibuf_6_.oe_async_reset = "none";
defparam b2_ibuf_6_.oe_power_up = "low";
defparam b2_ibuf_6_.oe_register_mode = "none";
defparam b2_ibuf_6_.oe_sync_reset = "none";
defparam b2_ibuf_6_.operation_mode = "input";
defparam b2_ibuf_6_.output_async_reset = "none";
defparam b2_ibuf_6_.output_power_up = "low";
defparam b2_ibuf_6_.output_register_mode = "none";
defparam b2_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P23
cycloneii_io b1_ibuf_5_(
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
	.combout(b1_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[5]));
// synopsys translate_off
defparam b1_ibuf_5_.input_async_reset = "none";
defparam b1_ibuf_5_.input_power_up = "low";
defparam b1_ibuf_5_.input_register_mode = "none";
defparam b1_ibuf_5_.input_sync_reset = "none";
defparam b1_ibuf_5_.oe_async_reset = "none";
defparam b1_ibuf_5_.oe_power_up = "low";
defparam b1_ibuf_5_.oe_register_mode = "none";
defparam b1_ibuf_5_.oe_sync_reset = "none";
defparam b1_ibuf_5_.operation_mode = "input";
defparam b1_ibuf_5_.output_async_reset = "none";
defparam b1_ibuf_5_.output_power_up = "low";
defparam b1_ibuf_5_.output_register_mode = "none";
defparam b1_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R25
cycloneii_io b2_ibuf_4_(
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
	.combout(b2_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[4]));
// synopsys translate_off
defparam b2_ibuf_4_.input_async_reset = "none";
defparam b2_ibuf_4_.input_power_up = "low";
defparam b2_ibuf_4_.input_register_mode = "none";
defparam b2_ibuf_4_.input_sync_reset = "none";
defparam b2_ibuf_4_.oe_async_reset = "none";
defparam b2_ibuf_4_.oe_power_up = "low";
defparam b2_ibuf_4_.oe_register_mode = "none";
defparam b2_ibuf_4_.oe_sync_reset = "none";
defparam b2_ibuf_4_.operation_mode = "input";
defparam b2_ibuf_4_.output_async_reset = "none";
defparam b2_ibuf_4_.output_power_up = "low";
defparam b2_ibuf_4_.output_register_mode = "none";
defparam b2_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T17
cycloneii_io b2_ibuf_3_(
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
	.combout(b2_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[3]));
// synopsys translate_off
defparam b2_ibuf_3_.input_async_reset = "none";
defparam b2_ibuf_3_.input_power_up = "low";
defparam b2_ibuf_3_.input_register_mode = "none";
defparam b2_ibuf_3_.input_sync_reset = "none";
defparam b2_ibuf_3_.oe_async_reset = "none";
defparam b2_ibuf_3_.oe_power_up = "low";
defparam b2_ibuf_3_.oe_register_mode = "none";
defparam b2_ibuf_3_.oe_sync_reset = "none";
defparam b2_ibuf_3_.operation_mode = "input";
defparam b2_ibuf_3_.output_async_reset = "none";
defparam b2_ibuf_3_.output_power_up = "low";
defparam b2_ibuf_3_.output_register_mode = "none";
defparam b2_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T23
cycloneii_io b2_ibuf_2_(
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
	.combout(b2_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b2[2]));
// synopsys translate_off
defparam b2_ibuf_2_.input_async_reset = "none";
defparam b2_ibuf_2_.input_power_up = "low";
defparam b2_ibuf_2_.input_register_mode = "none";
defparam b2_ibuf_2_.input_sync_reset = "none";
defparam b2_ibuf_2_.oe_async_reset = "none";
defparam b2_ibuf_2_.oe_power_up = "low";
defparam b2_ibuf_2_.oe_register_mode = "none";
defparam b2_ibuf_2_.oe_sync_reset = "none";
defparam b2_ibuf_2_.operation_mode = "input";
defparam b2_ibuf_2_.output_async_reset = "none";
defparam b2_ibuf_2_.output_power_up = "low";
defparam b2_ibuf_2_.output_register_mode = "none";
defparam b2_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T21
cycloneii_io b1_ibuf_1_(
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
	.combout(b1_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[1]));
// synopsys translate_off
defparam b1_ibuf_1_.input_async_reset = "none";
defparam b1_ibuf_1_.input_power_up = "low";
defparam b1_ibuf_1_.input_register_mode = "none";
defparam b1_ibuf_1_.input_sync_reset = "none";
defparam b1_ibuf_1_.oe_async_reset = "none";
defparam b1_ibuf_1_.oe_power_up = "low";
defparam b1_ibuf_1_.oe_register_mode = "none";
defparam b1_ibuf_1_.oe_sync_reset = "none";
defparam b1_ibuf_1_.operation_mode = "input";
defparam b1_ibuf_1_.output_async_reset = "none";
defparam b1_ibuf_1_.output_power_up = "low";
defparam b1_ibuf_1_.output_register_mode = "none";
defparam b1_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U26
cycloneii_io b1_ibuf_0_(
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
	.combout(b1_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b1[0]));
// synopsys translate_off
defparam b1_ibuf_0_.input_async_reset = "none";
defparam b1_ibuf_0_.input_power_up = "low";
defparam b1_ibuf_0_.input_register_mode = "none";
defparam b1_ibuf_0_.input_sync_reset = "none";
defparam b1_ibuf_0_.oe_async_reset = "none";
defparam b1_ibuf_0_.oe_power_up = "low";
defparam b1_ibuf_0_.oe_register_mode = "none";
defparam b1_ibuf_0_.oe_sync_reset = "none";
defparam b1_ibuf_0_.operation_mode = "input";
defparam b1_ibuf_0_.output_async_reset = "none";
defparam b1_ibuf_0_.output_power_up = "low";
defparam b1_ibuf_0_.output_register_mode = "none";
defparam b1_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N12
cycloneii_lcell_comb p12_add8_0i2_aix44952z52931(
// Equation(s):
// p12_add8_0i2_anx37973z1 = b2_acombout[0] & (b1_acombout[0] $ VCC) # !b2_acombout[0] & b1_acombout[0] & VCC
// p12_add8_0i2_anx44952z22 = CARRY(b2_acombout[0] & b1_acombout[0])

	.dataa(b2_acombout[0]),
	.datab(b1_acombout[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p12_add8_0i2_anx37973z1),
	.cout(p12_add8_0i2_anx44952z22));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52931.lut_mask = 16'h6688;
defparam p12_add8_0i2_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N16
cycloneii_lcell_comb p12_add8_0i2_aix44952z52929(
// Equation(s):
// p12_add8_0i2_anx39967z1 = (b1_acombout[2] $ b2_acombout[2] $ !p12_add8_0i2_anx44952z19) # GND
// p12_add8_0i2_anx44952z16 = CARRY(b1_acombout[2] & (b2_acombout[2] # !p12_add8_0i2_anx44952z19) # !b1_acombout[2] & b2_acombout[2] & !p12_add8_0i2_anx44952z19)

	.dataa(b1_acombout[2]),
	.datab(b2_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z19),
	.combout(p12_add8_0i2_anx39967z1),
	.cout(p12_add8_0i2_anx44952z16));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52929.lut_mask = 16'h698E;
defparam p12_add8_0i2_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N22
cycloneii_lcell_comb p12_add8_0i2_aix44952z52926(
// Equation(s):
// p12_add8_0i2_anx42958z1 = b2_acombout[5] & (b1_acombout[5] & p12_add8_0i2_anx44952z10 & VCC # !b1_acombout[5] & !p12_add8_0i2_anx44952z10) # !b2_acombout[5] & (b1_acombout[5] & !p12_add8_0i2_anx44952z10 # !b1_acombout[5] & (p12_add8_0i2_anx44952z10 # 
// GND))
// p12_add8_0i2_anx44952z7 = CARRY(b2_acombout[5] & !b1_acombout[5] & !p12_add8_0i2_anx44952z10 # !b2_acombout[5] & (!p12_add8_0i2_anx44952z10 # !b1_acombout[5]))

	.dataa(b2_acombout[5]),
	.datab(b1_acombout[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z10),
	.combout(p12_add8_0i2_anx42958z1),
	.cout(p12_add8_0i2_anx44952z7));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52926.lut_mask = 16'h9617;
defparam p12_add8_0i2_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N24
cycloneii_lcell_comb p12_add8_0i2_aix44952z52925(
// Equation(s):
// p12_add8_0i2_anx43955z1 = (b1_acombout[6] $ b2_acombout[6] $ !p12_add8_0i2_anx44952z7) # GND
// p12_add8_0i2_anx44952z4 = CARRY(b1_acombout[6] & (b2_acombout[6] # !p12_add8_0i2_anx44952z7) # !b1_acombout[6] & b2_acombout[6] & !p12_add8_0i2_anx44952z7)

	.dataa(b1_acombout[6]),
	.datab(b2_acombout[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx44952z7),
	.combout(p12_add8_0i2_anx43955z1),
	.cout(p12_add8_0i2_anx44952z4));
// synopsys translate_off
defparam p12_add8_0i2_aix44952z52925.lut_mask = 16'h698E;
defparam p12_add8_0i2_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y17_N28
cycloneii_lcell_comb p12_add8_0i2_aix23445z52923(
// Equation(s):
// p12_add8_0i2_anx23445z1 = !p12_add8_0i2_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add8_0i2_anx23445z2),
	.combout(p12_add8_0i2_anx23445z1),
	.cout());
// synopsys translate_off
defparam p12_add8_0i2_aix23445z52923.lut_mask = 16'h0F0F;
defparam p12_add8_0i2_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_N24
cycloneii_io b3_ibuf_7_(
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
	.combout(b3_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[7]));
// synopsys translate_off
defparam b3_ibuf_7_.input_async_reset = "none";
defparam b3_ibuf_7_.input_power_up = "low";
defparam b3_ibuf_7_.input_register_mode = "none";
defparam b3_ibuf_7_.input_sync_reset = "none";
defparam b3_ibuf_7_.oe_async_reset = "none";
defparam b3_ibuf_7_.oe_power_up = "low";
defparam b3_ibuf_7_.oe_register_mode = "none";
defparam b3_ibuf_7_.oe_sync_reset = "none";
defparam b3_ibuf_7_.operation_mode = "input";
defparam b3_ibuf_7_.output_async_reset = "none";
defparam b3_ibuf_7_.output_power_up = "low";
defparam b3_ibuf_7_.output_register_mode = "none";
defparam b3_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M25
cycloneii_io b3_ibuf_4_(
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
	.combout(b3_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[4]));
// synopsys translate_off
defparam b3_ibuf_4_.input_async_reset = "none";
defparam b3_ibuf_4_.input_power_up = "low";
defparam b3_ibuf_4_.input_register_mode = "none";
defparam b3_ibuf_4_.input_sync_reset = "none";
defparam b3_ibuf_4_.oe_async_reset = "none";
defparam b3_ibuf_4_.oe_power_up = "low";
defparam b3_ibuf_4_.oe_register_mode = "none";
defparam b3_ibuf_4_.oe_sync_reset = "none";
defparam b3_ibuf_4_.operation_mode = "input";
defparam b3_ibuf_4_.output_async_reset = "none";
defparam b3_ibuf_4_.output_power_up = "low";
defparam b3_ibuf_4_.output_register_mode = "none";
defparam b3_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M20
cycloneii_io b3_ibuf_3_(
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
	.combout(b3_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[3]));
// synopsys translate_off
defparam b3_ibuf_3_.input_async_reset = "none";
defparam b3_ibuf_3_.input_power_up = "low";
defparam b3_ibuf_3_.input_register_mode = "none";
defparam b3_ibuf_3_.input_sync_reset = "none";
defparam b3_ibuf_3_.oe_async_reset = "none";
defparam b3_ibuf_3_.oe_power_up = "low";
defparam b3_ibuf_3_.oe_register_mode = "none";
defparam b3_ibuf_3_.oe_sync_reset = "none";
defparam b3_ibuf_3_.operation_mode = "input";
defparam b3_ibuf_3_.output_async_reset = "none";
defparam b3_ibuf_3_.output_power_up = "low";
defparam b3_ibuf_3_.output_register_mode = "none";
defparam b3_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N23
cycloneii_io b3_ibuf_1_(
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
	.combout(b3_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(b3[1]));
// synopsys translate_off
defparam b3_ibuf_1_.input_async_reset = "none";
defparam b3_ibuf_1_.input_power_up = "low";
defparam b3_ibuf_1_.input_register_mode = "none";
defparam b3_ibuf_1_.input_sync_reset = "none";
defparam b3_ibuf_1_.oe_async_reset = "none";
defparam b3_ibuf_1_.oe_power_up = "low";
defparam b3_ibuf_1_.oe_register_mode = "none";
defparam b3_ibuf_1_.oe_sync_reset = "none";
defparam b3_ibuf_1_.operation_mode = "input";
defparam b3_ibuf_1_.output_async_reset = "none";
defparam b3_ibuf_1_.output_power_up = "low";
defparam b3_ibuf_1_.output_register_mode = "none";
defparam b3_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N0
cycloneii_lcell_comb p12_add9_2_aix45949z52932(
// Equation(s):
// p12_add9_2_anx37973z1 = b3_acombout[0] & (p12_add8_0i2_anx37973z1 $ VCC) # !b3_acombout[0] & p12_add8_0i2_anx37973z1 & VCC
// p12_add9_2_anx45949z24 = CARRY(b3_acombout[0] & p12_add8_0i2_anx37973z1)

	.dataa(b3_acombout[0]),
	.datab(p12_add8_0i2_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p12_add9_2_anx37973z1),
	.cout(p12_add9_2_anx45949z24));
// synopsys translate_off
defparam p12_add9_2_aix45949z52932.lut_mask = 16'h6688;
defparam p12_add9_2_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N2
cycloneii_lcell_comb p12_add9_2_aix45949z52931(
// Equation(s):
// p12_add9_2_anx38970z1 = p12_add8_0i2_anx38970z1 & (b3_acombout[1] & p12_add9_2_anx45949z24 & VCC # !b3_acombout[1] & !p12_add9_2_anx45949z24) # !p12_add8_0i2_anx38970z1 & (b3_acombout[1] & !p12_add9_2_anx45949z24 # !b3_acombout[1] & 
// (p12_add9_2_anx45949z24 # GND))
// p12_add9_2_anx45949z21 = CARRY(p12_add8_0i2_anx38970z1 & !b3_acombout[1] & !p12_add9_2_anx45949z24 # !p12_add8_0i2_anx38970z1 & (!p12_add9_2_anx45949z24 # !b3_acombout[1]))

	.dataa(p12_add8_0i2_anx38970z1),
	.datab(b3_acombout[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z24),
	.combout(p12_add9_2_anx38970z1),
	.cout(p12_add9_2_anx45949z21));
// synopsys translate_off
defparam p12_add9_2_aix45949z52931.lut_mask = 16'h9617;
defparam p12_add9_2_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N4
cycloneii_lcell_comb p12_add9_2_aix45949z52930(
// Equation(s):
// p12_add9_2_anx39967z1 = (b3_acombout[2] $ p12_add8_0i2_anx39967z1 $ !p12_add9_2_anx45949z21) # GND
// p12_add9_2_anx45949z18 = CARRY(b3_acombout[2] & (p12_add8_0i2_anx39967z1 # !p12_add9_2_anx45949z21) # !b3_acombout[2] & p12_add8_0i2_anx39967z1 & !p12_add9_2_anx45949z21)

	.dataa(b3_acombout[2]),
	.datab(p12_add8_0i2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z21),
	.combout(p12_add9_2_anx39967z1),
	.cout(p12_add9_2_anx45949z18));
// synopsys translate_off
defparam p12_add9_2_aix45949z52930.lut_mask = 16'h698E;
defparam p12_add9_2_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N6
cycloneii_lcell_comb p12_add9_2_aix45949z52929(
// Equation(s):
// p12_add9_2_anx40964z1 = p12_add8_0i2_anx40964z1 & (b3_acombout[3] & p12_add9_2_anx45949z18 & VCC # !b3_acombout[3] & !p12_add9_2_anx45949z18) # !p12_add8_0i2_anx40964z1 & (b3_acombout[3] & !p12_add9_2_anx45949z18 # !b3_acombout[3] & 
// (p12_add9_2_anx45949z18 # GND))
// p12_add9_2_anx45949z15 = CARRY(p12_add8_0i2_anx40964z1 & !b3_acombout[3] & !p12_add9_2_anx45949z18 # !p12_add8_0i2_anx40964z1 & (!p12_add9_2_anx45949z18 # !b3_acombout[3]))

	.dataa(p12_add8_0i2_anx40964z1),
	.datab(b3_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z18),
	.combout(p12_add9_2_anx40964z1),
	.cout(p12_add9_2_anx45949z15));
// synopsys translate_off
defparam p12_add9_2_aix45949z52929.lut_mask = 16'h9617;
defparam p12_add9_2_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N8
cycloneii_lcell_comb p12_add9_2_aix45949z52928(
// Equation(s):
// p12_add9_2_anx41961z1 = (p12_add8_0i2_anx41961z1 $ b3_acombout[4] $ !p12_add9_2_anx45949z15) # GND
// p12_add9_2_anx45949z12 = CARRY(p12_add8_0i2_anx41961z1 & (b3_acombout[4] # !p12_add9_2_anx45949z15) # !p12_add8_0i2_anx41961z1 & b3_acombout[4] & !p12_add9_2_anx45949z15)

	.dataa(p12_add8_0i2_anx41961z1),
	.datab(b3_acombout[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z15),
	.combout(p12_add9_2_anx41961z1),
	.cout(p12_add9_2_anx45949z12));
// synopsys translate_off
defparam p12_add9_2_aix45949z52928.lut_mask = 16'h698E;
defparam p12_add9_2_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N10
cycloneii_lcell_comb p12_add9_2_aix45949z52927(
// Equation(s):
// p12_add9_2_anx42958z1 = b3_acombout[5] & (p12_add8_0i2_anx42958z1 & p12_add9_2_anx45949z12 & VCC # !p12_add8_0i2_anx42958z1 & !p12_add9_2_anx45949z12) # !b3_acombout[5] & (p12_add8_0i2_anx42958z1 & !p12_add9_2_anx45949z12 # !p12_add8_0i2_anx42958z1 & 
// (p12_add9_2_anx45949z12 # GND))
// p12_add9_2_anx45949z9 = CARRY(b3_acombout[5] & !p12_add8_0i2_anx42958z1 & !p12_add9_2_anx45949z12 # !b3_acombout[5] & (!p12_add9_2_anx45949z12 # !p12_add8_0i2_anx42958z1))

	.dataa(b3_acombout[5]),
	.datab(p12_add8_0i2_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z12),
	.combout(p12_add9_2_anx42958z1),
	.cout(p12_add9_2_anx45949z9));
// synopsys translate_off
defparam p12_add9_2_aix45949z52927.lut_mask = 16'h9617;
defparam p12_add9_2_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N12
cycloneii_lcell_comb p12_add9_2_aix45949z52926(
// Equation(s):
// p12_add9_2_anx43955z1 = (b3_acombout[6] $ p12_add8_0i2_anx43955z1 $ !p12_add9_2_anx45949z9) # GND
// p12_add9_2_anx45949z6 = CARRY(b3_acombout[6] & (p12_add8_0i2_anx43955z1 # !p12_add9_2_anx45949z9) # !b3_acombout[6] & p12_add8_0i2_anx43955z1 & !p12_add9_2_anx45949z9)

	.dataa(b3_acombout[6]),
	.datab(p12_add8_0i2_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z9),
	.combout(p12_add9_2_anx43955z1),
	.cout(p12_add9_2_anx45949z6));
// synopsys translate_off
defparam p12_add9_2_aix45949z52926.lut_mask = 16'h698E;
defparam p12_add9_2_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N14
cycloneii_lcell_comb p12_add9_2_aix45949z52925(
// Equation(s):
// p12_add9_2_anx44952z1 = p12_add8_0i2_anx44952z1 & (b3_acombout[7] & p12_add9_2_anx45949z6 & VCC # !b3_acombout[7] & !p12_add9_2_anx45949z6) # !p12_add8_0i2_anx44952z1 & (b3_acombout[7] & !p12_add9_2_anx45949z6 # !b3_acombout[7] & (p12_add9_2_anx45949z6 # 
// GND))
// p12_add9_2_anx45949z3 = CARRY(p12_add8_0i2_anx44952z1 & !b3_acombout[7] & !p12_add9_2_anx45949z6 # !p12_add8_0i2_anx44952z1 & (!p12_add9_2_anx45949z6 # !b3_acombout[7]))

	.dataa(p12_add8_0i2_anx44952z1),
	.datab(b3_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z6),
	.combout(p12_add9_2_anx44952z1),
	.cout(p12_add9_2_anx45949z3));
// synopsys translate_off
defparam p12_add9_2_aix45949z52925.lut_mask = 16'h9617;
defparam p12_add9_2_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N16
cycloneii_lcell_comb p12_add9_2_aix45949z52923(
// Equation(s):
// p12_add9_2_anx45949z1 = p12_add8_0i2_anx23445z1 & (p12_add9_2_anx45949z3 $ GND) # !p12_add8_0i2_anx23445z1 & !p12_add9_2_anx45949z3 & VCC
// p12_add9_2_anx23445z2 = CARRY(p12_add8_0i2_anx23445z1 & !p12_add9_2_anx45949z3)

	.dataa(vcc),
	.datab(p12_add8_0i2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx45949z3),
	.combout(p12_add9_2_anx45949z1),
	.cout(p12_add9_2_anx23445z2));
// synopsys translate_off
defparam p12_add9_2_aix45949z52923.lut_mask = 16'hC30C;
defparam p12_add9_2_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N8
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52933(
// Equation(s):
// p22_sub10_3i4_anx37973z1 = p12_add9_2_anx37973z1 & (GND # !p11_add9_1_anx37973z1) # !p12_add9_2_anx37973z1 & (p11_add9_1_anx37973z1 $ GND)
// p22_sub10_3i4_anx46946z28 = CARRY(p12_add9_2_anx37973z1 # !p11_add9_1_anx37973z1)

	.dataa(p12_add9_2_anx37973z1),
	.datab(p11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p22_sub10_3i4_anx37973z1),
	.cout(p22_sub10_3i4_anx46946z28));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52933.lut_mask = 16'h66BB;
defparam p22_sub10_3i4_aix46946z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N12
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52931(
// Equation(s):
// p22_sub10_3i4_anx39967z1 = (p12_add9_2_anx39967z1 $ p11_add9_1_anx39967z1 $ p22_sub10_3i4_anx46946z25) # GND
// p22_sub10_3i4_anx46946z22 = CARRY(p12_add9_2_anx39967z1 & (!p22_sub10_3i4_anx46946z25 # !p11_add9_1_anx39967z1) # !p12_add9_2_anx39967z1 & !p11_add9_1_anx39967z1 & !p22_sub10_3i4_anx46946z25)

	.dataa(p12_add9_2_anx39967z1),
	.datab(p11_add9_1_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z25),
	.combout(p22_sub10_3i4_anx39967z1),
	.cout(p22_sub10_3i4_anx46946z22));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52931.lut_mask = 16'h962B;
defparam p22_sub10_3i4_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N14
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52930(
// Equation(s):
// p22_sub10_3i4_anx40964z1 = p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & !p22_sub10_3i4_anx46946z22 # !p11_add9_1_anx40964z1 & p22_sub10_3i4_anx46946z22 & VCC) # !p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & (p22_sub10_3i4_anx46946z22 # GND) # 
// !p11_add9_1_anx40964z1 & !p22_sub10_3i4_anx46946z22)
// p22_sub10_3i4_anx46946z19 = CARRY(p12_add9_2_anx40964z1 & p11_add9_1_anx40964z1 & !p22_sub10_3i4_anx46946z22 # !p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 # !p22_sub10_3i4_anx46946z22))

	.dataa(p12_add9_2_anx40964z1),
	.datab(p11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z22),
	.combout(p22_sub10_3i4_anx40964z1),
	.cout(p22_sub10_3i4_anx46946z19));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52930.lut_mask = 16'h694D;
defparam p22_sub10_3i4_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N18
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52928(
// Equation(s):
// p22_sub10_3i4_anx42958z1 = p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & !p22_sub10_3i4_anx46946z16 # !p12_add9_2_anx42958z1 & (p22_sub10_3i4_anx46946z16 # GND)) # !p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & p22_sub10_3i4_anx46946z16 & VCC # 
// !p12_add9_2_anx42958z1 & !p22_sub10_3i4_anx46946z16)
// p22_sub10_3i4_anx46946z13 = CARRY(p11_add9_1_anx42958z1 & (!p22_sub10_3i4_anx46946z16 # !p12_add9_2_anx42958z1) # !p11_add9_1_anx42958z1 & !p12_add9_2_anx42958z1 & !p22_sub10_3i4_anx46946z16)

	.dataa(p11_add9_1_anx42958z1),
	.datab(p12_add9_2_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z16),
	.combout(p22_sub10_3i4_anx42958z1),
	.cout(p22_sub10_3i4_anx46946z13));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52928.lut_mask = 16'h692B;
defparam p22_sub10_3i4_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N22
cycloneii_lcell_comb p22_sub10_3i4_aix46946z52926(
// Equation(s):
// p22_sub10_3i4_anx44952z1 = p12_add9_2_anx44952z1 & (p11_add9_1_anx44952z1 & !p22_sub10_3i4_anx46946z10 # !p11_add9_1_anx44952z1 & p22_sub10_3i4_anx46946z10 & VCC) # !p12_add9_2_anx44952z1 & (p11_add9_1_anx44952z1 & (p22_sub10_3i4_anx46946z10 # GND) # 
// !p11_add9_1_anx44952z1 & !p22_sub10_3i4_anx46946z10)
// p22_sub10_3i4_anx46946z7 = CARRY(p12_add9_2_anx44952z1 & p11_add9_1_anx44952z1 & !p22_sub10_3i4_anx46946z10 # !p12_add9_2_anx44952z1 & (p11_add9_1_anx44952z1 # !p22_sub10_3i4_anx46946z10))

	.dataa(p12_add9_2_anx44952z1),
	.datab(p11_add9_1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx46946z10),
	.combout(p22_sub10_3i4_anx44952z1),
	.cout(p22_sub10_3i4_anx46946z7));
// synopsys translate_off
defparam p22_sub10_3i4_aix46946z52926.lut_mask = 16'h694D;
defparam p22_sub10_3i4_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y22_N28
cycloneii_lcell_comb p22_sub10_3i4_aix23445z52923(
// Equation(s):
// p22_sub10_3i4_anx23445z1 = !p22_sub10_3i4_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub10_3i4_anx23445z2),
	.combout(p22_sub10_3i4_anx23445z1),
	.cout());
// synopsys translate_off
defparam p22_sub10_3i4_aix23445z52923.lut_mask = 16'h0F0F;
defparam p22_sub10_3i4_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y21_N18
cycloneii_lcell_comb p12_add9_2_aix23445z52923(
// Equation(s):
// p12_add9_2_anx23445z1 = p12_add9_2_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p12_add9_2_anx23445z2),
	.combout(p12_add9_2_anx23445z1),
	.cout());
// synopsys translate_off
defparam p12_add9_2_aix23445z52923.lut_mask = 16'hF0F0;
defparam p12_add9_2_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N4
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52934(
// Equation(s):
// p22_sub11_3i2_anx46946z29 = CARRY(p12_add9_2_anx37973z1)

	.dataa(vcc),
	.datab(p12_add9_2_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(p22_sub11_3i2_anx46946z29));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52934.lut_mask = 16'h00CC;
defparam p22_sub11_3i2_aix46946z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N10
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52931(
// Equation(s):
// p22_sub11_3i2_anx39967z1 = p12_add9_2_anx39967z1 & (p11_add9_1_anx40964z1 & !p22_sub11_3i2_anx46946z24 # !p11_add9_1_anx40964z1 & p22_sub11_3i2_anx46946z24 & VCC) # !p12_add9_2_anx39967z1 & (p11_add9_1_anx40964z1 & (p22_sub11_3i2_anx46946z24 # GND) # 
// !p11_add9_1_anx40964z1 & !p22_sub11_3i2_anx46946z24)
// p22_sub11_3i2_anx46946z21 = CARRY(p12_add9_2_anx39967z1 & p11_add9_1_anx40964z1 & !p22_sub11_3i2_anx46946z24 # !p12_add9_2_anx39967z1 & (p11_add9_1_anx40964z1 # !p22_sub11_3i2_anx46946z24))

	.dataa(p12_add9_2_anx39967z1),
	.datab(p11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z24),
	.combout(p22_sub11_3i2_anx39967z1),
	.cout(p22_sub11_3i2_anx46946z21));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52931.lut_mask = 16'h694D;
defparam p22_sub11_3i2_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N14
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52929(
// Equation(s):
// p22_sub11_3i2_anx41961z1 = p11_add9_1_anx42958z1 & (p12_add9_2_anx41961z1 & !p22_sub11_3i2_anx46946z18 # !p12_add9_2_anx41961z1 & (p22_sub11_3i2_anx46946z18 # GND)) # !p11_add9_1_anx42958z1 & (p12_add9_2_anx41961z1 & p22_sub11_3i2_anx46946z18 & VCC # 
// !p12_add9_2_anx41961z1 & !p22_sub11_3i2_anx46946z18)
// p22_sub11_3i2_anx46946z15 = CARRY(p11_add9_1_anx42958z1 & (!p22_sub11_3i2_anx46946z18 # !p12_add9_2_anx41961z1) # !p11_add9_1_anx42958z1 & !p12_add9_2_anx41961z1 & !p22_sub11_3i2_anx46946z18)

	.dataa(p11_add9_1_anx42958z1),
	.datab(p12_add9_2_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z18),
	.combout(p22_sub11_3i2_anx41961z1),
	.cout(p22_sub11_3i2_anx46946z15));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52929.lut_mask = 16'h692B;
defparam p22_sub11_3i2_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N18
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52927(
// Equation(s):
// p22_sub11_3i2_anx43955z1 = p12_add9_2_anx43955z1 & (p11_add9_1_anx44952z1 & !p22_sub11_3i2_anx46946z12 # !p11_add9_1_anx44952z1 & p22_sub11_3i2_anx46946z12 & VCC) # !p12_add9_2_anx43955z1 & (p11_add9_1_anx44952z1 & (p22_sub11_3i2_anx46946z12 # GND) # 
// !p11_add9_1_anx44952z1 & !p22_sub11_3i2_anx46946z12)
// p22_sub11_3i2_anx46946z9 = CARRY(p12_add9_2_anx43955z1 & p11_add9_1_anx44952z1 & !p22_sub11_3i2_anx46946z12 # !p12_add9_2_anx43955z1 & (p11_add9_1_anx44952z1 # !p22_sub11_3i2_anx46946z12))

	.dataa(p12_add9_2_anx43955z1),
	.datab(p11_add9_1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z12),
	.combout(p22_sub11_3i2_anx43955z1),
	.cout(p22_sub11_3i2_anx46946z9));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52927.lut_mask = 16'h694D;
defparam p22_sub11_3i2_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N20
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52926(
// Equation(s):
// p22_sub11_3i2_anx44952z1 = (p12_add9_2_anx44952z1 $ p11_add9_1_anx45949z1 $ p22_sub11_3i2_anx46946z9) # GND
// p22_sub11_3i2_anx46946z6 = CARRY(p12_add9_2_anx44952z1 & (!p22_sub11_3i2_anx46946z9 # !p11_add9_1_anx45949z1) # !p12_add9_2_anx44952z1 & !p11_add9_1_anx45949z1 & !p22_sub11_3i2_anx46946z9)

	.dataa(p12_add9_2_anx44952z1),
	.datab(p11_add9_1_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p22_sub11_3i2_anx46946z9),
	.combout(p22_sub11_3i2_anx44952z1),
	.cout(p22_sub11_3i2_anx46946z6));
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52926.lut_mask = 16'h962B;
defparam p22_sub11_3i2_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y22_N24
cycloneii_lcell_comb p22_sub11_3i2_aix46946z52923(
// Equation(s):
// p22_sub11_3i2_anx46946z1 = p22_sub11_3i2_anx46946z3 $ p12_add9_2_anx23445z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p12_add9_2_anx23445z1),
	.cin(p22_sub11_3i2_anx46946z3),
	.combout(p22_sub11_3i2_anx46946z1),
	.cout());
// synopsys translate_off
defparam p22_sub11_3i2_aix46946z52923.lut_mask = 16'h0FF0;
defparam p22_sub11_3i2_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N10
cycloneii_lcell_comb ix47840z52631_aix62798z52933(
// Equation(s):
// ix47840z52631_anx38970z1 = p22_sub11_3i2_anx37973z1 & (p22_sub10_3i4_anx39967z1 & ix47840z52631_anx62798z30 & VCC # !p22_sub10_3i4_anx39967z1 & !ix47840z52631_anx62798z30) # !p22_sub11_3i2_anx37973z1 & (p22_sub10_3i4_anx39967z1 & 
// !ix47840z52631_anx62798z30 # !p22_sub10_3i4_anx39967z1 & (ix47840z52631_anx62798z30 # GND))
// ix47840z52631_anx62798z27 = CARRY(p22_sub11_3i2_anx37973z1 & !p22_sub10_3i4_anx39967z1 & !ix47840z52631_anx62798z30 # !p22_sub11_3i2_anx37973z1 & (!ix47840z52631_anx62798z30 # !p22_sub10_3i4_anx39967z1))

	.dataa(p22_sub11_3i2_anx37973z1),
	.datab(p22_sub10_3i4_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z30),
	.combout(ix47840z52631_anx38970z1),
	.cout(ix47840z52631_anx62798z27));
// synopsys translate_off
defparam ix47840z52631_aix62798z52933.lut_mask = 16'h9617;
defparam ix47840z52631_aix62798z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N14
cycloneii_lcell_comb ix47840z52631_aix62798z52931(
// Equation(s):
// ix47840z52631_anx40964z1 = p22_sub10_3i4_anx41961z1 & (p22_sub11_3i2_anx39967z1 & ix47840z52631_anx62798z24 & VCC # !p22_sub11_3i2_anx39967z1 & !ix47840z52631_anx62798z24) # !p22_sub10_3i4_anx41961z1 & (p22_sub11_3i2_anx39967z1 & 
// !ix47840z52631_anx62798z24 # !p22_sub11_3i2_anx39967z1 & (ix47840z52631_anx62798z24 # GND))
// ix47840z52631_anx62798z21 = CARRY(p22_sub10_3i4_anx41961z1 & !p22_sub11_3i2_anx39967z1 & !ix47840z52631_anx62798z24 # !p22_sub10_3i4_anx41961z1 & (!ix47840z52631_anx62798z24 # !p22_sub11_3i2_anx39967z1))

	.dataa(p22_sub10_3i4_anx41961z1),
	.datab(p22_sub11_3i2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z24),
	.combout(ix47840z52631_anx40964z1),
	.cout(ix47840z52631_anx62798z21));
// synopsys translate_off
defparam ix47840z52631_aix62798z52931.lut_mask = 16'h9617;
defparam ix47840z52631_aix62798z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N16
cycloneii_lcell_comb ix47840z52631_aix62798z52930(
// Equation(s):
// ix47840z52631_anx41961z1 = (p22_sub11_3i2_anx40964z1 $ p22_sub10_3i4_anx42958z1 $ !ix47840z52631_anx62798z21) # GND
// ix47840z52631_anx62798z18 = CARRY(p22_sub11_3i2_anx40964z1 & (p22_sub10_3i4_anx42958z1 # !ix47840z52631_anx62798z21) # !p22_sub11_3i2_anx40964z1 & p22_sub10_3i4_anx42958z1 & !ix47840z52631_anx62798z21)

	.dataa(p22_sub11_3i2_anx40964z1),
	.datab(p22_sub10_3i4_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z21),
	.combout(ix47840z52631_anx41961z1),
	.cout(ix47840z52631_anx62798z18));
// synopsys translate_off
defparam ix47840z52631_aix62798z52930.lut_mask = 16'h698E;
defparam ix47840z52631_aix62798z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N18
cycloneii_lcell_comb ix47840z52631_aix62798z52929(
// Equation(s):
// ix47840z52631_anx42958z1 = p22_sub10_3i4_anx43955z1 & (p22_sub11_3i2_anx41961z1 & ix47840z52631_anx62798z18 & VCC # !p22_sub11_3i2_anx41961z1 & !ix47840z52631_anx62798z18) # !p22_sub10_3i4_anx43955z1 & (p22_sub11_3i2_anx41961z1 & 
// !ix47840z52631_anx62798z18 # !p22_sub11_3i2_anx41961z1 & (ix47840z52631_anx62798z18 # GND))
// ix47840z52631_anx62798z15 = CARRY(p22_sub10_3i4_anx43955z1 & !p22_sub11_3i2_anx41961z1 & !ix47840z52631_anx62798z18 # !p22_sub10_3i4_anx43955z1 & (!ix47840z52631_anx62798z18 # !p22_sub11_3i2_anx41961z1))

	.dataa(p22_sub10_3i4_anx43955z1),
	.datab(p22_sub11_3i2_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z18),
	.combout(ix47840z52631_anx42958z1),
	.cout(ix47840z52631_anx62798z15));
// synopsys translate_off
defparam ix47840z52631_aix62798z52929.lut_mask = 16'h9617;
defparam ix47840z52631_aix62798z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N22
cycloneii_lcell_comb ix47840z52631_aix62798z52927(
// Equation(s):
// ix47840z52631_anx44952z1 = p22_sub10_3i4_anx45949z1 & (p22_sub11_3i2_anx43955z1 & ix47840z52631_anx62798z12 & VCC # !p22_sub11_3i2_anx43955z1 & !ix47840z52631_anx62798z12) # !p22_sub10_3i4_anx45949z1 & (p22_sub11_3i2_anx43955z1 & 
// !ix47840z52631_anx62798z12 # !p22_sub11_3i2_anx43955z1 & (ix47840z52631_anx62798z12 # GND))
// ix47840z52631_anx62798z9 = CARRY(p22_sub10_3i4_anx45949z1 & !p22_sub11_3i2_anx43955z1 & !ix47840z52631_anx62798z12 # !p22_sub10_3i4_anx45949z1 & (!ix47840z52631_anx62798z12 # !p22_sub11_3i2_anx43955z1))

	.dataa(p22_sub10_3i4_anx45949z1),
	.datab(p22_sub11_3i2_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z12),
	.combout(ix47840z52631_anx44952z1),
	.cout(ix47840z52631_anx62798z9));
// synopsys translate_off
defparam ix47840z52631_aix62798z52927.lut_mask = 16'h9617;
defparam ix47840z52631_aix62798z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N24
cycloneii_lcell_comb ix47840z52631_aix62798z52926(
// Equation(s):
// ix47840z52631_anx45949z1 = (p22_sub10_3i4_anx46946z1 $ p22_sub11_3i2_anx44952z1 $ !ix47840z52631_anx62798z9) # GND
// ix47840z52631_anx62798z6 = CARRY(p22_sub10_3i4_anx46946z1 & (p22_sub11_3i2_anx44952z1 # !ix47840z52631_anx62798z9) # !p22_sub10_3i4_anx46946z1 & p22_sub11_3i2_anx44952z1 & !ix47840z52631_anx62798z9)

	.dataa(p22_sub10_3i4_anx46946z1),
	.datab(p22_sub11_3i2_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix47840z52631_anx62798z9),
	.combout(ix47840z52631_anx45949z1),
	.cout(ix47840z52631_anx62798z6));
// synopsys translate_off
defparam ix47840z52631_aix62798z52926.lut_mask = 16'h698E;
defparam ix47840z52631_aix62798z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N28
cycloneii_lcell_comb ix47840z52631_aix62798z52923(
// Equation(s):
// ix47840z52631_anx62798z1 = p22_sub10_3i4_anx23445z1 $ ix47840z52631_anx62798z4 $ p22_sub11_3i2_anx46946z1

	.dataa(vcc),
	.datab(p22_sub10_3i4_anx23445z1),
	.datac(vcc),
	.datad(p22_sub11_3i2_anx46946z1),
	.cin(ix47840z52631_anx62798z4),
	.combout(ix47840z52631_anx62798z1),
	.cout());
// synopsys translate_off
defparam ix47840z52631_aix62798z52923.lut_mask = 16'hC33C;
defparam ix47840z52631_aix62798z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N29
cycloneii_lcell_ff reg_p22_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_11_));

// atom is at LCCOMB_X58_Y22_N8
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52933(
// Equation(s):
// p21_sub10_3i3_anx37973z1 = p12_add9_2_anx37973z1 & (p11_add9_1_anx37973z1 $ VCC) # !p12_add9_2_anx37973z1 & (p11_add9_1_anx37973z1 # GND)
// p21_sub10_3i3_anx46946z28 = CARRY(p11_add9_1_anx37973z1 # !p12_add9_2_anx37973z1)

	.dataa(p12_add9_2_anx37973z1),
	.datab(p11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p21_sub10_3i3_anx37973z1),
	.cout(p21_sub10_3i3_anx46946z28));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52933.lut_mask = 16'h66DD;
defparam p21_sub10_3i3_aix46946z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N10
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52932(
// Equation(s):
// p21_sub10_3i3_anx38970z1 = p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & !p21_sub10_3i3_anx46946z28 # !p11_add9_1_anx38970z1 & (p21_sub10_3i3_anx46946z28 # GND)) # !p12_add9_2_anx38970z1 & (p11_add9_1_anx38970z1 & p21_sub10_3i3_anx46946z28 & VCC # 
// !p11_add9_1_anx38970z1 & !p21_sub10_3i3_anx46946z28)
// p21_sub10_3i3_anx46946z25 = CARRY(p12_add9_2_anx38970z1 & (!p21_sub10_3i3_anx46946z28 # !p11_add9_1_anx38970z1) # !p12_add9_2_anx38970z1 & !p11_add9_1_anx38970z1 & !p21_sub10_3i3_anx46946z28)

	.dataa(p12_add9_2_anx38970z1),
	.datab(p11_add9_1_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z28),
	.combout(p21_sub10_3i3_anx38970z1),
	.cout(p21_sub10_3i3_anx46946z25));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52932.lut_mask = 16'h692B;
defparam p21_sub10_3i3_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N12
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52931(
// Equation(s):
// p21_sub10_3i3_anx39967z1 = (p11_add9_1_anx39967z1 $ p12_add9_2_anx39967z1 $ p21_sub10_3i3_anx46946z25) # GND
// p21_sub10_3i3_anx46946z22 = CARRY(p11_add9_1_anx39967z1 & (!p21_sub10_3i3_anx46946z25 # !p12_add9_2_anx39967z1) # !p11_add9_1_anx39967z1 & !p12_add9_2_anx39967z1 & !p21_sub10_3i3_anx46946z25)

	.dataa(p11_add9_1_anx39967z1),
	.datab(p12_add9_2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z25),
	.combout(p21_sub10_3i3_anx39967z1),
	.cout(p21_sub10_3i3_anx46946z22));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52931.lut_mask = 16'h962B;
defparam p21_sub10_3i3_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N14
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52930(
// Equation(s):
// p21_sub10_3i3_anx40964z1 = p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & !p21_sub10_3i3_anx46946z22 # !p11_add9_1_anx40964z1 & (p21_sub10_3i3_anx46946z22 # GND)) # !p12_add9_2_anx40964z1 & (p11_add9_1_anx40964z1 & p21_sub10_3i3_anx46946z22 & VCC # 
// !p11_add9_1_anx40964z1 & !p21_sub10_3i3_anx46946z22)
// p21_sub10_3i3_anx46946z19 = CARRY(p12_add9_2_anx40964z1 & (!p21_sub10_3i3_anx46946z22 # !p11_add9_1_anx40964z1) # !p12_add9_2_anx40964z1 & !p11_add9_1_anx40964z1 & !p21_sub10_3i3_anx46946z22)

	.dataa(p12_add9_2_anx40964z1),
	.datab(p11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z22),
	.combout(p21_sub10_3i3_anx40964z1),
	.cout(p21_sub10_3i3_anx46946z19));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52930.lut_mask = 16'h692B;
defparam p21_sub10_3i3_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N18
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52928(
// Equation(s):
// p21_sub10_3i3_anx42958z1 = p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & !p21_sub10_3i3_anx46946z16 # !p12_add9_2_anx42958z1 & p21_sub10_3i3_anx46946z16 & VCC) # !p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 & (p21_sub10_3i3_anx46946z16 # GND) # 
// !p12_add9_2_anx42958z1 & !p21_sub10_3i3_anx46946z16)
// p21_sub10_3i3_anx46946z13 = CARRY(p11_add9_1_anx42958z1 & p12_add9_2_anx42958z1 & !p21_sub10_3i3_anx46946z16 # !p11_add9_1_anx42958z1 & (p12_add9_2_anx42958z1 # !p21_sub10_3i3_anx46946z16))

	.dataa(p11_add9_1_anx42958z1),
	.datab(p12_add9_2_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z16),
	.combout(p21_sub10_3i3_anx42958z1),
	.cout(p21_sub10_3i3_anx46946z13));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52928.lut_mask = 16'h694D;
defparam p21_sub10_3i3_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N20
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52927(
// Equation(s):
// p21_sub10_3i3_anx43955z1 = (p11_add9_1_anx43955z1 $ p12_add9_2_anx43955z1 $ p21_sub10_3i3_anx46946z13) # GND
// p21_sub10_3i3_anx46946z10 = CARRY(p11_add9_1_anx43955z1 & (!p21_sub10_3i3_anx46946z13 # !p12_add9_2_anx43955z1) # !p11_add9_1_anx43955z1 & !p12_add9_2_anx43955z1 & !p21_sub10_3i3_anx46946z13)

	.dataa(p11_add9_1_anx43955z1),
	.datab(p12_add9_2_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z13),
	.combout(p21_sub10_3i3_anx43955z1),
	.cout(p21_sub10_3i3_anx46946z10));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52927.lut_mask = 16'h962B;
defparam p21_sub10_3i3_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N22
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52926(
// Equation(s):
// p21_sub10_3i3_anx44952z1 = p11_add9_1_anx44952z1 & (p12_add9_2_anx44952z1 & !p21_sub10_3i3_anx46946z10 # !p12_add9_2_anx44952z1 & p21_sub10_3i3_anx46946z10 & VCC) # !p11_add9_1_anx44952z1 & (p12_add9_2_anx44952z1 & (p21_sub10_3i3_anx46946z10 # GND) # 
// !p12_add9_2_anx44952z1 & !p21_sub10_3i3_anx46946z10)
// p21_sub10_3i3_anx46946z7 = CARRY(p11_add9_1_anx44952z1 & p12_add9_2_anx44952z1 & !p21_sub10_3i3_anx46946z10 # !p11_add9_1_anx44952z1 & (p12_add9_2_anx44952z1 # !p21_sub10_3i3_anx46946z10))

	.dataa(p11_add9_1_anx44952z1),
	.datab(p12_add9_2_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z10),
	.combout(p21_sub10_3i3_anx44952z1),
	.cout(p21_sub10_3i3_anx46946z7));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52926.lut_mask = 16'h694D;
defparam p21_sub10_3i3_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N24
cycloneii_lcell_comb p21_sub10_3i3_aix46946z52925(
// Equation(s):
// p21_sub10_3i3_anx45949z1 = (p12_add9_2_anx45949z1 $ p11_add9_1_anx45949z1 $ p21_sub10_3i3_anx46946z7) # GND
// p21_sub10_3i3_anx46946z4 = CARRY(p12_add9_2_anx45949z1 & p11_add9_1_anx45949z1 & !p21_sub10_3i3_anx46946z7 # !p12_add9_2_anx45949z1 & (p11_add9_1_anx45949z1 # !p21_sub10_3i3_anx46946z7))

	.dataa(p12_add9_2_anx45949z1),
	.datab(p11_add9_1_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx46946z7),
	.combout(p21_sub10_3i3_anx45949z1),
	.cout(p21_sub10_3i3_anx46946z4));
// synopsys translate_off
defparam p21_sub10_3i3_aix46946z52925.lut_mask = 16'h964D;
defparam p21_sub10_3i3_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N28
cycloneii_lcell_comb p21_sub10_3i3_aix23445z52923(
// Equation(s):
// p21_sub10_3i3_anx23445z1 = !p21_sub10_3i3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub10_3i3_anx23445z2),
	.combout(p21_sub10_3i3_anx23445z1),
	.cout());
// synopsys translate_off
defparam p21_sub10_3i3_aix23445z52923.lut_mask = 16'h0F0F;
defparam p21_sub10_3i3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N8
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52934(
// Equation(s):
// p21_sub11_3i1_anx46946z29 = CARRY(p11_add9_1_anx37973z1)

	.dataa(p11_add9_1_anx37973z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(p21_sub11_3i1_anx46946z29));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52934.lut_mask = 16'h00AA;
defparam p21_sub11_3i1_aix46946z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N14
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52931(
// Equation(s):
// p21_sub11_3i1_anx39967z1 = p12_add9_2_anx40964z1 & (p11_add9_1_anx39967z1 & !p21_sub11_3i1_anx46946z24 # !p11_add9_1_anx39967z1 & (p21_sub11_3i1_anx46946z24 # GND)) # !p12_add9_2_anx40964z1 & (p11_add9_1_anx39967z1 & p21_sub11_3i1_anx46946z24 & VCC # 
// !p11_add9_1_anx39967z1 & !p21_sub11_3i1_anx46946z24)
// p21_sub11_3i1_anx46946z21 = CARRY(p12_add9_2_anx40964z1 & (!p21_sub11_3i1_anx46946z24 # !p11_add9_1_anx39967z1) # !p12_add9_2_anx40964z1 & !p11_add9_1_anx39967z1 & !p21_sub11_3i1_anx46946z24)

	.dataa(p12_add9_2_anx40964z1),
	.datab(p11_add9_1_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z24),
	.combout(p21_sub11_3i1_anx39967z1),
	.cout(p21_sub11_3i1_anx46946z21));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52931.lut_mask = 16'h692B;
defparam p21_sub11_3i1_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N24
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52926(
// Equation(s):
// p21_sub11_3i1_anx44952z1 = (p11_add9_1_anx44952z1 $ p12_add9_2_anx45949z1 $ p21_sub11_3i1_anx46946z9) # GND
// p21_sub11_3i1_anx46946z6 = CARRY(p11_add9_1_anx44952z1 & (!p21_sub11_3i1_anx46946z9 # !p12_add9_2_anx45949z1) # !p11_add9_1_anx44952z1 & !p12_add9_2_anx45949z1 & !p21_sub11_3i1_anx46946z9)

	.dataa(p11_add9_1_anx44952z1),
	.datab(p12_add9_2_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z9),
	.combout(p21_sub11_3i1_anx44952z1),
	.cout(p21_sub11_3i1_anx46946z6));
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52926.lut_mask = 16'h962B;
defparam p21_sub11_3i1_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N28
cycloneii_lcell_comb p21_sub11_3i1_aix46946z52923(
// Equation(s):
// p21_sub11_3i1_anx46946z1 = p11_add9_1_anx23445z1 $ p21_sub11_3i1_anx46946z3

	.dataa(p11_add9_1_anx23445z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p21_sub11_3i1_anx46946z3),
	.combout(p21_sub11_3i1_anx46946z1),
	.cout());
// synopsys translate_off
defparam p21_sub11_3i1_aix46946z52923.lut_mask = 16'h5A5A;
defparam p21_sub11_3i1_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N10
cycloneii_lcell_comb ix52975z52630_aix62798z52934(
// Equation(s):
// ix52975z52630_anx37973z1 = p12_add9_2_anx37973z1 & (p21_sub10_3i3_anx38970z1 $ VCC) # !p12_add9_2_anx37973z1 & p21_sub10_3i3_anx38970z1 & VCC
// ix52975z52630_anx62798z30 = CARRY(p12_add9_2_anx37973z1 & p21_sub10_3i3_anx38970z1)

	.dataa(p12_add9_2_anx37973z1),
	.datab(p21_sub10_3i3_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(ix52975z52630_anx37973z1),
	.cout(ix52975z52630_anx62798z30));
// synopsys translate_off
defparam ix52975z52630_aix62798z52934.lut_mask = 16'h6688;
defparam ix52975z52630_aix62798z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N12
cycloneii_lcell_comb ix52975z52630_aix62798z52933(
// Equation(s):
// ix52975z52630_anx38970z1 = p21_sub11_3i1_anx37973z1 & (p21_sub10_3i3_anx39967z1 & ix52975z52630_anx62798z30 & VCC # !p21_sub10_3i3_anx39967z1 & !ix52975z52630_anx62798z30) # !p21_sub11_3i1_anx37973z1 & (p21_sub10_3i3_anx39967z1 & 
// !ix52975z52630_anx62798z30 # !p21_sub10_3i3_anx39967z1 & (ix52975z52630_anx62798z30 # GND))
// ix52975z52630_anx62798z27 = CARRY(p21_sub11_3i1_anx37973z1 & !p21_sub10_3i3_anx39967z1 & !ix52975z52630_anx62798z30 # !p21_sub11_3i1_anx37973z1 & (!ix52975z52630_anx62798z30 # !p21_sub10_3i3_anx39967z1))

	.dataa(p21_sub11_3i1_anx37973z1),
	.datab(p21_sub10_3i3_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z30),
	.combout(ix52975z52630_anx38970z1),
	.cout(ix52975z52630_anx62798z27));
// synopsys translate_off
defparam ix52975z52630_aix62798z52933.lut_mask = 16'h9617;
defparam ix52975z52630_aix62798z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N14
cycloneii_lcell_comb ix52975z52630_aix62798z52932(
// Equation(s):
// ix52975z52630_anx39967z1 = (p21_sub11_3i1_anx38970z1 $ p21_sub10_3i3_anx40964z1 $ !ix52975z52630_anx62798z27) # GND
// ix52975z52630_anx62798z24 = CARRY(p21_sub11_3i1_anx38970z1 & (p21_sub10_3i3_anx40964z1 # !ix52975z52630_anx62798z27) # !p21_sub11_3i1_anx38970z1 & p21_sub10_3i3_anx40964z1 & !ix52975z52630_anx62798z27)

	.dataa(p21_sub11_3i1_anx38970z1),
	.datab(p21_sub10_3i3_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z27),
	.combout(ix52975z52630_anx39967z1),
	.cout(ix52975z52630_anx62798z24));
// synopsys translate_off
defparam ix52975z52630_aix62798z52932.lut_mask = 16'h698E;
defparam ix52975z52630_aix62798z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N18
cycloneii_lcell_comb ix52975z52630_aix62798z52930(
// Equation(s):
// ix52975z52630_anx41961z1 = (p21_sub11_3i1_anx40964z1 $ p21_sub10_3i3_anx42958z1 $ !ix52975z52630_anx62798z21) # GND
// ix52975z52630_anx62798z18 = CARRY(p21_sub11_3i1_anx40964z1 & (p21_sub10_3i3_anx42958z1 # !ix52975z52630_anx62798z21) # !p21_sub11_3i1_anx40964z1 & p21_sub10_3i3_anx42958z1 & !ix52975z52630_anx62798z21)

	.dataa(p21_sub11_3i1_anx40964z1),
	.datab(p21_sub10_3i3_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z21),
	.combout(ix52975z52630_anx41961z1),
	.cout(ix52975z52630_anx62798z18));
// synopsys translate_off
defparam ix52975z52630_aix62798z52930.lut_mask = 16'h698E;
defparam ix52975z52630_aix62798z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N20
cycloneii_lcell_comb ix52975z52630_aix62798z52929(
// Equation(s):
// ix52975z52630_anx42958z1 = p21_sub11_3i1_anx41961z1 & (p21_sub10_3i3_anx43955z1 & ix52975z52630_anx62798z18 & VCC # !p21_sub10_3i3_anx43955z1 & !ix52975z52630_anx62798z18) # !p21_sub11_3i1_anx41961z1 & (p21_sub10_3i3_anx43955z1 & 
// !ix52975z52630_anx62798z18 # !p21_sub10_3i3_anx43955z1 & (ix52975z52630_anx62798z18 # GND))
// ix52975z52630_anx62798z15 = CARRY(p21_sub11_3i1_anx41961z1 & !p21_sub10_3i3_anx43955z1 & !ix52975z52630_anx62798z18 # !p21_sub11_3i1_anx41961z1 & (!ix52975z52630_anx62798z18 # !p21_sub10_3i3_anx43955z1))

	.dataa(p21_sub11_3i1_anx41961z1),
	.datab(p21_sub10_3i3_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z18),
	.combout(ix52975z52630_anx42958z1),
	.cout(ix52975z52630_anx62798z15));
// synopsys translate_off
defparam ix52975z52630_aix62798z52929.lut_mask = 16'h9617;
defparam ix52975z52630_aix62798z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N22
cycloneii_lcell_comb ix52975z52630_aix62798z52928(
// Equation(s):
// ix52975z52630_anx43955z1 = (p21_sub11_3i1_anx42958z1 $ p21_sub10_3i3_anx44952z1 $ !ix52975z52630_anx62798z15) # GND
// ix52975z52630_anx62798z12 = CARRY(p21_sub11_3i1_anx42958z1 & (p21_sub10_3i3_anx44952z1 # !ix52975z52630_anx62798z15) # !p21_sub11_3i1_anx42958z1 & p21_sub10_3i3_anx44952z1 & !ix52975z52630_anx62798z15)

	.dataa(p21_sub11_3i1_anx42958z1),
	.datab(p21_sub10_3i3_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z15),
	.combout(ix52975z52630_anx43955z1),
	.cout(ix52975z52630_anx62798z12));
// synopsys translate_off
defparam ix52975z52630_aix62798z52928.lut_mask = 16'h698E;
defparam ix52975z52630_aix62798z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N26
cycloneii_lcell_comb ix52975z52630_aix62798z52926(
// Equation(s):
// ix52975z52630_anx45949z1 = (p21_sub10_3i3_anx46946z1 $ p21_sub11_3i1_anx44952z1 $ !ix52975z52630_anx62798z9) # GND
// ix52975z52630_anx62798z6 = CARRY(p21_sub10_3i3_anx46946z1 & (p21_sub11_3i1_anx44952z1 # !ix52975z52630_anx62798z9) # !p21_sub10_3i3_anx46946z1 & p21_sub11_3i1_anx44952z1 & !ix52975z52630_anx62798z9)

	.dataa(p21_sub10_3i3_anx46946z1),
	.datab(p21_sub11_3i1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z9),
	.combout(ix52975z52630_anx45949z1),
	.cout(ix52975z52630_anx62798z6));
// synopsys translate_off
defparam ix52975z52630_aix62798z52926.lut_mask = 16'h698E;
defparam ix52975z52630_aix62798z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N28
cycloneii_lcell_comb ix52975z52630_aix62798z52925(
// Equation(s):
// ix52975z52630_anx46946z1 = p21_sub11_3i1_anx45949z1 & (p21_sub10_3i3_anx23445z1 & !ix52975z52630_anx62798z6 # !p21_sub10_3i3_anx23445z1 & ix52975z52630_anx62798z6 & VCC) # !p21_sub11_3i1_anx45949z1 & (p21_sub10_3i3_anx23445z1 & (ix52975z52630_anx62798z6 # 
// GND) # !p21_sub10_3i3_anx23445z1 & !ix52975z52630_anx62798z6)
// ix52975z52630_anx62798z4 = CARRY(p21_sub11_3i1_anx45949z1 & p21_sub10_3i3_anx23445z1 & !ix52975z52630_anx62798z6 # !p21_sub11_3i1_anx45949z1 & (p21_sub10_3i3_anx23445z1 # !ix52975z52630_anx62798z6))

	.dataa(p21_sub11_3i1_anx45949z1),
	.datab(p21_sub10_3i3_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix52975z52630_anx62798z6),
	.combout(ix52975z52630_anx46946z1),
	.cout(ix52975z52630_anx62798z4));
// synopsys translate_off
defparam ix52975z52630_aix62798z52925.lut_mask = 16'h694D;
defparam ix52975z52630_aix62798z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N30
cycloneii_lcell_comb ix52975z52630_aix62798z52923(
// Equation(s):
// ix52975z52630_anx62798z1 = p21_sub10_3i3_anx23445z1 $ ix52975z52630_anx62798z4 $ p21_sub11_3i1_anx46946z1

	.dataa(vcc),
	.datab(p21_sub10_3i3_anx23445z1),
	.datac(vcc),
	.datad(p21_sub11_3i1_anx46946z1),
	.cin(ix52975z52630_anx62798z4),
	.combout(ix52975z52630_anx62798z1),
	.cout());
// synopsys translate_off
defparam ix52975z52630_aix62798z52923.lut_mask = 16'hC33C;
defparam ix52975z52630_aix62798z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X57_Y22_N31
cycloneii_lcell_ff reg_p21_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_11_));

// atom is at LCFF_X57_Y22_N29
cycloneii_lcell_ff reg_p21_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_10_));

// atom is at LCFF_X55_Y22_N25
cycloneii_lcell_ff reg_p22_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_9_));

// atom is at LCFF_X55_Y22_N23
cycloneii_lcell_ff reg_p22_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_8_));

// atom is at LCFF_X57_Y22_N23
cycloneii_lcell_ff reg_p21_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_7_));

// atom is at LCFF_X57_Y22_N21
cycloneii_lcell_ff reg_p21_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_6_));

// atom is at LCFF_X57_Y22_N19
cycloneii_lcell_ff reg_p21_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_5_));

// atom is at LCCOMB_X55_Y22_N4
cycloneii_lcell_comb p22_4__afeeder(
// Equation(s):
// p22_4__afeeder_combout = ix47840z52631_anx40964z1

	.dataa(vcc),
	.datab(vcc),
	.datac(ix47840z52631_anx40964z1),
	.datad(vcc),
	.cin(gnd),
	.combout(p22_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p22_4__afeeder.lut_mask = 16'hF0F0;
defparam p22_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N5
cycloneii_lcell_ff reg_p22_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p22_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_4_));

// atom is at LCFF_X57_Y22_N15
cycloneii_lcell_ff reg_p21_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_3_));

// atom is at LCFF_X57_Y22_N13
cycloneii_lcell_ff reg_p21_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_2_));

// atom is at LCFF_X57_Y22_N11
cycloneii_lcell_ff reg_p21_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_1_));

// atom is at LCFF_X58_Y22_N1
cycloneii_lcell_ff reg_p21_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p21_sub10_3i3_anx37973z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_0_));

// atom is at LCCOMB_X56_Y22_N8
cycloneii_lcell_comb ix45188z30868_aix100z52935(
// Equation(s):
// ix45188z30868_anx100z34 = CARRY(p22_0_ & !p21_0_)

	.dataa(p22_0_),
	.datab(p21_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix45188z30868_anx100z34));
// synopsys translate_off
defparam ix45188z30868_aix100z52935.lut_mask = 16'h0022;
defparam ix45188z30868_aix100z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N10
cycloneii_lcell_comb ix45188z30868_aix100z52934(
// Equation(s):
// ix45188z30868_anx100z31 = CARRY(p22_1_ & p21_1_ & !ix45188z30868_anx100z34 # !p22_1_ & (p21_1_ # !ix45188z30868_anx100z34))

	.dataa(p22_1_),
	.datab(p21_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z34),
	.combout(),
	.cout(ix45188z30868_anx100z31));
// synopsys translate_off
defparam ix45188z30868_aix100z52934.lut_mask = 16'h004D;
defparam ix45188z30868_aix100z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N12
cycloneii_lcell_comb ix45188z30868_aix100z52933(
// Equation(s):
// ix45188z30868_anx100z28 = CARRY(p22_2_ & (!ix45188z30868_anx100z31 # !p21_2_) # !p22_2_ & !p21_2_ & !ix45188z30868_anx100z31)

	.dataa(p22_2_),
	.datab(p21_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z31),
	.combout(),
	.cout(ix45188z30868_anx100z28));
// synopsys translate_off
defparam ix45188z30868_aix100z52933.lut_mask = 16'h002B;
defparam ix45188z30868_aix100z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N14
cycloneii_lcell_comb ix45188z30868_aix100z52932(
// Equation(s):
// ix45188z30868_anx100z25 = CARRY(p22_3_ & p21_3_ & !ix45188z30868_anx100z28 # !p22_3_ & (p21_3_ # !ix45188z30868_anx100z28))

	.dataa(p22_3_),
	.datab(p21_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z28),
	.combout(),
	.cout(ix45188z30868_anx100z25));
// synopsys translate_off
defparam ix45188z30868_aix100z52932.lut_mask = 16'h004D;
defparam ix45188z30868_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N16
cycloneii_lcell_comb ix45188z30868_aix100z52931(
// Equation(s):
// ix45188z30868_anx100z22 = CARRY(p21_4_ & p22_4_ & !ix45188z30868_anx100z25 # !p21_4_ & (p22_4_ # !ix45188z30868_anx100z25))

	.dataa(p21_4_),
	.datab(p22_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z25),
	.combout(),
	.cout(ix45188z30868_anx100z22));
// synopsys translate_off
defparam ix45188z30868_aix100z52931.lut_mask = 16'h004D;
defparam ix45188z30868_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N18
cycloneii_lcell_comb ix45188z30868_aix100z52930(
// Equation(s):
// ix45188z30868_anx100z19 = CARRY(p22_5_ & p21_5_ & !ix45188z30868_anx100z22 # !p22_5_ & (p21_5_ # !ix45188z30868_anx100z22))

	.dataa(p22_5_),
	.datab(p21_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z22),
	.combout(),
	.cout(ix45188z30868_anx100z19));
// synopsys translate_off
defparam ix45188z30868_aix100z52930.lut_mask = 16'h004D;
defparam ix45188z30868_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N20
cycloneii_lcell_comb ix45188z30868_aix100z52929(
// Equation(s):
// ix45188z30868_anx100z16 = CARRY(p22_6_ & (!ix45188z30868_anx100z19 # !p21_6_) # !p22_6_ & !p21_6_ & !ix45188z30868_anx100z19)

	.dataa(p22_6_),
	.datab(p21_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z19),
	.combout(),
	.cout(ix45188z30868_anx100z16));
// synopsys translate_off
defparam ix45188z30868_aix100z52929.lut_mask = 16'h002B;
defparam ix45188z30868_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N22
cycloneii_lcell_comb ix45188z30868_aix100z52928(
// Equation(s):
// ix45188z30868_anx100z13 = CARRY(p22_7_ & p21_7_ & !ix45188z30868_anx100z16 # !p22_7_ & (p21_7_ # !ix45188z30868_anx100z16))

	.dataa(p22_7_),
	.datab(p21_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z16),
	.combout(),
	.cout(ix45188z30868_anx100z13));
// synopsys translate_off
defparam ix45188z30868_aix100z52928.lut_mask = 16'h004D;
defparam ix45188z30868_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N24
cycloneii_lcell_comb ix45188z30868_aix100z52927(
// Equation(s):
// ix45188z30868_anx100z10 = CARRY(p21_8_ & p22_8_ & !ix45188z30868_anx100z13 # !p21_8_ & (p22_8_ # !ix45188z30868_anx100z13))

	.dataa(p21_8_),
	.datab(p22_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z13),
	.combout(),
	.cout(ix45188z30868_anx100z10));
// synopsys translate_off
defparam ix45188z30868_aix100z52927.lut_mask = 16'h004D;
defparam ix45188z30868_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N26
cycloneii_lcell_comb ix45188z30868_aix100z52926(
// Equation(s):
// ix45188z30868_anx100z7 = CARRY(p21_9_ & (!ix45188z30868_anx100z10 # !p22_9_) # !p21_9_ & !p22_9_ & !ix45188z30868_anx100z10)

	.dataa(p21_9_),
	.datab(p22_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z10),
	.combout(),
	.cout(ix45188z30868_anx100z7));
// synopsys translate_off
defparam ix45188z30868_aix100z52926.lut_mask = 16'h002B;
defparam ix45188z30868_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N28
cycloneii_lcell_comb ix45188z30868_aix100z52925(
// Equation(s):
// ix45188z30868_anx100z4 = CARRY(p22_10_ & (!ix45188z30868_anx100z7 # !p21_10_) # !p22_10_ & !p21_10_ & !ix45188z30868_anx100z7)

	.dataa(p22_10_),
	.datab(p21_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix45188z30868_anx100z7),
	.combout(),
	.cout(ix45188z30868_anx100z4));
// synopsys translate_off
defparam ix45188z30868_aix100z52925.lut_mask = 16'h002B;
defparam ix45188z30868_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N30
cycloneii_lcell_comb ix45188z30868_aix100z52923(
// Equation(s):
// ix45188z30868_anx100z1 = p22_11_ & ix45188z30868_anx100z4 & p21_11_ # !p22_11_ & (ix45188z30868_anx100z4 # p21_11_)

	.dataa(vcc),
	.datab(p22_11_),
	.datac(vcc),
	.datad(p21_11_),
	.cin(ix45188z30868_anx100z4),
	.combout(ix45188z30868_anx100z1),
	.cout());
// synopsys translate_off
defparam ix45188z30868_aix100z52923.lut_mask = 16'hF330;
defparam ix45188z30868_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y23_N0
cycloneii_lcell_comb ix45188z30868_anx100z1_a_wirecell(
// Equation(s):
// ix45188z30868_anx100z1_a_wirecell_combout = !ix45188z30868_anx100z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(ix45188z30868_anx100z1),
	.cin(gnd),
	.combout(ix45188z30868_anx100z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam ix45188z30868_anx100z1_a_wirecell.lut_mask = 16'h00FF;
defparam ix45188z30868_anx100z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y23_N1
cycloneii_lcell_ff reg_p35(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix45188z30868_anx100z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p35));

// atom is at LCCOMB_X57_Y23_N18
cycloneii_lcell_comb p45_afeeder(
// Equation(s):
// p45_afeeder_combout = p35

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p35),
	.cin(gnd),
	.combout(p45_afeeder_combout),
	.cout());
// synopsys translate_off
defparam p45_afeeder.lut_mask = 16'hFF00;
defparam p45_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y23_N19
cycloneii_lcell_ff reg_p45(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p45_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p45));

// atom is at LCCOMB_X53_Y23_N0
cycloneii_lcell_comb ix30409z52923(
// Equation(s):
// nx30409z1 = nx28524z1 $ p45

	.dataa(vcc),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(p45),
	.cin(gnd),
	.combout(nx30409z1),
	.cout());
// synopsys translate_off
defparam ix30409z52923.lut_mask = 16'h33CC;
defparam ix30409z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N0
cycloneii_lcell_comb p31_11__afeeder(
// Equation(s):
// p31_11__afeeder_combout = p21_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_11_),
	.cin(gnd),
	.combout(p31_11__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_11__afeeder.lut_mask = 16'hFF00;
defparam p31_11__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N1
cycloneii_lcell_ff reg_p31_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_11__afeeder_combout),
	.sdata(p22_11_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_11_));

// atom is at PIN_G18
cycloneii_io i2_ibuf_7_(
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
	.combout(i2_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[7]));
// synopsys translate_off
defparam i2_ibuf_7_.input_async_reset = "none";
defparam i2_ibuf_7_.input_power_up = "low";
defparam i2_ibuf_7_.input_register_mode = "none";
defparam i2_ibuf_7_.input_sync_reset = "none";
defparam i2_ibuf_7_.oe_async_reset = "none";
defparam i2_ibuf_7_.oe_power_up = "low";
defparam i2_ibuf_7_.oe_register_mode = "none";
defparam i2_ibuf_7_.oe_sync_reset = "none";
defparam i2_ibuf_7_.operation_mode = "input";
defparam i2_ibuf_7_.output_async_reset = "none";
defparam i2_ibuf_7_.output_power_up = "low";
defparam i2_ibuf_7_.output_register_mode = "none";
defparam i2_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H23
cycloneii_io i2_ibuf_6_(
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
	.combout(i2_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[6]));
// synopsys translate_off
defparam i2_ibuf_6_.input_async_reset = "none";
defparam i2_ibuf_6_.input_power_up = "low";
defparam i2_ibuf_6_.input_register_mode = "none";
defparam i2_ibuf_6_.input_sync_reset = "none";
defparam i2_ibuf_6_.oe_async_reset = "none";
defparam i2_ibuf_6_.oe_power_up = "low";
defparam i2_ibuf_6_.oe_register_mode = "none";
defparam i2_ibuf_6_.oe_sync_reset = "none";
defparam i2_ibuf_6_.operation_mode = "input";
defparam i2_ibuf_6_.output_async_reset = "none";
defparam i2_ibuf_6_.output_power_up = "low";
defparam i2_ibuf_6_.output_register_mode = "none";
defparam i2_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N18
cycloneii_io i2_ibuf_5_(
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
	.combout(i2_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[5]));
// synopsys translate_off
defparam i2_ibuf_5_.input_async_reset = "none";
defparam i2_ibuf_5_.input_power_up = "low";
defparam i2_ibuf_5_.input_register_mode = "none";
defparam i2_ibuf_5_.input_sync_reset = "none";
defparam i2_ibuf_5_.oe_async_reset = "none";
defparam i2_ibuf_5_.oe_power_up = "low";
defparam i2_ibuf_5_.oe_register_mode = "none";
defparam i2_ibuf_5_.oe_sync_reset = "none";
defparam i2_ibuf_5_.operation_mode = "input";
defparam i2_ibuf_5_.output_async_reset = "none";
defparam i2_ibuf_5_.output_power_up = "low";
defparam i2_ibuf_5_.output_register_mode = "none";
defparam i2_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F25
cycloneii_io i1_ibuf_4_(
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
	.combout(i1_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[4]));
// synopsys translate_off
defparam i1_ibuf_4_.input_async_reset = "none";
defparam i1_ibuf_4_.input_power_up = "low";
defparam i1_ibuf_4_.input_register_mode = "none";
defparam i1_ibuf_4_.input_sync_reset = "none";
defparam i1_ibuf_4_.oe_async_reset = "none";
defparam i1_ibuf_4_.oe_power_up = "low";
defparam i1_ibuf_4_.oe_register_mode = "none";
defparam i1_ibuf_4_.oe_sync_reset = "none";
defparam i1_ibuf_4_.operation_mode = "input";
defparam i1_ibuf_4_.output_async_reset = "none";
defparam i1_ibuf_4_.output_power_up = "low";
defparam i1_ibuf_4_.output_register_mode = "none";
defparam i1_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B20
cycloneii_io i1_ibuf_3_(
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
	.combout(i1_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[3]));
// synopsys translate_off
defparam i1_ibuf_3_.input_async_reset = "none";
defparam i1_ibuf_3_.input_power_up = "low";
defparam i1_ibuf_3_.input_register_mode = "none";
defparam i1_ibuf_3_.input_sync_reset = "none";
defparam i1_ibuf_3_.oe_async_reset = "none";
defparam i1_ibuf_3_.oe_power_up = "low";
defparam i1_ibuf_3_.oe_register_mode = "none";
defparam i1_ibuf_3_.oe_sync_reset = "none";
defparam i1_ibuf_3_.operation_mode = "input";
defparam i1_ibuf_3_.output_async_reset = "none";
defparam i1_ibuf_3_.output_power_up = "low";
defparam i1_ibuf_3_.output_register_mode = "none";
defparam i1_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E20
cycloneii_io i1_ibuf_2_(
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
	.combout(i1_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[2]));
// synopsys translate_off
defparam i1_ibuf_2_.input_async_reset = "none";
defparam i1_ibuf_2_.input_power_up = "low";
defparam i1_ibuf_2_.input_register_mode = "none";
defparam i1_ibuf_2_.input_sync_reset = "none";
defparam i1_ibuf_2_.oe_async_reset = "none";
defparam i1_ibuf_2_.oe_power_up = "low";
defparam i1_ibuf_2_.oe_register_mode = "none";
defparam i1_ibuf_2_.oe_sync_reset = "none";
defparam i1_ibuf_2_.operation_mode = "input";
defparam i1_ibuf_2_.output_async_reset = "none";
defparam i1_ibuf_2_.output_power_up = "low";
defparam i1_ibuf_2_.output_register_mode = "none";
defparam i1_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G25
cycloneii_io i1_ibuf_1_(
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
	.combout(i1_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i1[1]));
// synopsys translate_off
defparam i1_ibuf_1_.input_async_reset = "none";
defparam i1_ibuf_1_.input_power_up = "low";
defparam i1_ibuf_1_.input_register_mode = "none";
defparam i1_ibuf_1_.input_sync_reset = "none";
defparam i1_ibuf_1_.oe_async_reset = "none";
defparam i1_ibuf_1_.oe_power_up = "low";
defparam i1_ibuf_1_.oe_register_mode = "none";
defparam i1_ibuf_1_.oe_sync_reset = "none";
defparam i1_ibuf_1_.operation_mode = "input";
defparam i1_ibuf_1_.output_async_reset = "none";
defparam i1_ibuf_1_.output_power_up = "low";
defparam i1_ibuf_1_.output_register_mode = "none";
defparam i1_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P18
cycloneii_io i2_ibuf_0_(
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
	.combout(i2_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2[0]));
// synopsys translate_off
defparam i2_ibuf_0_.input_async_reset = "none";
defparam i2_ibuf_0_.input_power_up = "low";
defparam i2_ibuf_0_.input_register_mode = "none";
defparam i2_ibuf_0_.input_sync_reset = "none";
defparam i2_ibuf_0_.oe_async_reset = "none";
defparam i2_ibuf_0_.oe_power_up = "low";
defparam i2_ibuf_0_.oe_register_mode = "none";
defparam i2_ibuf_0_.oe_sync_reset = "none";
defparam i2_ibuf_0_.operation_mode = "input";
defparam i2_ibuf_0_.output_async_reset = "none";
defparam i2_ibuf_0_.output_power_up = "low";
defparam i2_ibuf_0_.output_register_mode = "none";
defparam i2_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N2
cycloneii_lcell_comb p13_add8_0i3_aix44952z52931(
// Equation(s):
// p13_add8_0i3_anx37973z1 = i1_acombout[0] & (i2_acombout[0] $ VCC) # !i1_acombout[0] & i2_acombout[0] & VCC
// p13_add8_0i3_anx44952z22 = CARRY(i1_acombout[0] & i2_acombout[0])

	.dataa(i1_acombout[0]),
	.datab(i2_acombout[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p13_add8_0i3_anx37973z1),
	.cout(p13_add8_0i3_anx44952z22));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52931.lut_mask = 16'h6688;
defparam p13_add8_0i3_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N6
cycloneii_lcell_comb p13_add8_0i3_aix44952z52929(
// Equation(s):
// p13_add8_0i3_anx39967z1 = (i2_acombout[2] $ i1_acombout[2] $ !p13_add8_0i3_anx44952z19) # GND
// p13_add8_0i3_anx44952z16 = CARRY(i2_acombout[2] & (i1_acombout[2] # !p13_add8_0i3_anx44952z19) # !i2_acombout[2] & i1_acombout[2] & !p13_add8_0i3_anx44952z19)

	.dataa(i2_acombout[2]),
	.datab(i1_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z19),
	.combout(p13_add8_0i3_anx39967z1),
	.cout(p13_add8_0i3_anx44952z16));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52929.lut_mask = 16'h698E;
defparam p13_add8_0i3_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N8
cycloneii_lcell_comb p13_add8_0i3_aix44952z52928(
// Equation(s):
// p13_add8_0i3_anx40964z1 = i2_acombout[3] & (i1_acombout[3] & p13_add8_0i3_anx44952z16 & VCC # !i1_acombout[3] & !p13_add8_0i3_anx44952z16) # !i2_acombout[3] & (i1_acombout[3] & !p13_add8_0i3_anx44952z16 # !i1_acombout[3] & (p13_add8_0i3_anx44952z16 # 
// GND))
// p13_add8_0i3_anx44952z13 = CARRY(i2_acombout[3] & !i1_acombout[3] & !p13_add8_0i3_anx44952z16 # !i2_acombout[3] & (!p13_add8_0i3_anx44952z16 # !i1_acombout[3]))

	.dataa(i2_acombout[3]),
	.datab(i1_acombout[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z16),
	.combout(p13_add8_0i3_anx40964z1),
	.cout(p13_add8_0i3_anx44952z13));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52928.lut_mask = 16'h9617;
defparam p13_add8_0i3_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N12
cycloneii_lcell_comb p13_add8_0i3_aix44952z52926(
// Equation(s):
// p13_add8_0i3_anx42958z1 = i1_acombout[5] & (i2_acombout[5] & p13_add8_0i3_anx44952z10 & VCC # !i2_acombout[5] & !p13_add8_0i3_anx44952z10) # !i1_acombout[5] & (i2_acombout[5] & !p13_add8_0i3_anx44952z10 # !i2_acombout[5] & (p13_add8_0i3_anx44952z10 # 
// GND))
// p13_add8_0i3_anx44952z7 = CARRY(i1_acombout[5] & !i2_acombout[5] & !p13_add8_0i3_anx44952z10 # !i1_acombout[5] & (!p13_add8_0i3_anx44952z10 # !i2_acombout[5]))

	.dataa(i1_acombout[5]),
	.datab(i2_acombout[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z10),
	.combout(p13_add8_0i3_anx42958z1),
	.cout(p13_add8_0i3_anx44952z7));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52926.lut_mask = 16'h9617;
defparam p13_add8_0i3_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N14
cycloneii_lcell_comb p13_add8_0i3_aix44952z52925(
// Equation(s):
// p13_add8_0i3_anx43955z1 = (i1_acombout[6] $ i2_acombout[6] $ !p13_add8_0i3_anx44952z7) # GND
// p13_add8_0i3_anx44952z4 = CARRY(i1_acombout[6] & (i2_acombout[6] # !p13_add8_0i3_anx44952z7) # !i1_acombout[6] & i2_acombout[6] & !p13_add8_0i3_anx44952z7)

	.dataa(i1_acombout[6]),
	.datab(i2_acombout[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx44952z7),
	.combout(p13_add8_0i3_anx43955z1),
	.cout(p13_add8_0i3_anx44952z4));
// synopsys translate_off
defparam p13_add8_0i3_aix44952z52925.lut_mask = 16'h698E;
defparam p13_add8_0i3_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y27_N18
cycloneii_lcell_comb p13_add8_0i3_aix23445z52923(
// Equation(s):
// p13_add8_0i3_anx23445z1 = !p13_add8_0i3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add8_0i3_anx23445z2),
	.combout(p13_add8_0i3_anx23445z1),
	.cout());
// synopsys translate_off
defparam p13_add8_0i3_aix23445z52923.lut_mask = 16'h0F0F;
defparam p13_add8_0i3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N4
cycloneii_lcell_comb p13_add9_3_aix45949z52932(
// Equation(s):
// p13_add9_3_anx37973z1 = p13_add8_0i3_anx38970z1 & (p13_add8_0i3_anx37973z1 $ VCC) # !p13_add8_0i3_anx38970z1 & p13_add8_0i3_anx37973z1 & VCC
// p13_add9_3_anx45949z17 = CARRY(p13_add8_0i3_anx38970z1 & p13_add8_0i3_anx37973z1)

	.dataa(p13_add8_0i3_anx38970z1),
	.datab(p13_add8_0i3_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p13_add9_3_anx37973z1),
	.cout(p13_add9_3_anx45949z17));
// synopsys translate_off
defparam p13_add9_3_aix45949z52932.lut_mask = 16'h6688;
defparam p13_add9_3_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N8
cycloneii_lcell_comb p13_add9_3_aix45949z52930(
// Equation(s):
// p13_add9_3_anx39967z1 = (p13_add8_0i3_anx39967z1 $ p13_add8_0i3_anx40964z1 $ !p13_add9_3_anx45949z15) # GND
// p13_add9_3_anx45949z13 = CARRY(p13_add8_0i3_anx39967z1 & (p13_add8_0i3_anx40964z1 # !p13_add9_3_anx45949z15) # !p13_add8_0i3_anx39967z1 & p13_add8_0i3_anx40964z1 & !p13_add9_3_anx45949z15)

	.dataa(p13_add8_0i3_anx39967z1),
	.datab(p13_add8_0i3_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z15),
	.combout(p13_add9_3_anx39967z1),
	.cout(p13_add9_3_anx45949z13));
// synopsys translate_off
defparam p13_add9_3_aix45949z52930.lut_mask = 16'h698E;
defparam p13_add9_3_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N16
cycloneii_lcell_comb p13_add9_3_aix45949z52926(
// Equation(s):
// p13_add9_3_anx43955z1 = (p13_add8_0i3_anx44952z1 $ p13_add8_0i3_anx43955z1 $ !p13_add9_3_anx45949z7) # GND
// p13_add9_3_anx45949z5 = CARRY(p13_add8_0i3_anx44952z1 & (p13_add8_0i3_anx43955z1 # !p13_add9_3_anx45949z7) # !p13_add8_0i3_anx44952z1 & p13_add8_0i3_anx43955z1 & !p13_add9_3_anx45949z7)

	.dataa(p13_add8_0i3_anx44952z1),
	.datab(p13_add8_0i3_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z7),
	.combout(p13_add9_3_anx43955z1),
	.cout(p13_add9_3_anx45949z5));
// synopsys translate_off
defparam p13_add9_3_aix45949z52926.lut_mask = 16'h698E;
defparam p13_add9_3_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N18
cycloneii_lcell_comb p13_add9_3_aix45949z52925(
// Equation(s):
// p13_add9_3_anx44952z1 = p13_add8_0i3_anx44952z1 & (p13_add8_0i3_anx23445z1 & p13_add9_3_anx45949z5 & VCC # !p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z5) # !p13_add8_0i3_anx44952z1 & (p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z5 # 
// !p13_add8_0i3_anx23445z1 & (p13_add9_3_anx45949z5 # GND))
// p13_add9_3_anx45949z3 = CARRY(p13_add8_0i3_anx44952z1 & !p13_add8_0i3_anx23445z1 & !p13_add9_3_anx45949z5 # !p13_add8_0i3_anx44952z1 & (!p13_add9_3_anx45949z5 # !p13_add8_0i3_anx23445z1))

	.dataa(p13_add8_0i3_anx44952z1),
	.datab(p13_add8_0i3_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx45949z5),
	.combout(p13_add9_3_anx44952z1),
	.cout(p13_add9_3_anx45949z3));
// synopsys translate_off
defparam p13_add9_3_aix45949z52925.lut_mask = 16'h9617;
defparam p13_add9_3_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y27_N22
cycloneii_lcell_comb p13_add9_3_aix23445z52923(
// Equation(s):
// p13_add9_3_anx23445z1 = p13_add9_3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(p13_add9_3_anx23445z2),
	.combout(p13_add9_3_anx23445z1),
	.cout());
// synopsys translate_off
defparam p13_add9_3_aix23445z52923.lut_mask = 16'hF0F0;
defparam p13_add9_3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y27_N23
cycloneii_lcell_ff reg_p23_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_10_));

// atom is at LCCOMB_X56_Y27_N24
cycloneii_lcell_comb p32_10__afeeder(
// Equation(s):
// p32_10__afeeder_combout = p23_10_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p23_10_),
	.cin(gnd),
	.combout(p32_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_10__afeeder.lut_mask = 16'hFF00;
defparam p32_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y27_N25
cycloneii_lcell_ff reg_p32_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_10__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_10_));

// atom is at LCFF_X57_Y22_N27
cycloneii_lcell_ff reg_p21_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix52975z52630_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p21_9_));

// atom is at LCCOMB_X57_Y22_N8
cycloneii_lcell_comb p31_9__afeeder(
// Equation(s):
// p31_9__afeeder_combout = p21_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_9_),
	.cin(gnd),
	.combout(p31_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_9__afeeder.lut_mask = 16'hFF00;
defparam p31_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y22_N9
cycloneii_lcell_ff reg_p31_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_9__afeeder_combout),
	.sdata(p22_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_9_));

// atom is at LCFF_X56_Y27_N19
cycloneii_lcell_ff reg_p23_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_8_));

// atom is at LCCOMB_X55_Y27_N8
cycloneii_lcell_comb p32_8__afeeder(
// Equation(s):
// p32_8__afeeder_combout = p23_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p23_8_),
	.cin(gnd),
	.combout(p32_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_8__afeeder.lut_mask = 16'hFF00;
defparam p32_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y27_N9
cycloneii_lcell_ff reg_p32_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_8__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_8_));

// atom is at LCFF_X56_Y27_N17
cycloneii_lcell_ff reg_p23_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_7_));

// atom is at LCFF_X56_Y27_N1
cycloneii_lcell_ff reg_p32_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p23_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_7_));

// atom is at LCCOMB_X56_Y22_N6
cycloneii_lcell_comb p31_6__afeeder(
// Equation(s):
// p31_6__afeeder_combout = p21_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_6_),
	.cin(gnd),
	.combout(p31_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_6__afeeder.lut_mask = 16'hFF00;
defparam p31_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N19
cycloneii_lcell_ff reg_p22_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_6_));

// atom is at LCFF_X56_Y22_N7
cycloneii_lcell_ff reg_p31_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_6__afeeder_combout),
	.sdata(p22_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_6_));

// atom is at LCCOMB_X57_Y22_N4
cycloneii_lcell_comb p31_5__afeeder(
// Equation(s):
// p31_5__afeeder_combout = p21_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_5_),
	.cin(gnd),
	.combout(p31_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_5__afeeder.lut_mask = 16'hFF00;
defparam p31_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N17
cycloneii_lcell_ff reg_p22_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix47840z52631_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_5_));

// atom is at LCFF_X57_Y22_N5
cycloneii_lcell_ff reg_p31_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_5__afeeder_combout),
	.sdata(p22_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_5_));

// atom is at LCCOMB_X57_Y22_N6
cycloneii_lcell_comb p31_4__afeeder(
// Equation(s):
// p31_4__afeeder_combout = p21_4_

	.dataa(p21_4_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p31_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_4__afeeder.lut_mask = 16'hAAAA;
defparam p31_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y22_N7
cycloneii_lcell_ff reg_p31_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_4__afeeder_combout),
	.sdata(p22_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_4_));

// atom is at LCFF_X56_Y27_N9
cycloneii_lcell_ff reg_p23_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_3_));

// atom is at LCFF_X56_Y27_N31
cycloneii_lcell_ff reg_p32_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p23_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_3_));

// atom is at LCCOMB_X57_Y22_N0
cycloneii_lcell_comb p31_2__afeeder(
// Equation(s):
// p31_2__afeeder_combout = p21_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p21_2_),
	.cin(gnd),
	.combout(p31_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_2__afeeder.lut_mask = 16'hFF00;
defparam p31_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N30
cycloneii_lcell_comb p22_2__afeeder(
// Equation(s):
// p22_2__afeeder_combout = ix47840z52631_anx38970z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(ix47840z52631_anx38970z1),
	.cin(gnd),
	.combout(p22_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p22_2__afeeder.lut_mask = 16'hFF00;
defparam p22_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N31
cycloneii_lcell_ff reg_p22_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p22_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_2_));

// atom is at LCFF_X57_Y22_N1
cycloneii_lcell_ff reg_p31_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_2__afeeder_combout),
	.sdata(p22_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_2_));

// atom is at LCFF_X56_Y27_N5
cycloneii_lcell_ff reg_p23_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p13_add9_3_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p23_1_));

// atom is at LCCOMB_X56_Y23_N0
cycloneii_lcell_comb p32_1__afeeder(
// Equation(s):
// p32_1__afeeder_combout = p23_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(p23_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(p32_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p32_1__afeeder.lut_mask = 16'hF0F0;
defparam p32_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y23_N1
cycloneii_lcell_ff reg_p32_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p32_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p32_1_));

// atom is at LCCOMB_X56_Y23_N4
cycloneii_lcell_comb p31_0__afeeder(
// Equation(s):
// p31_0__afeeder_combout = p21_0_

	.dataa(vcc),
	.datab(p21_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p31_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam p31_0__afeeder.lut_mask = 16'hCCCC;
defparam p31_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y22_N1
cycloneii_lcell_ff reg_p22_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p22_sub10_3i4_anx37973z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p22_0_));

// atom is at LCFF_X56_Y23_N5
cycloneii_lcell_ff reg_p31_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p31_0__afeeder_combout),
	.sdata(p22_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix45188z30868_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p31_0_));

// atom is at LCCOMB_X56_Y23_N6
cycloneii_lcell_comb p4s_sub12_0_aix63795z52935(
// Equation(s):
// p4s_sub12_0_anx37973z1 = p32_0_ & (p31_0_ $ VCC) # !p32_0_ & (p31_0_ # GND)
// p4s_sub12_0_anx63795z33 = CARRY(p31_0_ # !p32_0_)

	.dataa(p32_0_),
	.datab(p31_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(p4s_sub12_0_anx37973z1),
	.cout(p4s_sub12_0_anx63795z33));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52935.lut_mask = 16'h66DD;
defparam p4s_sub12_0_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N8
cycloneii_lcell_comb p4s_sub12_0_aix63795z52934(
// Equation(s):
// p4s_sub12_0_anx38970z1 = p31_1_ & (p32_1_ & !p4s_sub12_0_anx63795z33 # !p32_1_ & p4s_sub12_0_anx63795z33 & VCC) # !p31_1_ & (p32_1_ & (p4s_sub12_0_anx63795z33 # GND) # !p32_1_ & !p4s_sub12_0_anx63795z33)
// p4s_sub12_0_anx63795z30 = CARRY(p31_1_ & p32_1_ & !p4s_sub12_0_anx63795z33 # !p31_1_ & (p32_1_ # !p4s_sub12_0_anx63795z33))

	.dataa(p31_1_),
	.datab(p32_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z33),
	.combout(p4s_sub12_0_anx38970z1),
	.cout(p4s_sub12_0_anx63795z30));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52934.lut_mask = 16'h694D;
defparam p4s_sub12_0_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N10
cycloneii_lcell_comb p4s_sub12_0_aix63795z52933(
// Equation(s):
// p4s_sub12_0_anx39967z1 = (p32_2_ $ p31_2_ $ p4s_sub12_0_anx63795z30) # GND
// p4s_sub12_0_anx63795z27 = CARRY(p32_2_ & p31_2_ & !p4s_sub12_0_anx63795z30 # !p32_2_ & (p31_2_ # !p4s_sub12_0_anx63795z30))

	.dataa(p32_2_),
	.datab(p31_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z30),
	.combout(p4s_sub12_0_anx39967z1),
	.cout(p4s_sub12_0_anx63795z27));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52933.lut_mask = 16'h964D;
defparam p4s_sub12_0_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N12
cycloneii_lcell_comb p4s_sub12_0_aix63795z52932(
// Equation(s):
// p4s_sub12_0_anx40964z1 = p31_3_ & (p32_3_ & !p4s_sub12_0_anx63795z27 # !p32_3_ & p4s_sub12_0_anx63795z27 & VCC) # !p31_3_ & (p32_3_ & (p4s_sub12_0_anx63795z27 # GND) # !p32_3_ & !p4s_sub12_0_anx63795z27)
// p4s_sub12_0_anx63795z24 = CARRY(p31_3_ & p32_3_ & !p4s_sub12_0_anx63795z27 # !p31_3_ & (p32_3_ # !p4s_sub12_0_anx63795z27))

	.dataa(p31_3_),
	.datab(p32_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z27),
	.combout(p4s_sub12_0_anx40964z1),
	.cout(p4s_sub12_0_anx63795z24));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52932.lut_mask = 16'h694D;
defparam p4s_sub12_0_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N14
cycloneii_lcell_comb p4s_sub12_0_aix63795z52931(
// Equation(s):
// p4s_sub12_0_anx41961z1 = (p32_4_ $ p31_4_ $ p4s_sub12_0_anx63795z24) # GND
// p4s_sub12_0_anx63795z21 = CARRY(p32_4_ & p31_4_ & !p4s_sub12_0_anx63795z24 # !p32_4_ & (p31_4_ # !p4s_sub12_0_anx63795z24))

	.dataa(p32_4_),
	.datab(p31_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z24),
	.combout(p4s_sub12_0_anx41961z1),
	.cout(p4s_sub12_0_anx63795z21));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52931.lut_mask = 16'h964D;
defparam p4s_sub12_0_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N16
cycloneii_lcell_comb p4s_sub12_0_aix63795z52930(
// Equation(s):
// p4s_sub12_0_anx42958z1 = p32_5_ & (p31_5_ & !p4s_sub12_0_anx63795z21 # !p31_5_ & (p4s_sub12_0_anx63795z21 # GND)) # !p32_5_ & (p31_5_ & p4s_sub12_0_anx63795z21 & VCC # !p31_5_ & !p4s_sub12_0_anx63795z21)
// p4s_sub12_0_anx63795z18 = CARRY(p32_5_ & (!p4s_sub12_0_anx63795z21 # !p31_5_) # !p32_5_ & !p31_5_ & !p4s_sub12_0_anx63795z21)

	.dataa(p32_5_),
	.datab(p31_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z21),
	.combout(p4s_sub12_0_anx42958z1),
	.cout(p4s_sub12_0_anx63795z18));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52930.lut_mask = 16'h692B;
defparam p4s_sub12_0_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N18
cycloneii_lcell_comb p4s_sub12_0_aix63795z52929(
// Equation(s):
// p4s_sub12_0_anx43955z1 = (p32_6_ $ p31_6_ $ p4s_sub12_0_anx63795z18) # GND
// p4s_sub12_0_anx63795z15 = CARRY(p32_6_ & p31_6_ & !p4s_sub12_0_anx63795z18 # !p32_6_ & (p31_6_ # !p4s_sub12_0_anx63795z18))

	.dataa(p32_6_),
	.datab(p31_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z18),
	.combout(p4s_sub12_0_anx43955z1),
	.cout(p4s_sub12_0_anx63795z15));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52929.lut_mask = 16'h964D;
defparam p4s_sub12_0_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N20
cycloneii_lcell_comb p4s_sub12_0_aix63795z52928(
// Equation(s):
// p4s_sub12_0_anx44952z1 = p31_7_ & (p32_7_ & !p4s_sub12_0_anx63795z15 # !p32_7_ & p4s_sub12_0_anx63795z15 & VCC) # !p31_7_ & (p32_7_ & (p4s_sub12_0_anx63795z15 # GND) # !p32_7_ & !p4s_sub12_0_anx63795z15)
// p4s_sub12_0_anx63795z12 = CARRY(p31_7_ & p32_7_ & !p4s_sub12_0_anx63795z15 # !p31_7_ & (p32_7_ # !p4s_sub12_0_anx63795z15))

	.dataa(p31_7_),
	.datab(p32_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z15),
	.combout(p4s_sub12_0_anx44952z1),
	.cout(p4s_sub12_0_anx63795z12));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52928.lut_mask = 16'h694D;
defparam p4s_sub12_0_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N22
cycloneii_lcell_comb p4s_sub12_0_aix63795z52927(
// Equation(s):
// p4s_sub12_0_anx45949z1 = (p31_8_ $ p32_8_ $ p4s_sub12_0_anx63795z12) # GND
// p4s_sub12_0_anx63795z9 = CARRY(p31_8_ & (!p4s_sub12_0_anx63795z12 # !p32_8_) # !p31_8_ & !p32_8_ & !p4s_sub12_0_anx63795z12)

	.dataa(p31_8_),
	.datab(p32_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z12),
	.combout(p4s_sub12_0_anx45949z1),
	.cout(p4s_sub12_0_anx63795z9));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52927.lut_mask = 16'h962B;
defparam p4s_sub12_0_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N24
cycloneii_lcell_comb p4s_sub12_0_aix63795z52926(
// Equation(s):
// p4s_sub12_0_anx46946z1 = p32_9_ & (p31_9_ & !p4s_sub12_0_anx63795z9 # !p31_9_ & (p4s_sub12_0_anx63795z9 # GND)) # !p32_9_ & (p31_9_ & p4s_sub12_0_anx63795z9 & VCC # !p31_9_ & !p4s_sub12_0_anx63795z9)
// p4s_sub12_0_anx63795z6 = CARRY(p32_9_ & (!p4s_sub12_0_anx63795z9 # !p31_9_) # !p32_9_ & !p31_9_ & !p4s_sub12_0_anx63795z9)

	.dataa(p32_9_),
	.datab(p31_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z9),
	.combout(p4s_sub12_0_anx46946z1),
	.cout(p4s_sub12_0_anx63795z6));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52926.lut_mask = 16'h692B;
defparam p4s_sub12_0_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N26
cycloneii_lcell_comb p4s_sub12_0_aix63795z52925(
// Equation(s):
// p4s_sub12_0_anx62798z1 = (p31_10_ $ p32_10_ $ p4s_sub12_0_anx63795z6) # GND
// p4s_sub12_0_anx63795z3 = CARRY(p31_10_ & (!p4s_sub12_0_anx63795z6 # !p32_10_) # !p31_10_ & !p32_10_ & !p4s_sub12_0_anx63795z6)

	.dataa(p31_10_),
	.datab(p32_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(p4s_sub12_0_anx63795z6),
	.combout(p4s_sub12_0_anx62798z1),
	.cout(p4s_sub12_0_anx63795z3));
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52925.lut_mask = 16'h962B;
defparam p4s_sub12_0_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y23_N28
cycloneii_lcell_comb p4s_sub12_0_aix63795z52923(
// Equation(s):
// p4s_sub12_0_anx63795z1 = p4s_sub12_0_anx63795z3 $ !p31_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(p31_11_),
	.cin(p4s_sub12_0_anx63795z3),
	.combout(p4s_sub12_0_anx63795z1),
	.cout());
// synopsys translate_off
defparam p4s_sub12_0_aix63795z52923.lut_mask = 16'hF00F;
defparam p4s_sub12_0_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y23_N29
cycloneii_lcell_ff reg_p43_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx63795z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_11_));

// atom is at LCFF_X56_Y23_N27
cycloneii_lcell_ff reg_p43_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_10_));

// atom is at LCCOMB_X54_Y23_N18
cycloneii_lcell_comb ix30361z52923(
// Equation(s):
// nx30361z1 = i_reset_acombout # state_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(state_3_),
	.cin(gnd),
	.combout(nx30361z1),
	.cout());
// synopsys translate_off
defparam ix30361z52923.lut_mask = 16'hFFF0;
defparam ix30361z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y23_N11
cycloneii_lcell_ff reg_p43_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_2_));

// atom is at LCFF_X55_Y23_N9
cycloneii_lcell_ff reg_prev_max_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_2_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_2_));

// atom is at LCFF_X56_Y23_N13
cycloneii_lcell_ff reg_p43_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_3_));

// atom is at LCFF_X55_Y23_N11
cycloneii_lcell_ff reg_prev_max_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_3_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_3_));

// atom is at LCCOMB_X54_Y23_N14
cycloneii_lcell_comb ix31358z52930(
// Equation(s):
// nx31358z8 = p43_2_ & (prev_max_3_ $ p43_3_ # !prev_max_2_) # !p43_2_ & (prev_max_2_ # prev_max_3_ $ p43_3_)

	.dataa(p43_2_),
	.datab(prev_max_2_),
	.datac(prev_max_3_),
	.datad(p43_3_),
	.cin(gnd),
	.combout(nx31358z8),
	.cout());
// synopsys translate_off
defparam ix31358z52930.lut_mask = 16'h6FF6;
defparam ix31358z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y23_N21
cycloneii_lcell_ff reg_max_fwd(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p45),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(max_fwd));

// atom is at LCCOMB_X57_Y23_N20
cycloneii_lcell_comb ix31358z52932(
// Equation(s):
// nx31358z10 = !max_fwd & p45

	.dataa(vcc),
	.datab(vcc),
	.datac(max_fwd),
	.datad(p45),
	.cin(gnd),
	.combout(nx31358z10),
	.cout());
// synopsys translate_off
defparam ix31358z52932.lut_mask = 16'h0F00;
defparam ix31358z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y23_N21
cycloneii_lcell_ff reg_p43_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_7_));

// atom is at LCFF_X55_Y23_N17
cycloneii_lcell_ff reg_prev_max_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_7_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_7_));

// atom is at LCFF_X56_Y23_N19
cycloneii_lcell_ff reg_p43_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_6_));

// atom is at LCFF_X55_Y23_N29
cycloneii_lcell_ff reg_prev_max_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_6_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_6_));

// atom is at LCCOMB_X55_Y23_N28
cycloneii_lcell_comb ix31358z52928(
// Equation(s):
// nx31358z6 = p43_6_ & (prev_max_7_ $ p43_7_ # !prev_max_6_) # !p43_6_ & (prev_max_6_ # prev_max_7_ $ p43_7_)

	.dataa(p43_6_),
	.datab(prev_max_7_),
	.datac(prev_max_6_),
	.datad(p43_7_),
	.cin(gnd),
	.combout(nx31358z6),
	.cout());
// synopsys translate_off
defparam ix31358z52928.lut_mask = 16'h7BDE;
defparam ix31358z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N0
cycloneii_lcell_comb ix31358z52926(
// Equation(s):
// nx31358z4 = prev_max_11_ & (p43_10_ $ prev_max_10_ # !p43_11_) # !prev_max_11_ & (p43_11_ # p43_10_ $ prev_max_10_)

	.dataa(prev_max_11_),
	.datab(p43_10_),
	.datac(prev_max_10_),
	.datad(p43_11_),
	.cin(gnd),
	.combout(nx31358z4),
	.cout());
// synopsys translate_off
defparam ix31358z52926.lut_mask = 16'h7DBE;
defparam ix31358z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y23_N15
cycloneii_lcell_ff reg_p43_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_4_));

// atom is at LCFF_X56_Y23_N17
cycloneii_lcell_ff reg_p43_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_5_));

// atom is at LCFF_X55_Y23_N31
cycloneii_lcell_ff reg_prev_max_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_5_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_5_));

// atom is at LCFF_X55_Y23_N15
cycloneii_lcell_ff reg_prev_max_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_4_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_4_));

// atom is at LCCOMB_X55_Y23_N30
cycloneii_lcell_comb ix31358z52929(
// Equation(s):
// nx31358z7 = p43_5_ & (p43_4_ $ prev_max_4_ # !prev_max_5_) # !p43_5_ & (prev_max_5_ # p43_4_ $ prev_max_4_)

	.dataa(p43_5_),
	.datab(p43_4_),
	.datac(prev_max_5_),
	.datad(prev_max_4_),
	.cin(gnd),
	.combout(nx31358z7),
	.cout());
// synopsys translate_off
defparam ix31358z52929.lut_mask = 16'h7BDE;
defparam ix31358z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N28
cycloneii_lcell_comb ix31358z52925(
// Equation(s):
// nx31358z3 = nx31358z5 # nx31358z6 # nx31358z4 # nx31358z7

	.dataa(nx31358z5),
	.datab(nx31358z6),
	.datac(nx31358z4),
	.datad(nx31358z7),
	.cin(gnd),
	.combout(nx31358z3),
	.cout());
// synopsys translate_off
defparam ix31358z52925.lut_mask = 16'hFFFE;
defparam ix31358z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N10
cycloneii_lcell_comb ix31358z52924(
// Equation(s):
// nx31358z2 = !nx31358z9 & !nx31358z8 & nx31358z10 & !nx31358z3

	.dataa(nx31358z9),
	.datab(nx31358z8),
	.datac(nx31358z10),
	.datad(nx31358z3),
	.cin(gnd),
	.combout(nx31358z2),
	.cout());
// synopsys translate_off
defparam ix31358z52924.lut_mask = 16'h0010;
defparam ix31358z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N20
cycloneii_lcell_comb ix31358z52923(
// Equation(s):
// nx31358z1 = i_reset_acombout # state_3_ # ix32403z30872_anx100z1 # nx31358z2

	.dataa(i_reset_acombout),
	.datab(state_3_),
	.datac(ix32403z30872_anx100z1),
	.datad(nx31358z2),
	.cin(gnd),
	.combout(nx31358z1),
	.cout());
// synopsys translate_off
defparam ix31358z52923.lut_mask = 16'hFFFE;
defparam ix31358z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y23_N1
cycloneii_lcell_ff reg_prev_max_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_10_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_10_));

// atom is at LCFF_X56_Y23_N25
cycloneii_lcell_ff reg_p43_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_9_));

// atom is at LCFF_X55_Y23_N3
cycloneii_lcell_ff reg_prev_max_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p43_9_),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_max_9_));

// atom is at LCFF_X56_Y23_N23
cycloneii_lcell_ff reg_p43_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_8_));

// atom is at LCFF_X56_Y23_N9
cycloneii_lcell_ff reg_p43_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_1_));

// atom is at LCFF_X56_Y23_N7
cycloneii_lcell_ff reg_p43_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(p4s_sub12_0_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p43_0_));

// atom is at LCCOMB_X55_Y23_N4
cycloneii_lcell_comb ix32403z30872_aix100z52935(
// Equation(s):
// ix32403z30872_anx100z34 = CARRY(!prev_max_0_ & p43_0_)

	.dataa(prev_max_0_),
	.datab(p43_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix32403z30872_anx100z34));
// synopsys translate_off
defparam ix32403z30872_aix100z52935.lut_mask = 16'h0044;
defparam ix32403z30872_aix100z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N6
cycloneii_lcell_comb ix32403z30872_aix100z52934(
// Equation(s):
// ix32403z30872_anx100z31 = CARRY(prev_max_1_ & (!ix32403z30872_anx100z34 # !p43_1_) # !prev_max_1_ & !p43_1_ & !ix32403z30872_anx100z34)

	.dataa(prev_max_1_),
	.datab(p43_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z34),
	.combout(),
	.cout(ix32403z30872_anx100z31));
// synopsys translate_off
defparam ix32403z30872_aix100z52934.lut_mask = 16'h002B;
defparam ix32403z30872_aix100z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N8
cycloneii_lcell_comb ix32403z30872_aix100z52933(
// Equation(s):
// ix32403z30872_anx100z28 = CARRY(prev_max_2_ & p43_2_ & !ix32403z30872_anx100z31 # !prev_max_2_ & (p43_2_ # !ix32403z30872_anx100z31))

	.dataa(prev_max_2_),
	.datab(p43_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z31),
	.combout(),
	.cout(ix32403z30872_anx100z28));
// synopsys translate_off
defparam ix32403z30872_aix100z52933.lut_mask = 16'h004D;
defparam ix32403z30872_aix100z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N10
cycloneii_lcell_comb ix32403z30872_aix100z52932(
// Equation(s):
// ix32403z30872_anx100z25 = CARRY(prev_max_3_ & (!ix32403z30872_anx100z28 # !p43_3_) # !prev_max_3_ & !p43_3_ & !ix32403z30872_anx100z28)

	.dataa(prev_max_3_),
	.datab(p43_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z28),
	.combout(),
	.cout(ix32403z30872_anx100z25));
// synopsys translate_off
defparam ix32403z30872_aix100z52932.lut_mask = 16'h002B;
defparam ix32403z30872_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N12
cycloneii_lcell_comb ix32403z30872_aix100z52931(
// Equation(s):
// ix32403z30872_anx100z22 = CARRY(prev_max_4_ & p43_4_ & !ix32403z30872_anx100z25 # !prev_max_4_ & (p43_4_ # !ix32403z30872_anx100z25))

	.dataa(prev_max_4_),
	.datab(p43_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z25),
	.combout(),
	.cout(ix32403z30872_anx100z22));
// synopsys translate_off
defparam ix32403z30872_aix100z52931.lut_mask = 16'h004D;
defparam ix32403z30872_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N14
cycloneii_lcell_comb ix32403z30872_aix100z52930(
// Equation(s):
// ix32403z30872_anx100z19 = CARRY(p43_5_ & prev_max_5_ & !ix32403z30872_anx100z22 # !p43_5_ & (prev_max_5_ # !ix32403z30872_anx100z22))

	.dataa(p43_5_),
	.datab(prev_max_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z22),
	.combout(),
	.cout(ix32403z30872_anx100z19));
// synopsys translate_off
defparam ix32403z30872_aix100z52930.lut_mask = 16'h004D;
defparam ix32403z30872_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N16
cycloneii_lcell_comb ix32403z30872_aix100z52929(
// Equation(s):
// ix32403z30872_anx100z16 = CARRY(p43_6_ & (!ix32403z30872_anx100z19 # !prev_max_6_) # !p43_6_ & !prev_max_6_ & !ix32403z30872_anx100z19)

	.dataa(p43_6_),
	.datab(prev_max_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z19),
	.combout(),
	.cout(ix32403z30872_anx100z16));
// synopsys translate_off
defparam ix32403z30872_aix100z52929.lut_mask = 16'h002B;
defparam ix32403z30872_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N18
cycloneii_lcell_comb ix32403z30872_aix100z52928(
// Equation(s):
// ix32403z30872_anx100z13 = CARRY(prev_max_7_ & (!ix32403z30872_anx100z16 # !p43_7_) # !prev_max_7_ & !p43_7_ & !ix32403z30872_anx100z16)

	.dataa(prev_max_7_),
	.datab(p43_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z16),
	.combout(),
	.cout(ix32403z30872_anx100z13));
// synopsys translate_off
defparam ix32403z30872_aix100z52928.lut_mask = 16'h002B;
defparam ix32403z30872_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N20
cycloneii_lcell_comb ix32403z30872_aix100z52927(
// Equation(s):
// ix32403z30872_anx100z10 = CARRY(prev_max_8_ & p43_8_ & !ix32403z30872_anx100z13 # !prev_max_8_ & (p43_8_ # !ix32403z30872_anx100z13))

	.dataa(prev_max_8_),
	.datab(p43_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z13),
	.combout(),
	.cout(ix32403z30872_anx100z10));
// synopsys translate_off
defparam ix32403z30872_aix100z52927.lut_mask = 16'h004D;
defparam ix32403z30872_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N22
cycloneii_lcell_comb ix32403z30872_aix100z52926(
// Equation(s):
// ix32403z30872_anx100z7 = CARRY(p43_9_ & prev_max_9_ & !ix32403z30872_anx100z10 # !p43_9_ & (prev_max_9_ # !ix32403z30872_anx100z10))

	.dataa(p43_9_),
	.datab(prev_max_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z10),
	.combout(),
	.cout(ix32403z30872_anx100z7));
// synopsys translate_off
defparam ix32403z30872_aix100z52926.lut_mask = 16'h004D;
defparam ix32403z30872_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N24
cycloneii_lcell_comb ix32403z30872_aix100z52925(
// Equation(s):
// ix32403z30872_anx100z4 = CARRY(p43_10_ & (!ix32403z30872_anx100z7 # !prev_max_10_) # !p43_10_ & !prev_max_10_ & !ix32403z30872_anx100z7)

	.dataa(p43_10_),
	.datab(prev_max_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix32403z30872_anx100z7),
	.combout(),
	.cout(ix32403z30872_anx100z4));
// synopsys translate_off
defparam ix32403z30872_aix100z52925.lut_mask = 16'h002B;
defparam ix32403z30872_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y23_N26
cycloneii_lcell_comb ix32403z30872_aix100z52923(
// Equation(s):
// ix32403z30872_anx100z1 = prev_max_11_ & (ix32403z30872_anx100z4 # !p43_11_) # !prev_max_11_ & ix32403z30872_anx100z4 & !p43_11_

	.dataa(prev_max_11_),
	.datab(vcc),
	.datac(vcc),
	.datad(p43_11_),
	.cin(ix32403z30872_anx100z4),
	.combout(ix32403z30872_anx100z1),
	.cout());
// synopsys translate_off
defparam ix32403z30872_aix100z52923.lut_mask = 16'hA0FA;
defparam ix32403z30872_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N12
cycloneii_lcell_comb ix32403z52925(
// Equation(s):
// nx32403z3 = ix32403z30872_anx100z1 # nx31358z2

	.dataa(vcc),
	.datab(vcc),
	.datac(ix32403z30872_anx100z1),
	.datad(nx31358z2),
	.cin(gnd),
	.combout(nx32403z3),
	.cout());
// synopsys translate_off
defparam ix32403z52925.lut_mask = 16'hFFF0;
defparam ix32403z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y23_N1
cycloneii_lcell_ff reg_out_o_dir_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx30409z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32403z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63886z1));

// atom is at LCCOMB_X54_Y23_N8
cycloneii_lcell_comb ix32403z52927(
// Equation(s):
// nx32403z5 = nx28524z1 & !state_1_

	.dataa(vcc),
	.datab(nx28524z1),
	.datac(state_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx32403z5),
	.cout());
// synopsys translate_off
defparam ix32403z52927.lut_mask = 16'h0C0C;
defparam ix32403z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N22
cycloneii_lcell_comb ix32403z52924(
// Equation(s):
// nx32403z2 = nx32403z3 & (state_2_ # state_3_ # !nx32403z5)

	.dataa(state_2_),
	.datab(nx32403z5),
	.datac(state_3_),
	.datad(nx32403z3),
	.cin(gnd),
	.combout(nx32403z2),
	.cout());
// synopsys translate_off
defparam ix32403z52924.lut_mask = 16'hFB00;
defparam ix32403z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N9
cycloneii_lcell_ff reg_out_o_dir_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx32403z5),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32403z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62889z1));

// atom is at LCCOMB_X54_Y23_N26
cycloneii_lcell_comb ix32403z52923(
// Equation(s):
// nx32403z1 = nx28524z1 & (state_1_ # !state_2_)

	.dataa(state_2_),
	.datab(nx28524z1),
	.datac(state_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx32403z1),
	.cout());
// synopsys translate_off
defparam ix32403z52923.lut_mask = 16'hC4C4;
defparam ix32403z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N27
cycloneii_lcell_ff reg_out_o_dir_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx32403z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32403z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx61892z1));

// atom is at LCCOMB_X57_Y23_N28
cycloneii_lcell_comb ix26026z52924(
// Equation(s):
// nx26026z2 = !p4s_sub12_0_anx63795z1 & (p4s_sub12_0_anx46946z1 # p4s_sub12_0_anx44952z1 & p4s_sub12_0_anx45949z1)

	.dataa(p4s_sub12_0_anx44952z1),
	.datab(p4s_sub12_0_anx45949z1),
	.datac(p4s_sub12_0_anx46946z1),
	.datad(p4s_sub12_0_anx63795z1),
	.cin(gnd),
	.combout(nx26026z2),
	.cout());
// synopsys translate_off
defparam ix26026z52924.lut_mask = 16'h00F8;
defparam ix26026z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y23_N2
cycloneii_lcell_comb ix26026z52923(
// Equation(s):
// nx26026z1 = nx26026z2 # !p4s_sub12_0_anx63795z1 & p4s_sub12_0_anx62798z1

	.dataa(vcc),
	.datab(p4s_sub12_0_anx63795z1),
	.datac(p4s_sub12_0_anx62798z1),
	.datad(nx26026z2),
	.cin(gnd),
	.combout(nx26026z1),
	.cout());
// synopsys translate_off
defparam ix26026z52923.lut_mask = 16'hFF30;
defparam ix26026z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y23_N3
cycloneii_lcell_ff reg_p41(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26026z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p41));

// atom is at LCFF_X57_Y23_N7
cycloneii_lcell_ff reg_prev_edge(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(p41),
	.aclr(gnd),
	.sclr(nx30361z1),
	.sload(vcc),
	.ena(nx31358z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(prev_edge));

// atom is at LCCOMB_X57_Y23_N16
cycloneii_lcell_comb nx45767z1_afeeder(
// Equation(s):
// nx45767z1_afeeder_combout = prev_edge

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(prev_edge),
	.cin(gnd),
	.combout(nx45767z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx45767z1_afeeder.lut_mask = 16'hFF00;
defparam nx45767z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y23_N17
cycloneii_lcell_ff reg_out_o_edge_obuf(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45767z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45767z1));

// atom is at LCFF_X54_Y27_N9
cycloneii_lcell_ff reg_o_valid(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(state_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_valid_dup0));

// atom is at PIN_AA25
cycloneii_io i_mode_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx42010z1),
	.differentialout(),
	.linkout(),
	.padio(i_mode[0]));
// synopsys translate_off
defparam i_mode_ibuf_0_.input_async_reset = "none";
defparam i_mode_ibuf_0_.input_power_up = "low";
defparam i_mode_ibuf_0_.input_register_mode = "register";
defparam i_mode_ibuf_0_.input_sync_reset = "none";
defparam i_mode_ibuf_0_.oe_async_reset = "none";
defparam i_mode_ibuf_0_.oe_power_up = "low";
defparam i_mode_ibuf_0_.oe_register_mode = "none";
defparam i_mode_ibuf_0_.oe_sync_reset = "none";
defparam i_mode_ibuf_0_.operation_mode = "input";
defparam i_mode_ibuf_0_.output_async_reset = "none";
defparam i_mode_ibuf_0_.output_power_up = "low";
defparam i_mode_ibuf_0_.output_register_mode = "none";
defparam i_mode_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y8_N2
cycloneii_lcell_comb nx47145z1_afeeder(
// Equation(s):
// nx47145z1_afeeder_combout = nx42010z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx42010z1),
	.cin(gnd),
	.combout(nx47145z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx47145z1_afeeder.lut_mask = 16'hFF00;
defparam nx47145z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y8_N3
cycloneii_lcell_ff ix259_reg_p3m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx47145z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47145z1));

// atom is at LCCOMB_X64_Y8_N20
cycloneii_lcell_comb nx13256z1_afeeder(
// Equation(s):
// nx13256z1_afeeder_combout = nx47145z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx47145z1),
	.cin(gnd),
	.combout(nx13256z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx13256z1_afeeder.lut_mask = 16'hFF00;
defparam nx13256z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y8_N21
cycloneii_lcell_ff ix259_reg_p4m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx13256z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx13256z1));

// atom is at LCFF_X64_Y8_N17
cycloneii_lcell_ff ix259_reg_p5m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(nx13256z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p5m_0_));

// atom is at LCCOMB_X64_Y8_N16
cycloneii_lcell_comb ix47893z52923(
// Equation(s):
// o_mode_dup0_0_ = p5m_0_ # i_reset_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(p5m_0_),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(o_mode_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix47893z52923.lut_mask = 16'hFFF0;
defparam ix47893z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_Y25
cycloneii_io i_mode_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx41013z1),
	.differentialout(),
	.linkout(),
	.padio(i_mode[1]));
// synopsys translate_off
defparam i_mode_ibuf_1_.input_async_reset = "none";
defparam i_mode_ibuf_1_.input_power_up = "low";
defparam i_mode_ibuf_1_.input_register_mode = "register";
defparam i_mode_ibuf_1_.input_sync_reset = "none";
defparam i_mode_ibuf_1_.oe_async_reset = "none";
defparam i_mode_ibuf_1_.oe_power_up = "low";
defparam i_mode_ibuf_1_.oe_register_mode = "none";
defparam i_mode_ibuf_1_.oe_sync_reset = "none";
defparam i_mode_ibuf_1_.operation_mode = "input";
defparam i_mode_ibuf_1_.output_async_reset = "none";
defparam i_mode_ibuf_1_.output_power_up = "low";
defparam i_mode_ibuf_1_.output_register_mode = "none";
defparam i_mode_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y8_N12
cycloneii_lcell_comb nx46148z1_afeeder(
// Equation(s):
// nx46148z1_afeeder_combout = nx41013z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx41013z1),
	.cin(gnd),
	.combout(nx46148z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx46148z1_afeeder.lut_mask = 16'hFF00;
defparam nx46148z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y8_N13
cycloneii_lcell_ff ix259_reg_p3m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx46148z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46148z1));

// atom is at LCCOMB_X64_Y8_N14
cycloneii_lcell_comb nx14253z1_afeeder(
// Equation(s):
// nx14253z1_afeeder_combout = nx46148z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx46148z1),
	.cin(gnd),
	.combout(nx14253z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx14253z1_afeeder.lut_mask = 16'hFF00;
defparam nx14253z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y8_N15
cycloneii_lcell_ff ix259_reg_p4m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx14253z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx14253z1));

// atom is at LCFF_X64_Y8_N27
cycloneii_lcell_ff ix259_reg_p5m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(nx14253z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(p5m_1_));

// atom is at LCCOMB_X64_Y8_N26
cycloneii_lcell_comb ix46896z52923(
// Equation(s):
// o_mode_dup0_1_ = p5m_1_ & !i_reset_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(p5m_1_),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(o_mode_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix46896z52923.lut_mask = 16'h00F0;
defparam ix46896z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_D1
cycloneii_io i_row_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx22790z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[0]));
// synopsys translate_off
defparam i_row_ibuf_0_.input_async_reset = "none";
defparam i_row_ibuf_0_.input_power_up = "low";
defparam i_row_ibuf_0_.input_register_mode = "register";
defparam i_row_ibuf_0_.input_sync_reset = "none";
defparam i_row_ibuf_0_.oe_async_reset = "none";
defparam i_row_ibuf_0_.oe_power_up = "low";
defparam i_row_ibuf_0_.oe_register_mode = "none";
defparam i_row_ibuf_0_.oe_sync_reset = "none";
defparam i_row_ibuf_0_.operation_mode = "input";
defparam i_row_ibuf_0_.output_async_reset = "none";
defparam i_row_ibuf_0_.output_power_up = "low";
defparam i_row_ibuf_0_.output_register_mode = "none";
defparam i_row_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X1_Y32_N28
cycloneii_lcell_comb nx27925z1_afeeder(
// Equation(s):
// nx27925z1_afeeder_combout = nx22790z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx22790z1),
	.cin(gnd),
	.combout(nx27925z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx27925z1_afeeder.lut_mask = 16'hFF00;
defparam nx27925z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y32_N29
cycloneii_lcell_ff ix258_reg_p3r_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx27925z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx27925z1));

// atom is at LCCOMB_X1_Y32_N2
cycloneii_lcell_comb nx38634z1_afeeder(
// Equation(s):
// nx38634z1_afeeder_combout = nx27925z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx27925z1),
	.cin(gnd),
	.combout(nx38634z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx38634z1_afeeder.lut_mask = 16'hFF00;
defparam nx38634z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y32_N3
cycloneii_lcell_ff ix258_reg_p4r_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx38634z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx38634z1));

// atom is at LCCOMB_X1_Y32_N24
cycloneii_lcell_comb nx16335z1_afeeder(
// Equation(s):
// nx16335z1_afeeder_combout = nx38634z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx38634z1),
	.cin(gnd),
	.combout(nx16335z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx16335z1_afeeder.lut_mask = 16'hFF00;
defparam nx16335z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y32_N25
cycloneii_lcell_ff reg_out_o_row_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx16335z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx16335z1));

// atom is at PIN_T18
cycloneii_io i_row_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx21793z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[1]));
// synopsys translate_off
defparam i_row_ibuf_1_.input_async_reset = "none";
defparam i_row_ibuf_1_.input_power_up = "low";
defparam i_row_ibuf_1_.input_register_mode = "register";
defparam i_row_ibuf_1_.input_sync_reset = "none";
defparam i_row_ibuf_1_.oe_async_reset = "none";
defparam i_row_ibuf_1_.oe_power_up = "low";
defparam i_row_ibuf_1_.oe_register_mode = "none";
defparam i_row_ibuf_1_.oe_sync_reset = "none";
defparam i_row_ibuf_1_.operation_mode = "input";
defparam i_row_ibuf_1_.output_async_reset = "none";
defparam i_row_ibuf_1_.output_power_up = "low";
defparam i_row_ibuf_1_.output_register_mode = "none";
defparam i_row_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y14_N28
cycloneii_lcell_comb nx26928z1_afeeder(
// Equation(s):
// nx26928z1_afeeder_combout = nx21793z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx21793z1),
	.cin(gnd),
	.combout(nx26928z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx26928z1_afeeder.lut_mask = 16'hFF00;
defparam nx26928z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y14_N29
cycloneii_lcell_ff ix258_reg_p3r_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26928z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx26928z1));

// atom is at LCCOMB_X64_Y14_N2
cycloneii_lcell_comb nx39631z1_afeeder(
// Equation(s):
// nx39631z1_afeeder_combout = nx26928z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx26928z1),
	.cin(gnd),
	.combout(nx39631z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx39631z1_afeeder.lut_mask = 16'hFF00;
defparam nx39631z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y14_N3
cycloneii_lcell_ff ix258_reg_p4r_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx39631z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx39631z1));

// atom is at LCCOMB_X64_Y14_N0
cycloneii_lcell_comb nx17332z1_afeeder(
// Equation(s):
// nx17332z1_afeeder_combout = nx39631z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx39631z1),
	.cin(gnd),
	.combout(nx17332z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx17332z1_afeeder.lut_mask = 16'hFF00;
defparam nx17332z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y14_N1
cycloneii_lcell_ff reg_out_o_row_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx17332z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx17332z1));

// atom is at PIN_V23
cycloneii_io i_row_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx20796z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[2]));
// synopsys translate_off
defparam i_row_ibuf_2_.input_async_reset = "none";
defparam i_row_ibuf_2_.input_power_up = "low";
defparam i_row_ibuf_2_.input_register_mode = "register";
defparam i_row_ibuf_2_.input_sync_reset = "none";
defparam i_row_ibuf_2_.oe_async_reset = "none";
defparam i_row_ibuf_2_.oe_power_up = "low";
defparam i_row_ibuf_2_.oe_register_mode = "none";
defparam i_row_ibuf_2_.oe_sync_reset = "none";
defparam i_row_ibuf_2_.operation_mode = "input";
defparam i_row_ibuf_2_.output_async_reset = "none";
defparam i_row_ibuf_2_.output_power_up = "low";
defparam i_row_ibuf_2_.output_register_mode = "none";
defparam i_row_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y10_N28
cycloneii_lcell_comb nx25931z1_afeeder(
// Equation(s):
// nx25931z1_afeeder_combout = nx20796z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx20796z1),
	.cin(gnd),
	.combout(nx25931z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx25931z1_afeeder.lut_mask = 16'hFF00;
defparam nx25931z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y10_N29
cycloneii_lcell_ff ix258_reg_p3r_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx25931z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx25931z1));

// atom is at LCCOMB_X64_Y10_N2
cycloneii_lcell_comb nx40628z1_afeeder(
// Equation(s):
// nx40628z1_afeeder_combout = nx25931z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx25931z1),
	.cin(gnd),
	.combout(nx40628z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx40628z1_afeeder.lut_mask = 16'hFF00;
defparam nx40628z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y10_N3
cycloneii_lcell_ff ix258_reg_p4r_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx40628z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx40628z1));

// atom is at LCCOMB_X64_Y10_N0
cycloneii_lcell_comb nx18329z1_afeeder(
// Equation(s):
// nx18329z1_afeeder_combout = nx40628z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx40628z1),
	.cin(gnd),
	.combout(nx18329z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx18329z1_afeeder.lut_mask = 16'hFF00;
defparam nx18329z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y10_N1
cycloneii_lcell_ff reg_out_o_row_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx18329z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx18329z1));

// atom is at PIN_AA7
cycloneii_io i_row_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx19799z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[3]));
// synopsys translate_off
defparam i_row_ibuf_3_.input_async_reset = "none";
defparam i_row_ibuf_3_.input_power_up = "low";
defparam i_row_ibuf_3_.input_register_mode = "register";
defparam i_row_ibuf_3_.input_sync_reset = "none";
defparam i_row_ibuf_3_.oe_async_reset = "none";
defparam i_row_ibuf_3_.oe_power_up = "low";
defparam i_row_ibuf_3_.oe_register_mode = "none";
defparam i_row_ibuf_3_.oe_sync_reset = "none";
defparam i_row_ibuf_3_.operation_mode = "input";
defparam i_row_ibuf_3_.output_async_reset = "none";
defparam i_row_ibuf_3_.output_power_up = "low";
defparam i_row_ibuf_3_.output_register_mode = "none";
defparam i_row_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X1_Y2_N28
cycloneii_lcell_comb nx24934z1_afeeder(
// Equation(s):
// nx24934z1_afeeder_combout = nx19799z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx19799z1),
	.cin(gnd),
	.combout(nx24934z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx24934z1_afeeder.lut_mask = 16'hFF00;
defparam nx24934z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y2_N29
cycloneii_lcell_ff ix258_reg_p3r_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx24934z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx24934z1));

// atom is at LCCOMB_X1_Y2_N2
cycloneii_lcell_comb nx41625z1_afeeder(
// Equation(s):
// nx41625z1_afeeder_combout = nx24934z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx24934z1),
	.cin(gnd),
	.combout(nx41625z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx41625z1_afeeder.lut_mask = 16'hFF00;
defparam nx41625z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y2_N3
cycloneii_lcell_ff ix258_reg_p4r_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx41625z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41625z1));

// atom is at LCCOMB_X1_Y2_N24
cycloneii_lcell_comb nx19326z1_afeeder(
// Equation(s):
// nx19326z1_afeeder_combout = nx41625z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx41625z1),
	.cin(gnd),
	.combout(nx19326z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx19326z1_afeeder.lut_mask = 16'hFF00;
defparam nx19326z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y2_N25
cycloneii_lcell_ff reg_out_o_row_obuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx19326z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx19326z1));

// atom is at PIN_AE21
cycloneii_io i_row_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx18802z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[4]));
// synopsys translate_off
defparam i_row_ibuf_4_.input_async_reset = "none";
defparam i_row_ibuf_4_.input_power_up = "low";
defparam i_row_ibuf_4_.input_register_mode = "register";
defparam i_row_ibuf_4_.input_sync_reset = "none";
defparam i_row_ibuf_4_.oe_async_reset = "none";
defparam i_row_ibuf_4_.oe_power_up = "low";
defparam i_row_ibuf_4_.oe_register_mode = "none";
defparam i_row_ibuf_4_.oe_sync_reset = "none";
defparam i_row_ibuf_4_.operation_mode = "input";
defparam i_row_ibuf_4_.output_async_reset = "none";
defparam i_row_ibuf_4_.output_power_up = "low";
defparam i_row_ibuf_4_.output_register_mode = "none";
defparam i_row_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X55_Y2_N28
cycloneii_lcell_comb nx23937z1_afeeder(
// Equation(s):
// nx23937z1_afeeder_combout = nx18802z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx18802z1),
	.cin(gnd),
	.combout(nx23937z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx23937z1_afeeder.lut_mask = 16'hFF00;
defparam nx23937z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y2_N29
cycloneii_lcell_ff ix258_reg_p3r_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23937z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx23937z1));

// atom is at LCCOMB_X55_Y2_N2
cycloneii_lcell_comb nx42622z1_afeeder(
// Equation(s):
// nx42622z1_afeeder_combout = nx23937z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx23937z1),
	.cin(gnd),
	.combout(nx42622z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx42622z1_afeeder.lut_mask = 16'hFF00;
defparam nx42622z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y2_N3
cycloneii_lcell_ff ix258_reg_p4r_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42622z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42622z1));

// atom is at LCCOMB_X55_Y2_N0
cycloneii_lcell_comb nx20323z1_afeeder(
// Equation(s):
// nx20323z1_afeeder_combout = nx42622z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx42622z1),
	.cin(gnd),
	.combout(nx20323z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx20323z1_afeeder.lut_mask = 16'hFF00;
defparam nx20323z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y2_N1
cycloneii_lcell_ff reg_out_o_row_obuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20323z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx20323z1));

// atom is at PIN_AB3
cycloneii_io i_row_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx17805z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[5]));
// synopsys translate_off
defparam i_row_ibuf_5_.input_async_reset = "none";
defparam i_row_ibuf_5_.input_power_up = "low";
defparam i_row_ibuf_5_.input_register_mode = "register";
defparam i_row_ibuf_5_.input_sync_reset = "none";
defparam i_row_ibuf_5_.oe_async_reset = "none";
defparam i_row_ibuf_5_.oe_power_up = "low";
defparam i_row_ibuf_5_.oe_register_mode = "none";
defparam i_row_ibuf_5_.oe_sync_reset = "none";
defparam i_row_ibuf_5_.operation_mode = "input";
defparam i_row_ibuf_5_.output_async_reset = "none";
defparam i_row_ibuf_5_.output_power_up = "low";
defparam i_row_ibuf_5_.output_register_mode = "none";
defparam i_row_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X1_Y3_N28
cycloneii_lcell_comb nx22940z1_afeeder(
// Equation(s):
// nx22940z1_afeeder_combout = nx17805z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx17805z1),
	.cin(gnd),
	.combout(nx22940z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx22940z1_afeeder.lut_mask = 16'hFF00;
defparam nx22940z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y3_N29
cycloneii_lcell_ff ix258_reg_p3r_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx22940z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx22940z1));

// atom is at LCCOMB_X1_Y3_N2
cycloneii_lcell_comb nx43619z1_afeeder(
// Equation(s):
// nx43619z1_afeeder_combout = nx22940z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx22940z1),
	.cin(gnd),
	.combout(nx43619z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx43619z1_afeeder.lut_mask = 16'hFF00;
defparam nx43619z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y3_N3
cycloneii_lcell_ff ix258_reg_p4r_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43619z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43619z1));

// atom is at LCCOMB_X1_Y3_N24
cycloneii_lcell_comb nx21320z1_afeeder(
// Equation(s):
// nx21320z1_afeeder_combout = nx43619z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx43619z1),
	.cin(gnd),
	.combout(nx21320z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx21320z1_afeeder.lut_mask = 16'hFF00;
defparam nx21320z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y3_N25
cycloneii_lcell_ff reg_out_o_row_obuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx21320z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21320z1));

// atom is at PIN_B2
cycloneii_io i_row_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx16808z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[6]));
// synopsys translate_off
defparam i_row_ibuf_6_.input_async_reset = "none";
defparam i_row_ibuf_6_.input_power_up = "low";
defparam i_row_ibuf_6_.input_register_mode = "register";
defparam i_row_ibuf_6_.input_sync_reset = "none";
defparam i_row_ibuf_6_.oe_async_reset = "none";
defparam i_row_ibuf_6_.oe_power_up = "low";
defparam i_row_ibuf_6_.oe_register_mode = "none";
defparam i_row_ibuf_6_.oe_sync_reset = "none";
defparam i_row_ibuf_6_.operation_mode = "input";
defparam i_row_ibuf_6_.output_async_reset = "none";
defparam i_row_ibuf_6_.output_power_up = "low";
defparam i_row_ibuf_6_.output_register_mode = "none";
defparam i_row_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X1_Y34_N28
cycloneii_lcell_comb nx21943z1_afeeder(
// Equation(s):
// nx21943z1_afeeder_combout = nx16808z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx16808z1),
	.cin(gnd),
	.combout(nx21943z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx21943z1_afeeder.lut_mask = 16'hFF00;
defparam nx21943z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y34_N29
cycloneii_lcell_ff ix258_reg_p3r_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx21943z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21943z1));

// atom is at LCCOMB_X1_Y34_N2
cycloneii_lcell_comb nx44616z1_afeeder(
// Equation(s):
// nx44616z1_afeeder_combout = nx21943z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx21943z1),
	.cin(gnd),
	.combout(nx44616z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx44616z1_afeeder.lut_mask = 16'hFF00;
defparam nx44616z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y34_N3
cycloneii_lcell_ff ix258_reg_p4r_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44616z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44616z1));

// atom is at LCCOMB_X1_Y34_N24
cycloneii_lcell_comb nx22317z1_afeeder(
// Equation(s):
// nx22317z1_afeeder_combout = nx44616z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx44616z1),
	.cin(gnd),
	.combout(nx22317z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx22317z1_afeeder.lut_mask = 16'hFF00;
defparam nx22317z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y34_N25
cycloneii_lcell_ff reg_out_o_row_obuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx22317z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx22317z1));

// atom is at PIN_AD25
cycloneii_io i_row_ibuf_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(nx15811z1),
	.differentialout(),
	.linkout(),
	.padio(i_row[7]));
// synopsys translate_off
defparam i_row_ibuf_7_.input_async_reset = "none";
defparam i_row_ibuf_7_.input_power_up = "low";
defparam i_row_ibuf_7_.input_register_mode = "register";
defparam i_row_ibuf_7_.input_sync_reset = "none";
defparam i_row_ibuf_7_.oe_async_reset = "none";
defparam i_row_ibuf_7_.oe_power_up = "low";
defparam i_row_ibuf_7_.oe_register_mode = "none";
defparam i_row_ibuf_7_.oe_sync_reset = "none";
defparam i_row_ibuf_7_.operation_mode = "input";
defparam i_row_ibuf_7_.output_async_reset = "none";
defparam i_row_ibuf_7_.output_power_up = "low";
defparam i_row_ibuf_7_.output_register_mode = "none";
defparam i_row_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X64_Y2_N28
cycloneii_lcell_comb nx20946z1_afeeder(
// Equation(s):
// nx20946z1_afeeder_combout = nx15811z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx15811z1),
	.cin(gnd),
	.combout(nx20946z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx20946z1_afeeder.lut_mask = 16'hFF00;
defparam nx20946z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y2_N29
cycloneii_lcell_ff ix258_reg_p3r_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20946z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx20946z1));

// atom is at LCCOMB_X64_Y2_N2
cycloneii_lcell_comb nx45613z1_afeeder(
// Equation(s):
// nx45613z1_afeeder_combout = nx20946z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx20946z1),
	.cin(gnd),
	.combout(nx45613z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx45613z1_afeeder.lut_mask = 16'hFF00;
defparam nx45613z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y2_N3
cycloneii_lcell_ff ix258_reg_p4r_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45613z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45613z1));

// atom is at LCCOMB_X64_Y2_N0
cycloneii_lcell_comb nx23314z1_afeeder(
// Equation(s):
// nx23314z1_afeeder_combout = nx45613z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx45613z1),
	.cin(gnd),
	.combout(nx23314z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx23314z1_afeeder.lut_mask = 16'hFF00;
defparam nx23314z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y2_N1
cycloneii_lcell_ff reg_out_o_row_obuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23314z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx23314z1));

// atom is at PIN_AA10
cycloneii_io ix6038z43919(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_valid));
// synopsys translate_off
defparam ix6038z43919.input_async_reset = "none";
defparam ix6038z43919.input_power_up = "low";
defparam ix6038z43919.input_register_mode = "none";
defparam ix6038z43919.input_sync_reset = "none";
defparam ix6038z43919.oe_async_reset = "none";
defparam ix6038z43919.oe_power_up = "low";
defparam ix6038z43919.oe_register_mode = "none";
defparam ix6038z43919.oe_sync_reset = "none";
defparam ix6038z43919.operation_mode = "output";
defparam ix6038z43919.output_async_reset = "none";
defparam ix6038z43919.output_power_up = "low";
defparam ix6038z43919.output_register_mode = "none";
defparam ix6038z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC8
cycloneii_io debug_num_0_triBus1_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_triBus1_0_.input_async_reset = "none";
defparam debug_num_0_triBus1_0_.input_power_up = "low";
defparam debug_num_0_triBus1_0_.input_register_mode = "none";
defparam debug_num_0_triBus1_0_.input_sync_reset = "none";
defparam debug_num_0_triBus1_0_.oe_async_reset = "none";
defparam debug_num_0_triBus1_0_.oe_power_up = "low";
defparam debug_num_0_triBus1_0_.oe_register_mode = "none";
defparam debug_num_0_triBus1_0_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_0_.operation_mode = "output";
defparam debug_num_0_triBus1_0_.output_async_reset = "none";
defparam debug_num_0_triBus1_0_.output_power_up = "low";
defparam debug_num_0_triBus1_0_.output_register_mode = "none";
defparam debug_num_0_triBus1_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B8
cycloneii_io debug_num_0_triBus1_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_triBus1_1_.input_async_reset = "none";
defparam debug_num_0_triBus1_1_.input_power_up = "low";
defparam debug_num_0_triBus1_1_.input_register_mode = "none";
defparam debug_num_0_triBus1_1_.input_sync_reset = "none";
defparam debug_num_0_triBus1_1_.oe_async_reset = "none";
defparam debug_num_0_triBus1_1_.oe_power_up = "low";
defparam debug_num_0_triBus1_1_.oe_register_mode = "none";
defparam debug_num_0_triBus1_1_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_1_.operation_mode = "output";
defparam debug_num_0_triBus1_1_.output_async_reset = "none";
defparam debug_num_0_triBus1_1_.output_power_up = "low";
defparam debug_num_0_triBus1_1_.output_register_mode = "none";
defparam debug_num_0_triBus1_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD15
cycloneii_io debug_num_0_triBus1_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_triBus1_2_.input_async_reset = "none";
defparam debug_num_0_triBus1_2_.input_power_up = "low";
defparam debug_num_0_triBus1_2_.input_register_mode = "none";
defparam debug_num_0_triBus1_2_.input_sync_reset = "none";
defparam debug_num_0_triBus1_2_.oe_async_reset = "none";
defparam debug_num_0_triBus1_2_.oe_power_up = "low";
defparam debug_num_0_triBus1_2_.oe_register_mode = "none";
defparam debug_num_0_triBus1_2_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_2_.operation_mode = "output";
defparam debug_num_0_triBus1_2_.output_async_reset = "none";
defparam debug_num_0_triBus1_2_.output_power_up = "low";
defparam debug_num_0_triBus1_2_.output_register_mode = "none";
defparam debug_num_0_triBus1_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J7
cycloneii_io debug_num_0_triBus1_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_triBus1_3_.input_async_reset = "none";
defparam debug_num_0_triBus1_3_.input_power_up = "low";
defparam debug_num_0_triBus1_3_.input_register_mode = "none";
defparam debug_num_0_triBus1_3_.input_sync_reset = "none";
defparam debug_num_0_triBus1_3_.oe_async_reset = "none";
defparam debug_num_0_triBus1_3_.oe_power_up = "low";
defparam debug_num_0_triBus1_3_.oe_register_mode = "none";
defparam debug_num_0_triBus1_3_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_3_.operation_mode = "output";
defparam debug_num_0_triBus1_3_.output_async_reset = "none";
defparam debug_num_0_triBus1_3_.output_power_up = "low";
defparam debug_num_0_triBus1_3_.output_register_mode = "none";
defparam debug_num_0_triBus1_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W21
cycloneii_io debug_num_0_triBus1_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[4]));
// synopsys translate_off
defparam debug_num_0_triBus1_4_.input_async_reset = "none";
defparam debug_num_0_triBus1_4_.input_power_up = "low";
defparam debug_num_0_triBus1_4_.input_register_mode = "none";
defparam debug_num_0_triBus1_4_.input_sync_reset = "none";
defparam debug_num_0_triBus1_4_.oe_async_reset = "none";
defparam debug_num_0_triBus1_4_.oe_power_up = "low";
defparam debug_num_0_triBus1_4_.oe_register_mode = "none";
defparam debug_num_0_triBus1_4_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_4_.operation_mode = "output";
defparam debug_num_0_triBus1_4_.output_async_reset = "none";
defparam debug_num_0_triBus1_4_.output_power_up = "low";
defparam debug_num_0_triBus1_4_.output_register_mode = "none";
defparam debug_num_0_triBus1_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E18
cycloneii_io debug_num_0_triBus1_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[5]));
// synopsys translate_off
defparam debug_num_0_triBus1_5_.input_async_reset = "none";
defparam debug_num_0_triBus1_5_.input_power_up = "low";
defparam debug_num_0_triBus1_5_.input_register_mode = "none";
defparam debug_num_0_triBus1_5_.input_sync_reset = "none";
defparam debug_num_0_triBus1_5_.oe_async_reset = "none";
defparam debug_num_0_triBus1_5_.oe_power_up = "low";
defparam debug_num_0_triBus1_5_.oe_register_mode = "none";
defparam debug_num_0_triBus1_5_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_5_.operation_mode = "output";
defparam debug_num_0_triBus1_5_.output_async_reset = "none";
defparam debug_num_0_triBus1_5_.output_power_up = "low";
defparam debug_num_0_triBus1_5_.output_register_mode = "none";
defparam debug_num_0_triBus1_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC12
cycloneii_io debug_num_0_triBus1_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[6]));
// synopsys translate_off
defparam debug_num_0_triBus1_6_.input_async_reset = "none";
defparam debug_num_0_triBus1_6_.input_power_up = "low";
defparam debug_num_0_triBus1_6_.input_register_mode = "none";
defparam debug_num_0_triBus1_6_.input_sync_reset = "none";
defparam debug_num_0_triBus1_6_.oe_async_reset = "none";
defparam debug_num_0_triBus1_6_.oe_power_up = "low";
defparam debug_num_0_triBus1_6_.oe_register_mode = "none";
defparam debug_num_0_triBus1_6_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_6_.operation_mode = "output";
defparam debug_num_0_triBus1_6_.output_async_reset = "none";
defparam debug_num_0_triBus1_6_.output_power_up = "low";
defparam debug_num_0_triBus1_6_.output_register_mode = "none";
defparam debug_num_0_triBus1_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F9
cycloneii_io debug_num_0_triBus1_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[7]));
// synopsys translate_off
defparam debug_num_0_triBus1_7_.input_async_reset = "none";
defparam debug_num_0_triBus1_7_.input_power_up = "low";
defparam debug_num_0_triBus1_7_.input_register_mode = "none";
defparam debug_num_0_triBus1_7_.input_sync_reset = "none";
defparam debug_num_0_triBus1_7_.oe_async_reset = "none";
defparam debug_num_0_triBus1_7_.oe_power_up = "low";
defparam debug_num_0_triBus1_7_.oe_register_mode = "none";
defparam debug_num_0_triBus1_7_.oe_sync_reset = "none";
defparam debug_num_0_triBus1_7_.operation_mode = "output";
defparam debug_num_0_triBus1_7_.output_async_reset = "none";
defparam debug_num_0_triBus1_7_.output_power_up = "low";
defparam debug_num_0_triBus1_7_.output_register_mode = "none";
defparam debug_num_0_triBus1_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T7
cycloneii_io debug_num_1_triBus2_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_triBus2_0_.input_async_reset = "none";
defparam debug_num_1_triBus2_0_.input_power_up = "low";
defparam debug_num_1_triBus2_0_.input_register_mode = "none";
defparam debug_num_1_triBus2_0_.input_sync_reset = "none";
defparam debug_num_1_triBus2_0_.oe_async_reset = "none";
defparam debug_num_1_triBus2_0_.oe_power_up = "low";
defparam debug_num_1_triBus2_0_.oe_register_mode = "none";
defparam debug_num_1_triBus2_0_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_0_.operation_mode = "output";
defparam debug_num_1_triBus2_0_.output_async_reset = "none";
defparam debug_num_1_triBus2_0_.output_power_up = "low";
defparam debug_num_1_triBus2_0_.output_register_mode = "none";
defparam debug_num_1_triBus2_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io debug_num_1_triBus2_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_triBus2_1_.input_async_reset = "none";
defparam debug_num_1_triBus2_1_.input_power_up = "low";
defparam debug_num_1_triBus2_1_.input_register_mode = "none";
defparam debug_num_1_triBus2_1_.input_sync_reset = "none";
defparam debug_num_1_triBus2_1_.oe_async_reset = "none";
defparam debug_num_1_triBus2_1_.oe_power_up = "low";
defparam debug_num_1_triBus2_1_.oe_register_mode = "none";
defparam debug_num_1_triBus2_1_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_1_.operation_mode = "output";
defparam debug_num_1_triBus2_1_.output_async_reset = "none";
defparam debug_num_1_triBus2_1_.output_power_up = "low";
defparam debug_num_1_triBus2_1_.output_register_mode = "none";
defparam debug_num_1_triBus2_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V9
cycloneii_io debug_num_1_triBus2_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_triBus2_2_.input_async_reset = "none";
defparam debug_num_1_triBus2_2_.input_power_up = "low";
defparam debug_num_1_triBus2_2_.input_register_mode = "none";
defparam debug_num_1_triBus2_2_.input_sync_reset = "none";
defparam debug_num_1_triBus2_2_.oe_async_reset = "none";
defparam debug_num_1_triBus2_2_.oe_power_up = "low";
defparam debug_num_1_triBus2_2_.oe_register_mode = "none";
defparam debug_num_1_triBus2_2_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_2_.operation_mode = "output";
defparam debug_num_1_triBus2_2_.output_async_reset = "none";
defparam debug_num_1_triBus2_2_.output_power_up = "low";
defparam debug_num_1_triBus2_2_.output_register_mode = "none";
defparam debug_num_1_triBus2_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D8
cycloneii_io debug_num_1_triBus2_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_triBus2_3_.input_async_reset = "none";
defparam debug_num_1_triBus2_3_.input_power_up = "low";
defparam debug_num_1_triBus2_3_.input_register_mode = "none";
defparam debug_num_1_triBus2_3_.input_sync_reset = "none";
defparam debug_num_1_triBus2_3_.oe_async_reset = "none";
defparam debug_num_1_triBus2_3_.oe_power_up = "low";
defparam debug_num_1_triBus2_3_.oe_register_mode = "none";
defparam debug_num_1_triBus2_3_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_3_.operation_mode = "output";
defparam debug_num_1_triBus2_3_.output_async_reset = "none";
defparam debug_num_1_triBus2_3_.output_power_up = "low";
defparam debug_num_1_triBus2_3_.output_register_mode = "none";
defparam debug_num_1_triBus2_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE15
cycloneii_io debug_num_1_triBus2_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[4]));
// synopsys translate_off
defparam debug_num_1_triBus2_4_.input_async_reset = "none";
defparam debug_num_1_triBus2_4_.input_power_up = "low";
defparam debug_num_1_triBus2_4_.input_register_mode = "none";
defparam debug_num_1_triBus2_4_.input_sync_reset = "none";
defparam debug_num_1_triBus2_4_.oe_async_reset = "none";
defparam debug_num_1_triBus2_4_.oe_power_up = "low";
defparam debug_num_1_triBus2_4_.oe_register_mode = "none";
defparam debug_num_1_triBus2_4_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_4_.operation_mode = "output";
defparam debug_num_1_triBus2_4_.output_async_reset = "none";
defparam debug_num_1_triBus2_4_.output_power_up = "low";
defparam debug_num_1_triBus2_4_.output_register_mode = "none";
defparam debug_num_1_triBus2_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC14
cycloneii_io debug_num_1_triBus2_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[5]));
// synopsys translate_off
defparam debug_num_1_triBus2_5_.input_async_reset = "none";
defparam debug_num_1_triBus2_5_.input_power_up = "low";
defparam debug_num_1_triBus2_5_.input_register_mode = "none";
defparam debug_num_1_triBus2_5_.input_sync_reset = "none";
defparam debug_num_1_triBus2_5_.oe_async_reset = "none";
defparam debug_num_1_triBus2_5_.oe_power_up = "low";
defparam debug_num_1_triBus2_5_.oe_register_mode = "none";
defparam debug_num_1_triBus2_5_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_5_.operation_mode = "output";
defparam debug_num_1_triBus2_5_.output_async_reset = "none";
defparam debug_num_1_triBus2_5_.output_power_up = "low";
defparam debug_num_1_triBus2_5_.output_register_mode = "none";
defparam debug_num_1_triBus2_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H10
cycloneii_io debug_num_1_triBus2_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[6]));
// synopsys translate_off
defparam debug_num_1_triBus2_6_.input_async_reset = "none";
defparam debug_num_1_triBus2_6_.input_power_up = "low";
defparam debug_num_1_triBus2_6_.input_register_mode = "none";
defparam debug_num_1_triBus2_6_.input_sync_reset = "none";
defparam debug_num_1_triBus2_6_.oe_async_reset = "none";
defparam debug_num_1_triBus2_6_.oe_power_up = "low";
defparam debug_num_1_triBus2_6_.oe_register_mode = "none";
defparam debug_num_1_triBus2_6_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_6_.operation_mode = "output";
defparam debug_num_1_triBus2_6_.output_async_reset = "none";
defparam debug_num_1_triBus2_6_.output_power_up = "low";
defparam debug_num_1_triBus2_6_.output_register_mode = "none";
defparam debug_num_1_triBus2_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD6
cycloneii_io debug_num_1_triBus2_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[7]));
// synopsys translate_off
defparam debug_num_1_triBus2_7_.input_async_reset = "none";
defparam debug_num_1_triBus2_7_.input_power_up = "low";
defparam debug_num_1_triBus2_7_.input_register_mode = "none";
defparam debug_num_1_triBus2_7_.input_sync_reset = "none";
defparam debug_num_1_triBus2_7_.oe_async_reset = "none";
defparam debug_num_1_triBus2_7_.oe_power_up = "low";
defparam debug_num_1_triBus2_7_.oe_register_mode = "none";
defparam debug_num_1_triBus2_7_.oe_sync_reset = "none";
defparam debug_num_1_triBus2_7_.operation_mode = "output";
defparam debug_num_1_triBus2_7_.output_async_reset = "none";
defparam debug_num_1_triBus2_7_.output_power_up = "low";
defparam debug_num_1_triBus2_7_.output_register_mode = "none";
defparam debug_num_1_triBus2_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T8
cycloneii_io debug_num_2_triBus3_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_triBus3_0_.input_async_reset = "none";
defparam debug_num_2_triBus3_0_.input_power_up = "low";
defparam debug_num_2_triBus3_0_.input_register_mode = "none";
defparam debug_num_2_triBus3_0_.input_sync_reset = "none";
defparam debug_num_2_triBus3_0_.oe_async_reset = "none";
defparam debug_num_2_triBus3_0_.oe_power_up = "low";
defparam debug_num_2_triBus3_0_.oe_register_mode = "none";
defparam debug_num_2_triBus3_0_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_0_.operation_mode = "output";
defparam debug_num_2_triBus3_0_.output_async_reset = "none";
defparam debug_num_2_triBus3_0_.output_power_up = "low";
defparam debug_num_2_triBus3_0_.output_register_mode = "none";
defparam debug_num_2_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E10
cycloneii_io debug_num_2_triBus3_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_triBus3_1_.input_async_reset = "none";
defparam debug_num_2_triBus3_1_.input_power_up = "low";
defparam debug_num_2_triBus3_1_.input_register_mode = "none";
defparam debug_num_2_triBus3_1_.input_sync_reset = "none";
defparam debug_num_2_triBus3_1_.oe_async_reset = "none";
defparam debug_num_2_triBus3_1_.oe_power_up = "low";
defparam debug_num_2_triBus3_1_.oe_register_mode = "none";
defparam debug_num_2_triBus3_1_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_1_.operation_mode = "output";
defparam debug_num_2_triBus3_1_.output_async_reset = "none";
defparam debug_num_2_triBus3_1_.output_power_up = "low";
defparam debug_num_2_triBus3_1_.output_register_mode = "none";
defparam debug_num_2_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J2
cycloneii_io debug_num_2_triBus3_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_triBus3_2_.input_async_reset = "none";
defparam debug_num_2_triBus3_2_.input_power_up = "low";
defparam debug_num_2_triBus3_2_.input_register_mode = "none";
defparam debug_num_2_triBus3_2_.input_sync_reset = "none";
defparam debug_num_2_triBus3_2_.oe_async_reset = "none";
defparam debug_num_2_triBus3_2_.oe_power_up = "low";
defparam debug_num_2_triBus3_2_.oe_register_mode = "none";
defparam debug_num_2_triBus3_2_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_2_.operation_mode = "output";
defparam debug_num_2_triBus3_2_.output_async_reset = "none";
defparam debug_num_2_triBus3_2_.output_power_up = "low";
defparam debug_num_2_triBus3_2_.output_register_mode = "none";
defparam debug_num_2_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U2
cycloneii_io debug_num_2_triBus3_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_triBus3_3_.input_async_reset = "none";
defparam debug_num_2_triBus3_3_.input_power_up = "low";
defparam debug_num_2_triBus3_3_.input_register_mode = "none";
defparam debug_num_2_triBus3_3_.input_sync_reset = "none";
defparam debug_num_2_triBus3_3_.oe_async_reset = "none";
defparam debug_num_2_triBus3_3_.oe_power_up = "low";
defparam debug_num_2_triBus3_3_.oe_register_mode = "none";
defparam debug_num_2_triBus3_3_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_3_.operation_mode = "output";
defparam debug_num_2_triBus3_3_.output_async_reset = "none";
defparam debug_num_2_triBus3_3_.output_power_up = "low";
defparam debug_num_2_triBus3_3_.output_register_mode = "none";
defparam debug_num_2_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V24
cycloneii_io debug_num_2_triBus3_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[4]));
// synopsys translate_off
defparam debug_num_2_triBus3_4_.input_async_reset = "none";
defparam debug_num_2_triBus3_4_.input_power_up = "low";
defparam debug_num_2_triBus3_4_.input_register_mode = "none";
defparam debug_num_2_triBus3_4_.input_sync_reset = "none";
defparam debug_num_2_triBus3_4_.oe_async_reset = "none";
defparam debug_num_2_triBus3_4_.oe_power_up = "low";
defparam debug_num_2_triBus3_4_.oe_register_mode = "none";
defparam debug_num_2_triBus3_4_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_4_.operation_mode = "output";
defparam debug_num_2_triBus3_4_.output_async_reset = "none";
defparam debug_num_2_triBus3_4_.output_power_up = "low";
defparam debug_num_2_triBus3_4_.output_register_mode = "none";
defparam debug_num_2_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F16
cycloneii_io debug_num_2_triBus3_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[5]));
// synopsys translate_off
defparam debug_num_2_triBus3_5_.input_async_reset = "none";
defparam debug_num_2_triBus3_5_.input_power_up = "low";
defparam debug_num_2_triBus3_5_.input_register_mode = "none";
defparam debug_num_2_triBus3_5_.input_sync_reset = "none";
defparam debug_num_2_triBus3_5_.oe_async_reset = "none";
defparam debug_num_2_triBus3_5_.oe_power_up = "low";
defparam debug_num_2_triBus3_5_.oe_register_mode = "none";
defparam debug_num_2_triBus3_5_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_5_.operation_mode = "output";
defparam debug_num_2_triBus3_5_.output_async_reset = "none";
defparam debug_num_2_triBus3_5_.output_power_up = "low";
defparam debug_num_2_triBus3_5_.output_register_mode = "none";
defparam debug_num_2_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y12
cycloneii_io debug_num_2_triBus3_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[6]));
// synopsys translate_off
defparam debug_num_2_triBus3_6_.input_async_reset = "none";
defparam debug_num_2_triBus3_6_.input_power_up = "low";
defparam debug_num_2_triBus3_6_.input_register_mode = "none";
defparam debug_num_2_triBus3_6_.input_sync_reset = "none";
defparam debug_num_2_triBus3_6_.oe_async_reset = "none";
defparam debug_num_2_triBus3_6_.oe_power_up = "low";
defparam debug_num_2_triBus3_6_.oe_register_mode = "none";
defparam debug_num_2_triBus3_6_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_6_.operation_mode = "output";
defparam debug_num_2_triBus3_6_.output_async_reset = "none";
defparam debug_num_2_triBus3_6_.output_power_up = "low";
defparam debug_num_2_triBus3_6_.output_register_mode = "none";
defparam debug_num_2_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA18
cycloneii_io debug_num_2_triBus3_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[7]));
// synopsys translate_off
defparam debug_num_2_triBus3_7_.input_async_reset = "none";
defparam debug_num_2_triBus3_7_.input_power_up = "low";
defparam debug_num_2_triBus3_7_.input_register_mode = "none";
defparam debug_num_2_triBus3_7_.input_sync_reset = "none";
defparam debug_num_2_triBus3_7_.oe_async_reset = "none";
defparam debug_num_2_triBus3_7_.oe_power_up = "low";
defparam debug_num_2_triBus3_7_.oe_register_mode = "none";
defparam debug_num_2_triBus3_7_.oe_sync_reset = "none";
defparam debug_num_2_triBus3_7_.operation_mode = "output";
defparam debug_num_2_triBus3_7_.output_async_reset = "none";
defparam debug_num_2_triBus3_7_.output_power_up = "low";
defparam debug_num_2_triBus3_7_.output_register_mode = "none";
defparam debug_num_2_triBus3_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE9
cycloneii_io debug_num_3_triBus4_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_triBus4_0_.input_async_reset = "none";
defparam debug_num_3_triBus4_0_.input_power_up = "low";
defparam debug_num_3_triBus4_0_.input_register_mode = "none";
defparam debug_num_3_triBus4_0_.input_sync_reset = "none";
defparam debug_num_3_triBus4_0_.oe_async_reset = "none";
defparam debug_num_3_triBus4_0_.oe_power_up = "low";
defparam debug_num_3_triBus4_0_.oe_register_mode = "none";
defparam debug_num_3_triBus4_0_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_0_.operation_mode = "output";
defparam debug_num_3_triBus4_0_.output_async_reset = "none";
defparam debug_num_3_triBus4_0_.output_power_up = "low";
defparam debug_num_3_triBus4_0_.output_register_mode = "none";
defparam debug_num_3_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A14
cycloneii_io debug_num_3_triBus4_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_triBus4_1_.input_async_reset = "none";
defparam debug_num_3_triBus4_1_.input_power_up = "low";
defparam debug_num_3_triBus4_1_.input_register_mode = "none";
defparam debug_num_3_triBus4_1_.input_sync_reset = "none";
defparam debug_num_3_triBus4_1_.oe_async_reset = "none";
defparam debug_num_3_triBus4_1_.oe_power_up = "low";
defparam debug_num_3_triBus4_1_.oe_register_mode = "none";
defparam debug_num_3_triBus4_1_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_1_.operation_mode = "output";
defparam debug_num_3_triBus4_1_.output_async_reset = "none";
defparam debug_num_3_triBus4_1_.output_power_up = "low";
defparam debug_num_3_triBus4_1_.output_register_mode = "none";
defparam debug_num_3_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F13
cycloneii_io debug_num_3_triBus4_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_triBus4_2_.input_async_reset = "none";
defparam debug_num_3_triBus4_2_.input_power_up = "low";
defparam debug_num_3_triBus4_2_.input_register_mode = "none";
defparam debug_num_3_triBus4_2_.input_sync_reset = "none";
defparam debug_num_3_triBus4_2_.oe_async_reset = "none";
defparam debug_num_3_triBus4_2_.oe_power_up = "low";
defparam debug_num_3_triBus4_2_.oe_register_mode = "none";
defparam debug_num_3_triBus4_2_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_2_.operation_mode = "output";
defparam debug_num_3_triBus4_2_.output_async_reset = "none";
defparam debug_num_3_triBus4_2_.output_power_up = "low";
defparam debug_num_3_triBus4_2_.output_register_mode = "none";
defparam debug_num_3_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C23
cycloneii_io debug_num_3_triBus4_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_triBus4_3_.input_async_reset = "none";
defparam debug_num_3_triBus4_3_.input_power_up = "low";
defparam debug_num_3_triBus4_3_.input_register_mode = "none";
defparam debug_num_3_triBus4_3_.input_sync_reset = "none";
defparam debug_num_3_triBus4_3_.oe_async_reset = "none";
defparam debug_num_3_triBus4_3_.oe_power_up = "low";
defparam debug_num_3_triBus4_3_.oe_register_mode = "none";
defparam debug_num_3_triBus4_3_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_3_.operation_mode = "output";
defparam debug_num_3_triBus4_3_.output_async_reset = "none";
defparam debug_num_3_triBus4_3_.output_power_up = "low";
defparam debug_num_3_triBus4_3_.output_register_mode = "none";
defparam debug_num_3_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C11
cycloneii_io debug_num_3_triBus4_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[4]));
// synopsys translate_off
defparam debug_num_3_triBus4_4_.input_async_reset = "none";
defparam debug_num_3_triBus4_4_.input_power_up = "low";
defparam debug_num_3_triBus4_4_.input_register_mode = "none";
defparam debug_num_3_triBus4_4_.input_sync_reset = "none";
defparam debug_num_3_triBus4_4_.oe_async_reset = "none";
defparam debug_num_3_triBus4_4_.oe_power_up = "low";
defparam debug_num_3_triBus4_4_.oe_register_mode = "none";
defparam debug_num_3_triBus4_4_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_4_.operation_mode = "output";
defparam debug_num_3_triBus4_4_.output_async_reset = "none";
defparam debug_num_3_triBus4_4_.output_power_up = "low";
defparam debug_num_3_triBus4_4_.output_register_mode = "none";
defparam debug_num_3_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A10
cycloneii_io debug_num_3_triBus4_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[5]));
// synopsys translate_off
defparam debug_num_3_triBus4_5_.input_async_reset = "none";
defparam debug_num_3_triBus4_5_.input_power_up = "low";
defparam debug_num_3_triBus4_5_.input_register_mode = "none";
defparam debug_num_3_triBus4_5_.input_sync_reset = "none";
defparam debug_num_3_triBus4_5_.oe_async_reset = "none";
defparam debug_num_3_triBus4_5_.oe_power_up = "low";
defparam debug_num_3_triBus4_5_.oe_register_mode = "none";
defparam debug_num_3_triBus4_5_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_5_.operation_mode = "output";
defparam debug_num_3_triBus4_5_.output_async_reset = "none";
defparam debug_num_3_triBus4_5_.output_power_up = "low";
defparam debug_num_3_triBus4_5_.output_register_mode = "none";
defparam debug_num_3_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD3
cycloneii_io debug_num_3_triBus4_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[6]));
// synopsys translate_off
defparam debug_num_3_triBus4_6_.input_async_reset = "none";
defparam debug_num_3_triBus4_6_.input_power_up = "low";
defparam debug_num_3_triBus4_6_.input_register_mode = "none";
defparam debug_num_3_triBus4_6_.input_sync_reset = "none";
defparam debug_num_3_triBus4_6_.oe_async_reset = "none";
defparam debug_num_3_triBus4_6_.oe_power_up = "low";
defparam debug_num_3_triBus4_6_.oe_register_mode = "none";
defparam debug_num_3_triBus4_6_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_6_.operation_mode = "output";
defparam debug_num_3_triBus4_6_.output_async_reset = "none";
defparam debug_num_3_triBus4_6_.output_power_up = "low";
defparam debug_num_3_triBus4_6_.output_register_mode = "none";
defparam debug_num_3_triBus4_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D9
cycloneii_io debug_num_3_triBus4_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[7]));
// synopsys translate_off
defparam debug_num_3_triBus4_7_.input_async_reset = "none";
defparam debug_num_3_triBus4_7_.input_power_up = "low";
defparam debug_num_3_triBus4_7_.input_register_mode = "none";
defparam debug_num_3_triBus4_7_.input_sync_reset = "none";
defparam debug_num_3_triBus4_7_.oe_async_reset = "none";
defparam debug_num_3_triBus4_7_.oe_power_up = "low";
defparam debug_num_3_triBus4_7_.oe_register_mode = "none";
defparam debug_num_3_triBus4_7_.oe_sync_reset = "none";
defparam debug_num_3_triBus4_7_.operation_mode = "output";
defparam debug_num_3_triBus4_7_.output_async_reset = "none";
defparam debug_num_3_triBus4_7_.output_power_up = "low";
defparam debug_num_3_triBus4_7_.output_register_mode = "none";
defparam debug_num_3_triBus4_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U7
cycloneii_io debug_num_4_triBus5_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_triBus5_0_.input_async_reset = "none";
defparam debug_num_4_triBus5_0_.input_power_up = "low";
defparam debug_num_4_triBus5_0_.input_register_mode = "none";
defparam debug_num_4_triBus5_0_.input_sync_reset = "none";
defparam debug_num_4_triBus5_0_.oe_async_reset = "none";
defparam debug_num_4_triBus5_0_.oe_power_up = "low";
defparam debug_num_4_triBus5_0_.oe_register_mode = "none";
defparam debug_num_4_triBus5_0_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_0_.operation_mode = "output";
defparam debug_num_4_triBus5_0_.output_async_reset = "none";
defparam debug_num_4_triBus5_0_.output_power_up = "low";
defparam debug_num_4_triBus5_0_.output_register_mode = "none";
defparam debug_num_4_triBus5_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA5
cycloneii_io debug_num_4_triBus5_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_triBus5_1_.input_async_reset = "none";
defparam debug_num_4_triBus5_1_.input_power_up = "low";
defparam debug_num_4_triBus5_1_.input_register_mode = "none";
defparam debug_num_4_triBus5_1_.input_sync_reset = "none";
defparam debug_num_4_triBus5_1_.oe_async_reset = "none";
defparam debug_num_4_triBus5_1_.oe_power_up = "low";
defparam debug_num_4_triBus5_1_.oe_register_mode = "none";
defparam debug_num_4_triBus5_1_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_1_.operation_mode = "output";
defparam debug_num_4_triBus5_1_.output_async_reset = "none";
defparam debug_num_4_triBus5_1_.output_power_up = "low";
defparam debug_num_4_triBus5_1_.output_register_mode = "none";
defparam debug_num_4_triBus5_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W3
cycloneii_io debug_num_4_triBus5_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_triBus5_2_.input_async_reset = "none";
defparam debug_num_4_triBus5_2_.input_power_up = "low";
defparam debug_num_4_triBus5_2_.input_register_mode = "none";
defparam debug_num_4_triBus5_2_.input_sync_reset = "none";
defparam debug_num_4_triBus5_2_.oe_async_reset = "none";
defparam debug_num_4_triBus5_2_.oe_power_up = "low";
defparam debug_num_4_triBus5_2_.oe_register_mode = "none";
defparam debug_num_4_triBus5_2_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_2_.operation_mode = "output";
defparam debug_num_4_triBus5_2_.output_async_reset = "none";
defparam debug_num_4_triBus5_2_.output_power_up = "low";
defparam debug_num_4_triBus5_2_.output_register_mode = "none";
defparam debug_num_4_triBus5_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD16
cycloneii_io debug_num_4_triBus5_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_triBus5_3_.input_async_reset = "none";
defparam debug_num_4_triBus5_3_.input_power_up = "low";
defparam debug_num_4_triBus5_3_.input_register_mode = "none";
defparam debug_num_4_triBus5_3_.input_sync_reset = "none";
defparam debug_num_4_triBus5_3_.oe_async_reset = "none";
defparam debug_num_4_triBus5_3_.oe_power_up = "low";
defparam debug_num_4_triBus5_3_.oe_register_mode = "none";
defparam debug_num_4_triBus5_3_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_3_.operation_mode = "output";
defparam debug_num_4_triBus5_3_.output_async_reset = "none";
defparam debug_num_4_triBus5_3_.output_power_up = "low";
defparam debug_num_4_triBus5_3_.output_register_mode = "none";
defparam debug_num_4_triBus5_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE3
cycloneii_io debug_num_4_triBus5_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[4]));
// synopsys translate_off
defparam debug_num_4_triBus5_4_.input_async_reset = "none";
defparam debug_num_4_triBus5_4_.input_power_up = "low";
defparam debug_num_4_triBus5_4_.input_register_mode = "none";
defparam debug_num_4_triBus5_4_.input_sync_reset = "none";
defparam debug_num_4_triBus5_4_.oe_async_reset = "none";
defparam debug_num_4_triBus5_4_.oe_power_up = "low";
defparam debug_num_4_triBus5_4_.oe_register_mode = "none";
defparam debug_num_4_triBus5_4_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_4_.operation_mode = "output";
defparam debug_num_4_triBus5_4_.output_async_reset = "none";
defparam debug_num_4_triBus5_4_.output_power_up = "low";
defparam debug_num_4_triBus5_4_.output_register_mode = "none";
defparam debug_num_4_triBus5_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C2
cycloneii_io debug_num_4_triBus5_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[5]));
// synopsys translate_off
defparam debug_num_4_triBus5_5_.input_async_reset = "none";
defparam debug_num_4_triBus5_5_.input_power_up = "low";
defparam debug_num_4_triBus5_5_.input_register_mode = "none";
defparam debug_num_4_triBus5_5_.input_sync_reset = "none";
defparam debug_num_4_triBus5_5_.oe_async_reset = "none";
defparam debug_num_4_triBus5_5_.oe_power_up = "low";
defparam debug_num_4_triBus5_5_.oe_register_mode = "none";
defparam debug_num_4_triBus5_5_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_5_.operation_mode = "output";
defparam debug_num_4_triBus5_5_.output_async_reset = "none";
defparam debug_num_4_triBus5_5_.output_power_up = "low";
defparam debug_num_4_triBus5_5_.output_register_mode = "none";
defparam debug_num_4_triBus5_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD23
cycloneii_io debug_num_4_triBus5_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[6]));
// synopsys translate_off
defparam debug_num_4_triBus5_6_.input_async_reset = "none";
defparam debug_num_4_triBus5_6_.input_power_up = "low";
defparam debug_num_4_triBus5_6_.input_register_mode = "none";
defparam debug_num_4_triBus5_6_.input_sync_reset = "none";
defparam debug_num_4_triBus5_6_.oe_async_reset = "none";
defparam debug_num_4_triBus5_6_.oe_power_up = "low";
defparam debug_num_4_triBus5_6_.oe_register_mode = "none";
defparam debug_num_4_triBus5_6_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_6_.operation_mode = "output";
defparam debug_num_4_triBus5_6_.output_async_reset = "none";
defparam debug_num_4_triBus5_6_.output_power_up = "low";
defparam debug_num_4_triBus5_6_.output_register_mode = "none";
defparam debug_num_4_triBus5_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G16
cycloneii_io debug_num_4_triBus5_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[7]));
// synopsys translate_off
defparam debug_num_4_triBus5_7_.input_async_reset = "none";
defparam debug_num_4_triBus5_7_.input_power_up = "low";
defparam debug_num_4_triBus5_7_.input_register_mode = "none";
defparam debug_num_4_triBus5_7_.input_sync_reset = "none";
defparam debug_num_4_triBus5_7_.oe_async_reset = "none";
defparam debug_num_4_triBus5_7_.oe_power_up = "low";
defparam debug_num_4_triBus5_7_.oe_register_mode = "none";
defparam debug_num_4_triBus5_7_.oe_sync_reset = "none";
defparam debug_num_4_triBus5_7_.operation_mode = "output";
defparam debug_num_4_triBus5_7_.output_async_reset = "none";
defparam debug_num_4_triBus5_7_.output_power_up = "low";
defparam debug_num_4_triBus5_7_.output_register_mode = "none";
defparam debug_num_4_triBus5_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M3
cycloneii_io debug_num_5_triBus6_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_triBus6_0_.input_async_reset = "none";
defparam debug_num_5_triBus6_0_.input_power_up = "low";
defparam debug_num_5_triBus6_0_.input_register_mode = "none";
defparam debug_num_5_triBus6_0_.input_sync_reset = "none";
defparam debug_num_5_triBus6_0_.oe_async_reset = "none";
defparam debug_num_5_triBus6_0_.oe_power_up = "low";
defparam debug_num_5_triBus6_0_.oe_register_mode = "none";
defparam debug_num_5_triBus6_0_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_0_.operation_mode = "output";
defparam debug_num_5_triBus6_0_.output_async_reset = "none";
defparam debug_num_5_triBus6_0_.output_power_up = "low";
defparam debug_num_5_triBus6_0_.output_register_mode = "none";
defparam debug_num_5_triBus6_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W8
cycloneii_io debug_num_5_triBus6_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_triBus6_1_.input_async_reset = "none";
defparam debug_num_5_triBus6_1_.input_power_up = "low";
defparam debug_num_5_triBus6_1_.input_register_mode = "none";
defparam debug_num_5_triBus6_1_.input_sync_reset = "none";
defparam debug_num_5_triBus6_1_.oe_async_reset = "none";
defparam debug_num_5_triBus6_1_.oe_power_up = "low";
defparam debug_num_5_triBus6_1_.oe_register_mode = "none";
defparam debug_num_5_triBus6_1_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_1_.operation_mode = "output";
defparam debug_num_5_triBus6_1_.output_async_reset = "none";
defparam debug_num_5_triBus6_1_.output_power_up = "low";
defparam debug_num_5_triBus6_1_.output_register_mode = "none";
defparam debug_num_5_triBus6_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J21
cycloneii_io debug_num_5_triBus6_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_triBus6_2_.input_async_reset = "none";
defparam debug_num_5_triBus6_2_.input_power_up = "low";
defparam debug_num_5_triBus6_2_.input_register_mode = "none";
defparam debug_num_5_triBus6_2_.input_sync_reset = "none";
defparam debug_num_5_triBus6_2_.oe_async_reset = "none";
defparam debug_num_5_triBus6_2_.oe_power_up = "low";
defparam debug_num_5_triBus6_2_.oe_register_mode = "none";
defparam debug_num_5_triBus6_2_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_2_.operation_mode = "output";
defparam debug_num_5_triBus6_2_.output_async_reset = "none";
defparam debug_num_5_triBus6_2_.output_power_up = "low";
defparam debug_num_5_triBus6_2_.output_register_mode = "none";
defparam debug_num_5_triBus6_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE23
cycloneii_io debug_num_5_triBus6_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_triBus6_3_.input_async_reset = "none";
defparam debug_num_5_triBus6_3_.input_power_up = "low";
defparam debug_num_5_triBus6_3_.input_register_mode = "none";
defparam debug_num_5_triBus6_3_.input_sync_reset = "none";
defparam debug_num_5_triBus6_3_.oe_async_reset = "none";
defparam debug_num_5_triBus6_3_.oe_power_up = "low";
defparam debug_num_5_triBus6_3_.oe_register_mode = "none";
defparam debug_num_5_triBus6_3_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_3_.operation_mode = "output";
defparam debug_num_5_triBus6_3_.output_async_reset = "none";
defparam debug_num_5_triBus6_3_.output_power_up = "low";
defparam debug_num_5_triBus6_3_.output_register_mode = "none";
defparam debug_num_5_triBus6_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G14
cycloneii_io debug_num_5_triBus6_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[4]));
// synopsys translate_off
defparam debug_num_5_triBus6_4_.input_async_reset = "none";
defparam debug_num_5_triBus6_4_.input_power_up = "low";
defparam debug_num_5_triBus6_4_.input_register_mode = "none";
defparam debug_num_5_triBus6_4_.input_sync_reset = "none";
defparam debug_num_5_triBus6_4_.oe_async_reset = "none";
defparam debug_num_5_triBus6_4_.oe_power_up = "low";
defparam debug_num_5_triBus6_4_.oe_register_mode = "none";
defparam debug_num_5_triBus6_4_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_4_.operation_mode = "output";
defparam debug_num_5_triBus6_4_.output_async_reset = "none";
defparam debug_num_5_triBus6_4_.output_power_up = "low";
defparam debug_num_5_triBus6_4_.output_register_mode = "none";
defparam debug_num_5_triBus6_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F10
cycloneii_io debug_num_5_triBus6_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[5]));
// synopsys translate_off
defparam debug_num_5_triBus6_5_.input_async_reset = "none";
defparam debug_num_5_triBus6_5_.input_power_up = "low";
defparam debug_num_5_triBus6_5_.input_register_mode = "none";
defparam debug_num_5_triBus6_5_.input_sync_reset = "none";
defparam debug_num_5_triBus6_5_.oe_async_reset = "none";
defparam debug_num_5_triBus6_5_.oe_power_up = "low";
defparam debug_num_5_triBus6_5_.oe_register_mode = "none";
defparam debug_num_5_triBus6_5_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_5_.operation_mode = "output";
defparam debug_num_5_triBus6_5_.output_async_reset = "none";
defparam debug_num_5_triBus6_5_.output_power_up = "low";
defparam debug_num_5_triBus6_5_.output_register_mode = "none";
defparam debug_num_5_triBus6_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G11
cycloneii_io debug_num_5_triBus6_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[6]));
// synopsys translate_off
defparam debug_num_5_triBus6_6_.input_async_reset = "none";
defparam debug_num_5_triBus6_6_.input_power_up = "low";
defparam debug_num_5_triBus6_6_.input_register_mode = "none";
defparam debug_num_5_triBus6_6_.input_sync_reset = "none";
defparam debug_num_5_triBus6_6_.oe_async_reset = "none";
defparam debug_num_5_triBus6_6_.oe_power_up = "low";
defparam debug_num_5_triBus6_6_.oe_register_mode = "none";
defparam debug_num_5_triBus6_6_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_6_.operation_mode = "output";
defparam debug_num_5_triBus6_6_.output_async_reset = "none";
defparam debug_num_5_triBus6_6_.output_power_up = "low";
defparam debug_num_5_triBus6_6_.output_register_mode = "none";
defparam debug_num_5_triBus6_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA24
cycloneii_io debug_num_5_triBus6_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[7]));
// synopsys translate_off
defparam debug_num_5_triBus6_7_.input_async_reset = "none";
defparam debug_num_5_triBus6_7_.input_power_up = "low";
defparam debug_num_5_triBus6_7_.input_register_mode = "none";
defparam debug_num_5_triBus6_7_.input_sync_reset = "none";
defparam debug_num_5_triBus6_7_.oe_async_reset = "none";
defparam debug_num_5_triBus6_7_.oe_power_up = "low";
defparam debug_num_5_triBus6_7_.oe_register_mode = "none";
defparam debug_num_5_triBus6_7_.oe_sync_reset = "none";
defparam debug_num_5_triBus6_7_.operation_mode = "output";
defparam debug_num_5_triBus6_7_.output_async_reset = "none";
defparam debug_num_5_triBus6_7_.output_power_up = "low";
defparam debug_num_5_triBus6_7_.output_register_mode = "none";
defparam debug_num_5_triBus6_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W1
cycloneii_io debug_num_6_triBus7_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[0]));
// synopsys translate_off
defparam debug_num_6_triBus7_0_.input_async_reset = "none";
defparam debug_num_6_triBus7_0_.input_power_up = "low";
defparam debug_num_6_triBus7_0_.input_register_mode = "none";
defparam debug_num_6_triBus7_0_.input_sync_reset = "none";
defparam debug_num_6_triBus7_0_.oe_async_reset = "none";
defparam debug_num_6_triBus7_0_.oe_power_up = "low";
defparam debug_num_6_triBus7_0_.oe_register_mode = "none";
defparam debug_num_6_triBus7_0_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_0_.operation_mode = "output";
defparam debug_num_6_triBus7_0_.output_async_reset = "none";
defparam debug_num_6_triBus7_0_.output_power_up = "low";
defparam debug_num_6_triBus7_0_.output_register_mode = "none";
defparam debug_num_6_triBus7_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE18
cycloneii_io debug_num_6_triBus7_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[1]));
// synopsys translate_off
defparam debug_num_6_triBus7_1_.input_async_reset = "none";
defparam debug_num_6_triBus7_1_.input_power_up = "low";
defparam debug_num_6_triBus7_1_.input_register_mode = "none";
defparam debug_num_6_triBus7_1_.input_sync_reset = "none";
defparam debug_num_6_triBus7_1_.oe_async_reset = "none";
defparam debug_num_6_triBus7_1_.oe_power_up = "low";
defparam debug_num_6_triBus7_1_.oe_register_mode = "none";
defparam debug_num_6_triBus7_1_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_1_.operation_mode = "output";
defparam debug_num_6_triBus7_1_.output_async_reset = "none";
defparam debug_num_6_triBus7_1_.output_power_up = "low";
defparam debug_num_6_triBus7_1_.output_register_mode = "none";
defparam debug_num_6_triBus7_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA15
cycloneii_io debug_num_6_triBus7_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[2]));
// synopsys translate_off
defparam debug_num_6_triBus7_2_.input_async_reset = "none";
defparam debug_num_6_triBus7_2_.input_power_up = "low";
defparam debug_num_6_triBus7_2_.input_register_mode = "none";
defparam debug_num_6_triBus7_2_.input_sync_reset = "none";
defparam debug_num_6_triBus7_2_.oe_async_reset = "none";
defparam debug_num_6_triBus7_2_.oe_power_up = "low";
defparam debug_num_6_triBus7_2_.oe_register_mode = "none";
defparam debug_num_6_triBus7_2_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_2_.operation_mode = "output";
defparam debug_num_6_triBus7_2_.output_async_reset = "none";
defparam debug_num_6_triBus7_2_.output_power_up = "low";
defparam debug_num_6_triBus7_2_.output_register_mode = "none";
defparam debug_num_6_triBus7_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC9
cycloneii_io debug_num_6_triBus7_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[3]));
// synopsys translate_off
defparam debug_num_6_triBus7_3_.input_async_reset = "none";
defparam debug_num_6_triBus7_3_.input_power_up = "low";
defparam debug_num_6_triBus7_3_.input_register_mode = "none";
defparam debug_num_6_triBus7_3_.input_sync_reset = "none";
defparam debug_num_6_triBus7_3_.oe_async_reset = "none";
defparam debug_num_6_triBus7_3_.oe_power_up = "low";
defparam debug_num_6_triBus7_3_.oe_register_mode = "none";
defparam debug_num_6_triBus7_3_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_3_.operation_mode = "output";
defparam debug_num_6_triBus7_3_.output_async_reset = "none";
defparam debug_num_6_triBus7_3_.output_power_up = "low";
defparam debug_num_6_triBus7_3_.output_register_mode = "none";
defparam debug_num_6_triBus7_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y10
cycloneii_io debug_num_6_triBus7_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[4]));
// synopsys translate_off
defparam debug_num_6_triBus7_4_.input_async_reset = "none";
defparam debug_num_6_triBus7_4_.input_power_up = "low";
defparam debug_num_6_triBus7_4_.input_register_mode = "none";
defparam debug_num_6_triBus7_4_.input_sync_reset = "none";
defparam debug_num_6_triBus7_4_.oe_async_reset = "none";
defparam debug_num_6_triBus7_4_.oe_power_up = "low";
defparam debug_num_6_triBus7_4_.oe_register_mode = "none";
defparam debug_num_6_triBus7_4_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_4_.operation_mode = "output";
defparam debug_num_6_triBus7_4_.output_async_reset = "none";
defparam debug_num_6_triBus7_4_.output_power_up = "low";
defparam debug_num_6_triBus7_4_.output_register_mode = "none";
defparam debug_num_6_triBus7_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE5
cycloneii_io debug_num_6_triBus7_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[5]));
// synopsys translate_off
defparam debug_num_6_triBus7_5_.input_async_reset = "none";
defparam debug_num_6_triBus7_5_.input_power_up = "low";
defparam debug_num_6_triBus7_5_.input_register_mode = "none";
defparam debug_num_6_triBus7_5_.input_sync_reset = "none";
defparam debug_num_6_triBus7_5_.oe_async_reset = "none";
defparam debug_num_6_triBus7_5_.oe_power_up = "low";
defparam debug_num_6_triBus7_5_.oe_register_mode = "none";
defparam debug_num_6_triBus7_5_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_5_.operation_mode = "output";
defparam debug_num_6_triBus7_5_.output_async_reset = "none";
defparam debug_num_6_triBus7_5_.output_power_up = "low";
defparam debug_num_6_triBus7_5_.output_register_mode = "none";
defparam debug_num_6_triBus7_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y16
cycloneii_io debug_num_6_triBus7_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[6]));
// synopsys translate_off
defparam debug_num_6_triBus7_6_.input_async_reset = "none";
defparam debug_num_6_triBus7_6_.input_power_up = "low";
defparam debug_num_6_triBus7_6_.input_register_mode = "none";
defparam debug_num_6_triBus7_6_.input_sync_reset = "none";
defparam debug_num_6_triBus7_6_.oe_async_reset = "none";
defparam debug_num_6_triBus7_6_.oe_power_up = "low";
defparam debug_num_6_triBus7_6_.oe_register_mode = "none";
defparam debug_num_6_triBus7_6_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_6_.operation_mode = "output";
defparam debug_num_6_triBus7_6_.output_async_reset = "none";
defparam debug_num_6_triBus7_6_.output_power_up = "low";
defparam debug_num_6_triBus7_6_.output_register_mode = "none";
defparam debug_num_6_triBus7_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B10
cycloneii_io debug_num_6_triBus7_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_6[7]));
// synopsys translate_off
defparam debug_num_6_triBus7_7_.input_async_reset = "none";
defparam debug_num_6_triBus7_7_.input_power_up = "low";
defparam debug_num_6_triBus7_7_.input_register_mode = "none";
defparam debug_num_6_triBus7_7_.input_sync_reset = "none";
defparam debug_num_6_triBus7_7_.oe_async_reset = "none";
defparam debug_num_6_triBus7_7_.oe_power_up = "low";
defparam debug_num_6_triBus7_7_.oe_register_mode = "none";
defparam debug_num_6_triBus7_7_.oe_sync_reset = "none";
defparam debug_num_6_triBus7_7_.operation_mode = "output";
defparam debug_num_6_triBus7_7_.output_async_reset = "none";
defparam debug_num_6_triBus7_7_.output_power_up = "low";
defparam debug_num_6_triBus7_7_.output_register_mode = "none";
defparam debug_num_6_triBus7_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L7
cycloneii_io debug_num_7_triBus8_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[0]));
// synopsys translate_off
defparam debug_num_7_triBus8_0_.input_async_reset = "none";
defparam debug_num_7_triBus8_0_.input_power_up = "low";
defparam debug_num_7_triBus8_0_.input_register_mode = "none";
defparam debug_num_7_triBus8_0_.input_sync_reset = "none";
defparam debug_num_7_triBus8_0_.oe_async_reset = "none";
defparam debug_num_7_triBus8_0_.oe_power_up = "low";
defparam debug_num_7_triBus8_0_.oe_register_mode = "none";
defparam debug_num_7_triBus8_0_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_0_.operation_mode = "output";
defparam debug_num_7_triBus8_0_.output_async_reset = "none";
defparam debug_num_7_triBus8_0_.output_power_up = "low";
defparam debug_num_7_triBus8_0_.output_register_mode = "none";
defparam debug_num_7_triBus8_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H8
cycloneii_io debug_num_7_triBus8_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[1]));
// synopsys translate_off
defparam debug_num_7_triBus8_1_.input_async_reset = "none";
defparam debug_num_7_triBus8_1_.input_power_up = "low";
defparam debug_num_7_triBus8_1_.input_register_mode = "none";
defparam debug_num_7_triBus8_1_.input_sync_reset = "none";
defparam debug_num_7_triBus8_1_.oe_async_reset = "none";
defparam debug_num_7_triBus8_1_.oe_power_up = "low";
defparam debug_num_7_triBus8_1_.oe_register_mode = "none";
defparam debug_num_7_triBus8_1_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_1_.operation_mode = "output";
defparam debug_num_7_triBus8_1_.output_async_reset = "none";
defparam debug_num_7_triBus8_1_.output_power_up = "low";
defparam debug_num_7_triBus8_1_.output_register_mode = "none";
defparam debug_num_7_triBus8_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC19
cycloneii_io debug_num_7_triBus8_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[2]));
// synopsys translate_off
defparam debug_num_7_triBus8_2_.input_async_reset = "none";
defparam debug_num_7_triBus8_2_.input_power_up = "low";
defparam debug_num_7_triBus8_2_.input_register_mode = "none";
defparam debug_num_7_triBus8_2_.input_sync_reset = "none";
defparam debug_num_7_triBus8_2_.oe_async_reset = "none";
defparam debug_num_7_triBus8_2_.oe_power_up = "low";
defparam debug_num_7_triBus8_2_.oe_register_mode = "none";
defparam debug_num_7_triBus8_2_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_2_.operation_mode = "output";
defparam debug_num_7_triBus8_2_.output_async_reset = "none";
defparam debug_num_7_triBus8_2_.output_power_up = "low";
defparam debug_num_7_triBus8_2_.output_register_mode = "none";
defparam debug_num_7_triBus8_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J1
cycloneii_io debug_num_7_triBus8_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[3]));
// synopsys translate_off
defparam debug_num_7_triBus8_3_.input_async_reset = "none";
defparam debug_num_7_triBus8_3_.input_power_up = "low";
defparam debug_num_7_triBus8_3_.input_register_mode = "none";
defparam debug_num_7_triBus8_3_.input_sync_reset = "none";
defparam debug_num_7_triBus8_3_.oe_async_reset = "none";
defparam debug_num_7_triBus8_3_.oe_power_up = "low";
defparam debug_num_7_triBus8_3_.oe_register_mode = "none";
defparam debug_num_7_triBus8_3_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_3_.operation_mode = "output";
defparam debug_num_7_triBus8_3_.output_async_reset = "none";
defparam debug_num_7_triBus8_3_.output_power_up = "low";
defparam debug_num_7_triBus8_3_.output_register_mode = "none";
defparam debug_num_7_triBus8_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U20
cycloneii_io debug_num_7_triBus8_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[4]));
// synopsys translate_off
defparam debug_num_7_triBus8_4_.input_async_reset = "none";
defparam debug_num_7_triBus8_4_.input_power_up = "low";
defparam debug_num_7_triBus8_4_.input_register_mode = "none";
defparam debug_num_7_triBus8_4_.input_sync_reset = "none";
defparam debug_num_7_triBus8_4_.oe_async_reset = "none";
defparam debug_num_7_triBus8_4_.oe_power_up = "low";
defparam debug_num_7_triBus8_4_.oe_register_mode = "none";
defparam debug_num_7_triBus8_4_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_4_.operation_mode = "output";
defparam debug_num_7_triBus8_4_.output_async_reset = "none";
defparam debug_num_7_triBus8_4_.output_power_up = "low";
defparam debug_num_7_triBus8_4_.output_register_mode = "none";
defparam debug_num_7_triBus8_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB1
cycloneii_io debug_num_7_triBus8_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[5]));
// synopsys translate_off
defparam debug_num_7_triBus8_5_.input_async_reset = "none";
defparam debug_num_7_triBus8_5_.input_power_up = "low";
defparam debug_num_7_triBus8_5_.input_register_mode = "none";
defparam debug_num_7_triBus8_5_.input_sync_reset = "none";
defparam debug_num_7_triBus8_5_.oe_async_reset = "none";
defparam debug_num_7_triBus8_5_.oe_power_up = "low";
defparam debug_num_7_triBus8_5_.oe_register_mode = "none";
defparam debug_num_7_triBus8_5_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_5_.operation_mode = "output";
defparam debug_num_7_triBus8_5_.output_async_reset = "none";
defparam debug_num_7_triBus8_5_.output_power_up = "low";
defparam debug_num_7_triBus8_5_.output_register_mode = "none";
defparam debug_num_7_triBus8_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G12
cycloneii_io debug_num_7_triBus8_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[6]));
// synopsys translate_off
defparam debug_num_7_triBus8_6_.input_async_reset = "none";
defparam debug_num_7_triBus8_6_.input_power_up = "low";
defparam debug_num_7_triBus8_6_.input_register_mode = "none";
defparam debug_num_7_triBus8_6_.input_sync_reset = "none";
defparam debug_num_7_triBus8_6_.oe_async_reset = "none";
defparam debug_num_7_triBus8_6_.oe_power_up = "low";
defparam debug_num_7_triBus8_6_.oe_register_mode = "none";
defparam debug_num_7_triBus8_6_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_6_.operation_mode = "output";
defparam debug_num_7_triBus8_6_.output_async_reset = "none";
defparam debug_num_7_triBus8_6_.output_power_up = "low";
defparam debug_num_7_triBus8_6_.output_register_mode = "none";
defparam debug_num_7_triBus8_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R6
cycloneii_io debug_num_7_triBus8_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_7[7]));
// synopsys translate_off
defparam debug_num_7_triBus8_7_.input_async_reset = "none";
defparam debug_num_7_triBus8_7_.input_power_up = "low";
defparam debug_num_7_triBus8_7_.input_register_mode = "none";
defparam debug_num_7_triBus8_7_.input_sync_reset = "none";
defparam debug_num_7_triBus8_7_.oe_async_reset = "none";
defparam debug_num_7_triBus8_7_.oe_power_up = "low";
defparam debug_num_7_triBus8_7_.oe_register_mode = "none";
defparam debug_num_7_triBus8_7_.oe_sync_reset = "none";
defparam debug_num_7_triBus8_7_.operation_mode = "output";
defparam debug_num_7_triBus8_7_.output_async_reset = "none";
defparam debug_num_7_triBus8_7_.output_power_up = "low";
defparam debug_num_7_triBus8_7_.output_register_mode = "none";
defparam debug_num_7_triBus8_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC18
cycloneii_io debug_num_8_triBus9_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[0]));
// synopsys translate_off
defparam debug_num_8_triBus9_0_.input_async_reset = "none";
defparam debug_num_8_triBus9_0_.input_power_up = "low";
defparam debug_num_8_triBus9_0_.input_register_mode = "none";
defparam debug_num_8_triBus9_0_.input_sync_reset = "none";
defparam debug_num_8_triBus9_0_.oe_async_reset = "none";
defparam debug_num_8_triBus9_0_.oe_power_up = "low";
defparam debug_num_8_triBus9_0_.oe_register_mode = "none";
defparam debug_num_8_triBus9_0_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_0_.operation_mode = "output";
defparam debug_num_8_triBus9_0_.output_async_reset = "none";
defparam debug_num_8_triBus9_0_.output_power_up = "low";
defparam debug_num_8_triBus9_0_.output_register_mode = "none";
defparam debug_num_8_triBus9_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF7
cycloneii_io debug_num_8_triBus9_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[1]));
// synopsys translate_off
defparam debug_num_8_triBus9_1_.input_async_reset = "none";
defparam debug_num_8_triBus9_1_.input_power_up = "low";
defparam debug_num_8_triBus9_1_.input_register_mode = "none";
defparam debug_num_8_triBus9_1_.input_sync_reset = "none";
defparam debug_num_8_triBus9_1_.oe_async_reset = "none";
defparam debug_num_8_triBus9_1_.oe_power_up = "low";
defparam debug_num_8_triBus9_1_.oe_register_mode = "none";
defparam debug_num_8_triBus9_1_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_1_.operation_mode = "output";
defparam debug_num_8_triBus9_1_.output_async_reset = "none";
defparam debug_num_8_triBus9_1_.output_power_up = "low";
defparam debug_num_8_triBus9_1_.output_register_mode = "none";
defparam debug_num_8_triBus9_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K9
cycloneii_io debug_num_8_triBus9_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[2]));
// synopsys translate_off
defparam debug_num_8_triBus9_2_.input_async_reset = "none";
defparam debug_num_8_triBus9_2_.input_power_up = "low";
defparam debug_num_8_triBus9_2_.input_register_mode = "none";
defparam debug_num_8_triBus9_2_.input_sync_reset = "none";
defparam debug_num_8_triBus9_2_.oe_async_reset = "none";
defparam debug_num_8_triBus9_2_.oe_power_up = "low";
defparam debug_num_8_triBus9_2_.oe_register_mode = "none";
defparam debug_num_8_triBus9_2_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_2_.operation_mode = "output";
defparam debug_num_8_triBus9_2_.output_async_reset = "none";
defparam debug_num_8_triBus9_2_.output_power_up = "low";
defparam debug_num_8_triBus9_2_.output_register_mode = "none";
defparam debug_num_8_triBus9_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC6
cycloneii_io debug_num_8_triBus9_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[3]));
// synopsys translate_off
defparam debug_num_8_triBus9_3_.input_async_reset = "none";
defparam debug_num_8_triBus9_3_.input_power_up = "low";
defparam debug_num_8_triBus9_3_.input_register_mode = "none";
defparam debug_num_8_triBus9_3_.input_sync_reset = "none";
defparam debug_num_8_triBus9_3_.oe_async_reset = "none";
defparam debug_num_8_triBus9_3_.oe_power_up = "low";
defparam debug_num_8_triBus9_3_.oe_register_mode = "none";
defparam debug_num_8_triBus9_3_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_3_.operation_mode = "output";
defparam debug_num_8_triBus9_3_.output_async_reset = "none";
defparam debug_num_8_triBus9_3_.output_power_up = "low";
defparam debug_num_8_triBus9_3_.output_register_mode = "none";
defparam debug_num_8_triBus9_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF6
cycloneii_io debug_num_8_triBus9_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[4]));
// synopsys translate_off
defparam debug_num_8_triBus9_4_.input_async_reset = "none";
defparam debug_num_8_triBus9_4_.input_power_up = "low";
defparam debug_num_8_triBus9_4_.input_register_mode = "none";
defparam debug_num_8_triBus9_4_.input_sync_reset = "none";
defparam debug_num_8_triBus9_4_.oe_async_reset = "none";
defparam debug_num_8_triBus9_4_.oe_power_up = "low";
defparam debug_num_8_triBus9_4_.oe_register_mode = "none";
defparam debug_num_8_triBus9_4_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_4_.operation_mode = "output";
defparam debug_num_8_triBus9_4_.output_async_reset = "none";
defparam debug_num_8_triBus9_4_.output_power_up = "low";
defparam debug_num_8_triBus9_4_.output_register_mode = "none";
defparam debug_num_8_triBus9_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC17
cycloneii_io debug_num_8_triBus9_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[5]));
// synopsys translate_off
defparam debug_num_8_triBus9_5_.input_async_reset = "none";
defparam debug_num_8_triBus9_5_.input_power_up = "low";
defparam debug_num_8_triBus9_5_.input_register_mode = "none";
defparam debug_num_8_triBus9_5_.input_sync_reset = "none";
defparam debug_num_8_triBus9_5_.oe_async_reset = "none";
defparam debug_num_8_triBus9_5_.oe_power_up = "low";
defparam debug_num_8_triBus9_5_.oe_register_mode = "none";
defparam debug_num_8_triBus9_5_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_5_.operation_mode = "output";
defparam debug_num_8_triBus9_5_.output_async_reset = "none";
defparam debug_num_8_triBus9_5_.output_power_up = "low";
defparam debug_num_8_triBus9_5_.output_register_mode = "none";
defparam debug_num_8_triBus9_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H17
cycloneii_io debug_num_8_triBus9_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[6]));
// synopsys translate_off
defparam debug_num_8_triBus9_6_.input_async_reset = "none";
defparam debug_num_8_triBus9_6_.input_power_up = "low";
defparam debug_num_8_triBus9_6_.input_register_mode = "none";
defparam debug_num_8_triBus9_6_.input_sync_reset = "none";
defparam debug_num_8_triBus9_6_.oe_async_reset = "none";
defparam debug_num_8_triBus9_6_.oe_power_up = "low";
defparam debug_num_8_triBus9_6_.oe_register_mode = "none";
defparam debug_num_8_triBus9_6_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_6_.operation_mode = "output";
defparam debug_num_8_triBus9_6_.output_async_reset = "none";
defparam debug_num_8_triBus9_6_.output_power_up = "low";
defparam debug_num_8_triBus9_6_.output_register_mode = "none";
defparam debug_num_8_triBus9_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T10
cycloneii_io debug_num_8_triBus9_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_8[7]));
// synopsys translate_off
defparam debug_num_8_triBus9_7_.input_async_reset = "none";
defparam debug_num_8_triBus9_7_.input_power_up = "low";
defparam debug_num_8_triBus9_7_.input_register_mode = "none";
defparam debug_num_8_triBus9_7_.input_sync_reset = "none";
defparam debug_num_8_triBus9_7_.oe_async_reset = "none";
defparam debug_num_8_triBus9_7_.oe_power_up = "low";
defparam debug_num_8_triBus9_7_.oe_register_mode = "none";
defparam debug_num_8_triBus9_7_.oe_sync_reset = "none";
defparam debug_num_8_triBus9_7_.operation_mode = "output";
defparam debug_num_8_triBus9_7_.output_async_reset = "none";
defparam debug_num_8_triBus9_7_.output_power_up = "low";
defparam debug_num_8_triBus9_7_.output_register_mode = "none";
defparam debug_num_8_triBus9_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D18
cycloneii_io ix63886z43919(
	.datain(nx63886z1),
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
	.padio(o_dir[0]));
// synopsys translate_off
defparam ix63886z43919.input_async_reset = "none";
defparam ix63886z43919.input_power_up = "low";
defparam ix63886z43919.input_register_mode = "none";
defparam ix63886z43919.input_sync_reset = "none";
defparam ix63886z43919.oe_async_reset = "none";
defparam ix63886z43919.oe_power_up = "low";
defparam ix63886z43919.oe_register_mode = "none";
defparam ix63886z43919.oe_sync_reset = "none";
defparam ix63886z43919.operation_mode = "output";
defparam ix63886z43919.output_async_reset = "none";
defparam ix63886z43919.output_power_up = "low";
defparam ix63886z43919.output_register_mode = "none";
defparam ix63886z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L25
cycloneii_io ix62889z43919(
	.datain(nx62889z1),
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
	.padio(o_dir[1]));
// synopsys translate_off
defparam ix62889z43919.input_async_reset = "none";
defparam ix62889z43919.input_power_up = "low";
defparam ix62889z43919.input_register_mode = "none";
defparam ix62889z43919.input_sync_reset = "none";
defparam ix62889z43919.oe_async_reset = "none";
defparam ix62889z43919.oe_power_up = "low";
defparam ix62889z43919.oe_register_mode = "none";
defparam ix62889z43919.oe_sync_reset = "none";
defparam ix62889z43919.operation_mode = "output";
defparam ix62889z43919.output_async_reset = "none";
defparam ix62889z43919.output_power_up = "low";
defparam ix62889z43919.output_register_mode = "none";
defparam ix62889z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L19
cycloneii_io ix61892z43919(
	.datain(nx61892z1),
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
	.padio(o_dir[2]));
// synopsys translate_off
defparam ix61892z43919.input_async_reset = "none";
defparam ix61892z43919.input_power_up = "low";
defparam ix61892z43919.input_register_mode = "none";
defparam ix61892z43919.input_sync_reset = "none";
defparam ix61892z43919.oe_async_reset = "none";
defparam ix61892z43919.oe_power_up = "low";
defparam ix61892z43919.oe_register_mode = "none";
defparam ix61892z43919.oe_sync_reset = "none";
defparam ix61892z43919.operation_mode = "output";
defparam ix61892z43919.output_async_reset = "none";
defparam ix61892z43919.output_power_up = "low";
defparam ix61892z43919.output_register_mode = "none";
defparam ix61892z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L23
cycloneii_io ix45767z43919(
	.datain(nx45767z1),
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
	.padio(o_edge));
// synopsys translate_off
defparam ix45767z43919.input_async_reset = "none";
defparam ix45767z43919.input_power_up = "low";
defparam ix45767z43919.input_register_mode = "none";
defparam ix45767z43919.input_sync_reset = "none";
defparam ix45767z43919.oe_async_reset = "none";
defparam ix45767z43919.oe_power_up = "low";
defparam ix45767z43919.oe_register_mode = "none";
defparam ix45767z43919.oe_sync_reset = "none";
defparam ix45767z43919.operation_mode = "output";
defparam ix45767z43919.output_async_reset = "none";
defparam ix45767z43919.output_power_up = "low";
defparam ix45767z43919.output_register_mode = "none";
defparam ix45767z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C19
cycloneii_io o_valid_obuf(
	.datain(o_valid_dup0),
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
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_obuf.input_async_reset = "none";
defparam o_valid_obuf.input_power_up = "low";
defparam o_valid_obuf.input_register_mode = "none";
defparam o_valid_obuf.input_sync_reset = "none";
defparam o_valid_obuf.oe_async_reset = "none";
defparam o_valid_obuf.oe_power_up = "low";
defparam o_valid_obuf.oe_register_mode = "none";
defparam o_valid_obuf.oe_sync_reset = "none";
defparam o_valid_obuf.operation_mode = "output";
defparam o_valid_obuf.output_async_reset = "none";
defparam o_valid_obuf.output_power_up = "low";
defparam o_valid_obuf.output_register_mode = "none";
defparam o_valid_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA26
cycloneii_io o_mode_obuf_0_(
	.datain(o_mode_dup0_0_),
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
	.padio(o_mode[0]));
// synopsys translate_off
defparam o_mode_obuf_0_.input_async_reset = "none";
defparam o_mode_obuf_0_.input_power_up = "low";
defparam o_mode_obuf_0_.input_register_mode = "none";
defparam o_mode_obuf_0_.input_sync_reset = "none";
defparam o_mode_obuf_0_.oe_async_reset = "none";
defparam o_mode_obuf_0_.oe_power_up = "low";
defparam o_mode_obuf_0_.oe_register_mode = "none";
defparam o_mode_obuf_0_.oe_sync_reset = "none";
defparam o_mode_obuf_0_.operation_mode = "output";
defparam o_mode_obuf_0_.output_async_reset = "none";
defparam o_mode_obuf_0_.output_power_up = "low";
defparam o_mode_obuf_0_.output_register_mode = "none";
defparam o_mode_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB26
cycloneii_io o_mode_obuf_1_(
	.datain(o_mode_dup0_1_),
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
	.padio(o_mode[1]));
// synopsys translate_off
defparam o_mode_obuf_1_.input_async_reset = "none";
defparam o_mode_obuf_1_.input_power_up = "low";
defparam o_mode_obuf_1_.input_register_mode = "none";
defparam o_mode_obuf_1_.input_sync_reset = "none";
defparam o_mode_obuf_1_.oe_async_reset = "none";
defparam o_mode_obuf_1_.oe_power_up = "low";
defparam o_mode_obuf_1_.oe_register_mode = "none";
defparam o_mode_obuf_1_.oe_sync_reset = "none";
defparam o_mode_obuf_1_.operation_mode = "output";
defparam o_mode_obuf_1_.output_async_reset = "none";
defparam o_mode_obuf_1_.output_power_up = "low";
defparam o_mode_obuf_1_.output_register_mode = "none";
defparam o_mode_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F7
cycloneii_io ix16335z43919(
	.datain(nx16335z1),
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
	.padio(o_row[0]));
// synopsys translate_off
defparam ix16335z43919.input_async_reset = "none";
defparam ix16335z43919.input_power_up = "low";
defparam ix16335z43919.input_register_mode = "none";
defparam ix16335z43919.input_sync_reset = "none";
defparam ix16335z43919.oe_async_reset = "none";
defparam ix16335z43919.oe_power_up = "low";
defparam ix16335z43919.oe_register_mode = "none";
defparam ix16335z43919.oe_sync_reset = "none";
defparam ix16335z43919.operation_mode = "output";
defparam ix16335z43919.output_async_reset = "none";
defparam ix16335z43919.output_power_up = "low";
defparam ix16335z43919.output_register_mode = "none";
defparam ix16335z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T20
cycloneii_io ix17332z43919(
	.datain(nx17332z1),
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
	.padio(o_row[1]));
// synopsys translate_off
defparam ix17332z43919.input_async_reset = "none";
defparam ix17332z43919.input_power_up = "low";
defparam ix17332z43919.input_register_mode = "none";
defparam ix17332z43919.input_sync_reset = "none";
defparam ix17332z43919.oe_async_reset = "none";
defparam ix17332z43919.oe_power_up = "low";
defparam ix17332z43919.oe_register_mode = "none";
defparam ix17332z43919.oe_sync_reset = "none";
defparam ix17332z43919.operation_mode = "output";
defparam ix17332z43919.output_async_reset = "none";
defparam ix17332z43919.output_power_up = "low";
defparam ix17332z43919.output_register_mode = "none";
defparam ix17332z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W25
cycloneii_io ix18329z43919(
	.datain(nx18329z1),
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
	.padio(o_row[2]));
// synopsys translate_off
defparam ix18329z43919.input_async_reset = "none";
defparam ix18329z43919.input_power_up = "low";
defparam ix18329z43919.input_register_mode = "none";
defparam ix18329z43919.input_sync_reset = "none";
defparam ix18329z43919.oe_async_reset = "none";
defparam ix18329z43919.oe_power_up = "low";
defparam ix18329z43919.oe_register_mode = "none";
defparam ix18329z43919.oe_sync_reset = "none";
defparam ix18329z43919.operation_mode = "output";
defparam ix18329z43919.output_async_reset = "none";
defparam ix18329z43919.output_power_up = "low";
defparam ix18329z43919.output_register_mode = "none";
defparam ix18329z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA6
cycloneii_io ix19326z43919(
	.datain(nx19326z1),
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
	.padio(o_row[3]));
// synopsys translate_off
defparam ix19326z43919.input_async_reset = "none";
defparam ix19326z43919.input_power_up = "low";
defparam ix19326z43919.input_register_mode = "none";
defparam ix19326z43919.input_sync_reset = "none";
defparam ix19326z43919.oe_async_reset = "none";
defparam ix19326z43919.oe_power_up = "low";
defparam ix19326z43919.oe_register_mode = "none";
defparam ix19326z43919.oe_sync_reset = "none";
defparam ix19326z43919.operation_mode = "output";
defparam ix19326z43919.output_async_reset = "none";
defparam ix19326z43919.output_power_up = "low";
defparam ix19326z43919.output_register_mode = "none";
defparam ix19326z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB20
cycloneii_io ix20323z43919(
	.datain(nx20323z1),
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
	.padio(o_row[4]));
// synopsys translate_off
defparam ix20323z43919.input_async_reset = "none";
defparam ix20323z43919.input_power_up = "low";
defparam ix20323z43919.input_register_mode = "none";
defparam ix20323z43919.input_sync_reset = "none";
defparam ix20323z43919.oe_async_reset = "none";
defparam ix20323z43919.oe_power_up = "low";
defparam ix20323z43919.oe_register_mode = "none";
defparam ix20323z43919.oe_sync_reset = "none";
defparam ix20323z43919.operation_mode = "output";
defparam ix20323z43919.output_async_reset = "none";
defparam ix20323z43919.output_power_up = "low";
defparam ix20323z43919.output_register_mode = "none";
defparam ix20323z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB4
cycloneii_io ix21320z43919(
	.datain(nx21320z1),
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
	.padio(o_row[5]));
// synopsys translate_off
defparam ix21320z43919.input_async_reset = "none";
defparam ix21320z43919.input_power_up = "low";
defparam ix21320z43919.input_register_mode = "none";
defparam ix21320z43919.input_sync_reset = "none";
defparam ix21320z43919.oe_async_reset = "none";
defparam ix21320z43919.oe_power_up = "low";
defparam ix21320z43919.oe_register_mode = "none";
defparam ix21320z43919.oe_sync_reset = "none";
defparam ix21320z43919.operation_mode = "output";
defparam ix21320z43919.output_async_reset = "none";
defparam ix21320z43919.output_power_up = "low";
defparam ix21320z43919.output_register_mode = "none";
defparam ix21320z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E5
cycloneii_io ix22317z43919(
	.datain(nx22317z1),
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
	.padio(o_row[6]));
// synopsys translate_off
defparam ix22317z43919.input_async_reset = "none";
defparam ix22317z43919.input_power_up = "low";
defparam ix22317z43919.input_register_mode = "none";
defparam ix22317z43919.input_sync_reset = "none";
defparam ix22317z43919.oe_async_reset = "none";
defparam ix22317z43919.oe_power_up = "low";
defparam ix22317z43919.oe_register_mode = "none";
defparam ix22317z43919.oe_sync_reset = "none";
defparam ix22317z43919.operation_mode = "output";
defparam ix22317z43919.output_async_reset = "none";
defparam ix22317z43919.output_power_up = "low";
defparam ix22317z43919.output_register_mode = "none";
defparam ix22317z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD24
cycloneii_io ix23314z43919(
	.datain(nx23314z1),
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
	.padio(o_row[7]));
// synopsys translate_off
defparam ix23314z43919.input_async_reset = "none";
defparam ix23314z43919.input_power_up = "low";
defparam ix23314z43919.input_register_mode = "none";
defparam ix23314z43919.input_sync_reset = "none";
defparam ix23314z43919.oe_async_reset = "none";
defparam ix23314z43919.oe_power_up = "low";
defparam ix23314z43919.oe_register_mode = "none";
defparam ix23314z43919.oe_sync_reset = "none";
defparam ix23314z43919.operation_mode = "output";
defparam ix23314z43919.output_async_reset = "none";
defparam ix23314z43919.output_power_up = "low";
defparam ix23314z43919.output_register_mode = "none";
defparam ix23314z43919.output_sync_reset = "none";
// synopsys translate_on

endmodule
