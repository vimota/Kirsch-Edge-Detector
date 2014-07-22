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

// DATE "07/22/2014 01:29:50"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	o_image0_0_,
	o_image0_1_,
	o_image0_2_,
	o_image1_0_,
	o_image1_1_,
	o_image1_2_,
	o_image2_0_,
	o_image2_1_,
	o_image2_2_,
	debug_key,
	debug_switch,
	debug_column,
	debug_led_red,
	debug_led_grn,
	debug_valid,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5,
	debug_num_6,
	debug_num_7,
	debug_num_8);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
output 	[7:0] o_image0_0_;
output 	[7:0] o_image0_1_;
output 	[7:0] o_image0_2_;
output 	[7:0] o_image1_0_;
output 	[7:0] o_image1_1_;
output 	[7:0] o_image1_2_;
output 	[7:0] o_image2_0_;
output 	[7:0] o_image2_1_;
output 	[7:0] o_image2_2_;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[7:0] debug_column;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	debug_valid;
output 	[2:0] debug_num_0;
output 	[2:0] debug_num_1;
output 	[7:0] debug_num_2;
output 	[12:0] debug_num_3;
output 	[12:0] debug_num_4;
output 	[13:0] debug_num_5;
output 	debug_num_6;
output 	debug_num_7;
output 	debug_num_8;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire u_flow_aprev_max_9_;
wire u_flow_aprev_max_7_;
wire u_flow_aprev_max_6_;
wire u_flow_aprev_max_4_;
wire u_flow_aprev_max_1_;
wire u_flow_anx47310z6;
wire u_flow_anx47310z7;
wire u_flow_anx47310z8;
wire u_flow_anx47310z9;
wire u_flow_anx47310z5;
wire u_flow_anx26833z2;
wire u_memory_anx64575z2;
wire u_memory_anx56377z2;
wire u_memory_anx62359z2;
wire u_memory_anx62359z1;
wire u_memory_anx40106z2;
wire u_flow_ap31_11_;
wire u_flow_ap32_10_;
wire u_flow_ap32_9_;
wire u_flow_ap32_8_;
wire u_flow_ap31_7_;
wire u_flow_ap31_6_;
wire u_flow_ap32_5_;
wire u_flow_ap31_4_;
wire u_flow_ap32_3_;
wire u_flow_ap31_2_;
wire u_flow_ap31_1_;
wire u_flow_ap32_0_;
wire u_flow_ap4s_sub12_0_anx23445z2;
wire u_flow_ap4s_sub12_0_anx23445z1;
wire u_flow_ap22_11_;
wire u_flow_ap21_7_;
wire u_flow_ap21_6_;
wire u_flow_ap22_4_;
wire u_flow_ap22_2_;
wire u_flow_ap22_1_;
wire u_flow_ap23_10_;
wire u_flow_ap23_9_;
wire u_flow_ap23_8_;
wire u_flow_ap23_5_;
wire u_flow_ap23_3_;
wire u_flow_ap23_0_;
wire f_t2_next_7_;
wire u_memory_ap_o_image0_1__7_;
wire f_t2_7_;
wire f_t1_next_7_;
wire u_memory_ap_o_image0_1__6_;
wire f_t1_next_6_;
wire u_memory_ap_o_image0_2__6_;
wire f_t1_6_;
wire f_t2_next_5_;
wire u_memory_ap_o_image0_1__5_;
wire f_t2_5_;
wire f_t1_next_5_;
wire f_t2_next_4_;
wire f_t1_next_4_;
wire u_memory_ap_o_image0_2__4_;
wire f_t1_4_;
wire f_t2_next_3_;
wire u_memory_ap_o_image0_1__3_;
wire f_t2_3_;
wire f_t1_next_3_;
wire f_t1_next_2_;
wire u_memory_ap_o_image0_2__2_;
wire f_t1_2_;
wire f_t2_1_;
wire f_t1_0_;
wire u_flow_ap11_add8_0i1_anx40964z1;
wire u_flow_ap11_add8_0i1_anx41961z1;
wire u_flow_ap11_add8_0i1_anx42958z1;
wire u_flow_ap11_add8_0i1_anx23445z2;
wire u_flow_ap11_add8_0i1_anx23445z1;
wire f_t3_next_7_;
wire u_memory_ap_o_image0_0__7_;
wire f_t3_7_;
wire f_t3_6_;
wire f_t3_2_;
wire f_t3_next_1_;
wire f_t3_1_;
wire f_t3_0_;
wire u_flow_ap11_add9_1_anx38970z1;
wire f_b2_next_7_;
wire f_b2_7_;
wire f_b1_next_7_;
wire f_b1_6_;
wire f_b1_5_;
wire f_b1_4_;
wire f_b1_3_;
wire f_b1_2_;
wire f_b1_next_1_;
wire f_b1_1_;
wire f_b2_0_;
wire u_flow_ap12_add8_0i2_anx37973z1;
wire u_flow_ap12_add8_0i2_anx40964z1;
wire u_flow_ap12_add8_0i2_anx41961z1;
wire u_flow_ap12_add8_0i2_anx42958z1;
wire u_flow_ap12_add8_0i2_anx43955z1;
wire f_b3_next_7_;
wire f_b3_7_;
wire f_b3_2_;
wire f_b3_1_;
wire u_flow_ap21_sub11_4i4_anx38970z1;
wire u_flow_ap21_sub11_4i4_anx40964z1;
wire u_flow_ap21_sub11_4i4_anx41961z1;
wire u_flow_ap21_sub11_4i4_anx43955z1;
wire u_flow_ap21_sub10_4i3_anx38970z1;
wire u_flow_ap21_sub10_4i3_anx39967z1;
wire u_flow_ap21_sub10_4i3_anx41961z1;
wire u_flow_ap21_sub10_4i3_anx44952z1;
wire u_flow_ap21_sub10_4i3_anx46946z4;
wire u_flow_ap21_sub10_4i3_anx46946z1;
wire u_flow_ap21_sub10_4i3_anx23445z2;
wire u_flow_ap21_sub10_4i3_anx23445z1;
wire u_flow_ap21_add12_4i1_anx42958z1;
wire u_flow_ap21_add12_4i1_anx43955z1;
wire u_flow_ap22_sub11_4i6_anx37973z1;
wire u_flow_ap22_sub11_4i6_anx39967z1;
wire u_flow_ap22_sub11_4i6_anx40964z1;
wire u_flow_ap22_sub11_4i6_anx41961z1;
wire u_flow_ap22_sub11_4i6_anx42958z1;
wire u_flow_ap22_sub11_4i6_anx44952z1;
wire u_flow_ap22_sub11_4i6_anx45949z1;
wire u_flow_ap22_sub10_4i5_anx40964z1;
wire u_flow_ap22_sub10_4i5_anx45949z1;
wire u_flow_ap22_add12_4i2_anx37973z1;
wire u_flow_ap22_add12_4i2_anx38970z1;
wire u_flow_ap22_add12_4i2_anx40964z1;
wire u_flow_ap22_add12_4i2_anx62798z1;
wire f_i2_next_7_;
wire f_i2_7_;
wire f_i1_next_7_;
wire f_i1_7_;
wire f_i2_next_6_;
wire f_i2_6_;
wire f_i2_next_5_;
wire f_i2_5_;
wire f_i2_next_4_;
wire f_i2_4_;
wire f_i1_3_;
wire f_i2_next_2_;
wire f_i2_2_;
wire f_i1_next_1_;
wire f_i1_1_;
wire f_i2_0_;
wire u_flow_ap13_add8_0i3_anx38970z1;
wire u_flow_ap13_add8_0i3_anx42958z1;
wire u_flow_ap13_add8_0i3_anx44952z4;
wire u_flow_ap13_add8_0i3_anx44952z1;
wire u_flow_ap13_add8_0i3_anx23445z2;
wire u_flow_ap13_add8_0i3_anx23445z1;
wire u_flow_ap13_add9_3_anx39967z1;
wire u_flow_ap13_add9_3_anx41961z1;
wire u_flow_ap13_add9_3_anx45949z5;
wire u_flow_ap13_add9_3_anx44952z1;
wire u_flow_ap13_add9_3_anx45949z3;
wire u_flow_ap13_add9_3_anx45949z1;
wire u_flow_ap13_add9_3_anx23445z2;
wire u_flow_ap13_add9_3_anx23445z1;
wire f_i_mode_next_0_;
wire f_i_row_next_1_;
wire f_i_row_next_3_;
wire u_memory_ap_o_image0_1__5__afeeder_combout;
wire u_memory_ap_o_image0_1__6__afeeder_combout;
wire u_memory_ap_o_image0_1__7__afeeder_combout;
wire u_memory_ap_o_image0_2__4__afeeder_combout;
wire u_memory_ap_o_image0_2__6__afeeder_combout;
wire u_flow_ap31_11__afeeder_combout;
wire u_flow_ap31_7__afeeder_combout;
wire u_flow_ap31_6__afeeder_combout;
wire u_flow_ap31_4__afeeder_combout;
wire u_flow_ap31_2__afeeder_combout;
wire u_flow_ap31_1__afeeder_combout;
wire u_flow_ap32_10__afeeder_combout;
wire u_flow_ap32_9__afeeder_combout;
wire u_flow_ap32_5__afeeder_combout;
wire f_t1_next_7__afeeder_combout;
wire f_i2_next_7__afeeder_combout;
wire f_t1_next_6__afeeder_combout;
wire f_i2_next_6__afeeder_combout;
wire f_t1_next_5__afeeder_combout;
wire f_i2_next_5__afeeder_combout;
wire f_t1_next_4__afeeder_combout;
wire f_i2_next_4__afeeder_combout;
wire f_t1_next_3__afeeder_combout;
wire f_t1_next_2__afeeder_combout;
wire f_i2_next_2__afeeder_combout;
wire f_t2_next_7__afeeder_combout;
wire f_t2_next_5__afeeder_combout;
wire f_t2_next_4__afeeder_combout;
wire f_t2_next_3__afeeder_combout;
wire f_b1_next_7__afeeder_combout;
wire f_i1_next_7__afeeder_combout;
wire f_b1_next_1__afeeder_combout;
wire f_i1_next_1__afeeder_combout;
wire f_b2_next_7__afeeder_combout;
wire f_b3_next_7__afeeder_combout;
wire f_t3_next_7__afeeder_combout;
wire f_t3_next_1__afeeder_combout;
wire f_i_row_next_1__afeeder_combout;
wire f_i_row_next_3__afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire u_flow_astate_3__a_wirecell_combout;
wire i_reset_acombout;
wire u_memory_amodgen_counter_column_anx51271z1;
wire u_memory_amodgen_counter_column_anx58250z15_afeeder_combout;
wire u_memory_amodgen_counter_column_anx55259z1;
wire i_valid_acombout;
wire u_memory_amodgen_counter_row_anx51271z1;
wire u_memory_anx8852z1;
wire debug_valid_dup0;
wire u_memory_anot_rtlc2_X_0_n244;
wire u_memory_amodgen_counter_row_anx57253z3;
wire u_memory_amodgen_counter_row_anx58250z15;
wire u_memory_amodgen_counter_row_anx58250z14;
wire u_memory_amodgen_counter_row_anx52268z1;
wire u_memory_amodgen_counter_row_anx58250z13;
wire u_memory_amodgen_counter_row_anx58250z12;
wire u_memory_amodgen_counter_row_anx58250z10;
wire u_memory_amodgen_counter_row_anx54262z1;
wire u_memory_amodgen_counter_row_anx58250z9;
wire u_memory_amodgen_counter_row_anx58250z8;
wire u_memory_amodgen_counter_row_anx58250z6;
wire u_memory_amodgen_counter_row_anx58250z4;
wire u_memory_amodgen_counter_row_anx57253z1;
wire u_memory_amodgen_counter_row_anx58250z3;
wire u_memory_amodgen_counter_row_anx56256z1;
wire u_memory_amodgen_counter_row_anx58250z5;
wire u_memory_anx8852z6;
wire u_memory_amodgen_counter_row_anx53265z1;
wire u_memory_amodgen_counter_row_anx58250z11;
wire u_memory_amodgen_counter_row_anx55259z1;
wire u_memory_amodgen_counter_row_anx58250z7;
wire u_memory_anx8852z7;
wire u_memory_anx8852z2;
wire u_memory_anx47386z1;
wire u_memory_amodgen_counter_column_anx57253z3;
wire u_memory_amodgen_counter_column_anx58250z7;
wire u_memory_anx8852z5;
wire u_memory_amodgen_counter_column_anx58250z4;
wire u_memory_amodgen_counter_column_anx57253z1;
wire u_memory_amodgen_counter_column_anx58250z3;
wire u_memory_amodgen_counter_column_anx52268z1;
wire u_memory_amodgen_counter_column_anx58250z13;
wire u_memory_anx8852z4;
wire u_memory_anx8852z3;
wire u_memory_anx47386z2;
wire u_memory_amodgen_counter_column_anx58250z15;
wire u_memory_amodgen_counter_column_anx58250z14;
wire u_memory_amodgen_counter_column_anx58250z12;
wire u_memory_amodgen_counter_column_anx53265z1;
wire u_memory_amodgen_counter_column_anx58250z11;
wire u_memory_amodgen_counter_column_anx58250z10;
wire u_memory_amodgen_counter_column_anx58250z8;
wire u_memory_amodgen_counter_column_anx58250z6;
wire u_memory_amodgen_counter_column_anx56256z1;
wire u_memory_amodgen_counter_column_anx58250z5;
wire u_memory_anx60567z4;
wire u_memory_amodgen_counter_row_anx58250z2;
wire u_memory_amodgen_counter_row_anx58250z1;
wire u_memory_amodgen_counter_row_anx1041z1;
wire u_memory_anx60567z3;
wire u_memory_anx60567z2;
wire u_memory_anx60567z1;
wire u_memory_ap_o_valid;
wire nx64956z1;
wire f_state_3_;
wire f_state_3__a_wirecell_combout;
wire nx63959z1;
wire nx63959z1_a_wirecell_combout;
wire f_state_1_;
wire f_state_2_;
wire nx57127z2;
wire nx20836z1;
wire u_flow_ap20;
wire u_flow_ap30;
wire u_flow_ap40;
wire u_flow_anx29521z1;
wire u_flow_anx28524z1;
wire u_flow_anx28524z1_a_wirecell_combout;
wire u_flow_astate_1_;
wire u_flow_astate_2_;
wire u_flow_astate_3_;
wire u_flow_ao_valid;
wire debug_num_2_dup0_7_;
wire u_memory_anx40106z1;
wire u_memory_anx39109z3;
wire u_memory_anx39109z2;
wire u_memory_ap_debug_num_1_2_;
wire u_memory_ap_debug_num_1_0__afeeder_combout;
wire u_memory_ap_debug_num_1_0_;
wire u_memory_ap_debug_num_1_1_;
wire u_memory_aNOT_b_0_;
wire debug_num_2_dup0_0_;
wire u_memory_amodgen_counter_column_anx54262z1;
wire u_memory_amodgen_counter_column_anx58250z9;
wire u_memory_amodgen_counter_column_anx58250z2;
wire u_memory_amodgen_counter_column_anx58250z1;
wire u_memory_amodgen_counter_column_anx1041z1;
wire debug_num_2_dup0_1_;
wire debug_num_2_dup0_2_;
wire debug_num_2_dup0_3_;
wire debug_num_2_dup0_4_;
wire debug_num_2_dup0_5_;
wire debug_num_2_dup0_6_;
wire u_memory_anx63578z2;
wire u_memory_anx63578z1;
wire u_memory_ap_o_image2_0__7__afeeder_combout;
wire u_memory_ab_1_;
wire u_memory_ap_o_image2_0__7_;
wire f_b1_7_;
wire u_memory_aNOT_b_0__dup_353;
wire u_memory_anx61362z2;
wire u_memory_anx61362z1;
wire u_memory_ap_o_image2_1__6__afeeder_combout;
wire u_memory_ab_1__dup_352;
wire u_memory_ap_o_image2_1__6_;
wire f_b2_6_;
wire f_b3_next_5__afeeder_combout;
wire u_memory_ap_o_image2_2__5__afeeder_combout;
wire u_memory_anx50245z1;
wire u_memory_ap_o_image2_2__5_;
wire u_memory_ap_o_image1_2__5_;
wire nx57127z1;
wire f_b3_next_5_;
wire f_b2_next_5__afeeder_combout;
wire f_b2_next_5_;
wire u_memory_anx60365z2;
wire u_memory_anx60365z1;
wire u_memory_ap_o_image2_1__5__afeeder_combout;
wire u_memory_ap_o_image2_1__5_;
wire f_b2_5_;
wire f_b3_next_4__afeeder_combout;
wire u_memory_ap_o_image2_2__4__afeeder_combout;
wire u_memory_ap_o_image2_2__4_;
wire u_memory_ap_o_image1_2__4_;
wire f_b3_next_4_;
wire f_b2_next_4__afeeder_combout;
wire f_b2_next_4_;
wire u_memory_anx59368z2;
wire u_memory_anx59368z1;
wire u_memory_ap_o_image2_1__4__afeeder_combout;
wire u_memory_ap_o_image2_1__4_;
wire f_b2_4_;
wire f_b2_next_3__afeeder_combout;
wire u_memory_ap_o_image2_2__3__afeeder_combout;
wire u_memory_ap_o_image2_2__3_;
wire f_b2_next_3_;
wire f_b2_3_;
wire f_b3_next_2__afeeder_combout;
wire u_memory_ap_o_image2_2__2__afeeder_combout;
wire u_memory_ap_o_image2_2__2_;
wire u_memory_ap_o_image1_2__2_;
wire f_b3_next_2_;
wire f_b2_next_2__afeeder_combout;
wire f_b2_next_2_;
wire f_b2_2_;
wire u_memory_anx56377z3;
wire u_memory_anx56377z1;
wire u_memory_ap_o_image2_1__1__afeeder_combout;
wire u_memory_ap_o_image2_1__1_;
wire f_t2_next_1__afeeder_combout;
wire u_memory_anx4024z3;
wire u_memory_anx4024z2;
wire u_memory_anx4024z1;
wire u_memory_ap_o_image2_0__1__afeeder_combout;
wire u_memory_ap_o_image2_0__1_;
wire u_memory_ap_o_image1_0__1_;
wire u_memory_ap_o_image0_0__1_;
wire f_t2_next_1_;
wire f_t1_next_1__afeeder_combout;
wire u_memory_ap_o_image1_1__1__afeeder_combout;
wire u_memory_ap_o_image1_1__1_;
wire u_memory_ap_o_image0_1__1_;
wire f_t1_next_1_;
wire f_i2_next_1__afeeder_combout;
wire u_memory_ap_o_image2_2__1__afeeder_combout;
wire u_memory_ap_o_image2_2__1_;
wire u_memory_ap_o_image1_2__1_;
wire u_memory_ap_o_image0_2__1_;
wire f_i2_next_1_;
wire f_b3_next_1__afeeder_combout;
wire f_b3_next_1_;
wire f_b2_next_1__afeeder_combout;
wire f_b2_next_1_;
wire f_b2_1_;
wire f_i1_next_0__afeeder_combout;
wire u_memory_anx5021z3;
wire u_memory_anx5021z2;
wire u_memory_anx5021z1;
wire u_memory_ap_o_image2_0__0__afeeder_combout;
wire u_memory_ap_o_image2_0__0_;
wire f_i1_next_0_;
wire f_t3_next_0__afeeder_combout;
wire u_memory_ap_o_image1_0__0_;
wire f_t3_next_0_;
wire f_t2_next_0__afeeder_combout;
wire u_memory_ap_o_image0_0__0_;
wire f_t2_next_0_;
wire f_t1_next_0__afeeder_combout;
wire u_memory_anx55380z3;
wire u_memory_anx55380z2;
wire u_memory_anx55380z1;
wire u_memory_ap_o_image2_1__0__afeeder_combout;
wire u_memory_ap_o_image2_1__0_;
wire u_memory_ap_o_image1_1__0__afeeder_combout;
wire u_memory_ap_o_image1_1__0_;
wire u_memory_ap_o_image0_1__0_;
wire f_t1_next_0_;
wire f_i2_next_0__afeeder_combout;
wire u_memory_ap_o_image2_2__0__afeeder_combout;
wire u_memory_ap_o_image2_2__0_;
wire u_memory_ap_o_image1_2__0_;
wire u_memory_ap_o_image0_2__0_;
wire f_i2_next_0_;
wire f_b3_next_0__afeeder_combout;
wire f_b3_next_0_;
wire f_b2_next_0__afeeder_combout;
wire f_b2_next_0_;
wire f_b1_next_0__afeeder_combout;
wire f_b1_next_0_;
wire f_b1_0_;
wire u_flow_ap12_add8_0i2_anx44952z22;
wire u_flow_ap12_add8_0i2_anx44952z19;
wire u_flow_ap12_add8_0i2_anx44952z16;
wire u_flow_ap12_add8_0i2_anx44952z13;
wire u_flow_ap12_add8_0i2_anx44952z10;
wire u_flow_ap12_add8_0i2_anx44952z7;
wire u_flow_ap12_add8_0i2_anx44952z4;
wire u_flow_ap12_add8_0i2_anx23445z2;
wire u_flow_ap12_add8_0i2_anx23445z1;
wire u_flow_ap12_add8_0i2_anx44952z1;
wire f_b3_next_6__afeeder_combout;
wire u_memory_ap_o_image2_2__6__afeeder_combout;
wire u_memory_ap_o_image2_2__6_;
wire u_memory_ap_o_image1_2__6_;
wire f_b3_next_6_;
wire f_b3_6_;
wire f_b3_5_;
wire f_b3_4_;
wire f_i2_next_3__afeeder_combout;
wire u_memory_ap_o_image1_2__3_;
wire u_memory_ap_o_image0_2__3_;
wire f_i2_next_3_;
wire f_b3_next_3__afeeder_combout;
wire f_b3_next_3_;
wire f_b3_3_;
wire u_flow_ap12_add8_0i2_anx39967z1;
wire u_flow_ap12_add8_0i2_anx38970z1;
wire f_b3_0_;
wire u_flow_ap12_add9_2_anx45949z24;
wire u_flow_ap12_add9_2_anx45949z21;
wire u_flow_ap12_add9_2_anx45949z18;
wire u_flow_ap12_add9_2_anx45949z15;
wire u_flow_ap12_add9_2_anx45949z12;
wire u_flow_ap12_add9_2_anx45949z9;
wire u_flow_ap12_add9_2_anx45949z6;
wire u_flow_ap12_add9_2_anx45949z3;
wire u_flow_ap12_add9_2_anx23445z2;
wire u_flow_ap12_add9_2_anx23445z1;
wire u_flow_ap12_add9_2_anx45949z1;
wire u_flow_ap12_add9_2_anx44952z1;
wire u_flow_ap12_add9_2_anx43955z1;
wire u_memory_anx1033z2;
wire u_memory_anx1033z1;
wire u_memory_ap_o_image2_0__4__afeeder_combout;
wire u_memory_ap_o_image2_0__4_;
wire u_memory_ap_o_image1_0__4_;
wire u_memory_ap_o_image0_0__4_;
wire f_b1_next_4__afeeder_combout;
wire f_b1_next_4_;
wire f_i1_next_4__afeeder_combout;
wire f_i1_next_4_;
wire f_t3_next_4__afeeder_combout;
wire f_t3_next_4_;
wire f_t3_4_;
wire u_memory_anx2030z2;
wire u_memory_anx2030z1;
wire u_memory_ap_o_image2_0__3__afeeder_combout;
wire u_memory_ap_o_image2_0__3_;
wire u_memory_ap_o_image1_0__3_;
wire u_memory_ap_o_image0_0__3_;
wire f_b1_next_3__afeeder_combout;
wire u_memory_anx58371z2;
wire u_memory_anx58371z1;
wire u_memory_ap_o_image2_1__3__afeeder_combout;
wire u_memory_ap_o_image2_1__3_;
wire f_b1_next_3_;
wire f_i1_next_3__afeeder_combout;
wire f_i1_next_3_;
wire f_t3_next_3__afeeder_combout;
wire f_t3_next_3_;
wire f_t3_3_;
wire f_b1_next_2__afeeder_combout;
wire u_memory_anx57374z2;
wire u_memory_anx57374z1;
wire u_memory_ap_o_image2_1__2__afeeder_combout;
wire u_memory_ap_o_image2_1__2_;
wire f_b1_next_2_;
wire f_i1_next_2__afeeder_combout;
wire u_memory_anx3027z2;
wire u_memory_anx3027z1;
wire u_memory_ap_o_image2_0__2__afeeder_combout;
wire u_memory_ap_o_image2_0__2_;
wire f_i1_next_2_;
wire f_t3_next_2__afeeder_combout;
wire u_memory_ap_o_image1_0__2_;
wire f_t3_next_2_;
wire f_t2_next_2__afeeder_combout;
wire u_memory_ap_o_image0_0__2_;
wire f_t2_next_2_;
wire u_memory_ap_o_image1_1__2__afeeder_combout;
wire u_memory_ap_o_image1_1__2_;
wire u_memory_ap_o_image0_1__2_;
wire f_t2_2_;
wire f_t1_1_;
wire f_t2_0_;
wire u_flow_ap11_add8_0i1_anx44952z22;
wire u_flow_ap11_add8_0i1_anx44952z19;
wire u_flow_ap11_add8_0i1_anx39967z1;
wire u_flow_ap11_add8_0i1_anx38970z1;
wire u_flow_ap11_add8_0i1_anx37973z1;
wire u_flow_ap11_add9_1_anx45949z24;
wire u_flow_ap11_add9_1_anx45949z21;
wire u_flow_ap11_add9_1_anx45949z18;
wire u_flow_ap11_add9_1_anx45949z15;
wire u_flow_ap11_add9_1_anx41961z1;
wire u_flow_ap11_add9_1_anx40964z1;
wire u_flow_ap12_add9_2_anx40964z1;
wire u_flow_ap12_add9_2_anx39967z1;
wire u_flow_ap12_add9_2_anx37973z1;
wire u_flow_ap11_add9_1_anx37973z1;
wire u_flow_ap21_sub11_4i4_anx46946z29;
wire u_flow_ap21_sub11_4i4_anx46946z27;
wire u_flow_ap21_sub11_4i4_anx46946z24;
wire u_flow_ap21_sub11_4i4_anx46946z21;
wire u_flow_ap21_sub11_4i4_anx46946z18;
wire u_flow_ap21_sub11_4i4_anx46946z15;
wire u_flow_ap21_sub11_4i4_anx46946z12;
wire u_flow_ap21_sub11_4i4_anx46946z9;
wire u_flow_ap21_sub11_4i4_anx46946z6;
wire u_flow_ap21_sub11_4i4_anx45949z1;
wire u_flow_ap21_sub11_4i4_anx44952z1;
wire u_memory_ap_o_image2_2__7__afeeder_combout;
wire u_memory_ap_o_image2_2__7_;
wire u_memory_ap_o_image1_2__7_;
wire u_memory_ap_o_image0_2__7__afeeder_combout;
wire u_memory_ap_o_image0_2__7_;
wire f_t1_7_;
wire f_b2_next_6__afeeder_combout;
wire f_b2_next_6_;
wire f_b1_next_6__afeeder_combout;
wire f_b1_next_6_;
wire f_i1_next_6__afeeder_combout;
wire u_memory_anx64575z1;
wire u_memory_ap_o_image2_0__6__afeeder_combout;
wire u_memory_ap_o_image2_0__6_;
wire f_i1_next_6_;
wire f_t3_next_6__afeeder_combout;
wire u_memory_ap_o_image1_0__6_;
wire f_t3_next_6_;
wire f_t2_next_6__afeeder_combout;
wire u_memory_ap_o_image0_0__6_;
wire f_t2_next_6_;
wire f_t2_6_;
wire u_memory_ap_o_image0_2__5_;
wire f_t1_5_;
wire u_memory_ap_o_image1_1__4_;
wire u_memory_ap_o_image0_1__4__afeeder_combout;
wire u_memory_ap_o_image0_1__4_;
wire f_t2_4_;
wire f_t1_3_;
wire u_flow_ap11_add8_0i1_anx44952z16;
wire u_flow_ap11_add8_0i1_anx44952z13;
wire u_flow_ap11_add8_0i1_anx44952z10;
wire u_flow_ap11_add8_0i1_anx44952z7;
wire u_flow_ap11_add8_0i1_anx44952z4;
wire u_flow_ap11_add8_0i1_anx44952z1;
wire u_flow_ap11_add8_0i1_anx43955z1;
wire u_memory_anx36z2;
wire u_memory_anx36z1;
wire u_memory_ap_o_image2_0__5__afeeder_combout;
wire u_memory_ap_o_image2_0__5_;
wire u_memory_ap_o_image1_0__5_;
wire u_memory_ap_o_image0_0__5_;
wire f_b1_next_5__afeeder_combout;
wire f_b1_next_5_;
wire f_i1_next_5__afeeder_combout;
wire f_i1_next_5_;
wire f_t3_next_5__afeeder_combout;
wire f_t3_next_5_;
wire f_t3_5_;
wire u_flow_ap11_add9_1_anx45949z12;
wire u_flow_ap11_add9_1_anx45949z9;
wire u_flow_ap11_add9_1_anx45949z6;
wire u_flow_ap11_add9_1_anx44952z1;
wire u_flow_ap11_add9_1_anx43955z1;
wire u_flow_ap12_add9_2_anx42958z1;
wire u_flow_ap11_add9_1_anx39967z1;
wire u_flow_ap12_add9_2_anx38970z1;
wire u_flow_ap21_sub10_4i3_anx46946z28;
wire u_flow_ap21_sub10_4i3_anx46946z25;
wire u_flow_ap21_sub10_4i3_anx46946z22;
wire u_flow_ap21_sub10_4i3_anx46946z19;
wire u_flow_ap21_sub10_4i3_anx46946z16;
wire u_flow_ap21_sub10_4i3_anx46946z13;
wire u_flow_ap21_sub10_4i3_anx46946z10;
wire u_flow_ap21_sub10_4i3_anx46946z7;
wire u_flow_ap21_sub10_4i3_anx45949z1;
wire u_flow_ap21_sub11_4i4_anx42958z1;
wire u_flow_ap21_sub10_4i3_anx43955z1;
wire u_flow_ap21_sub10_4i3_anx42958z1;
wire u_flow_ap21_sub11_4i4_anx39967z1;
wire u_flow_ap21_sub10_4i3_anx40964z1;
wire u_flow_ap21_sub11_4i4_anx37973z1;
wire u_flow_ap21_add12_4i1_anx63795z32;
wire u_flow_ap21_add12_4i1_anx63795z29;
wire u_flow_ap21_add12_4i1_anx63795z26;
wire u_flow_ap21_add12_4i1_anx63795z23;
wire u_flow_ap21_add12_4i1_anx63795z20;
wire u_flow_ap21_add12_4i1_anx63795z17;
wire u_flow_ap21_add12_4i1_anx63795z14;
wire u_flow_ap21_add12_4i1_anx63795z11;
wire u_flow_ap21_add12_4i1_anx63795z8;
wire u_flow_ap21_add12_4i1_anx46946z1;
wire u_flow_ap21_10_;
wire u_flow_ap31_10__afeeder_combout;
wire u_flow_ap11_add9_1_anx45949z3;
wire u_flow_ap11_add9_1_anx23445z2;
wire u_flow_ap11_add9_1_anx23445z1;
wire u_flow_ap11_add9_1_anx45949z1;
wire u_flow_ap12_add9_2_anx41961z1;
wire u_flow_ap22_sub10_4i5_anx46946z28;
wire u_flow_ap22_sub10_4i5_anx46946z25;
wire u_flow_ap22_sub10_4i5_anx46946z22;
wire u_flow_ap22_sub10_4i5_anx46946z19;
wire u_flow_ap22_sub10_4i5_anx46946z16;
wire u_flow_ap22_sub10_4i5_anx46946z13;
wire u_flow_ap22_sub10_4i5_anx46946z10;
wire u_flow_ap22_sub10_4i5_anx46946z7;
wire u_flow_ap22_sub10_4i5_anx46946z4;
wire u_flow_ap22_sub10_4i5_anx23445z2;
wire u_flow_ap22_sub10_4i5_anx23445z1;
wire u_flow_ap22_sub10_4i5_anx46946z1;
wire u_flow_ap11_add9_1_anx42958z1;
wire u_flow_ap22_sub11_4i6_anx46946z29;
wire u_flow_ap22_sub11_4i6_anx46946z27;
wire u_flow_ap22_sub11_4i6_anx46946z24;
wire u_flow_ap22_sub11_4i6_anx46946z21;
wire u_flow_ap22_sub11_4i6_anx46946z18;
wire u_flow_ap22_sub11_4i6_anx46946z15;
wire u_flow_ap22_sub11_4i6_anx46946z12;
wire u_flow_ap22_sub11_4i6_anx43955z1;
wire u_flow_ap22_sub10_4i5_anx44952z1;
wire u_flow_ap22_sub10_4i5_anx43955z1;
wire u_flow_ap22_sub10_4i5_anx42958z1;
wire u_flow_ap22_sub10_4i5_anx41961z1;
wire u_flow_ap22_sub11_4i6_anx38970z1;
wire u_flow_ap22_sub10_4i5_anx39967z1;
wire u_flow_ap22_sub10_4i5_anx38970z1;
wire u_flow_ap22_add12_4i2_anx63795z32;
wire u_flow_ap22_add12_4i2_anx63795z29;
wire u_flow_ap22_add12_4i2_anx63795z26;
wire u_flow_ap22_add12_4i2_anx63795z23;
wire u_flow_ap22_add12_4i2_anx63795z20;
wire u_flow_ap22_add12_4i2_anx63795z17;
wire u_flow_ap22_add12_4i2_anx63795z14;
wire u_flow_ap22_add12_4i2_anx63795z11;
wire u_flow_ap22_add12_4i2_anx63795z8;
wire u_flow_ap22_add12_4i2_anx46946z1;
wire u_flow_ap22_10_;
wire u_flow_ap21_sub11_4i4_anx46946z3;
wire u_flow_ap21_sub11_4i4_anx23445z2;
wire u_flow_ap21_sub11_4i4_anx23445z1;
wire u_flow_ap21_sub11_4i4_anx46946z1;
wire u_flow_ap21_add12_4i1_anx63795z6;
wire u_flow_ap21_add12_4i1_anx63795z4;
wire u_flow_ap21_add12_4i1_anx63795z1;
wire u_flow_ap21_12_;
wire u_flow_ap21_add12_4i1_anx62798z1;
wire u_flow_ap21_11_;
wire u_flow_ap21_add12_4i1_anx45949z1;
wire u_flow_ap21_9_;
wire u_flow_ap21_add12_4i1_anx44952z1;
wire u_flow_ap21_8_;
wire u_flow_ap22_add12_4i2_anx43955z1;
wire u_flow_ap22_7_;
wire u_flow_ap22_add12_4i2_anx42958z1;
wire u_flow_ap22_6_;
wire u_flow_ap21_add12_4i1_anx41961z1;
wire u_flow_ap21_5_;
wire u_flow_ap21_add12_4i1_anx40964z1;
wire u_flow_ap21_4_;
wire u_flow_ap21_add12_4i1_anx39967z1;
wire u_flow_ap21_3_;
wire u_flow_ap21_add12_4i1_anx38970z1;
wire u_flow_ap21_2_;
wire u_flow_ap21_add12_4i1_anx37973z1;
wire u_flow_ap21_1_;
wire u_flow_ap21_sub10_4i3_anx37973z1;
wire u_flow_ap21_0_;
wire u_flow_aix45188z19900_anx100z37;
wire u_flow_aix45188z19900_anx100z34;
wire u_flow_aix45188z19900_anx100z31;
wire u_flow_aix45188z19900_anx100z28;
wire u_flow_aix45188z19900_anx100z25;
wire u_flow_aix45188z19900_anx100z22;
wire u_flow_aix45188z19900_anx100z19;
wire u_flow_aix45188z19900_anx100z16;
wire u_flow_aix45188z19900_anx100z13;
wire u_flow_aix45188z19900_anx100z10;
wire u_flow_aix45188z19900_anx100z7;
wire u_flow_aix45188z19900_anx100z4;
wire u_flow_aix45188z19900_anx100z1;
wire u_flow_ap31_10_;
wire u_flow_ap31_9__afeeder_combout;
wire u_flow_ap22_add12_4i2_anx45949z1;
wire u_flow_ap22_9_;
wire u_flow_ap31_9_;
wire u_flow_ap31_8__afeeder_combout;
wire u_flow_ap22_add12_4i2_anx44952z1;
wire u_flow_ap22_8_;
wire u_flow_ap31_8_;
wire f_i1_6_;
wire f_i1_5_;
wire f_i1_4_;
wire f_i2_3_;
wire f_i1_2_;
wire f_i2_1_;
wire f_i1_0_;
wire u_flow_ap13_add8_0i3_anx44952z22;
wire u_flow_ap13_add8_0i3_anx44952z19;
wire u_flow_ap13_add8_0i3_anx44952z16;
wire u_flow_ap13_add8_0i3_anx44952z13;
wire u_flow_ap13_add8_0i3_anx44952z10;
wire u_flow_ap13_add8_0i3_anx44952z7;
wire u_flow_ap13_add8_0i3_anx43955z1;
wire u_flow_ap13_add8_0i3_anx41961z1;
wire u_flow_ap13_add8_0i3_anx40964z1;
wire u_flow_ap13_add8_0i3_anx39967z1;
wire u_flow_ap13_add8_0i3_anx37973z1;
wire u_flow_ap13_add9_3_anx45949z17;
wire u_flow_ap13_add9_3_anx45949z15;
wire u_flow_ap13_add9_3_anx45949z13;
wire u_flow_ap13_add9_3_anx45949z11;
wire u_flow_ap13_add9_3_anx45949z9;
wire u_flow_ap13_add9_3_anx45949z7;
wire u_flow_ap13_add9_3_anx43955z1;
wire u_flow_ap23_7_;
wire u_flow_ap32_7_;
wire u_flow_ap13_add9_3_anx42958z1;
wire u_flow_ap23_6_;
wire u_flow_ap32_6_;
wire u_flow_ap31_5__afeeder_combout;
wire u_flow_ap22_add12_4i2_anx41961z1;
wire u_flow_ap22_5_;
wire u_flow_ap31_5_;
wire u_flow_ap13_add9_3_anx40964z1;
wire u_flow_ap23_4_;
wire u_flow_ap32_4__afeeder_combout;
wire u_flow_ap32_4_;
wire u_flow_ap31_3__afeeder_combout;
wire u_flow_ap22_add12_4i2_anx39967z1;
wire u_flow_ap22_3_;
wire u_flow_ap31_3_;
wire u_flow_ap13_add9_3_anx38970z1;
wire u_flow_ap23_2_;
wire u_flow_ap32_2__afeeder_combout;
wire u_flow_ap32_2_;
wire u_flow_ap13_add9_3_anx37973z1;
wire u_flow_ap23_1_;
wire u_flow_ap32_1__afeeder_combout;
wire u_flow_ap32_1_;
wire u_flow_ap31_0__afeeder_combout;
wire u_flow_ap22_sub10_4i5_anx37973z1;
wire u_flow_ap22_0_;
wire u_flow_ap31_0_;
wire u_flow_ap4s_sub12_0_anx63795z33;
wire u_flow_ap4s_sub12_0_anx63795z30;
wire u_flow_ap4s_sub12_0_anx63795z27;
wire u_flow_ap4s_sub12_0_anx63795z24;
wire u_flow_ap4s_sub12_0_anx63795z21;
wire u_flow_ap4s_sub12_0_anx63795z18;
wire u_flow_ap4s_sub12_0_anx63795z15;
wire u_flow_ap4s_sub12_0_anx63795z12;
wire u_flow_ap4s_sub12_0_anx63795z9;
wire u_flow_ap4s_sub12_0_anx63795z6;
wire u_flow_ap4s_sub12_0_anx62798z1;
wire u_flow_ap4s_sub12_0_anx44952z1;
wire u_flow_ap4s_sub12_0_anx46946z1;
wire u_flow_anx26026z4;
wire u_flow_ap31_12__afeeder_combout;
wire u_flow_ap22_sub11_4i6_anx46946z9;
wire u_flow_ap22_sub11_4i6_anx46946z6;
wire u_flow_ap22_sub11_4i6_anx46946z3;
wire u_flow_ap22_sub11_4i6_anx23445z2;
wire u_flow_ap22_sub11_4i6_anx23445z1;
wire u_flow_ap22_sub11_4i6_anx46946z1;
wire u_flow_ap22_add12_4i2_anx63795z6;
wire u_flow_ap22_add12_4i2_anx63795z4;
wire u_flow_ap22_add12_4i2_anx63795z1;
wire u_flow_ap22_12_;
wire u_flow_ap31_12_;
wire u_flow_anx26026z2;
wire u_flow_anx26026z1;
wire u_flow_ap41;
wire u_flow_anx5049z1;
wire u_flow_ap4s_sub12_0_anx42958z1;
wire u_flow_ap43_5_;
wire u_flow_aprev_max_5_;
wire u_flow_ap4s_sub12_0_anx41961z1;
wire u_flow_ap43_4_;
wire u_flow_anx47310z10;
wire u_flow_ap4s_sub12_0_anx40964z1;
wire u_flow_ap43_3_;
wire u_flow_aprev_max_3_;
wire u_flow_ap4s_sub12_0_anx39967z1;
wire u_flow_ap43_2_;
wire u_flow_aprev_max_2_;
wire u_flow_anx47310z11;
wire u_flow_ap4s_sub12_0_anx37973z1;
wire u_flow_ap43_0_;
wire u_flow_aprev_max_0_;
wire u_flow_ap4s_sub12_0_anx38970z1;
wire u_flow_ap43_1_;
wire u_flow_anx47310z12;
wire u_flow_anx47310z4;
wire u_flow_aix45188z19900_anx100z1_a_wirecell_combout;
wire u_flow_ap35;
wire u_flow_ap45_afeeder_combout;
wire u_flow_ap45;
wire u_flow_amax_fwd;
wire u_flow_ap4s_13_;
wire u_flow_ap43_13_;
wire u_flow_aprev_max_13_;
wire u_flow_ap4s_12_;
wire u_flow_ap43_12_;
wire u_flow_aprev_max_12_;
wire u_flow_ap4s_sub12_0_anx63795z3;
wire u_flow_ap4s_sub12_0_anx63795z1;
wire u_flow_ap43_11_;
wire u_flow_aprev_max_11_;
wire u_flow_ap43_10_;
wire u_flow_aprev_max_10_;
wire u_flow_ap43_9_;
wire u_flow_ap4s_sub12_0_anx45949z1;
wire u_flow_ap43_8_;
wire u_flow_aprev_max_8_;
wire u_flow_ap43_7__afeeder_combout;
wire u_flow_ap43_7_;
wire u_flow_ap4s_sub12_0_anx43955z1;
wire u_flow_ap43_6_;
wire u_flow_aix47310z8933_anx100z40;
wire u_flow_aix47310z8933_anx100z37;
wire u_flow_aix47310z8933_anx100z34;
wire u_flow_aix47310z8933_anx100z31;
wire u_flow_aix47310z8933_anx100z28;
wire u_flow_aix47310z8933_anx100z25;
wire u_flow_aix47310z8933_anx100z22;
wire u_flow_aix47310z8933_anx100z19;
wire u_flow_aix47310z8933_anx100z16;
wire u_flow_aix47310z8933_anx100z13;
wire u_flow_aix47310z8933_anx100z10;
wire u_flow_aix47310z8933_anx100z7;
wire u_flow_aix47310z8933_anx100z4;
wire u_flow_aix47310z8933_anx100z1;
wire u_flow_anx47310z2;
wire u_flow_anx47310z1;
wire u_flow_aprev_edge;
wire u_flow_ao_edge_afeeder_combout;
wire u_flow_anx30752z1;
wire u_flow_ao_edge;
wire u_flow_anx27830z1;
wire u_flow_amax_dir_0_;
wire u_flow_ao_dir_0_;
wire u_flow_anx26833z3;
wire u_flow_anx26833z1;
wire u_flow_amax_dir_1_;
wire u_flow_ao_dir_1_;
wire u_flow_anx25836z3;
wire u_flow_anx25836z2;
wire u_flow_anx25836z1;
wire u_flow_amax_dir_2_;
wire u_flow_ao_dir_2_;
wire u_memory_anx33254z1;
wire u_memory_abusySignal;
wire u_memory_abusySignalDelayed_afeeder_combout;
wire u_memory_abusySignalDelayed;
wire u_memory_ap_o_mode_0_;
wire i_reset_int_a_wirecell_combout;
wire nx35105z1;
wire f_i_mode_next_1_;
wire f_i_mode_1_;
wire u_flow_anx41013z1;
wire u_flow_anx46148z1_afeeder_combout;
wire u_flow_anx46148z1;
wire u_flow_anx14253z1;
wire u_flow_ap5m_1_;
wire f_i_mode_0_;
wire u_flow_anx42010z1;
wire u_flow_anx47145z1_afeeder_combout;
wire u_flow_anx47145z1;
wire u_flow_anx13256z1_afeeder_combout;
wire u_flow_anx13256z1;
wire u_flow_ap5m_0__afeeder_combout;
wire u_flow_ap5m_0_;
wire o_mode_dup0_0_;
wire u_memory_ap_o_row_0__afeeder_combout;
wire u_memory_ap_o_row_0_;
wire f_i_row_next_0__afeeder_combout;
wire f_i_row_next_0_;
wire f_i_row_0_;
wire u_flow_anx22790z1;
wire u_flow_anx27925z1_afeeder_combout;
wire u_flow_anx27925z1;
wire u_flow_anx41852z1_afeeder_combout;
wire u_flow_anx41852z1;
wire nx16335z1_afeeder_combout;
wire nx16335z1;
wire u_memory_ap_o_row_1__afeeder_combout;
wire u_memory_ap_o_row_1_;
wire f_i_row_1_;
wire u_flow_anx21793z1;
wire u_flow_anx26928z1_afeeder_combout;
wire u_flow_anx26928z1;
wire u_flow_anx34065z1_afeeder_combout;
wire u_flow_anx34065z1;
wire nx17332z1_afeeder_combout;
wire nx17332z1;
wire u_memory_ap_o_row_2__afeeder_combout;
wire u_memory_ap_o_row_2_;
wire f_i_row_next_2__afeeder_combout;
wire f_i_row_next_2_;
wire f_i_row_2_;
wire u_flow_anx20796z1;
wire u_flow_anx25931z1_afeeder_combout;
wire u_flow_anx25931z1;
wire u_flow_anx39258z1_afeeder_combout;
wire u_flow_anx39258z1;
wire nx18329z1;
wire u_memory_ap_o_row_3__afeeder_combout;
wire u_memory_ap_o_row_3_;
wire f_i_row_3_;
wire u_flow_anx19799z1;
wire u_flow_anx24934z1;
wire u_flow_anx47045z1_afeeder_combout;
wire u_flow_anx47045z1;
wire nx19326z1_afeeder_combout;
wire nx19326z1;
wire u_memory_ap_o_row_4__afeeder_combout;
wire u_memory_ap_o_row_4_;
wire f_i_row_next_4_;
wire f_i_row_4_;
wire u_flow_anx18802z1;
wire u_flow_anx23937z1_afeeder_combout;
wire u_flow_anx23937z1;
wire u_flow_anx54832z1_afeeder_combout;
wire u_flow_anx54832z1;
wire nx20323z1_afeeder_combout;
wire nx20323z1;
wire u_memory_ap_o_row_5__afeeder_combout;
wire u_memory_ap_o_row_5_;
wire f_i_row_next_5_;
wire f_i_row_5_;
wire u_flow_anx17805z1;
wire u_flow_anx22940z1_afeeder_combout;
wire u_flow_anx22940z1;
wire u_flow_anx62619z1;
wire nx21320z1_afeeder_combout;
wire nx21320z1;
wire u_memory_ap_o_row_6__afeeder_combout;
wire u_memory_ap_o_row_6_;
wire f_i_row_next_6_;
wire f_i_row_6_;
wire u_flow_anx16808z1;
wire u_flow_anx21943z1_afeeder_combout;
wire u_flow_anx21943z1;
wire u_flow_anx22927z1_afeeder_combout;
wire u_flow_anx22927z1;
wire nx22317z1_afeeder_combout;
wire nx22317z1;
wire u_memory_ap_o_row_7__afeeder_combout;
wire u_memory_ap_o_row_7_;
wire f_i_row_next_7_;
wire f_i_row_7_;
wire u_flow_anx15811z1;
wire u_flow_anx20946z1_afeeder_combout;
wire u_flow_anx20946z1;
wire u_flow_anx30714z1_afeeder_combout;
wire u_flow_anx30714z1;
wire nx23314z1_afeeder_combout;
wire nx23314z1;
wire nx59473z1;
wire nx58476z1;
wire nx57479z1_afeeder_combout;
wire nx57479z1;
wire nx56482z1;
wire nx55485z1;
wire nx54488z1;
wire nx53491z1;
wire u_memory_ap_o_image1_0__7_;
wire nx52494z1;
wire nx64608z1;
wire nx63611z1;
wire nx62614z1_afeeder_combout;
wire nx62614z1;
wire u_memory_ap_o_image1_1__3__afeeder_combout;
wire u_memory_ap_o_image1_1__3_;
wire nx61617z1;
wire nx60620z1_afeeder_combout;
wire nx60620z1;
wire u_memory_ap_o_image1_1__5_;
wire nx59623z1;
wire u_memory_ap_o_image1_1__6__afeeder_combout;
wire u_memory_ap_o_image1_1__6_;
wire nx58626z1;
wire u_memory_ap_o_image2_1__7__afeeder_combout;
wire u_memory_ap_o_image2_1__7_;
wire u_memory_ap_o_image1_1__7__afeeder_combout;
wire u_memory_ap_o_image1_1__7_;
wire nx57629z1_afeeder_combout;
wire nx57629z1;
wire nx4207z1;
wire nx3210z1_afeeder_combout;
wire nx3210z1;
wire nx2213z1_afeeder_combout;
wire nx2213z1;
wire nx1216z1_afeeder_combout;
wire nx1216z1;
wire nx219z1_afeeder_combout;
wire nx219z1;
wire nx64758z1;
wire nx63761z1;
wire nx62764z1_afeeder_combout;
wire nx62764z1;
wire nx41208z1_afeeder_combout;
wire nx41208z1;
wire nx42205z1_afeeder_combout;
wire nx42205z1;
wire nx43202z1_afeeder_combout;
wire nx43202z1;
wire nx44199z1_afeeder_combout;
wire nx44199z1;
wire nx45196z1;
wire nx46193z1;
wire nx47190z1;
wire nx48187z1;
wire nx36073z1_afeeder_combout;
wire nx36073z1;
wire nx37070z1_afeeder_combout;
wire nx37070z1;
wire nx38067z1_afeeder_combout;
wire nx38067z1;
wire nx39064z1_afeeder_combout;
wire nx39064z1;
wire nx40061z1;
wire nx41058z1;
wire nx42055z1_afeeder_combout;
wire nx42055z1;
wire nx43052z1_afeeder_combout;
wire nx43052z1;
wire nx30938z1_afeeder_combout;
wire nx30938z1;
wire nx31935z1_afeeder_combout;
wire nx31935z1;
wire nx32932z1;
wire nx33929z1_afeeder_combout;
wire nx33929z1;
wire nx34926z1;
wire nx35923z1_afeeder_combout;
wire nx35923z1;
wire nx36920z1;
wire nx37917z1;
wire nx4807z1;
wire u_memory_ap_o_column_2_;
wire u_memory_ap_o_column_3_;
wire u_memory_ap_o_column_4_;
wire u_memory_anx60567z5;
wire u_memory_ap_o_column_5_;
wire u_memory_ap_o_column_6_;
wire u_memory_ap_o_column_7_;
wire u_memory_ap_debug_num_0_0__afeeder_combout;
wire u_memory_anx15763z2;
wire u_memory_ap_debug_num_0_0_;
wire u_memory_anx17757z1;
wire u_memory_ap_debug_num_0_1_;
wire u_memory_ap_debug_num_0_2_;
wire [7:0] u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] i_pixel_acombout;
wire [7:0] u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a;
wire [7:0] u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a;

wire [7:0] u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7] = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[0] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[1] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[2] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[3] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[4] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[5] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[6] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[7] = u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[0] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[1] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[2] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[3] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[4] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[5] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[6] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[7] = u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// atom is at LCFF_X44_Y19_N13
cycloneii_lcell_ff u_flow_areg_prev_max_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_9_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_9_));

// atom is at LCFF_X46_Y19_N27
cycloneii_lcell_ff u_flow_areg_prev_max_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_7_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_7_));

// atom is at LCFF_X45_Y19_N17
cycloneii_lcell_ff u_flow_areg_prev_max_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_6_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_6_));

// atom is at LCFF_X45_Y19_N13
cycloneii_lcell_ff u_flow_areg_prev_max_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_4_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_4_));

// atom is at LCFF_X45_Y19_N7
cycloneii_lcell_ff u_flow_areg_prev_max_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_1_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_1_));

// atom is at LCCOMB_X45_Y19_N0
cycloneii_lcell_comb u_flow_aix47310z52928(
// Equation(s):
// u_flow_anx47310z6 = u_flow_ap43_12_ & (u_flow_ap43_13_ $ u_flow_aprev_max_13_ # !u_flow_aprev_max_12_) # !u_flow_ap43_12_ & (u_flow_aprev_max_12_ # u_flow_ap43_13_ $ u_flow_aprev_max_13_)

	.dataa(u_flow_ap43_12_),
	.datab(u_flow_ap43_13_),
	.datac(u_flow_aprev_max_13_),
	.datad(u_flow_aprev_max_12_),
	.cin(gnd),
	.combout(u_flow_anx47310z6),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52928.lut_mask = 16'h7DBE;
defparam u_flow_aix47310z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N2
cycloneii_lcell_comb u_flow_aix47310z52929(
// Equation(s):
// u_flow_anx47310z7 = u_flow_ap43_11_ & (u_flow_aprev_max_10_ $ u_flow_ap43_10_ # !u_flow_aprev_max_11_) # !u_flow_ap43_11_ & (u_flow_aprev_max_11_ # u_flow_aprev_max_10_ $ u_flow_ap43_10_)

	.dataa(u_flow_ap43_11_),
	.datab(u_flow_aprev_max_10_),
	.datac(u_flow_aprev_max_11_),
	.datad(u_flow_ap43_10_),
	.cin(gnd),
	.combout(u_flow_anx47310z7),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52929.lut_mask = 16'h7BDE;
defparam u_flow_aix47310z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y19_N22
cycloneii_lcell_comb u_flow_aix47310z52930(
// Equation(s):
// u_flow_anx47310z8 = u_flow_aprev_max_9_ & (u_flow_aprev_max_8_ $ u_flow_ap43_8_ # !u_flow_ap43_9_) # !u_flow_aprev_max_9_ & (u_flow_ap43_9_ # u_flow_aprev_max_8_ $ u_flow_ap43_8_)

	.dataa(u_flow_aprev_max_9_),
	.datab(u_flow_aprev_max_8_),
	.datac(u_flow_ap43_9_),
	.datad(u_flow_ap43_8_),
	.cin(gnd),
	.combout(u_flow_anx47310z8),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52930.lut_mask = 16'h7BDE;
defparam u_flow_aix47310z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N30
cycloneii_lcell_comb u_flow_aix47310z52931(
// Equation(s):
// u_flow_anx47310z9 = u_flow_ap43_6_ & (u_flow_ap43_7_ $ u_flow_aprev_max_7_ # !u_flow_aprev_max_6_) # !u_flow_ap43_6_ & (u_flow_aprev_max_6_ # u_flow_ap43_7_ $ u_flow_aprev_max_7_)

	.dataa(u_flow_ap43_6_),
	.datab(u_flow_ap43_7_),
	.datac(u_flow_aprev_max_7_),
	.datad(u_flow_aprev_max_6_),
	.cin(gnd),
	.combout(u_flow_anx47310z9),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52931.lut_mask = 16'h7DBE;
defparam u_flow_aix47310z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y19_N16
cycloneii_lcell_comb u_flow_aix47310z52927(
// Equation(s):
// u_flow_anx47310z5 = u_flow_anx47310z7 # u_flow_anx47310z8 # u_flow_anx47310z6 # u_flow_anx47310z9

	.dataa(u_flow_anx47310z7),
	.datab(u_flow_anx47310z8),
	.datac(u_flow_anx47310z6),
	.datad(u_flow_anx47310z9),
	.cin(gnd),
	.combout(u_flow_anx47310z5),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52927.lut_mask = 16'hFFFE;
defparam u_flow_aix47310z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N28
cycloneii_lcell_comb u_flow_aix26833z52924(
// Equation(s):
// u_flow_anx26833z2 = u_flow_astate_2_ # u_flow_astate_3_

	.dataa(u_flow_astate_2_),
	.datab(vcc),
	.datac(u_flow_astate_3_),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_anx26833z2),
	.cout());
// synopsys translate_off
defparam u_flow_aix26833z52924.lut_mask = 16'hFAFA;
defparam u_flow_aix26833z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N6
cycloneii_lcell_comb u_memory_aix64575z52924(
// Equation(s):
// u_memory_anx64575z2 = u_memory_aNOT_b_0_ & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]) # !u_memory_aNOT_b_0_ & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[6]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datac(u_memory_aNOT_b_0_),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(u_memory_anx64575z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix64575z52924.lut_mask = 16'hF808;
defparam u_memory_aix64575z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N24
cycloneii_lcell_comb u_memory_aix56377z52924(
// Equation(s):
// u_memory_anx56377z2 = debug_num_2_dup0_1_ & !u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_

	.dataa(debug_num_2_dup0_1_),
	.datab(vcc),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_anx56377z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix56377z52924.lut_mask = 16'h0A00;
defparam u_memory_aix56377z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N8
cycloneii_lcell_comb u_memory_aix62359z52924(
// Equation(s):
// u_memory_anx62359z2 = u_memory_aNOT_b_0__dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]) # !u_memory_aNOT_b_0__dup_353 & u_memory_anx60567z2 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[7]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datac(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx62359z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix62359z52924.lut_mask = 16'hF088;
defparam u_memory_aix62359z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N30
cycloneii_lcell_comb u_memory_aix62359z52923(
// Equation(s):
// u_memory_anx62359z1 = u_memory_anx62359z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0__dup_353 & debug_num_2_dup0_7_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(debug_num_2_dup0_7_),
	.datad(u_memory_anx62359z2),
	.cin(gnd),
	.combout(u_memory_anx62359z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix62359z52923.lut_mask = 16'hFF10;
defparam u_memory_aix62359z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N12
cycloneii_lcell_comb u_memory_aix40106z52924(
// Equation(s):
// u_memory_anx40106z2 = !u_memory_ap_debug_num_1_2_ & !u_memory_ap_debug_num_1_1_

	.dataa(u_memory_ap_debug_num_1_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_anx40106z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix40106z52924.lut_mask = 16'h0055;
defparam u_memory_aix40106z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y21_N1
cycloneii_lcell_ff u_flow_areg_p31_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_11__afeeder_combout),
	.sdata(u_flow_ap22_11_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_11_));

// atom is at LCFF_X47_Y19_N9
cycloneii_lcell_ff u_flow_areg_p32_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap32_10__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_10_));

// atom is at LCFF_X41_Y19_N17
cycloneii_lcell_ff u_flow_areg_p32_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap32_9__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_9_));

// atom is at LCFF_X47_Y19_N3
cycloneii_lcell_ff u_flow_areg_p32_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap23_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_8_));

// atom is at LCFF_X57_Y19_N3
cycloneii_lcell_ff u_flow_areg_p31_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_7__afeeder_combout),
	.sdata(u_flow_ap22_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_7_));

// atom is at LCFF_X59_Y20_N3
cycloneii_lcell_ff u_flow_areg_p31_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_6__afeeder_combout),
	.sdata(u_flow_ap22_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_6_));

// atom is at LCFF_X47_Y19_N5
cycloneii_lcell_ff u_flow_areg_p32_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap32_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_5_));

// atom is at LCFF_X58_Y21_N27
cycloneii_lcell_ff u_flow_areg_p31_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_4__afeeder_combout),
	.sdata(u_flow_ap22_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_4_));

// atom is at LCFF_X47_Y19_N7
cycloneii_lcell_ff u_flow_areg_p32_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap23_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_3_));

// atom is at LCFF_X59_Y19_N1
cycloneii_lcell_ff u_flow_areg_p31_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_2__afeeder_combout),
	.sdata(u_flow_ap22_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_2_));

// atom is at LCFF_X59_Y20_N31
cycloneii_lcell_ff u_flow_areg_p31_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_1__afeeder_combout),
	.sdata(u_flow_ap22_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_1_));

// atom is at LCFF_X49_Y19_N17
cycloneii_lcell_ff u_flow_areg_p32_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap23_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_0_));

// atom is at LCCOMB_X46_Y19_N22
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52923(
// Equation(s):
// u_flow_ap4s_sub12_0_anx63795z1 = u_flow_ap31_11_ & u_flow_ap4s_sub12_0_anx63795z3 & VCC # !u_flow_ap31_11_ & !u_flow_ap4s_sub12_0_anx63795z3
// u_flow_ap4s_sub12_0_anx23445z2 = CARRY(!u_flow_ap31_11_ & !u_flow_ap4s_sub12_0_anx63795z3)

	.dataa(u_flow_ap31_11_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z3),
	.combout(u_flow_ap4s_sub12_0_anx63795z1),
	.cout(u_flow_ap4s_sub12_0_anx23445z2));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52923.lut_mask = 16'hA505;
defparam u_flow_ap4s_sub12_0_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N24
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix23445z52923(
// Equation(s):
// u_flow_ap4s_sub12_0_anx23445z1 = !u_flow_ap4s_sub12_0_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx23445z2),
	.combout(u_flow_ap4s_sub12_0_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix23445z52923.lut_mask = 16'h0F0F;
defparam u_flow_ap4s_sub12_0_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N25
cycloneii_lcell_ff u_flow_areg_p22_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_11_));

// atom is at LCFF_X59_Y20_N17
cycloneii_lcell_ff u_flow_areg_p21_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_7_));

// atom is at LCFF_X59_Y20_N15
cycloneii_lcell_ff u_flow_areg_p21_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_6_));

// atom is at LCFF_X57_Y19_N11
cycloneii_lcell_ff u_flow_areg_p22_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_4_));

// atom is at LCFF_X57_Y19_N7
cycloneii_lcell_ff u_flow_areg_p22_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_2_));

// atom is at LCFF_X57_Y19_N5
cycloneii_lcell_ff u_flow_areg_p22_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_1_));

// atom is at LCFF_X47_Y19_N29
cycloneii_lcell_ff u_flow_areg_p23_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_10_));

// atom is at LCFF_X47_Y19_N27
cycloneii_lcell_ff u_flow_areg_p23_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_9_));

// atom is at LCFF_X47_Y19_N25
cycloneii_lcell_ff u_flow_areg_p23_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_8_));

// atom is at LCFF_X47_Y19_N19
cycloneii_lcell_ff u_flow_areg_p23_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_5_));

// atom is at LCFF_X47_Y19_N15
cycloneii_lcell_ff u_flow_areg_p23_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_3_));

// atom is at LCFF_X55_Y19_N1
cycloneii_lcell_ff u_flow_areg_p23_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add8_0i3_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_0_));

// atom is at LCFF_X54_Y20_N19
cycloneii_lcell_ff reg_f_t2_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_7_));

// atom is at LCFF_X55_Y21_N1
cycloneii_lcell_ff u_memory_areg_buffer0_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_1__7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__7_));

// atom is at LCCOMB_X55_Y21_N8
cycloneii_lcell_comb ix20836z52931(
// Equation(s):
// f_t2_7_ = nx57127z2 & (u_memory_ap_o_image0_1__7_) # !nx57127z2 & f_t2_next_7_

	.dataa(f_t2_next_7_),
	.datab(u_memory_ap_o_image0_1__7_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52931.lut_mask = 16'hCCAA;
defparam ix20836z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N13
cycloneii_lcell_ff reg_f_t1_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_7_));

// atom is at LCFF_X55_Y22_N27
cycloneii_lcell_ff u_memory_areg_buffer0_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_1__6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__6_));

// atom is at LCFF_X54_Y22_N27
cycloneii_lcell_ff reg_f_t1_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_6_));

// atom is at LCFF_X55_Y22_N1
cycloneii_lcell_ff u_memory_areg_buffer0_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_2__6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__6_));

// atom is at LCCOMB_X55_Y22_N20
cycloneii_lcell_comb ix20836z52924(
// Equation(s):
// f_t1_6_ = nx57127z2 & (u_memory_ap_o_image0_2__6_) # !nx57127z2 & f_t1_next_6_

	.dataa(f_t1_next_6_),
	.datab(u_memory_ap_o_image0_2__6_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52924.lut_mask = 16'hCCAA;
defparam ix20836z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N1
cycloneii_lcell_ff reg_f_t2_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_5_));

// atom is at LCFF_X57_Y22_N7
cycloneii_lcell_ff u_memory_areg_buffer0_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_1__5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__5_));

// atom is at LCCOMB_X57_Y22_N16
cycloneii_lcell_comb ix20836z52933(
// Equation(s):
// f_t2_5_ = nx57127z2 & u_memory_ap_o_image0_1__5_ # !nx57127z2 & (f_t2_next_5_)

	.dataa(u_memory_ap_o_image0_1__5_),
	.datab(f_t2_next_5_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52933.lut_mask = 16'hAACC;
defparam ix20836z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N11
cycloneii_lcell_ff reg_f_t1_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_5_));

// atom is at LCFF_X54_Y22_N5
cycloneii_lcell_ff reg_f_t2_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_4_));

// atom is at LCFF_X54_Y22_N31
cycloneii_lcell_ff reg_f_t1_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_4_));

// atom is at LCFF_X56_Y22_N25
cycloneii_lcell_ff u_memory_areg_buffer0_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_2__4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__4_));

// atom is at LCCOMB_X56_Y22_N16
cycloneii_lcell_comb ix20836z52926(
// Equation(s):
// f_t1_4_ = nx57127z2 & u_memory_ap_o_image0_2__4_ # !nx57127z2 & (f_t1_next_4_)

	.dataa(u_memory_ap_o_image0_2__4_),
	.datab(f_t1_next_4_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52926.lut_mask = 16'hAACC;
defparam ix20836z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N11
cycloneii_lcell_ff reg_f_t2_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_3_));

// atom is at LCFF_X55_Y19_N27
cycloneii_lcell_ff u_memory_areg_buffer0_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__3_));

// atom is at LCCOMB_X55_Y19_N22
cycloneii_lcell_comb ix20836z52935(
// Equation(s):
// f_t2_3_ = nx57127z2 & u_memory_ap_o_image0_1__3_ # !nx57127z2 & (f_t2_next_3_)

	.dataa(u_memory_ap_o_image0_1__3_),
	.datab(f_t2_next_3_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52935.lut_mask = 16'hAACC;
defparam ix20836z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N21
cycloneii_lcell_ff reg_f_t1_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_3_));

// atom is at LCFF_X54_Y20_N1
cycloneii_lcell_ff reg_f_t1_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_2_));

// atom is at LCFF_X56_Y21_N23
cycloneii_lcell_ff u_memory_areg_buffer0_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__2_));

// atom is at LCCOMB_X56_Y21_N22
cycloneii_lcell_comb ix20836z52928(
// Equation(s):
// f_t1_2_ = nx57127z2 & (u_memory_ap_o_image0_2__2_) # !nx57127z2 & f_t1_next_2_

	.dataa(vcc),
	.datab(f_t1_next_2_),
	.datac(u_memory_ap_o_image0_2__2_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52928.lut_mask = 16'hF0CC;
defparam ix20836z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N24
cycloneii_lcell_comb ix20836z52937(
// Equation(s):
// f_t2_1_ = nx57127z2 & (u_memory_ap_o_image0_1__1_) # !nx57127z2 & f_t2_next_1_

	.dataa(vcc),
	.datab(f_t2_next_1_),
	.datac(u_memory_ap_o_image0_1__1_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52937.lut_mask = 16'hF0CC;
defparam ix20836z52937.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N28
cycloneii_lcell_comb ix20836z52930(
// Equation(s):
// f_t1_0_ = nx57127z2 & (u_memory_ap_o_image0_2__0_) # !nx57127z2 & f_t1_next_0_

	.dataa(vcc),
	.datab(f_t1_next_0_),
	.datac(u_memory_ap_o_image0_2__0_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52930.lut_mask = 16'hF0CC;
defparam ix20836z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N10
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52928(
// Equation(s):
// u_flow_ap11_add8_0i1_anx40964z1 = f_t2_3_ & (f_t1_3_ & u_flow_ap11_add8_0i1_anx44952z16 & VCC # !f_t1_3_ & !u_flow_ap11_add8_0i1_anx44952z16) # !f_t2_3_ & (f_t1_3_ & !u_flow_ap11_add8_0i1_anx44952z16 # !f_t1_3_ & (u_flow_ap11_add8_0i1_anx44952z16 # GND))
// u_flow_ap11_add8_0i1_anx44952z13 = CARRY(f_t2_3_ & !f_t1_3_ & !u_flow_ap11_add8_0i1_anx44952z16 # !f_t2_3_ & (!u_flow_ap11_add8_0i1_anx44952z16 # !f_t1_3_))

	.dataa(f_t2_3_),
	.datab(f_t1_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z16),
	.combout(u_flow_ap11_add8_0i1_anx40964z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z13));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52928.lut_mask = 16'h9617;
defparam u_flow_ap11_add8_0i1_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N12
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52927(
// Equation(s):
// u_flow_ap11_add8_0i1_anx41961z1 = (f_t1_4_ $ f_t2_4_ $ !u_flow_ap11_add8_0i1_anx44952z13) # GND
// u_flow_ap11_add8_0i1_anx44952z10 = CARRY(f_t1_4_ & (f_t2_4_ # !u_flow_ap11_add8_0i1_anx44952z13) # !f_t1_4_ & f_t2_4_ & !u_flow_ap11_add8_0i1_anx44952z13)

	.dataa(f_t1_4_),
	.datab(f_t2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z13),
	.combout(u_flow_ap11_add8_0i1_anx41961z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z10));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52927.lut_mask = 16'h698E;
defparam u_flow_ap11_add8_0i1_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N14
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52926(
// Equation(s):
// u_flow_ap11_add8_0i1_anx42958z1 = f_t2_5_ & (f_t1_5_ & u_flow_ap11_add8_0i1_anx44952z10 & VCC # !f_t1_5_ & !u_flow_ap11_add8_0i1_anx44952z10) # !f_t2_5_ & (f_t1_5_ & !u_flow_ap11_add8_0i1_anx44952z10 # !f_t1_5_ & (u_flow_ap11_add8_0i1_anx44952z10 # GND))
// u_flow_ap11_add8_0i1_anx44952z7 = CARRY(f_t2_5_ & !f_t1_5_ & !u_flow_ap11_add8_0i1_anx44952z10 # !f_t2_5_ & (!u_flow_ap11_add8_0i1_anx44952z10 # !f_t1_5_))

	.dataa(f_t2_5_),
	.datab(f_t1_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z10),
	.combout(u_flow_ap11_add8_0i1_anx42958z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z7));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52926.lut_mask = 16'h9617;
defparam u_flow_ap11_add8_0i1_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N18
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52923(
// Equation(s):
// u_flow_ap11_add8_0i1_anx44952z1 = f_t2_7_ & (f_t1_7_ & u_flow_ap11_add8_0i1_anx44952z4 & VCC # !f_t1_7_ & !u_flow_ap11_add8_0i1_anx44952z4) # !f_t2_7_ & (f_t1_7_ & !u_flow_ap11_add8_0i1_anx44952z4 # !f_t1_7_ & (u_flow_ap11_add8_0i1_anx44952z4 # GND))
// u_flow_ap11_add8_0i1_anx23445z2 = CARRY(f_t2_7_ & !f_t1_7_ & !u_flow_ap11_add8_0i1_anx44952z4 # !f_t2_7_ & (!u_flow_ap11_add8_0i1_anx44952z4 # !f_t1_7_))

	.dataa(f_t2_7_),
	.datab(f_t1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z4),
	.combout(u_flow_ap11_add8_0i1_anx44952z1),
	.cout(u_flow_ap11_add8_0i1_anx23445z2));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52923.lut_mask = 16'h9617;
defparam u_flow_ap11_add8_0i1_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N20
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix23445z52923(
// Equation(s):
// u_flow_ap11_add8_0i1_anx23445z1 = !u_flow_ap11_add8_0i1_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx23445z2),
	.combout(u_flow_ap11_add8_0i1_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix23445z52923.lut_mask = 16'h0F0F;
defparam u_flow_ap11_add8_0i1_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N11
cycloneii_lcell_ff reg_f_t3_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_7_));

// atom is at LCFF_X55_Y22_N7
cycloneii_lcell_ff u_memory_areg_buffer0_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__7_));

// atom is at LCCOMB_X55_Y22_N16
cycloneii_lcell_comb ix20836z52939(
// Equation(s):
// f_t3_7_ = nx57127z2 & u_memory_ap_o_image0_0__7_ # !nx57127z2 & (f_t3_next_7_)

	.dataa(u_memory_ap_o_image0_0__7_),
	.datab(nx57127z2),
	.datac(vcc),
	.datad(f_t3_next_7_),
	.cin(gnd),
	.combout(f_t3_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52939.lut_mask = 16'hBB88;
defparam ix20836z52939.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N4
cycloneii_lcell_comb ix20836z52940(
// Equation(s):
// f_t3_6_ = nx57127z2 & u_memory_ap_o_image0_0__6_ # !nx57127z2 & (f_t3_next_6_)

	.dataa(u_memory_ap_o_image0_0__6_),
	.datab(f_t3_next_6_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t3_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52940.lut_mask = 16'hAACC;
defparam ix20836z52940.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N6
cycloneii_lcell_comb ix20836z52944(
// Equation(s):
// f_t3_2_ = nx57127z2 & u_memory_ap_o_image0_0__2_ # !nx57127z2 & (f_t3_next_2_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_0__2_),
	.datad(f_t3_next_2_),
	.cin(gnd),
	.combout(f_t3_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52944.lut_mask = 16'hF5A0;
defparam ix20836z52944.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N21
cycloneii_lcell_ff reg_f_t3_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_1_));

// atom is at LCCOMB_X57_Y21_N8
cycloneii_lcell_comb ix20836z52945(
// Equation(s):
// f_t3_1_ = nx57127z2 & u_memory_ap_o_image0_0__1_ # !nx57127z2 & (f_t3_next_1_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_0__1_),
	.datad(f_t3_next_1_),
	.cin(gnd),
	.combout(f_t3_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52945.lut_mask = 16'hF5A0;
defparam ix20836z52945.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N10
cycloneii_lcell_comb ix20836z52946(
// Equation(s):
// f_t3_0_ = nx57127z2 & u_memory_ap_o_image0_0__0_ # !nx57127z2 & (f_t3_next_0_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_0__0_),
	.datad(f_t3_next_0_),
	.cin(gnd),
	.combout(f_t3_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52946.lut_mask = 16'hF5A0;
defparam ix20836z52946.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N14
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52931(
// Equation(s):
// u_flow_ap11_add9_1_anx38970z1 = f_t3_1_ & (u_flow_ap11_add8_0i1_anx38970z1 & u_flow_ap11_add9_1_anx45949z24 & VCC # !u_flow_ap11_add8_0i1_anx38970z1 & !u_flow_ap11_add9_1_anx45949z24) # !f_t3_1_ & (u_flow_ap11_add8_0i1_anx38970z1 & 
// !u_flow_ap11_add9_1_anx45949z24 # !u_flow_ap11_add8_0i1_anx38970z1 & (u_flow_ap11_add9_1_anx45949z24 # GND))
// u_flow_ap11_add9_1_anx45949z21 = CARRY(f_t3_1_ & !u_flow_ap11_add8_0i1_anx38970z1 & !u_flow_ap11_add9_1_anx45949z24 # !f_t3_1_ & (!u_flow_ap11_add9_1_anx45949z24 # !u_flow_ap11_add8_0i1_anx38970z1))

	.dataa(f_t3_1_),
	.datab(u_flow_ap11_add8_0i1_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z24),
	.combout(u_flow_ap11_add9_1_anx38970z1),
	.cout(u_flow_ap11_add9_1_anx45949z21));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52931.lut_mask = 16'h9617;
defparam u_flow_ap11_add9_1_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N31
cycloneii_lcell_ff reg_f_b2_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_7_));

// atom is at LCCOMB_X55_Y21_N16
cycloneii_lcell_comb ix20836z52955(
// Equation(s):
// f_b2_7_ = nx57127z2 & u_memory_ap_o_image2_1__7_ # !nx57127z2 & (f_b2_next_7_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image2_1__7_),
	.datac(f_b2_next_7_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b2_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52955.lut_mask = 16'hCCF0;
defparam ix20836z52955.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N9
cycloneii_lcell_ff reg_f_b1_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_7_));

// atom is at LCCOMB_X55_Y22_N18
cycloneii_lcell_comb ix20836z52948(
// Equation(s):
// f_b1_6_ = nx57127z2 & (u_memory_ap_o_image2_0__6_) # !nx57127z2 & f_b1_next_6_

	.dataa(f_b1_next_6_),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_0__6_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b1_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52948.lut_mask = 16'hF0AA;
defparam ix20836z52948.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N22
cycloneii_lcell_comb ix20836z52949(
// Equation(s):
// f_b1_5_ = nx57127z2 & u_memory_ap_o_image2_0__5_ # !nx57127z2 & (f_b1_next_5_)

	.dataa(u_memory_ap_o_image2_0__5_),
	.datab(f_b1_next_5_),
	.datac(nx57127z2),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b1_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52949.lut_mask = 16'hACAC;
defparam ix20836z52949.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N12
cycloneii_lcell_comb ix20836z52950(
// Equation(s):
// f_b1_4_ = nx57127z2 & (u_memory_ap_o_image2_0__4_) # !nx57127z2 & f_b1_next_4_

	.dataa(vcc),
	.datab(f_b1_next_4_),
	.datac(u_memory_ap_o_image2_0__4_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b1_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52950.lut_mask = 16'hF0CC;
defparam ix20836z52950.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N14
cycloneii_lcell_comb ix20836z52951(
// Equation(s):
// f_b1_3_ = nx57127z2 & u_memory_ap_o_image2_0__3_ # !nx57127z2 & (f_b1_next_3_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image2_0__3_),
	.datac(nx57127z2),
	.datad(f_b1_next_3_),
	.cin(gnd),
	.combout(f_b1_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52951.lut_mask = 16'hCFC0;
defparam ix20836z52951.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N30
cycloneii_lcell_comb ix20836z52952(
// Equation(s):
// f_b1_2_ = nx57127z2 & (u_memory_ap_o_image2_0__2_) # !nx57127z2 & f_b1_next_2_

	.dataa(nx57127z2),
	.datab(f_b1_next_2_),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_0__2_),
	.cin(gnd),
	.combout(f_b1_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52952.lut_mask = 16'hEE44;
defparam ix20836z52952.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N27
cycloneii_lcell_ff reg_f_b1_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_1_));

// atom is at LCCOMB_X56_Y20_N28
cycloneii_lcell_comb ix20836z52953(
// Equation(s):
// f_b1_1_ = nx57127z2 & (u_memory_ap_o_image2_0__1_) # !nx57127z2 & f_b1_next_1_

	.dataa(vcc),
	.datab(f_b1_next_1_),
	.datac(u_memory_ap_o_image2_0__1_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b1_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52953.lut_mask = 16'hF0CC;
defparam ix20836z52953.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N24
cycloneii_lcell_comb ix20836z52962(
// Equation(s):
// f_b2_0_ = nx57127z2 & (u_memory_ap_o_image2_1__0_) # !nx57127z2 & f_b2_next_0_

	.dataa(vcc),
	.datab(f_b2_next_0_),
	.datac(u_memory_ap_o_image2_1__0_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b2_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52962.lut_mask = 16'hF0CC;
defparam ix20836z52962.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N2
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52931(
// Equation(s):
// u_flow_ap12_add8_0i2_anx37973z1 = f_b2_0_ & (f_b1_0_ $ VCC) # !f_b2_0_ & f_b1_0_ & VCC
// u_flow_ap12_add8_0i2_anx44952z22 = CARRY(f_b2_0_ & f_b1_0_)

	.dataa(f_b2_0_),
	.datab(f_b1_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap12_add8_0i2_anx37973z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z22));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52931.lut_mask = 16'h6688;
defparam u_flow_ap12_add8_0i2_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N8
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52928(
// Equation(s):
// u_flow_ap12_add8_0i2_anx40964z1 = f_b1_3_ & (f_b2_3_ & u_flow_ap12_add8_0i2_anx44952z16 & VCC # !f_b2_3_ & !u_flow_ap12_add8_0i2_anx44952z16) # !f_b1_3_ & (f_b2_3_ & !u_flow_ap12_add8_0i2_anx44952z16 # !f_b2_3_ & (u_flow_ap12_add8_0i2_anx44952z16 # GND))
// u_flow_ap12_add8_0i2_anx44952z13 = CARRY(f_b1_3_ & !f_b2_3_ & !u_flow_ap12_add8_0i2_anx44952z16 # !f_b1_3_ & (!u_flow_ap12_add8_0i2_anx44952z16 # !f_b2_3_))

	.dataa(f_b1_3_),
	.datab(f_b2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z16),
	.combout(u_flow_ap12_add8_0i2_anx40964z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z13));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52928.lut_mask = 16'h9617;
defparam u_flow_ap12_add8_0i2_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N10
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52927(
// Equation(s):
// u_flow_ap12_add8_0i2_anx41961z1 = (f_b1_4_ $ f_b2_4_ $ !u_flow_ap12_add8_0i2_anx44952z13) # GND
// u_flow_ap12_add8_0i2_anx44952z10 = CARRY(f_b1_4_ & (f_b2_4_ # !u_flow_ap12_add8_0i2_anx44952z13) # !f_b1_4_ & f_b2_4_ & !u_flow_ap12_add8_0i2_anx44952z13)

	.dataa(f_b1_4_),
	.datab(f_b2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z13),
	.combout(u_flow_ap12_add8_0i2_anx41961z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z10));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52927.lut_mask = 16'h698E;
defparam u_flow_ap12_add8_0i2_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N12
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52926(
// Equation(s):
// u_flow_ap12_add8_0i2_anx42958z1 = f_b1_5_ & (f_b2_5_ & u_flow_ap12_add8_0i2_anx44952z10 & VCC # !f_b2_5_ & !u_flow_ap12_add8_0i2_anx44952z10) # !f_b1_5_ & (f_b2_5_ & !u_flow_ap12_add8_0i2_anx44952z10 # !f_b2_5_ & (u_flow_ap12_add8_0i2_anx44952z10 # GND))
// u_flow_ap12_add8_0i2_anx44952z7 = CARRY(f_b1_5_ & !f_b2_5_ & !u_flow_ap12_add8_0i2_anx44952z10 # !f_b1_5_ & (!u_flow_ap12_add8_0i2_anx44952z10 # !f_b2_5_))

	.dataa(f_b1_5_),
	.datab(f_b2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z10),
	.combout(u_flow_ap12_add8_0i2_anx42958z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z7));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52926.lut_mask = 16'h9617;
defparam u_flow_ap12_add8_0i2_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N14
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52925(
// Equation(s):
// u_flow_ap12_add8_0i2_anx43955z1 = (f_b1_6_ $ f_b2_6_ $ !u_flow_ap12_add8_0i2_anx44952z7) # GND
// u_flow_ap12_add8_0i2_anx44952z4 = CARRY(f_b1_6_ & (f_b2_6_ # !u_flow_ap12_add8_0i2_anx44952z7) # !f_b1_6_ & f_b2_6_ & !u_flow_ap12_add8_0i2_anx44952z7)

	.dataa(f_b1_6_),
	.datab(f_b2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z7),
	.combout(u_flow_ap12_add8_0i2_anx43955z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z4));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52925.lut_mask = 16'h698E;
defparam u_flow_ap12_add8_0i2_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N21
cycloneii_lcell_ff reg_f_b3_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_7_));

// atom is at LCCOMB_X55_Y21_N30
cycloneii_lcell_comb ix20836z52963(
// Equation(s):
// f_b3_7_ = nx57127z2 & u_memory_ap_o_image2_2__7_ # !nx57127z2 & (f_b3_next_7_)

	.dataa(u_memory_ap_o_image2_2__7_),
	.datab(vcc),
	.datac(f_b3_next_7_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b3_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52963.lut_mask = 16'hAAF0;
defparam ix20836z52963.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N2
cycloneii_lcell_comb ix20836z52968(
// Equation(s):
// f_b3_2_ = nx57127z2 & u_memory_ap_o_image2_2__2_ # !nx57127z2 & (f_b3_next_2_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image2_2__2_),
	.datac(nx57127z2),
	.datad(f_b3_next_2_),
	.cin(gnd),
	.combout(f_b3_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52968.lut_mask = 16'hCFC0;
defparam ix20836z52968.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N28
cycloneii_lcell_comb ix20836z52969(
// Equation(s):
// f_b3_1_ = nx57127z2 & u_memory_ap_o_image2_2__1_ # !nx57127z2 & (f_b3_next_1_)

	.dataa(nx57127z2),
	.datab(u_memory_ap_o_image2_2__1_),
	.datac(f_b3_next_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52969.lut_mask = 16'hD8D8;
defparam ix20836z52969.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N8
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52932(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx38970z1 = (u_flow_ap11_add9_1_anx38970z1 $ u_flow_ap12_add9_2_anx39967z1 $ u_flow_ap21_sub11_4i4_anx46946z27) # GND
// u_flow_ap21_sub11_4i4_anx46946z24 = CARRY(u_flow_ap11_add9_1_anx38970z1 & (!u_flow_ap21_sub11_4i4_anx46946z27 # !u_flow_ap12_add9_2_anx39967z1) # !u_flow_ap11_add9_1_anx38970z1 & !u_flow_ap12_add9_2_anx39967z1 & !u_flow_ap21_sub11_4i4_anx46946z27)

	.dataa(u_flow_ap11_add9_1_anx38970z1),
	.datab(u_flow_ap12_add9_2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z27),
	.combout(u_flow_ap21_sub11_4i4_anx38970z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z24));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52932.lut_mask = 16'h962B;
defparam u_flow_ap21_sub11_4i4_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N12
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52930(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx40964z1 = (u_flow_ap12_add9_2_anx41961z1 $ u_flow_ap11_add9_1_anx40964z1 $ u_flow_ap21_sub11_4i4_anx46946z21) # GND
// u_flow_ap21_sub11_4i4_anx46946z18 = CARRY(u_flow_ap12_add9_2_anx41961z1 & u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z21 # !u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx40964z1 # !u_flow_ap21_sub11_4i4_anx46946z21))

	.dataa(u_flow_ap12_add9_2_anx41961z1),
	.datab(u_flow_ap11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z21),
	.combout(u_flow_ap21_sub11_4i4_anx40964z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z18));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52930.lut_mask = 16'h964D;
defparam u_flow_ap21_sub11_4i4_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N14
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52929(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx41961z1 = u_flow_ap12_add9_2_anx42958z1 & (u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub11_4i4_anx46946z18 # !u_flow_ap11_add9_1_anx41961z1 & (u_flow_ap21_sub11_4i4_anx46946z18 # GND)) # !u_flow_ap12_add9_2_anx42958z1 & 
// (u_flow_ap11_add9_1_anx41961z1 & u_flow_ap21_sub11_4i4_anx46946z18 & VCC # !u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub11_4i4_anx46946z18)
// u_flow_ap21_sub11_4i4_anx46946z15 = CARRY(u_flow_ap12_add9_2_anx42958z1 & (!u_flow_ap21_sub11_4i4_anx46946z18 # !u_flow_ap11_add9_1_anx41961z1) # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub11_4i4_anx46946z18)

	.dataa(u_flow_ap12_add9_2_anx42958z1),
	.datab(u_flow_ap11_add9_1_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z18),
	.combout(u_flow_ap21_sub11_4i4_anx41961z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z15));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52929.lut_mask = 16'h692B;
defparam u_flow_ap21_sub11_4i4_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N18
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52927(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx43955z1 = u_flow_ap11_add9_1_anx43955z1 & (u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap21_sub11_4i4_anx46946z12 # !u_flow_ap12_add9_2_anx44952z1 & u_flow_ap21_sub11_4i4_anx46946z12 & VCC) # !u_flow_ap11_add9_1_anx43955z1 & 
// (u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap21_sub11_4i4_anx46946z12 # GND) # !u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap21_sub11_4i4_anx46946z12)
// u_flow_ap21_sub11_4i4_anx46946z9 = CARRY(u_flow_ap11_add9_1_anx43955z1 & u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap21_sub11_4i4_anx46946z12 # !u_flow_ap11_add9_1_anx43955z1 & (u_flow_ap12_add9_2_anx44952z1 # !u_flow_ap21_sub11_4i4_anx46946z12))

	.dataa(u_flow_ap11_add9_1_anx43955z1),
	.datab(u_flow_ap12_add9_2_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z12),
	.combout(u_flow_ap21_sub11_4i4_anx43955z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z9));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52927.lut_mask = 16'h694D;
defparam u_flow_ap21_sub11_4i4_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N6
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52932(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx38970z1 = u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap21_sub10_4i3_anx46946z28 # !u_flow_ap12_add9_2_anx38970z1 & u_flow_ap21_sub10_4i3_anx46946z28 & VCC) # !u_flow_ap11_add9_1_anx38970z1 & 
// (u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap21_sub10_4i3_anx46946z28 # GND) # !u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap21_sub10_4i3_anx46946z28)
// u_flow_ap21_sub10_4i3_anx46946z25 = CARRY(u_flow_ap11_add9_1_anx38970z1 & u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap21_sub10_4i3_anx46946z28 # !u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap12_add9_2_anx38970z1 # !u_flow_ap21_sub10_4i3_anx46946z28))

	.dataa(u_flow_ap11_add9_1_anx38970z1),
	.datab(u_flow_ap12_add9_2_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z28),
	.combout(u_flow_ap21_sub10_4i3_anx38970z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z25));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52932.lut_mask = 16'h694D;
defparam u_flow_ap21_sub10_4i3_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N8
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52931(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx39967z1 = (u_flow_ap12_add9_2_anx39967z1 $ u_flow_ap11_add9_1_anx39967z1 $ u_flow_ap21_sub10_4i3_anx46946z25) # GND
// u_flow_ap21_sub10_4i3_anx46946z22 = CARRY(u_flow_ap12_add9_2_anx39967z1 & u_flow_ap11_add9_1_anx39967z1 & !u_flow_ap21_sub10_4i3_anx46946z25 # !u_flow_ap12_add9_2_anx39967z1 & (u_flow_ap11_add9_1_anx39967z1 # !u_flow_ap21_sub10_4i3_anx46946z25))

	.dataa(u_flow_ap12_add9_2_anx39967z1),
	.datab(u_flow_ap11_add9_1_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z25),
	.combout(u_flow_ap21_sub10_4i3_anx39967z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z22));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52931.lut_mask = 16'h964D;
defparam u_flow_ap21_sub10_4i3_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N12
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52929(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx41961z1 = (u_flow_ap12_add9_2_anx41961z1 $ u_flow_ap11_add9_1_anx41961z1 $ u_flow_ap21_sub10_4i3_anx46946z19) # GND
// u_flow_ap21_sub10_4i3_anx46946z16 = CARRY(u_flow_ap12_add9_2_anx41961z1 & u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap21_sub10_4i3_anx46946z19 # !u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx41961z1 # !u_flow_ap21_sub10_4i3_anx46946z19))

	.dataa(u_flow_ap12_add9_2_anx41961z1),
	.datab(u_flow_ap11_add9_1_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z19),
	.combout(u_flow_ap21_sub10_4i3_anx41961z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z16));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52929.lut_mask = 16'h964D;
defparam u_flow_ap21_sub10_4i3_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N18
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52926(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx44952z1 = u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap21_sub10_4i3_anx46946z10 # !u_flow_ap11_add9_1_anx44952z1 & (u_flow_ap21_sub10_4i3_anx46946z10 # GND)) # !u_flow_ap12_add9_2_anx44952z1 & 
// (u_flow_ap11_add9_1_anx44952z1 & u_flow_ap21_sub10_4i3_anx46946z10 & VCC # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap21_sub10_4i3_anx46946z10)
// u_flow_ap21_sub10_4i3_anx46946z7 = CARRY(u_flow_ap12_add9_2_anx44952z1 & (!u_flow_ap21_sub10_4i3_anx46946z10 # !u_flow_ap11_add9_1_anx44952z1) # !u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap21_sub10_4i3_anx46946z10)

	.dataa(u_flow_ap12_add9_2_anx44952z1),
	.datab(u_flow_ap11_add9_1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z10),
	.combout(u_flow_ap21_sub10_4i3_anx44952z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z7));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52926.lut_mask = 16'h692B;
defparam u_flow_ap21_sub10_4i3_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N20
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52925(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx45949z1 = (u_flow_ap11_add9_1_anx45949z1 $ u_flow_ap12_add9_2_anx45949z1 $ u_flow_ap21_sub10_4i3_anx46946z7) # GND
// u_flow_ap21_sub10_4i3_anx46946z4 = CARRY(u_flow_ap11_add9_1_anx45949z1 & (!u_flow_ap21_sub10_4i3_anx46946z7 # !u_flow_ap12_add9_2_anx45949z1) # !u_flow_ap11_add9_1_anx45949z1 & !u_flow_ap12_add9_2_anx45949z1 & !u_flow_ap21_sub10_4i3_anx46946z7)

	.dataa(u_flow_ap11_add9_1_anx45949z1),
	.datab(u_flow_ap12_add9_2_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z7),
	.combout(u_flow_ap21_sub10_4i3_anx45949z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z4));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52925.lut_mask = 16'h962B;
defparam u_flow_ap21_sub10_4i3_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N22
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52923(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx46946z1 = u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub10_4i3_anx46946z4 # !u_flow_ap12_add9_2_anx23445z1 & u_flow_ap21_sub10_4i3_anx46946z4 & VCC) # !u_flow_ap11_add9_1_anx23445z1 & 
// (u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap21_sub10_4i3_anx46946z4 # GND) # !u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub10_4i3_anx46946z4)
// u_flow_ap21_sub10_4i3_anx23445z2 = CARRY(u_flow_ap11_add9_1_anx23445z1 & u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub10_4i3_anx46946z4 # !u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap12_add9_2_anx23445z1 # !u_flow_ap21_sub10_4i3_anx46946z4))

	.dataa(u_flow_ap11_add9_1_anx23445z1),
	.datab(u_flow_ap12_add9_2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z4),
	.combout(u_flow_ap21_sub10_4i3_anx46946z1),
	.cout(u_flow_ap21_sub10_4i3_anx23445z2));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52923.lut_mask = 16'h694D;
defparam u_flow_ap21_sub10_4i3_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N24
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix23445z52923(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx23445z1 = !u_flow_ap21_sub10_4i3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx23445z2),
	.combout(u_flow_ap21_sub10_4i3_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix23445z52923.lut_mask = 16'h0F0F;
defparam u_flow_ap21_sub10_4i3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N14
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52930(
// Equation(s):
// u_flow_ap21_add12_4i1_anx42958z1 = u_flow_ap21_sub11_4i4_anx41961z1 & (u_flow_ap21_sub10_4i3_anx43955z1 & u_flow_ap21_add12_4i1_anx63795z20 & VCC # !u_flow_ap21_sub10_4i3_anx43955z1 & !u_flow_ap21_add12_4i1_anx63795z20) # !u_flow_ap21_sub11_4i4_anx41961z1 
// & (u_flow_ap21_sub10_4i3_anx43955z1 & !u_flow_ap21_add12_4i1_anx63795z20 # !u_flow_ap21_sub10_4i3_anx43955z1 & (u_flow_ap21_add12_4i1_anx63795z20 # GND))
// u_flow_ap21_add12_4i1_anx63795z17 = CARRY(u_flow_ap21_sub11_4i4_anx41961z1 & !u_flow_ap21_sub10_4i3_anx43955z1 & !u_flow_ap21_add12_4i1_anx63795z20 # !u_flow_ap21_sub11_4i4_anx41961z1 & (!u_flow_ap21_add12_4i1_anx63795z20 # 
// !u_flow_ap21_sub10_4i3_anx43955z1))

	.dataa(u_flow_ap21_sub11_4i4_anx41961z1),
	.datab(u_flow_ap21_sub10_4i3_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z20),
	.combout(u_flow_ap21_add12_4i1_anx42958z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z17));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52930.lut_mask = 16'h9617;
defparam u_flow_ap21_add12_4i1_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N16
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52929(
// Equation(s):
// u_flow_ap21_add12_4i1_anx43955z1 = (u_flow_ap21_sub10_4i3_anx44952z1 $ u_flow_ap21_sub11_4i4_anx42958z1 $ !u_flow_ap21_add12_4i1_anx63795z17) # GND
// u_flow_ap21_add12_4i1_anx63795z14 = CARRY(u_flow_ap21_sub10_4i3_anx44952z1 & (u_flow_ap21_sub11_4i4_anx42958z1 # !u_flow_ap21_add12_4i1_anx63795z17) # !u_flow_ap21_sub10_4i3_anx44952z1 & u_flow_ap21_sub11_4i4_anx42958z1 & 
// !u_flow_ap21_add12_4i1_anx63795z17)

	.dataa(u_flow_ap21_sub10_4i3_anx44952z1),
	.datab(u_flow_ap21_sub11_4i4_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z17),
	.combout(u_flow_ap21_add12_4i1_anx43955z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z14));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52929.lut_mask = 16'h698E;
defparam u_flow_ap21_add12_4i1_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N4
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52933(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx37973z1 = u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap11_add9_1_anx37973z1 & (u_flow_ap22_sub11_4i6_anx46946z29 # GND) # !u_flow_ap11_add9_1_anx37973z1 & !u_flow_ap22_sub11_4i6_anx46946z29) # !u_flow_ap11_add9_1_anx38970z1 & 
// (u_flow_ap11_add9_1_anx37973z1 & !u_flow_ap22_sub11_4i6_anx46946z29 # !u_flow_ap11_add9_1_anx37973z1 & u_flow_ap22_sub11_4i6_anx46946z29 & VCC)
// u_flow_ap22_sub11_4i6_anx46946z27 = CARRY(u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap11_add9_1_anx37973z1 # !u_flow_ap22_sub11_4i6_anx46946z29) # !u_flow_ap11_add9_1_anx38970z1 & u_flow_ap11_add9_1_anx37973z1 & !u_flow_ap22_sub11_4i6_anx46946z29)

	.dataa(u_flow_ap11_add9_1_anx38970z1),
	.datab(u_flow_ap11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z29),
	.combout(u_flow_ap22_sub11_4i6_anx37973z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z27));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52933.lut_mask = 16'h968E;
defparam u_flow_ap22_sub11_4i6_aix46946z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N8
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52931(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx39967z1 = u_flow_ap12_add9_2_anx39967z1 & (u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub11_4i6_anx46946z24 # !u_flow_ap11_add9_1_anx40964z1 & u_flow_ap22_sub11_4i6_anx46946z24 & VCC) # !u_flow_ap12_add9_2_anx39967z1 & 
// (u_flow_ap11_add9_1_anx40964z1 & (u_flow_ap22_sub11_4i6_anx46946z24 # GND) # !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub11_4i6_anx46946z24)
// u_flow_ap22_sub11_4i6_anx46946z21 = CARRY(u_flow_ap12_add9_2_anx39967z1 & u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub11_4i6_anx46946z24 # !u_flow_ap12_add9_2_anx39967z1 & (u_flow_ap11_add9_1_anx40964z1 # !u_flow_ap22_sub11_4i6_anx46946z24))

	.dataa(u_flow_ap12_add9_2_anx39967z1),
	.datab(u_flow_ap11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z24),
	.combout(u_flow_ap22_sub11_4i6_anx39967z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z21));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52931.lut_mask = 16'h694D;
defparam u_flow_ap22_sub11_4i6_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N10
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52930(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx40964z1 = (u_flow_ap12_add9_2_anx40964z1 $ u_flow_ap11_add9_1_anx41961z1 $ u_flow_ap22_sub11_4i6_anx46946z21) # GND
// u_flow_ap22_sub11_4i6_anx46946z18 = CARRY(u_flow_ap12_add9_2_anx40964z1 & (!u_flow_ap22_sub11_4i6_anx46946z21 # !u_flow_ap11_add9_1_anx41961z1) # !u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap11_add9_1_anx41961z1 & !u_flow_ap22_sub11_4i6_anx46946z21)

	.dataa(u_flow_ap12_add9_2_anx40964z1),
	.datab(u_flow_ap11_add9_1_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z21),
	.combout(u_flow_ap22_sub11_4i6_anx40964z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z18));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52930.lut_mask = 16'h962B;
defparam u_flow_ap22_sub11_4i6_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N12
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52929(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx41961z1 = u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap22_sub11_4i6_anx46946z18 # !u_flow_ap11_add9_1_anx42958z1 & u_flow_ap22_sub11_4i6_anx46946z18 & VCC) # !u_flow_ap12_add9_2_anx41961z1 & 
// (u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap22_sub11_4i6_anx46946z18 # GND) # !u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap22_sub11_4i6_anx46946z18)
// u_flow_ap22_sub11_4i6_anx46946z15 = CARRY(u_flow_ap12_add9_2_anx41961z1 & u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap22_sub11_4i6_anx46946z18 # !u_flow_ap12_add9_2_anx41961z1 & (u_flow_ap11_add9_1_anx42958z1 # !u_flow_ap22_sub11_4i6_anx46946z18))

	.dataa(u_flow_ap12_add9_2_anx41961z1),
	.datab(u_flow_ap11_add9_1_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z18),
	.combout(u_flow_ap22_sub11_4i6_anx41961z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z15));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52929.lut_mask = 16'h694D;
defparam u_flow_ap22_sub11_4i6_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N14
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52928(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx42958z1 = (u_flow_ap12_add9_2_anx42958z1 $ u_flow_ap11_add9_1_anx43955z1 $ u_flow_ap22_sub11_4i6_anx46946z15) # GND
// u_flow_ap22_sub11_4i6_anx46946z12 = CARRY(u_flow_ap12_add9_2_anx42958z1 & (!u_flow_ap22_sub11_4i6_anx46946z15 # !u_flow_ap11_add9_1_anx43955z1) # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap11_add9_1_anx43955z1 & !u_flow_ap22_sub11_4i6_anx46946z15)

	.dataa(u_flow_ap12_add9_2_anx42958z1),
	.datab(u_flow_ap11_add9_1_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z15),
	.combout(u_flow_ap22_sub11_4i6_anx42958z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z12));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52928.lut_mask = 16'h962B;
defparam u_flow_ap22_sub11_4i6_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N18
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52926(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx44952z1 = (u_flow_ap11_add9_1_anx45949z1 $ u_flow_ap12_add9_2_anx44952z1 $ u_flow_ap22_sub11_4i6_anx46946z9) # GND
// u_flow_ap22_sub11_4i6_anx46946z6 = CARRY(u_flow_ap11_add9_1_anx45949z1 & u_flow_ap12_add9_2_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z9 # !u_flow_ap11_add9_1_anx45949z1 & (u_flow_ap12_add9_2_anx44952z1 # !u_flow_ap22_sub11_4i6_anx46946z9))

	.dataa(u_flow_ap11_add9_1_anx45949z1),
	.datab(u_flow_ap12_add9_2_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z9),
	.combout(u_flow_ap22_sub11_4i6_anx44952z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z6));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52926.lut_mask = 16'h964D;
defparam u_flow_ap22_sub11_4i6_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N20
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52925(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx45949z1 = u_flow_ap12_add9_2_anx45949z1 & (u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub11_4i6_anx46946z6 # !u_flow_ap11_add9_1_anx23445z1 & u_flow_ap22_sub11_4i6_anx46946z6 & VCC) # !u_flow_ap12_add9_2_anx45949z1 & 
// (u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap22_sub11_4i6_anx46946z6 # GND) # !u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub11_4i6_anx46946z6)
// u_flow_ap22_sub11_4i6_anx46946z3 = CARRY(u_flow_ap12_add9_2_anx45949z1 & u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub11_4i6_anx46946z6 # !u_flow_ap12_add9_2_anx45949z1 & (u_flow_ap11_add9_1_anx23445z1 # !u_flow_ap22_sub11_4i6_anx46946z6))

	.dataa(u_flow_ap12_add9_2_anx45949z1),
	.datab(u_flow_ap11_add9_1_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z6),
	.combout(u_flow_ap22_sub11_4i6_anx45949z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z3));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52925.lut_mask = 16'h694D;
defparam u_flow_ap22_sub11_4i6_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N16
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52930(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx40964z1 = u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub10_4i5_anx46946z22 # !u_flow_ap11_add9_1_anx40964z1 & u_flow_ap22_sub10_4i5_anx46946z22 & VCC) # !u_flow_ap12_add9_2_anx40964z1 & 
// (u_flow_ap11_add9_1_anx40964z1 & (u_flow_ap22_sub10_4i5_anx46946z22 # GND) # !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub10_4i5_anx46946z22)
// u_flow_ap22_sub10_4i5_anx46946z19 = CARRY(u_flow_ap12_add9_2_anx40964z1 & u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap22_sub10_4i5_anx46946z22 # !u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap11_add9_1_anx40964z1 # !u_flow_ap22_sub10_4i5_anx46946z22))

	.dataa(u_flow_ap12_add9_2_anx40964z1),
	.datab(u_flow_ap11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z22),
	.combout(u_flow_ap22_sub10_4i5_anx40964z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z19));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52930.lut_mask = 16'h694D;
defparam u_flow_ap22_sub10_4i5_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N26
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52925(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx45949z1 = (u_flow_ap12_add9_2_anx45949z1 $ u_flow_ap11_add9_1_anx45949z1 $ u_flow_ap22_sub10_4i5_anx46946z7) # GND
// u_flow_ap22_sub10_4i5_anx46946z4 = CARRY(u_flow_ap12_add9_2_anx45949z1 & (!u_flow_ap22_sub10_4i5_anx46946z7 # !u_flow_ap11_add9_1_anx45949z1) # !u_flow_ap12_add9_2_anx45949z1 & !u_flow_ap11_add9_1_anx45949z1 & !u_flow_ap22_sub10_4i5_anx46946z7)

	.dataa(u_flow_ap12_add9_2_anx45949z1),
	.datab(u_flow_ap11_add9_1_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z7),
	.combout(u_flow_ap22_sub10_4i5_anx45949z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z4));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52925.lut_mask = 16'h962B;
defparam u_flow_ap22_sub10_4i5_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N4
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52935(
// Equation(s):
// u_flow_ap22_add12_4i2_anx37973z1 = u_flow_ap11_add9_1_anx37973z1 & (u_flow_ap22_sub10_4i5_anx38970z1 $ VCC) # !u_flow_ap11_add9_1_anx37973z1 & u_flow_ap22_sub10_4i5_anx38970z1 & VCC
// u_flow_ap22_add12_4i2_anx63795z32 = CARRY(u_flow_ap11_add9_1_anx37973z1 & u_flow_ap22_sub10_4i5_anx38970z1)

	.dataa(u_flow_ap11_add9_1_anx37973z1),
	.datab(u_flow_ap22_sub10_4i5_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap22_add12_4i2_anx37973z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z32));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52935.lut_mask = 16'h6688;
defparam u_flow_ap22_add12_4i2_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N6
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52934(
// Equation(s):
// u_flow_ap22_add12_4i2_anx38970z1 = u_flow_ap22_sub11_4i6_anx37973z1 & (u_flow_ap22_sub10_4i5_anx39967z1 & u_flow_ap22_add12_4i2_anx63795z32 & VCC # !u_flow_ap22_sub10_4i5_anx39967z1 & !u_flow_ap22_add12_4i2_anx63795z32) # !u_flow_ap22_sub11_4i6_anx37973z1 
// & (u_flow_ap22_sub10_4i5_anx39967z1 & !u_flow_ap22_add12_4i2_anx63795z32 # !u_flow_ap22_sub10_4i5_anx39967z1 & (u_flow_ap22_add12_4i2_anx63795z32 # GND))
// u_flow_ap22_add12_4i2_anx63795z29 = CARRY(u_flow_ap22_sub11_4i6_anx37973z1 & !u_flow_ap22_sub10_4i5_anx39967z1 & !u_flow_ap22_add12_4i2_anx63795z32 # !u_flow_ap22_sub11_4i6_anx37973z1 & (!u_flow_ap22_add12_4i2_anx63795z32 # 
// !u_flow_ap22_sub10_4i5_anx39967z1))

	.dataa(u_flow_ap22_sub11_4i6_anx37973z1),
	.datab(u_flow_ap22_sub10_4i5_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z32),
	.combout(u_flow_ap22_add12_4i2_anx38970z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z29));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52934.lut_mask = 16'h9617;
defparam u_flow_ap22_add12_4i2_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N10
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52932(
// Equation(s):
// u_flow_ap22_add12_4i2_anx40964z1 = u_flow_ap22_sub11_4i6_anx39967z1 & (u_flow_ap22_sub10_4i5_anx41961z1 & u_flow_ap22_add12_4i2_anx63795z26 & VCC # !u_flow_ap22_sub10_4i5_anx41961z1 & !u_flow_ap22_add12_4i2_anx63795z26) # !u_flow_ap22_sub11_4i6_anx39967z1 
// & (u_flow_ap22_sub10_4i5_anx41961z1 & !u_flow_ap22_add12_4i2_anx63795z26 # !u_flow_ap22_sub10_4i5_anx41961z1 & (u_flow_ap22_add12_4i2_anx63795z26 # GND))
// u_flow_ap22_add12_4i2_anx63795z23 = CARRY(u_flow_ap22_sub11_4i6_anx39967z1 & !u_flow_ap22_sub10_4i5_anx41961z1 & !u_flow_ap22_add12_4i2_anx63795z26 # !u_flow_ap22_sub11_4i6_anx39967z1 & (!u_flow_ap22_add12_4i2_anx63795z26 # 
// !u_flow_ap22_sub10_4i5_anx41961z1))

	.dataa(u_flow_ap22_sub11_4i6_anx39967z1),
	.datab(u_flow_ap22_sub10_4i5_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z26),
	.combout(u_flow_ap22_add12_4i2_anx40964z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z23));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52932.lut_mask = 16'h9617;
defparam u_flow_ap22_add12_4i2_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N24
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52925(
// Equation(s):
// u_flow_ap22_add12_4i2_anx62798z1 = (u_flow_ap22_sub10_4i5_anx23445z1 $ u_flow_ap22_sub11_4i6_anx46946z1 $ u_flow_ap22_add12_4i2_anx63795z6) # GND
// u_flow_ap22_add12_4i2_anx63795z4 = CARRY(u_flow_ap22_sub10_4i5_anx23445z1 & u_flow_ap22_sub11_4i6_anx46946z1 & !u_flow_ap22_add12_4i2_anx63795z6 # !u_flow_ap22_sub10_4i5_anx23445z1 & (u_flow_ap22_sub11_4i6_anx46946z1 # !u_flow_ap22_add12_4i2_anx63795z6))

	.dataa(u_flow_ap22_sub10_4i5_anx23445z1),
	.datab(u_flow_ap22_sub11_4i6_anx46946z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z6),
	.combout(u_flow_ap22_add12_4i2_anx62798z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z4));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52925.lut_mask = 16'h964D;
defparam u_flow_ap22_add12_4i2_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N1
cycloneii_lcell_ff reg_f_i2_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_7_));

// atom is at LCCOMB_X55_Y21_N18
cycloneii_lcell_comb ix20836z52979(
// Equation(s):
// f_i2_7_ = nx57127z2 & (u_memory_ap_o_image1_2__7_) # !nx57127z2 & f_i2_next_7_

	.dataa(f_i2_next_7_),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_2__7_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_i2_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52979.lut_mask = 16'hF0AA;
defparam ix20836z52979.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N27
cycloneii_lcell_ff reg_f_i1_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_7__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_7_));

// atom is at LCCOMB_X55_Y22_N4
cycloneii_lcell_comb ix20836z52971(
// Equation(s):
// f_i1_7_ = nx57127z2 & u_memory_ap_o_image1_0__7_ # !nx57127z2 & (f_i1_next_7_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_0__7_),
	.datad(f_i1_next_7_),
	.cin(gnd),
	.combout(f_i1_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52971.lut_mask = 16'hF3C0;
defparam ix20836z52971.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N25
cycloneii_lcell_ff reg_f_i2_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_6_));

// atom is at LCCOMB_X55_Y22_N30
cycloneii_lcell_comb ix20836z52980(
// Equation(s):
// f_i2_6_ = nx57127z2 & u_memory_ap_o_image1_2__6_ # !nx57127z2 & (f_i2_next_6_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_2__6_),
	.datad(f_i2_next_6_),
	.cin(gnd),
	.combout(f_i2_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52980.lut_mask = 16'hF3C0;
defparam ix20836z52980.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N25
cycloneii_lcell_ff reg_f_i2_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_5_));

// atom is at LCCOMB_X57_Y22_N20
cycloneii_lcell_comb ix20836z52981(
// Equation(s):
// f_i2_5_ = nx57127z2 & u_memory_ap_o_image1_2__5_ # !nx57127z2 & (f_i2_next_5_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_2__5_),
	.datad(f_i2_next_5_),
	.cin(gnd),
	.combout(f_i2_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52981.lut_mask = 16'hF5A0;
defparam ix20836z52981.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N21
cycloneii_lcell_ff reg_f_i2_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_4_));

// atom is at LCCOMB_X56_Y22_N28
cycloneii_lcell_comb ix20836z52982(
// Equation(s):
// f_i2_4_ = nx57127z2 & u_memory_ap_o_image1_2__4_ # !nx57127z2 & (f_i2_next_4_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_2__4_),
	.datad(f_i2_next_4_),
	.cin(gnd),
	.combout(f_i2_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52982.lut_mask = 16'hF5A0;
defparam ix20836z52982.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N16
cycloneii_lcell_comb ix20836z52975(
// Equation(s):
// f_i1_3_ = nx57127z2 & u_memory_ap_o_image1_0__3_ # !nx57127z2 & (f_i1_next_3_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image1_0__3_),
	.datac(nx57127z2),
	.datad(f_i1_next_3_),
	.cin(gnd),
	.combout(f_i1_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52975.lut_mask = 16'hCFC0;
defparam ix20836z52975.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N3
cycloneii_lcell_ff reg_f_i2_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_2_));

// atom is at LCCOMB_X53_Y21_N12
cycloneii_lcell_comb ix20836z52984(
// Equation(s):
// f_i2_2_ = nx57127z2 & u_memory_ap_o_image1_2__2_ # !nx57127z2 & (f_i2_next_2_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_2__2_),
	.datad(f_i2_next_2_),
	.cin(gnd),
	.combout(f_i2_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52984.lut_mask = 16'hF5A0;
defparam ix20836z52984.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N7
cycloneii_lcell_ff reg_f_i1_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_1_));

// atom is at LCCOMB_X55_Y19_N18
cycloneii_lcell_comb ix20836z52977(
// Equation(s):
// f_i1_1_ = nx57127z2 & u_memory_ap_o_image1_0__1_ # !nx57127z2 & (f_i1_next_1_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_0__1_),
	.datad(f_i1_next_1_),
	.cin(gnd),
	.combout(f_i1_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52977.lut_mask = 16'hF3C0;
defparam ix20836z52977.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N24
cycloneii_lcell_comb ix20836z52986(
// Equation(s):
// f_i2_0_ = nx57127z2 & u_memory_ap_o_image1_2__0_ # !nx57127z2 & (f_i2_next_0_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_2__0_),
	.datad(f_i2_next_0_),
	.cin(gnd),
	.combout(f_i2_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52986.lut_mask = 16'hF3C0;
defparam ix20836z52986.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N2
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52930(
// Equation(s):
// u_flow_ap13_add8_0i3_anx38970z1 = f_i1_1_ & (f_i2_1_ & u_flow_ap13_add8_0i3_anx44952z22 & VCC # !f_i2_1_ & !u_flow_ap13_add8_0i3_anx44952z22) # !f_i1_1_ & (f_i2_1_ & !u_flow_ap13_add8_0i3_anx44952z22 # !f_i2_1_ & (u_flow_ap13_add8_0i3_anx44952z22 # GND))
// u_flow_ap13_add8_0i3_anx44952z19 = CARRY(f_i1_1_ & !f_i2_1_ & !u_flow_ap13_add8_0i3_anx44952z22 # !f_i1_1_ & (!u_flow_ap13_add8_0i3_anx44952z22 # !f_i2_1_))

	.dataa(f_i1_1_),
	.datab(f_i2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z22),
	.combout(u_flow_ap13_add8_0i3_anx38970z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z19));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52930.lut_mask = 16'h9617;
defparam u_flow_ap13_add8_0i3_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N10
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52926(
// Equation(s):
// u_flow_ap13_add8_0i3_anx42958z1 = f_i2_5_ & (f_i1_5_ & u_flow_ap13_add8_0i3_anx44952z10 & VCC # !f_i1_5_ & !u_flow_ap13_add8_0i3_anx44952z10) # !f_i2_5_ & (f_i1_5_ & !u_flow_ap13_add8_0i3_anx44952z10 # !f_i1_5_ & (u_flow_ap13_add8_0i3_anx44952z10 # GND))
// u_flow_ap13_add8_0i3_anx44952z7 = CARRY(f_i2_5_ & !f_i1_5_ & !u_flow_ap13_add8_0i3_anx44952z10 # !f_i2_5_ & (!u_flow_ap13_add8_0i3_anx44952z10 # !f_i1_5_))

	.dataa(f_i2_5_),
	.datab(f_i1_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z10),
	.combout(u_flow_ap13_add8_0i3_anx42958z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z7));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52926.lut_mask = 16'h9617;
defparam u_flow_ap13_add8_0i3_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N12
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52925(
// Equation(s):
// u_flow_ap13_add8_0i3_anx43955z1 = (f_i2_6_ $ f_i1_6_ $ !u_flow_ap13_add8_0i3_anx44952z7) # GND
// u_flow_ap13_add8_0i3_anx44952z4 = CARRY(f_i2_6_ & (f_i1_6_ # !u_flow_ap13_add8_0i3_anx44952z7) # !f_i2_6_ & f_i1_6_ & !u_flow_ap13_add8_0i3_anx44952z7)

	.dataa(f_i2_6_),
	.datab(f_i1_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z7),
	.combout(u_flow_ap13_add8_0i3_anx43955z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z4));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52925.lut_mask = 16'h698E;
defparam u_flow_ap13_add8_0i3_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N14
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52923(
// Equation(s):
// u_flow_ap13_add8_0i3_anx44952z1 = f_i2_7_ & (f_i1_7_ & u_flow_ap13_add8_0i3_anx44952z4 & VCC # !f_i1_7_ & !u_flow_ap13_add8_0i3_anx44952z4) # !f_i2_7_ & (f_i1_7_ & !u_flow_ap13_add8_0i3_anx44952z4 # !f_i1_7_ & (u_flow_ap13_add8_0i3_anx44952z4 # GND))
// u_flow_ap13_add8_0i3_anx23445z2 = CARRY(f_i2_7_ & !f_i1_7_ & !u_flow_ap13_add8_0i3_anx44952z4 # !f_i2_7_ & (!u_flow_ap13_add8_0i3_anx44952z4 # !f_i1_7_))

	.dataa(f_i2_7_),
	.datab(f_i1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z4),
	.combout(u_flow_ap13_add8_0i3_anx44952z1),
	.cout(u_flow_ap13_add8_0i3_anx23445z2));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52923.lut_mask = 16'h9617;
defparam u_flow_ap13_add8_0i3_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N16
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix23445z52923(
// Equation(s):
// u_flow_ap13_add8_0i3_anx23445z1 = !u_flow_ap13_add8_0i3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx23445z2),
	.combout(u_flow_ap13_add8_0i3_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix23445z52923.lut_mask = 16'h0F0F;
defparam u_flow_ap13_add8_0i3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N14
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52930(
// Equation(s):
// u_flow_ap13_add9_3_anx39967z1 = (u_flow_ap13_add8_0i3_anx39967z1 $ u_flow_ap13_add8_0i3_anx40964z1 $ !u_flow_ap13_add9_3_anx45949z15) # GND
// u_flow_ap13_add9_3_anx45949z13 = CARRY(u_flow_ap13_add8_0i3_anx39967z1 & (u_flow_ap13_add8_0i3_anx40964z1 # !u_flow_ap13_add9_3_anx45949z15) # !u_flow_ap13_add8_0i3_anx39967z1 & u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z15)

	.dataa(u_flow_ap13_add8_0i3_anx39967z1),
	.datab(u_flow_ap13_add8_0i3_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z15),
	.combout(u_flow_ap13_add9_3_anx39967z1),
	.cout(u_flow_ap13_add9_3_anx45949z13));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52930.lut_mask = 16'h698E;
defparam u_flow_ap13_add9_3_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N18
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52928(
// Equation(s):
// u_flow_ap13_add9_3_anx41961z1 = (u_flow_ap13_add8_0i3_anx42958z1 $ u_flow_ap13_add8_0i3_anx41961z1 $ !u_flow_ap13_add9_3_anx45949z11) # GND
// u_flow_ap13_add9_3_anx45949z9 = CARRY(u_flow_ap13_add8_0i3_anx42958z1 & (u_flow_ap13_add8_0i3_anx41961z1 # !u_flow_ap13_add9_3_anx45949z11) # !u_flow_ap13_add8_0i3_anx42958z1 & u_flow_ap13_add8_0i3_anx41961z1 & !u_flow_ap13_add9_3_anx45949z11)

	.dataa(u_flow_ap13_add8_0i3_anx42958z1),
	.datab(u_flow_ap13_add8_0i3_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z11),
	.combout(u_flow_ap13_add9_3_anx41961z1),
	.cout(u_flow_ap13_add9_3_anx45949z9));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52928.lut_mask = 16'h698E;
defparam u_flow_ap13_add9_3_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N22
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52926(
// Equation(s):
// u_flow_ap13_add9_3_anx43955z1 = (u_flow_ap13_add8_0i3_anx44952z1 $ u_flow_ap13_add8_0i3_anx43955z1 $ !u_flow_ap13_add9_3_anx45949z7) # GND
// u_flow_ap13_add9_3_anx45949z5 = CARRY(u_flow_ap13_add8_0i3_anx44952z1 & (u_flow_ap13_add8_0i3_anx43955z1 # !u_flow_ap13_add9_3_anx45949z7) # !u_flow_ap13_add8_0i3_anx44952z1 & u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z7)

	.dataa(u_flow_ap13_add8_0i3_anx44952z1),
	.datab(u_flow_ap13_add8_0i3_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z7),
	.combout(u_flow_ap13_add9_3_anx43955z1),
	.cout(u_flow_ap13_add9_3_anx45949z5));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52926.lut_mask = 16'h698E;
defparam u_flow_ap13_add9_3_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N24
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52925(
// Equation(s):
// u_flow_ap13_add9_3_anx44952z1 = u_flow_ap13_add8_0i3_anx44952z1 & (u_flow_ap13_add8_0i3_anx23445z1 & u_flow_ap13_add9_3_anx45949z5 & VCC # !u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z5) # !u_flow_ap13_add8_0i3_anx44952z1 & 
// (u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z5 # !u_flow_ap13_add8_0i3_anx23445z1 & (u_flow_ap13_add9_3_anx45949z5 # GND))
// u_flow_ap13_add9_3_anx45949z3 = CARRY(u_flow_ap13_add8_0i3_anx44952z1 & !u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z5 # !u_flow_ap13_add8_0i3_anx44952z1 & (!u_flow_ap13_add9_3_anx45949z5 # !u_flow_ap13_add8_0i3_anx23445z1))

	.dataa(u_flow_ap13_add8_0i3_anx44952z1),
	.datab(u_flow_ap13_add8_0i3_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z5),
	.combout(u_flow_ap13_add9_3_anx44952z1),
	.cout(u_flow_ap13_add9_3_anx45949z3));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52925.lut_mask = 16'h9617;
defparam u_flow_ap13_add9_3_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N26
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52923(
// Equation(s):
// u_flow_ap13_add9_3_anx45949z1 = u_flow_ap13_add8_0i3_anx23445z1 & (u_flow_ap13_add9_3_anx45949z3 $ GND) # !u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z3 & VCC
// u_flow_ap13_add9_3_anx23445z2 = CARRY(u_flow_ap13_add8_0i3_anx23445z1 & !u_flow_ap13_add9_3_anx45949z3)

	.dataa(vcc),
	.datab(u_flow_ap13_add8_0i3_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z3),
	.combout(u_flow_ap13_add9_3_anx45949z1),
	.cout(u_flow_ap13_add9_3_anx23445z2));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52923.lut_mask = 16'hC30C;
defparam u_flow_ap13_add9_3_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N28
cycloneii_lcell_comb u_flow_ap13_add9_3_aix23445z52923(
// Equation(s):
// u_flow_ap13_add9_3_anx23445z1 = u_flow_ap13_add9_3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx23445z2),
	.combout(u_flow_ap13_add9_3_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix23445z52923.lut_mask = 16'hF0F0;
defparam u_flow_ap13_add9_3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X50_Y20_N25
cycloneii_lcell_ff reg_f_i_mode_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_mode_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_mode_next_0_));

// atom is at LCFF_X50_Y21_N29
cycloneii_lcell_ff reg_f_i_row_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_next_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_1_));

// atom is at LCFF_X50_Y21_N17
cycloneii_lcell_ff reg_f_i_row_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_next_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_3_));

// atom is at LCCOMB_X57_Y22_N6
cycloneii_lcell_comb u_memory_ap_o_image0_1__5__afeeder(
// Equation(s):
// u_memory_ap_o_image0_1__5__afeeder_combout = u_memory_ap_o_image1_1__5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__5_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_1__5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_1__5__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_1__5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N26
cycloneii_lcell_comb u_memory_ap_o_image0_1__6__afeeder(
// Equation(s):
// u_memory_ap_o_image0_1__6__afeeder_combout = u_memory_ap_o_image1_1__6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__6_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_1__6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_1__6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_1__6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N0
cycloneii_lcell_comb u_memory_ap_o_image0_1__7__afeeder(
// Equation(s):
// u_memory_ap_o_image0_1__7__afeeder_combout = u_memory_ap_o_image1_1__7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__7_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_1__7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_1__7__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_1__7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N24
cycloneii_lcell_comb u_memory_ap_o_image0_2__4__afeeder(
// Equation(s):
// u_memory_ap_o_image0_2__4__afeeder_combout = u_memory_ap_o_image1_2__4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_2__4_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_2__4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_2__4__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_2__4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N0
cycloneii_lcell_comb u_memory_ap_o_image0_2__6__afeeder(
// Equation(s):
// u_memory_ap_o_image0_2__6__afeeder_combout = u_memory_ap_o_image1_2__6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_2__6_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_2__6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_2__6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_2__6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N0
cycloneii_lcell_comb u_flow_ap31_11__afeeder(
// Equation(s):
// u_flow_ap31_11__afeeder_combout = u_flow_ap21_11_

	.dataa(vcc),
	.datab(u_flow_ap21_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_11__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_11__afeeder.lut_mask = 16'hCCCC;
defparam u_flow_ap31_11__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N2
cycloneii_lcell_comb u_flow_ap31_7__afeeder(
// Equation(s):
// u_flow_ap31_7__afeeder_combout = u_flow_ap21_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_7_),
	.cin(gnd),
	.combout(u_flow_ap31_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_7__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap31_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N2
cycloneii_lcell_comb u_flow_ap31_6__afeeder(
// Equation(s):
// u_flow_ap31_6__afeeder_combout = u_flow_ap21_6_

	.dataa(vcc),
	.datab(u_flow_ap21_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_6__afeeder.lut_mask = 16'hCCCC;
defparam u_flow_ap31_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N26
cycloneii_lcell_comb u_flow_ap31_4__afeeder(
// Equation(s):
// u_flow_ap31_4__afeeder_combout = u_flow_ap21_4_

	.dataa(u_flow_ap21_4_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_4__afeeder.lut_mask = 16'hAAAA;
defparam u_flow_ap31_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N0
cycloneii_lcell_comb u_flow_ap31_2__afeeder(
// Equation(s):
// u_flow_ap31_2__afeeder_combout = u_flow_ap21_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_2_),
	.cin(gnd),
	.combout(u_flow_ap31_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_2__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap31_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N30
cycloneii_lcell_comb u_flow_ap31_1__afeeder(
// Equation(s):
// u_flow_ap31_1__afeeder_combout = u_flow_ap21_1_

	.dataa(vcc),
	.datab(u_flow_ap21_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_1__afeeder.lut_mask = 16'hCCCC;
defparam u_flow_ap31_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N8
cycloneii_lcell_comb u_flow_ap32_10__afeeder(
// Equation(s):
// u_flow_ap32_10__afeeder_combout = u_flow_ap23_10_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap23_10_),
	.cin(gnd),
	.combout(u_flow_ap32_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap32_10__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap32_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X41_Y19_N16
cycloneii_lcell_comb u_flow_ap32_9__afeeder(
// Equation(s):
// u_flow_ap32_9__afeeder_combout = u_flow_ap23_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap23_9_),
	.cin(gnd),
	.combout(u_flow_ap32_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap32_9__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap32_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N4
cycloneii_lcell_comb u_flow_ap32_5__afeeder(
// Equation(s):
// u_flow_ap32_5__afeeder_combout = u_flow_ap23_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap23_5_),
	.cin(gnd),
	.combout(u_flow_ap32_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap32_5__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap32_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N12
cycloneii_lcell_comb f_t1_next_7__afeeder(
// Equation(s):
// f_t1_next_7__afeeder_combout = f_t2_next_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t2_next_7_),
	.cin(gnd),
	.combout(f_t1_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_7__afeeder.lut_mask = 16'hFF00;
defparam f_t1_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N0
cycloneii_lcell_comb f_i2_next_7__afeeder(
// Equation(s):
// f_i2_next_7__afeeder_combout = f_t1_next_7_

	.dataa(vcc),
	.datab(f_t1_next_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i2_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_7__afeeder.lut_mask = 16'hCCCC;
defparam f_i2_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N26
cycloneii_lcell_comb f_t1_next_6__afeeder(
// Equation(s):
// f_t1_next_6__afeeder_combout = f_t2_next_6_

	.dataa(f_t2_next_6_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_t1_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_6__afeeder.lut_mask = 16'hAAAA;
defparam f_t1_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N24
cycloneii_lcell_comb f_i2_next_6__afeeder(
// Equation(s):
// f_i2_next_6__afeeder_combout = f_t1_next_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t1_next_6_),
	.cin(gnd),
	.combout(f_i2_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_6__afeeder.lut_mask = 16'hFF00;
defparam f_i2_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N10
cycloneii_lcell_comb f_t1_next_5__afeeder(
// Equation(s):
// f_t1_next_5__afeeder_combout = f_t2_next_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t2_next_5_),
	.cin(gnd),
	.combout(f_t1_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_5__afeeder.lut_mask = 16'hFF00;
defparam f_t1_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N24
cycloneii_lcell_comb f_i2_next_5__afeeder(
// Equation(s):
// f_i2_next_5__afeeder_combout = f_t1_next_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t1_next_5_),
	.cin(gnd),
	.combout(f_i2_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_5__afeeder.lut_mask = 16'hFF00;
defparam f_i2_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N30
cycloneii_lcell_comb f_t1_next_4__afeeder(
// Equation(s):
// f_t1_next_4__afeeder_combout = f_t2_next_4_

	.dataa(vcc),
	.datab(f_t2_next_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_t1_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_4__afeeder.lut_mask = 16'hCCCC;
defparam f_t1_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N20
cycloneii_lcell_comb f_i2_next_4__afeeder(
// Equation(s):
// f_i2_next_4__afeeder_combout = f_t1_next_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t1_next_4_),
	.cin(gnd),
	.combout(f_i2_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_4__afeeder.lut_mask = 16'hFF00;
defparam f_i2_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N20
cycloneii_lcell_comb f_t1_next_3__afeeder(
// Equation(s):
// f_t1_next_3__afeeder_combout = f_t2_next_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t2_next_3_),
	.cin(gnd),
	.combout(f_t1_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_3__afeeder.lut_mask = 16'hFF00;
defparam f_t1_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N0
cycloneii_lcell_comb f_t1_next_2__afeeder(
// Equation(s):
// f_t1_next_2__afeeder_combout = f_t2_next_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t2_next_2_),
	.cin(gnd),
	.combout(f_t1_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_2__afeeder.lut_mask = 16'hFF00;
defparam f_t1_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N2
cycloneii_lcell_comb f_i2_next_2__afeeder(
// Equation(s):
// f_i2_next_2__afeeder_combout = f_t1_next_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t1_next_2_),
	.cin(gnd),
	.combout(f_i2_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_2__afeeder.lut_mask = 16'hFF00;
defparam f_i2_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N18
cycloneii_lcell_comb f_t2_next_7__afeeder(
// Equation(s):
// f_t2_next_7__afeeder_combout = f_t3_next_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t3_next_7_),
	.cin(gnd),
	.combout(f_t2_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_7__afeeder.lut_mask = 16'hFF00;
defparam f_t2_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N0
cycloneii_lcell_comb f_t2_next_5__afeeder(
// Equation(s):
// f_t2_next_5__afeeder_combout = f_t3_next_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t3_next_5_),
	.cin(gnd),
	.combout(f_t2_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_5__afeeder.lut_mask = 16'hFF00;
defparam f_t2_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N4
cycloneii_lcell_comb f_t2_next_4__afeeder(
// Equation(s):
// f_t2_next_4__afeeder_combout = f_t3_next_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t3_next_4_),
	.cin(gnd),
	.combout(f_t2_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_4__afeeder.lut_mask = 16'hFF00;
defparam f_t2_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N10
cycloneii_lcell_comb f_t2_next_3__afeeder(
// Equation(s):
// f_t2_next_3__afeeder_combout = f_t3_next_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t3_next_3_),
	.cin(gnd),
	.combout(f_t2_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_3__afeeder.lut_mask = 16'hFF00;
defparam f_t2_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N8
cycloneii_lcell_comb f_b1_next_7__afeeder(
// Equation(s):
// f_b1_next_7__afeeder_combout = f_b2_next_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_7_),
	.cin(gnd),
	.combout(f_b1_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_7__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N26
cycloneii_lcell_comb f_i1_next_7__afeeder(
// Equation(s):
// f_i1_next_7__afeeder_combout = f_b1_next_7_

	.dataa(vcc),
	.datab(f_b1_next_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i1_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_7__afeeder.lut_mask = 16'hCCCC;
defparam f_i1_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N26
cycloneii_lcell_comb f_b1_next_1__afeeder(
// Equation(s):
// f_b1_next_1__afeeder_combout = f_b2_next_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_1_),
	.cin(gnd),
	.combout(f_b1_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_1__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N6
cycloneii_lcell_comb f_i1_next_1__afeeder(
// Equation(s):
// f_i1_next_1__afeeder_combout = f_b1_next_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b1_next_1_),
	.cin(gnd),
	.combout(f_i1_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_1__afeeder.lut_mask = 16'hFF00;
defparam f_i1_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N30
cycloneii_lcell_comb f_b2_next_7__afeeder(
// Equation(s):
// f_b2_next_7__afeeder_combout = f_b3_next_7_

	.dataa(f_b3_next_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b2_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_7__afeeder.lut_mask = 16'hAAAA;
defparam f_b2_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N20
cycloneii_lcell_comb f_b3_next_7__afeeder(
// Equation(s):
// f_b3_next_7__afeeder_combout = f_i2_next_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i2_next_7_),
	.cin(gnd),
	.combout(f_b3_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_7__afeeder.lut_mask = 16'hFF00;
defparam f_b3_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N10
cycloneii_lcell_comb f_t3_next_7__afeeder(
// Equation(s):
// f_t3_next_7__afeeder_combout = f_i1_next_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_7_),
	.cin(gnd),
	.combout(f_t3_next_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_7__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N20
cycloneii_lcell_comb f_t3_next_1__afeeder(
// Equation(s):
// f_t3_next_1__afeeder_combout = f_i1_next_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_1_),
	.cin(gnd),
	.combout(f_t3_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_1__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N28
cycloneii_lcell_comb f_i_row_next_1__afeeder(
// Equation(s):
// f_i_row_next_1__afeeder_combout = u_memory_ap_o_row_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_row_1_),
	.cin(gnd),
	.combout(f_i_row_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i_row_next_1__afeeder.lut_mask = 16'hFF00;
defparam f_i_row_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N16
cycloneii_lcell_comb f_i_row_next_3__afeeder(
// Equation(s):
// f_i_row_next_3__afeeder_combout = u_memory_ap_o_row_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_row_3_),
	.cin(gnd),
	.combout(f_i_row_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i_row_next_3__afeeder.lut_mask = 16'hFF00;
defparam f_i_row_next_3__afeeder.sum_lutc_input = "datac";
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

// atom is at LCCOMB_X43_Y20_N0
cycloneii_lcell_comb u_flow_astate_3__a_wirecell(
// Equation(s):
// u_flow_astate_3__a_wirecell_combout = !u_flow_astate_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_astate_3_),
	.cin(gnd),
	.combout(u_flow_astate_3__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam u_flow_astate_3__a_wirecell.lut_mask = 16'h00FF;
defparam u_flow_astate_3__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_D13
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

// atom is at LCCOMB_X51_Y20_N4
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52931(
// Equation(s):
// u_memory_amodgen_counter_column_anx51271z1 = u_memory_amodgen_counter_column_anx58250z15 $ VCC
// u_memory_amodgen_counter_column_anx58250z14 = CARRY(u_memory_amodgen_counter_column_anx58250z15)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_column_anx58250z15),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_amodgen_counter_column_anx51271z1),
	.cout(u_memory_amodgen_counter_column_anx58250z14));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52931.lut_mask = 16'h33CC;
defparam u_memory_amodgen_counter_column_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N0
cycloneii_lcell_comb u_memory_amodgen_counter_column_anx58250z15_afeeder(
// Equation(s):
// u_memory_amodgen_counter_column_anx58250z15_afeeder_combout = u_memory_amodgen_counter_column_anx51271z1

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_column_anx51271z1),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_amodgen_counter_column_anx58250z15_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_amodgen_counter_column_anx58250z15_afeeder.lut_mask = 16'hF0F0;
defparam u_memory_amodgen_counter_column_anx58250z15_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N12
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52927(
// Equation(s):
// u_memory_amodgen_counter_column_anx55259z1 = u_memory_amodgen_counter_column_anx58250z7 & (u_memory_amodgen_counter_column_anx58250z8 $ GND) # !u_memory_amodgen_counter_column_anx58250z7 & !u_memory_amodgen_counter_column_anx58250z8 & VCC
// u_memory_amodgen_counter_column_anx58250z6 = CARRY(u_memory_amodgen_counter_column_anx58250z7 & !u_memory_amodgen_counter_column_anx58250z8)

	.dataa(u_memory_amodgen_counter_column_anx58250z7),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_column_anx58250z8),
	.combout(u_memory_amodgen_counter_column_anx55259z1),
	.cout(u_memory_amodgen_counter_column_anx58250z6));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52927.lut_mask = 16'hA50A;
defparam u_memory_amodgen_counter_column_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io ix13876z43919(
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
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam ix13876z43919.input_async_reset = "none";
defparam ix13876z43919.input_power_up = "low";
defparam ix13876z43919.input_register_mode = "none";
defparam ix13876z43919.input_sync_reset = "none";
defparam ix13876z43919.oe_async_reset = "none";
defparam ix13876z43919.oe_power_up = "low";
defparam ix13876z43919.oe_register_mode = "none";
defparam ix13876z43919.oe_sync_reset = "none";
defparam ix13876z43919.operation_mode = "input";
defparam ix13876z43919.output_async_reset = "none";
defparam ix13876z43919.output_power_up = "low";
defparam ix13876z43919.output_register_mode = "none";
defparam ix13876z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X49_Y21_N2
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52931(
// Equation(s):
// u_memory_amodgen_counter_row_anx51271z1 = u_memory_amodgen_counter_row_anx58250z15 $ VCC
// u_memory_amodgen_counter_row_anx58250z14 = CARRY(u_memory_amodgen_counter_row_anx58250z15)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_row_anx58250z15),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_amodgen_counter_row_anx51271z1),
	.cout(u_memory_amodgen_counter_row_anx58250z14));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52931.lut_mask = 16'h33CC;
defparam u_memory_amodgen_counter_row_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N18
cycloneii_lcell_comb u_memory_aix8852z52923(
// Equation(s):
// u_memory_anx8852z1 = i_reset_acombout # u_memory_anx8852z2

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(u_memory_anx8852z2),
	.cin(gnd),
	.combout(u_memory_anx8852z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52923.lut_mask = 16'hFFF0;
defparam u_memory_aix8852z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N19
cycloneii_lcell_ff reg_in_i_valid_ibuf(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_valid_acombout),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_valid_dup0));

// atom is at LCCOMB_X53_Y21_N14
cycloneii_lcell_comb u_memory_aix8852z52930(
// Equation(s):
// u_memory_anot_rtlc2_X_0_n244 = debug_valid_dup0 & !i_valid_acombout & u_memory_anx8852z3

	.dataa(vcc),
	.datab(debug_valid_dup0),
	.datac(i_valid_acombout),
	.datad(u_memory_anx8852z3),
	.cin(gnd),
	.combout(u_memory_anot_rtlc2_X_0_n244),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52930.lut_mask = 16'h0C00;
defparam u_memory_aix8852z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N4
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix57253z52923(
// Equation(s):
// u_memory_amodgen_counter_row_anx57253z3 = u_memory_anot_rtlc2_X_0_n244 # i_reset_acombout # u_memory_anx8852z2

	.dataa(vcc),
	.datab(u_memory_anot_rtlc2_X_0_n244),
	.datac(i_reset_acombout),
	.datad(u_memory_anx8852z2),
	.cin(gnd),
	.combout(u_memory_amodgen_counter_row_anx57253z3),
	.cout());
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix57253z52923.lut_mask = 16'hFFFC;
defparam u_memory_amodgen_counter_row_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N3
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z15));

// atom is at LCCOMB_X49_Y21_N4
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52930(
// Equation(s):
// u_memory_amodgen_counter_row_anx52268z1 = u_memory_amodgen_counter_row_anx58250z13 & !u_memory_amodgen_counter_row_anx58250z14 # !u_memory_amodgen_counter_row_anx58250z13 & (u_memory_amodgen_counter_row_anx58250z14 # GND)
// u_memory_amodgen_counter_row_anx58250z12 = CARRY(!u_memory_amodgen_counter_row_anx58250z14 # !u_memory_amodgen_counter_row_anx58250z13)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_row_anx58250z13),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z14),
	.combout(u_memory_amodgen_counter_row_anx52268z1),
	.cout(u_memory_amodgen_counter_row_anx58250z12));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52930.lut_mask = 16'h3C3F;
defparam u_memory_amodgen_counter_row_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N5
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z13));

// atom is at LCCOMB_X49_Y21_N6
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52929(
// Equation(s):
// u_memory_amodgen_counter_row_anx53265z1 = u_memory_amodgen_counter_row_anx58250z11 & (u_memory_amodgen_counter_row_anx58250z12 $ GND) # !u_memory_amodgen_counter_row_anx58250z11 & !u_memory_amodgen_counter_row_anx58250z12 & VCC
// u_memory_amodgen_counter_row_anx58250z10 = CARRY(u_memory_amodgen_counter_row_anx58250z11 & !u_memory_amodgen_counter_row_anx58250z12)

	.dataa(u_memory_amodgen_counter_row_anx58250z11),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z12),
	.combout(u_memory_amodgen_counter_row_anx53265z1),
	.cout(u_memory_amodgen_counter_row_anx58250z10));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52929.lut_mask = 16'hA50A;
defparam u_memory_amodgen_counter_row_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X49_Y21_N8
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52928(
// Equation(s):
// u_memory_amodgen_counter_row_anx54262z1 = u_memory_amodgen_counter_row_anx58250z9 & !u_memory_amodgen_counter_row_anx58250z10 # !u_memory_amodgen_counter_row_anx58250z9 & (u_memory_amodgen_counter_row_anx58250z10 # GND)
// u_memory_amodgen_counter_row_anx58250z8 = CARRY(!u_memory_amodgen_counter_row_anx58250z10 # !u_memory_amodgen_counter_row_anx58250z9)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_row_anx58250z9),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z10),
	.combout(u_memory_amodgen_counter_row_anx54262z1),
	.cout(u_memory_amodgen_counter_row_anx58250z8));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52928.lut_mask = 16'h3C3F;
defparam u_memory_amodgen_counter_row_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N9
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z9));

// atom is at LCCOMB_X49_Y21_N10
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52927(
// Equation(s):
// u_memory_amodgen_counter_row_anx55259z1 = u_memory_amodgen_counter_row_anx58250z7 & (u_memory_amodgen_counter_row_anx58250z8 $ GND) # !u_memory_amodgen_counter_row_anx58250z7 & !u_memory_amodgen_counter_row_anx58250z8 & VCC
// u_memory_amodgen_counter_row_anx58250z6 = CARRY(u_memory_amodgen_counter_row_anx58250z7 & !u_memory_amodgen_counter_row_anx58250z8)

	.dataa(u_memory_amodgen_counter_row_anx58250z7),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z8),
	.combout(u_memory_amodgen_counter_row_anx55259z1),
	.cout(u_memory_amodgen_counter_row_anx58250z6));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52927.lut_mask = 16'hA50A;
defparam u_memory_amodgen_counter_row_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X49_Y21_N12
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52926(
// Equation(s):
// u_memory_amodgen_counter_row_anx56256z1 = u_memory_amodgen_counter_row_anx58250z5 & !u_memory_amodgen_counter_row_anx58250z6 # !u_memory_amodgen_counter_row_anx58250z5 & (u_memory_amodgen_counter_row_anx58250z6 # GND)
// u_memory_amodgen_counter_row_anx58250z4 = CARRY(!u_memory_amodgen_counter_row_anx58250z6 # !u_memory_amodgen_counter_row_anx58250z5)

	.dataa(u_memory_amodgen_counter_row_anx58250z5),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z6),
	.combout(u_memory_amodgen_counter_row_anx56256z1),
	.cout(u_memory_amodgen_counter_row_anx58250z4));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52926.lut_mask = 16'h5A5F;
defparam u_memory_amodgen_counter_row_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X49_Y21_N14
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52925(
// Equation(s):
// u_memory_amodgen_counter_row_anx57253z1 = u_memory_amodgen_counter_row_anx58250z3 & (u_memory_amodgen_counter_row_anx58250z4 $ GND) # !u_memory_amodgen_counter_row_anx58250z3 & !u_memory_amodgen_counter_row_anx58250z4 & VCC
// u_memory_amodgen_counter_row_anx58250z2 = CARRY(u_memory_amodgen_counter_row_anx58250z3 & !u_memory_amodgen_counter_row_anx58250z4)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_row_anx58250z3),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z4),
	.combout(u_memory_amodgen_counter_row_anx57253z1),
	.cout(u_memory_amodgen_counter_row_anx58250z2));
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52925.lut_mask = 16'hC30C;
defparam u_memory_amodgen_counter_row_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N15
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z3));

// atom is at LCFF_X49_Y21_N13
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z5));

// atom is at LCCOMB_X53_Y21_N28
cycloneii_lcell_comb u_memory_aix8852z52928(
// Equation(s):
// u_memory_anx8852z6 = u_memory_amodgen_counter_row_anx1041z1 & u_memory_amodgen_counter_row_anx58250z3 & u_memory_amodgen_counter_row_anx58250z15 & u_memory_amodgen_counter_row_anx58250z5

	.dataa(u_memory_amodgen_counter_row_anx1041z1),
	.datab(u_memory_amodgen_counter_row_anx58250z3),
	.datac(u_memory_amodgen_counter_row_anx58250z15),
	.datad(u_memory_amodgen_counter_row_anx58250z5),
	.cin(gnd),
	.combout(u_memory_anx8852z6),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52928.lut_mask = 16'h8000;
defparam u_memory_aix8852z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N7
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z11));

// atom is at LCFF_X49_Y21_N11
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx58250z7));

// atom is at LCCOMB_X53_Y21_N6
cycloneii_lcell_comb u_memory_aix8852z52929(
// Equation(s):
// u_memory_anx8852z7 = u_memory_amodgen_counter_row_anx58250z9 & u_memory_amodgen_counter_row_anx58250z13 & u_memory_amodgen_counter_row_anx58250z11 & u_memory_amodgen_counter_row_anx58250z7

	.dataa(u_memory_amodgen_counter_row_anx58250z9),
	.datab(u_memory_amodgen_counter_row_anx58250z13),
	.datac(u_memory_amodgen_counter_row_anx58250z11),
	.datad(u_memory_amodgen_counter_row_anx58250z7),
	.cin(gnd),
	.combout(u_memory_anx8852z7),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52929.lut_mask = 16'h8000;
defparam u_memory_aix8852z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N18
cycloneii_lcell_comb u_memory_aix8852z52924(
// Equation(s):
// u_memory_anx8852z2 = u_memory_anx8852z3 & u_memory_anx8852z6 & debug_valid_dup0 & u_memory_anx8852z7

	.dataa(u_memory_anx8852z3),
	.datab(u_memory_anx8852z6),
	.datac(debug_valid_dup0),
	.datad(u_memory_anx8852z7),
	.cin(gnd),
	.combout(u_memory_anx8852z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52924.lut_mask = 16'h8000;
defparam u_memory_aix8852z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N30
cycloneii_lcell_comb u_memory_aix47386z52923(
// Equation(s):
// u_memory_anx47386z1 = i_reset_acombout # u_memory_anx8852z2 # !i_valid_acombout

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(i_reset_acombout),
	.datad(u_memory_anx8852z2),
	.cin(gnd),
	.combout(u_memory_anx47386z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix47386z52923.lut_mask = 16'hFFF3;
defparam u_memory_aix47386z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N0
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix57253z52923(
// Equation(s):
// u_memory_amodgen_counter_column_anx57253z3 = u_memory_anx47386z1 & (debug_valid_dup0 # u_memory_anx47386z2)

	.dataa(debug_valid_dup0),
	.datab(u_memory_anx47386z2),
	.datac(vcc),
	.datad(u_memory_anx47386z1),
	.cin(gnd),
	.combout(u_memory_amodgen_counter_column_anx57253z3),
	.cout());
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix57253z52923.lut_mask = 16'hEE00;
defparam u_memory_amodgen_counter_column_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N13
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z7));

// atom is at LCCOMB_X51_Y20_N28
cycloneii_lcell_comb u_memory_aix8852z52927(
// Equation(s):
// u_memory_anx8852z5 = u_memory_amodgen_counter_column_anx58250z5 & u_memory_amodgen_counter_column_anx58250z7

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_column_anx58250z5),
	.datad(u_memory_amodgen_counter_column_anx58250z7),
	.cin(gnd),
	.combout(u_memory_anx8852z5),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52927.lut_mask = 16'hF000;
defparam u_memory_aix8852z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N14
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52926(
// Equation(s):
// u_memory_amodgen_counter_column_anx56256z1 = u_memory_amodgen_counter_column_anx58250z5 & !u_memory_amodgen_counter_column_anx58250z6 # !u_memory_amodgen_counter_column_anx58250z5 & (u_memory_amodgen_counter_column_anx58250z6 # GND)
// u_memory_amodgen_counter_column_anx58250z4 = CARRY(!u_memory_amodgen_counter_column_anx58250z6 # !u_memory_amodgen_counter_column_anx58250z5)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_column_anx58250z5),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_column_anx58250z6),
	.combout(u_memory_amodgen_counter_column_anx56256z1),
	.cout(u_memory_amodgen_counter_column_anx58250z4));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52926.lut_mask = 16'h3C3F;
defparam u_memory_amodgen_counter_column_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N16
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52925(
// Equation(s):
// u_memory_amodgen_counter_column_anx57253z1 = u_memory_amodgen_counter_column_anx58250z3 & (u_memory_amodgen_counter_column_anx58250z4 $ GND) # !u_memory_amodgen_counter_column_anx58250z3 & !u_memory_amodgen_counter_column_anx58250z4 & VCC
// u_memory_amodgen_counter_column_anx58250z2 = CARRY(u_memory_amodgen_counter_column_anx58250z3 & !u_memory_amodgen_counter_column_anx58250z4)

	.dataa(u_memory_amodgen_counter_column_anx58250z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_column_anx58250z4),
	.combout(u_memory_amodgen_counter_column_anx57253z1),
	.cout(u_memory_amodgen_counter_column_anx58250z2));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52925.lut_mask = 16'hA50A;
defparam u_memory_amodgen_counter_column_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N17
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z3));

// atom is at LCCOMB_X51_Y20_N6
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52930(
// Equation(s):
// u_memory_amodgen_counter_column_anx52268z1 = u_memory_amodgen_counter_column_anx58250z13 & !u_memory_amodgen_counter_column_anx58250z14 # !u_memory_amodgen_counter_column_anx58250z13 & (u_memory_amodgen_counter_column_anx58250z14 # GND)
// u_memory_amodgen_counter_column_anx58250z12 = CARRY(!u_memory_amodgen_counter_column_anx58250z14 # !u_memory_amodgen_counter_column_anx58250z13)

	.dataa(u_memory_amodgen_counter_column_anx58250z13),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_column_anx58250z14),
	.combout(u_memory_amodgen_counter_column_anx52268z1),
	.cout(u_memory_amodgen_counter_column_anx58250z12));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52930.lut_mask = 16'h5A5F;
defparam u_memory_amodgen_counter_column_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N7
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z13));

// atom is at LCCOMB_X51_Y20_N2
cycloneii_lcell_comb u_memory_aix8852z52926(
// Equation(s):
// u_memory_anx8852z4 = u_memory_amodgen_counter_column_anx58250z9 & u_memory_amodgen_counter_column_anx58250z15 & u_memory_amodgen_counter_column_anx58250z11 & u_memory_amodgen_counter_column_anx58250z13

	.dataa(u_memory_amodgen_counter_column_anx58250z9),
	.datab(u_memory_amodgen_counter_column_anx58250z15),
	.datac(u_memory_amodgen_counter_column_anx58250z11),
	.datad(u_memory_amodgen_counter_column_anx58250z13),
	.cin(gnd),
	.combout(u_memory_anx8852z4),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52926.lut_mask = 16'h8000;
defparam u_memory_aix8852z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N30
cycloneii_lcell_comb u_memory_aix8852z52925(
// Equation(s):
// u_memory_anx8852z3 = u_memory_amodgen_counter_column_anx1041z1 & u_memory_anx8852z5 & u_memory_amodgen_counter_column_anx58250z3 & u_memory_anx8852z4

	.dataa(u_memory_amodgen_counter_column_anx1041z1),
	.datab(u_memory_anx8852z5),
	.datac(u_memory_amodgen_counter_column_anx58250z3),
	.datad(u_memory_anx8852z4),
	.cin(gnd),
	.combout(u_memory_anx8852z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix8852z52925.lut_mask = 16'h8000;
defparam u_memory_aix8852z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N2
cycloneii_lcell_comb u_memory_aix47386z52924(
// Equation(s):
// u_memory_anx47386z2 = i_reset_acombout # u_memory_anx8852z3 & debug_valid_dup0

	.dataa(i_reset_acombout),
	.datab(u_memory_anx8852z3),
	.datac(vcc),
	.datad(debug_valid_dup0),
	.cin(gnd),
	.combout(u_memory_anx47386z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix47386z52924.lut_mask = 16'hEEAA;
defparam u_memory_aix47386z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N1
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx58250z15_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z15));

// atom is at LCCOMB_X51_Y20_N8
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52929(
// Equation(s):
// u_memory_amodgen_counter_column_anx53265z1 = u_memory_amodgen_counter_column_anx58250z11 & (u_memory_amodgen_counter_column_anx58250z12 $ GND) # !u_memory_amodgen_counter_column_anx58250z11 & !u_memory_amodgen_counter_column_anx58250z12 & VCC
// u_memory_amodgen_counter_column_anx58250z10 = CARRY(u_memory_amodgen_counter_column_anx58250z11 & !u_memory_amodgen_counter_column_anx58250z12)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_column_anx58250z11),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_column_anx58250z12),
	.combout(u_memory_amodgen_counter_column_anx53265z1),
	.cout(u_memory_amodgen_counter_column_anx58250z10));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52929.lut_mask = 16'hC30C;
defparam u_memory_amodgen_counter_column_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N9
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z11));

// atom is at LCCOMB_X51_Y20_N10
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52928(
// Equation(s):
// u_memory_amodgen_counter_column_anx54262z1 = u_memory_amodgen_counter_column_anx58250z9 & !u_memory_amodgen_counter_column_anx58250z10 # !u_memory_amodgen_counter_column_anx58250z9 & (u_memory_amodgen_counter_column_anx58250z10 # GND)
// u_memory_amodgen_counter_column_anx58250z8 = CARRY(!u_memory_amodgen_counter_column_anx58250z10 # !u_memory_amodgen_counter_column_anx58250z9)

	.dataa(u_memory_amodgen_counter_column_anx58250z9),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_column_anx58250z10),
	.combout(u_memory_amodgen_counter_column_anx54262z1),
	.cout(u_memory_amodgen_counter_column_anx58250z8));
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52928.lut_mask = 16'h5A5F;
defparam u_memory_amodgen_counter_column_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N15
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z5));

// atom is at LCCOMB_X51_Y20_N22
cycloneii_lcell_comb u_memory_aix60567z52926(
// Equation(s):
// u_memory_anx60567z4 = u_memory_anx60567z5 # u_memory_amodgen_counter_column_anx58250z5 # u_memory_amodgen_counter_column_anx58250z3 # u_memory_amodgen_counter_column_anx58250z7

	.dataa(u_memory_anx60567z5),
	.datab(u_memory_amodgen_counter_column_anx58250z5),
	.datac(u_memory_amodgen_counter_column_anx58250z3),
	.datad(u_memory_amodgen_counter_column_anx58250z7),
	.cin(gnd),
	.combout(u_memory_anx60567z4),
	.cout());
// synopsys translate_off
defparam u_memory_aix60567z52926.lut_mask = 16'hFFFE;
defparam u_memory_aix60567z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X49_Y21_N16
cycloneii_lcell_comb u_memory_amodgen_counter_row_aix58250z52923(
// Equation(s):
// u_memory_amodgen_counter_row_anx58250z1 = u_memory_amodgen_counter_row_anx1041z1 $ u_memory_amodgen_counter_row_anx58250z2

	.dataa(u_memory_amodgen_counter_row_anx1041z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_memory_amodgen_counter_row_anx58250z2),
	.combout(u_memory_amodgen_counter_row_anx58250z1),
	.cout());
// synopsys translate_off
defparam u_memory_amodgen_counter_row_aix58250z52923.lut_mask = 16'h5A5A;
defparam u_memory_amodgen_counter_row_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N17
cycloneii_lcell_ff u_memory_amodgen_counter_row_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_row_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_row_anx1041z1));

// atom is at LCCOMB_X51_Y21_N10
cycloneii_lcell_comb u_memory_aix60567z52925(
// Equation(s):
// u_memory_anx60567z3 = u_memory_amodgen_counter_row_anx58250z7 # u_memory_amodgen_counter_row_anx58250z9 # u_memory_amodgen_counter_row_anx58250z13 # u_memory_amodgen_counter_row_anx58250z11

	.dataa(u_memory_amodgen_counter_row_anx58250z7),
	.datab(u_memory_amodgen_counter_row_anx58250z9),
	.datac(u_memory_amodgen_counter_row_anx58250z13),
	.datad(u_memory_amodgen_counter_row_anx58250z11),
	.cin(gnd),
	.combout(u_memory_anx60567z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix60567z52925.lut_mask = 16'hFFFE;
defparam u_memory_aix60567z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N12
cycloneii_lcell_comb u_memory_aix60567z52924(
// Equation(s):
// u_memory_anx60567z2 = u_memory_amodgen_counter_row_anx58250z5 # u_memory_amodgen_counter_row_anx58250z3 # u_memory_amodgen_counter_row_anx1041z1 # u_memory_anx60567z3

	.dataa(u_memory_amodgen_counter_row_anx58250z5),
	.datab(u_memory_amodgen_counter_row_anx58250z3),
	.datac(u_memory_amodgen_counter_row_anx1041z1),
	.datad(u_memory_anx60567z3),
	.cin(gnd),
	.combout(u_memory_anx60567z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix60567z52924.lut_mask = 16'hFFFE;
defparam u_memory_aix60567z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X48_Y20_N18
cycloneii_lcell_comb u_memory_aix60567z52923(
// Equation(s):
// u_memory_anx60567z1 = u_memory_ap_o_valid # u_memory_anx60567z2 & (u_memory_amodgen_counter_column_anx1041z1 # u_memory_anx60567z4)

	.dataa(u_memory_amodgen_counter_column_anx1041z1),
	.datab(u_memory_anx60567z4),
	.datac(u_memory_ap_o_valid),
	.datad(u_memory_anx60567z2),
	.cin(gnd),
	.combout(u_memory_anx60567z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix60567z52923.lut_mask = 16'hFEF0;
defparam u_memory_aix60567z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y20_N19
cycloneii_lcell_ff u_memory_areg_o_valid(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_anx60567z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!debug_valid_dup0),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_valid));

// atom is at LCCOMB_X50_Y20_N28
cycloneii_lcell_comb ix64956z52924(
// Equation(s):
// nx64956z1 = i_reset_acombout # u_memory_ap_o_valid # !nx57127z2

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(i_reset_acombout),
	.datad(u_memory_ap_o_valid),
	.cin(gnd),
	.combout(nx64956z1),
	.cout());
// synopsys translate_off
defparam ix64956z52924.lut_mask = 16'hFFF3;
defparam ix64956z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N21
cycloneii_lcell_ff reg_f_state_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_state_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx64956z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_state_3_));

// atom is at LCCOMB_X53_Y20_N10
cycloneii_lcell_comb f_state_3__a_wirecell(
// Equation(s):
// f_state_3__a_wirecell_combout = !f_state_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_state_3_),
	.cin(gnd),
	.combout(f_state_3__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam f_state_3__a_wirecell.lut_mask = 16'h00FF;
defparam f_state_3__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y20_N11
cycloneii_lcell_ff reg_f_state_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_state_3__a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx64956z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63959z1));

// atom is at LCCOMB_X53_Y20_N8
cycloneii_lcell_comb nx63959z1_a_wirecell(
// Equation(s):
// nx63959z1_a_wirecell_combout = !nx63959z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx63959z1),
	.cin(gnd),
	.combout(nx63959z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam nx63959z1_a_wirecell.lut_mask = 16'h00FF;
defparam nx63959z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y20_N9
cycloneii_lcell_ff reg_f_state_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx63959z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx64956z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_state_1_));

// atom is at LCFF_X56_Y20_N31
cycloneii_lcell_ff reg_f_state_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_state_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx64956z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_state_2_));

// atom is at LCCOMB_X56_Y20_N0
cycloneii_lcell_comb ix57127z52924(
// Equation(s):
// nx57127z2 = !f_state_3_ & !f_state_2_ & !f_state_1_ & !nx63959z1

	.dataa(f_state_3_),
	.datab(f_state_2_),
	.datac(f_state_1_),
	.datad(nx63959z1),
	.cin(gnd),
	.combout(nx57127z2),
	.cout());
// synopsys translate_off
defparam ix57127z52924.lut_mask = 16'h0001;
defparam ix57127z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X46_Y20_N4
cycloneii_lcell_comb ix20836z52987(
// Equation(s):
// nx20836z1 = u_memory_ap_o_valid # !nx57127z2

	.dataa(vcc),
	.datab(vcc),
	.datac(nx57127z2),
	.datad(u_memory_ap_o_valid),
	.cin(gnd),
	.combout(nx20836z1),
	.cout());
// synopsys translate_off
defparam ix20836z52987.lut_mask = 16'hFF0F;
defparam ix20836z52987.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N5
cycloneii_lcell_ff u_flow_areg_p20(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20836z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap20));

// atom is at LCFF_X46_Y20_N3
cycloneii_lcell_ff u_flow_areg_p30(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap20),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap30));

// atom is at LCFF_X46_Y20_N9
cycloneii_lcell_ff u_flow_areg_p40(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap30),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap40));

// atom is at LCCOMB_X44_Y20_N0
cycloneii_lcell_comb u_flow_aix29521z52924(
// Equation(s):
// u_flow_anx29521z1 = i_reset_acombout # u_flow_ap40

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(u_flow_ap40),
	.cin(gnd),
	.combout(u_flow_anx29521z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix29521z52924.lut_mask = 16'hFFF0;
defparam u_flow_aix29521z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X43_Y20_N1
cycloneii_lcell_ff u_flow_areg_state_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_astate_3__a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(u_flow_anx29521z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx28524z1));

// atom is at LCCOMB_X43_Y20_N18
cycloneii_lcell_comb u_flow_anx28524z1_a_wirecell(
// Equation(s):
// u_flow_anx28524z1_a_wirecell_combout = !u_flow_anx28524z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx28524z1),
	.cin(gnd),
	.combout(u_flow_anx28524z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx28524z1_a_wirecell.lut_mask = 16'h00FF;
defparam u_flow_anx28524z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X43_Y20_N19
cycloneii_lcell_ff u_flow_areg_state_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx28524z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(u_flow_anx29521z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_astate_1_));

// atom is at LCFF_X44_Y20_N17
cycloneii_lcell_ff u_flow_areg_state_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_astate_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(u_flow_anx29521z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_astate_2_));

// atom is at LCFF_X44_Y20_N29
cycloneii_lcell_ff u_flow_areg_state_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_astate_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(u_flow_anx29521z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_astate_3_));

// atom is at LCFF_X44_Y20_N25
cycloneii_lcell_ff u_flow_areg_o_valid(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_astate_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ao_valid));

// atom is at PIN_T25
cycloneii_io ix37378z43919(
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
	.combout(i_pixel_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[7]));
// synopsys translate_off
defparam ix37378z43919.input_async_reset = "none";
defparam ix37378z43919.input_power_up = "low";
defparam ix37378z43919.input_register_mode = "none";
defparam ix37378z43919.input_sync_reset = "none";
defparam ix37378z43919.oe_async_reset = "none";
defparam ix37378z43919.oe_power_up = "low";
defparam ix37378z43919.oe_register_mode = "none";
defparam ix37378z43919.oe_sync_reset = "none";
defparam ix37378z43919.operation_mode = "input";
defparam ix37378z43919.output_async_reset = "none";
defparam ix37378z43919.output_power_up = "low";
defparam ix37378z43919.output_register_mode = "none";
defparam ix37378z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N31
cycloneii_lcell_ff reg_in_i_pixel_ibuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_7_));

// atom is at LCCOMB_X50_Y20_N26
cycloneii_lcell_comb u_memory_aix40106z52923(
// Equation(s):
// u_memory_anx40106z1 = u_memory_anx8852z1 # u_memory_anx40106z2 & i_valid_acombout & !u_memory_ap_debug_num_1_0_

	.dataa(u_memory_anx40106z2),
	.datab(i_valid_acombout),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_anx8852z1),
	.cin(gnd),
	.combout(u_memory_anx40106z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix40106z52923.lut_mask = 16'hFF08;
defparam u_memory_aix40106z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y22_N18
cycloneii_lcell_comb u_memory_aix39109z52925(
// Equation(s):
// u_memory_anx39109z3 = !u_memory_ap_debug_num_1_1_ & !u_memory_ap_debug_num_1_0_ & !u_memory_ap_debug_num_1_2_ & i_valid_acombout

	.dataa(u_memory_ap_debug_num_1_1_),
	.datab(u_memory_ap_debug_num_1_0_),
	.datac(u_memory_ap_debug_num_1_2_),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(u_memory_anx39109z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix39109z52925.lut_mask = 16'h0100;
defparam u_memory_aix39109z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N8
cycloneii_lcell_comb u_memory_aix39109z52924(
// Equation(s):
// u_memory_anx39109z2 = i_reset_acombout # u_memory_anx39109z3 # u_memory_anot_rtlc2_X_0_n244 # u_memory_anx8852z2

	.dataa(i_reset_acombout),
	.datab(u_memory_anx39109z3),
	.datac(u_memory_anot_rtlc2_X_0_n244),
	.datad(u_memory_anx8852z2),
	.cin(gnd),
	.combout(u_memory_anx39109z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix39109z52924.lut_mask = 16'hFFFE;
defparam u_memory_aix39109z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y22_N19
cycloneii_lcell_ff u_memory_areg_mem_wrn_current_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_debug_num_1_1_),
	.aclr(gnd),
	.sclr(u_memory_anx40106z1),
	.sload(vcc),
	.ena(u_memory_anx39109z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_debug_num_1_2_));

// atom is at LCCOMB_X50_Y22_N24
cycloneii_lcell_comb u_memory_ap_debug_num_1_0__afeeder(
// Equation(s):
// u_memory_ap_debug_num_1_0__afeeder_combout = u_memory_ap_debug_num_1_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_debug_num_1_2_),
	.cin(gnd),
	.combout(u_memory_ap_debug_num_1_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_debug_num_1_0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_debug_num_1_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y22_N25
cycloneii_lcell_ff u_memory_areg_mem_wrn_current_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_debug_num_1_0__afeeder_combout),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(u_memory_anx8852z1),
	.sload(u_memory_anx39109z3),
	.ena(u_memory_anx39109z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_debug_num_1_0_));

// atom is at LCFF_X51_Y22_N17
cycloneii_lcell_ff u_memory_areg_mem_wrn_current_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_debug_num_1_0_),
	.aclr(gnd),
	.sclr(u_memory_anx40106z1),
	.sload(vcc),
	.ena(u_memory_anx39109z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_debug_num_1_1_));

// atom is at LCCOMB_X51_Y22_N16
cycloneii_lcell_comb u_memory_aix5021z52924(
// Equation(s):
// u_memory_aNOT_b_0_ = u_memory_ap_debug_num_1_1_ & u_memory_anx60567z2 # !u_memory_ap_debug_num_1_0_

	.dataa(u_memory_ap_debug_num_1_0_),
	.datab(vcc),
	.datac(u_memory_ap_debug_num_1_1_),
	.datad(u_memory_anx60567z2),
	.cin(gnd),
	.combout(u_memory_aNOT_b_0_),
	.cout());
// synopsys translate_off
defparam u_memory_aix5021z52924.lut_mask = 16'hF555;
defparam u_memory_aix5021z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_AC18
cycloneii_io ix30399z43919(
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
	.combout(i_pixel_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[0]));
// synopsys translate_off
defparam ix30399z43919.input_async_reset = "none";
defparam ix30399z43919.input_power_up = "low";
defparam ix30399z43919.input_register_mode = "none";
defparam ix30399z43919.input_sync_reset = "none";
defparam ix30399z43919.oe_async_reset = "none";
defparam ix30399z43919.oe_power_up = "low";
defparam ix30399z43919.oe_register_mode = "none";
defparam ix30399z43919.oe_sync_reset = "none";
defparam ix30399z43919.operation_mode = "input";
defparam ix30399z43919.output_async_reset = "none";
defparam ix30399z43919.output_power_up = "low";
defparam ix30399z43919.output_register_mode = "none";
defparam ix30399z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N1
cycloneii_lcell_ff reg_in_i_pixel_ibuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_0_));

// atom is at LCFF_X51_Y20_N11
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx58250z9));

// atom is at LCCOMB_X51_Y20_N18
cycloneii_lcell_comb u_memory_amodgen_counter_column_aix58250z52923(
// Equation(s):
// u_memory_amodgen_counter_column_anx58250z1 = u_memory_amodgen_counter_column_anx58250z2 $ u_memory_amodgen_counter_column_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_column_anx1041z1),
	.cin(u_memory_amodgen_counter_column_anx58250z2),
	.combout(u_memory_amodgen_counter_column_anx58250z1),
	.cout());
// synopsys translate_off
defparam u_memory_amodgen_counter_column_aix58250z52923.lut_mask = 16'h0FF0;
defparam u_memory_amodgen_counter_column_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y20_N19
cycloneii_lcell_ff u_memory_amodgen_counter_column_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_amodgen_counter_column_anx1041z1));

// atom is at PIN_W17
cycloneii_io ix31396z43919(
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
	.combout(i_pixel_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[1]));
// synopsys translate_off
defparam ix31396z43919.input_async_reset = "none";
defparam ix31396z43919.input_power_up = "low";
defparam ix31396z43919.input_register_mode = "none";
defparam ix31396z43919.input_sync_reset = "none";
defparam ix31396z43919.oe_async_reset = "none";
defparam ix31396z43919.oe_power_up = "low";
defparam ix31396z43919.oe_register_mode = "none";
defparam ix31396z43919.oe_sync_reset = "none";
defparam ix31396z43919.operation_mode = "input";
defparam ix31396z43919.output_async_reset = "none";
defparam ix31396z43919.output_power_up = "low";
defparam ix31396z43919.output_register_mode = "none";
defparam ix31396z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N11
cycloneii_lcell_ff reg_in_i_pixel_ibuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_1_));

// atom is at PIN_P17
cycloneii_io ix32393z43919(
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
	.combout(i_pixel_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[2]));
// synopsys translate_off
defparam ix32393z43919.input_async_reset = "none";
defparam ix32393z43919.input_power_up = "low";
defparam ix32393z43919.input_register_mode = "none";
defparam ix32393z43919.input_sync_reset = "none";
defparam ix32393z43919.oe_async_reset = "none";
defparam ix32393z43919.oe_power_up = "low";
defparam ix32393z43919.oe_register_mode = "none";
defparam ix32393z43919.oe_sync_reset = "none";
defparam ix32393z43919.operation_mode = "input";
defparam ix32393z43919.output_async_reset = "none";
defparam ix32393z43919.output_power_up = "low";
defparam ix32393z43919.output_register_mode = "none";
defparam ix32393z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N5
cycloneii_lcell_ff reg_in_i_pixel_ibuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_2_));

// atom is at PIN_T19
cycloneii_io ix33390z43919(
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
	.combout(i_pixel_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[3]));
// synopsys translate_off
defparam ix33390z43919.input_async_reset = "none";
defparam ix33390z43919.input_power_up = "low";
defparam ix33390z43919.input_register_mode = "none";
defparam ix33390z43919.input_sync_reset = "none";
defparam ix33390z43919.oe_async_reset = "none";
defparam ix33390z43919.oe_power_up = "low";
defparam ix33390z43919.oe_register_mode = "none";
defparam ix33390z43919.oe_sync_reset = "none";
defparam ix33390z43919.operation_mode = "input";
defparam ix33390z43919.output_async_reset = "none";
defparam ix33390z43919.output_power_up = "low";
defparam ix33390z43919.output_register_mode = "none";
defparam ix33390z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N23
cycloneii_lcell_ff reg_in_i_pixel_ibuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_3_));

// atom is at PIN_AF19
cycloneii_io ix34387z43919(
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
	.combout(i_pixel_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[4]));
// synopsys translate_off
defparam ix34387z43919.input_async_reset = "none";
defparam ix34387z43919.input_power_up = "low";
defparam ix34387z43919.input_register_mode = "none";
defparam ix34387z43919.input_sync_reset = "none";
defparam ix34387z43919.oe_async_reset = "none";
defparam ix34387z43919.oe_power_up = "low";
defparam ix34387z43919.oe_register_mode = "none";
defparam ix34387z43919.oe_sync_reset = "none";
defparam ix34387z43919.operation_mode = "input";
defparam ix34387z43919.output_async_reset = "none";
defparam ix34387z43919.output_power_up = "low";
defparam ix34387z43919.output_register_mode = "none";
defparam ix34387z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N9
cycloneii_lcell_ff reg_in_i_pixel_ibuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_4_));

// atom is at PIN_V17
cycloneii_io ix35384z43919(
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
	.combout(i_pixel_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[5]));
// synopsys translate_off
defparam ix35384z43919.input_async_reset = "none";
defparam ix35384z43919.input_power_up = "low";
defparam ix35384z43919.input_register_mode = "none";
defparam ix35384z43919.input_sync_reset = "none";
defparam ix35384z43919.oe_async_reset = "none";
defparam ix35384z43919.oe_power_up = "low";
defparam ix35384z43919.oe_register_mode = "none";
defparam ix35384z43919.oe_sync_reset = "none";
defparam ix35384z43919.operation_mode = "input";
defparam ix35384z43919.output_async_reset = "none";
defparam ix35384z43919.output_power_up = "low";
defparam ix35384z43919.output_register_mode = "none";
defparam ix35384z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N19
cycloneii_lcell_ff reg_in_i_pixel_ibuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_5_));

// atom is at PIN_V25
cycloneii_io ix36381z43919(
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
	.combout(i_pixel_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[6]));
// synopsys translate_off
defparam ix36381z43919.input_async_reset = "none";
defparam ix36381z43919.input_power_up = "low";
defparam ix36381z43919.input_register_mode = "none";
defparam ix36381z43919.input_sync_reset = "none";
defparam ix36381z43919.oe_async_reset = "none";
defparam ix36381z43919.oe_power_up = "low";
defparam ix36381z43919.oe_register_mode = "none";
defparam ix36381z43919.oe_sync_reset = "none";
defparam ix36381z43919.operation_mode = "input";
defparam ix36381z43919.output_async_reset = "none";
defparam ix36381z43919.output_power_up = "low";
defparam ix36381z43919.output_register_mode = "none";
defparam ix36381z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N13
cycloneii_lcell_ff reg_in_i_pixel_ibuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(debug_num_2_dup0_6_));

// atom is at M4K_X52_Y20
cycloneii_ram_block u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(u_memory_ap_debug_num_0_2_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({debug_num_2_dup0_7_,debug_num_2_dup0_6_,debug_num_2_dup0_5_,debug_num_2_dup0_4_,debug_num_2_dup0_3_,debug_num_2_dup0_2_,debug_num_2_dup0_1_,debug_num_2_dup0_0_}),
	.portaaddr({u_memory_amodgen_counter_column_anx1041z1,u_memory_amodgen_counter_column_anx58250z3,u_memory_amodgen_counter_column_anx58250z5,u_memory_amodgen_counter_column_anx58250z7,u_memory_amodgen_counter_column_anx58250z9,u_memory_amodgen_counter_column_anx58250z11,
u_memory_amodgen_counter_column_anx58250z13,u_memory_amodgen_counter_column_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "memory_notri:u_memory|ram_dq_8_2:u_mem3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at M4K_X52_Y21
cycloneii_ram_block u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(u_memory_ap_debug_num_0_1_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({debug_num_2_dup0_7_,debug_num_2_dup0_6_,debug_num_2_dup0_5_,debug_num_2_dup0_4_,debug_num_2_dup0_3_,debug_num_2_dup0_2_,debug_num_2_dup0_1_,debug_num_2_dup0_0_}),
	.portaaddr({u_memory_amodgen_counter_column_anx1041z1,u_memory_amodgen_counter_column_anx58250z3,u_memory_amodgen_counter_column_anx58250z5,u_memory_amodgen_counter_column_anx58250z7,u_memory_amodgen_counter_column_anx58250z9,u_memory_amodgen_counter_column_anx58250z11,
u_memory_amodgen_counter_column_anx58250z13,u_memory_amodgen_counter_column_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "memory_notri:u_memory|ram_dq_8_1:u_mem2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N0
cycloneii_lcell_comb u_memory_aix63578z52924(
// Equation(s):
// u_memory_anx63578z2 = u_memory_aNOT_b_0_ & u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7] # !u_memory_aNOT_b_0_ & (u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[7] & u_memory_anx60567z2)

	.dataa(u_memory_aNOT_b_0_),
	.datab(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datac(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.datad(u_memory_anx60567z2),
	.cin(gnd),
	.combout(u_memory_anx63578z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix63578z52924.lut_mask = 16'hD888;
defparam u_memory_aix63578z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N26
cycloneii_lcell_comb u_memory_aix63578z52923(
// Equation(s):
// u_memory_anx63578z1 = u_memory_anx63578z2 # !u_memory_anx60567z2 & debug_num_2_dup0_7_ & !u_memory_aNOT_b_0_

	.dataa(u_memory_anx60567z2),
	.datab(debug_num_2_dup0_7_),
	.datac(u_memory_aNOT_b_0_),
	.datad(u_memory_anx63578z2),
	.cin(gnd),
	.combout(u_memory_anx63578z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix63578z52923.lut_mask = 16'hFF04;
defparam u_memory_aix63578z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N30
cycloneii_lcell_comb u_memory_ap_o_image2_0__7__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__7__afeeder_combout = u_memory_anx63578z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx63578z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__7__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X52_Y19
cycloneii_ram_block u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(u_memory_ap_debug_num_0_0_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({debug_num_2_dup0_7_,debug_num_2_dup0_6_,debug_num_2_dup0_5_,debug_num_2_dup0_4_,debug_num_2_dup0_3_,debug_num_2_dup0_2_,debug_num_2_dup0_1_,debug_num_2_dup0_0_}),
	.portaaddr({u_memory_amodgen_counter_column_anx1041z1,u_memory_amodgen_counter_column_anx58250z3,u_memory_amodgen_counter_column_anx58250z5,u_memory_amodgen_counter_column_anx58250z7,u_memory_amodgen_counter_column_anx58250z9,u_memory_amodgen_counter_column_anx58250z11,
u_memory_amodgen_counter_column_anx58250z13,u_memory_amodgen_counter_column_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "memory_notri:u_memory|ram_dq_8_0:u_mem1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N16
cycloneii_lcell_comb u_memory_aix5021z52927(
// Equation(s):
// u_memory_ab_1_ = !u_memory_ap_debug_num_1_0_ & (!u_memory_ap_debug_num_1_1_ # !u_memory_anx60567z2)

	.dataa(u_memory_anx60567z2),
	.datab(vcc),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_ab_1_),
	.cout());
// synopsys translate_off
defparam u_memory_aix5021z52927.lut_mask = 16'h050F;
defparam u_memory_aix5021z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N31
cycloneii_lcell_ff u_memory_areg_buffer2_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__7__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__7_));

// atom is at LCCOMB_X55_Y21_N6
cycloneii_lcell_comb ix20836z52947(
// Equation(s):
// f_b1_7_ = nx57127z2 & (u_memory_ap_o_image2_0__7_) # !nx57127z2 & f_b1_next_7_

	.dataa(f_b1_next_7_),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_0__7_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b1_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52947.lut_mask = 16'hF0AA;
defparam ix20836z52947.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N22
cycloneii_lcell_comb u_memory_aix55380z52924(
// Equation(s):
// u_memory_aNOT_b_0__dup_353 = u_memory_ap_debug_num_1_0_ & u_memory_anx60567z2 # !u_memory_ap_debug_num_1_1_

	.dataa(u_memory_ap_debug_num_1_0_),
	.datab(vcc),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_aNOT_b_0__dup_353),
	.cout());
// synopsys translate_off
defparam u_memory_aix55380z52924.lut_mask = 16'hA0FF;
defparam u_memory_aix55380z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N28
cycloneii_lcell_comb u_memory_aix61362z52924(
// Equation(s):
// u_memory_anx61362z2 = u_memory_aNOT_b_0__dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]) # !u_memory_aNOT_b_0__dup_353 & u_memory_anx60567z2 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[6]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(u_memory_anx61362z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix61362z52924.lut_mask = 16'hEC20;
defparam u_memory_aix61362z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N22
cycloneii_lcell_comb u_memory_aix61362z52923(
// Equation(s):
// u_memory_anx61362z1 = u_memory_anx61362z2 # !u_memory_anx60567z2 & debug_num_2_dup0_6_ & !u_memory_aNOT_b_0__dup_353

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_anx61362z2),
	.datac(debug_num_2_dup0_6_),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx61362z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix61362z52923.lut_mask = 16'hCCDC;
defparam u_memory_aix61362z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N16
cycloneii_lcell_comb u_memory_ap_o_image2_1__6__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__6__afeeder_combout = u_memory_anx61362z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx61362z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_1__6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N6
cycloneii_lcell_comb u_memory_aix55380z52927(
// Equation(s):
// u_memory_ab_1__dup_352 = !u_memory_ap_debug_num_1_1_ & (!u_memory_ap_debug_num_1_0_ # !u_memory_anx60567z2)

	.dataa(u_memory_anx60567z2),
	.datab(vcc),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_ab_1__dup_352),
	.cout());
// synopsys translate_off
defparam u_memory_aix55380z52927.lut_mask = 16'h005F;
defparam u_memory_aix55380z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N17
cycloneii_lcell_ff u_memory_areg_buffer2_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__6__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__6_));

// atom is at LCCOMB_X55_Y22_N22
cycloneii_lcell_comb ix20836z52956(
// Equation(s):
// f_b2_6_ = nx57127z2 & (u_memory_ap_o_image2_1__6_) # !nx57127z2 & f_b2_next_6_

	.dataa(f_b2_next_6_),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_1__6_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b2_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52956.lut_mask = 16'hF0AA;
defparam ix20836z52956.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y22_N28
cycloneii_lcell_comb f_b3_next_5__afeeder(
// Equation(s):
// f_b3_next_5__afeeder_combout = f_i2_next_5_

	.dataa(f_i2_next_5_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_5__afeeder.lut_mask = 16'hAAAA;
defparam f_b3_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N18
cycloneii_lcell_comb u_memory_ap_o_image2_2__5__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__5__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__5__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N24
cycloneii_lcell_comb u_memory_aix50245z52923(
// Equation(s):
// u_memory_anx50245z1 = u_memory_anx60567z2 # u_memory_ap_debug_num_1_2_

	.dataa(vcc),
	.datab(u_memory_anx60567z2),
	.datac(vcc),
	.datad(u_memory_ap_debug_num_1_2_),
	.cin(gnd),
	.combout(u_memory_anx50245z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix50245z52923.lut_mask = 16'hFFCC;
defparam u_memory_aix50245z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N19
cycloneii_lcell_ff u_memory_areg_buffer2_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__5__afeeder_combout),
	.sdata(debug_num_2_dup0_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__5_));

// atom is at LCFF_X57_Y22_N21
cycloneii_lcell_ff u_memory_areg_buffer1_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__5_));

// atom is at LCCOMB_X54_Y20_N6
cycloneii_lcell_comb ix57127z52923(
// Equation(s):
// nx57127z1 = !i_reset_acombout & (u_memory_ap_o_valid # !nx57127z2)

	.dataa(nx57127z2),
	.datab(i_reset_acombout),
	.datac(vcc),
	.datad(u_memory_ap_o_valid),
	.cin(gnd),
	.combout(nx57127z1),
	.cout());
// synopsys translate_off
defparam ix57127z52923.lut_mask = 16'h3311;
defparam ix57127z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N29
cycloneii_lcell_ff reg_f_b3_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_5_));

// atom is at LCCOMB_X58_Y22_N30
cycloneii_lcell_comb f_b2_next_5__afeeder(
// Equation(s):
// f_b2_next_5__afeeder_combout = f_b3_next_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b3_next_5_),
	.cin(gnd),
	.combout(f_b2_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_5__afeeder.lut_mask = 16'hFF00;
defparam f_b2_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N31
cycloneii_lcell_ff reg_f_b2_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_5_));

// atom is at LCCOMB_X53_Y22_N28
cycloneii_lcell_comb u_memory_aix60365z52924(
// Equation(s):
// u_memory_anx60365z2 = u_memory_aNOT_b_0__dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]) # !u_memory_aNOT_b_0__dup_353 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[5] & u_memory_anx60567z2

	.dataa(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(u_memory_anx60365z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix60365z52924.lut_mask = 16'hEC20;
defparam u_memory_aix60365z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N30
cycloneii_lcell_comb u_memory_aix60365z52923(
// Equation(s):
// u_memory_anx60365z1 = u_memory_anx60365z2 # debug_num_2_dup0_5_ & !u_memory_aNOT_b_0__dup_353 & !u_memory_anx60567z2

	.dataa(debug_num_2_dup0_5_),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_anx60365z2),
	.cin(gnd),
	.combout(u_memory_anx60365z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix60365z52923.lut_mask = 16'hFF02;
defparam u_memory_aix60365z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N14
cycloneii_lcell_comb u_memory_ap_o_image2_1__5__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__5__afeeder_combout = u_memory_anx60365z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx60365z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__5__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_1__5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N15
cycloneii_lcell_ff u_memory_areg_buffer2_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__5__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__5_));

// atom is at LCCOMB_X57_Y22_N28
cycloneii_lcell_comb ix20836z52957(
// Equation(s):
// f_b2_5_ = nx57127z2 & (u_memory_ap_o_image2_1__5_) # !nx57127z2 & f_b2_next_5_

	.dataa(vcc),
	.datab(f_b2_next_5_),
	.datac(nx57127z2),
	.datad(u_memory_ap_o_image2_1__5_),
	.cin(gnd),
	.combout(f_b2_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52957.lut_mask = 16'hFC0C;
defparam ix20836z52957.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N6
cycloneii_lcell_comb f_b3_next_4__afeeder(
// Equation(s):
// f_b3_next_4__afeeder_combout = f_i2_next_4_

	.dataa(f_i2_next_4_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_4__afeeder.lut_mask = 16'hAAAA;
defparam f_b3_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N0
cycloneii_lcell_comb u_memory_ap_o_image2_2__4__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__4__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__4__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N1
cycloneii_lcell_ff u_memory_areg_buffer2_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__4__afeeder_combout),
	.sdata(debug_num_2_dup0_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__4_));

// atom is at LCFF_X56_Y22_N29
cycloneii_lcell_ff u_memory_areg_buffer1_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__4_));

// atom is at LCFF_X54_Y22_N7
cycloneii_lcell_ff reg_f_b3_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_4_));

// atom is at LCCOMB_X54_Y22_N0
cycloneii_lcell_comb f_b2_next_4__afeeder(
// Equation(s):
// f_b2_next_4__afeeder_combout = f_b3_next_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b3_next_4_),
	.cin(gnd),
	.combout(f_b2_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_4__afeeder.lut_mask = 16'hFF00;
defparam f_b2_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N1
cycloneii_lcell_ff reg_f_b2_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_4_));

// atom is at LCCOMB_X53_Y22_N0
cycloneii_lcell_comb u_memory_aix59368z52924(
// Equation(s):
// u_memory_anx59368z2 = u_memory_aNOT_b_0__dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]) # !u_memory_aNOT_b_0__dup_353 & u_memory_anx60567z2 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[4]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(u_memory_anx59368z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix59368z52924.lut_mask = 16'hEC20;
defparam u_memory_aix59368z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N2
cycloneii_lcell_comb u_memory_aix59368z52923(
// Equation(s):
// u_memory_anx59368z1 = u_memory_anx59368z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0__dup_353 & debug_num_2_dup0_4_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(debug_num_2_dup0_4_),
	.datad(u_memory_anx59368z2),
	.cin(gnd),
	.combout(u_memory_anx59368z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix59368z52923.lut_mask = 16'hFF10;
defparam u_memory_aix59368z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N20
cycloneii_lcell_comb u_memory_ap_o_image2_1__4__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__4__afeeder_combout = u_memory_anx59368z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx59368z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__4__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_1__4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N21
cycloneii_lcell_ff u_memory_areg_buffer2_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__4__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__4_));

// atom is at LCCOMB_X56_Y22_N18
cycloneii_lcell_comb ix20836z52958(
// Equation(s):
// f_b2_4_ = nx57127z2 & (u_memory_ap_o_image2_1__4_) # !nx57127z2 & f_b2_next_4_

	.dataa(vcc),
	.datab(f_b2_next_4_),
	.datac(u_memory_ap_o_image2_1__4_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b2_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52958.lut_mask = 16'hF0CC;
defparam ix20836z52958.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N8
cycloneii_lcell_comb f_b2_next_3__afeeder(
// Equation(s):
// f_b2_next_3__afeeder_combout = f_b3_next_3_

	.dataa(f_b3_next_3_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b2_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_3__afeeder.lut_mask = 16'hAAAA;
defparam f_b2_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N6
cycloneii_lcell_comb u_memory_ap_o_image2_2__3__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__3__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__3__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N7
cycloneii_lcell_ff u_memory_areg_buffer2_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__3__afeeder_combout),
	.sdata(debug_num_2_dup0_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__3_));

// atom is at LCFF_X55_Y20_N9
cycloneii_lcell_ff reg_f_b2_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_3_));

// atom is at LCCOMB_X55_Y20_N18
cycloneii_lcell_comb ix20836z52959(
// Equation(s):
// f_b2_3_ = nx57127z2 & u_memory_ap_o_image2_1__3_ # !nx57127z2 & (f_b2_next_3_)

	.dataa(u_memory_ap_o_image2_1__3_),
	.datab(f_b2_next_3_),
	.datac(nx57127z2),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b2_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52959.lut_mask = 16'hACAC;
defparam ix20836z52959.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N24
cycloneii_lcell_comb f_b3_next_2__afeeder(
// Equation(s):
// f_b3_next_2__afeeder_combout = f_i2_next_2_

	.dataa(f_i2_next_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_2__afeeder.lut_mask = 16'hAAAA;
defparam f_b3_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N12
cycloneii_lcell_comb u_memory_ap_o_image2_2__2__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__2__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__2__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N13
cycloneii_lcell_ff u_memory_areg_buffer2_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__2__afeeder_combout),
	.sdata(debug_num_2_dup0_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__2_));

// atom is at LCFF_X53_Y21_N13
cycloneii_lcell_ff u_memory_areg_buffer1_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__2_));

// atom is at LCFF_X54_Y20_N25
cycloneii_lcell_ff reg_f_b3_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_2_));

// atom is at LCCOMB_X57_Y20_N0
cycloneii_lcell_comb f_b2_next_2__afeeder(
// Equation(s):
// f_b2_next_2__afeeder_combout = f_b3_next_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b3_next_2_),
	.cin(gnd),
	.combout(f_b2_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_2__afeeder.lut_mask = 16'hFF00;
defparam f_b2_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y20_N1
cycloneii_lcell_ff reg_f_b2_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_2_));

// atom is at LCCOMB_X54_Y20_N20
cycloneii_lcell_comb ix20836z52960(
// Equation(s):
// f_b2_2_ = nx57127z2 & u_memory_ap_o_image2_1__2_ # !nx57127z2 & (f_b2_next_2_)

	.dataa(u_memory_ap_o_image2_1__2_),
	.datab(vcc),
	.datac(f_b2_next_2_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b2_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52960.lut_mask = 16'hAAF0;
defparam ix20836z52960.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N2
cycloneii_lcell_comb u_memory_aix56377z52925(
// Equation(s):
// u_memory_anx56377z3 = u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_ & !u_memory_ap_debug_num_1_0_ & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[1]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_ap_debug_num_1_1_),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(u_memory_anx56377z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix56377z52925.lut_mask = 16'h0800;
defparam u_memory_aix56377z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N4
cycloneii_lcell_comb u_memory_aix56377z52923(
// Equation(s):
// u_memory_anx56377z1 = u_memory_anx56377z2 # u_memory_anx56377z3 # u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1] & u_memory_aNOT_b_0__dup_353

	.dataa(u_memory_anx56377z2),
	.datab(u_memory_anx56377z3),
	.datac(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx56377z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix56377z52923.lut_mask = 16'hFEEE;
defparam u_memory_aix56377z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N26
cycloneii_lcell_comb u_memory_ap_o_image2_1__1__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__1__afeeder_combout = u_memory_anx56377z1

	.dataa(vcc),
	.datab(u_memory_anx56377z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__1__afeeder.lut_mask = 16'hCCCC;
defparam u_memory_ap_o_image2_1__1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y19_N27
cycloneii_lcell_ff u_memory_areg_buffer2_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__1__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__1_));

// atom is at LCCOMB_X58_Y22_N4
cycloneii_lcell_comb f_t2_next_1__afeeder(
// Equation(s):
// f_t2_next_1__afeeder_combout = f_t3_next_1_

	.dataa(f_t3_next_1_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_t2_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_1__afeeder.lut_mask = 16'hAAAA;
defparam f_t2_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N10
cycloneii_lcell_comb u_memory_aix4024z52925(
// Equation(s):
// u_memory_anx4024z3 = u_memory_ap_debug_num_1_0_ & debug_num_2_dup0_1_ & !u_memory_anx60567z2

	.dataa(u_memory_ap_debug_num_1_0_),
	.datab(vcc),
	.datac(debug_num_2_dup0_1_),
	.datad(u_memory_anx60567z2),
	.cin(gnd),
	.combout(u_memory_anx4024z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix4024z52925.lut_mask = 16'h00A0;
defparam u_memory_aix4024z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N10
cycloneii_lcell_comb u_memory_aix4024z52924(
// Equation(s):
// u_memory_anx4024z2 = u_memory_anx60567z2 & !u_memory_ap_debug_num_1_1_ & u_memory_ap_debug_num_1_0_ & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[1]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_ap_debug_num_1_1_),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(u_memory_anx4024z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix4024z52924.lut_mask = 16'h2000;
defparam u_memory_aix4024z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N28
cycloneii_lcell_comb u_memory_aix4024z52923(
// Equation(s):
// u_memory_anx4024z1 = u_memory_anx4024z3 # u_memory_anx4024z2 # u_memory_aNOT_b_0_ & u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]

	.dataa(u_memory_aNOT_b_0_),
	.datab(u_memory_anx4024z3),
	.datac(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_memory_anx4024z2),
	.cin(gnd),
	.combout(u_memory_anx4024z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix4024z52923.lut_mask = 16'hFFEC;
defparam u_memory_aix4024z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N2
cycloneii_lcell_comb u_memory_ap_o_image2_0__1__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__1__afeeder_combout = u_memory_anx4024z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx4024z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__1__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N3
cycloneii_lcell_ff u_memory_areg_buffer2_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__1__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__1_));

// atom is at LCFF_X55_Y19_N19
cycloneii_lcell_ff u_memory_areg_buffer1_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__1_));

// atom is at LCFF_X57_Y21_N9
cycloneii_lcell_ff u_memory_areg_buffer0_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__1_));

// atom is at LCFF_X58_Y22_N5
cycloneii_lcell_ff reg_f_t2_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_1_));

// atom is at LCCOMB_X58_Y22_N14
cycloneii_lcell_comb f_t1_next_1__afeeder(
// Equation(s):
// f_t1_next_1__afeeder_combout = f_t2_next_1_

	.dataa(vcc),
	.datab(f_t2_next_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_t1_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_1__afeeder.lut_mask = 16'hCCCC;
defparam f_t1_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N26
cycloneii_lcell_comb u_memory_ap_o_image1_1__1__afeeder(
// Equation(s):
// u_memory_ap_o_image1_1__1__afeeder_combout = u_memory_ap_o_image2_1__1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__1_),
	.cin(gnd),
	.combout(u_memory_ap_o_image1_1__1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image1_1__1__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image1_1__1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N27
cycloneii_lcell_ff u_memory_areg_buffer1_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image1_1__1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__1_));

// atom is at LCFF_X56_Y21_N25
cycloneii_lcell_ff u_memory_areg_buffer0_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__1_));

// atom is at LCFF_X58_Y22_N15
cycloneii_lcell_ff reg_f_t1_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_1_));

// atom is at LCCOMB_X58_Y22_N12
cycloneii_lcell_comb f_i2_next_1__afeeder(
// Equation(s):
// f_i2_next_1__afeeder_combout = f_t1_next_1_

	.dataa(vcc),
	.datab(f_t1_next_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i2_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_1__afeeder.lut_mask = 16'hCCCC;
defparam f_i2_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N10
cycloneii_lcell_comb u_memory_ap_o_image2_2__1__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__1__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]

	.dataa(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__1__afeeder.lut_mask = 16'hAAAA;
defparam u_memory_ap_o_image2_2__1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N11
cycloneii_lcell_ff u_memory_areg_buffer2_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__1__afeeder_combout),
	.sdata(debug_num_2_dup0_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__1_));

// atom is at LCFF_X55_Y19_N29
cycloneii_lcell_ff u_memory_areg_buffer1_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__1_));

// atom is at LCFF_X56_Y21_N27
cycloneii_lcell_ff u_memory_areg_buffer0_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__1_));

// atom is at LCFF_X58_Y22_N13
cycloneii_lcell_ff reg_f_i2_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_1_));

// atom is at LCCOMB_X58_Y22_N22
cycloneii_lcell_comb f_b3_next_1__afeeder(
// Equation(s):
// f_b3_next_1__afeeder_combout = f_i2_next_1_

	.dataa(vcc),
	.datab(f_i2_next_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_1__afeeder.lut_mask = 16'hCCCC;
defparam f_b3_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N23
cycloneii_lcell_ff reg_f_b3_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_1_));

// atom is at LCCOMB_X57_Y20_N26
cycloneii_lcell_comb f_b2_next_1__afeeder(
// Equation(s):
// f_b2_next_1__afeeder_combout = f_b3_next_1_

	.dataa(vcc),
	.datab(f_b3_next_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b2_next_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_1__afeeder.lut_mask = 16'hCCCC;
defparam f_b2_next_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y20_N27
cycloneii_lcell_ff reg_f_b2_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_1__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_1_));

// atom is at LCCOMB_X56_Y20_N26
cycloneii_lcell_comb ix20836z52961(
// Equation(s):
// f_b2_1_ = nx57127z2 & u_memory_ap_o_image2_1__1_ # !nx57127z2 & (f_b2_next_1_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image2_1__1_),
	.datac(f_b2_next_1_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_b2_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52961.lut_mask = 16'hCCF0;
defparam ix20836z52961.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N12
cycloneii_lcell_comb f_i1_next_0__afeeder(
// Equation(s):
// f_i1_next_0__afeeder_combout = f_b1_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b1_next_0_),
	.cin(gnd),
	.combout(f_i1_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_i1_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N0
cycloneii_lcell_comb u_memory_aix5021z52926(
// Equation(s):
// u_memory_anx5021z3 = u_memory_ap_debug_num_1_0_ & debug_num_2_dup0_0_ & !u_memory_anx60567z2

	.dataa(u_memory_ap_debug_num_1_0_),
	.datab(vcc),
	.datac(debug_num_2_dup0_0_),
	.datad(u_memory_anx60567z2),
	.cin(gnd),
	.combout(u_memory_anx5021z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix5021z52926.lut_mask = 16'h00A0;
defparam u_memory_aix5021z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N20
cycloneii_lcell_comb u_memory_aix5021z52925(
// Equation(s):
// u_memory_anx5021z2 = u_memory_anx60567z2 & !u_memory_ap_debug_num_1_1_ & u_memory_ap_debug_num_1_0_ & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[0]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_ap_debug_num_1_1_),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(u_memory_anx5021z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix5021z52925.lut_mask = 16'h2000;
defparam u_memory_aix5021z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N14
cycloneii_lcell_comb u_memory_aix5021z52923(
// Equation(s):
// u_memory_anx5021z1 = u_memory_anx5021z3 # u_memory_anx5021z2 # u_memory_aNOT_b_0_ & u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]

	.dataa(u_memory_aNOT_b_0_),
	.datab(u_memory_anx5021z3),
	.datac(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datad(u_memory_anx5021z2),
	.cin(gnd),
	.combout(u_memory_anx5021z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix5021z52923.lut_mask = 16'hFFEC;
defparam u_memory_aix5021z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N0
cycloneii_lcell_comb u_memory_ap_o_image2_0__0__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__0__afeeder_combout = u_memory_anx5021z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx5021z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N1
cycloneii_lcell_ff u_memory_areg_buffer2_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__0__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__0_));

// atom is at LCFF_X54_Y21_N13
cycloneii_lcell_ff reg_f_i1_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_0_));

// atom is at LCCOMB_X54_Y21_N28
cycloneii_lcell_comb f_t3_next_0__afeeder(
// Equation(s):
// f_t3_next_0__afeeder_combout = f_i1_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_0_),
	.cin(gnd),
	.combout(f_t3_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y19_N31
cycloneii_lcell_ff u_memory_areg_buffer1_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__0_));

// atom is at LCFF_X54_Y21_N29
cycloneii_lcell_ff reg_f_t3_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_0_));

// atom is at LCCOMB_X54_Y21_N24
cycloneii_lcell_comb f_t2_next_0__afeeder(
// Equation(s):
// f_t2_next_0__afeeder_combout = f_t3_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t3_next_0_),
	.cin(gnd),
	.combout(f_t2_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_t2_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y21_N11
cycloneii_lcell_ff u_memory_areg_buffer0_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__0_));

// atom is at LCFF_X54_Y21_N25
cycloneii_lcell_ff reg_f_t2_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_0_));

// atom is at LCCOMB_X58_Y22_N16
cycloneii_lcell_comb f_t1_next_0__afeeder(
// Equation(s):
// f_t1_next_0__afeeder_combout = f_t2_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t2_next_0_),
	.cin(gnd),
	.combout(f_t1_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t1_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_t1_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N18
cycloneii_lcell_comb u_memory_aix55380z52926(
// Equation(s):
// u_memory_anx55380z3 = !u_memory_ap_debug_num_1_0_ & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[0] & u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_

	.dataa(u_memory_ap_debug_num_1_0_),
	.datab(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_anx55380z3),
	.cout());
// synopsys translate_off
defparam u_memory_aix55380z52926.lut_mask = 16'h4000;
defparam u_memory_aix55380z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N8
cycloneii_lcell_comb u_memory_aix55380z52925(
// Equation(s):
// u_memory_anx55380z2 = debug_num_2_dup0_0_ & !u_memory_anx60567z2 & u_memory_ap_debug_num_1_1_

	.dataa(debug_num_2_dup0_0_),
	.datab(vcc),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_ap_debug_num_1_1_),
	.cin(gnd),
	.combout(u_memory_anx55380z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix55380z52925.lut_mask = 16'h0A00;
defparam u_memory_aix55380z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N12
cycloneii_lcell_comb u_memory_aix55380z52923(
// Equation(s):
// u_memory_anx55380z1 = u_memory_anx55380z3 # u_memory_anx55380z2 # u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0] & u_memory_aNOT_b_0__dup_353

	.dataa(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datab(u_memory_anx55380z3),
	.datac(u_memory_anx55380z2),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx55380z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix55380z52923.lut_mask = 16'hFEFC;
defparam u_memory_aix55380z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N0
cycloneii_lcell_comb u_memory_ap_o_image2_1__0__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__0__afeeder_combout = u_memory_anx55380z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx55380z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_1__0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y19_N1
cycloneii_lcell_ff u_memory_areg_buffer2_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__0__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__0_));

// atom is at LCCOMB_X55_Y21_N4
cycloneii_lcell_comb u_memory_ap_o_image1_1__0__afeeder(
// Equation(s):
// u_memory_ap_o_image1_1__0__afeeder_combout = u_memory_ap_o_image2_1__0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__0_),
	.cin(gnd),
	.combout(u_memory_ap_o_image1_1__0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image1_1__0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image1_1__0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N5
cycloneii_lcell_ff u_memory_areg_buffer1_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image1_1__0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__0_));

// atom is at LCFF_X56_Y21_N31
cycloneii_lcell_ff u_memory_areg_buffer0_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__0_));

// atom is at LCFF_X58_Y22_N17
cycloneii_lcell_ff reg_f_t1_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t1_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image0_1__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t1_next_0_));

// atom is at LCCOMB_X54_Y21_N6
cycloneii_lcell_comb f_i2_next_0__afeeder(
// Equation(s):
// f_i2_next_0__afeeder_combout = f_t1_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t1_next_0_),
	.cin(gnd),
	.combout(f_i2_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_i2_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N8
cycloneii_lcell_comb u_memory_ap_o_image2_2__0__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__0__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N9
cycloneii_lcell_ff u_memory_areg_buffer2_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__0__afeeder_combout),
	.sdata(debug_num_2_dup0_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__0_));

// atom is at LCFF_X55_Y19_N25
cycloneii_lcell_ff u_memory_areg_buffer1_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__0_));

// atom is at LCFF_X56_Y21_N29
cycloneii_lcell_ff u_memory_areg_buffer0_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__0_));

// atom is at LCFF_X54_Y21_N7
cycloneii_lcell_ff reg_f_i2_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_0_));

// atom is at LCCOMB_X54_Y21_N14
cycloneii_lcell_comb f_b3_next_0__afeeder(
// Equation(s):
// f_b3_next_0__afeeder_combout = f_i2_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i2_next_0_),
	.cin(gnd),
	.combout(f_b3_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_b3_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N15
cycloneii_lcell_ff reg_f_b3_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_0_));

// atom is at LCCOMB_X57_Y20_N24
cycloneii_lcell_comb f_b2_next_0__afeeder(
// Equation(s):
// f_b2_next_0__afeeder_combout = f_b3_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b3_next_0_),
	.cin(gnd),
	.combout(f_b2_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_b2_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y20_N25
cycloneii_lcell_ff reg_f_b2_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_0_));

// atom is at LCCOMB_X54_Y21_N2
cycloneii_lcell_comb f_b1_next_0__afeeder(
// Equation(s):
// f_b1_next_0__afeeder_combout = f_b2_next_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_0_),
	.cin(gnd),
	.combout(f_b1_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N3
cycloneii_lcell_ff reg_f_b1_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_0__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_0_));

// atom is at LCCOMB_X56_Y20_N22
cycloneii_lcell_comb ix20836z52954(
// Equation(s):
// f_b1_0_ = nx57127z2 & u_memory_ap_o_image2_0__0_ # !nx57127z2 & (f_b1_next_0_)

	.dataa(u_memory_ap_o_image2_0__0_),
	.datab(nx57127z2),
	.datac(vcc),
	.datad(f_b1_next_0_),
	.cin(gnd),
	.combout(f_b1_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52954.lut_mask = 16'hBB88;
defparam ix20836z52954.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N4
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52930(
// Equation(s):
// u_flow_ap12_add8_0i2_anx38970z1 = f_b1_1_ & (f_b2_1_ & u_flow_ap12_add8_0i2_anx44952z22 & VCC # !f_b2_1_ & !u_flow_ap12_add8_0i2_anx44952z22) # !f_b1_1_ & (f_b2_1_ & !u_flow_ap12_add8_0i2_anx44952z22 # !f_b2_1_ & (u_flow_ap12_add8_0i2_anx44952z22 # GND))
// u_flow_ap12_add8_0i2_anx44952z19 = CARRY(f_b1_1_ & !f_b2_1_ & !u_flow_ap12_add8_0i2_anx44952z22 # !f_b1_1_ & (!u_flow_ap12_add8_0i2_anx44952z22 # !f_b2_1_))

	.dataa(f_b1_1_),
	.datab(f_b2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z22),
	.combout(u_flow_ap12_add8_0i2_anx38970z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z19));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52930.lut_mask = 16'h9617;
defparam u_flow_ap12_add8_0i2_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N6
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52929(
// Equation(s):
// u_flow_ap12_add8_0i2_anx39967z1 = (f_b1_2_ $ f_b2_2_ $ !u_flow_ap12_add8_0i2_anx44952z19) # GND
// u_flow_ap12_add8_0i2_anx44952z16 = CARRY(f_b1_2_ & (f_b2_2_ # !u_flow_ap12_add8_0i2_anx44952z19) # !f_b1_2_ & f_b2_2_ & !u_flow_ap12_add8_0i2_anx44952z19)

	.dataa(f_b1_2_),
	.datab(f_b2_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z19),
	.combout(u_flow_ap12_add8_0i2_anx39967z1),
	.cout(u_flow_ap12_add8_0i2_anx44952z16));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52929.lut_mask = 16'h698E;
defparam u_flow_ap12_add8_0i2_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N16
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix44952z52923(
// Equation(s):
// u_flow_ap12_add8_0i2_anx44952z1 = f_b2_7_ & (f_b1_7_ & u_flow_ap12_add8_0i2_anx44952z4 & VCC # !f_b1_7_ & !u_flow_ap12_add8_0i2_anx44952z4) # !f_b2_7_ & (f_b1_7_ & !u_flow_ap12_add8_0i2_anx44952z4 # !f_b1_7_ & (u_flow_ap12_add8_0i2_anx44952z4 # GND))
// u_flow_ap12_add8_0i2_anx23445z2 = CARRY(f_b2_7_ & !f_b1_7_ & !u_flow_ap12_add8_0i2_anx44952z4 # !f_b2_7_ & (!u_flow_ap12_add8_0i2_anx44952z4 # !f_b1_7_))

	.dataa(f_b2_7_),
	.datab(f_b1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx44952z4),
	.combout(u_flow_ap12_add8_0i2_anx44952z1),
	.cout(u_flow_ap12_add8_0i2_anx23445z2));
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix44952z52923.lut_mask = 16'h9617;
defparam u_flow_ap12_add8_0i2_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N18
cycloneii_lcell_comb u_flow_ap12_add8_0i2_aix23445z52923(
// Equation(s):
// u_flow_ap12_add8_0i2_anx23445z1 = !u_flow_ap12_add8_0i2_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add8_0i2_anx23445z2),
	.combout(u_flow_ap12_add8_0i2_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap12_add8_0i2_aix23445z52923.lut_mask = 16'h0F0F;
defparam u_flow_ap12_add8_0i2_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N28
cycloneii_lcell_comb f_b3_next_6__afeeder(
// Equation(s):
// f_b3_next_6__afeeder_combout = f_i2_next_6_

	.dataa(f_i2_next_6_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_6__afeeder.lut_mask = 16'hAAAA;
defparam f_b3_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N20
cycloneii_lcell_comb u_memory_ap_o_image2_2__6__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__6__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N21
cycloneii_lcell_ff u_memory_areg_buffer2_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__6__afeeder_combout),
	.sdata(debug_num_2_dup0_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__6_));

// atom is at LCFF_X55_Y22_N31
cycloneii_lcell_ff u_memory_areg_buffer1_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__6_));

// atom is at LCFF_X54_Y22_N29
cycloneii_lcell_ff reg_f_b3_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_6_));

// atom is at LCCOMB_X55_Y22_N24
cycloneii_lcell_comb ix20836z52964(
// Equation(s):
// f_b3_6_ = nx57127z2 & (u_memory_ap_o_image2_2__6_) # !nx57127z2 & f_b3_next_6_

	.dataa(vcc),
	.datab(f_b3_next_6_),
	.datac(nx57127z2),
	.datad(u_memory_ap_o_image2_2__6_),
	.cin(gnd),
	.combout(f_b3_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52964.lut_mask = 16'hFC0C;
defparam ix20836z52964.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N8
cycloneii_lcell_comb ix20836z52965(
// Equation(s):
// f_b3_5_ = nx57127z2 & u_memory_ap_o_image2_2__5_ # !nx57127z2 & (f_b3_next_5_)

	.dataa(u_memory_ap_o_image2_2__5_),
	.datab(vcc),
	.datac(nx57127z2),
	.datad(f_b3_next_5_),
	.cin(gnd),
	.combout(f_b3_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52965.lut_mask = 16'hAFA0;
defparam ix20836z52965.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N6
cycloneii_lcell_comb ix20836z52966(
// Equation(s):
// f_b3_4_ = nx57127z2 & u_memory_ap_o_image2_2__4_ # !nx57127z2 & (f_b3_next_4_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image2_2__4_),
	.datac(nx57127z2),
	.datad(f_b3_next_4_),
	.cin(gnd),
	.combout(f_b3_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52966.lut_mask = 16'hCFC0;
defparam ix20836z52966.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N28
cycloneii_lcell_comb f_i2_next_3__afeeder(
// Equation(s):
// f_i2_next_3__afeeder_combout = f_t1_next_3_

	.dataa(f_t1_next_3_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i2_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i2_next_3__afeeder.lut_mask = 16'hAAAA;
defparam f_i2_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y20_N13
cycloneii_lcell_ff u_memory_areg_buffer1_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__3_));

// atom is at LCFF_X56_Y21_N1
cycloneii_lcell_ff u_memory_areg_buffer0_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__3_));

// atom is at LCFF_X55_Y20_N29
cycloneii_lcell_ff reg_f_i2_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i2_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image0_2__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i2_next_3_));

// atom is at LCCOMB_X55_Y20_N24
cycloneii_lcell_comb f_b3_next_3__afeeder(
// Equation(s):
// f_b3_next_3__afeeder_combout = f_i2_next_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i2_next_3_),
	.cin(gnd),
	.combout(f_b3_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b3_next_3__afeeder.lut_mask = 16'hFF00;
defparam f_b3_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N25
cycloneii_lcell_ff reg_f_b3_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b3_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image1_2__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b3_next_3_));

// atom is at LCCOMB_X55_Y20_N2
cycloneii_lcell_comb ix20836z52967(
// Equation(s):
// f_b3_3_ = nx57127z2 & u_memory_ap_o_image2_2__3_ # !nx57127z2 & (f_b3_next_3_)

	.dataa(u_memory_ap_o_image2_2__3_),
	.datab(nx57127z2),
	.datac(f_b3_next_3_),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b3_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52967.lut_mask = 16'hB8B8;
defparam ix20836z52967.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N30
cycloneii_lcell_comb ix20836z52970(
// Equation(s):
// f_b3_0_ = nx57127z2 & u_memory_ap_o_image2_2__0_ # !nx57127z2 & (f_b3_next_0_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_2__0_),
	.datad(f_b3_next_0_),
	.cin(gnd),
	.combout(f_b3_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52970.lut_mask = 16'hF5A0;
defparam ix20836z52970.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N4
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52932(
// Equation(s):
// u_flow_ap12_add9_2_anx37973z1 = u_flow_ap12_add8_0i2_anx37973z1 & (f_b3_0_ $ VCC) # !u_flow_ap12_add8_0i2_anx37973z1 & f_b3_0_ & VCC
// u_flow_ap12_add9_2_anx45949z24 = CARRY(u_flow_ap12_add8_0i2_anx37973z1 & f_b3_0_)

	.dataa(u_flow_ap12_add8_0i2_anx37973z1),
	.datab(f_b3_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap12_add9_2_anx37973z1),
	.cout(u_flow_ap12_add9_2_anx45949z24));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52932.lut_mask = 16'h6688;
defparam u_flow_ap12_add9_2_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N6
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52931(
// Equation(s):
// u_flow_ap12_add9_2_anx38970z1 = f_b3_1_ & (u_flow_ap12_add8_0i2_anx38970z1 & u_flow_ap12_add9_2_anx45949z24 & VCC # !u_flow_ap12_add8_0i2_anx38970z1 & !u_flow_ap12_add9_2_anx45949z24) # !f_b3_1_ & (u_flow_ap12_add8_0i2_anx38970z1 & 
// !u_flow_ap12_add9_2_anx45949z24 # !u_flow_ap12_add8_0i2_anx38970z1 & (u_flow_ap12_add9_2_anx45949z24 # GND))
// u_flow_ap12_add9_2_anx45949z21 = CARRY(f_b3_1_ & !u_flow_ap12_add8_0i2_anx38970z1 & !u_flow_ap12_add9_2_anx45949z24 # !f_b3_1_ & (!u_flow_ap12_add9_2_anx45949z24 # !u_flow_ap12_add8_0i2_anx38970z1))

	.dataa(f_b3_1_),
	.datab(u_flow_ap12_add8_0i2_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z24),
	.combout(u_flow_ap12_add9_2_anx38970z1),
	.cout(u_flow_ap12_add9_2_anx45949z21));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52931.lut_mask = 16'h9617;
defparam u_flow_ap12_add9_2_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N8
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52930(
// Equation(s):
// u_flow_ap12_add9_2_anx39967z1 = (f_b3_2_ $ u_flow_ap12_add8_0i2_anx39967z1 $ !u_flow_ap12_add9_2_anx45949z21) # GND
// u_flow_ap12_add9_2_anx45949z18 = CARRY(f_b3_2_ & (u_flow_ap12_add8_0i2_anx39967z1 # !u_flow_ap12_add9_2_anx45949z21) # !f_b3_2_ & u_flow_ap12_add8_0i2_anx39967z1 & !u_flow_ap12_add9_2_anx45949z21)

	.dataa(f_b3_2_),
	.datab(u_flow_ap12_add8_0i2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z21),
	.combout(u_flow_ap12_add9_2_anx39967z1),
	.cout(u_flow_ap12_add9_2_anx45949z18));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52930.lut_mask = 16'h698E;
defparam u_flow_ap12_add9_2_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N10
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52929(
// Equation(s):
// u_flow_ap12_add9_2_anx40964z1 = u_flow_ap12_add8_0i2_anx40964z1 & (f_b3_3_ & u_flow_ap12_add9_2_anx45949z18 & VCC # !f_b3_3_ & !u_flow_ap12_add9_2_anx45949z18) # !u_flow_ap12_add8_0i2_anx40964z1 & (f_b3_3_ & !u_flow_ap12_add9_2_anx45949z18 # !f_b3_3_ & 
// (u_flow_ap12_add9_2_anx45949z18 # GND))
// u_flow_ap12_add9_2_anx45949z15 = CARRY(u_flow_ap12_add8_0i2_anx40964z1 & !f_b3_3_ & !u_flow_ap12_add9_2_anx45949z18 # !u_flow_ap12_add8_0i2_anx40964z1 & (!u_flow_ap12_add9_2_anx45949z18 # !f_b3_3_))

	.dataa(u_flow_ap12_add8_0i2_anx40964z1),
	.datab(f_b3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z18),
	.combout(u_flow_ap12_add9_2_anx40964z1),
	.cout(u_flow_ap12_add9_2_anx45949z15));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52929.lut_mask = 16'h9617;
defparam u_flow_ap12_add9_2_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N12
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52928(
// Equation(s):
// u_flow_ap12_add9_2_anx41961z1 = (u_flow_ap12_add8_0i2_anx41961z1 $ f_b3_4_ $ !u_flow_ap12_add9_2_anx45949z15) # GND
// u_flow_ap12_add9_2_anx45949z12 = CARRY(u_flow_ap12_add8_0i2_anx41961z1 & (f_b3_4_ # !u_flow_ap12_add9_2_anx45949z15) # !u_flow_ap12_add8_0i2_anx41961z1 & f_b3_4_ & !u_flow_ap12_add9_2_anx45949z15)

	.dataa(u_flow_ap12_add8_0i2_anx41961z1),
	.datab(f_b3_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z15),
	.combout(u_flow_ap12_add9_2_anx41961z1),
	.cout(u_flow_ap12_add9_2_anx45949z12));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52928.lut_mask = 16'h698E;
defparam u_flow_ap12_add9_2_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N14
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52927(
// Equation(s):
// u_flow_ap12_add9_2_anx42958z1 = u_flow_ap12_add8_0i2_anx42958z1 & (f_b3_5_ & u_flow_ap12_add9_2_anx45949z12 & VCC # !f_b3_5_ & !u_flow_ap12_add9_2_anx45949z12) # !u_flow_ap12_add8_0i2_anx42958z1 & (f_b3_5_ & !u_flow_ap12_add9_2_anx45949z12 # !f_b3_5_ & 
// (u_flow_ap12_add9_2_anx45949z12 # GND))
// u_flow_ap12_add9_2_anx45949z9 = CARRY(u_flow_ap12_add8_0i2_anx42958z1 & !f_b3_5_ & !u_flow_ap12_add9_2_anx45949z12 # !u_flow_ap12_add8_0i2_anx42958z1 & (!u_flow_ap12_add9_2_anx45949z12 # !f_b3_5_))

	.dataa(u_flow_ap12_add8_0i2_anx42958z1),
	.datab(f_b3_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z12),
	.combout(u_flow_ap12_add9_2_anx42958z1),
	.cout(u_flow_ap12_add9_2_anx45949z9));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52927.lut_mask = 16'h9617;
defparam u_flow_ap12_add9_2_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N16
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52926(
// Equation(s):
// u_flow_ap12_add9_2_anx43955z1 = (u_flow_ap12_add8_0i2_anx43955z1 $ f_b3_6_ $ !u_flow_ap12_add9_2_anx45949z9) # GND
// u_flow_ap12_add9_2_anx45949z6 = CARRY(u_flow_ap12_add8_0i2_anx43955z1 & (f_b3_6_ # !u_flow_ap12_add9_2_anx45949z9) # !u_flow_ap12_add8_0i2_anx43955z1 & f_b3_6_ & !u_flow_ap12_add9_2_anx45949z9)

	.dataa(u_flow_ap12_add8_0i2_anx43955z1),
	.datab(f_b3_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z9),
	.combout(u_flow_ap12_add9_2_anx43955z1),
	.cout(u_flow_ap12_add9_2_anx45949z6));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52926.lut_mask = 16'h698E;
defparam u_flow_ap12_add9_2_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N18
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52925(
// Equation(s):
// u_flow_ap12_add9_2_anx44952z1 = f_b3_7_ & (u_flow_ap12_add8_0i2_anx44952z1 & u_flow_ap12_add9_2_anx45949z6 & VCC # !u_flow_ap12_add8_0i2_anx44952z1 & !u_flow_ap12_add9_2_anx45949z6) # !f_b3_7_ & (u_flow_ap12_add8_0i2_anx44952z1 & 
// !u_flow_ap12_add9_2_anx45949z6 # !u_flow_ap12_add8_0i2_anx44952z1 & (u_flow_ap12_add9_2_anx45949z6 # GND))
// u_flow_ap12_add9_2_anx45949z3 = CARRY(f_b3_7_ & !u_flow_ap12_add8_0i2_anx44952z1 & !u_flow_ap12_add9_2_anx45949z6 # !f_b3_7_ & (!u_flow_ap12_add9_2_anx45949z6 # !u_flow_ap12_add8_0i2_anx44952z1))

	.dataa(f_b3_7_),
	.datab(u_flow_ap12_add8_0i2_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z6),
	.combout(u_flow_ap12_add9_2_anx44952z1),
	.cout(u_flow_ap12_add9_2_anx45949z3));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52925.lut_mask = 16'h9617;
defparam u_flow_ap12_add9_2_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N20
cycloneii_lcell_comb u_flow_ap12_add9_2_aix45949z52923(
// Equation(s):
// u_flow_ap12_add9_2_anx45949z1 = u_flow_ap12_add8_0i2_anx23445z1 & (u_flow_ap12_add9_2_anx45949z3 $ GND) # !u_flow_ap12_add8_0i2_anx23445z1 & !u_flow_ap12_add9_2_anx45949z3 & VCC
// u_flow_ap12_add9_2_anx23445z2 = CARRY(u_flow_ap12_add8_0i2_anx23445z1 & !u_flow_ap12_add9_2_anx45949z3)

	.dataa(vcc),
	.datab(u_flow_ap12_add8_0i2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx45949z3),
	.combout(u_flow_ap12_add9_2_anx45949z1),
	.cout(u_flow_ap12_add9_2_anx23445z2));
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix45949z52923.lut_mask = 16'hC30C;
defparam u_flow_ap12_add9_2_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y20_N22
cycloneii_lcell_comb u_flow_ap12_add9_2_aix23445z52923(
// Equation(s):
// u_flow_ap12_add9_2_anx23445z1 = u_flow_ap12_add9_2_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap12_add9_2_anx23445z2),
	.combout(u_flow_ap12_add9_2_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap12_add9_2_aix23445z52923.lut_mask = 16'hF0F0;
defparam u_flow_ap12_add9_2_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N6
cycloneii_lcell_comb u_memory_aix1033z52924(
// Equation(s):
// u_memory_anx1033z2 = u_memory_aNOT_b_0_ & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]) # !u_memory_aNOT_b_0_ & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[4]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(u_memory_anx1033z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix1033z52924.lut_mask = 16'hEC20;
defparam u_memory_aix1033z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N8
cycloneii_lcell_comb u_memory_aix1033z52923(
// Equation(s):
// u_memory_anx1033z1 = u_memory_anx1033z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_ & debug_num_2_dup0_4_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(debug_num_2_dup0_4_),
	.datad(u_memory_anx1033z2),
	.cin(gnd),
	.combout(u_memory_anx1033z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix1033z52923.lut_mask = 16'hFF10;
defparam u_memory_aix1033z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N8
cycloneii_lcell_comb u_memory_ap_o_image2_0__4__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__4__afeeder_combout = u_memory_anx1033z1

	.dataa(vcc),
	.datab(u_memory_anx1033z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__4__afeeder.lut_mask = 16'hCCCC;
defparam u_memory_ap_o_image2_0__4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N9
cycloneii_lcell_ff u_memory_areg_buffer2_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__4__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__4_));

// atom is at LCFF_X56_Y22_N9
cycloneii_lcell_ff u_memory_areg_buffer1_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__4_));

// atom is at LCFF_X57_Y21_N3
cycloneii_lcell_ff u_memory_areg_buffer0_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__4_));

// atom is at LCCOMB_X54_Y22_N10
cycloneii_lcell_comb f_b1_next_4__afeeder(
// Equation(s):
// f_b1_next_4__afeeder_combout = f_b2_next_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_4_),
	.cin(gnd),
	.combout(f_b1_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_4__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N11
cycloneii_lcell_ff reg_f_b1_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_4_));

// atom is at LCCOMB_X54_Y22_N22
cycloneii_lcell_comb f_i1_next_4__afeeder(
// Equation(s):
// f_i1_next_4__afeeder_combout = f_b1_next_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b1_next_4_),
	.cin(gnd),
	.combout(f_i1_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_4__afeeder.lut_mask = 16'hFF00;
defparam f_i1_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N23
cycloneii_lcell_ff reg_f_i1_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_4_));

// atom is at LCCOMB_X54_Y22_N18
cycloneii_lcell_comb f_t3_next_4__afeeder(
// Equation(s):
// f_t3_next_4__afeeder_combout = f_i1_next_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_4_),
	.cin(gnd),
	.combout(f_t3_next_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_4__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N19
cycloneii_lcell_ff reg_f_t3_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_4__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_4_));

// atom is at LCCOMB_X57_Y21_N2
cycloneii_lcell_comb ix20836z52942(
// Equation(s):
// f_t3_4_ = nx57127z2 & u_memory_ap_o_image0_0__4_ # !nx57127z2 & (f_t3_next_4_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_0__4_),
	.datad(f_t3_next_4_),
	.cin(gnd),
	.combout(f_t3_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52942.lut_mask = 16'hF5A0;
defparam ix20836z52942.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N12
cycloneii_lcell_comb u_memory_aix2030z52924(
// Equation(s):
// u_memory_anx2030z2 = u_memory_aNOT_b_0_ & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]) # !u_memory_aNOT_b_0_ & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[3]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(u_memory_anx2030z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix2030z52924.lut_mask = 16'hEC20;
defparam u_memory_aix2030z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N22
cycloneii_lcell_comb u_memory_aix2030z52923(
// Equation(s):
// u_memory_anx2030z1 = u_memory_anx2030z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_ & debug_num_2_dup0_3_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(debug_num_2_dup0_3_),
	.datad(u_memory_anx2030z2),
	.cin(gnd),
	.combout(u_memory_anx2030z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix2030z52923.lut_mask = 16'hFF10;
defparam u_memory_aix2030z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N22
cycloneii_lcell_comb u_memory_ap_o_image2_0__3__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__3__afeeder_combout = u_memory_anx2030z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx2030z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__3__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N23
cycloneii_lcell_ff u_memory_areg_buffer2_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__3__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__3_));

// atom is at LCFF_X50_Y20_N3
cycloneii_lcell_ff u_memory_areg_buffer1_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__3_));

// atom is at LCFF_X57_Y21_N5
cycloneii_lcell_ff u_memory_areg_buffer0_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__3_));

// atom is at LCCOMB_X55_Y20_N4
cycloneii_lcell_comb f_b1_next_3__afeeder(
// Equation(s):
// f_b1_next_3__afeeder_combout = f_b2_next_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_3_),
	.cin(gnd),
	.combout(f_b1_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_3__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N4
cycloneii_lcell_comb u_memory_aix58371z52924(
// Equation(s):
// u_memory_anx58371z2 = u_memory_aNOT_b_0__dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]) # !u_memory_aNOT_b_0__dup_353 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[3] & (u_memory_anx60567z2)

	.dataa(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.datab(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx58371z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix58371z52924.lut_mask = 16'hCCA0;
defparam u_memory_aix58371z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N22
cycloneii_lcell_comb u_memory_aix58371z52923(
// Equation(s):
// u_memory_anx58371z1 = u_memory_anx58371z2 # debug_num_2_dup0_3_ & !u_memory_anx60567z2 & !u_memory_aNOT_b_0__dup_353

	.dataa(debug_num_2_dup0_3_),
	.datab(u_memory_anx60567z2),
	.datac(u_memory_anx58371z2),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx58371z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix58371z52923.lut_mask = 16'hF0F2;
defparam u_memory_aix58371z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N26
cycloneii_lcell_comb u_memory_ap_o_image2_1__3__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__3__afeeder_combout = u_memory_anx58371z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx58371z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__3__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_1__3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N27
cycloneii_lcell_ff u_memory_areg_buffer2_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__3__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__3_));

// atom is at LCFF_X55_Y20_N5
cycloneii_lcell_ff reg_f_b1_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_3_));

// atom is at LCCOMB_X55_Y20_N30
cycloneii_lcell_comb f_i1_next_3__afeeder(
// Equation(s):
// f_i1_next_3__afeeder_combout = f_b1_next_3_

	.dataa(vcc),
	.datab(f_b1_next_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i1_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_3__afeeder.lut_mask = 16'hCCCC;
defparam f_i1_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N31
cycloneii_lcell_ff reg_f_i1_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_3_));

// atom is at LCCOMB_X55_Y20_N22
cycloneii_lcell_comb f_t3_next_3__afeeder(
// Equation(s):
// f_t3_next_3__afeeder_combout = f_i1_next_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_3_),
	.cin(gnd),
	.combout(f_t3_next_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_3__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N23
cycloneii_lcell_ff reg_f_t3_next_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_3__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_3_));

// atom is at LCCOMB_X57_Y21_N4
cycloneii_lcell_comb ix20836z52943(
// Equation(s):
// f_t3_3_ = nx57127z2 & u_memory_ap_o_image0_0__3_ # !nx57127z2 & (f_t3_next_3_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_0__3_),
	.datad(f_t3_next_3_),
	.cin(gnd),
	.combout(f_t3_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52943.lut_mask = 16'hF5A0;
defparam ix20836z52943.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N14
cycloneii_lcell_comb f_b1_next_2__afeeder(
// Equation(s):
// f_b1_next_2__afeeder_combout = f_b2_next_2_

	.dataa(vcc),
	.datab(f_b2_next_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_b1_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_2__afeeder.lut_mask = 16'hCCCC;
defparam f_b1_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N30
cycloneii_lcell_comb u_memory_aix57374z52924(
// Equation(s):
// u_memory_anx57374z2 = u_memory_aNOT_b_0__dup_353 & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]) # !u_memory_aNOT_b_0__dup_353 & u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[2] & (u_memory_anx60567z2)

	.dataa(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datab(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datac(u_memory_anx60567z2),
	.datad(u_memory_aNOT_b_0__dup_353),
	.cin(gnd),
	.combout(u_memory_anx57374z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix57374z52924.lut_mask = 16'hCCA0;
defparam u_memory_aix57374z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N18
cycloneii_lcell_comb u_memory_aix57374z52923(
// Equation(s):
// u_memory_anx57374z1 = u_memory_anx57374z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0__dup_353 & debug_num_2_dup0_2_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0__dup_353),
	.datac(debug_num_2_dup0_2_),
	.datad(u_memory_anx57374z2),
	.cin(gnd),
	.combout(u_memory_anx57374z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix57374z52923.lut_mask = 16'hFF10;
defparam u_memory_aix57374z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N24
cycloneii_lcell_comb u_memory_ap_o_image2_1__2__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__2__afeeder_combout = u_memory_anx57374z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx57374z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__2__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_1__2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N25
cycloneii_lcell_ff u_memory_areg_buffer2_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__2__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__2_));

// atom is at LCFF_X54_Y20_N15
cycloneii_lcell_ff reg_f_b1_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_2_));

// atom is at LCCOMB_X54_Y20_N4
cycloneii_lcell_comb f_i1_next_2__afeeder(
// Equation(s):
// f_i1_next_2__afeeder_combout = f_b1_next_2_

	.dataa(vcc),
	.datab(f_b1_next_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i1_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_2__afeeder.lut_mask = 16'hCCCC;
defparam f_i1_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N10
cycloneii_lcell_comb u_memory_aix3027z52924(
// Equation(s):
// u_memory_anx3027z2 = u_memory_aNOT_b_0_ & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]) # !u_memory_aNOT_b_0_ & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[2]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(u_memory_anx3027z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix3027z52924.lut_mask = 16'hEC20;
defparam u_memory_aix3027z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N4
cycloneii_lcell_comb u_memory_aix3027z52923(
// Equation(s):
// u_memory_anx3027z1 = u_memory_anx3027z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_ & debug_num_2_dup0_2_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(debug_num_2_dup0_2_),
	.datad(u_memory_anx3027z2),
	.cin(gnd),
	.combout(u_memory_anx3027z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix3027z52923.lut_mask = 16'hFF10;
defparam u_memory_aix3027z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N12
cycloneii_lcell_comb u_memory_ap_o_image2_0__2__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__2__afeeder_combout = u_memory_anx3027z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx3027z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__2__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N13
cycloneii_lcell_ff u_memory_areg_buffer2_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__2__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__2_));

// atom is at LCFF_X54_Y20_N5
cycloneii_lcell_ff reg_f_i1_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_2_));

// atom is at LCCOMB_X54_Y20_N26
cycloneii_lcell_comb f_t3_next_2__afeeder(
// Equation(s):
// f_t3_next_2__afeeder_combout = f_i1_next_2_

	.dataa(vcc),
	.datab(f_i1_next_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_t3_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_2__afeeder.lut_mask = 16'hCCCC;
defparam f_t3_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N17
cycloneii_lcell_ff u_memory_areg_buffer1_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__2_));

// atom is at LCFF_X54_Y20_N27
cycloneii_lcell_ff reg_f_t3_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_2_));

// atom is at LCCOMB_X54_Y20_N22
cycloneii_lcell_comb f_t2_next_2__afeeder(
// Equation(s):
// f_t2_next_2__afeeder_combout = f_t3_next_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_t3_next_2_),
	.cin(gnd),
	.combout(f_t2_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_2__afeeder.lut_mask = 16'hFF00;
defparam f_t2_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y21_N7
cycloneii_lcell_ff u_memory_areg_buffer0_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__2_));

// atom is at LCFF_X54_Y20_N23
cycloneii_lcell_ff reg_f_t2_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_2__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_2_));

// atom is at LCCOMB_X54_Y20_N8
cycloneii_lcell_comb u_memory_ap_o_image1_1__2__afeeder(
// Equation(s):
// u_memory_ap_o_image1_1__2__afeeder_combout = u_memory_ap_o_image2_1__2_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_1__2_),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_image1_1__2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image1_1__2__afeeder.lut_mask = 16'hF0F0;
defparam u_memory_ap_o_image1_1__2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N9
cycloneii_lcell_ff u_memory_areg_buffer1_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image1_1__2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__2_));

// atom is at LCFF_X56_Y21_N3
cycloneii_lcell_ff u_memory_areg_buffer0_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__2_));

// atom is at LCCOMB_X56_Y21_N2
cycloneii_lcell_comb ix20836z52936(
// Equation(s):
// f_t2_2_ = nx57127z2 & (u_memory_ap_o_image0_1__2_) # !nx57127z2 & f_t2_next_2_

	.dataa(vcc),
	.datab(f_t2_next_2_),
	.datac(u_memory_ap_o_image0_1__2_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52936.lut_mask = 16'hF0CC;
defparam ix20836z52936.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N26
cycloneii_lcell_comb ix20836z52929(
// Equation(s):
// f_t1_1_ = nx57127z2 & (u_memory_ap_o_image0_2__1_) # !nx57127z2 & f_t1_next_1_

	.dataa(vcc),
	.datab(f_t1_next_1_),
	.datac(u_memory_ap_o_image0_2__1_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52929.lut_mask = 16'hF0CC;
defparam ix20836z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N30
cycloneii_lcell_comb ix20836z52938(
// Equation(s):
// f_t2_0_ = nx57127z2 & (u_memory_ap_o_image0_1__0_) # !nx57127z2 & f_t2_next_0_

	.dataa(vcc),
	.datab(f_t2_next_0_),
	.datac(u_memory_ap_o_image0_1__0_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52938.lut_mask = 16'hF0CC;
defparam ix20836z52938.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N4
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52931(
// Equation(s):
// u_flow_ap11_add8_0i1_anx37973z1 = f_t1_0_ & (f_t2_0_ $ VCC) # !f_t1_0_ & f_t2_0_ & VCC
// u_flow_ap11_add8_0i1_anx44952z22 = CARRY(f_t1_0_ & f_t2_0_)

	.dataa(f_t1_0_),
	.datab(f_t2_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap11_add8_0i1_anx37973z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z22));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52931.lut_mask = 16'h6688;
defparam u_flow_ap11_add8_0i1_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N6
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52930(
// Equation(s):
// u_flow_ap11_add8_0i1_anx38970z1 = f_t2_1_ & (f_t1_1_ & u_flow_ap11_add8_0i1_anx44952z22 & VCC # !f_t1_1_ & !u_flow_ap11_add8_0i1_anx44952z22) # !f_t2_1_ & (f_t1_1_ & !u_flow_ap11_add8_0i1_anx44952z22 # !f_t1_1_ & (u_flow_ap11_add8_0i1_anx44952z22 # GND))
// u_flow_ap11_add8_0i1_anx44952z19 = CARRY(f_t2_1_ & !f_t1_1_ & !u_flow_ap11_add8_0i1_anx44952z22 # !f_t2_1_ & (!u_flow_ap11_add8_0i1_anx44952z22 # !f_t1_1_))

	.dataa(f_t2_1_),
	.datab(f_t1_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z22),
	.combout(u_flow_ap11_add8_0i1_anx38970z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z19));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52930.lut_mask = 16'h9617;
defparam u_flow_ap11_add8_0i1_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N8
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52929(
// Equation(s):
// u_flow_ap11_add8_0i1_anx39967z1 = (f_t1_2_ $ f_t2_2_ $ !u_flow_ap11_add8_0i1_anx44952z19) # GND
// u_flow_ap11_add8_0i1_anx44952z16 = CARRY(f_t1_2_ & (f_t2_2_ # !u_flow_ap11_add8_0i1_anx44952z19) # !f_t1_2_ & f_t2_2_ & !u_flow_ap11_add8_0i1_anx44952z19)

	.dataa(f_t1_2_),
	.datab(f_t2_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z19),
	.combout(u_flow_ap11_add8_0i1_anx39967z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z16));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52929.lut_mask = 16'h698E;
defparam u_flow_ap11_add8_0i1_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N12
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52932(
// Equation(s):
// u_flow_ap11_add9_1_anx37973z1 = f_t3_0_ & (u_flow_ap11_add8_0i1_anx37973z1 $ VCC) # !f_t3_0_ & u_flow_ap11_add8_0i1_anx37973z1 & VCC
// u_flow_ap11_add9_1_anx45949z24 = CARRY(f_t3_0_ & u_flow_ap11_add8_0i1_anx37973z1)

	.dataa(f_t3_0_),
	.datab(u_flow_ap11_add8_0i1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap11_add9_1_anx37973z1),
	.cout(u_flow_ap11_add9_1_anx45949z24));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52932.lut_mask = 16'h6688;
defparam u_flow_ap11_add9_1_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N16
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52930(
// Equation(s):
// u_flow_ap11_add9_1_anx39967z1 = (f_t3_2_ $ u_flow_ap11_add8_0i1_anx39967z1 $ !u_flow_ap11_add9_1_anx45949z21) # GND
// u_flow_ap11_add9_1_anx45949z18 = CARRY(f_t3_2_ & (u_flow_ap11_add8_0i1_anx39967z1 # !u_flow_ap11_add9_1_anx45949z21) # !f_t3_2_ & u_flow_ap11_add8_0i1_anx39967z1 & !u_flow_ap11_add9_1_anx45949z21)

	.dataa(f_t3_2_),
	.datab(u_flow_ap11_add8_0i1_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z21),
	.combout(u_flow_ap11_add9_1_anx39967z1),
	.cout(u_flow_ap11_add9_1_anx45949z18));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52930.lut_mask = 16'h698E;
defparam u_flow_ap11_add9_1_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N18
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52929(
// Equation(s):
// u_flow_ap11_add9_1_anx40964z1 = u_flow_ap11_add8_0i1_anx40964z1 & (f_t3_3_ & u_flow_ap11_add9_1_anx45949z18 & VCC # !f_t3_3_ & !u_flow_ap11_add9_1_anx45949z18) # !u_flow_ap11_add8_0i1_anx40964z1 & (f_t3_3_ & !u_flow_ap11_add9_1_anx45949z18 # !f_t3_3_ & 
// (u_flow_ap11_add9_1_anx45949z18 # GND))
// u_flow_ap11_add9_1_anx45949z15 = CARRY(u_flow_ap11_add8_0i1_anx40964z1 & !f_t3_3_ & !u_flow_ap11_add9_1_anx45949z18 # !u_flow_ap11_add8_0i1_anx40964z1 & (!u_flow_ap11_add9_1_anx45949z18 # !f_t3_3_))

	.dataa(u_flow_ap11_add8_0i1_anx40964z1),
	.datab(f_t3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z18),
	.combout(u_flow_ap11_add9_1_anx40964z1),
	.cout(u_flow_ap11_add9_1_anx45949z15));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52929.lut_mask = 16'h9617;
defparam u_flow_ap11_add9_1_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N20
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52928(
// Equation(s):
// u_flow_ap11_add9_1_anx41961z1 = (u_flow_ap11_add8_0i1_anx41961z1 $ f_t3_4_ $ !u_flow_ap11_add9_1_anx45949z15) # GND
// u_flow_ap11_add9_1_anx45949z12 = CARRY(u_flow_ap11_add8_0i1_anx41961z1 & (f_t3_4_ # !u_flow_ap11_add9_1_anx45949z15) # !u_flow_ap11_add8_0i1_anx41961z1 & f_t3_4_ & !u_flow_ap11_add9_1_anx45949z15)

	.dataa(u_flow_ap11_add8_0i1_anx41961z1),
	.datab(f_t3_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z15),
	.combout(u_flow_ap11_add9_1_anx41961z1),
	.cout(u_flow_ap11_add9_1_anx45949z12));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52928.lut_mask = 16'h698E;
defparam u_flow_ap11_add9_1_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N4
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52934(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx46946z29 = CARRY(u_flow_ap11_add9_1_anx37973z1)

	.dataa(vcc),
	.datab(u_flow_ap11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_flow_ap21_sub11_4i4_anx46946z29));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52934.lut_mask = 16'h00CC;
defparam u_flow_ap21_sub11_4i4_aix46946z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N6
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52933(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx37973z1 = u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap21_sub11_4i4_anx46946z29 # GND) # !u_flow_ap12_add9_2_anx37973z1 & !u_flow_ap21_sub11_4i4_anx46946z29) # !u_flow_ap12_add9_2_anx38970z1 & 
// (u_flow_ap12_add9_2_anx37973z1 & !u_flow_ap21_sub11_4i4_anx46946z29 # !u_flow_ap12_add9_2_anx37973z1 & u_flow_ap21_sub11_4i4_anx46946z29 & VCC)
// u_flow_ap21_sub11_4i4_anx46946z27 = CARRY(u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap12_add9_2_anx37973z1 # !u_flow_ap21_sub11_4i4_anx46946z29) # !u_flow_ap12_add9_2_anx38970z1 & u_flow_ap12_add9_2_anx37973z1 & !u_flow_ap21_sub11_4i4_anx46946z29)

	.dataa(u_flow_ap12_add9_2_anx38970z1),
	.datab(u_flow_ap12_add9_2_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z29),
	.combout(u_flow_ap21_sub11_4i4_anx37973z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z27));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52933.lut_mask = 16'h968E;
defparam u_flow_ap21_sub11_4i4_aix46946z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N10
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52931(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx39967z1 = u_flow_ap11_add9_1_anx39967z1 & (u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z24 # !u_flow_ap12_add9_2_anx40964z1 & u_flow_ap21_sub11_4i4_anx46946z24 & VCC) # !u_flow_ap11_add9_1_anx39967z1 & 
// (u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap21_sub11_4i4_anx46946z24 # GND) # !u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z24)
// u_flow_ap21_sub11_4i4_anx46946z21 = CARRY(u_flow_ap11_add9_1_anx39967z1 & u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap21_sub11_4i4_anx46946z24 # !u_flow_ap11_add9_1_anx39967z1 & (u_flow_ap12_add9_2_anx40964z1 # !u_flow_ap21_sub11_4i4_anx46946z24))

	.dataa(u_flow_ap11_add9_1_anx39967z1),
	.datab(u_flow_ap12_add9_2_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z24),
	.combout(u_flow_ap21_sub11_4i4_anx39967z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z21));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52931.lut_mask = 16'h694D;
defparam u_flow_ap21_sub11_4i4_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N16
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52928(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx42958z1 = (u_flow_ap11_add9_1_anx42958z1 $ u_flow_ap12_add9_2_anx43955z1 $ u_flow_ap21_sub11_4i4_anx46946z15) # GND
// u_flow_ap21_sub11_4i4_anx46946z12 = CARRY(u_flow_ap11_add9_1_anx42958z1 & (!u_flow_ap21_sub11_4i4_anx46946z15 # !u_flow_ap12_add9_2_anx43955z1) # !u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap12_add9_2_anx43955z1 & !u_flow_ap21_sub11_4i4_anx46946z15)

	.dataa(u_flow_ap11_add9_1_anx42958z1),
	.datab(u_flow_ap12_add9_2_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z15),
	.combout(u_flow_ap21_sub11_4i4_anx42958z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z12));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52928.lut_mask = 16'h962B;
defparam u_flow_ap21_sub11_4i4_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N20
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52926(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx44952z1 = (u_flow_ap11_add9_1_anx44952z1 $ u_flow_ap12_add9_2_anx45949z1 $ u_flow_ap21_sub11_4i4_anx46946z9) # GND
// u_flow_ap21_sub11_4i4_anx46946z6 = CARRY(u_flow_ap11_add9_1_anx44952z1 & (!u_flow_ap21_sub11_4i4_anx46946z9 # !u_flow_ap12_add9_2_anx45949z1) # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap12_add9_2_anx45949z1 & !u_flow_ap21_sub11_4i4_anx46946z9)

	.dataa(u_flow_ap11_add9_1_anx44952z1),
	.datab(u_flow_ap12_add9_2_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z9),
	.combout(u_flow_ap21_sub11_4i4_anx44952z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z6));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52926.lut_mask = 16'h962B;
defparam u_flow_ap21_sub11_4i4_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N22
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52925(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx45949z1 = u_flow_ap11_add9_1_anx45949z1 & (u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub11_4i4_anx46946z6 # !u_flow_ap12_add9_2_anx23445z1 & u_flow_ap21_sub11_4i4_anx46946z6 & VCC) # !u_flow_ap11_add9_1_anx45949z1 & 
// (u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap21_sub11_4i4_anx46946z6 # GND) # !u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub11_4i4_anx46946z6)
// u_flow_ap21_sub11_4i4_anx46946z3 = CARRY(u_flow_ap11_add9_1_anx45949z1 & u_flow_ap12_add9_2_anx23445z1 & !u_flow_ap21_sub11_4i4_anx46946z6 # !u_flow_ap11_add9_1_anx45949z1 & (u_flow_ap12_add9_2_anx23445z1 # !u_flow_ap21_sub11_4i4_anx46946z6))

	.dataa(u_flow_ap11_add9_1_anx45949z1),
	.datab(u_flow_ap12_add9_2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z6),
	.combout(u_flow_ap21_sub11_4i4_anx45949z1),
	.cout(u_flow_ap21_sub11_4i4_anx46946z3));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52925.lut_mask = 16'h694D;
defparam u_flow_ap21_sub11_4i4_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N22
cycloneii_lcell_comb u_memory_ap_o_image2_2__7__afeeder(
// Equation(s):
// u_memory_ap_o_image2_2__7__afeeder_combout = u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_2__7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_2__7__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_2__7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N23
cycloneii_lcell_ff u_memory_areg_buffer2_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_2__7__afeeder_combout),
	.sdata(debug_num_2_dup0_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_anx50245z1),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_2__7_));

// atom is at LCFF_X55_Y21_N19
cycloneii_lcell_ff u_memory_areg_buffer1_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_2__7_));

// atom is at LCCOMB_X55_Y21_N14
cycloneii_lcell_comb u_memory_ap_o_image0_2__7__afeeder(
// Equation(s):
// u_memory_ap_o_image0_2__7__afeeder_combout = u_memory_ap_o_image1_2__7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_2__7_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_2__7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_2__7__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_2__7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N15
cycloneii_lcell_ff u_memory_areg_buffer0_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_2__7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__7_));

// atom is at LCCOMB_X55_Y21_N22
cycloneii_lcell_comb ix20836z52923(
// Equation(s):
// f_t1_7_ = nx57127z2 & (u_memory_ap_o_image0_2__7_) # !nx57127z2 & f_t1_next_7_

	.dataa(f_t1_next_7_),
	.datab(u_memory_ap_o_image0_2__7_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52923.lut_mask = 16'hCCAA;
defparam ix20836z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N12
cycloneii_lcell_comb f_b2_next_6__afeeder(
// Equation(s):
// f_b2_next_6__afeeder_combout = f_b3_next_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b3_next_6_),
	.cin(gnd),
	.combout(f_b2_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b2_next_6__afeeder.lut_mask = 16'hFF00;
defparam f_b2_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N13
cycloneii_lcell_ff reg_f_b2_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b2_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image2_2__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b2_next_6_));

// atom is at LCCOMB_X54_Y22_N14
cycloneii_lcell_comb f_b1_next_6__afeeder(
// Equation(s):
// f_b1_next_6__afeeder_combout = f_b2_next_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_6_),
	.cin(gnd),
	.combout(f_b1_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_6__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N15
cycloneii_lcell_ff reg_f_b1_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_6_));

// atom is at LCCOMB_X54_Y22_N2
cycloneii_lcell_comb f_i1_next_6__afeeder(
// Equation(s):
// f_i1_next_6__afeeder_combout = f_b1_next_6_

	.dataa(vcc),
	.datab(f_b1_next_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i1_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_6__afeeder.lut_mask = 16'hCCCC;
defparam f_i1_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N12
cycloneii_lcell_comb u_memory_aix64575z52923(
// Equation(s):
// u_memory_anx64575z1 = u_memory_anx64575z2 # !u_memory_anx60567z2 & debug_num_2_dup0_6_ & !u_memory_aNOT_b_0_

	.dataa(u_memory_anx64575z2),
	.datab(u_memory_anx60567z2),
	.datac(debug_num_2_dup0_6_),
	.datad(u_memory_aNOT_b_0_),
	.cin(gnd),
	.combout(u_memory_anx64575z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix64575z52923.lut_mask = 16'hAABA;
defparam u_memory_aix64575z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N28
cycloneii_lcell_comb u_memory_ap_o_image2_0__6__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__6__afeeder_combout = u_memory_anx64575z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx64575z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N29
cycloneii_lcell_ff u_memory_areg_buffer2_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__6__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__6_));

// atom is at LCFF_X54_Y22_N3
cycloneii_lcell_ff reg_f_i1_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_6_));

// atom is at LCCOMB_X54_Y22_N8
cycloneii_lcell_comb f_t3_next_6__afeeder(
// Equation(s):
// f_t3_next_6__afeeder_combout = f_i1_next_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_6_),
	.cin(gnd),
	.combout(f_t3_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_6__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N15
cycloneii_lcell_ff u_memory_areg_buffer1_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__6_));

// atom is at LCFF_X54_Y22_N9
cycloneii_lcell_ff reg_f_t3_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_6_));

// atom is at LCCOMB_X54_Y22_N16
cycloneii_lcell_comb f_t2_next_6__afeeder(
// Equation(s):
// f_t2_next_6__afeeder_combout = f_t3_next_6_

	.dataa(vcc),
	.datab(f_t3_next_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_t2_next_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t2_next_6__afeeder.lut_mask = 16'hCCCC;
defparam f_t2_next_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y22_N11
cycloneii_lcell_ff u_memory_areg_buffer0_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__6_));

// atom is at LCFF_X54_Y22_N17
cycloneii_lcell_ff reg_f_t2_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t2_next_6__afeeder_combout),
	.sdata(u_memory_ap_o_image0_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t2_next_6_));

// atom is at LCCOMB_X55_Y22_N12
cycloneii_lcell_comb ix20836z52932(
// Equation(s):
// f_t2_6_ = nx57127z2 & u_memory_ap_o_image0_1__6_ # !nx57127z2 & (f_t2_next_6_)

	.dataa(u_memory_ap_o_image0_1__6_),
	.datab(f_t2_next_6_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52932.lut_mask = 16'hAACC;
defparam ix20836z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y22_N1
cycloneii_lcell_ff u_memory_areg_buffer0_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_2__5_));

// atom is at LCCOMB_X57_Y22_N12
cycloneii_lcell_comb ix20836z52925(
// Equation(s):
// f_t1_5_ = nx57127z2 & (u_memory_ap_o_image0_2__5_) # !nx57127z2 & f_t1_next_5_

	.dataa(f_t1_next_5_),
	.datab(u_memory_ap_o_image0_2__5_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52925.lut_mask = 16'hCCAA;
defparam ix20836z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N3
cycloneii_lcell_ff u_memory_areg_buffer1_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_1__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__4_));

// atom is at LCCOMB_X56_Y22_N14
cycloneii_lcell_comb u_memory_ap_o_image0_1__4__afeeder(
// Equation(s):
// u_memory_ap_o_image0_1__4__afeeder_combout = u_memory_ap_o_image1_1__4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__4_),
	.cin(gnd),
	.combout(u_memory_ap_o_image0_1__4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image0_1__4__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image0_1__4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N15
cycloneii_lcell_ff u_memory_areg_buffer0_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image0_1__4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_1__4_));

// atom is at LCCOMB_X56_Y22_N26
cycloneii_lcell_comb ix20836z52934(
// Equation(s):
// f_t2_4_ = nx57127z2 & (u_memory_ap_o_image0_1__4_) # !nx57127z2 & f_t2_next_4_

	.dataa(f_t2_next_4_),
	.datab(u_memory_ap_o_image0_1__4_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t2_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52934.lut_mask = 16'hCCAA;
defparam ix20836z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N0
cycloneii_lcell_comb ix20836z52927(
// Equation(s):
// f_t1_3_ = nx57127z2 & (u_memory_ap_o_image0_2__3_) # !nx57127z2 & f_t1_next_3_

	.dataa(f_t1_next_3_),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_2__3_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_t1_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52927.lut_mask = 16'hF0AA;
defparam ix20836z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N16
cycloneii_lcell_comb u_flow_ap11_add8_0i1_aix44952z52925(
// Equation(s):
// u_flow_ap11_add8_0i1_anx43955z1 = (f_t1_6_ $ f_t2_6_ $ !u_flow_ap11_add8_0i1_anx44952z7) # GND
// u_flow_ap11_add8_0i1_anx44952z4 = CARRY(f_t1_6_ & (f_t2_6_ # !u_flow_ap11_add8_0i1_anx44952z7) # !f_t1_6_ & f_t2_6_ & !u_flow_ap11_add8_0i1_anx44952z7)

	.dataa(f_t1_6_),
	.datab(f_t2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add8_0i1_anx44952z7),
	.combout(u_flow_ap11_add8_0i1_anx43955z1),
	.cout(u_flow_ap11_add8_0i1_anx44952z4));
// synopsys translate_off
defparam u_flow_ap11_add8_0i1_aix44952z52925.lut_mask = 16'h698E;
defparam u_flow_ap11_add8_0i1_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N8
cycloneii_lcell_comb u_memory_aix36z52924(
// Equation(s):
// u_memory_anx36z2 = u_memory_aNOT_b_0_ & (u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]) # !u_memory_aNOT_b_0_ & u_memory_anx60567z2 & u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[5]

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.datad(u_memory_au_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(u_memory_anx36z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix36z52924.lut_mask = 16'hEC20;
defparam u_memory_aix36z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y19_N18
cycloneii_lcell_comb u_memory_aix36z52923(
// Equation(s):
// u_memory_anx36z1 = u_memory_anx36z2 # !u_memory_anx60567z2 & !u_memory_aNOT_b_0_ & debug_num_2_dup0_5_

	.dataa(u_memory_anx60567z2),
	.datab(u_memory_aNOT_b_0_),
	.datac(debug_num_2_dup0_5_),
	.datad(u_memory_anx36z2),
	.cin(gnd),
	.combout(u_memory_anx36z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix36z52923.lut_mask = 16'hFF10;
defparam u_memory_aix36z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N10
cycloneii_lcell_comb u_memory_ap_o_image2_0__5__afeeder(
// Equation(s):
// u_memory_ap_o_image2_0__5__afeeder_combout = u_memory_anx36z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_anx36z1),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_0__5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_0__5__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image2_0__5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N11
cycloneii_lcell_ff u_memory_areg_buffer2_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_0__5__afeeder_combout),
	.sdata(u_memory_au_mem1_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1_),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_0__5_));

// atom is at LCFF_X57_Y22_N15
cycloneii_lcell_ff u_memory_areg_buffer1_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__5_));

// atom is at LCFF_X57_Y21_N1
cycloneii_lcell_ff u_memory_areg_buffer0_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image0_0__5_));

// atom is at LCCOMB_X58_Y22_N8
cycloneii_lcell_comb f_b1_next_5__afeeder(
// Equation(s):
// f_b1_next_5__afeeder_combout = f_b2_next_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_b2_next_5_),
	.cin(gnd),
	.combout(f_b1_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_b1_next_5__afeeder.lut_mask = 16'hFF00;
defparam f_b1_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N9
cycloneii_lcell_ff reg_f_b1_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_b1_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image2_1__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_b1_next_5_));

// atom is at LCCOMB_X58_Y22_N2
cycloneii_lcell_comb f_i1_next_5__afeeder(
// Equation(s):
// f_i1_next_5__afeeder_combout = f_b1_next_5_

	.dataa(vcc),
	.datab(f_b1_next_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i1_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i1_next_5__afeeder.lut_mask = 16'hCCCC;
defparam f_i1_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N3
cycloneii_lcell_ff reg_f_i1_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i1_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image2_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i1_next_5_));

// atom is at LCCOMB_X58_Y22_N18
cycloneii_lcell_comb f_t3_next_5__afeeder(
// Equation(s):
// f_t3_next_5__afeeder_combout = f_i1_next_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_i1_next_5_),
	.cin(gnd),
	.combout(f_t3_next_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_t3_next_5__afeeder.lut_mask = 16'hFF00;
defparam f_t3_next_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y22_N19
cycloneii_lcell_ff reg_f_t3_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_t3_next_5__afeeder_combout),
	.sdata(u_memory_ap_o_image1_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(nx57127z2),
	.ena(nx57127z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_t3_next_5_));

// atom is at LCCOMB_X57_Y21_N0
cycloneii_lcell_comb ix20836z52941(
// Equation(s):
// f_t3_5_ = nx57127z2 & u_memory_ap_o_image0_0__5_ # !nx57127z2 & (f_t3_next_5_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image0_0__5_),
	.datad(f_t3_next_5_),
	.cin(gnd),
	.combout(f_t3_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52941.lut_mask = 16'hF5A0;
defparam ix20836z52941.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N22
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52927(
// Equation(s):
// u_flow_ap11_add9_1_anx42958z1 = u_flow_ap11_add8_0i1_anx42958z1 & (f_t3_5_ & u_flow_ap11_add9_1_anx45949z12 & VCC # !f_t3_5_ & !u_flow_ap11_add9_1_anx45949z12) # !u_flow_ap11_add8_0i1_anx42958z1 & (f_t3_5_ & !u_flow_ap11_add9_1_anx45949z12 # !f_t3_5_ & 
// (u_flow_ap11_add9_1_anx45949z12 # GND))
// u_flow_ap11_add9_1_anx45949z9 = CARRY(u_flow_ap11_add8_0i1_anx42958z1 & !f_t3_5_ & !u_flow_ap11_add9_1_anx45949z12 # !u_flow_ap11_add8_0i1_anx42958z1 & (!u_flow_ap11_add9_1_anx45949z12 # !f_t3_5_))

	.dataa(u_flow_ap11_add8_0i1_anx42958z1),
	.datab(f_t3_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z12),
	.combout(u_flow_ap11_add9_1_anx42958z1),
	.cout(u_flow_ap11_add9_1_anx45949z9));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52927.lut_mask = 16'h9617;
defparam u_flow_ap11_add9_1_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N24
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52926(
// Equation(s):
// u_flow_ap11_add9_1_anx43955z1 = (f_t3_6_ $ u_flow_ap11_add8_0i1_anx43955z1 $ !u_flow_ap11_add9_1_anx45949z9) # GND
// u_flow_ap11_add9_1_anx45949z6 = CARRY(f_t3_6_ & (u_flow_ap11_add8_0i1_anx43955z1 # !u_flow_ap11_add9_1_anx45949z9) # !f_t3_6_ & u_flow_ap11_add8_0i1_anx43955z1 & !u_flow_ap11_add9_1_anx45949z9)

	.dataa(f_t3_6_),
	.datab(u_flow_ap11_add8_0i1_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z9),
	.combout(u_flow_ap11_add9_1_anx43955z1),
	.cout(u_flow_ap11_add9_1_anx45949z6));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52926.lut_mask = 16'h698E;
defparam u_flow_ap11_add9_1_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N26
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52925(
// Equation(s):
// u_flow_ap11_add9_1_anx44952z1 = f_t3_7_ & (u_flow_ap11_add8_0i1_anx44952z1 & u_flow_ap11_add9_1_anx45949z6 & VCC # !u_flow_ap11_add8_0i1_anx44952z1 & !u_flow_ap11_add9_1_anx45949z6) # !f_t3_7_ & (u_flow_ap11_add8_0i1_anx44952z1 & 
// !u_flow_ap11_add9_1_anx45949z6 # !u_flow_ap11_add8_0i1_anx44952z1 & (u_flow_ap11_add9_1_anx45949z6 # GND))
// u_flow_ap11_add9_1_anx45949z3 = CARRY(f_t3_7_ & !u_flow_ap11_add8_0i1_anx44952z1 & !u_flow_ap11_add9_1_anx45949z6 # !f_t3_7_ & (!u_flow_ap11_add9_1_anx45949z6 # !u_flow_ap11_add8_0i1_anx44952z1))

	.dataa(f_t3_7_),
	.datab(u_flow_ap11_add8_0i1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z6),
	.combout(u_flow_ap11_add9_1_anx44952z1),
	.cout(u_flow_ap11_add9_1_anx45949z3));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52925.lut_mask = 16'h9617;
defparam u_flow_ap11_add9_1_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N4
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52933(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx37973z1 = u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap11_add9_1_anx37973z1 $ VCC) # !u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap11_add9_1_anx37973z1 # GND)
// u_flow_ap21_sub10_4i3_anx46946z28 = CARRY(u_flow_ap11_add9_1_anx37973z1 # !u_flow_ap12_add9_2_anx37973z1)

	.dataa(u_flow_ap12_add9_2_anx37973z1),
	.datab(u_flow_ap11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap21_sub10_4i3_anx37973z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z28));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52933.lut_mask = 16'h66DD;
defparam u_flow_ap21_sub10_4i3_aix46946z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N10
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52930(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx40964z1 = u_flow_ap12_add9_2_anx40964z1 & (u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub10_4i3_anx46946z22 # !u_flow_ap11_add9_1_anx40964z1 & (u_flow_ap21_sub10_4i3_anx46946z22 # GND)) # !u_flow_ap12_add9_2_anx40964z1 & 
// (u_flow_ap11_add9_1_anx40964z1 & u_flow_ap21_sub10_4i3_anx46946z22 & VCC # !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub10_4i3_anx46946z22)
// u_flow_ap21_sub10_4i3_anx46946z19 = CARRY(u_flow_ap12_add9_2_anx40964z1 & (!u_flow_ap21_sub10_4i3_anx46946z22 # !u_flow_ap11_add9_1_anx40964z1) # !u_flow_ap12_add9_2_anx40964z1 & !u_flow_ap11_add9_1_anx40964z1 & !u_flow_ap21_sub10_4i3_anx46946z22)

	.dataa(u_flow_ap12_add9_2_anx40964z1),
	.datab(u_flow_ap11_add9_1_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z22),
	.combout(u_flow_ap21_sub10_4i3_anx40964z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z19));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52930.lut_mask = 16'h692B;
defparam u_flow_ap21_sub10_4i3_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N14
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52928(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx42958z1 = u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap21_sub10_4i3_anx46946z16 # !u_flow_ap12_add9_2_anx42958z1 & u_flow_ap21_sub10_4i3_anx46946z16 & VCC) # !u_flow_ap11_add9_1_anx42958z1 & 
// (u_flow_ap12_add9_2_anx42958z1 & (u_flow_ap21_sub10_4i3_anx46946z16 # GND) # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap21_sub10_4i3_anx46946z16)
// u_flow_ap21_sub10_4i3_anx46946z13 = CARRY(u_flow_ap11_add9_1_anx42958z1 & u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap21_sub10_4i3_anx46946z16 # !u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap12_add9_2_anx42958z1 # !u_flow_ap21_sub10_4i3_anx46946z16))

	.dataa(u_flow_ap11_add9_1_anx42958z1),
	.datab(u_flow_ap12_add9_2_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z16),
	.combout(u_flow_ap21_sub10_4i3_anx42958z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z13));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52928.lut_mask = 16'h694D;
defparam u_flow_ap21_sub10_4i3_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N16
cycloneii_lcell_comb u_flow_ap21_sub10_4i3_aix46946z52927(
// Equation(s):
// u_flow_ap21_sub10_4i3_anx43955z1 = (u_flow_ap12_add9_2_anx43955z1 $ u_flow_ap11_add9_1_anx43955z1 $ u_flow_ap21_sub10_4i3_anx46946z13) # GND
// u_flow_ap21_sub10_4i3_anx46946z10 = CARRY(u_flow_ap12_add9_2_anx43955z1 & u_flow_ap11_add9_1_anx43955z1 & !u_flow_ap21_sub10_4i3_anx46946z13 # !u_flow_ap12_add9_2_anx43955z1 & (u_flow_ap11_add9_1_anx43955z1 # !u_flow_ap21_sub10_4i3_anx46946z13))

	.dataa(u_flow_ap12_add9_2_anx43955z1),
	.datab(u_flow_ap11_add9_1_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub10_4i3_anx46946z13),
	.combout(u_flow_ap21_sub10_4i3_anx43955z1),
	.cout(u_flow_ap21_sub10_4i3_anx46946z10));
// synopsys translate_off
defparam u_flow_ap21_sub10_4i3_aix46946z52927.lut_mask = 16'h964D;
defparam u_flow_ap21_sub10_4i3_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N4
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52935(
// Equation(s):
// u_flow_ap21_add12_4i1_anx37973z1 = u_flow_ap21_sub10_4i3_anx38970z1 & (u_flow_ap12_add9_2_anx37973z1 $ VCC) # !u_flow_ap21_sub10_4i3_anx38970z1 & u_flow_ap12_add9_2_anx37973z1 & VCC
// u_flow_ap21_add12_4i1_anx63795z32 = CARRY(u_flow_ap21_sub10_4i3_anx38970z1 & u_flow_ap12_add9_2_anx37973z1)

	.dataa(u_flow_ap21_sub10_4i3_anx38970z1),
	.datab(u_flow_ap12_add9_2_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap21_add12_4i1_anx37973z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z32));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52935.lut_mask = 16'h6688;
defparam u_flow_ap21_add12_4i1_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N6
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52934(
// Equation(s):
// u_flow_ap21_add12_4i1_anx38970z1 = u_flow_ap21_sub10_4i3_anx39967z1 & (u_flow_ap21_sub11_4i4_anx37973z1 & u_flow_ap21_add12_4i1_anx63795z32 & VCC # !u_flow_ap21_sub11_4i4_anx37973z1 & !u_flow_ap21_add12_4i1_anx63795z32) # !u_flow_ap21_sub10_4i3_anx39967z1 
// & (u_flow_ap21_sub11_4i4_anx37973z1 & !u_flow_ap21_add12_4i1_anx63795z32 # !u_flow_ap21_sub11_4i4_anx37973z1 & (u_flow_ap21_add12_4i1_anx63795z32 # GND))
// u_flow_ap21_add12_4i1_anx63795z29 = CARRY(u_flow_ap21_sub10_4i3_anx39967z1 & !u_flow_ap21_sub11_4i4_anx37973z1 & !u_flow_ap21_add12_4i1_anx63795z32 # !u_flow_ap21_sub10_4i3_anx39967z1 & (!u_flow_ap21_add12_4i1_anx63795z32 # 
// !u_flow_ap21_sub11_4i4_anx37973z1))

	.dataa(u_flow_ap21_sub10_4i3_anx39967z1),
	.datab(u_flow_ap21_sub11_4i4_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z32),
	.combout(u_flow_ap21_add12_4i1_anx38970z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z29));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52934.lut_mask = 16'h9617;
defparam u_flow_ap21_add12_4i1_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N8
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52933(
// Equation(s):
// u_flow_ap21_add12_4i1_anx39967z1 = (u_flow_ap21_sub11_4i4_anx38970z1 $ u_flow_ap21_sub10_4i3_anx40964z1 $ !u_flow_ap21_add12_4i1_anx63795z29) # GND
// u_flow_ap21_add12_4i1_anx63795z26 = CARRY(u_flow_ap21_sub11_4i4_anx38970z1 & (u_flow_ap21_sub10_4i3_anx40964z1 # !u_flow_ap21_add12_4i1_anx63795z29) # !u_flow_ap21_sub11_4i4_anx38970z1 & u_flow_ap21_sub10_4i3_anx40964z1 & 
// !u_flow_ap21_add12_4i1_anx63795z29)

	.dataa(u_flow_ap21_sub11_4i4_anx38970z1),
	.datab(u_flow_ap21_sub10_4i3_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z29),
	.combout(u_flow_ap21_add12_4i1_anx39967z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z26));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52933.lut_mask = 16'h698E;
defparam u_flow_ap21_add12_4i1_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N10
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52932(
// Equation(s):
// u_flow_ap21_add12_4i1_anx40964z1 = u_flow_ap21_sub10_4i3_anx41961z1 & (u_flow_ap21_sub11_4i4_anx39967z1 & u_flow_ap21_add12_4i1_anx63795z26 & VCC # !u_flow_ap21_sub11_4i4_anx39967z1 & !u_flow_ap21_add12_4i1_anx63795z26) # !u_flow_ap21_sub10_4i3_anx41961z1 
// & (u_flow_ap21_sub11_4i4_anx39967z1 & !u_flow_ap21_add12_4i1_anx63795z26 # !u_flow_ap21_sub11_4i4_anx39967z1 & (u_flow_ap21_add12_4i1_anx63795z26 # GND))
// u_flow_ap21_add12_4i1_anx63795z23 = CARRY(u_flow_ap21_sub10_4i3_anx41961z1 & !u_flow_ap21_sub11_4i4_anx39967z1 & !u_flow_ap21_add12_4i1_anx63795z26 # !u_flow_ap21_sub10_4i3_anx41961z1 & (!u_flow_ap21_add12_4i1_anx63795z26 # 
// !u_flow_ap21_sub11_4i4_anx39967z1))

	.dataa(u_flow_ap21_sub10_4i3_anx41961z1),
	.datab(u_flow_ap21_sub11_4i4_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z26),
	.combout(u_flow_ap21_add12_4i1_anx40964z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z23));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52932.lut_mask = 16'h9617;
defparam u_flow_ap21_add12_4i1_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N12
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52931(
// Equation(s):
// u_flow_ap21_add12_4i1_anx41961z1 = (u_flow_ap21_sub11_4i4_anx40964z1 $ u_flow_ap21_sub10_4i3_anx42958z1 $ !u_flow_ap21_add12_4i1_anx63795z23) # GND
// u_flow_ap21_add12_4i1_anx63795z20 = CARRY(u_flow_ap21_sub11_4i4_anx40964z1 & (u_flow_ap21_sub10_4i3_anx42958z1 # !u_flow_ap21_add12_4i1_anx63795z23) # !u_flow_ap21_sub11_4i4_anx40964z1 & u_flow_ap21_sub10_4i3_anx42958z1 & 
// !u_flow_ap21_add12_4i1_anx63795z23)

	.dataa(u_flow_ap21_sub11_4i4_anx40964z1),
	.datab(u_flow_ap21_sub10_4i3_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z23),
	.combout(u_flow_ap21_add12_4i1_anx41961z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z20));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52931.lut_mask = 16'h698E;
defparam u_flow_ap21_add12_4i1_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N18
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52928(
// Equation(s):
// u_flow_ap21_add12_4i1_anx44952z1 = u_flow_ap21_sub11_4i4_anx43955z1 & (u_flow_ap21_sub10_4i3_anx45949z1 & u_flow_ap21_add12_4i1_anx63795z14 & VCC # !u_flow_ap21_sub10_4i3_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z14) # !u_flow_ap21_sub11_4i4_anx43955z1 
// & (u_flow_ap21_sub10_4i3_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z14 # !u_flow_ap21_sub10_4i3_anx45949z1 & (u_flow_ap21_add12_4i1_anx63795z14 # GND))
// u_flow_ap21_add12_4i1_anx63795z11 = CARRY(u_flow_ap21_sub11_4i4_anx43955z1 & !u_flow_ap21_sub10_4i3_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z14 # !u_flow_ap21_sub11_4i4_anx43955z1 & (!u_flow_ap21_add12_4i1_anx63795z14 # 
// !u_flow_ap21_sub10_4i3_anx45949z1))

	.dataa(u_flow_ap21_sub11_4i4_anx43955z1),
	.datab(u_flow_ap21_sub10_4i3_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z14),
	.combout(u_flow_ap21_add12_4i1_anx44952z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z11));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52928.lut_mask = 16'h9617;
defparam u_flow_ap21_add12_4i1_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N20
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52927(
// Equation(s):
// u_flow_ap21_add12_4i1_anx45949z1 = (u_flow_ap21_sub10_4i3_anx46946z1 $ u_flow_ap21_sub11_4i4_anx44952z1 $ !u_flow_ap21_add12_4i1_anx63795z11) # GND
// u_flow_ap21_add12_4i1_anx63795z8 = CARRY(u_flow_ap21_sub10_4i3_anx46946z1 & (u_flow_ap21_sub11_4i4_anx44952z1 # !u_flow_ap21_add12_4i1_anx63795z11) # !u_flow_ap21_sub10_4i3_anx46946z1 & u_flow_ap21_sub11_4i4_anx44952z1 & 
// !u_flow_ap21_add12_4i1_anx63795z11)

	.dataa(u_flow_ap21_sub10_4i3_anx46946z1),
	.datab(u_flow_ap21_sub11_4i4_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z11),
	.combout(u_flow_ap21_add12_4i1_anx45949z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z8));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52927.lut_mask = 16'h698E;
defparam u_flow_ap21_add12_4i1_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N22
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52926(
// Equation(s):
// u_flow_ap21_add12_4i1_anx46946z1 = u_flow_ap21_sub10_4i3_anx23445z1 & (u_flow_ap21_sub11_4i4_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z8 # !u_flow_ap21_sub11_4i4_anx45949z1 & (u_flow_ap21_add12_4i1_anx63795z8 # GND)) # !u_flow_ap21_sub10_4i3_anx23445z1 
// & (u_flow_ap21_sub11_4i4_anx45949z1 & u_flow_ap21_add12_4i1_anx63795z8 & VCC # !u_flow_ap21_sub11_4i4_anx45949z1 & !u_flow_ap21_add12_4i1_anx63795z8)
// u_flow_ap21_add12_4i1_anx63795z6 = CARRY(u_flow_ap21_sub10_4i3_anx23445z1 & (!u_flow_ap21_add12_4i1_anx63795z8 # !u_flow_ap21_sub11_4i4_anx45949z1) # !u_flow_ap21_sub10_4i3_anx23445z1 & !u_flow_ap21_sub11_4i4_anx45949z1 & 
// !u_flow_ap21_add12_4i1_anx63795z8)

	.dataa(u_flow_ap21_sub10_4i3_anx23445z1),
	.datab(u_flow_ap21_sub11_4i4_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z8),
	.combout(u_flow_ap21_add12_4i1_anx46946z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z6));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52926.lut_mask = 16'h692B;
defparam u_flow_ap21_add12_4i1_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y20_N23
cycloneii_lcell_ff u_flow_areg_p21_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_10_));

// atom is at LCCOMB_X59_Y20_N0
cycloneii_lcell_comb u_flow_ap31_10__afeeder(
// Equation(s):
// u_flow_ap31_10__afeeder_combout = u_flow_ap21_10_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_10_),
	.cin(gnd),
	.combout(u_flow_ap31_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_10__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap31_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N28
cycloneii_lcell_comb u_flow_ap11_add9_1_aix45949z52923(
// Equation(s):
// u_flow_ap11_add9_1_anx45949z1 = u_flow_ap11_add8_0i1_anx23445z1 & (u_flow_ap11_add9_1_anx45949z3 $ GND) # !u_flow_ap11_add8_0i1_anx23445z1 & !u_flow_ap11_add9_1_anx45949z3 & VCC
// u_flow_ap11_add9_1_anx23445z2 = CARRY(u_flow_ap11_add8_0i1_anx23445z1 & !u_flow_ap11_add9_1_anx45949z3)

	.dataa(u_flow_ap11_add8_0i1_anx23445z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx45949z3),
	.combout(u_flow_ap11_add9_1_anx45949z1),
	.cout(u_flow_ap11_add9_1_anx23445z2));
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix45949z52923.lut_mask = 16'hA50A;
defparam u_flow_ap11_add9_1_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N30
cycloneii_lcell_comb u_flow_ap11_add9_1_aix23445z52923(
// Equation(s):
// u_flow_ap11_add9_1_anx23445z1 = u_flow_ap11_add9_1_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap11_add9_1_anx23445z2),
	.combout(u_flow_ap11_add9_1_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap11_add9_1_aix23445z52923.lut_mask = 16'hF0F0;
defparam u_flow_ap11_add9_1_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N10
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52933(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx37973z1 = u_flow_ap12_add9_2_anx37973z1 & (GND # !u_flow_ap11_add9_1_anx37973z1) # !u_flow_ap12_add9_2_anx37973z1 & (u_flow_ap11_add9_1_anx37973z1 $ GND)
// u_flow_ap22_sub10_4i5_anx46946z28 = CARRY(u_flow_ap12_add9_2_anx37973z1 # !u_flow_ap11_add9_1_anx37973z1)

	.dataa(u_flow_ap12_add9_2_anx37973z1),
	.datab(u_flow_ap11_add9_1_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap22_sub10_4i5_anx37973z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z28));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52933.lut_mask = 16'h66BB;
defparam u_flow_ap22_sub10_4i5_aix46946z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N12
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52932(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx38970z1 = u_flow_ap11_add9_1_anx38970z1 & (u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub10_4i5_anx46946z28 # !u_flow_ap12_add9_2_anx38970z1 & (u_flow_ap22_sub10_4i5_anx46946z28 # GND)) # !u_flow_ap11_add9_1_anx38970z1 & 
// (u_flow_ap12_add9_2_anx38970z1 & u_flow_ap22_sub10_4i5_anx46946z28 & VCC # !u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub10_4i5_anx46946z28)
// u_flow_ap22_sub10_4i5_anx46946z25 = CARRY(u_flow_ap11_add9_1_anx38970z1 & (!u_flow_ap22_sub10_4i5_anx46946z28 # !u_flow_ap12_add9_2_anx38970z1) # !u_flow_ap11_add9_1_anx38970z1 & !u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub10_4i5_anx46946z28)

	.dataa(u_flow_ap11_add9_1_anx38970z1),
	.datab(u_flow_ap12_add9_2_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z28),
	.combout(u_flow_ap22_sub10_4i5_anx38970z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z25));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52932.lut_mask = 16'h692B;
defparam u_flow_ap22_sub10_4i5_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N14
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52931(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx39967z1 = (u_flow_ap12_add9_2_anx39967z1 $ u_flow_ap11_add9_1_anx39967z1 $ u_flow_ap22_sub10_4i5_anx46946z25) # GND
// u_flow_ap22_sub10_4i5_anx46946z22 = CARRY(u_flow_ap12_add9_2_anx39967z1 & (!u_flow_ap22_sub10_4i5_anx46946z25 # !u_flow_ap11_add9_1_anx39967z1) # !u_flow_ap12_add9_2_anx39967z1 & !u_flow_ap11_add9_1_anx39967z1 & !u_flow_ap22_sub10_4i5_anx46946z25)

	.dataa(u_flow_ap12_add9_2_anx39967z1),
	.datab(u_flow_ap11_add9_1_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z25),
	.combout(u_flow_ap22_sub10_4i5_anx39967z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z22));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52931.lut_mask = 16'h962B;
defparam u_flow_ap22_sub10_4i5_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N18
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52929(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx41961z1 = (u_flow_ap11_add9_1_anx41961z1 $ u_flow_ap12_add9_2_anx41961z1 $ u_flow_ap22_sub10_4i5_anx46946z19) # GND
// u_flow_ap22_sub10_4i5_anx46946z16 = CARRY(u_flow_ap11_add9_1_anx41961z1 & u_flow_ap12_add9_2_anx41961z1 & !u_flow_ap22_sub10_4i5_anx46946z19 # !u_flow_ap11_add9_1_anx41961z1 & (u_flow_ap12_add9_2_anx41961z1 # !u_flow_ap22_sub10_4i5_anx46946z19))

	.dataa(u_flow_ap11_add9_1_anx41961z1),
	.datab(u_flow_ap12_add9_2_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z19),
	.combout(u_flow_ap22_sub10_4i5_anx41961z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z16));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52929.lut_mask = 16'h964D;
defparam u_flow_ap22_sub10_4i5_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N20
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52928(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx42958z1 = u_flow_ap11_add9_1_anx42958z1 & (u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap22_sub10_4i5_anx46946z16 # !u_flow_ap12_add9_2_anx42958z1 & (u_flow_ap22_sub10_4i5_anx46946z16 # GND)) # !u_flow_ap11_add9_1_anx42958z1 & 
// (u_flow_ap12_add9_2_anx42958z1 & u_flow_ap22_sub10_4i5_anx46946z16 & VCC # !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap22_sub10_4i5_anx46946z16)
// u_flow_ap22_sub10_4i5_anx46946z13 = CARRY(u_flow_ap11_add9_1_anx42958z1 & (!u_flow_ap22_sub10_4i5_anx46946z16 # !u_flow_ap12_add9_2_anx42958z1) # !u_flow_ap11_add9_1_anx42958z1 & !u_flow_ap12_add9_2_anx42958z1 & !u_flow_ap22_sub10_4i5_anx46946z16)

	.dataa(u_flow_ap11_add9_1_anx42958z1),
	.datab(u_flow_ap12_add9_2_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z16),
	.combout(u_flow_ap22_sub10_4i5_anx42958z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z13));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52928.lut_mask = 16'h692B;
defparam u_flow_ap22_sub10_4i5_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N22
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52927(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx43955z1 = (u_flow_ap11_add9_1_anx43955z1 $ u_flow_ap12_add9_2_anx43955z1 $ u_flow_ap22_sub10_4i5_anx46946z13) # GND
// u_flow_ap22_sub10_4i5_anx46946z10 = CARRY(u_flow_ap11_add9_1_anx43955z1 & u_flow_ap12_add9_2_anx43955z1 & !u_flow_ap22_sub10_4i5_anx46946z13 # !u_flow_ap11_add9_1_anx43955z1 & (u_flow_ap12_add9_2_anx43955z1 # !u_flow_ap22_sub10_4i5_anx46946z13))

	.dataa(u_flow_ap11_add9_1_anx43955z1),
	.datab(u_flow_ap12_add9_2_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z13),
	.combout(u_flow_ap22_sub10_4i5_anx43955z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z10));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52927.lut_mask = 16'h964D;
defparam u_flow_ap22_sub10_4i5_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N24
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52926(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx44952z1 = u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub10_4i5_anx46946z10 # !u_flow_ap11_add9_1_anx44952z1 & u_flow_ap22_sub10_4i5_anx46946z10 & VCC) # !u_flow_ap12_add9_2_anx44952z1 & 
// (u_flow_ap11_add9_1_anx44952z1 & (u_flow_ap22_sub10_4i5_anx46946z10 # GND) # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub10_4i5_anx46946z10)
// u_flow_ap22_sub10_4i5_anx46946z7 = CARRY(u_flow_ap12_add9_2_anx44952z1 & u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub10_4i5_anx46946z10 # !u_flow_ap12_add9_2_anx44952z1 & (u_flow_ap11_add9_1_anx44952z1 # !u_flow_ap22_sub10_4i5_anx46946z10))

	.dataa(u_flow_ap12_add9_2_anx44952z1),
	.datab(u_flow_ap11_add9_1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z10),
	.combout(u_flow_ap22_sub10_4i5_anx44952z1),
	.cout(u_flow_ap22_sub10_4i5_anx46946z7));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52926.lut_mask = 16'h694D;
defparam u_flow_ap22_sub10_4i5_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N28
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix46946z52923(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx46946z1 = u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub10_4i5_anx46946z4 # !u_flow_ap11_add9_1_anx23445z1 & u_flow_ap22_sub10_4i5_anx46946z4 & VCC) # !u_flow_ap12_add9_2_anx23445z1 & 
// (u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap22_sub10_4i5_anx46946z4 # GND) # !u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub10_4i5_anx46946z4)
// u_flow_ap22_sub10_4i5_anx23445z2 = CARRY(u_flow_ap12_add9_2_anx23445z1 & u_flow_ap11_add9_1_anx23445z1 & !u_flow_ap22_sub10_4i5_anx46946z4 # !u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap11_add9_1_anx23445z1 # !u_flow_ap22_sub10_4i5_anx46946z4))

	.dataa(u_flow_ap12_add9_2_anx23445z1),
	.datab(u_flow_ap11_add9_1_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx46946z4),
	.combout(u_flow_ap22_sub10_4i5_anx46946z1),
	.cout(u_flow_ap22_sub10_4i5_anx23445z2));
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix46946z52923.lut_mask = 16'h694D;
defparam u_flow_ap22_sub10_4i5_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N30
cycloneii_lcell_comb u_flow_ap22_sub10_4i5_aix23445z52923(
// Equation(s):
// u_flow_ap22_sub10_4i5_anx23445z1 = !u_flow_ap22_sub10_4i5_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub10_4i5_anx23445z2),
	.combout(u_flow_ap22_sub10_4i5_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap22_sub10_4i5_aix23445z52923.lut_mask = 16'h0F0F;
defparam u_flow_ap22_sub10_4i5_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N2
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52934(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx46946z29 = CARRY(u_flow_ap12_add9_2_anx37973z1)

	.dataa(u_flow_ap12_add9_2_anx37973z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_flow_ap22_sub11_4i6_anx46946z29));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52934.lut_mask = 16'h00AA;
defparam u_flow_ap22_sub11_4i6_aix46946z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N6
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52932(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx38970z1 = (u_flow_ap11_add9_1_anx39967z1 $ u_flow_ap12_add9_2_anx38970z1 $ u_flow_ap22_sub11_4i6_anx46946z27) # GND
// u_flow_ap22_sub11_4i6_anx46946z24 = CARRY(u_flow_ap11_add9_1_anx39967z1 & u_flow_ap12_add9_2_anx38970z1 & !u_flow_ap22_sub11_4i6_anx46946z27 # !u_flow_ap11_add9_1_anx39967z1 & (u_flow_ap12_add9_2_anx38970z1 # !u_flow_ap22_sub11_4i6_anx46946z27))

	.dataa(u_flow_ap11_add9_1_anx39967z1),
	.datab(u_flow_ap12_add9_2_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z27),
	.combout(u_flow_ap22_sub11_4i6_anx38970z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z24));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52932.lut_mask = 16'h964D;
defparam u_flow_ap22_sub11_4i6_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N16
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52927(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx43955z1 = u_flow_ap12_add9_2_anx43955z1 & (u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z12 # !u_flow_ap11_add9_1_anx44952z1 & u_flow_ap22_sub11_4i6_anx46946z12 & VCC) # !u_flow_ap12_add9_2_anx43955z1 & 
// (u_flow_ap11_add9_1_anx44952z1 & (u_flow_ap22_sub11_4i6_anx46946z12 # GND) # !u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z12)
// u_flow_ap22_sub11_4i6_anx46946z9 = CARRY(u_flow_ap12_add9_2_anx43955z1 & u_flow_ap11_add9_1_anx44952z1 & !u_flow_ap22_sub11_4i6_anx46946z12 # !u_flow_ap12_add9_2_anx43955z1 & (u_flow_ap11_add9_1_anx44952z1 # !u_flow_ap22_sub11_4i6_anx46946z12))

	.dataa(u_flow_ap12_add9_2_anx43955z1),
	.datab(u_flow_ap11_add9_1_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z12),
	.combout(u_flow_ap22_sub11_4i6_anx43955z1),
	.cout(u_flow_ap22_sub11_4i6_anx46946z9));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52927.lut_mask = 16'h694D;
defparam u_flow_ap22_sub11_4i6_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N8
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52933(
// Equation(s):
// u_flow_ap22_add12_4i2_anx39967z1 = (u_flow_ap22_sub10_4i5_anx40964z1 $ u_flow_ap22_sub11_4i6_anx38970z1 $ !u_flow_ap22_add12_4i2_anx63795z29) # GND
// u_flow_ap22_add12_4i2_anx63795z26 = CARRY(u_flow_ap22_sub10_4i5_anx40964z1 & (u_flow_ap22_sub11_4i6_anx38970z1 # !u_flow_ap22_add12_4i2_anx63795z29) # !u_flow_ap22_sub10_4i5_anx40964z1 & u_flow_ap22_sub11_4i6_anx38970z1 & 
// !u_flow_ap22_add12_4i2_anx63795z29)

	.dataa(u_flow_ap22_sub10_4i5_anx40964z1),
	.datab(u_flow_ap22_sub11_4i6_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z29),
	.combout(u_flow_ap22_add12_4i2_anx39967z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z26));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52933.lut_mask = 16'h698E;
defparam u_flow_ap22_add12_4i2_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N12
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52931(
// Equation(s):
// u_flow_ap22_add12_4i2_anx41961z1 = (u_flow_ap22_sub11_4i6_anx40964z1 $ u_flow_ap22_sub10_4i5_anx42958z1 $ !u_flow_ap22_add12_4i2_anx63795z23) # GND
// u_flow_ap22_add12_4i2_anx63795z20 = CARRY(u_flow_ap22_sub11_4i6_anx40964z1 & (u_flow_ap22_sub10_4i5_anx42958z1 # !u_flow_ap22_add12_4i2_anx63795z23) # !u_flow_ap22_sub11_4i6_anx40964z1 & u_flow_ap22_sub10_4i5_anx42958z1 & 
// !u_flow_ap22_add12_4i2_anx63795z23)

	.dataa(u_flow_ap22_sub11_4i6_anx40964z1),
	.datab(u_flow_ap22_sub10_4i5_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z23),
	.combout(u_flow_ap22_add12_4i2_anx41961z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z20));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52931.lut_mask = 16'h698E;
defparam u_flow_ap22_add12_4i2_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N14
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52930(
// Equation(s):
// u_flow_ap22_add12_4i2_anx42958z1 = u_flow_ap22_sub11_4i6_anx41961z1 & (u_flow_ap22_sub10_4i5_anx43955z1 & u_flow_ap22_add12_4i2_anx63795z20 & VCC # !u_flow_ap22_sub10_4i5_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z20) # !u_flow_ap22_sub11_4i6_anx41961z1 
// & (u_flow_ap22_sub10_4i5_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z20 # !u_flow_ap22_sub10_4i5_anx43955z1 & (u_flow_ap22_add12_4i2_anx63795z20 # GND))
// u_flow_ap22_add12_4i2_anx63795z17 = CARRY(u_flow_ap22_sub11_4i6_anx41961z1 & !u_flow_ap22_sub10_4i5_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z20 # !u_flow_ap22_sub11_4i6_anx41961z1 & (!u_flow_ap22_add12_4i2_anx63795z20 # 
// !u_flow_ap22_sub10_4i5_anx43955z1))

	.dataa(u_flow_ap22_sub11_4i6_anx41961z1),
	.datab(u_flow_ap22_sub10_4i5_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z20),
	.combout(u_flow_ap22_add12_4i2_anx42958z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z17));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52930.lut_mask = 16'h9617;
defparam u_flow_ap22_add12_4i2_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N16
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52929(
// Equation(s):
// u_flow_ap22_add12_4i2_anx43955z1 = (u_flow_ap22_sub11_4i6_anx42958z1 $ u_flow_ap22_sub10_4i5_anx44952z1 $ !u_flow_ap22_add12_4i2_anx63795z17) # GND
// u_flow_ap22_add12_4i2_anx63795z14 = CARRY(u_flow_ap22_sub11_4i6_anx42958z1 & (u_flow_ap22_sub10_4i5_anx44952z1 # !u_flow_ap22_add12_4i2_anx63795z17) # !u_flow_ap22_sub11_4i6_anx42958z1 & u_flow_ap22_sub10_4i5_anx44952z1 & 
// !u_flow_ap22_add12_4i2_anx63795z17)

	.dataa(u_flow_ap22_sub11_4i6_anx42958z1),
	.datab(u_flow_ap22_sub10_4i5_anx44952z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z17),
	.combout(u_flow_ap22_add12_4i2_anx43955z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z14));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52929.lut_mask = 16'h698E;
defparam u_flow_ap22_add12_4i2_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N18
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52928(
// Equation(s):
// u_flow_ap22_add12_4i2_anx44952z1 = u_flow_ap22_sub10_4i5_anx45949z1 & (u_flow_ap22_sub11_4i6_anx43955z1 & u_flow_ap22_add12_4i2_anx63795z14 & VCC # !u_flow_ap22_sub11_4i6_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z14) # !u_flow_ap22_sub10_4i5_anx45949z1 
// & (u_flow_ap22_sub11_4i6_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z14 # !u_flow_ap22_sub11_4i6_anx43955z1 & (u_flow_ap22_add12_4i2_anx63795z14 # GND))
// u_flow_ap22_add12_4i2_anx63795z11 = CARRY(u_flow_ap22_sub10_4i5_anx45949z1 & !u_flow_ap22_sub11_4i6_anx43955z1 & !u_flow_ap22_add12_4i2_anx63795z14 # !u_flow_ap22_sub10_4i5_anx45949z1 & (!u_flow_ap22_add12_4i2_anx63795z14 # 
// !u_flow_ap22_sub11_4i6_anx43955z1))

	.dataa(u_flow_ap22_sub10_4i5_anx45949z1),
	.datab(u_flow_ap22_sub11_4i6_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z14),
	.combout(u_flow_ap22_add12_4i2_anx44952z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z11));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52928.lut_mask = 16'h9617;
defparam u_flow_ap22_add12_4i2_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N20
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52927(
// Equation(s):
// u_flow_ap22_add12_4i2_anx45949z1 = (u_flow_ap22_sub11_4i6_anx44952z1 $ u_flow_ap22_sub10_4i5_anx46946z1 $ !u_flow_ap22_add12_4i2_anx63795z11) # GND
// u_flow_ap22_add12_4i2_anx63795z8 = CARRY(u_flow_ap22_sub11_4i6_anx44952z1 & (u_flow_ap22_sub10_4i5_anx46946z1 # !u_flow_ap22_add12_4i2_anx63795z11) # !u_flow_ap22_sub11_4i6_anx44952z1 & u_flow_ap22_sub10_4i5_anx46946z1 & 
// !u_flow_ap22_add12_4i2_anx63795z11)

	.dataa(u_flow_ap22_sub11_4i6_anx44952z1),
	.datab(u_flow_ap22_sub10_4i5_anx46946z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z11),
	.combout(u_flow_ap22_add12_4i2_anx45949z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z8));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52927.lut_mask = 16'h698E;
defparam u_flow_ap22_add12_4i2_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N22
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52926(
// Equation(s):
// u_flow_ap22_add12_4i2_anx46946z1 = u_flow_ap22_sub11_4i6_anx45949z1 & (u_flow_ap22_sub10_4i5_anx23445z1 & !u_flow_ap22_add12_4i2_anx63795z8 # !u_flow_ap22_sub10_4i5_anx23445z1 & u_flow_ap22_add12_4i2_anx63795z8 & VCC) # !u_flow_ap22_sub11_4i6_anx45949z1 & 
// (u_flow_ap22_sub10_4i5_anx23445z1 & (u_flow_ap22_add12_4i2_anx63795z8 # GND) # !u_flow_ap22_sub10_4i5_anx23445z1 & !u_flow_ap22_add12_4i2_anx63795z8)
// u_flow_ap22_add12_4i2_anx63795z6 = CARRY(u_flow_ap22_sub11_4i6_anx45949z1 & u_flow_ap22_sub10_4i5_anx23445z1 & !u_flow_ap22_add12_4i2_anx63795z8 # !u_flow_ap22_sub11_4i6_anx45949z1 & (u_flow_ap22_sub10_4i5_anx23445z1 # !u_flow_ap22_add12_4i2_anx63795z8))

	.dataa(u_flow_ap22_sub11_4i6_anx45949z1),
	.datab(u_flow_ap22_sub10_4i5_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_add12_4i2_anx63795z8),
	.combout(u_flow_ap22_add12_4i2_anx46946z1),
	.cout(u_flow_ap22_add12_4i2_anx63795z6));
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52926.lut_mask = 16'h694D;
defparam u_flow_ap22_add12_4i2_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N23
cycloneii_lcell_ff u_flow_areg_p22_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_10_));

// atom is at LCCOMB_X58_Y20_N24
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix46946z52923(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx46946z1 = u_flow_ap11_add9_1_anx23445z1 & (GND # !u_flow_ap21_sub11_4i4_anx46946z3) # !u_flow_ap11_add9_1_anx23445z1 & (u_flow_ap21_sub11_4i4_anx46946z3 $ GND)
// u_flow_ap21_sub11_4i4_anx23445z2 = CARRY(u_flow_ap11_add9_1_anx23445z1 # !u_flow_ap21_sub11_4i4_anx46946z3)

	.dataa(vcc),
	.datab(u_flow_ap11_add9_1_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx46946z3),
	.combout(u_flow_ap21_sub11_4i4_anx46946z1),
	.cout(u_flow_ap21_sub11_4i4_anx23445z2));
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix46946z52923.lut_mask = 16'h3CCF;
defparam u_flow_ap21_sub11_4i4_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N26
cycloneii_lcell_comb u_flow_ap21_sub11_4i4_aix23445z52923(
// Equation(s):
// u_flow_ap21_sub11_4i4_anx23445z1 = u_flow_ap21_sub11_4i4_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_sub11_4i4_anx23445z2),
	.combout(u_flow_ap21_sub11_4i4_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap21_sub11_4i4_aix23445z52923.lut_mask = 16'hF0F0;
defparam u_flow_ap21_sub11_4i4_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N24
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52925(
// Equation(s):
// u_flow_ap21_add12_4i1_anx62798z1 = (u_flow_ap21_sub10_4i3_anx23445z1 $ u_flow_ap21_sub11_4i4_anx46946z1 $ u_flow_ap21_add12_4i1_anx63795z6) # GND
// u_flow_ap21_add12_4i1_anx63795z4 = CARRY(u_flow_ap21_sub10_4i3_anx23445z1 & u_flow_ap21_sub11_4i4_anx46946z1 & !u_flow_ap21_add12_4i1_anx63795z6 # !u_flow_ap21_sub10_4i3_anx23445z1 & (u_flow_ap21_sub11_4i4_anx46946z1 # !u_flow_ap21_add12_4i1_anx63795z6))

	.dataa(u_flow_ap21_sub10_4i3_anx23445z1),
	.datab(u_flow_ap21_sub11_4i4_anx46946z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap21_add12_4i1_anx63795z6),
	.combout(u_flow_ap21_add12_4i1_anx62798z1),
	.cout(u_flow_ap21_add12_4i1_anx63795z4));
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52925.lut_mask = 16'h964D;
defparam u_flow_ap21_add12_4i1_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N26
cycloneii_lcell_comb u_flow_ap21_add12_4i1_aix63795z52923(
// Equation(s):
// u_flow_ap21_add12_4i1_anx63795z1 = u_flow_ap21_sub10_4i3_anx23445z1 $ u_flow_ap21_add12_4i1_anx63795z4 $ u_flow_ap21_sub11_4i4_anx23445z1

	.dataa(u_flow_ap21_sub10_4i3_anx23445z1),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_sub11_4i4_anx23445z1),
	.cin(u_flow_ap21_add12_4i1_anx63795z4),
	.combout(u_flow_ap21_add12_4i1_anx63795z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap21_add12_4i1_aix63795z52923.lut_mask = 16'hA55A;
defparam u_flow_ap21_add12_4i1_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y20_N27
cycloneii_lcell_ff u_flow_areg_p21_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx63795z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_12_));

// atom is at LCFF_X59_Y20_N25
cycloneii_lcell_ff u_flow_areg_p21_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_11_));

// atom is at LCFF_X59_Y20_N21
cycloneii_lcell_ff u_flow_areg_p21_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_9_));

// atom is at LCFF_X59_Y20_N19
cycloneii_lcell_ff u_flow_areg_p21_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_8_));

// atom is at LCFF_X57_Y19_N17
cycloneii_lcell_ff u_flow_areg_p22_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_7_));

// atom is at LCFF_X57_Y19_N15
cycloneii_lcell_ff u_flow_areg_p22_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_6_));

// atom is at LCFF_X59_Y20_N13
cycloneii_lcell_ff u_flow_areg_p21_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_5_));

// atom is at LCFF_X59_Y20_N11
cycloneii_lcell_ff u_flow_areg_p21_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_4_));

// atom is at LCFF_X59_Y20_N9
cycloneii_lcell_ff u_flow_areg_p21_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_3_));

// atom is at LCFF_X59_Y20_N7
cycloneii_lcell_ff u_flow_areg_p21_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_2_));

// atom is at LCFF_X59_Y20_N5
cycloneii_lcell_ff u_flow_areg_p21_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_add12_4i1_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_1_));

// atom is at LCFF_X58_Y21_N5
cycloneii_lcell_ff u_flow_areg_p21_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap21_sub10_4i3_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap21_0_));

// atom is at LCCOMB_X59_Y19_N2
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52936(
// Equation(s):
// u_flow_aix45188z19900_anx100z37 = CARRY(u_flow_ap22_0_ & !u_flow_ap21_0_)

	.dataa(u_flow_ap22_0_),
	.datab(u_flow_ap21_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z37));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52936.lut_mask = 16'h0022;
defparam u_flow_aix45188z19900_aix100z52936.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N4
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52935(
// Equation(s):
// u_flow_aix45188z19900_anx100z34 = CARRY(u_flow_ap22_1_ & u_flow_ap21_1_ & !u_flow_aix45188z19900_anx100z37 # !u_flow_ap22_1_ & (u_flow_ap21_1_ # !u_flow_aix45188z19900_anx100z37))

	.dataa(u_flow_ap22_1_),
	.datab(u_flow_ap21_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z37),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z34));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52935.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N6
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52934(
// Equation(s):
// u_flow_aix45188z19900_anx100z31 = CARRY(u_flow_ap22_2_ & (!u_flow_aix45188z19900_anx100z34 # !u_flow_ap21_2_) # !u_flow_ap22_2_ & !u_flow_ap21_2_ & !u_flow_aix45188z19900_anx100z34)

	.dataa(u_flow_ap22_2_),
	.datab(u_flow_ap21_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z34),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z31));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52934.lut_mask = 16'h002B;
defparam u_flow_aix45188z19900_aix100z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N8
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52933(
// Equation(s):
// u_flow_aix45188z19900_anx100z28 = CARRY(u_flow_ap22_3_ & u_flow_ap21_3_ & !u_flow_aix45188z19900_anx100z31 # !u_flow_ap22_3_ & (u_flow_ap21_3_ # !u_flow_aix45188z19900_anx100z31))

	.dataa(u_flow_ap22_3_),
	.datab(u_flow_ap21_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z31),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z28));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52933.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N10
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52932(
// Equation(s):
// u_flow_aix45188z19900_anx100z25 = CARRY(u_flow_ap22_4_ & (!u_flow_aix45188z19900_anx100z28 # !u_flow_ap21_4_) # !u_flow_ap22_4_ & !u_flow_ap21_4_ & !u_flow_aix45188z19900_anx100z28)

	.dataa(u_flow_ap22_4_),
	.datab(u_flow_ap21_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z28),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z25));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52932.lut_mask = 16'h002B;
defparam u_flow_aix45188z19900_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N12
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52931(
// Equation(s):
// u_flow_aix45188z19900_anx100z22 = CARRY(u_flow_ap22_5_ & u_flow_ap21_5_ & !u_flow_aix45188z19900_anx100z25 # !u_flow_ap22_5_ & (u_flow_ap21_5_ # !u_flow_aix45188z19900_anx100z25))

	.dataa(u_flow_ap22_5_),
	.datab(u_flow_ap21_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z25),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z22));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52931.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N14
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52930(
// Equation(s):
// u_flow_aix45188z19900_anx100z19 = CARRY(u_flow_ap21_6_ & u_flow_ap22_6_ & !u_flow_aix45188z19900_anx100z22 # !u_flow_ap21_6_ & (u_flow_ap22_6_ # !u_flow_aix45188z19900_anx100z22))

	.dataa(u_flow_ap21_6_),
	.datab(u_flow_ap22_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z22),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z19));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52930.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N16
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52929(
// Equation(s):
// u_flow_aix45188z19900_anx100z16 = CARRY(u_flow_ap21_7_ & (!u_flow_aix45188z19900_anx100z19 # !u_flow_ap22_7_) # !u_flow_ap21_7_ & !u_flow_ap22_7_ & !u_flow_aix45188z19900_anx100z19)

	.dataa(u_flow_ap21_7_),
	.datab(u_flow_ap22_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z19),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z16));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52929.lut_mask = 16'h002B;
defparam u_flow_aix45188z19900_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N18
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52928(
// Equation(s):
// u_flow_aix45188z19900_anx100z13 = CARRY(u_flow_ap22_8_ & (!u_flow_aix45188z19900_anx100z16 # !u_flow_ap21_8_) # !u_flow_ap22_8_ & !u_flow_ap21_8_ & !u_flow_aix45188z19900_anx100z16)

	.dataa(u_flow_ap22_8_),
	.datab(u_flow_ap21_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z16),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z13));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52928.lut_mask = 16'h002B;
defparam u_flow_aix45188z19900_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N20
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52927(
// Equation(s):
// u_flow_aix45188z19900_anx100z10 = CARRY(u_flow_ap22_9_ & u_flow_ap21_9_ & !u_flow_aix45188z19900_anx100z13 # !u_flow_ap22_9_ & (u_flow_ap21_9_ # !u_flow_aix45188z19900_anx100z13))

	.dataa(u_flow_ap22_9_),
	.datab(u_flow_ap21_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z13),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z10));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52927.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N22
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52926(
// Equation(s):
// u_flow_aix45188z19900_anx100z7 = CARRY(u_flow_ap21_10_ & u_flow_ap22_10_ & !u_flow_aix45188z19900_anx100z10 # !u_flow_ap21_10_ & (u_flow_ap22_10_ # !u_flow_aix45188z19900_anx100z10))

	.dataa(u_flow_ap21_10_),
	.datab(u_flow_ap22_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z10),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z7));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52926.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N24
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52925(
// Equation(s):
// u_flow_aix45188z19900_anx100z4 = CARRY(u_flow_ap22_11_ & u_flow_ap21_11_ & !u_flow_aix45188z19900_anx100z7 # !u_flow_ap22_11_ & (u_flow_ap21_11_ # !u_flow_aix45188z19900_anx100z7))

	.dataa(u_flow_ap22_11_),
	.datab(u_flow_ap21_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix45188z19900_anx100z7),
	.combout(),
	.cout(u_flow_aix45188z19900_anx100z4));
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52925.lut_mask = 16'h004D;
defparam u_flow_aix45188z19900_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N26
cycloneii_lcell_comb u_flow_aix45188z19900_aix100z52923(
// Equation(s):
// u_flow_aix45188z19900_anx100z1 = u_flow_ap22_12_ & !u_flow_aix45188z19900_anx100z4 & u_flow_ap21_12_ # !u_flow_ap22_12_ & (u_flow_ap21_12_ # !u_flow_aix45188z19900_anx100z4)

	.dataa(u_flow_ap22_12_),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_12_),
	.cin(u_flow_aix45188z19900_anx100z4),
	.combout(u_flow_aix45188z19900_anx100z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix45188z19900_aix100z52923.lut_mask = 16'h5F05;
defparam u_flow_aix45188z19900_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y20_N1
cycloneii_lcell_ff u_flow_areg_p31_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_10__afeeder_combout),
	.sdata(u_flow_ap22_10_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_10_));

// atom is at LCCOMB_X58_Y21_N2
cycloneii_lcell_comb u_flow_ap31_9__afeeder(
// Equation(s):
// u_flow_ap31_9__afeeder_combout = u_flow_ap21_9_

	.dataa(u_flow_ap21_9_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_9__afeeder.lut_mask = 16'hAAAA;
defparam u_flow_ap31_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N21
cycloneii_lcell_ff u_flow_areg_p22_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_9_));

// atom is at LCFF_X58_Y21_N3
cycloneii_lcell_ff u_flow_areg_p31_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_9__afeeder_combout),
	.sdata(u_flow_ap22_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_9_));

// atom is at LCCOMB_X57_Y19_N0
cycloneii_lcell_comb u_flow_ap31_8__afeeder(
// Equation(s):
// u_flow_ap31_8__afeeder_combout = u_flow_ap21_8_

	.dataa(u_flow_ap21_8_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_8__afeeder.lut_mask = 16'hAAAA;
defparam u_flow_ap31_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N19
cycloneii_lcell_ff u_flow_areg_p22_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_8_));

// atom is at LCFF_X57_Y19_N1
cycloneii_lcell_ff u_flow_areg_p31_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_8__afeeder_combout),
	.sdata(u_flow_ap22_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_8_));

// atom is at LCCOMB_X55_Y22_N14
cycloneii_lcell_comb ix20836z52972(
// Equation(s):
// f_i1_6_ = nx57127z2 & u_memory_ap_o_image1_0__6_ # !nx57127z2 & (f_i1_next_6_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_0__6_),
	.datad(f_i1_next_6_),
	.cin(gnd),
	.combout(f_i1_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52972.lut_mask = 16'hF3C0;
defparam ix20836z52972.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y22_N14
cycloneii_lcell_comb ix20836z52973(
// Equation(s):
// f_i1_5_ = nx57127z2 & u_memory_ap_o_image1_0__5_ # !nx57127z2 & (f_i1_next_5_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_0__5_),
	.datad(f_i1_next_5_),
	.cin(gnd),
	.combout(f_i1_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52973.lut_mask = 16'hF5A0;
defparam ix20836z52973.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y22_N8
cycloneii_lcell_comb ix20836z52974(
// Equation(s):
// f_i1_4_ = nx57127z2 & u_memory_ap_o_image1_0__4_ # !nx57127z2 & (f_i1_next_4_)

	.dataa(nx57127z2),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_0__4_),
	.datad(f_i1_next_4_),
	.cin(gnd),
	.combout(f_i1_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52974.lut_mask = 16'hF5A0;
defparam ix20836z52974.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N14
cycloneii_lcell_comb ix20836z52983(
// Equation(s):
// f_i2_3_ = nx57127z2 & u_memory_ap_o_image1_2__3_ # !nx57127z2 & (f_i2_next_3_)

	.dataa(vcc),
	.datab(u_memory_ap_o_image1_2__3_),
	.datac(nx57127z2),
	.datad(f_i2_next_3_),
	.cin(gnd),
	.combout(f_i2_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52983.lut_mask = 16'hCFC0;
defparam ix20836z52983.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N16
cycloneii_lcell_comb ix20836z52976(
// Equation(s):
// f_i1_2_ = nx57127z2 & (u_memory_ap_o_image1_0__2_) # !nx57127z2 & f_i1_next_2_

	.dataa(nx57127z2),
	.datab(f_i1_next_2_),
	.datac(u_memory_ap_o_image1_0__2_),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i1_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52976.lut_mask = 16'hE4E4;
defparam ix20836z52976.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N28
cycloneii_lcell_comb ix20836z52985(
// Equation(s):
// f_i2_1_ = nx57127z2 & u_memory_ap_o_image1_2__1_ # !nx57127z2 & (f_i2_next_1_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_2__1_),
	.datad(f_i2_next_1_),
	.cin(gnd),
	.combout(f_i2_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52985.lut_mask = 16'hF3C0;
defparam ix20836z52985.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N30
cycloneii_lcell_comb ix20836z52978(
// Equation(s):
// f_i1_0_ = nx57127z2 & u_memory_ap_o_image1_0__0_ # !nx57127z2 & (f_i1_next_0_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(u_memory_ap_o_image1_0__0_),
	.datad(f_i1_next_0_),
	.cin(gnd),
	.combout(f_i1_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52978.lut_mask = 16'hF3C0;
defparam ix20836z52978.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N0
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52931(
// Equation(s):
// u_flow_ap13_add8_0i3_anx37973z1 = f_i2_0_ & (f_i1_0_ $ VCC) # !f_i2_0_ & f_i1_0_ & VCC
// u_flow_ap13_add8_0i3_anx44952z22 = CARRY(f_i2_0_ & f_i1_0_)

	.dataa(f_i2_0_),
	.datab(f_i1_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap13_add8_0i3_anx37973z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z22));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52931.lut_mask = 16'h6688;
defparam u_flow_ap13_add8_0i3_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N4
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52929(
// Equation(s):
// u_flow_ap13_add8_0i3_anx39967z1 = (f_i2_2_ $ f_i1_2_ $ !u_flow_ap13_add8_0i3_anx44952z19) # GND
// u_flow_ap13_add8_0i3_anx44952z16 = CARRY(f_i2_2_ & (f_i1_2_ # !u_flow_ap13_add8_0i3_anx44952z19) # !f_i2_2_ & f_i1_2_ & !u_flow_ap13_add8_0i3_anx44952z19)

	.dataa(f_i2_2_),
	.datab(f_i1_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z19),
	.combout(u_flow_ap13_add8_0i3_anx39967z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z16));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52929.lut_mask = 16'h698E;
defparam u_flow_ap13_add8_0i3_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N6
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52928(
// Equation(s):
// u_flow_ap13_add8_0i3_anx40964z1 = f_i1_3_ & (f_i2_3_ & u_flow_ap13_add8_0i3_anx44952z16 & VCC # !f_i2_3_ & !u_flow_ap13_add8_0i3_anx44952z16) # !f_i1_3_ & (f_i2_3_ & !u_flow_ap13_add8_0i3_anx44952z16 # !f_i2_3_ & (u_flow_ap13_add8_0i3_anx44952z16 # GND))
// u_flow_ap13_add8_0i3_anx44952z13 = CARRY(f_i1_3_ & !f_i2_3_ & !u_flow_ap13_add8_0i3_anx44952z16 # !f_i1_3_ & (!u_flow_ap13_add8_0i3_anx44952z16 # !f_i2_3_))

	.dataa(f_i1_3_),
	.datab(f_i2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z16),
	.combout(u_flow_ap13_add8_0i3_anx40964z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z13));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52928.lut_mask = 16'h9617;
defparam u_flow_ap13_add8_0i3_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y19_N8
cycloneii_lcell_comb u_flow_ap13_add8_0i3_aix44952z52927(
// Equation(s):
// u_flow_ap13_add8_0i3_anx41961z1 = (f_i2_4_ $ f_i1_4_ $ !u_flow_ap13_add8_0i3_anx44952z13) # GND
// u_flow_ap13_add8_0i3_anx44952z10 = CARRY(f_i2_4_ & (f_i1_4_ # !u_flow_ap13_add8_0i3_anx44952z13) # !f_i2_4_ & f_i1_4_ & !u_flow_ap13_add8_0i3_anx44952z13)

	.dataa(f_i2_4_),
	.datab(f_i1_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add8_0i3_anx44952z13),
	.combout(u_flow_ap13_add8_0i3_anx41961z1),
	.cout(u_flow_ap13_add8_0i3_anx44952z10));
// synopsys translate_off
defparam u_flow_ap13_add8_0i3_aix44952z52927.lut_mask = 16'h698E;
defparam u_flow_ap13_add8_0i3_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N10
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52932(
// Equation(s):
// u_flow_ap13_add9_3_anx37973z1 = u_flow_ap13_add8_0i3_anx38970z1 & (u_flow_ap13_add8_0i3_anx37973z1 $ VCC) # !u_flow_ap13_add8_0i3_anx38970z1 & u_flow_ap13_add8_0i3_anx37973z1 & VCC
// u_flow_ap13_add9_3_anx45949z17 = CARRY(u_flow_ap13_add8_0i3_anx38970z1 & u_flow_ap13_add8_0i3_anx37973z1)

	.dataa(u_flow_ap13_add8_0i3_anx38970z1),
	.datab(u_flow_ap13_add8_0i3_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap13_add9_3_anx37973z1),
	.cout(u_flow_ap13_add9_3_anx45949z17));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52932.lut_mask = 16'h6688;
defparam u_flow_ap13_add9_3_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N12
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52931(
// Equation(s):
// u_flow_ap13_add9_3_anx38970z1 = u_flow_ap13_add8_0i3_anx38970z1 & (u_flow_ap13_add8_0i3_anx39967z1 & u_flow_ap13_add9_3_anx45949z17 & VCC # !u_flow_ap13_add8_0i3_anx39967z1 & !u_flow_ap13_add9_3_anx45949z17) # !u_flow_ap13_add8_0i3_anx38970z1 & 
// (u_flow_ap13_add8_0i3_anx39967z1 & !u_flow_ap13_add9_3_anx45949z17 # !u_flow_ap13_add8_0i3_anx39967z1 & (u_flow_ap13_add9_3_anx45949z17 # GND))
// u_flow_ap13_add9_3_anx45949z15 = CARRY(u_flow_ap13_add8_0i3_anx38970z1 & !u_flow_ap13_add8_0i3_anx39967z1 & !u_flow_ap13_add9_3_anx45949z17 # !u_flow_ap13_add8_0i3_anx38970z1 & (!u_flow_ap13_add9_3_anx45949z17 # !u_flow_ap13_add8_0i3_anx39967z1))

	.dataa(u_flow_ap13_add8_0i3_anx38970z1),
	.datab(u_flow_ap13_add8_0i3_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z17),
	.combout(u_flow_ap13_add9_3_anx38970z1),
	.cout(u_flow_ap13_add9_3_anx45949z15));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52931.lut_mask = 16'h9617;
defparam u_flow_ap13_add9_3_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N16
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52929(
// Equation(s):
// u_flow_ap13_add9_3_anx40964z1 = u_flow_ap13_add8_0i3_anx41961z1 & (u_flow_ap13_add8_0i3_anx40964z1 & u_flow_ap13_add9_3_anx45949z13 & VCC # !u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z13) # !u_flow_ap13_add8_0i3_anx41961z1 & 
// (u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z13 # !u_flow_ap13_add8_0i3_anx40964z1 & (u_flow_ap13_add9_3_anx45949z13 # GND))
// u_flow_ap13_add9_3_anx45949z11 = CARRY(u_flow_ap13_add8_0i3_anx41961z1 & !u_flow_ap13_add8_0i3_anx40964z1 & !u_flow_ap13_add9_3_anx45949z13 # !u_flow_ap13_add8_0i3_anx41961z1 & (!u_flow_ap13_add9_3_anx45949z13 # !u_flow_ap13_add8_0i3_anx40964z1))

	.dataa(u_flow_ap13_add8_0i3_anx41961z1),
	.datab(u_flow_ap13_add8_0i3_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z13),
	.combout(u_flow_ap13_add9_3_anx40964z1),
	.cout(u_flow_ap13_add9_3_anx45949z11));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52929.lut_mask = 16'h9617;
defparam u_flow_ap13_add9_3_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X47_Y19_N20
cycloneii_lcell_comb u_flow_ap13_add9_3_aix45949z52927(
// Equation(s):
// u_flow_ap13_add9_3_anx42958z1 = u_flow_ap13_add8_0i3_anx42958z1 & (u_flow_ap13_add8_0i3_anx43955z1 & u_flow_ap13_add9_3_anx45949z9 & VCC # !u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z9) # !u_flow_ap13_add8_0i3_anx42958z1 & 
// (u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z9 # !u_flow_ap13_add8_0i3_anx43955z1 & (u_flow_ap13_add9_3_anx45949z9 # GND))
// u_flow_ap13_add9_3_anx45949z7 = CARRY(u_flow_ap13_add8_0i3_anx42958z1 & !u_flow_ap13_add8_0i3_anx43955z1 & !u_flow_ap13_add9_3_anx45949z9 # !u_flow_ap13_add8_0i3_anx42958z1 & (!u_flow_ap13_add9_3_anx45949z9 # !u_flow_ap13_add8_0i3_anx43955z1))

	.dataa(u_flow_ap13_add8_0i3_anx42958z1),
	.datab(u_flow_ap13_add8_0i3_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap13_add9_3_anx45949z9),
	.combout(u_flow_ap13_add9_3_anx42958z1),
	.cout(u_flow_ap13_add9_3_anx45949z7));
// synopsys translate_off
defparam u_flow_ap13_add9_3_aix45949z52927.lut_mask = 16'h9617;
defparam u_flow_ap13_add9_3_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X47_Y19_N23
cycloneii_lcell_ff u_flow_areg_p23_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_7_));

// atom is at LCFF_X43_Y19_N9
cycloneii_lcell_ff u_flow_areg_p32_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap23_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_7_));

// atom is at LCFF_X47_Y19_N21
cycloneii_lcell_ff u_flow_areg_p23_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_6_));

// atom is at LCFF_X48_Y19_N9
cycloneii_lcell_ff u_flow_areg_p32_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap23_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_6_));

// atom is at LCCOMB_X57_Y19_N28
cycloneii_lcell_comb u_flow_ap31_5__afeeder(
// Equation(s):
// u_flow_ap31_5__afeeder_combout = u_flow_ap21_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_5_),
	.cin(gnd),
	.combout(u_flow_ap31_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_5__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap31_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N13
cycloneii_lcell_ff u_flow_areg_p22_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_5_));

// atom is at LCFF_X57_Y19_N29
cycloneii_lcell_ff u_flow_areg_p31_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_5__afeeder_combout),
	.sdata(u_flow_ap22_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_5_));

// atom is at LCFF_X47_Y19_N17
cycloneii_lcell_ff u_flow_areg_p23_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_4_));

// atom is at LCCOMB_X42_Y19_N24
cycloneii_lcell_comb u_flow_ap32_4__afeeder(
// Equation(s):
// u_flow_ap32_4__afeeder_combout = u_flow_ap23_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap23_4_),
	.cin(gnd),
	.combout(u_flow_ap32_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap32_4__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap32_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X42_Y19_N25
cycloneii_lcell_ff u_flow_areg_p32_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap32_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_4_));

// atom is at LCCOMB_X59_Y20_N28
cycloneii_lcell_comb u_flow_ap31_3__afeeder(
// Equation(s):
// u_flow_ap31_3__afeeder_combout = u_flow_ap21_3_

	.dataa(vcc),
	.datab(u_flow_ap21_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_3__afeeder.lut_mask = 16'hCCCC;
defparam u_flow_ap31_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N9
cycloneii_lcell_ff u_flow_areg_p22_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_3_));

// atom is at LCFF_X59_Y20_N29
cycloneii_lcell_ff u_flow_areg_p31_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_3__afeeder_combout),
	.sdata(u_flow_ap22_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_3_));

// atom is at LCFF_X47_Y19_N13
cycloneii_lcell_ff u_flow_areg_p23_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_2_));

// atom is at LCCOMB_X47_Y19_N0
cycloneii_lcell_comb u_flow_ap32_2__afeeder(
// Equation(s):
// u_flow_ap32_2__afeeder_combout = u_flow_ap23_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap23_2_),
	.cin(gnd),
	.combout(u_flow_ap32_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap32_2__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap32_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X47_Y19_N1
cycloneii_lcell_ff u_flow_areg_p32_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap32_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_2_));

// atom is at LCFF_X47_Y19_N11
cycloneii_lcell_ff u_flow_areg_p23_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap13_add9_3_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap23_1_));

// atom is at LCCOMB_X47_Y19_N30
cycloneii_lcell_comb u_flow_ap32_1__afeeder(
// Equation(s):
// u_flow_ap32_1__afeeder_combout = u_flow_ap23_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap23_1_),
	.cin(gnd),
	.combout(u_flow_ap32_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap32_1__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap32_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X47_Y19_N31
cycloneii_lcell_ff u_flow_areg_p32_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap32_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap32_1_));

// atom is at LCCOMB_X58_Y21_N28
cycloneii_lcell_comb u_flow_ap31_0__afeeder(
// Equation(s):
// u_flow_ap31_0__afeeder_combout = u_flow_ap21_0_

	.dataa(vcc),
	.datab(u_flow_ap21_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap31_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_0__afeeder.lut_mask = 16'hCCCC;
defparam u_flow_ap31_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y19_N11
cycloneii_lcell_ff u_flow_areg_p22_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_sub10_4i5_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_0_));

// atom is at LCFF_X58_Y21_N29
cycloneii_lcell_ff u_flow_areg_p31_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_0__afeeder_combout),
	.sdata(u_flow_ap22_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_0_));

// atom is at LCCOMB_X46_Y19_N0
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52935(
// Equation(s):
// u_flow_ap4s_sub12_0_anx37973z1 = u_flow_ap32_0_ & (u_flow_ap31_0_ $ VCC) # !u_flow_ap32_0_ & (u_flow_ap31_0_ # GND)
// u_flow_ap4s_sub12_0_anx63795z33 = CARRY(u_flow_ap31_0_ # !u_flow_ap32_0_)

	.dataa(u_flow_ap32_0_),
	.datab(u_flow_ap31_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap4s_sub12_0_anx37973z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z33));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52935.lut_mask = 16'h66DD;
defparam u_flow_ap4s_sub12_0_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N2
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52934(
// Equation(s):
// u_flow_ap4s_sub12_0_anx38970z1 = u_flow_ap31_1_ & (u_flow_ap32_1_ & !u_flow_ap4s_sub12_0_anx63795z33 # !u_flow_ap32_1_ & u_flow_ap4s_sub12_0_anx63795z33 & VCC) # !u_flow_ap31_1_ & (u_flow_ap32_1_ & (u_flow_ap4s_sub12_0_anx63795z33 # GND) # !u_flow_ap32_1_ 
// & !u_flow_ap4s_sub12_0_anx63795z33)
// u_flow_ap4s_sub12_0_anx63795z30 = CARRY(u_flow_ap31_1_ & u_flow_ap32_1_ & !u_flow_ap4s_sub12_0_anx63795z33 # !u_flow_ap31_1_ & (u_flow_ap32_1_ # !u_flow_ap4s_sub12_0_anx63795z33))

	.dataa(u_flow_ap31_1_),
	.datab(u_flow_ap32_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z33),
	.combout(u_flow_ap4s_sub12_0_anx38970z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z30));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52934.lut_mask = 16'h694D;
defparam u_flow_ap4s_sub12_0_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N4
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52933(
// Equation(s):
// u_flow_ap4s_sub12_0_anx39967z1 = (u_flow_ap31_2_ $ u_flow_ap32_2_ $ u_flow_ap4s_sub12_0_anx63795z30) # GND
// u_flow_ap4s_sub12_0_anx63795z27 = CARRY(u_flow_ap31_2_ & (!u_flow_ap4s_sub12_0_anx63795z30 # !u_flow_ap32_2_) # !u_flow_ap31_2_ & !u_flow_ap32_2_ & !u_flow_ap4s_sub12_0_anx63795z30)

	.dataa(u_flow_ap31_2_),
	.datab(u_flow_ap32_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z30),
	.combout(u_flow_ap4s_sub12_0_anx39967z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z27));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52933.lut_mask = 16'h962B;
defparam u_flow_ap4s_sub12_0_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N6
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52932(
// Equation(s):
// u_flow_ap4s_sub12_0_anx40964z1 = u_flow_ap32_3_ & (u_flow_ap31_3_ & !u_flow_ap4s_sub12_0_anx63795z27 # !u_flow_ap31_3_ & (u_flow_ap4s_sub12_0_anx63795z27 # GND)) # !u_flow_ap32_3_ & (u_flow_ap31_3_ & u_flow_ap4s_sub12_0_anx63795z27 & VCC # !u_flow_ap31_3_ 
// & !u_flow_ap4s_sub12_0_anx63795z27)
// u_flow_ap4s_sub12_0_anx63795z24 = CARRY(u_flow_ap32_3_ & (!u_flow_ap4s_sub12_0_anx63795z27 # !u_flow_ap31_3_) # !u_flow_ap32_3_ & !u_flow_ap31_3_ & !u_flow_ap4s_sub12_0_anx63795z27)

	.dataa(u_flow_ap32_3_),
	.datab(u_flow_ap31_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z27),
	.combout(u_flow_ap4s_sub12_0_anx40964z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z24));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52932.lut_mask = 16'h692B;
defparam u_flow_ap4s_sub12_0_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N8
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52931(
// Equation(s):
// u_flow_ap4s_sub12_0_anx41961z1 = (u_flow_ap31_4_ $ u_flow_ap32_4_ $ u_flow_ap4s_sub12_0_anx63795z24) # GND
// u_flow_ap4s_sub12_0_anx63795z21 = CARRY(u_flow_ap31_4_ & (!u_flow_ap4s_sub12_0_anx63795z24 # !u_flow_ap32_4_) # !u_flow_ap31_4_ & !u_flow_ap32_4_ & !u_flow_ap4s_sub12_0_anx63795z24)

	.dataa(u_flow_ap31_4_),
	.datab(u_flow_ap32_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z24),
	.combout(u_flow_ap4s_sub12_0_anx41961z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z21));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52931.lut_mask = 16'h962B;
defparam u_flow_ap4s_sub12_0_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N10
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52930(
// Equation(s):
// u_flow_ap4s_sub12_0_anx42958z1 = u_flow_ap32_5_ & (u_flow_ap31_5_ & !u_flow_ap4s_sub12_0_anx63795z21 # !u_flow_ap31_5_ & (u_flow_ap4s_sub12_0_anx63795z21 # GND)) # !u_flow_ap32_5_ & (u_flow_ap31_5_ & u_flow_ap4s_sub12_0_anx63795z21 & VCC # !u_flow_ap31_5_ 
// & !u_flow_ap4s_sub12_0_anx63795z21)
// u_flow_ap4s_sub12_0_anx63795z18 = CARRY(u_flow_ap32_5_ & (!u_flow_ap4s_sub12_0_anx63795z21 # !u_flow_ap31_5_) # !u_flow_ap32_5_ & !u_flow_ap31_5_ & !u_flow_ap4s_sub12_0_anx63795z21)

	.dataa(u_flow_ap32_5_),
	.datab(u_flow_ap31_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z21),
	.combout(u_flow_ap4s_sub12_0_anx42958z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z18));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52930.lut_mask = 16'h692B;
defparam u_flow_ap4s_sub12_0_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N12
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52929(
// Equation(s):
// u_flow_ap4s_sub12_0_anx43955z1 = (u_flow_ap31_6_ $ u_flow_ap32_6_ $ u_flow_ap4s_sub12_0_anx63795z18) # GND
// u_flow_ap4s_sub12_0_anx63795z15 = CARRY(u_flow_ap31_6_ & (!u_flow_ap4s_sub12_0_anx63795z18 # !u_flow_ap32_6_) # !u_flow_ap31_6_ & !u_flow_ap32_6_ & !u_flow_ap4s_sub12_0_anx63795z18)

	.dataa(u_flow_ap31_6_),
	.datab(u_flow_ap32_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z18),
	.combout(u_flow_ap4s_sub12_0_anx43955z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z15));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52929.lut_mask = 16'h962B;
defparam u_flow_ap4s_sub12_0_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N14
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52928(
// Equation(s):
// u_flow_ap4s_sub12_0_anx44952z1 = u_flow_ap31_7_ & (u_flow_ap32_7_ & !u_flow_ap4s_sub12_0_anx63795z15 # !u_flow_ap32_7_ & u_flow_ap4s_sub12_0_anx63795z15 & VCC) # !u_flow_ap31_7_ & (u_flow_ap32_7_ & (u_flow_ap4s_sub12_0_anx63795z15 # GND) # !u_flow_ap32_7_ 
// & !u_flow_ap4s_sub12_0_anx63795z15)
// u_flow_ap4s_sub12_0_anx63795z12 = CARRY(u_flow_ap31_7_ & u_flow_ap32_7_ & !u_flow_ap4s_sub12_0_anx63795z15 # !u_flow_ap31_7_ & (u_flow_ap32_7_ # !u_flow_ap4s_sub12_0_anx63795z15))

	.dataa(u_flow_ap31_7_),
	.datab(u_flow_ap32_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z15),
	.combout(u_flow_ap4s_sub12_0_anx44952z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z12));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52928.lut_mask = 16'h694D;
defparam u_flow_ap4s_sub12_0_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N16
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52927(
// Equation(s):
// u_flow_ap4s_sub12_0_anx45949z1 = (u_flow_ap32_8_ $ u_flow_ap31_8_ $ u_flow_ap4s_sub12_0_anx63795z12) # GND
// u_flow_ap4s_sub12_0_anx63795z9 = CARRY(u_flow_ap32_8_ & u_flow_ap31_8_ & !u_flow_ap4s_sub12_0_anx63795z12 # !u_flow_ap32_8_ & (u_flow_ap31_8_ # !u_flow_ap4s_sub12_0_anx63795z12))

	.dataa(u_flow_ap32_8_),
	.datab(u_flow_ap31_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z12),
	.combout(u_flow_ap4s_sub12_0_anx45949z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z9));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52927.lut_mask = 16'h964D;
defparam u_flow_ap4s_sub12_0_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N18
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52926(
// Equation(s):
// u_flow_ap4s_sub12_0_anx46946z1 = u_flow_ap32_9_ & (u_flow_ap31_9_ & !u_flow_ap4s_sub12_0_anx63795z9 # !u_flow_ap31_9_ & (u_flow_ap4s_sub12_0_anx63795z9 # GND)) # !u_flow_ap32_9_ & (u_flow_ap31_9_ & u_flow_ap4s_sub12_0_anx63795z9 & VCC # !u_flow_ap31_9_ & 
// !u_flow_ap4s_sub12_0_anx63795z9)
// u_flow_ap4s_sub12_0_anx63795z6 = CARRY(u_flow_ap32_9_ & (!u_flow_ap4s_sub12_0_anx63795z9 # !u_flow_ap31_9_) # !u_flow_ap32_9_ & !u_flow_ap31_9_ & !u_flow_ap4s_sub12_0_anx63795z9)

	.dataa(u_flow_ap32_9_),
	.datab(u_flow_ap31_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z9),
	.combout(u_flow_ap4s_sub12_0_anx46946z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z6));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52926.lut_mask = 16'h692B;
defparam u_flow_ap4s_sub12_0_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N20
cycloneii_lcell_comb u_flow_ap4s_sub12_0_aix63795z52925(
// Equation(s):
// u_flow_ap4s_sub12_0_anx62798z1 = (u_flow_ap32_10_ $ u_flow_ap31_10_ $ u_flow_ap4s_sub12_0_anx63795z6) # GND
// u_flow_ap4s_sub12_0_anx63795z3 = CARRY(u_flow_ap32_10_ & u_flow_ap31_10_ & !u_flow_ap4s_sub12_0_anx63795z6 # !u_flow_ap32_10_ & (u_flow_ap31_10_ # !u_flow_ap4s_sub12_0_anx63795z6))

	.dataa(u_flow_ap32_10_),
	.datab(u_flow_ap31_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap4s_sub12_0_anx63795z6),
	.combout(u_flow_ap4s_sub12_0_anx62798z1),
	.cout(u_flow_ap4s_sub12_0_anx63795z3));
// synopsys translate_off
defparam u_flow_ap4s_sub12_0_aix63795z52925.lut_mask = 16'h964D;
defparam u_flow_ap4s_sub12_0_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X46_Y19_N26
cycloneii_lcell_comb u_flow_aix26026z52925(
// Equation(s):
// u_flow_anx26026z4 = u_flow_ap4s_sub12_0_anx46946z1 # u_flow_ap4s_sub12_0_anx45949z1 & u_flow_ap4s_sub12_0_anx44952z1

	.dataa(u_flow_ap4s_sub12_0_anx45949z1),
	.datab(u_flow_ap4s_sub12_0_anx44952z1),
	.datac(vcc),
	.datad(u_flow_ap4s_sub12_0_anx46946z1),
	.cin(gnd),
	.combout(u_flow_anx26026z4),
	.cout());
// synopsys translate_off
defparam u_flow_aix26026z52925.lut_mask = 16'hFF88;
defparam u_flow_aix26026z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N30
cycloneii_lcell_comb u_flow_ap31_12__afeeder(
// Equation(s):
// u_flow_ap31_12__afeeder_combout = u_flow_ap21_12_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap21_12_),
	.cin(gnd),
	.combout(u_flow_ap31_12__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap31_12__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap31_12__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N22
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix46946z52923(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx46946z1 = u_flow_ap12_add9_2_anx23445z1 & (GND # !u_flow_ap22_sub11_4i6_anx46946z3) # !u_flow_ap12_add9_2_anx23445z1 & (u_flow_ap22_sub11_4i6_anx46946z3 $ GND)
// u_flow_ap22_sub11_4i6_anx23445z2 = CARRY(u_flow_ap12_add9_2_anx23445z1 # !u_flow_ap22_sub11_4i6_anx46946z3)

	.dataa(vcc),
	.datab(u_flow_ap12_add9_2_anx23445z1),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx46946z3),
	.combout(u_flow_ap22_sub11_4i6_anx46946z1),
	.cout(u_flow_ap22_sub11_4i6_anx23445z2));
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix46946z52923.lut_mask = 16'h3CCF;
defparam u_flow_ap22_sub11_4i6_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N24
cycloneii_lcell_comb u_flow_ap22_sub11_4i6_aix23445z52923(
// Equation(s):
// u_flow_ap22_sub11_4i6_anx23445z1 = u_flow_ap22_sub11_4i6_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_ap22_sub11_4i6_anx23445z2),
	.combout(u_flow_ap22_sub11_4i6_anx23445z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap22_sub11_4i6_aix23445z52923.lut_mask = 16'hF0F0;
defparam u_flow_ap22_sub11_4i6_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N26
cycloneii_lcell_comb u_flow_ap22_add12_4i2_aix63795z52923(
// Equation(s):
// u_flow_ap22_add12_4i2_anx63795z1 = u_flow_ap22_sub10_4i5_anx23445z1 $ u_flow_ap22_add12_4i2_anx63795z4 $ u_flow_ap22_sub11_4i6_anx23445z1

	.dataa(vcc),
	.datab(u_flow_ap22_sub10_4i5_anx23445z1),
	.datac(vcc),
	.datad(u_flow_ap22_sub11_4i6_anx23445z1),
	.cin(u_flow_ap22_add12_4i2_anx63795z4),
	.combout(u_flow_ap22_add12_4i2_anx63795z1),
	.cout());
// synopsys translate_off
defparam u_flow_ap22_add12_4i2_aix63795z52923.lut_mask = 16'hC33C;
defparam u_flow_ap22_add12_4i2_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N27
cycloneii_lcell_ff u_flow_areg_p22_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap22_add12_4i2_anx63795z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap22_12_));

// atom is at LCFF_X57_Y19_N31
cycloneii_lcell_ff u_flow_areg_p31_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap31_12__afeeder_combout),
	.sdata(u_flow_ap22_12_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_aix45188z19900_anx100z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap31_12_));

// atom is at LCCOMB_X46_Y20_N2
cycloneii_lcell_comb u_flow_aix26026z52924(
// Equation(s):
// u_flow_anx26026z2 = u_flow_ap4s_sub12_0_anx23445z1 & !u_flow_ap31_12_ & u_flow_ap30

	.dataa(u_flow_ap4s_sub12_0_anx23445z1),
	.datab(u_flow_ap31_12_),
	.datac(u_flow_ap30),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_anx26026z2),
	.cout());
// synopsys translate_off
defparam u_flow_aix26026z52924.lut_mask = 16'h2020;
defparam u_flow_aix26026z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X46_Y20_N16
cycloneii_lcell_comb u_flow_aix26026z52923(
// Equation(s):
// u_flow_anx26026z1 = u_flow_anx26026z2 & (u_flow_ap4s_sub12_0_anx63795z1 # u_flow_ap4s_sub12_0_anx62798z1 # u_flow_anx26026z4)

	.dataa(u_flow_ap4s_sub12_0_anx63795z1),
	.datab(u_flow_ap4s_sub12_0_anx62798z1),
	.datac(u_flow_anx26026z4),
	.datad(u_flow_anx26026z2),
	.cin(gnd),
	.combout(u_flow_anx26026z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix26026z52923.lut_mask = 16'hFE00;
defparam u_flow_aix26026z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N17
cycloneii_lcell_ff u_flow_areg_p41(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx26026z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap41));

// atom is at LCCOMB_X44_Y20_N10
cycloneii_lcell_comb u_flow_aix5049z52923(
// Equation(s):
// u_flow_anx5049z1 = u_flow_astate_3_ # i_reset_acombout # !u_flow_ap40

	.dataa(vcc),
	.datab(u_flow_astate_3_),
	.datac(i_reset_acombout),
	.datad(u_flow_ap40),
	.cin(gnd),
	.combout(u_flow_anx5049z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix5049z52923.lut_mask = 16'hFCFF;
defparam u_flow_aix5049z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y19_N11
cycloneii_lcell_ff u_flow_areg_p43_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_5_));

// atom is at LCFF_X45_Y19_N15
cycloneii_lcell_ff u_flow_areg_prev_max_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_5_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_5_));

// atom is at LCFF_X46_Y19_N9
cycloneii_lcell_ff u_flow_areg_p43_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_4_));

// atom is at LCCOMB_X44_Y19_N26
cycloneii_lcell_comb u_flow_aix47310z52932(
// Equation(s):
// u_flow_anx47310z10 = u_flow_aprev_max_4_ & (u_flow_aprev_max_5_ $ u_flow_ap43_5_ # !u_flow_ap43_4_) # !u_flow_aprev_max_4_ & (u_flow_ap43_4_ # u_flow_aprev_max_5_ $ u_flow_ap43_5_)

	.dataa(u_flow_aprev_max_4_),
	.datab(u_flow_aprev_max_5_),
	.datac(u_flow_ap43_4_),
	.datad(u_flow_ap43_5_),
	.cin(gnd),
	.combout(u_flow_anx47310z10),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52932.lut_mask = 16'h7BDE;
defparam u_flow_aix47310z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y19_N7
cycloneii_lcell_ff u_flow_areg_p43_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_3_));

// atom is at LCFF_X45_Y19_N11
cycloneii_lcell_ff u_flow_areg_prev_max_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_3_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_3_));

// atom is at LCFF_X46_Y19_N5
cycloneii_lcell_ff u_flow_areg_p43_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_2_));

// atom is at LCFF_X45_Y19_N9
cycloneii_lcell_ff u_flow_areg_prev_max_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_2_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_2_));

// atom is at LCCOMB_X44_Y19_N20
cycloneii_lcell_comb u_flow_aix47310z52933(
// Equation(s):
// u_flow_anx47310z11 = u_flow_ap43_2_ & (u_flow_aprev_max_3_ $ u_flow_ap43_3_ # !u_flow_aprev_max_2_) # !u_flow_ap43_2_ & (u_flow_aprev_max_2_ # u_flow_aprev_max_3_ $ u_flow_ap43_3_)

	.dataa(u_flow_ap43_2_),
	.datab(u_flow_aprev_max_3_),
	.datac(u_flow_aprev_max_2_),
	.datad(u_flow_ap43_3_),
	.cin(gnd),
	.combout(u_flow_anx47310z11),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52933.lut_mask = 16'h7BDE;
defparam u_flow_aix47310z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y19_N1
cycloneii_lcell_ff u_flow_areg_p43_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_0_));

// atom is at LCFF_X45_Y19_N5
cycloneii_lcell_ff u_flow_areg_prev_max_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_0_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_0_));

// atom is at LCFF_X46_Y19_N3
cycloneii_lcell_ff u_flow_areg_p43_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_1_));

// atom is at LCCOMB_X44_Y19_N30
cycloneii_lcell_comb u_flow_aix47310z52934(
// Equation(s):
// u_flow_anx47310z12 = u_flow_aprev_max_1_ & (u_flow_ap43_0_ $ u_flow_aprev_max_0_ # !u_flow_ap43_1_) # !u_flow_aprev_max_1_ & (u_flow_ap43_1_ # u_flow_ap43_0_ $ u_flow_aprev_max_0_)

	.dataa(u_flow_aprev_max_1_),
	.datab(u_flow_ap43_0_),
	.datac(u_flow_aprev_max_0_),
	.datad(u_flow_ap43_1_),
	.cin(gnd),
	.combout(u_flow_anx47310z12),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52934.lut_mask = 16'h7DBE;
defparam u_flow_aix47310z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y19_N8
cycloneii_lcell_comb u_flow_aix47310z52926(
// Equation(s):
// u_flow_anx47310z4 = !u_flow_anx47310z5 & !u_flow_anx47310z10 & !u_flow_anx47310z11 & !u_flow_anx47310z12

	.dataa(u_flow_anx47310z5),
	.datab(u_flow_anx47310z10),
	.datac(u_flow_anx47310z11),
	.datad(u_flow_anx47310z12),
	.cin(gnd),
	.combout(u_flow_anx47310z4),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52926.lut_mask = 16'h0001;
defparam u_flow_aix47310z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N30
cycloneii_lcell_comb u_flow_aix45188z19900_anx100z1_a_wirecell(
// Equation(s):
// u_flow_aix45188z19900_anx100z1_a_wirecell_combout = !u_flow_aix45188z19900_anx100z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_aix45188z19900_anx100z1),
	.cin(gnd),
	.combout(u_flow_aix45188z19900_anx100z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam u_flow_aix45188z19900_anx100z1_a_wirecell.lut_mask = 16'h00FF;
defparam u_flow_aix45188z19900_anx100z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y21_N31
cycloneii_lcell_ff u_flow_areg_p35(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_aix45188z19900_anx100z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap35));

// atom is at LCCOMB_X46_Y21_N8
cycloneii_lcell_comb u_flow_ap45_afeeder(
// Equation(s):
// u_flow_ap45_afeeder_combout = u_flow_ap35

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ap35),
	.cin(gnd),
	.combout(u_flow_ap45_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap45_afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap45_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y21_N9
cycloneii_lcell_ff u_flow_areg_p45(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap45_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap45));

// atom is at LCFF_X44_Y19_N3
cycloneii_lcell_ff u_flow_areg_max_fwd(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap45),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_amax_fwd));

// atom is at LCCOMB_X46_Y20_N20
cycloneii_lcell_comb u_flow_aix29125z52923(
// Equation(s):
// u_flow_ap4s_13_ = u_flow_ap31_12_ # !u_flow_ap4s_sub12_0_anx23445z1

	.dataa(u_flow_ap4s_sub12_0_anx23445z1),
	.datab(vcc),
	.datac(u_flow_ap31_12_),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap4s_13_),
	.cout());
// synopsys translate_off
defparam u_flow_aix29125z52923.lut_mask = 16'hF5F5;
defparam u_flow_aix29125z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N21
cycloneii_lcell_ff u_flow_areg_p43_13_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_13_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_13_));

// atom is at LCFF_X45_Y19_N1
cycloneii_lcell_ff u_flow_areg_prev_max_13_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_13_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_13_));

// atom is at LCCOMB_X46_Y20_N6
cycloneii_lcell_comb u_flow_aix28128z52923(
// Equation(s):
// u_flow_ap4s_12_ = u_flow_ap4s_sub12_0_anx23445z1 $ !u_flow_ap31_12_

	.dataa(u_flow_ap4s_sub12_0_anx23445z1),
	.datab(vcc),
	.datac(u_flow_ap31_12_),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap4s_12_),
	.cout());
// synopsys translate_off
defparam u_flow_aix28128z52923.lut_mask = 16'hA5A5;
defparam u_flow_aix28128z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N7
cycloneii_lcell_ff u_flow_areg_p43_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_12_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_12_));

// atom is at LCFF_X45_Y19_N29
cycloneii_lcell_ff u_flow_areg_prev_max_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_12_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_12_));

// atom is at LCFF_X46_Y19_N23
cycloneii_lcell_ff u_flow_areg_p43_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx63795z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_11_));

// atom is at LCFF_X45_Y19_N3
cycloneii_lcell_ff u_flow_areg_prev_max_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_11_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_11_));

// atom is at LCFF_X46_Y19_N21
cycloneii_lcell_ff u_flow_areg_p43_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_10_));

// atom is at LCFF_X45_Y19_N25
cycloneii_lcell_ff u_flow_areg_prev_max_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_10_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_10_));

// atom is at LCFF_X46_Y19_N19
cycloneii_lcell_ff u_flow_areg_p43_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_9_));

// atom is at LCFF_X46_Y19_N17
cycloneii_lcell_ff u_flow_areg_p43_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_8_));

// atom is at LCFF_X45_Y19_N21
cycloneii_lcell_ff u_flow_areg_prev_max_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap43_8_),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_max_8_));

// atom is at LCCOMB_X46_Y19_N28
cycloneii_lcell_comb u_flow_ap43_7__afeeder(
// Equation(s):
// u_flow_ap43_7__afeeder_combout = u_flow_ap4s_sub12_0_anx44952z1

	.dataa(vcc),
	.datab(vcc),
	.datac(u_flow_ap4s_sub12_0_anx44952z1),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_ap43_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap43_7__afeeder.lut_mask = 16'hF0F0;
defparam u_flow_ap43_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y19_N29
cycloneii_lcell_ff u_flow_areg_p43_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap43_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_7_));

// atom is at LCFF_X46_Y19_N13
cycloneii_lcell_ff u_flow_areg_p43_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap4s_sub12_0_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap43_6_));

// atom is at LCCOMB_X45_Y19_N4
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52937(
// Equation(s):
// u_flow_aix47310z8933_anx100z40 = CARRY(!u_flow_aprev_max_0_ & u_flow_ap43_0_)

	.dataa(u_flow_aprev_max_0_),
	.datab(u_flow_ap43_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z40));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52937.lut_mask = 16'h0044;
defparam u_flow_aix47310z8933_aix100z52937.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N6
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52936(
// Equation(s):
// u_flow_aix47310z8933_anx100z37 = CARRY(u_flow_aprev_max_1_ & (!u_flow_aix47310z8933_anx100z40 # !u_flow_ap43_1_) # !u_flow_aprev_max_1_ & !u_flow_ap43_1_ & !u_flow_aix47310z8933_anx100z40)

	.dataa(u_flow_aprev_max_1_),
	.datab(u_flow_ap43_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z40),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z37));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52936.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52936.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N8
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52935(
// Equation(s):
// u_flow_aix47310z8933_anx100z34 = CARRY(u_flow_aprev_max_2_ & u_flow_ap43_2_ & !u_flow_aix47310z8933_anx100z37 # !u_flow_aprev_max_2_ & (u_flow_ap43_2_ # !u_flow_aix47310z8933_anx100z37))

	.dataa(u_flow_aprev_max_2_),
	.datab(u_flow_ap43_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z37),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z34));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52935.lut_mask = 16'h004D;
defparam u_flow_aix47310z8933_aix100z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N10
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52934(
// Equation(s):
// u_flow_aix47310z8933_anx100z31 = CARRY(u_flow_ap43_3_ & u_flow_aprev_max_3_ & !u_flow_aix47310z8933_anx100z34 # !u_flow_ap43_3_ & (u_flow_aprev_max_3_ # !u_flow_aix47310z8933_anx100z34))

	.dataa(u_flow_ap43_3_),
	.datab(u_flow_aprev_max_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z34),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z31));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52934.lut_mask = 16'h004D;
defparam u_flow_aix47310z8933_aix100z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N12
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52933(
// Equation(s):
// u_flow_aix47310z8933_anx100z28 = CARRY(u_flow_aprev_max_4_ & u_flow_ap43_4_ & !u_flow_aix47310z8933_anx100z31 # !u_flow_aprev_max_4_ & (u_flow_ap43_4_ # !u_flow_aix47310z8933_anx100z31))

	.dataa(u_flow_aprev_max_4_),
	.datab(u_flow_ap43_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z31),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z28));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52933.lut_mask = 16'h004D;
defparam u_flow_aix47310z8933_aix100z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N14
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52932(
// Equation(s):
// u_flow_aix47310z8933_anx100z25 = CARRY(u_flow_aprev_max_5_ & (!u_flow_aix47310z8933_anx100z28 # !u_flow_ap43_5_) # !u_flow_aprev_max_5_ & !u_flow_ap43_5_ & !u_flow_aix47310z8933_anx100z28)

	.dataa(u_flow_aprev_max_5_),
	.datab(u_flow_ap43_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z28),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z25));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52932.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N16
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52931(
// Equation(s):
// u_flow_aix47310z8933_anx100z22 = CARRY(u_flow_aprev_max_6_ & u_flow_ap43_6_ & !u_flow_aix47310z8933_anx100z25 # !u_flow_aprev_max_6_ & (u_flow_ap43_6_ # !u_flow_aix47310z8933_anx100z25))

	.dataa(u_flow_aprev_max_6_),
	.datab(u_flow_ap43_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z25),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z22));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52931.lut_mask = 16'h004D;
defparam u_flow_aix47310z8933_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N18
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52930(
// Equation(s):
// u_flow_aix47310z8933_anx100z19 = CARRY(u_flow_aprev_max_7_ & (!u_flow_aix47310z8933_anx100z22 # !u_flow_ap43_7_) # !u_flow_aprev_max_7_ & !u_flow_ap43_7_ & !u_flow_aix47310z8933_anx100z22)

	.dataa(u_flow_aprev_max_7_),
	.datab(u_flow_ap43_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z22),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z19));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52930.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N20
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52929(
// Equation(s):
// u_flow_aix47310z8933_anx100z16 = CARRY(u_flow_ap43_8_ & (!u_flow_aix47310z8933_anx100z19 # !u_flow_aprev_max_8_) # !u_flow_ap43_8_ & !u_flow_aprev_max_8_ & !u_flow_aix47310z8933_anx100z19)

	.dataa(u_flow_ap43_8_),
	.datab(u_flow_aprev_max_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z19),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z16));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52929.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N22
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52928(
// Equation(s):
// u_flow_aix47310z8933_anx100z13 = CARRY(u_flow_aprev_max_9_ & (!u_flow_aix47310z8933_anx100z16 # !u_flow_ap43_9_) # !u_flow_aprev_max_9_ & !u_flow_ap43_9_ & !u_flow_aix47310z8933_anx100z16)

	.dataa(u_flow_aprev_max_9_),
	.datab(u_flow_ap43_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z16),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z13));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52928.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N24
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52927(
// Equation(s):
// u_flow_aix47310z8933_anx100z10 = CARRY(u_flow_ap43_10_ & (!u_flow_aix47310z8933_anx100z13 # !u_flow_aprev_max_10_) # !u_flow_ap43_10_ & !u_flow_aprev_max_10_ & !u_flow_aix47310z8933_anx100z13)

	.dataa(u_flow_ap43_10_),
	.datab(u_flow_aprev_max_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z13),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z10));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52927.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N26
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52926(
// Equation(s):
// u_flow_aix47310z8933_anx100z7 = CARRY(u_flow_ap43_11_ & u_flow_aprev_max_11_ & !u_flow_aix47310z8933_anx100z10 # !u_flow_ap43_11_ & (u_flow_aprev_max_11_ # !u_flow_aix47310z8933_anx100z10))

	.dataa(u_flow_ap43_11_),
	.datab(u_flow_aprev_max_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z10),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z7));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52926.lut_mask = 16'h004D;
defparam u_flow_aix47310z8933_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N28
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52925(
// Equation(s):
// u_flow_aix47310z8933_anx100z4 = CARRY(u_flow_ap43_12_ & (!u_flow_aix47310z8933_anx100z7 # !u_flow_aprev_max_12_) # !u_flow_ap43_12_ & !u_flow_aprev_max_12_ & !u_flow_aix47310z8933_anx100z7)

	.dataa(u_flow_ap43_12_),
	.datab(u_flow_aprev_max_12_),
	.datac(vcc),
	.datad(vcc),
	.cin(u_flow_aix47310z8933_anx100z7),
	.combout(),
	.cout(u_flow_aix47310z8933_anx100z4));
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52925.lut_mask = 16'h002B;
defparam u_flow_aix47310z8933_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y19_N30
cycloneii_lcell_comb u_flow_aix47310z8933_aix100z52923(
// Equation(s):
// u_flow_aix47310z8933_anx100z1 = u_flow_ap43_13_ & u_flow_aix47310z8933_anx100z4 & u_flow_aprev_max_13_ # !u_flow_ap43_13_ & (u_flow_aix47310z8933_anx100z4 # u_flow_aprev_max_13_)

	.dataa(vcc),
	.datab(u_flow_ap43_13_),
	.datac(vcc),
	.datad(u_flow_aprev_max_13_),
	.cin(u_flow_aix47310z8933_anx100z4),
	.combout(u_flow_aix47310z8933_anx100z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z8933_aix100z52923.lut_mask = 16'hF330;
defparam u_flow_aix47310z8933_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X44_Y19_N2
cycloneii_lcell_comb u_flow_aix47310z52924(
// Equation(s):
// u_flow_anx47310z2 = u_flow_aix47310z8933_anx100z1 # u_flow_ap45 & u_flow_anx47310z4 & !u_flow_amax_fwd

	.dataa(u_flow_ap45),
	.datab(u_flow_anx47310z4),
	.datac(u_flow_amax_fwd),
	.datad(u_flow_aix47310z8933_anx100z1),
	.cin(gnd),
	.combout(u_flow_anx47310z2),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52924.lut_mask = 16'hFF08;
defparam u_flow_aix47310z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X46_Y20_N8
cycloneii_lcell_comb u_flow_aix47310z52923(
// Equation(s):
// u_flow_anx47310z1 = u_flow_astate_3_ # i_reset_acombout # u_flow_anx47310z2 # !u_flow_ap40

	.dataa(u_flow_astate_3_),
	.datab(i_reset_acombout),
	.datac(u_flow_ap40),
	.datad(u_flow_anx47310z2),
	.cin(gnd),
	.combout(u_flow_anx47310z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix47310z52923.lut_mask = 16'hFFEF;
defparam u_flow_aix47310z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y19_N15
cycloneii_lcell_ff u_flow_areg_prev_edge(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_ap41),
	.aclr(gnd),
	.sclr(u_flow_anx5049z1),
	.sload(vcc),
	.ena(u_flow_anx47310z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_aprev_edge));

// atom is at LCCOMB_X45_Y20_N24
cycloneii_lcell_comb u_flow_ao_edge_afeeder(
// Equation(s):
// u_flow_ao_edge_afeeder_combout = u_flow_aprev_edge

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_aprev_edge),
	.cin(gnd),
	.combout(u_flow_ao_edge_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ao_edge_afeeder.lut_mask = 16'hFF00;
defparam u_flow_ao_edge_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N14
cycloneii_lcell_comb u_flow_aix30752z52923(
// Equation(s):
// u_flow_anx30752z1 = u_flow_anx47310z2 & u_flow_astate_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_flow_anx47310z2),
	.datad(u_flow_astate_3_),
	.cin(gnd),
	.combout(u_flow_anx30752z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix30752z52923.lut_mask = 16'hF000;
defparam u_flow_aix30752z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X45_Y20_N25
cycloneii_lcell_ff u_flow_areg_tmp_o_edge(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ao_edge_afeeder_combout),
	.sdata(u_flow_ap41),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_flow_anx30752z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ao_edge));

// atom is at LCCOMB_X44_Y19_N0
cycloneii_lcell_comb u_flow_aix27830z52923(
// Equation(s):
// u_flow_anx27830z1 = u_flow_anx28524z1 $ u_flow_ap45

	.dataa(vcc),
	.datab(u_flow_anx28524z1),
	.datac(u_flow_ap45),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_anx27830z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix27830z52923.lut_mask = 16'h3C3C;
defparam u_flow_aix27830z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X44_Y19_N1
cycloneii_lcell_ff u_flow_areg_max_dir_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx27830z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_flow_anx47310z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_amax_dir_0_));

// atom is at LCCOMB_X44_Y20_N2
cycloneii_lcell_comb u_flow_aix63886z52923(
// Equation(s):
// u_flow_ao_dir_0_ = u_flow_amax_dir_0_ & u_flow_ao_edge

	.dataa(vcc),
	.datab(u_flow_amax_dir_0_),
	.datac(vcc),
	.datad(u_flow_ao_edge),
	.cin(gnd),
	.combout(u_flow_ao_dir_0_),
	.cout());
// synopsys translate_off
defparam u_flow_aix63886z52923.lut_mask = 16'hCC00;
defparam u_flow_aix63886z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N18
cycloneii_lcell_comb u_flow_aix26833z52925(
// Equation(s):
// u_flow_anx26833z3 = !u_flow_astate_1_ & u_flow_anx28524z1

	.dataa(vcc),
	.datab(u_flow_astate_1_),
	.datac(u_flow_anx28524z1),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_anx26833z3),
	.cout());
// synopsys translate_off
defparam u_flow_aix26833z52925.lut_mask = 16'h3030;
defparam u_flow_aix26833z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N12
cycloneii_lcell_comb u_flow_aix26833z52923(
// Equation(s):
// u_flow_anx26833z1 = u_flow_anx47310z2 & u_flow_anx26833z3 & (u_flow_anx26833z2 # u_flow_amax_dir_1_) # !u_flow_anx47310z2 & (u_flow_amax_dir_1_)

	.dataa(u_flow_anx26833z2),
	.datab(u_flow_anx47310z2),
	.datac(u_flow_amax_dir_1_),
	.datad(u_flow_anx26833z3),
	.cin(gnd),
	.combout(u_flow_anx26833z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix26833z52923.lut_mask = 16'hF830;
defparam u_flow_aix26833z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X44_Y20_N13
cycloneii_lcell_ff u_flow_areg_max_dir_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx26833z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_amax_dir_1_));

// atom is at LCCOMB_X44_Y20_N22
cycloneii_lcell_comb u_flow_aix62889z52923(
// Equation(s):
// u_flow_ao_dir_1_ = u_flow_amax_dir_1_ & u_flow_ao_edge

	.dataa(u_flow_amax_dir_1_),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_ao_edge),
	.cin(gnd),
	.combout(u_flow_ao_dir_1_),
	.cout());
// synopsys translate_off
defparam u_flow_aix62889z52923.lut_mask = 16'hAA00;
defparam u_flow_aix62889z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N30
cycloneii_lcell_comb u_flow_aix25836z52925(
// Equation(s):
// u_flow_anx25836z3 = u_flow_anx47310z2 & u_flow_anx28524z1 & (u_flow_astate_1_) # !u_flow_anx47310z2 & (u_flow_amax_dir_2_)

	.dataa(u_flow_anx28524z1),
	.datab(u_flow_amax_dir_2_),
	.datac(u_flow_anx47310z2),
	.datad(u_flow_astate_1_),
	.cin(gnd),
	.combout(u_flow_anx25836z3),
	.cout());
// synopsys translate_off
defparam u_flow_aix25836z52925.lut_mask = 16'hAC0C;
defparam u_flow_aix25836z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N20
cycloneii_lcell_comb u_flow_aix25836z52924(
// Equation(s):
// u_flow_anx25836z2 = u_flow_amax_dir_2_ # u_flow_anx47310z2 & u_flow_astate_3_

	.dataa(vcc),
	.datab(u_flow_amax_dir_2_),
	.datac(u_flow_anx47310z2),
	.datad(u_flow_astate_3_),
	.cin(gnd),
	.combout(u_flow_anx25836z2),
	.cout());
// synopsys translate_off
defparam u_flow_aix25836z52924.lut_mask = 16'hFCCC;
defparam u_flow_aix25836z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y20_N8
cycloneii_lcell_comb u_flow_aix25836z52923(
// Equation(s):
// u_flow_anx25836z1 = u_flow_anx25836z3 # !u_flow_astate_2_ & u_flow_anx25836z2 & u_flow_anx28524z1

	.dataa(u_flow_astate_2_),
	.datab(u_flow_anx25836z3),
	.datac(u_flow_anx25836z2),
	.datad(u_flow_anx28524z1),
	.cin(gnd),
	.combout(u_flow_anx25836z1),
	.cout());
// synopsys translate_off
defparam u_flow_aix25836z52923.lut_mask = 16'hDCCC;
defparam u_flow_aix25836z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X44_Y20_N9
cycloneii_lcell_ff u_flow_areg_max_dir_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx25836z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_amax_dir_2_));

// atom is at LCCOMB_X44_Y20_N26
cycloneii_lcell_comb u_flow_aix61892z52923(
// Equation(s):
// u_flow_ao_dir_2_ = u_flow_amax_dir_2_ & u_flow_ao_edge

	.dataa(vcc),
	.datab(vcc),
	.datac(u_flow_amax_dir_2_),
	.datad(u_flow_ao_edge),
	.cin(gnd),
	.combout(u_flow_ao_dir_2_),
	.cout());
// synopsys translate_off
defparam u_flow_aix61892z52923.lut_mask = 16'hF000;
defparam u_flow_aix61892z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X49_Y20_N2
cycloneii_lcell_comb u_memory_aix33254z52923(
// Equation(s):
// u_memory_anx33254z1 = i_valid_acombout # u_memory_abusySignal

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(u_memory_abusySignal),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_anx33254z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix33254z52923.lut_mask = 16'hFCFC;
defparam u_memory_aix33254z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X49_Y20_N3
cycloneii_lcell_ff u_memory_areg_busySignal(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_anx33254z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx8852z2),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_abusySignal));

// atom is at LCCOMB_X49_Y20_N24
cycloneii_lcell_comb u_memory_abusySignalDelayed_afeeder(
// Equation(s):
// u_memory_abusySignalDelayed_afeeder_combout = u_memory_abusySignal

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_abusySignal),
	.cin(gnd),
	.combout(u_memory_abusySignalDelayed_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_abusySignalDelayed_afeeder.lut_mask = 16'hFF00;
defparam u_memory_abusySignalDelayed_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X49_Y20_N25
cycloneii_lcell_ff u_memory_areg_busySignalDelayed(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_abusySignalDelayed_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_abusySignalDelayed));

// atom is at LCCOMB_X50_Y20_N24
cycloneii_lcell_comb u_memory_aix64269z52923(
// Equation(s):
// u_memory_ap_o_mode_0_ = u_memory_abusySignal # i_valid_acombout # i_reset_acombout # u_memory_abusySignalDelayed

	.dataa(u_memory_abusySignal),
	.datab(i_valid_acombout),
	.datac(i_reset_acombout),
	.datad(u_memory_abusySignalDelayed),
	.cin(gnd),
	.combout(u_memory_ap_o_mode_0_),
	.cout());
// synopsys translate_off
defparam u_memory_aix64269z52923.lut_mask = 16'hFFFE;
defparam u_memory_aix64269z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N10
cycloneii_lcell_comb i_reset_int_a_wirecell(
// Equation(s):
// i_reset_int_a_wirecell_combout = !i_reset_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(vcc),
	.cin(gnd),
	.combout(i_reset_int_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam i_reset_int_a_wirecell.lut_mask = 16'h0F0F;
defparam i_reset_int_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N22
cycloneii_lcell_comb ix35105z52923(
// Equation(s):
// nx35105z1 = nx57127z2 & !i_reset_acombout & u_memory_ap_o_valid

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(i_reset_acombout),
	.datad(u_memory_ap_o_valid),
	.cin(gnd),
	.combout(nx35105z1),
	.cout());
// synopsys translate_off
defparam ix35105z52923.lut_mask = 16'h0C00;
defparam ix35105z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y20_N11
cycloneii_lcell_ff reg_f_i_mode_next_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_reset_int_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_mode_next_1_));

// atom is at LCCOMB_X46_Y20_N22
cycloneii_lcell_comb ix20836z52988(
// Equation(s):
// f_i_mode_1_ = nx57127z2 & !i_reset_acombout # !nx57127z2 & (f_i_mode_next_1_)

	.dataa(vcc),
	.datab(nx57127z2),
	.datac(i_reset_acombout),
	.datad(f_i_mode_next_1_),
	.cin(gnd),
	.combout(f_i_mode_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52988.lut_mask = 16'h3F0C;
defparam ix20836z52988.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N23
cycloneii_lcell_ff u_flow_aix259_reg_p2m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_mode_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx41013z1));

// atom is at LCCOMB_X46_Y20_N14
cycloneii_lcell_comb u_flow_anx46148z1_afeeder(
// Equation(s):
// u_flow_anx46148z1_afeeder_combout = u_flow_anx41013z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx41013z1),
	.cin(gnd),
	.combout(u_flow_anx46148z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx46148z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx46148z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N15
cycloneii_lcell_ff u_flow_aix259_reg_p3m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx46148z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx46148z1));

// atom is at LCFF_X46_Y20_N25
cycloneii_lcell_ff u_flow_aix259_reg_p4m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_anx46148z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx14253z1));

// atom is at LCFF_X46_Y20_N11
cycloneii_lcell_ff u_flow_aix259_reg_p5m_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_anx14253z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap5m_1_));

// atom is at LCCOMB_X46_Y20_N30
cycloneii_lcell_comb ix20836z52989(
// Equation(s):
// f_i_mode_0_ = nx57127z2 & (u_memory_ap_o_mode_0_) # !nx57127z2 & f_i_mode_next_0_

	.dataa(f_i_mode_next_0_),
	.datab(vcc),
	.datac(nx57127z2),
	.datad(u_memory_ap_o_mode_0_),
	.cin(gnd),
	.combout(f_i_mode_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52989.lut_mask = 16'hFA0A;
defparam ix20836z52989.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N31
cycloneii_lcell_ff u_flow_aix259_reg_p2m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_mode_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx42010z1));

// atom is at LCCOMB_X46_Y20_N26
cycloneii_lcell_comb u_flow_anx47145z1_afeeder(
// Equation(s):
// u_flow_anx47145z1_afeeder_combout = u_flow_anx42010z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx42010z1),
	.cin(gnd),
	.combout(u_flow_anx47145z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx47145z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx47145z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N27
cycloneii_lcell_ff u_flow_aix259_reg_p3m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx47145z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx47145z1));

// atom is at LCCOMB_X46_Y20_N12
cycloneii_lcell_comb u_flow_anx13256z1_afeeder(
// Equation(s):
// u_flow_anx13256z1_afeeder_combout = u_flow_anx47145z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx47145z1),
	.cin(gnd),
	.combout(u_flow_anx13256z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx13256z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx13256z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N13
cycloneii_lcell_ff u_flow_aix259_reg_p4m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx13256z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx13256z1));

// atom is at LCCOMB_X46_Y20_N28
cycloneii_lcell_comb u_flow_ap5m_0__afeeder(
// Equation(s):
// u_flow_ap5m_0__afeeder_combout = u_flow_anx13256z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx13256z1),
	.cin(gnd),
	.combout(u_flow_ap5m_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_ap5m_0__afeeder.lut_mask = 16'hFF00;
defparam u_flow_ap5m_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N29
cycloneii_lcell_ff u_flow_aix259_reg_p5m_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_ap5m_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_ap5m_0_));

// atom is at LCCOMB_X46_Y20_N10
cycloneii_lcell_comb ix47893z52923(
// Equation(s):
// o_mode_dup0_0_ = i_reset_acombout # u_memory_ap_o_mode_0_ # u_flow_ap5m_1_ & u_flow_ap5m_0_

	.dataa(i_reset_acombout),
	.datab(u_memory_ap_o_mode_0_),
	.datac(u_flow_ap5m_1_),
	.datad(u_flow_ap5m_0_),
	.cin(gnd),
	.combout(o_mode_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix47893z52923.lut_mask = 16'hFEEE;
defparam ix47893z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X49_Y21_N24
cycloneii_lcell_comb u_memory_ap_o_row_0__afeeder(
// Equation(s):
// u_memory_ap_o_row_0__afeeder_combout = u_memory_amodgen_counter_row_anx58250z15

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_row_anx58250z15),
	.cin(gnd),
	.combout(u_memory_ap_o_row_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_row_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X49_Y21_N25
cycloneii_lcell_ff u_memory_areg_o_row_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_0_));

// atom is at LCCOMB_X46_Y20_N0
cycloneii_lcell_comb f_i_row_next_0__afeeder(
// Equation(s):
// f_i_row_next_0__afeeder_combout = u_memory_ap_o_row_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_row_0_),
	.cin(gnd),
	.combout(f_i_row_next_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i_row_next_0__afeeder.lut_mask = 16'hFF00;
defparam f_i_row_next_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N1
cycloneii_lcell_ff reg_f_i_row_next_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_next_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_0_));

// atom is at LCCOMB_X46_Y20_N18
cycloneii_lcell_comb ix20836z52997(
// Equation(s):
// f_i_row_0_ = nx57127z2 & u_memory_ap_o_row_0_ # !nx57127z2 & (f_i_row_next_0_)

	.dataa(u_memory_ap_o_row_0_),
	.datab(vcc),
	.datac(nx57127z2),
	.datad(f_i_row_next_0_),
	.cin(gnd),
	.combout(f_i_row_0_),
	.cout());
// synopsys translate_off
defparam ix20836z52997.lut_mask = 16'hAFA0;
defparam ix20836z52997.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y20_N19
cycloneii_lcell_ff u_flow_aix258_reg_p2r_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx22790z1));

// atom is at LCCOMB_X47_Y17_N2
cycloneii_lcell_comb u_flow_anx27925z1_afeeder(
// Equation(s):
// u_flow_anx27925z1_afeeder_combout = u_flow_anx22790z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx22790z1),
	.cin(gnd),
	.combout(u_flow_anx27925z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx27925z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx27925z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X47_Y17_N3
cycloneii_lcell_ff u_flow_aix258_reg_p3r_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx27925z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx27925z1));

// atom is at LCCOMB_X47_Y17_N24
cycloneii_lcell_comb u_flow_anx41852z1_afeeder(
// Equation(s):
// u_flow_anx41852z1_afeeder_combout = u_flow_anx27925z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx27925z1),
	.cin(gnd),
	.combout(u_flow_anx41852z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx41852z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx41852z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X47_Y17_N25
cycloneii_lcell_ff u_flow_aix258_reg_p4r_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx41852z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx41852z1));

// atom is at LCCOMB_X46_Y17_N0
cycloneii_lcell_comb nx16335z1_afeeder(
// Equation(s):
// nx16335z1_afeeder_combout = u_flow_anx41852z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx41852z1),
	.cin(gnd),
	.combout(nx16335z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx16335z1_afeeder.lut_mask = 16'hFF00;
defparam nx16335z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X46_Y17_N1
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

// atom is at LCCOMB_X51_Y21_N18
cycloneii_lcell_comb u_memory_ap_o_row_1__afeeder(
// Equation(s):
// u_memory_ap_o_row_1__afeeder_combout = u_memory_amodgen_counter_row_anx58250z13

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_row_anx58250z13),
	.cin(gnd),
	.combout(u_memory_ap_o_row_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_1__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_row_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N19
cycloneii_lcell_ff u_memory_areg_o_row_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_1_));

// atom is at LCCOMB_X54_Y21_N22
cycloneii_lcell_comb ix20836z52996(
// Equation(s):
// f_i_row_1_ = nx57127z2 & (u_memory_ap_o_row_1_) # !nx57127z2 & f_i_row_next_1_

	.dataa(f_i_row_next_1_),
	.datab(u_memory_ap_o_row_1_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_i_row_1_),
	.cout());
// synopsys translate_off
defparam ix20836z52996.lut_mask = 16'hCCAA;
defparam ix20836z52996.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N23
cycloneii_lcell_ff u_flow_aix258_reg_p2r_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx21793z1));

// atom is at LCCOMB_X54_Y21_N4
cycloneii_lcell_comb u_flow_anx26928z1_afeeder(
// Equation(s):
// u_flow_anx26928z1_afeeder_combout = u_flow_anx21793z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx21793z1),
	.cin(gnd),
	.combout(u_flow_anx26928z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx26928z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx26928z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N5
cycloneii_lcell_ff u_flow_aix258_reg_p3r_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx26928z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx26928z1));

// atom is at LCCOMB_X54_Y21_N18
cycloneii_lcell_comb u_flow_anx34065z1_afeeder(
// Equation(s):
// u_flow_anx34065z1_afeeder_combout = u_flow_anx26928z1

	.dataa(vcc),
	.datab(vcc),
	.datac(u_flow_anx26928z1),
	.datad(vcc),
	.cin(gnd),
	.combout(u_flow_anx34065z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx34065z1_afeeder.lut_mask = 16'hF0F0;
defparam u_flow_anx34065z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N19
cycloneii_lcell_ff u_flow_aix258_reg_p4r_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx34065z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx34065z1));

// atom is at LCCOMB_X54_Y21_N16
cycloneii_lcell_comb nx17332z1_afeeder(
// Equation(s):
// nx17332z1_afeeder_combout = u_flow_anx34065z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx34065z1),
	.cin(gnd),
	.combout(nx17332z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx17332z1_afeeder.lut_mask = 16'hFF00;
defparam nx17332z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N17
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

// atom is at LCCOMB_X51_Y21_N4
cycloneii_lcell_comb u_memory_ap_o_row_2__afeeder(
// Equation(s):
// u_memory_ap_o_row_2__afeeder_combout = u_memory_amodgen_counter_row_anx58250z11

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_row_anx58250z11),
	.cin(gnd),
	.combout(u_memory_ap_o_row_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_2__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_row_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N5
cycloneii_lcell_ff u_memory_areg_o_row_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_2_));

// atom is at LCCOMB_X50_Y21_N22
cycloneii_lcell_comb f_i_row_next_2__afeeder(
// Equation(s):
// f_i_row_next_2__afeeder_combout = u_memory_ap_o_row_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_row_2_),
	.cin(gnd),
	.combout(f_i_row_next_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam f_i_row_next_2__afeeder.lut_mask = 16'hFF00;
defparam f_i_row_next_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N23
cycloneii_lcell_ff reg_f_i_row_next_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_next_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_2_));

// atom is at LCCOMB_X50_Y21_N12
cycloneii_lcell_comb ix20836z52995(
// Equation(s):
// f_i_row_2_ = nx57127z2 & (u_memory_ap_o_row_2_) # !nx57127z2 & f_i_row_next_2_

	.dataa(vcc),
	.datab(f_i_row_next_2_),
	.datac(nx57127z2),
	.datad(u_memory_ap_o_row_2_),
	.cin(gnd),
	.combout(f_i_row_2_),
	.cout());
// synopsys translate_off
defparam ix20836z52995.lut_mask = 16'hFC0C;
defparam ix20836z52995.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N13
cycloneii_lcell_ff u_flow_aix258_reg_p2r_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx20796z1));

// atom is at LCCOMB_X50_Y21_N0
cycloneii_lcell_comb u_flow_anx25931z1_afeeder(
// Equation(s):
// u_flow_anx25931z1_afeeder_combout = u_flow_anx20796z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx20796z1),
	.cin(gnd),
	.combout(u_flow_anx25931z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx25931z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx25931z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N1
cycloneii_lcell_ff u_flow_aix258_reg_p3r_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx25931z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx25931z1));

// atom is at LCCOMB_X50_Y21_N4
cycloneii_lcell_comb u_flow_anx39258z1_afeeder(
// Equation(s):
// u_flow_anx39258z1_afeeder_combout = u_flow_anx25931z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx25931z1),
	.cin(gnd),
	.combout(u_flow_anx39258z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx39258z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx39258z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N5
cycloneii_lcell_ff u_flow_aix258_reg_p4r_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx39258z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx39258z1));

// atom is at LCFF_X50_Y21_N25
cycloneii_lcell_ff reg_out_o_row_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_anx39258z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx18329z1));

// atom is at LCCOMB_X51_Y21_N30
cycloneii_lcell_comb u_memory_ap_o_row_3__afeeder(
// Equation(s):
// u_memory_ap_o_row_3__afeeder_combout = u_memory_amodgen_counter_row_anx58250z9

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_row_anx58250z9),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_row_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_3__afeeder.lut_mask = 16'hF0F0;
defparam u_memory_ap_o_row_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N31
cycloneii_lcell_ff u_memory_areg_o_row_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_3_));

// atom is at LCCOMB_X50_Y21_N30
cycloneii_lcell_comb ix20836z52994(
// Equation(s):
// f_i_row_3_ = nx57127z2 & (u_memory_ap_o_row_3_) # !nx57127z2 & f_i_row_next_3_

	.dataa(f_i_row_next_3_),
	.datab(nx57127z2),
	.datac(vcc),
	.datad(u_memory_ap_o_row_3_),
	.cin(gnd),
	.combout(f_i_row_3_),
	.cout());
// synopsys translate_off
defparam ix20836z52994.lut_mask = 16'hEE22;
defparam ix20836z52994.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N31
cycloneii_lcell_ff u_flow_aix258_reg_p2r_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx19799z1));

// atom is at LCFF_X56_Y18_N3
cycloneii_lcell_ff u_flow_aix258_reg_p3r_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_anx19799z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx24934z1));

// atom is at LCCOMB_X56_Y18_N8
cycloneii_lcell_comb u_flow_anx47045z1_afeeder(
// Equation(s):
// u_flow_anx47045z1_afeeder_combout = u_flow_anx24934z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx24934z1),
	.cin(gnd),
	.combout(u_flow_anx47045z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx47045z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx47045z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N9
cycloneii_lcell_ff u_flow_aix258_reg_p4r_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx47045z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx47045z1));

// atom is at LCCOMB_X57_Y15_N16
cycloneii_lcell_comb nx19326z1_afeeder(
// Equation(s):
// nx19326z1_afeeder_combout = u_flow_anx47045z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx47045z1),
	.cin(gnd),
	.combout(nx19326z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx19326z1_afeeder.lut_mask = 16'hFF00;
defparam nx19326z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y15_N17
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

// atom is at LCCOMB_X51_Y21_N16
cycloneii_lcell_comb u_memory_ap_o_row_4__afeeder(
// Equation(s):
// u_memory_ap_o_row_4__afeeder_combout = u_memory_amodgen_counter_row_anx58250z7

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_row_anx58250z7),
	.cin(gnd),
	.combout(u_memory_ap_o_row_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_4__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_row_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N17
cycloneii_lcell_ff u_memory_areg_o_row_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_4_));

// atom is at LCFF_X50_Y21_N27
cycloneii_lcell_ff reg_f_i_row_next_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_row_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_4_));

// atom is at LCCOMB_X50_Y21_N8
cycloneii_lcell_comb ix20836z52993(
// Equation(s):
// f_i_row_4_ = nx57127z2 & u_memory_ap_o_row_4_ # !nx57127z2 & (f_i_row_next_4_)

	.dataa(u_memory_ap_o_row_4_),
	.datab(f_i_row_next_4_),
	.datac(vcc),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_i_row_4_),
	.cout());
// synopsys translate_off
defparam ix20836z52993.lut_mask = 16'hAACC;
defparam ix20836z52993.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N9
cycloneii_lcell_ff u_flow_aix258_reg_p2r_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx18802z1));

// atom is at LCCOMB_X42_Y21_N2
cycloneii_lcell_comb u_flow_anx23937z1_afeeder(
// Equation(s):
// u_flow_anx23937z1_afeeder_combout = u_flow_anx18802z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx18802z1),
	.cin(gnd),
	.combout(u_flow_anx23937z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx23937z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx23937z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X42_Y21_N3
cycloneii_lcell_ff u_flow_aix258_reg_p3r_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx23937z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx23937z1));

// atom is at LCCOMB_X42_Y21_N24
cycloneii_lcell_comb u_flow_anx54832z1_afeeder(
// Equation(s):
// u_flow_anx54832z1_afeeder_combout = u_flow_anx23937z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx23937z1),
	.cin(gnd),
	.combout(u_flow_anx54832z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx54832z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx54832z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X42_Y21_N25
cycloneii_lcell_ff u_flow_aix258_reg_p4r_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx54832z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx54832z1));

// atom is at LCCOMB_X41_Y21_N8
cycloneii_lcell_comb nx20323z1_afeeder(
// Equation(s):
// nx20323z1_afeeder_combout = u_flow_anx54832z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx54832z1),
	.cin(gnd),
	.combout(nx20323z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx20323z1_afeeder.lut_mask = 16'hFF00;
defparam nx20323z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X41_Y21_N9
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

// atom is at LCCOMB_X51_Y21_N2
cycloneii_lcell_comb u_memory_ap_o_row_5__afeeder(
// Equation(s):
// u_memory_ap_o_row_5__afeeder_combout = u_memory_amodgen_counter_row_anx58250z5

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_row_anx58250z5),
	.cin(gnd),
	.combout(u_memory_ap_o_row_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_5__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_row_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N3
cycloneii_lcell_ff u_memory_areg_o_row_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_5_));

// atom is at LCFF_X50_Y21_N21
cycloneii_lcell_ff reg_f_i_row_next_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_row_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_5_));

// atom is at LCCOMB_X48_Y21_N28
cycloneii_lcell_comb ix20836z52992(
// Equation(s):
// f_i_row_5_ = nx57127z2 & (u_memory_ap_o_row_5_) # !nx57127z2 & f_i_row_next_5_

	.dataa(vcc),
	.datab(f_i_row_next_5_),
	.datac(nx57127z2),
	.datad(u_memory_ap_o_row_5_),
	.cin(gnd),
	.combout(f_i_row_5_),
	.cout());
// synopsys translate_off
defparam ix20836z52992.lut_mask = 16'hFC0C;
defparam ix20836z52992.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N29
cycloneii_lcell_ff u_flow_aix258_reg_p2r_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx17805z1));

// atom is at LCCOMB_X48_Y21_N8
cycloneii_lcell_comb u_flow_anx22940z1_afeeder(
// Equation(s):
// u_flow_anx22940z1_afeeder_combout = u_flow_anx17805z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx17805z1),
	.cin(gnd),
	.combout(u_flow_anx22940z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx22940z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx22940z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N9
cycloneii_lcell_ff u_flow_aix258_reg_p3r_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx22940z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx22940z1));

// atom is at LCFF_X48_Y21_N13
cycloneii_lcell_ff u_flow_aix258_reg_p4r_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_flow_anx22940z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx62619z1));

// atom is at LCCOMB_X48_Y21_N24
cycloneii_lcell_comb nx21320z1_afeeder(
// Equation(s):
// nx21320z1_afeeder_combout = u_flow_anx62619z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx62619z1),
	.cin(gnd),
	.combout(nx21320z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx21320z1_afeeder.lut_mask = 16'hFF00;
defparam nx21320z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N25
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

// atom is at LCCOMB_X51_Y21_N20
cycloneii_lcell_comb u_memory_ap_o_row_6__afeeder(
// Equation(s):
// u_memory_ap_o_row_6__afeeder_combout = u_memory_amodgen_counter_row_anx58250z3

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_amodgen_counter_row_anx58250z3),
	.cin(gnd),
	.combout(u_memory_ap_o_row_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_row_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N21
cycloneii_lcell_ff u_memory_areg_o_row_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_6_));

// atom is at LCFF_X48_Y21_N1
cycloneii_lcell_ff reg_f_i_row_next_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_row_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_6_));

// atom is at LCCOMB_X48_Y21_N30
cycloneii_lcell_comb ix20836z52991(
// Equation(s):
// f_i_row_6_ = nx57127z2 & u_memory_ap_o_row_6_ # !nx57127z2 & (f_i_row_next_6_)

	.dataa(u_memory_ap_o_row_6_),
	.datab(f_i_row_next_6_),
	.datac(nx57127z2),
	.datad(vcc),
	.cin(gnd),
	.combout(f_i_row_6_),
	.cout());
// synopsys translate_off
defparam ix20836z52991.lut_mask = 16'hACAC;
defparam ix20836z52991.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N31
cycloneii_lcell_ff u_flow_aix258_reg_p2r_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx16808z1));

// atom is at LCCOMB_X48_Y21_N2
cycloneii_lcell_comb u_flow_anx21943z1_afeeder(
// Equation(s):
// u_flow_anx21943z1_afeeder_combout = u_flow_anx16808z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx16808z1),
	.cin(gnd),
	.combout(u_flow_anx21943z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx21943z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx21943z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N3
cycloneii_lcell_ff u_flow_aix258_reg_p3r_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx21943z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx21943z1));

// atom is at LCCOMB_X48_Y21_N6
cycloneii_lcell_comb u_flow_anx22927z1_afeeder(
// Equation(s):
// u_flow_anx22927z1_afeeder_combout = u_flow_anx21943z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx21943z1),
	.cin(gnd),
	.combout(u_flow_anx22927z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx22927z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx22927z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N7
cycloneii_lcell_ff u_flow_aix258_reg_p4r_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx22927z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx22927z1));

// atom is at LCCOMB_X48_Y21_N10
cycloneii_lcell_comb nx22317z1_afeeder(
// Equation(s):
// nx22317z1_afeeder_combout = u_flow_anx22927z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx22927z1),
	.cin(gnd),
	.combout(nx22317z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx22317z1_afeeder.lut_mask = 16'hFF00;
defparam nx22317z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X48_Y21_N11
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

// atom is at LCCOMB_X51_Y21_N14
cycloneii_lcell_comb u_memory_ap_o_row_7__afeeder(
// Equation(s):
// u_memory_ap_o_row_7__afeeder_combout = u_memory_amodgen_counter_row_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_row_anx1041z1),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_row_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_row_7__afeeder.lut_mask = 16'hF0F0;
defparam u_memory_ap_o_row_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N15
cycloneii_lcell_ff u_memory_areg_o_row_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_row_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_row_7_));

// atom is at LCFF_X50_Y21_N15
cycloneii_lcell_ff reg_f_i_row_next_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_row_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx35105z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_i_row_next_7_));

// atom is at LCCOMB_X50_Y21_N2
cycloneii_lcell_comb ix20836z52990(
// Equation(s):
// f_i_row_7_ = nx57127z2 & (u_memory_ap_o_row_7_) # !nx57127z2 & f_i_row_next_7_

	.dataa(vcc),
	.datab(f_i_row_next_7_),
	.datac(u_memory_ap_o_row_7_),
	.datad(nx57127z2),
	.cin(gnd),
	.combout(f_i_row_7_),
	.cout());
// synopsys translate_off
defparam ix20836z52990.lut_mask = 16'hF0CC;
defparam ix20836z52990.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N3
cycloneii_lcell_ff u_flow_aix258_reg_p2r_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(f_i_row_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx15811z1));

// atom is at LCCOMB_X50_Y21_N18
cycloneii_lcell_comb u_flow_anx20946z1_afeeder(
// Equation(s):
// u_flow_anx20946z1_afeeder_combout = u_flow_anx15811z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx15811z1),
	.cin(gnd),
	.combout(u_flow_anx20946z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx20946z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx20946z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N19
cycloneii_lcell_ff u_flow_aix258_reg_p3r_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx20946z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx20946z1));

// atom is at LCCOMB_X50_Y21_N6
cycloneii_lcell_comb u_flow_anx30714z1_afeeder(
// Equation(s):
// u_flow_anx30714z1_afeeder_combout = u_flow_anx20946z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx20946z1),
	.cin(gnd),
	.combout(u_flow_anx30714z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_flow_anx30714z1_afeeder.lut_mask = 16'hFF00;
defparam u_flow_anx30714z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N7
cycloneii_lcell_ff u_flow_aix258_reg_p4r_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_flow_anx30714z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_flow_anx30714z1));

// atom is at LCCOMB_X50_Y21_N10
cycloneii_lcell_comb nx23314z1_afeeder(
// Equation(s):
// nx23314z1_afeeder_combout = u_flow_anx30714z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_flow_anx30714z1),
	.cin(gnd),
	.combout(nx23314z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx23314z1_afeeder.lut_mask = 16'hFF00;
defparam nx23314z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N11
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

// atom is at LCFF_X55_Y19_N23
cycloneii_lcell_ff reg_out_o_image0_obuf_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx59473z1));

// atom is at LCFF_X56_Y22_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx58476z1));

// atom is at LCCOMB_X54_Y20_N16
cycloneii_lcell_comb nx57479z1_afeeder(
// Equation(s):
// nx57479z1_afeeder_combout = u_memory_ap_o_image1_0__2_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_0__2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx57479z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx57479z1_afeeder.lut_mask = 16'hF0F0;
defparam nx57479z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57479z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx57479z1));

// atom is at LCFF_X56_Y22_N27
cycloneii_lcell_ff reg_out_o_image0_obuf_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx56482z1));

// atom is at LCFF_X56_Y22_N21
cycloneii_lcell_ff reg_out_o_image0_obuf_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx55485z1));

// atom is at LCFF_X57_Y22_N13
cycloneii_lcell_ff reg_out_o_image0_obuf_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx54488z1));

// atom is at LCFF_X57_Y22_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx53491z1));

// atom is at LCFF_X55_Y22_N5
cycloneii_lcell_ff u_memory_areg_buffer1_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_0__7_));

// atom is at LCFF_X55_Y22_N21
cycloneii_lcell_ff reg_out_o_image0_obuf_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx52494z1));

// atom is at LCFF_X55_Y21_N23
cycloneii_lcell_ff reg_out_o_image0_obuf_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64608z1));

// atom is at LCFF_X55_Y21_N9
cycloneii_lcell_ff reg_out_o_image0_obuf_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63611z1));

// atom is at LCCOMB_X53_Y21_N8
cycloneii_lcell_comb nx62614z1_afeeder(
// Equation(s):
// nx62614z1_afeeder_combout = u_memory_ap_o_image1_1__2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__2_),
	.cin(gnd),
	.combout(nx62614z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx62614z1_afeeder.lut_mask = 16'hFF00;
defparam nx62614z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N9
cycloneii_lcell_ff reg_out_o_image0_obuf_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx62614z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62614z1));

// atom is at LCCOMB_X55_Y20_N16
cycloneii_lcell_comb u_memory_ap_o_image1_1__3__afeeder(
// Equation(s):
// u_memory_ap_o_image1_1__3__afeeder_combout = u_memory_ap_o_image2_1__3_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_1__3_),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_image1_1__3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image1_1__3__afeeder.lut_mask = 16'hF0F0;
defparam u_memory_ap_o_image1_1__3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N17
cycloneii_lcell_ff u_memory_areg_buffer1_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image1_1__3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__3_));

// atom is at LCFF_X55_Y19_N21
cycloneii_lcell_ff reg_out_o_image0_obuf_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx61617z1));

// atom is at LCCOMB_X56_Y22_N22
cycloneii_lcell_comb nx60620z1_afeeder(
// Equation(s):
// nx60620z1_afeeder_combout = u_memory_ap_o_image1_1__4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__4_),
	.cin(gnd),
	.combout(nx60620z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx60620z1_afeeder.lut_mask = 16'hFF00;
defparam nx60620z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N23
cycloneii_lcell_ff reg_out_o_image0_obuf_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60620z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx60620z1));

// atom is at LCFF_X57_Y22_N3
cycloneii_lcell_ff u_memory_areg_buffer1_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_1__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__5_));

// atom is at LCFF_X57_Y22_N5
cycloneii_lcell_ff reg_out_o_image0_obuf_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx59623z1));

// atom is at LCCOMB_X55_Y22_N2
cycloneii_lcell_comb u_memory_ap_o_image1_1__6__afeeder(
// Equation(s):
// u_memory_ap_o_image1_1__6__afeeder_combout = u_memory_ap_o_image2_1__6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__6_),
	.cin(gnd),
	.combout(u_memory_ap_o_image1_1__6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image1_1__6__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image1_1__6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N3
cycloneii_lcell_ff u_memory_areg_buffer1_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image1_1__6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__6_));

// atom is at LCFF_X55_Y22_N13
cycloneii_lcell_ff reg_out_o_image0_obuf_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_1__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx58626z1));

// atom is at LCCOMB_X51_Y21_N24
cycloneii_lcell_comb u_memory_ap_o_image2_1__7__afeeder(
// Equation(s):
// u_memory_ap_o_image2_1__7__afeeder_combout = u_memory_anx62359z1

	.dataa(u_memory_anx62359z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_image2_1__7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image2_1__7__afeeder.lut_mask = 16'hAAAA;
defparam u_memory_ap_o_image2_1__7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N25
cycloneii_lcell_ff u_memory_areg_buffer2_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image2_1__7__afeeder_combout),
	.sdata(u_memory_au_mem2_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(u_memory_ab_1__dup_352),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image2_1__7_));

// atom is at LCCOMB_X55_Y21_N12
cycloneii_lcell_comb u_memory_ap_o_image1_1__7__afeeder(
// Equation(s):
// u_memory_ap_o_image1_1__7__afeeder_combout = u_memory_ap_o_image2_1__7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__7_),
	.cin(gnd),
	.combout(u_memory_ap_o_image1_1__7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_o_image1_1__7__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_o_image1_1__7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N13
cycloneii_lcell_ff u_memory_areg_buffer1_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_o_image1_1__7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_o_image1_1__7_));

// atom is at LCCOMB_X55_Y21_N2
cycloneii_lcell_comb nx57629z1_afeeder(
// Equation(s):
// nx57629z1_afeeder_combout = u_memory_ap_o_image1_1__7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_1__7_),
	.cin(gnd),
	.combout(nx57629z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx57629z1_afeeder.lut_mask = 16'hFF00;
defparam nx57629z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N3
cycloneii_lcell_ff reg_out_o_image0_obuf_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57629z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx57629z1));

// atom is at LCFF_X53_Y21_N3
cycloneii_lcell_ff reg_out_o_image0_obuf_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx4207z1));

// atom is at LCCOMB_X53_Y21_N20
cycloneii_lcell_comb nx3210z1_afeeder(
// Equation(s):
// nx3210z1_afeeder_combout = u_memory_ap_o_image1_2__1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_2__1_),
	.cin(gnd),
	.combout(nx3210z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx3210z1_afeeder.lut_mask = 16'hFF00;
defparam nx3210z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N21
cycloneii_lcell_ff reg_out_o_image0_obuf_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx3210z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx3210z1));

// atom is at LCCOMB_X54_Y20_N10
cycloneii_lcell_comb nx2213z1_afeeder(
// Equation(s):
// nx2213z1_afeeder_combout = u_memory_ap_o_image1_2__2_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_2__2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx2213z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx2213z1_afeeder.lut_mask = 16'hF0F0;
defparam nx2213z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N11
cycloneii_lcell_ff reg_out_o_image0_obuf_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx2213z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx2213z1));

// atom is at LCCOMB_X55_Y20_N0
cycloneii_lcell_comb nx1216z1_afeeder(
// Equation(s):
// nx1216z1_afeeder_combout = u_memory_ap_o_image1_2__3_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image1_2__3_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx1216z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx1216z1_afeeder.lut_mask = 16'hF0F0;
defparam nx1216z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N1
cycloneii_lcell_ff reg_out_o_image0_obuf_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx1216z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx1216z1));

// atom is at LCCOMB_X56_Y22_N0
cycloneii_lcell_comb nx219z1_afeeder(
// Equation(s):
// nx219z1_afeeder_combout = u_memory_ap_o_image1_2__4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_2__4_),
	.cin(gnd),
	.combout(nx219z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx219z1_afeeder.lut_mask = 16'hFF00;
defparam nx219z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N1
cycloneii_lcell_ff reg_out_o_image0_obuf_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx219z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx219z1));

// atom is at LCFF_X57_Y22_N25
cycloneii_lcell_ff reg_out_o_image0_obuf_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64758z1));

// atom is at LCFF_X55_Y22_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image1_2__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63761z1));

// atom is at LCCOMB_X55_Y21_N28
cycloneii_lcell_comb nx62764z1_afeeder(
// Equation(s):
// nx62764z1_afeeder_combout = u_memory_ap_o_image1_2__7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image1_2__7_),
	.cin(gnd),
	.combout(nx62764z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx62764z1_afeeder.lut_mask = 16'hFF00;
defparam nx62764z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N29
cycloneii_lcell_ff reg_out_o_image0_obuf_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx62764z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62764z1));

// atom is at LCCOMB_X53_Y21_N22
cycloneii_lcell_comb nx41208z1_afeeder(
// Equation(s):
// nx41208z1_afeeder_combout = u_memory_ap_o_image2_0__0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_0__0_),
	.cin(gnd),
	.combout(nx41208z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx41208z1_afeeder.lut_mask = 16'hFF00;
defparam nx41208z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N23
cycloneii_lcell_ff reg_out_o_image1_obuf_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx41208z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41208z1));

// atom is at LCCOMB_X53_Y21_N0
cycloneii_lcell_comb nx42205z1_afeeder(
// Equation(s):
// nx42205z1_afeeder_combout = u_memory_ap_o_image2_0__1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_0__1_),
	.cin(gnd),
	.combout(nx42205z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx42205z1_afeeder.lut_mask = 16'hFF00;
defparam nx42205z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N1
cycloneii_lcell_ff reg_out_o_image1_obuf_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42205z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42205z1));

// atom is at LCCOMB_X54_Y20_N28
cycloneii_lcell_comb nx43202z1_afeeder(
// Equation(s):
// nx43202z1_afeeder_combout = u_memory_ap_o_image2_0__2_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_0__2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx43202z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx43202z1_afeeder.lut_mask = 16'hF0F0;
defparam nx43202z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N29
cycloneii_lcell_ff reg_out_o_image1_obuf_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43202z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43202z1));

// atom is at LCCOMB_X55_Y20_N26
cycloneii_lcell_comb nx44199z1_afeeder(
// Equation(s):
// nx44199z1_afeeder_combout = u_memory_ap_o_image2_0__3_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_0__3_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx44199z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx44199z1_afeeder.lut_mask = 16'hF0F0;
defparam nx44199z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N27
cycloneii_lcell_ff reg_out_o_image1_obuf_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44199z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44199z1));

// atom is at LCFF_X56_Y22_N11
cycloneii_lcell_ff reg_out_o_image1_obuf_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45196z1));

// atom is at LCFF_X57_Y22_N27
cycloneii_lcell_ff reg_out_o_image1_obuf_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46193z1));

// atom is at LCFF_X55_Y22_N11
cycloneii_lcell_ff reg_out_o_image1_obuf_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47190z1));

// atom is at LCFF_X55_Y21_N21
cycloneii_lcell_ff reg_out_o_image1_obuf_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_0__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx48187z1));

// atom is at LCCOMB_X55_Y21_N24
cycloneii_lcell_comb nx36073z1_afeeder(
// Equation(s):
// nx36073z1_afeeder_combout = u_memory_ap_o_image2_1__0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__0_),
	.cin(gnd),
	.combout(nx36073z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx36073z1_afeeder.lut_mask = 16'hFF00;
defparam nx36073z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N25
cycloneii_lcell_ff reg_out_o_image1_obuf_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36073z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx36073z1));

// atom is at LCCOMB_X53_Y21_N10
cycloneii_lcell_comb nx37070z1_afeeder(
// Equation(s):
// nx37070z1_afeeder_combout = u_memory_ap_o_image2_1__1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__1_),
	.cin(gnd),
	.combout(nx37070z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx37070z1_afeeder.lut_mask = 16'hFF00;
defparam nx37070z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N11
cycloneii_lcell_ff reg_out_o_image1_obuf_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx37070z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx37070z1));

// atom is at LCCOMB_X54_Y20_N30
cycloneii_lcell_comb nx38067z1_afeeder(
// Equation(s):
// nx38067z1_afeeder_combout = u_memory_ap_o_image2_1__2_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_1__2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx38067z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx38067z1_afeeder.lut_mask = 16'hF0F0;
defparam nx38067z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N31
cycloneii_lcell_ff reg_out_o_image1_obuf_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx38067z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx38067z1));

// atom is at LCCOMB_X55_Y20_N12
cycloneii_lcell_comb nx39064z1_afeeder(
// Equation(s):
// nx39064z1_afeeder_combout = u_memory_ap_o_image2_1__3_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_1__3_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx39064z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx39064z1_afeeder.lut_mask = 16'hF0F0;
defparam nx39064z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N13
cycloneii_lcell_ff reg_out_o_image1_obuf_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx39064z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx39064z1));

// atom is at LCFF_X56_Y22_N5
cycloneii_lcell_ff reg_out_o_image1_obuf_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_1__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx40061z1));

// atom is at LCFF_X57_Y22_N31
cycloneii_lcell_ff reg_out_o_image1_obuf_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_1__5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41058z1));

// atom is at LCCOMB_X55_Y22_N28
cycloneii_lcell_comb nx42055z1_afeeder(
// Equation(s):
// nx42055z1_afeeder_combout = u_memory_ap_o_image2_1__6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__6_),
	.cin(gnd),
	.combout(nx42055z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx42055z1_afeeder.lut_mask = 16'hFF00;
defparam nx42055z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N29
cycloneii_lcell_ff reg_out_o_image1_obuf_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42055z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42055z1));

// atom is at LCCOMB_X55_Y21_N26
cycloneii_lcell_comb nx43052z1_afeeder(
// Equation(s):
// nx43052z1_afeeder_combout = u_memory_ap_o_image2_1__7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_1__7_),
	.cin(gnd),
	.combout(nx43052z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx43052z1_afeeder.lut_mask = 16'hFF00;
defparam nx43052z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N27
cycloneii_lcell_ff reg_out_o_image1_obuf_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43052z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43052z1));

// atom is at LCCOMB_X53_Y21_N4
cycloneii_lcell_comb nx30938z1_afeeder(
// Equation(s):
// nx30938z1_afeeder_combout = u_memory_ap_o_image2_2__0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_2__0_),
	.cin(gnd),
	.combout(nx30938z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx30938z1_afeeder.lut_mask = 16'hFF00;
defparam nx30938z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N5
cycloneii_lcell_ff reg_out_o_image1_obuf_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx30938z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx30938z1));

// atom is at LCCOMB_X53_Y21_N30
cycloneii_lcell_comb nx31935z1_afeeder(
// Equation(s):
// nx31935z1_afeeder_combout = u_memory_ap_o_image2_2__1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_2__1_),
	.cin(gnd),
	.combout(nx31935z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx31935z1_afeeder.lut_mask = 16'hFF00;
defparam nx31935z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N31
cycloneii_lcell_ff reg_out_o_image1_obuf_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx31935z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx31935z1));

// atom is at LCFF_X53_Y21_N25
cycloneii_lcell_ff reg_out_o_image1_obuf_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx32932z1));

// atom is at LCCOMB_X55_Y20_N6
cycloneii_lcell_comb nx33929z1_afeeder(
// Equation(s):
// nx33929z1_afeeder_combout = u_memory_ap_o_image2_2__3_

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_ap_o_image2_2__3_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx33929z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx33929z1_afeeder.lut_mask = 16'hF0F0;
defparam nx33929z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N7
cycloneii_lcell_ff reg_out_o_image1_obuf_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx33929z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx33929z1));

// atom is at LCFF_X56_Y22_N31
cycloneii_lcell_ff reg_out_o_image1_obuf_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx34926z1));

// atom is at LCCOMB_X57_Y22_N18
cycloneii_lcell_comb nx35923z1_afeeder(
// Equation(s):
// nx35923z1_afeeder_combout = u_memory_ap_o_image2_2__5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_o_image2_2__5_),
	.cin(gnd),
	.combout(nx35923z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx35923z1_afeeder.lut_mask = 16'hFF00;
defparam nx35923z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y22_N19
cycloneii_lcell_ff reg_out_o_image1_obuf_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35923z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx35923z1));

// atom is at LCFF_X55_Y22_N9
cycloneii_lcell_ff reg_out_o_image1_obuf_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx36920z1));

// atom is at LCFF_X55_Y21_N11
cycloneii_lcell_ff reg_out_o_image1_obuf_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_o_image2_2__7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(debug_valid_dup0),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx37917z1));

// atom is at LCFF_X51_Y20_N5
cycloneii_lcell_ff reg_out_debug_column_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_amodgen_counter_column_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(u_memory_anx47386z2),
	.sload(gnd),
	.ena(u_memory_amodgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx4807z1));

// atom is at LCCOMB_X51_Y18_N16
cycloneii_lcell_comb u_memory_aix52274z52923(
// Equation(s):
// u_memory_ap_o_column_2_ = u_memory_amodgen_counter_column_anx58250z13 $ !u_memory_amodgen_counter_column_anx58250z11

	.dataa(vcc),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_column_anx58250z13),
	.datad(u_memory_amodgen_counter_column_anx58250z11),
	.cin(gnd),
	.combout(u_memory_ap_o_column_2_),
	.cout());
// synopsys translate_off
defparam u_memory_aix52274z52923.lut_mask = 16'hF00F;
defparam u_memory_aix52274z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y18_N2
cycloneii_lcell_comb u_memory_aix51277z52923(
// Equation(s):
// u_memory_ap_o_column_3_ = u_memory_amodgen_counter_column_anx58250z9 $ (!u_memory_amodgen_counter_column_anx58250z13 & !u_memory_amodgen_counter_column_anx58250z11)

	.dataa(vcc),
	.datab(u_memory_amodgen_counter_column_anx58250z9),
	.datac(u_memory_amodgen_counter_column_anx58250z13),
	.datad(u_memory_amodgen_counter_column_anx58250z11),
	.cin(gnd),
	.combout(u_memory_ap_o_column_3_),
	.cout());
// synopsys translate_off
defparam u_memory_aix51277z52923.lut_mask = 16'hCCC3;
defparam u_memory_aix51277z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y18_N4
cycloneii_lcell_comb u_memory_aix50280z52923(
// Equation(s):
// u_memory_ap_o_column_4_ = u_memory_amodgen_counter_column_anx58250z7 $ (!u_memory_amodgen_counter_column_anx58250z9 & !u_memory_amodgen_counter_column_anx58250z13 & !u_memory_amodgen_counter_column_anx58250z11)

	.dataa(u_memory_amodgen_counter_column_anx58250z7),
	.datab(u_memory_amodgen_counter_column_anx58250z9),
	.datac(u_memory_amodgen_counter_column_anx58250z13),
	.datad(u_memory_amodgen_counter_column_anx58250z11),
	.cin(gnd),
	.combout(u_memory_ap_o_column_4_),
	.cout());
// synopsys translate_off
defparam u_memory_aix50280z52923.lut_mask = 16'hAAA9;
defparam u_memory_aix50280z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N24
cycloneii_lcell_comb u_memory_aix60567z52927(
// Equation(s):
// u_memory_anx60567z5 = u_memory_amodgen_counter_column_anx58250z9 # u_memory_amodgen_counter_column_anx58250z11 # u_memory_amodgen_counter_column_anx58250z13

	.dataa(u_memory_amodgen_counter_column_anx58250z9),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_column_anx58250z11),
	.datad(u_memory_amodgen_counter_column_anx58250z13),
	.cin(gnd),
	.combout(u_memory_anx60567z5),
	.cout());
// synopsys translate_off
defparam u_memory_aix60567z52927.lut_mask = 16'hFFFA;
defparam u_memory_aix60567z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N26
cycloneii_lcell_comb u_memory_aix49283z52923(
// Equation(s):
// u_memory_ap_o_column_5_ = u_memory_amodgen_counter_column_anx58250z5 $ (!u_memory_anx60567z5 & !u_memory_amodgen_counter_column_anx58250z7)

	.dataa(u_memory_anx60567z5),
	.datab(vcc),
	.datac(u_memory_amodgen_counter_column_anx58250z5),
	.datad(u_memory_amodgen_counter_column_anx58250z7),
	.cin(gnd),
	.combout(u_memory_ap_o_column_5_),
	.cout());
// synopsys translate_off
defparam u_memory_aix49283z52923.lut_mask = 16'hF0A5;
defparam u_memory_aix49283z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N20
cycloneii_lcell_comb u_memory_aix48286z52923(
// Equation(s):
// u_memory_ap_o_column_6_ = u_memory_amodgen_counter_column_anx58250z3 $ (!u_memory_anx60567z5 & !u_memory_amodgen_counter_column_anx58250z5 & !u_memory_amodgen_counter_column_anx58250z7)

	.dataa(u_memory_anx60567z5),
	.datab(u_memory_amodgen_counter_column_anx58250z5),
	.datac(u_memory_amodgen_counter_column_anx58250z3),
	.datad(u_memory_amodgen_counter_column_anx58250z7),
	.cin(gnd),
	.combout(u_memory_ap_o_column_6_),
	.cout());
// synopsys translate_off
defparam u_memory_aix48286z52923.lut_mask = 16'hF0E1;
defparam u_memory_aix48286z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X48_Y20_N16
cycloneii_lcell_comb u_memory_aix47289z52923(
// Equation(s):
// u_memory_ap_o_column_7_ = u_memory_anx60567z4 $ !u_memory_amodgen_counter_column_anx1041z1

	.dataa(vcc),
	.datab(u_memory_anx60567z4),
	.datac(u_memory_amodgen_counter_column_anx1041z1),
	.datad(vcc),
	.cin(gnd),
	.combout(u_memory_ap_o_column_7_),
	.cout());
// synopsys translate_off
defparam u_memory_aix47289z52923.lut_mask = 16'hC3C3;
defparam u_memory_aix47289z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N16
cycloneii_lcell_comb u_memory_ap_debug_num_0_0__afeeder(
// Equation(s):
// u_memory_ap_debug_num_0_0__afeeder_combout = u_memory_ap_debug_num_1_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_memory_ap_debug_num_1_0_),
	.cin(gnd),
	.combout(u_memory_ap_debug_num_0_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_memory_ap_debug_num_0_0__afeeder.lut_mask = 16'hFF00;
defparam u_memory_ap_debug_num_0_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y20_N20
cycloneii_lcell_comb u_memory_aix15763z52924(
// Equation(s):
// u_memory_anx15763z2 = u_memory_anx40106z2 & i_valid_acombout & !u_memory_ap_debug_num_1_0_ & !u_memory_anx8852z1

	.dataa(u_memory_anx40106z2),
	.datab(i_valid_acombout),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_anx8852z1),
	.cin(gnd),
	.combout(u_memory_anx15763z2),
	.cout());
// synopsys translate_off
defparam u_memory_aix15763z52924.lut_mask = 16'h0008;
defparam u_memory_aix15763z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y20_N17
cycloneii_lcell_ff u_memory_areg_mem_wrn_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(u_memory_ap_debug_num_0_0__afeeder_combout),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(u_memory_anx47386z1),
	.sload(u_memory_anx15763z2),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_debug_num_0_0_));

// atom is at LCCOMB_X50_Y20_N6
cycloneii_lcell_comb u_memory_aix17757z52923(
// Equation(s):
// u_memory_anx17757z1 = u_memory_anx8852z1 # u_memory_anx40106z2 & !u_memory_ap_debug_num_1_0_ # !i_valid_acombout

	.dataa(u_memory_anx40106z2),
	.datab(i_valid_acombout),
	.datac(u_memory_ap_debug_num_1_0_),
	.datad(u_memory_anx8852z1),
	.cin(gnd),
	.combout(u_memory_anx17757z1),
	.cout());
// synopsys translate_off
defparam u_memory_aix17757z52923.lut_mask = 16'hFF3B;
defparam u_memory_aix17757z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y19_N9
cycloneii_lcell_ff u_memory_areg_mem_wrn_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_debug_num_1_1_),
	.aclr(gnd),
	.sclr(u_memory_anx17757z1),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_debug_num_0_1_));

// atom is at LCFF_X50_Y19_N3
cycloneii_lcell_ff u_memory_areg_mem_wrn_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(u_memory_ap_debug_num_1_2_),
	.aclr(gnd),
	.sclr(u_memory_anx17757z1),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_memory_ap_debug_num_0_2_));

// atom is at PIN_A17
cycloneii_io o_valid_obuf(
	.datain(u_flow_ao_valid),
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

// atom is at PIN_G15
cycloneii_io o_edge_obuf(
	.datain(u_flow_ao_edge),
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
defparam o_edge_obuf.input_async_reset = "none";
defparam o_edge_obuf.input_power_up = "low";
defparam o_edge_obuf.input_register_mode = "none";
defparam o_edge_obuf.input_sync_reset = "none";
defparam o_edge_obuf.oe_async_reset = "none";
defparam o_edge_obuf.oe_power_up = "low";
defparam o_edge_obuf.oe_register_mode = "none";
defparam o_edge_obuf.oe_sync_reset = "none";
defparam o_edge_obuf.operation_mode = "output";
defparam o_edge_obuf.output_async_reset = "none";
defparam o_edge_obuf.output_power_up = "low";
defparam o_edge_obuf.output_register_mode = "none";
defparam o_edge_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F16
cycloneii_io o_dir_obuf_0_(
	.datain(u_flow_ao_dir_0_),
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
defparam o_dir_obuf_0_.input_async_reset = "none";
defparam o_dir_obuf_0_.input_power_up = "low";
defparam o_dir_obuf_0_.input_register_mode = "none";
defparam o_dir_obuf_0_.input_sync_reset = "none";
defparam o_dir_obuf_0_.oe_async_reset = "none";
defparam o_dir_obuf_0_.oe_power_up = "low";
defparam o_dir_obuf_0_.oe_register_mode = "none";
defparam o_dir_obuf_0_.oe_sync_reset = "none";
defparam o_dir_obuf_0_.operation_mode = "output";
defparam o_dir_obuf_0_.output_async_reset = "none";
defparam o_dir_obuf_0_.output_power_up = "low";
defparam o_dir_obuf_0_.output_register_mode = "none";
defparam o_dir_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G16
cycloneii_io o_dir_obuf_1_(
	.datain(u_flow_ao_dir_1_),
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
defparam o_dir_obuf_1_.input_async_reset = "none";
defparam o_dir_obuf_1_.input_power_up = "low";
defparam o_dir_obuf_1_.input_register_mode = "none";
defparam o_dir_obuf_1_.input_sync_reset = "none";
defparam o_dir_obuf_1_.oe_async_reset = "none";
defparam o_dir_obuf_1_.oe_power_up = "low";
defparam o_dir_obuf_1_.oe_register_mode = "none";
defparam o_dir_obuf_1_.oe_sync_reset = "none";
defparam o_dir_obuf_1_.operation_mode = "output";
defparam o_dir_obuf_1_.output_async_reset = "none";
defparam o_dir_obuf_1_.output_power_up = "low";
defparam o_dir_obuf_1_.output_register_mode = "none";
defparam o_dir_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE17
cycloneii_io o_dir_obuf_2_(
	.datain(u_flow_ao_dir_2_),
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
defparam o_dir_obuf_2_.input_async_reset = "none";
defparam o_dir_obuf_2_.input_power_up = "low";
defparam o_dir_obuf_2_.input_register_mode = "none";
defparam o_dir_obuf_2_.input_sync_reset = "none";
defparam o_dir_obuf_2_.oe_async_reset = "none";
defparam o_dir_obuf_2_.oe_power_up = "low";
defparam o_dir_obuf_2_.oe_register_mode = "none";
defparam o_dir_obuf_2_.oe_sync_reset = "none";
defparam o_dir_obuf_2_.operation_mode = "output";
defparam o_dir_obuf_2_.output_async_reset = "none";
defparam o_dir_obuf_2_.output_power_up = "low";
defparam o_dir_obuf_2_.output_register_mode = "none";
defparam o_dir_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H16
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

// atom is at PIN_B14
cycloneii_io o_mode_obuf_1_(
	.datain(!i_reset_acombout),
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

// atom is at PIN_AC17
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

// atom is at PIN_K22
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

// atom is at PIN_A18
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

// atom is at PIN_T24
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

// atom is at PIN_AC15
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

// atom is at PIN_AE18
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

// atom is at PIN_L21
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

// atom is at PIN_N20
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

// atom is at PIN_R17
cycloneii_io ix59473z43919(
	.datain(nx59473z1),
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
	.padio(o_image0_0_[0]));
// synopsys translate_off
defparam ix59473z43919.input_async_reset = "none";
defparam ix59473z43919.input_power_up = "low";
defparam ix59473z43919.input_register_mode = "none";
defparam ix59473z43919.input_sync_reset = "none";
defparam ix59473z43919.oe_async_reset = "none";
defparam ix59473z43919.oe_power_up = "low";
defparam ix59473z43919.oe_register_mode = "none";
defparam ix59473z43919.oe_sync_reset = "none";
defparam ix59473z43919.operation_mode = "output";
defparam ix59473z43919.output_async_reset = "none";
defparam ix59473z43919.output_power_up = "low";
defparam ix59473z43919.output_register_mode = "none";
defparam ix59473z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J20
cycloneii_io ix58476z43919(
	.datain(nx58476z1),
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
	.padio(o_image0_0_[1]));
// synopsys translate_off
defparam ix58476z43919.input_async_reset = "none";
defparam ix58476z43919.input_power_up = "low";
defparam ix58476z43919.input_register_mode = "none";
defparam ix58476z43919.input_sync_reset = "none";
defparam ix58476z43919.oe_async_reset = "none";
defparam ix58476z43919.oe_power_up = "low";
defparam ix58476z43919.oe_register_mode = "none";
defparam ix58476z43919.oe_sync_reset = "none";
defparam ix58476z43919.operation_mode = "output";
defparam ix58476z43919.output_async_reset = "none";
defparam ix58476z43919.output_power_up = "low";
defparam ix58476z43919.output_register_mode = "none";
defparam ix58476z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC19
cycloneii_io ix57479z43919(
	.datain(nx57479z1),
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
	.padio(o_image0_0_[2]));
// synopsys translate_off
defparam ix57479z43919.input_async_reset = "none";
defparam ix57479z43919.input_power_up = "low";
defparam ix57479z43919.input_register_mode = "none";
defparam ix57479z43919.input_sync_reset = "none";
defparam ix57479z43919.oe_async_reset = "none";
defparam ix57479z43919.oe_power_up = "low";
defparam ix57479z43919.oe_register_mode = "none";
defparam ix57479z43919.oe_sync_reset = "none";
defparam ix57479z43919.operation_mode = "output";
defparam ix57479z43919.output_async_reset = "none";
defparam ix57479z43919.output_power_up = "low";
defparam ix57479z43919.output_register_mode = "none";
defparam ix57479z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J18
cycloneii_io ix56482z43919(
	.datain(nx56482z1),
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
	.padio(o_image0_0_[3]));
// synopsys translate_off
defparam ix56482z43919.input_async_reset = "none";
defparam ix56482z43919.input_power_up = "low";
defparam ix56482z43919.input_register_mode = "none";
defparam ix56482z43919.input_sync_reset = "none";
defparam ix56482z43919.oe_async_reset = "none";
defparam ix56482z43919.oe_power_up = "low";
defparam ix56482z43919.oe_register_mode = "none";
defparam ix56482z43919.oe_sync_reset = "none";
defparam ix56482z43919.operation_mode = "output";
defparam ix56482z43919.output_async_reset = "none";
defparam ix56482z43919.output_power_up = "low";
defparam ix56482z43919.output_register_mode = "none";
defparam ix56482z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H26
cycloneii_io ix55485z43919(
	.datain(nx55485z1),
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
	.padio(o_image0_0_[4]));
// synopsys translate_off
defparam ix55485z43919.input_async_reset = "none";
defparam ix55485z43919.input_power_up = "low";
defparam ix55485z43919.input_register_mode = "none";
defparam ix55485z43919.input_sync_reset = "none";
defparam ix55485z43919.oe_async_reset = "none";
defparam ix55485z43919.oe_power_up = "low";
defparam ix55485z43919.oe_register_mode = "none";
defparam ix55485z43919.oe_sync_reset = "none";
defparam ix55485z43919.operation_mode = "output";
defparam ix55485z43919.output_async_reset = "none";
defparam ix55485z43919.output_power_up = "low";
defparam ix55485z43919.output_register_mode = "none";
defparam ix55485z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D20
cycloneii_io ix54488z43919(
	.datain(nx54488z1),
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
	.padio(o_image0_0_[5]));
// synopsys translate_off
defparam ix54488z43919.input_async_reset = "none";
defparam ix54488z43919.input_power_up = "low";
defparam ix54488z43919.input_register_mode = "none";
defparam ix54488z43919.input_sync_reset = "none";
defparam ix54488z43919.oe_async_reset = "none";
defparam ix54488z43919.oe_power_up = "low";
defparam ix54488z43919.oe_register_mode = "none";
defparam ix54488z43919.oe_sync_reset = "none";
defparam ix54488z43919.operation_mode = "output";
defparam ix54488z43919.output_async_reset = "none";
defparam ix54488z43919.output_power_up = "low";
defparam ix54488z43919.output_register_mode = "none";
defparam ix54488z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A22
cycloneii_io ix53491z43919(
	.datain(nx53491z1),
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
	.padio(o_image0_0_[6]));
// synopsys translate_off
defparam ix53491z43919.input_async_reset = "none";
defparam ix53491z43919.input_power_up = "low";
defparam ix53491z43919.input_register_mode = "none";
defparam ix53491z43919.input_sync_reset = "none";
defparam ix53491z43919.oe_async_reset = "none";
defparam ix53491z43919.oe_power_up = "low";
defparam ix53491z43919.oe_register_mode = "none";
defparam ix53491z43919.oe_sync_reset = "none";
defparam ix53491z43919.operation_mode = "output";
defparam ix53491z43919.output_async_reset = "none";
defparam ix53491z43919.output_power_up = "low";
defparam ix53491z43919.output_register_mode = "none";
defparam ix53491z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J23
cycloneii_io ix52494z43919(
	.datain(nx52494z1),
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
	.padio(o_image0_0_[7]));
// synopsys translate_off
defparam ix52494z43919.input_async_reset = "none";
defparam ix52494z43919.input_power_up = "low";
defparam ix52494z43919.input_register_mode = "none";
defparam ix52494z43919.input_sync_reset = "none";
defparam ix52494z43919.oe_async_reset = "none";
defparam ix52494z43919.oe_power_up = "low";
defparam ix52494z43919.oe_register_mode = "none";
defparam ix52494z43919.oe_sync_reset = "none";
defparam ix52494z43919.operation_mode = "output";
defparam ix52494z43919.output_async_reset = "none";
defparam ix52494z43919.output_power_up = "low";
defparam ix52494z43919.output_register_mode = "none";
defparam ix52494z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE21
cycloneii_io ix64608z43919(
	.datain(nx64608z1),
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
	.padio(o_image0_1_[0]));
// synopsys translate_off
defparam ix64608z43919.input_async_reset = "none";
defparam ix64608z43919.input_power_up = "low";
defparam ix64608z43919.input_register_mode = "none";
defparam ix64608z43919.input_sync_reset = "none";
defparam ix64608z43919.oe_async_reset = "none";
defparam ix64608z43919.oe_power_up = "low";
defparam ix64608z43919.oe_register_mode = "none";
defparam ix64608z43919.oe_sync_reset = "none";
defparam ix64608z43919.operation_mode = "output";
defparam ix64608z43919.output_async_reset = "none";
defparam ix64608z43919.output_power_up = "low";
defparam ix64608z43919.output_register_mode = "none";
defparam ix64608z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U26
cycloneii_io ix63611z43919(
	.datain(nx63611z1),
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
	.padio(o_image0_1_[1]));
// synopsys translate_off
defparam ix63611z43919.input_async_reset = "none";
defparam ix63611z43919.input_power_up = "low";
defparam ix63611z43919.input_register_mode = "none";
defparam ix63611z43919.input_sync_reset = "none";
defparam ix63611z43919.oe_async_reset = "none";
defparam ix63611z43919.oe_power_up = "low";
defparam ix63611z43919.oe_register_mode = "none";
defparam ix63611z43919.oe_sync_reset = "none";
defparam ix63611z43919.operation_mode = "output";
defparam ix63611z43919.output_async_reset = "none";
defparam ix63611z43919.output_power_up = "low";
defparam ix63611z43919.output_register_mode = "none";
defparam ix63611z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF20
cycloneii_io ix62614z43919(
	.datain(nx62614z1),
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
	.padio(o_image0_1_[2]));
// synopsys translate_off
defparam ix62614z43919.input_async_reset = "none";
defparam ix62614z43919.input_power_up = "low";
defparam ix62614z43919.input_register_mode = "none";
defparam ix62614z43919.input_sync_reset = "none";
defparam ix62614z43919.oe_async_reset = "none";
defparam ix62614z43919.oe_power_up = "low";
defparam ix62614z43919.oe_register_mode = "none";
defparam ix62614z43919.oe_sync_reset = "none";
defparam ix62614z43919.operation_mode = "output";
defparam ix62614z43919.output_async_reset = "none";
defparam ix62614z43919.output_power_up = "low";
defparam ix62614z43919.output_register_mode = "none";
defparam ix62614z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC20
cycloneii_io ix61617z43919(
	.datain(nx61617z1),
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
	.padio(o_image0_1_[3]));
// synopsys translate_off
defparam ix61617z43919.input_async_reset = "none";
defparam ix61617z43919.input_power_up = "low";
defparam ix61617z43919.input_register_mode = "none";
defparam ix61617z43919.input_sync_reset = "none";
defparam ix61617z43919.oe_async_reset = "none";
defparam ix61617z43919.oe_power_up = "low";
defparam ix61617z43919.oe_register_mode = "none";
defparam ix61617z43919.oe_sync_reset = "none";
defparam ix61617z43919.operation_mode = "output";
defparam ix61617z43919.output_async_reset = "none";
defparam ix61617z43919.output_power_up = "low";
defparam ix61617z43919.output_register_mode = "none";
defparam ix61617z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C17
cycloneii_io ix60620z43919(
	.datain(nx60620z1),
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
	.padio(o_image0_1_[4]));
// synopsys translate_off
defparam ix60620z43919.input_async_reset = "none";
defparam ix60620z43919.input_power_up = "low";
defparam ix60620z43919.input_register_mode = "none";
defparam ix60620z43919.input_sync_reset = "none";
defparam ix60620z43919.oe_async_reset = "none";
defparam ix60620z43919.oe_power_up = "low";
defparam ix60620z43919.oe_register_mode = "none";
defparam ix60620z43919.oe_sync_reset = "none";
defparam ix60620z43919.operation_mode = "output";
defparam ix60620z43919.output_async_reset = "none";
defparam ix60620z43919.output_power_up = "low";
defparam ix60620z43919.output_register_mode = "none";
defparam ix60620z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H25
cycloneii_io ix59623z43919(
	.datain(nx59623z1),
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
	.padio(o_image0_1_[5]));
// synopsys translate_off
defparam ix59623z43919.input_async_reset = "none";
defparam ix59623z43919.input_power_up = "low";
defparam ix59623z43919.input_register_mode = "none";
defparam ix59623z43919.input_sync_reset = "none";
defparam ix59623z43919.oe_async_reset = "none";
defparam ix59623z43919.oe_power_up = "low";
defparam ix59623z43919.oe_register_mode = "none";
defparam ix59623z43919.oe_sync_reset = "none";
defparam ix59623z43919.operation_mode = "output";
defparam ix59623z43919.output_async_reset = "none";
defparam ix59623z43919.output_power_up = "low";
defparam ix59623z43919.output_register_mode = "none";
defparam ix59623z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M22
cycloneii_io ix58626z43919(
	.datain(nx58626z1),
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
	.padio(o_image0_1_[6]));
// synopsys translate_off
defparam ix58626z43919.input_async_reset = "none";
defparam ix58626z43919.input_power_up = "low";
defparam ix58626z43919.input_register_mode = "none";
defparam ix58626z43919.input_sync_reset = "none";
defparam ix58626z43919.oe_async_reset = "none";
defparam ix58626z43919.oe_power_up = "low";
defparam ix58626z43919.oe_register_mode = "none";
defparam ix58626z43919.oe_sync_reset = "none";
defparam ix58626z43919.operation_mode = "output";
defparam ix58626z43919.output_async_reset = "none";
defparam ix58626z43919.output_power_up = "low";
defparam ix58626z43919.output_register_mode = "none";
defparam ix58626z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H23
cycloneii_io ix57629z43919(
	.datain(nx57629z1),
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
	.padio(o_image0_1_[7]));
// synopsys translate_off
defparam ix57629z43919.input_async_reset = "none";
defparam ix57629z43919.input_power_up = "low";
defparam ix57629z43919.input_register_mode = "none";
defparam ix57629z43919.input_sync_reset = "none";
defparam ix57629z43919.oe_async_reset = "none";
defparam ix57629z43919.oe_power_up = "low";
defparam ix57629z43919.oe_register_mode = "none";
defparam ix57629z43919.oe_sync_reset = "none";
defparam ix57629z43919.operation_mode = "output";
defparam ix57629z43919.output_async_reset = "none";
defparam ix57629z43919.output_power_up = "low";
defparam ix57629z43919.output_register_mode = "none";
defparam ix57629z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K24
cycloneii_io ix4207z43919(
	.datain(nx4207z1),
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
	.padio(o_image0_2_[0]));
// synopsys translate_off
defparam ix4207z43919.input_async_reset = "none";
defparam ix4207z43919.input_power_up = "low";
defparam ix4207z43919.input_register_mode = "none";
defparam ix4207z43919.input_sync_reset = "none";
defparam ix4207z43919.oe_async_reset = "none";
defparam ix4207z43919.oe_power_up = "low";
defparam ix4207z43919.oe_register_mode = "none";
defparam ix4207z43919.oe_sync_reset = "none";
defparam ix4207z43919.operation_mode = "output";
defparam ix4207z43919.output_async_reset = "none";
defparam ix4207z43919.output_power_up = "low";
defparam ix4207z43919.output_register_mode = "none";
defparam ix4207z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M20
cycloneii_io ix3210z43919(
	.datain(nx3210z1),
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
	.padio(o_image0_2_[1]));
// synopsys translate_off
defparam ix3210z43919.input_async_reset = "none";
defparam ix3210z43919.input_power_up = "low";
defparam ix3210z43919.input_register_mode = "none";
defparam ix3210z43919.input_sync_reset = "none";
defparam ix3210z43919.oe_async_reset = "none";
defparam ix3210z43919.oe_power_up = "low";
defparam ix3210z43919.oe_register_mode = "none";
defparam ix3210z43919.oe_sync_reset = "none";
defparam ix3210z43919.operation_mode = "output";
defparam ix3210z43919.output_async_reset = "none";
defparam ix3210z43919.output_power_up = "low";
defparam ix3210z43919.output_register_mode = "none";
defparam ix3210z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B19
cycloneii_io ix2213z43919(
	.datain(nx2213z1),
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
	.padio(o_image0_2_[2]));
// synopsys translate_off
defparam ix2213z43919.input_async_reset = "none";
defparam ix2213z43919.input_power_up = "low";
defparam ix2213z43919.input_register_mode = "none";
defparam ix2213z43919.input_sync_reset = "none";
defparam ix2213z43919.oe_async_reset = "none";
defparam ix2213z43919.oe_power_up = "low";
defparam ix2213z43919.oe_register_mode = "none";
defparam ix2213z43919.oe_sync_reset = "none";
defparam ix2213z43919.operation_mode = "output";
defparam ix2213z43919.output_async_reset = "none";
defparam ix2213z43919.output_power_up = "low";
defparam ix2213z43919.output_register_mode = "none";
defparam ix2213z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G25
cycloneii_io ix1216z43919(
	.datain(nx1216z1),
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
	.padio(o_image0_2_[3]));
// synopsys translate_off
defparam ix1216z43919.input_async_reset = "none";
defparam ix1216z43919.input_power_up = "low";
defparam ix1216z43919.input_register_mode = "none";
defparam ix1216z43919.input_sync_reset = "none";
defparam ix1216z43919.oe_async_reset = "none";
defparam ix1216z43919.oe_power_up = "low";
defparam ix1216z43919.oe_register_mode = "none";
defparam ix1216z43919.oe_sync_reset = "none";
defparam ix1216z43919.operation_mode = "output";
defparam ix1216z43919.output_async_reset = "none";
defparam ix1216z43919.output_power_up = "low";
defparam ix1216z43919.output_register_mode = "none";
defparam ix1216z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H24
cycloneii_io ix219z43919(
	.datain(nx219z1),
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
	.padio(o_image0_2_[4]));
// synopsys translate_off
defparam ix219z43919.input_async_reset = "none";
defparam ix219z43919.input_power_up = "low";
defparam ix219z43919.input_register_mode = "none";
defparam ix219z43919.input_sync_reset = "none";
defparam ix219z43919.oe_async_reset = "none";
defparam ix219z43919.oe_power_up = "low";
defparam ix219z43919.oe_register_mode = "none";
defparam ix219z43919.oe_sync_reset = "none";
defparam ix219z43919.operation_mode = "output";
defparam ix219z43919.output_async_reset = "none";
defparam ix219z43919.output_power_up = "low";
defparam ix219z43919.output_register_mode = "none";
defparam ix219z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K16
cycloneii_io ix64758z43919(
	.datain(nx64758z1),
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
	.padio(o_image0_2_[5]));
// synopsys translate_off
defparam ix64758z43919.input_async_reset = "none";
defparam ix64758z43919.input_power_up = "low";
defparam ix64758z43919.input_register_mode = "none";
defparam ix64758z43919.input_sync_reset = "none";
defparam ix64758z43919.oe_async_reset = "none";
defparam ix64758z43919.oe_power_up = "low";
defparam ix64758z43919.oe_register_mode = "none";
defparam ix64758z43919.oe_sync_reset = "none";
defparam ix64758z43919.operation_mode = "output";
defparam ix64758z43919.output_async_reset = "none";
defparam ix64758z43919.output_power_up = "low";
defparam ix64758z43919.output_register_mode = "none";
defparam ix64758z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B20
cycloneii_io ix63761z43919(
	.datain(nx63761z1),
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
	.padio(o_image0_2_[6]));
// synopsys translate_off
defparam ix63761z43919.input_async_reset = "none";
defparam ix63761z43919.input_power_up = "low";
defparam ix63761z43919.input_register_mode = "none";
defparam ix63761z43919.input_sync_reset = "none";
defparam ix63761z43919.oe_async_reset = "none";
defparam ix63761z43919.oe_power_up = "low";
defparam ix63761z43919.oe_register_mode = "none";
defparam ix63761z43919.oe_sync_reset = "none";
defparam ix63761z43919.operation_mode = "output";
defparam ix63761z43919.output_async_reset = "none";
defparam ix63761z43919.output_power_up = "low";
defparam ix63761z43919.output_register_mode = "none";
defparam ix63761z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M19
cycloneii_io ix62764z43919(
	.datain(nx62764z1),
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
	.padio(o_image0_2_[7]));
// synopsys translate_off
defparam ix62764z43919.input_async_reset = "none";
defparam ix62764z43919.input_power_up = "low";
defparam ix62764z43919.input_register_mode = "none";
defparam ix62764z43919.input_sync_reset = "none";
defparam ix62764z43919.oe_async_reset = "none";
defparam ix62764z43919.oe_power_up = "low";
defparam ix62764z43919.oe_register_mode = "none";
defparam ix62764z43919.oe_sync_reset = "none";
defparam ix62764z43919.operation_mode = "output";
defparam ix62764z43919.output_async_reset = "none";
defparam ix62764z43919.output_power_up = "low";
defparam ix62764z43919.output_register_mode = "none";
defparam ix62764z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B18
cycloneii_io ix41208z43919(
	.datain(nx41208z1),
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
	.padio(o_image1_0_[0]));
// synopsys translate_off
defparam ix41208z43919.input_async_reset = "none";
defparam ix41208z43919.input_power_up = "low";
defparam ix41208z43919.input_register_mode = "none";
defparam ix41208z43919.input_sync_reset = "none";
defparam ix41208z43919.oe_async_reset = "none";
defparam ix41208z43919.oe_power_up = "low";
defparam ix41208z43919.oe_register_mode = "none";
defparam ix41208z43919.oe_sync_reset = "none";
defparam ix41208z43919.operation_mode = "output";
defparam ix41208z43919.output_async_reset = "none";
defparam ix41208z43919.output_power_up = "low";
defparam ix41208z43919.output_register_mode = "none";
defparam ix41208z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J26
cycloneii_io ix42205z43919(
	.datain(nx42205z1),
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
	.padio(o_image1_0_[1]));
// synopsys translate_off
defparam ix42205z43919.input_async_reset = "none";
defparam ix42205z43919.input_power_up = "low";
defparam ix42205z43919.input_register_mode = "none";
defparam ix42205z43919.input_sync_reset = "none";
defparam ix42205z43919.oe_async_reset = "none";
defparam ix42205z43919.oe_power_up = "low";
defparam ix42205z43919.oe_register_mode = "none";
defparam ix42205z43919.oe_sync_reset = "none";
defparam ix42205z43919.operation_mode = "output";
defparam ix42205z43919.output_async_reset = "none";
defparam ix42205z43919.output_power_up = "low";
defparam ix42205z43919.output_register_mode = "none";
defparam ix42205z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U17
cycloneii_io ix43202z43919(
	.datain(nx43202z1),
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
	.padio(o_image1_0_[2]));
// synopsys translate_off
defparam ix43202z43919.input_async_reset = "none";
defparam ix43202z43919.input_power_up = "low";
defparam ix43202z43919.input_register_mode = "none";
defparam ix43202z43919.input_sync_reset = "none";
defparam ix43202z43919.oe_async_reset = "none";
defparam ix43202z43919.oe_power_up = "low";
defparam ix43202z43919.oe_register_mode = "none";
defparam ix43202z43919.oe_sync_reset = "none";
defparam ix43202z43919.operation_mode = "output";
defparam ix43202z43919.output_async_reset = "none";
defparam ix43202z43919.output_power_up = "low";
defparam ix43202z43919.output_register_mode = "none";
defparam ix43202z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K17
cycloneii_io ix44199z43919(
	.datain(nx44199z1),
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
	.padio(o_image1_0_[3]));
// synopsys translate_off
defparam ix44199z43919.input_async_reset = "none";
defparam ix44199z43919.input_power_up = "low";
defparam ix44199z43919.input_register_mode = "none";
defparam ix44199z43919.input_sync_reset = "none";
defparam ix44199z43919.oe_async_reset = "none";
defparam ix44199z43919.oe_power_up = "low";
defparam ix44199z43919.oe_register_mode = "none";
defparam ix44199z43919.oe_sync_reset = "none";
defparam ix44199z43919.operation_mode = "output";
defparam ix44199z43919.output_async_reset = "none";
defparam ix44199z43919.output_power_up = "low";
defparam ix44199z43919.output_register_mode = "none";
defparam ix44199z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H19
cycloneii_io ix45196z43919(
	.datain(nx45196z1),
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
	.padio(o_image1_0_[4]));
// synopsys translate_off
defparam ix45196z43919.input_async_reset = "none";
defparam ix45196z43919.input_power_up = "low";
defparam ix45196z43919.input_register_mode = "none";
defparam ix45196z43919.input_sync_reset = "none";
defparam ix45196z43919.oe_async_reset = "none";
defparam ix45196z43919.oe_power_up = "low";
defparam ix45196z43919.oe_register_mode = "none";
defparam ix45196z43919.oe_sync_reset = "none";
defparam ix45196z43919.operation_mode = "output";
defparam ix45196z43919.output_async_reset = "none";
defparam ix45196z43919.output_power_up = "low";
defparam ix45196z43919.output_register_mode = "none";
defparam ix45196z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G26
cycloneii_io ix46193z43919(
	.datain(nx46193z1),
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
	.padio(o_image1_0_[5]));
// synopsys translate_off
defparam ix46193z43919.input_async_reset = "none";
defparam ix46193z43919.input_power_up = "low";
defparam ix46193z43919.input_register_mode = "none";
defparam ix46193z43919.input_sync_reset = "none";
defparam ix46193z43919.oe_async_reset = "none";
defparam ix46193z43919.oe_power_up = "low";
defparam ix46193z43919.oe_register_mode = "none";
defparam ix46193z43919.oe_sync_reset = "none";
defparam ix46193z43919.operation_mode = "output";
defparam ix46193z43919.output_async_reset = "none";
defparam ix46193z43919.output_power_up = "low";
defparam ix46193z43919.output_register_mode = "none";
defparam ix46193z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A20
cycloneii_io ix47190z43919(
	.datain(nx47190z1),
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
	.padio(o_image1_0_[6]));
// synopsys translate_off
defparam ix47190z43919.input_async_reset = "none";
defparam ix47190z43919.input_power_up = "low";
defparam ix47190z43919.input_register_mode = "none";
defparam ix47190z43919.input_sync_reset = "none";
defparam ix47190z43919.oe_async_reset = "none";
defparam ix47190z43919.oe_power_up = "low";
defparam ix47190z43919.oe_register_mode = "none";
defparam ix47190z43919.oe_sync_reset = "none";
defparam ix47190z43919.operation_mode = "output";
defparam ix47190z43919.output_async_reset = "none";
defparam ix47190z43919.output_power_up = "low";
defparam ix47190z43919.output_register_mode = "none";
defparam ix47190z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE20
cycloneii_io ix48187z43919(
	.datain(nx48187z1),
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
	.padio(o_image1_0_[7]));
// synopsys translate_off
defparam ix48187z43919.input_async_reset = "none";
defparam ix48187z43919.input_power_up = "low";
defparam ix48187z43919.input_register_mode = "none";
defparam ix48187z43919.input_sync_reset = "none";
defparam ix48187z43919.oe_async_reset = "none";
defparam ix48187z43919.oe_power_up = "low";
defparam ix48187z43919.oe_register_mode = "none";
defparam ix48187z43919.oe_sync_reset = "none";
defparam ix48187z43919.operation_mode = "output";
defparam ix48187z43919.output_async_reset = "none";
defparam ix48187z43919.output_power_up = "low";
defparam ix48187z43919.output_register_mode = "none";
defparam ix48187z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB20
cycloneii_io ix36073z43919(
	.datain(nx36073z1),
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
	.padio(o_image1_1_[0]));
// synopsys translate_off
defparam ix36073z43919.input_async_reset = "none";
defparam ix36073z43919.input_power_up = "low";
defparam ix36073z43919.input_register_mode = "none";
defparam ix36073z43919.input_sync_reset = "none";
defparam ix36073z43919.oe_async_reset = "none";
defparam ix36073z43919.oe_power_up = "low";
defparam ix36073z43919.oe_register_mode = "none";
defparam ix36073z43919.oe_sync_reset = "none";
defparam ix36073z43919.operation_mode = "output";
defparam ix36073z43919.output_async_reset = "none";
defparam ix36073z43919.output_power_up = "low";
defparam ix36073z43919.output_register_mode = "none";
defparam ix36073z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J25
cycloneii_io ix37070z43919(
	.datain(nx37070z1),
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
	.padio(o_image1_1_[1]));
// synopsys translate_off
defparam ix37070z43919.input_async_reset = "none";
defparam ix37070z43919.input_power_up = "low";
defparam ix37070z43919.input_register_mode = "none";
defparam ix37070z43919.input_sync_reset = "none";
defparam ix37070z43919.oe_async_reset = "none";
defparam ix37070z43919.oe_power_up = "low";
defparam ix37070z43919.oe_register_mode = "none";
defparam ix37070z43919.oe_sync_reset = "none";
defparam ix37070z43919.operation_mode = "output";
defparam ix37070z43919.output_async_reset = "none";
defparam ix37070z43919.output_power_up = "low";
defparam ix37070z43919.output_register_mode = "none";
defparam ix37070z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U23
cycloneii_io ix38067z43919(
	.datain(nx38067z1),
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
	.padio(o_image1_1_[2]));
// synopsys translate_off
defparam ix38067z43919.input_async_reset = "none";
defparam ix38067z43919.input_power_up = "low";
defparam ix38067z43919.input_register_mode = "none";
defparam ix38067z43919.input_sync_reset = "none";
defparam ix38067z43919.oe_async_reset = "none";
defparam ix38067z43919.oe_power_up = "low";
defparam ix38067z43919.oe_register_mode = "none";
defparam ix38067z43919.oe_sync_reset = "none";
defparam ix38067z43919.operation_mode = "output";
defparam ix38067z43919.output_async_reset = "none";
defparam ix38067z43919.output_power_up = "low";
defparam ix38067z43919.output_register_mode = "none";
defparam ix38067z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R19
cycloneii_io ix39064z43919(
	.datain(nx39064z1),
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
	.padio(o_image1_1_[3]));
// synopsys translate_off
defparam ix39064z43919.input_async_reset = "none";
defparam ix39064z43919.input_power_up = "low";
defparam ix39064z43919.input_register_mode = "none";
defparam ix39064z43919.input_sync_reset = "none";
defparam ix39064z43919.oe_async_reset = "none";
defparam ix39064z43919.oe_power_up = "low";
defparam ix39064z43919.oe_register_mode = "none";
defparam ix39064z43919.oe_sync_reset = "none";
defparam ix39064z43919.operation_mode = "output";
defparam ix39064z43919.output_async_reset = "none";
defparam ix39064z43919.output_power_up = "low";
defparam ix39064z43919.output_register_mode = "none";
defparam ix39064z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF21
cycloneii_io ix40061z43919(
	.datain(nx40061z1),
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
	.padio(o_image1_1_[4]));
// synopsys translate_off
defparam ix40061z43919.input_async_reset = "none";
defparam ix40061z43919.input_power_up = "low";
defparam ix40061z43919.input_register_mode = "none";
defparam ix40061z43919.input_sync_reset = "none";
defparam ix40061z43919.oe_async_reset = "none";
defparam ix40061z43919.oe_power_up = "low";
defparam ix40061z43919.oe_register_mode = "none";
defparam ix40061z43919.oe_sync_reset = "none";
defparam ix40061z43919.operation_mode = "output";
defparam ix40061z43919.output_async_reset = "none";
defparam ix40061z43919.output_power_up = "low";
defparam ix40061z43919.output_register_mode = "none";
defparam ix40061z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K18
cycloneii_io ix41058z43919(
	.datain(nx41058z1),
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
	.padio(o_image1_1_[5]));
// synopsys translate_off
defparam ix41058z43919.input_async_reset = "none";
defparam ix41058z43919.input_power_up = "low";
defparam ix41058z43919.input_register_mode = "none";
defparam ix41058z43919.input_sync_reset = "none";
defparam ix41058z43919.oe_async_reset = "none";
defparam ix41058z43919.oe_power_up = "low";
defparam ix41058z43919.oe_register_mode = "none";
defparam ix41058z43919.oe_sync_reset = "none";
defparam ix41058z43919.operation_mode = "output";
defparam ix41058z43919.output_async_reset = "none";
defparam ix41058z43919.output_power_up = "low";
defparam ix41058z43919.output_register_mode = "none";
defparam ix41058z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K25
cycloneii_io ix42055z43919(
	.datain(nx42055z1),
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
	.padio(o_image1_1_[6]));
// synopsys translate_off
defparam ix42055z43919.input_async_reset = "none";
defparam ix42055z43919.input_power_up = "low";
defparam ix42055z43919.input_register_mode = "none";
defparam ix42055z43919.input_sync_reset = "none";
defparam ix42055z43919.oe_async_reset = "none";
defparam ix42055z43919.oe_power_up = "low";
defparam ix42055z43919.oe_register_mode = "none";
defparam ix42055z43919.oe_sync_reset = "none";
defparam ix42055z43919.operation_mode = "output";
defparam ix42055z43919.output_async_reset = "none";
defparam ix42055z43919.output_power_up = "low";
defparam ix42055z43919.output_register_mode = "none";
defparam ix42055z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K23
cycloneii_io ix43052z43919(
	.datain(nx43052z1),
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
	.padio(o_image1_1_[7]));
// synopsys translate_off
defparam ix43052z43919.input_async_reset = "none";
defparam ix43052z43919.input_power_up = "low";
defparam ix43052z43919.input_register_mode = "none";
defparam ix43052z43919.input_sync_reset = "none";
defparam ix43052z43919.oe_async_reset = "none";
defparam ix43052z43919.oe_power_up = "low";
defparam ix43052z43919.oe_register_mode = "none";
defparam ix43052z43919.oe_sync_reset = "none";
defparam ix43052z43919.operation_mode = "output";
defparam ix43052z43919.output_async_reset = "none";
defparam ix43052z43919.output_power_up = "low";
defparam ix43052z43919.output_register_mode = "none";
defparam ix43052z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G23
cycloneii_io ix30938z43919(
	.datain(nx30938z1),
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
	.padio(o_image1_2_[0]));
// synopsys translate_off
defparam ix30938z43919.input_async_reset = "none";
defparam ix30938z43919.input_power_up = "low";
defparam ix30938z43919.input_register_mode = "none";
defparam ix30938z43919.input_sync_reset = "none";
defparam ix30938z43919.oe_async_reset = "none";
defparam ix30938z43919.oe_power_up = "low";
defparam ix30938z43919.oe_register_mode = "none";
defparam ix30938z43919.oe_sync_reset = "none";
defparam ix30938z43919.operation_mode = "output";
defparam ix30938z43919.output_async_reset = "none";
defparam ix30938z43919.output_power_up = "low";
defparam ix30938z43919.output_register_mode = "none";
defparam ix30938z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD19
cycloneii_io ix31935z43919(
	.datain(nx31935z1),
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
	.padio(o_image1_2_[1]));
// synopsys translate_off
defparam ix31935z43919.input_async_reset = "none";
defparam ix31935z43919.input_power_up = "low";
defparam ix31935z43919.input_register_mode = "none";
defparam ix31935z43919.input_sync_reset = "none";
defparam ix31935z43919.oe_async_reset = "none";
defparam ix31935z43919.oe_power_up = "low";
defparam ix31935z43919.oe_register_mode = "none";
defparam ix31935z43919.oe_sync_reset = "none";
defparam ix31935z43919.operation_mode = "output";
defparam ix31935z43919.output_async_reset = "none";
defparam ix31935z43919.output_power_up = "low";
defparam ix31935z43919.output_register_mode = "none";
defparam ix31935z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J22
cycloneii_io ix32932z43919(
	.datain(nx32932z1),
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
	.padio(o_image1_2_[2]));
// synopsys translate_off
defparam ix32932z43919.input_async_reset = "none";
defparam ix32932z43919.input_power_up = "low";
defparam ix32932z43919.input_register_mode = "none";
defparam ix32932z43919.input_sync_reset = "none";
defparam ix32932z43919.oe_async_reset = "none";
defparam ix32932z43919.oe_power_up = "low";
defparam ix32932z43919.oe_register_mode = "none";
defparam ix32932z43919.oe_sync_reset = "none";
defparam ix32932z43919.operation_mode = "output";
defparam ix32932z43919.output_async_reset = "none";
defparam ix32932z43919.output_power_up = "low";
defparam ix32932z43919.output_register_mode = "none";
defparam ix32932z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M24
cycloneii_io ix33929z43919(
	.datain(nx33929z1),
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
	.padio(o_image1_2_[3]));
// synopsys translate_off
defparam ix33929z43919.input_async_reset = "none";
defparam ix33929z43919.input_power_up = "low";
defparam ix33929z43919.input_register_mode = "none";
defparam ix33929z43919.input_sync_reset = "none";
defparam ix33929z43919.oe_async_reset = "none";
defparam ix33929z43919.oe_power_up = "low";
defparam ix33929z43919.oe_register_mode = "none";
defparam ix33929z43919.oe_sync_reset = "none";
defparam ix33929z43919.operation_mode = "output";
defparam ix33929z43919.output_async_reset = "none";
defparam ix33929z43919.output_power_up = "low";
defparam ix33929z43919.output_register_mode = "none";
defparam ix33929z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J24
cycloneii_io ix34926z43919(
	.datain(nx34926z1),
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
	.padio(o_image1_2_[4]));
// synopsys translate_off
defparam ix34926z43919.input_async_reset = "none";
defparam ix34926z43919.input_power_up = "low";
defparam ix34926z43919.input_register_mode = "none";
defparam ix34926z43919.input_sync_reset = "none";
defparam ix34926z43919.oe_async_reset = "none";
defparam ix34926z43919.oe_power_up = "low";
defparam ix34926z43919.oe_register_mode = "none";
defparam ix34926z43919.oe_sync_reset = "none";
defparam ix34926z43919.operation_mode = "output";
defparam ix34926z43919.output_async_reset = "none";
defparam ix34926z43919.output_power_up = "low";
defparam ix34926z43919.output_register_mode = "none";
defparam ix34926z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A21
cycloneii_io ix35923z43919(
	.datain(nx35923z1),
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
	.padio(o_image1_2_[5]));
// synopsys translate_off
defparam ix35923z43919.input_async_reset = "none";
defparam ix35923z43919.input_power_up = "low";
defparam ix35923z43919.input_register_mode = "none";
defparam ix35923z43919.input_sync_reset = "none";
defparam ix35923z43919.oe_async_reset = "none";
defparam ix35923z43919.oe_power_up = "low";
defparam ix35923z43919.oe_register_mode = "none";
defparam ix35923z43919.oe_sync_reset = "none";
defparam ix35923z43919.operation_mode = "output";
defparam ix35923z43919.output_async_reset = "none";
defparam ix35923z43919.output_power_up = "low";
defparam ix35923z43919.output_register_mode = "none";
defparam ix35923z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G24
cycloneii_io ix36920z43919(
	.datain(nx36920z1),
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
	.padio(o_image1_2_[6]));
// synopsys translate_off
defparam ix36920z43919.input_async_reset = "none";
defparam ix36920z43919.input_power_up = "low";
defparam ix36920z43919.input_register_mode = "none";
defparam ix36920z43919.input_sync_reset = "none";
defparam ix36920z43919.oe_async_reset = "none";
defparam ix36920z43919.oe_power_up = "low";
defparam ix36920z43919.oe_register_mode = "none";
defparam ix36920z43919.oe_sync_reset = "none";
defparam ix36920z43919.operation_mode = "output";
defparam ix36920z43919.output_async_reset = "none";
defparam ix36920z43919.output_power_up = "low";
defparam ix36920z43919.output_register_mode = "none";
defparam ix36920z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K19
cycloneii_io ix37917z43919(
	.datain(nx37917z1),
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
	.padio(o_image1_2_[7]));
// synopsys translate_off
defparam ix37917z43919.input_async_reset = "none";
defparam ix37917z43919.input_power_up = "low";
defparam ix37917z43919.input_register_mode = "none";
defparam ix37917z43919.input_sync_reset = "none";
defparam ix37917z43919.oe_async_reset = "none";
defparam ix37917z43919.oe_power_up = "low";
defparam ix37917z43919.oe_register_mode = "none";
defparam ix37917z43919.oe_sync_reset = "none";
defparam ix37917z43919.operation_mode = "output";
defparam ix37917z43919.output_async_reset = "none";
defparam ix37917z43919.output_power_up = "low";
defparam ix37917z43919.output_register_mode = "none";
defparam ix37917z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M25
cycloneii_io o_image2_obuf_0__0_(
	.datain(u_memory_ap_o_image2_0__0_),
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
	.padio(o_image2_0_[0]));
// synopsys translate_off
defparam o_image2_obuf_0__0_.input_async_reset = "none";
defparam o_image2_obuf_0__0_.input_power_up = "low";
defparam o_image2_obuf_0__0_.input_register_mode = "none";
defparam o_image2_obuf_0__0_.input_sync_reset = "none";
defparam o_image2_obuf_0__0_.oe_async_reset = "none";
defparam o_image2_obuf_0__0_.oe_power_up = "low";
defparam o_image2_obuf_0__0_.oe_register_mode = "none";
defparam o_image2_obuf_0__0_.oe_sync_reset = "none";
defparam o_image2_obuf_0__0_.operation_mode = "output";
defparam o_image2_obuf_0__0_.output_async_reset = "none";
defparam o_image2_obuf_0__0_.output_power_up = "low";
defparam o_image2_obuf_0__0_.output_register_mode = "none";
defparam o_image2_obuf_0__0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L25
cycloneii_io o_image2_obuf_0__1_(
	.datain(u_memory_ap_o_image2_0__1_),
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
	.padio(o_image2_0_[1]));
// synopsys translate_off
defparam o_image2_obuf_0__1_.input_async_reset = "none";
defparam o_image2_obuf_0__1_.input_power_up = "low";
defparam o_image2_obuf_0__1_.input_register_mode = "none";
defparam o_image2_obuf_0__1_.input_sync_reset = "none";
defparam o_image2_obuf_0__1_.oe_async_reset = "none";
defparam o_image2_obuf_0__1_.oe_power_up = "low";
defparam o_image2_obuf_0__1_.oe_register_mode = "none";
defparam o_image2_obuf_0__1_.oe_sync_reset = "none";
defparam o_image2_obuf_0__1_.operation_mode = "output";
defparam o_image2_obuf_0__1_.output_async_reset = "none";
defparam o_image2_obuf_0__1_.output_power_up = "low";
defparam o_image2_obuf_0__1_.output_register_mode = "none";
defparam o_image2_obuf_0__1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N23
cycloneii_io o_image2_obuf_0__2_(
	.datain(u_memory_ap_o_image2_0__2_),
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
	.padio(o_image2_0_[2]));
// synopsys translate_off
defparam o_image2_obuf_0__2_.input_async_reset = "none";
defparam o_image2_obuf_0__2_.input_power_up = "low";
defparam o_image2_obuf_0__2_.input_register_mode = "none";
defparam o_image2_obuf_0__2_.input_sync_reset = "none";
defparam o_image2_obuf_0__2_.oe_async_reset = "none";
defparam o_image2_obuf_0__2_.oe_power_up = "low";
defparam o_image2_obuf_0__2_.oe_register_mode = "none";
defparam o_image2_obuf_0__2_.oe_sync_reset = "none";
defparam o_image2_obuf_0__2_.operation_mode = "output";
defparam o_image2_obuf_0__2_.output_async_reset = "none";
defparam o_image2_obuf_0__2_.output_power_up = "low";
defparam o_image2_obuf_0__2_.output_register_mode = "none";
defparam o_image2_obuf_0__2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF18
cycloneii_io o_image2_obuf_0__3_(
	.datain(u_memory_ap_o_image2_0__3_),
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
	.padio(o_image2_0_[3]));
// synopsys translate_off
defparam o_image2_obuf_0__3_.input_async_reset = "none";
defparam o_image2_obuf_0__3_.input_power_up = "low";
defparam o_image2_obuf_0__3_.input_register_mode = "none";
defparam o_image2_obuf_0__3_.input_sync_reset = "none";
defparam o_image2_obuf_0__3_.oe_async_reset = "none";
defparam o_image2_obuf_0__3_.oe_power_up = "low";
defparam o_image2_obuf_0__3_.oe_register_mode = "none";
defparam o_image2_obuf_0__3_.oe_sync_reset = "none";
defparam o_image2_obuf_0__3_.operation_mode = "output";
defparam o_image2_obuf_0__3_.output_async_reset = "none";
defparam o_image2_obuf_0__3_.output_power_up = "low";
defparam o_image2_obuf_0__3_.output_register_mode = "none";
defparam o_image2_obuf_0__3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L23
cycloneii_io o_image2_obuf_0__4_(
	.datain(u_memory_ap_o_image2_0__4_),
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
	.padio(o_image2_0_[4]));
// synopsys translate_off
defparam o_image2_obuf_0__4_.input_async_reset = "none";
defparam o_image2_obuf_0__4_.input_power_up = "low";
defparam o_image2_obuf_0__4_.input_register_mode = "none";
defparam o_image2_obuf_0__4_.input_sync_reset = "none";
defparam o_image2_obuf_0__4_.oe_async_reset = "none";
defparam o_image2_obuf_0__4_.oe_power_up = "low";
defparam o_image2_obuf_0__4_.oe_register_mode = "none";
defparam o_image2_obuf_0__4_.oe_sync_reset = "none";
defparam o_image2_obuf_0__4_.operation_mode = "output";
defparam o_image2_obuf_0__4_.output_async_reset = "none";
defparam o_image2_obuf_0__4_.output_power_up = "low";
defparam o_image2_obuf_0__4_.output_register_mode = "none";
defparam o_image2_obuf_0__4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L20
cycloneii_io o_image2_obuf_0__5_(
	.datain(u_memory_ap_o_image2_0__5_),
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
	.padio(o_image2_0_[5]));
// synopsys translate_off
defparam o_image2_obuf_0__5_.input_async_reset = "none";
defparam o_image2_obuf_0__5_.input_power_up = "low";
defparam o_image2_obuf_0__5_.input_register_mode = "none";
defparam o_image2_obuf_0__5_.input_sync_reset = "none";
defparam o_image2_obuf_0__5_.oe_async_reset = "none";
defparam o_image2_obuf_0__5_.oe_power_up = "low";
defparam o_image2_obuf_0__5_.oe_register_mode = "none";
defparam o_image2_obuf_0__5_.oe_sync_reset = "none";
defparam o_image2_obuf_0__5_.operation_mode = "output";
defparam o_image2_obuf_0__5_.output_async_reset = "none";
defparam o_image2_obuf_0__5_.output_power_up = "low";
defparam o_image2_obuf_0__5_.output_register_mode = "none";
defparam o_image2_obuf_0__5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E20
cycloneii_io o_image2_obuf_0__6_(
	.datain(u_memory_ap_o_image2_0__6_),
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
	.padio(o_image2_0_[6]));
// synopsys translate_off
defparam o_image2_obuf_0__6_.input_async_reset = "none";
defparam o_image2_obuf_0__6_.input_power_up = "low";
defparam o_image2_obuf_0__6_.input_register_mode = "none";
defparam o_image2_obuf_0__6_.input_sync_reset = "none";
defparam o_image2_obuf_0__6_.oe_async_reset = "none";
defparam o_image2_obuf_0__6_.oe_power_up = "low";
defparam o_image2_obuf_0__6_.oe_register_mode = "none";
defparam o_image2_obuf_0__6_.oe_sync_reset = "none";
defparam o_image2_obuf_0__6_.operation_mode = "output";
defparam o_image2_obuf_0__6_.output_async_reset = "none";
defparam o_image2_obuf_0__6_.output_power_up = "low";
defparam o_image2_obuf_0__6_.output_register_mode = "none";
defparam o_image2_obuf_0__6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L19
cycloneii_io o_image2_obuf_0__7_(
	.datain(u_memory_ap_o_image2_0__7_),
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
	.padio(o_image2_0_[7]));
// synopsys translate_off
defparam o_image2_obuf_0__7_.input_async_reset = "none";
defparam o_image2_obuf_0__7_.input_power_up = "low";
defparam o_image2_obuf_0__7_.input_register_mode = "none";
defparam o_image2_obuf_0__7_.input_sync_reset = "none";
defparam o_image2_obuf_0__7_.oe_async_reset = "none";
defparam o_image2_obuf_0__7_.oe_power_up = "low";
defparam o_image2_obuf_0__7_.oe_register_mode = "none";
defparam o_image2_obuf_0__7_.oe_sync_reset = "none";
defparam o_image2_obuf_0__7_.operation_mode = "output";
defparam o_image2_obuf_0__7_.output_async_reset = "none";
defparam o_image2_obuf_0__7_.output_power_up = "low";
defparam o_image2_obuf_0__7_.output_register_mode = "none";
defparam o_image2_obuf_0__7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T23
cycloneii_io o_image2_obuf_1__0_(
	.datain(u_memory_ap_o_image2_1__0_),
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
	.padio(o_image2_1_[0]));
// synopsys translate_off
defparam o_image2_obuf_1__0_.input_async_reset = "none";
defparam o_image2_obuf_1__0_.input_power_up = "low";
defparam o_image2_obuf_1__0_.input_register_mode = "none";
defparam o_image2_obuf_1__0_.input_sync_reset = "none";
defparam o_image2_obuf_1__0_.oe_async_reset = "none";
defparam o_image2_obuf_1__0_.oe_power_up = "low";
defparam o_image2_obuf_1__0_.oe_register_mode = "none";
defparam o_image2_obuf_1__0_.oe_sync_reset = "none";
defparam o_image2_obuf_1__0_.operation_mode = "output";
defparam o_image2_obuf_1__0_.output_async_reset = "none";
defparam o_image2_obuf_1__0_.output_power_up = "low";
defparam o_image2_obuf_1__0_.output_register_mode = "none";
defparam o_image2_obuf_1__0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N24
cycloneii_io o_image2_obuf_1__1_(
	.datain(u_memory_ap_o_image2_1__1_),
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
	.padio(o_image2_1_[1]));
// synopsys translate_off
defparam o_image2_obuf_1__1_.input_async_reset = "none";
defparam o_image2_obuf_1__1_.input_power_up = "low";
defparam o_image2_obuf_1__1_.input_register_mode = "none";
defparam o_image2_obuf_1__1_.input_sync_reset = "none";
defparam o_image2_obuf_1__1_.oe_async_reset = "none";
defparam o_image2_obuf_1__1_.oe_power_up = "low";
defparam o_image2_obuf_1__1_.oe_register_mode = "none";
defparam o_image2_obuf_1__1_.oe_sync_reset = "none";
defparam o_image2_obuf_1__1_.operation_mode = "output";
defparam o_image2_obuf_1__1_.output_async_reset = "none";
defparam o_image2_obuf_1__1_.output_power_up = "low";
defparam o_image2_obuf_1__1_.output_register_mode = "none";
defparam o_image2_obuf_1__1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D19
cycloneii_io o_image2_obuf_1__2_(
	.datain(u_memory_ap_o_image2_1__2_),
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
	.padio(o_image2_1_[2]));
// synopsys translate_off
defparam o_image2_obuf_1__2_.input_async_reset = "none";
defparam o_image2_obuf_1__2_.input_power_up = "low";
defparam o_image2_obuf_1__2_.input_register_mode = "none";
defparam o_image2_obuf_1__2_.input_sync_reset = "none";
defparam o_image2_obuf_1__2_.oe_async_reset = "none";
defparam o_image2_obuf_1__2_.oe_power_up = "low";
defparam o_image2_obuf_1__2_.oe_register_mode = "none";
defparam o_image2_obuf_1__2_.oe_sync_reset = "none";
defparam o_image2_obuf_1__2_.operation_mode = "output";
defparam o_image2_obuf_1__2_.output_async_reset = "none";
defparam o_image2_obuf_1__2_.output_power_up = "low";
defparam o_image2_obuf_1__2_.output_register_mode = "none";
defparam o_image2_obuf_1__2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C19
cycloneii_io o_image2_obuf_1__3_(
	.datain(u_memory_ap_o_image2_1__3_),
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
	.padio(o_image2_1_[3]));
// synopsys translate_off
defparam o_image2_obuf_1__3_.input_async_reset = "none";
defparam o_image2_obuf_1__3_.input_power_up = "low";
defparam o_image2_obuf_1__3_.input_register_mode = "none";
defparam o_image2_obuf_1__3_.input_sync_reset = "none";
defparam o_image2_obuf_1__3_.oe_async_reset = "none";
defparam o_image2_obuf_1__3_.oe_power_up = "low";
defparam o_image2_obuf_1__3_.oe_register_mode = "none";
defparam o_image2_obuf_1__3_.oe_sync_reset = "none";
defparam o_image2_obuf_1__3_.operation_mode = "output";
defparam o_image2_obuf_1__3_.output_async_reset = "none";
defparam o_image2_obuf_1__3_.output_power_up = "low";
defparam o_image2_obuf_1__3_.output_register_mode = "none";
defparam o_image2_obuf_1__3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J16
cycloneii_io o_image2_obuf_1__4_(
	.datain(u_memory_ap_o_image2_1__4_),
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
	.padio(o_image2_1_[4]));
// synopsys translate_off
defparam o_image2_obuf_1__4_.input_async_reset = "none";
defparam o_image2_obuf_1__4_.input_power_up = "low";
defparam o_image2_obuf_1__4_.input_register_mode = "none";
defparam o_image2_obuf_1__4_.input_sync_reset = "none";
defparam o_image2_obuf_1__4_.oe_async_reset = "none";
defparam o_image2_obuf_1__4_.oe_power_up = "low";
defparam o_image2_obuf_1__4_.oe_register_mode = "none";
defparam o_image2_obuf_1__4_.oe_sync_reset = "none";
defparam o_image2_obuf_1__4_.operation_mode = "output";
defparam o_image2_obuf_1__4_.output_async_reset = "none";
defparam o_image2_obuf_1__4_.output_power_up = "low";
defparam o_image2_obuf_1__4_.output_register_mode = "none";
defparam o_image2_obuf_1__4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K26
cycloneii_io o_image2_obuf_1__5_(
	.datain(u_memory_ap_o_image2_1__5_),
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
	.padio(o_image2_1_[5]));
// synopsys translate_off
defparam o_image2_obuf_1__5_.input_async_reset = "none";
defparam o_image2_obuf_1__5_.input_power_up = "low";
defparam o_image2_obuf_1__5_.input_register_mode = "none";
defparam o_image2_obuf_1__5_.input_sync_reset = "none";
defparam o_image2_obuf_1__5_.oe_async_reset = "none";
defparam o_image2_obuf_1__5_.oe_power_up = "low";
defparam o_image2_obuf_1__5_.oe_register_mode = "none";
defparam o_image2_obuf_1__5_.oe_sync_reset = "none";
defparam o_image2_obuf_1__5_.operation_mode = "output";
defparam o_image2_obuf_1__5_.output_async_reset = "none";
defparam o_image2_obuf_1__5_.output_power_up = "low";
defparam o_image2_obuf_1__5_.output_register_mode = "none";
defparam o_image2_obuf_1__5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A19
cycloneii_io o_image2_obuf_1__6_(
	.datain(u_memory_ap_o_image2_1__6_),
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
	.padio(o_image2_1_[6]));
// synopsys translate_off
defparam o_image2_obuf_1__6_.input_async_reset = "none";
defparam o_image2_obuf_1__6_.input_power_up = "low";
defparam o_image2_obuf_1__6_.input_register_mode = "none";
defparam o_image2_obuf_1__6_.input_sync_reset = "none";
defparam o_image2_obuf_1__6_.oe_async_reset = "none";
defparam o_image2_obuf_1__6_.oe_power_up = "low";
defparam o_image2_obuf_1__6_.oe_register_mode = "none";
defparam o_image2_obuf_1__6_.oe_sync_reset = "none";
defparam o_image2_obuf_1__6_.operation_mode = "output";
defparam o_image2_obuf_1__6_.output_async_reset = "none";
defparam o_image2_obuf_1__6_.output_power_up = "low";
defparam o_image2_obuf_1__6_.output_register_mode = "none";
defparam o_image2_obuf_1__6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M21
cycloneii_io o_image2_obuf_1__7_(
	.datain(u_memory_ap_o_image2_1__7_),
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
	.padio(o_image2_1_[7]));
// synopsys translate_off
defparam o_image2_obuf_1__7_.input_async_reset = "none";
defparam o_image2_obuf_1__7_.input_power_up = "low";
defparam o_image2_obuf_1__7_.input_register_mode = "none";
defparam o_image2_obuf_1__7_.input_sync_reset = "none";
defparam o_image2_obuf_1__7_.oe_async_reset = "none";
defparam o_image2_obuf_1__7_.oe_power_up = "low";
defparam o_image2_obuf_1__7_.oe_register_mode = "none";
defparam o_image2_obuf_1__7_.oe_sync_reset = "none";
defparam o_image2_obuf_1__7_.operation_mode = "output";
defparam o_image2_obuf_1__7_.output_async_reset = "none";
defparam o_image2_obuf_1__7_.output_power_up = "low";
defparam o_image2_obuf_1__7_.output_register_mode = "none";
defparam o_image2_obuf_1__7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T22
cycloneii_io o_image2_obuf_2__0_(
	.datain(u_memory_ap_o_image2_2__0_),
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
	.padio(o_image2_2_[0]));
// synopsys translate_off
defparam o_image2_obuf_2__0_.input_async_reset = "none";
defparam o_image2_obuf_2__0_.input_power_up = "low";
defparam o_image2_obuf_2__0_.input_register_mode = "none";
defparam o_image2_obuf_2__0_.input_sync_reset = "none";
defparam o_image2_obuf_2__0_.oe_async_reset = "none";
defparam o_image2_obuf_2__0_.oe_power_up = "low";
defparam o_image2_obuf_2__0_.oe_register_mode = "none";
defparam o_image2_obuf_2__0_.oe_sync_reset = "none";
defparam o_image2_obuf_2__0_.operation_mode = "output";
defparam o_image2_obuf_2__0_.output_async_reset = "none";
defparam o_image2_obuf_2__0_.output_power_up = "low";
defparam o_image2_obuf_2__0_.output_register_mode = "none";
defparam o_image2_obuf_2__0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T20
cycloneii_io o_image2_obuf_2__1_(
	.datain(u_memory_ap_o_image2_2__1_),
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
	.padio(o_image2_2_[1]));
// synopsys translate_off
defparam o_image2_obuf_2__1_.input_async_reset = "none";
defparam o_image2_obuf_2__1_.input_power_up = "low";
defparam o_image2_obuf_2__1_.input_register_mode = "none";
defparam o_image2_obuf_2__1_.input_sync_reset = "none";
defparam o_image2_obuf_2__1_.oe_async_reset = "none";
defparam o_image2_obuf_2__1_.oe_power_up = "low";
defparam o_image2_obuf_2__1_.oe_register_mode = "none";
defparam o_image2_obuf_2__1_.oe_sync_reset = "none";
defparam o_image2_obuf_2__1_.operation_mode = "output";
defparam o_image2_obuf_2__1_.output_async_reset = "none";
defparam o_image2_obuf_2__1_.output_power_up = "low";
defparam o_image2_obuf_2__1_.output_register_mode = "none";
defparam o_image2_obuf_2__1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U24
cycloneii_io o_image2_obuf_2__2_(
	.datain(u_memory_ap_o_image2_2__2_),
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
	.padio(o_image2_2_[2]));
// synopsys translate_off
defparam o_image2_obuf_2__2_.input_async_reset = "none";
defparam o_image2_obuf_2__2_.input_power_up = "low";
defparam o_image2_obuf_2__2_.input_register_mode = "none";
defparam o_image2_obuf_2__2_.input_sync_reset = "none";
defparam o_image2_obuf_2__2_.oe_async_reset = "none";
defparam o_image2_obuf_2__2_.oe_power_up = "low";
defparam o_image2_obuf_2__2_.oe_register_mode = "none";
defparam o_image2_obuf_2__2_.oe_sync_reset = "none";
defparam o_image2_obuf_2__2_.operation_mode = "output";
defparam o_image2_obuf_2__2_.output_async_reset = "none";
defparam o_image2_obuf_2__2_.output_power_up = "low";
defparam o_image2_obuf_2__2_.output_register_mode = "none";
defparam o_image2_obuf_2__2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U20
cycloneii_io o_image2_obuf_2__3_(
	.datain(u_memory_ap_o_image2_2__3_),
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
	.padio(o_image2_2_[3]));
// synopsys translate_off
defparam o_image2_obuf_2__3_.input_async_reset = "none";
defparam o_image2_obuf_2__3_.input_power_up = "low";
defparam o_image2_obuf_2__3_.input_register_mode = "none";
defparam o_image2_obuf_2__3_.input_sync_reset = "none";
defparam o_image2_obuf_2__3_.oe_async_reset = "none";
defparam o_image2_obuf_2__3_.oe_power_up = "low";
defparam o_image2_obuf_2__3_.oe_register_mode = "none";
defparam o_image2_obuf_2__3_.oe_sync_reset = "none";
defparam o_image2_obuf_2__3_.operation_mode = "output";
defparam o_image2_obuf_2__3_.output_async_reset = "none";
defparam o_image2_obuf_2__3_.output_power_up = "low";
defparam o_image2_obuf_2__3_.output_register_mode = "none";
defparam o_image2_obuf_2__3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K21
cycloneii_io o_image2_obuf_2__4_(
	.datain(u_memory_ap_o_image2_2__4_),
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
	.padio(o_image2_2_[4]));
// synopsys translate_off
defparam o_image2_obuf_2__4_.input_async_reset = "none";
defparam o_image2_obuf_2__4_.input_power_up = "low";
defparam o_image2_obuf_2__4_.input_register_mode = "none";
defparam o_image2_obuf_2__4_.input_sync_reset = "none";
defparam o_image2_obuf_2__4_.oe_async_reset = "none";
defparam o_image2_obuf_2__4_.oe_power_up = "low";
defparam o_image2_obuf_2__4_.oe_register_mode = "none";
defparam o_image2_obuf_2__4_.oe_sync_reset = "none";
defparam o_image2_obuf_2__4_.operation_mode = "output";
defparam o_image2_obuf_2__4_.output_async_reset = "none";
defparam o_image2_obuf_2__4_.output_power_up = "low";
defparam o_image2_obuf_2__4_.output_register_mode = "none";
defparam o_image2_obuf_2__4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T17
cycloneii_io o_image2_obuf_2__5_(
	.datain(u_memory_ap_o_image2_2__5_),
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
	.padio(o_image2_2_[5]));
// synopsys translate_off
defparam o_image2_obuf_2__5_.input_async_reset = "none";
defparam o_image2_obuf_2__5_.input_power_up = "low";
defparam o_image2_obuf_2__5_.input_register_mode = "none";
defparam o_image2_obuf_2__5_.input_sync_reset = "none";
defparam o_image2_obuf_2__5_.oe_async_reset = "none";
defparam o_image2_obuf_2__5_.oe_power_up = "low";
defparam o_image2_obuf_2__5_.oe_register_mode = "none";
defparam o_image2_obuf_2__5_.oe_sync_reset = "none";
defparam o_image2_obuf_2__5_.operation_mode = "output";
defparam o_image2_obuf_2__5_.output_async_reset = "none";
defparam o_image2_obuf_2__5_.output_power_up = "low";
defparam o_image2_obuf_2__5_.output_register_mode = "none";
defparam o_image2_obuf_2__5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T18
cycloneii_io o_image2_obuf_2__6_(
	.datain(u_memory_ap_o_image2_2__6_),
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
	.padio(o_image2_2_[6]));
// synopsys translate_off
defparam o_image2_obuf_2__6_.input_async_reset = "none";
defparam o_image2_obuf_2__6_.input_power_up = "low";
defparam o_image2_obuf_2__6_.input_register_mode = "none";
defparam o_image2_obuf_2__6_.input_sync_reset = "none";
defparam o_image2_obuf_2__6_.oe_async_reset = "none";
defparam o_image2_obuf_2__6_.oe_power_up = "low";
defparam o_image2_obuf_2__6_.oe_register_mode = "none";
defparam o_image2_obuf_2__6_.oe_sync_reset = "none";
defparam o_image2_obuf_2__6_.operation_mode = "output";
defparam o_image2_obuf_2__6_.output_async_reset = "none";
defparam o_image2_obuf_2__6_.output_power_up = "low";
defparam o_image2_obuf_2__6_.output_register_mode = "none";
defparam o_image2_obuf_2__6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R20
cycloneii_io o_image2_obuf_2__7_(
	.datain(u_memory_ap_o_image2_2__7_),
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
	.padio(o_image2_2_[7]));
// synopsys translate_off
defparam o_image2_obuf_2__7_.input_async_reset = "none";
defparam o_image2_obuf_2__7_.input_power_up = "low";
defparam o_image2_obuf_2__7_.input_register_mode = "none";
defparam o_image2_obuf_2__7_.input_sync_reset = "none";
defparam o_image2_obuf_2__7_.oe_async_reset = "none";
defparam o_image2_obuf_2__7_.oe_power_up = "low";
defparam o_image2_obuf_2__7_.oe_register_mode = "none";
defparam o_image2_obuf_2__7_.oe_sync_reset = "none";
defparam o_image2_obuf_2__7_.operation_mode = "output";
defparam o_image2_obuf_2__7_.output_async_reset = "none";
defparam o_image2_obuf_2__7_.output_power_up = "low";
defparam o_image2_obuf_2__7_.output_register_mode = "none";
defparam o_image2_obuf_2__7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D17
cycloneii_io ix4807z43919(
	.datain(nx4807z1),
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
	.padio(debug_column[0]));
// synopsys translate_off
defparam ix4807z43919.input_async_reset = "none";
defparam ix4807z43919.input_power_up = "low";
defparam ix4807z43919.input_register_mode = "none";
defparam ix4807z43919.input_sync_reset = "none";
defparam ix4807z43919.oe_async_reset = "none";
defparam ix4807z43919.oe_power_up = "low";
defparam ix4807z43919.oe_register_mode = "none";
defparam ix4807z43919.oe_sync_reset = "none";
defparam ix4807z43919.operation_mode = "output";
defparam ix4807z43919.output_async_reset = "none";
defparam ix4807z43919.output_power_up = "low";
defparam ix4807z43919.output_register_mode = "none";
defparam ix4807z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R25
cycloneii_io debug_column_obuf_1_(
	.datain(!u_memory_amodgen_counter_column_anx58250z13),
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
	.padio(debug_column[1]));
// synopsys translate_off
defparam debug_column_obuf_1_.input_async_reset = "none";
defparam debug_column_obuf_1_.input_power_up = "low";
defparam debug_column_obuf_1_.input_register_mode = "none";
defparam debug_column_obuf_1_.input_sync_reset = "none";
defparam debug_column_obuf_1_.oe_async_reset = "none";
defparam debug_column_obuf_1_.oe_power_up = "low";
defparam debug_column_obuf_1_.oe_register_mode = "none";
defparam debug_column_obuf_1_.oe_sync_reset = "none";
defparam debug_column_obuf_1_.operation_mode = "output";
defparam debug_column_obuf_1_.output_async_reset = "none";
defparam debug_column_obuf_1_.output_power_up = "low";
defparam debug_column_obuf_1_.output_register_mode = "none";
defparam debug_column_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA18
cycloneii_io debug_column_obuf_2_(
	.datain(u_memory_ap_o_column_2_),
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
	.padio(debug_column[2]));
// synopsys translate_off
defparam debug_column_obuf_2_.input_async_reset = "none";
defparam debug_column_obuf_2_.input_power_up = "low";
defparam debug_column_obuf_2_.input_register_mode = "none";
defparam debug_column_obuf_2_.input_sync_reset = "none";
defparam debug_column_obuf_2_.oe_async_reset = "none";
defparam debug_column_obuf_2_.oe_power_up = "low";
defparam debug_column_obuf_2_.oe_register_mode = "none";
defparam debug_column_obuf_2_.oe_sync_reset = "none";
defparam debug_column_obuf_2_.operation_mode = "output";
defparam debug_column_obuf_2_.output_async_reset = "none";
defparam debug_column_obuf_2_.output_power_up = "low";
defparam debug_column_obuf_2_.output_register_mode = "none";
defparam debug_column_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB18
cycloneii_io debug_column_obuf_3_(
	.datain(u_memory_ap_o_column_3_),
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
	.padio(debug_column[3]));
// synopsys translate_off
defparam debug_column_obuf_3_.input_async_reset = "none";
defparam debug_column_obuf_3_.input_power_up = "low";
defparam debug_column_obuf_3_.input_register_mode = "none";
defparam debug_column_obuf_3_.input_sync_reset = "none";
defparam debug_column_obuf_3_.oe_async_reset = "none";
defparam debug_column_obuf_3_.oe_power_up = "low";
defparam debug_column_obuf_3_.oe_register_mode = "none";
defparam debug_column_obuf_3_.oe_sync_reset = "none";
defparam debug_column_obuf_3_.operation_mode = "output";
defparam debug_column_obuf_3_.output_async_reset = "none";
defparam debug_column_obuf_3_.output_power_up = "low";
defparam debug_column_obuf_3_.output_register_mode = "none";
defparam debug_column_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T21
cycloneii_io debug_column_obuf_4_(
	.datain(u_memory_ap_o_column_4_),
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
	.padio(debug_column[4]));
// synopsys translate_off
defparam debug_column_obuf_4_.input_async_reset = "none";
defparam debug_column_obuf_4_.input_power_up = "low";
defparam debug_column_obuf_4_.input_register_mode = "none";
defparam debug_column_obuf_4_.input_sync_reset = "none";
defparam debug_column_obuf_4_.oe_async_reset = "none";
defparam debug_column_obuf_4_.oe_power_up = "low";
defparam debug_column_obuf_4_.oe_register_mode = "none";
defparam debug_column_obuf_4_.oe_sync_reset = "none";
defparam debug_column_obuf_4_.operation_mode = "output";
defparam debug_column_obuf_4_.output_async_reset = "none";
defparam debug_column_obuf_4_.output_power_up = "low";
defparam debug_column_obuf_4_.output_register_mode = "none";
defparam debug_column_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE19
cycloneii_io debug_column_obuf_5_(
	.datain(u_memory_ap_o_column_5_),
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
	.padio(debug_column[5]));
// synopsys translate_off
defparam debug_column_obuf_5_.input_async_reset = "none";
defparam debug_column_obuf_5_.input_power_up = "low";
defparam debug_column_obuf_5_.input_register_mode = "none";
defparam debug_column_obuf_5_.input_sync_reset = "none";
defparam debug_column_obuf_5_.oe_async_reset = "none";
defparam debug_column_obuf_5_.oe_power_up = "low";
defparam debug_column_obuf_5_.oe_register_mode = "none";
defparam debug_column_obuf_5_.oe_sync_reset = "none";
defparam debug_column_obuf_5_.operation_mode = "output";
defparam debug_column_obuf_5_.output_async_reset = "none";
defparam debug_column_obuf_5_.output_power_up = "low";
defparam debug_column_obuf_5_.output_register_mode = "none";
defparam debug_column_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA16
cycloneii_io debug_column_obuf_6_(
	.datain(u_memory_ap_o_column_6_),
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
	.padio(debug_column[6]));
// synopsys translate_off
defparam debug_column_obuf_6_.input_async_reset = "none";
defparam debug_column_obuf_6_.input_power_up = "low";
defparam debug_column_obuf_6_.input_register_mode = "none";
defparam debug_column_obuf_6_.input_sync_reset = "none";
defparam debug_column_obuf_6_.oe_async_reset = "none";
defparam debug_column_obuf_6_.oe_power_up = "low";
defparam debug_column_obuf_6_.oe_register_mode = "none";
defparam debug_column_obuf_6_.oe_sync_reset = "none";
defparam debug_column_obuf_6_.operation_mode = "output";
defparam debug_column_obuf_6_.output_async_reset = "none";
defparam debug_column_obuf_6_.output_power_up = "low";
defparam debug_column_obuf_6_.output_register_mode = "none";
defparam debug_column_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F15
cycloneii_io debug_column_obuf_7_(
	.datain(u_memory_ap_o_column_7_),
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
	.padio(debug_column[7]));
// synopsys translate_off
defparam debug_column_obuf_7_.input_async_reset = "none";
defparam debug_column_obuf_7_.input_power_up = "low";
defparam debug_column_obuf_7_.input_register_mode = "none";
defparam debug_column_obuf_7_.input_sync_reset = "none";
defparam debug_column_obuf_7_.oe_async_reset = "none";
defparam debug_column_obuf_7_.oe_power_up = "low";
defparam debug_column_obuf_7_.oe_register_mode = "none";
defparam debug_column_obuf_7_.oe_sync_reset = "none";
defparam debug_column_obuf_7_.operation_mode = "output";
defparam debug_column_obuf_7_.output_async_reset = "none";
defparam debug_column_obuf_7_.output_power_up = "low";
defparam debug_column_obuf_7_.output_register_mode = "none";
defparam debug_column_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C15
cycloneii_io debug_led_red_obuf_0_(
	.datain(gnd),
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
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam debug_led_red_obuf_0_.input_async_reset = "none";
defparam debug_led_red_obuf_0_.input_power_up = "low";
defparam debug_led_red_obuf_0_.input_register_mode = "none";
defparam debug_led_red_obuf_0_.input_sync_reset = "none";
defparam debug_led_red_obuf_0_.oe_async_reset = "none";
defparam debug_led_red_obuf_0_.oe_power_up = "low";
defparam debug_led_red_obuf_0_.oe_register_mode = "none";
defparam debug_led_red_obuf_0_.oe_sync_reset = "none";
defparam debug_led_red_obuf_0_.operation_mode = "output";
defparam debug_led_red_obuf_0_.output_async_reset = "none";
defparam debug_led_red_obuf_0_.output_power_up = "low";
defparam debug_led_red_obuf_0_.output_register_mode = "none";
defparam debug_led_red_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D21
cycloneii_io debug_led_red_obuf_1_(
	.datain(gnd),
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
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam debug_led_red_obuf_1_.input_async_reset = "none";
defparam debug_led_red_obuf_1_.input_power_up = "low";
defparam debug_led_red_obuf_1_.input_register_mode = "none";
defparam debug_led_red_obuf_1_.input_sync_reset = "none";
defparam debug_led_red_obuf_1_.oe_async_reset = "none";
defparam debug_led_red_obuf_1_.oe_power_up = "low";
defparam debug_led_red_obuf_1_.oe_register_mode = "none";
defparam debug_led_red_obuf_1_.oe_sync_reset = "none";
defparam debug_led_red_obuf_1_.operation_mode = "output";
defparam debug_led_red_obuf_1_.output_async_reset = "none";
defparam debug_led_red_obuf_1_.output_power_up = "low";
defparam debug_led_red_obuf_1_.output_register_mode = "none";
defparam debug_led_red_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D1
cycloneii_io debug_led_red_obuf_2_(
	.datain(gnd),
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
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam debug_led_red_obuf_2_.input_async_reset = "none";
defparam debug_led_red_obuf_2_.input_power_up = "low";
defparam debug_led_red_obuf_2_.input_register_mode = "none";
defparam debug_led_red_obuf_2_.input_sync_reset = "none";
defparam debug_led_red_obuf_2_.oe_async_reset = "none";
defparam debug_led_red_obuf_2_.oe_power_up = "low";
defparam debug_led_red_obuf_2_.oe_register_mode = "none";
defparam debug_led_red_obuf_2_.oe_sync_reset = "none";
defparam debug_led_red_obuf_2_.operation_mode = "output";
defparam debug_led_red_obuf_2_.output_async_reset = "none";
defparam debug_led_red_obuf_2_.output_power_up = "low";
defparam debug_led_red_obuf_2_.output_register_mode = "none";
defparam debug_led_red_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B12
cycloneii_io debug_led_red_obuf_3_(
	.datain(gnd),
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
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam debug_led_red_obuf_3_.input_async_reset = "none";
defparam debug_led_red_obuf_3_.input_power_up = "low";
defparam debug_led_red_obuf_3_.input_register_mode = "none";
defparam debug_led_red_obuf_3_.input_sync_reset = "none";
defparam debug_led_red_obuf_3_.oe_async_reset = "none";
defparam debug_led_red_obuf_3_.oe_power_up = "low";
defparam debug_led_red_obuf_3_.oe_register_mode = "none";
defparam debug_led_red_obuf_3_.oe_sync_reset = "none";
defparam debug_led_red_obuf_3_.operation_mode = "output";
defparam debug_led_red_obuf_3_.output_async_reset = "none";
defparam debug_led_red_obuf_3_.output_power_up = "low";
defparam debug_led_red_obuf_3_.output_register_mode = "none";
defparam debug_led_red_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B4
cycloneii_io debug_led_red_obuf_4_(
	.datain(gnd),
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
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam debug_led_red_obuf_4_.input_async_reset = "none";
defparam debug_led_red_obuf_4_.input_power_up = "low";
defparam debug_led_red_obuf_4_.input_register_mode = "none";
defparam debug_led_red_obuf_4_.input_sync_reset = "none";
defparam debug_led_red_obuf_4_.oe_async_reset = "none";
defparam debug_led_red_obuf_4_.oe_power_up = "low";
defparam debug_led_red_obuf_4_.oe_register_mode = "none";
defparam debug_led_red_obuf_4_.oe_sync_reset = "none";
defparam debug_led_red_obuf_4_.operation_mode = "output";
defparam debug_led_red_obuf_4_.output_async_reset = "none";
defparam debug_led_red_obuf_4_.output_power_up = "low";
defparam debug_led_red_obuf_4_.output_register_mode = "none";
defparam debug_led_red_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V6
cycloneii_io debug_led_red_obuf_5_(
	.datain(gnd),
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
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam debug_led_red_obuf_5_.input_async_reset = "none";
defparam debug_led_red_obuf_5_.input_power_up = "low";
defparam debug_led_red_obuf_5_.input_register_mode = "none";
defparam debug_led_red_obuf_5_.input_sync_reset = "none";
defparam debug_led_red_obuf_5_.oe_async_reset = "none";
defparam debug_led_red_obuf_5_.oe_power_up = "low";
defparam debug_led_red_obuf_5_.oe_register_mode = "none";
defparam debug_led_red_obuf_5_.oe_sync_reset = "none";
defparam debug_led_red_obuf_5_.operation_mode = "output";
defparam debug_led_red_obuf_5_.output_async_reset = "none";
defparam debug_led_red_obuf_5_.output_power_up = "low";
defparam debug_led_red_obuf_5_.output_register_mode = "none";
defparam debug_led_red_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U21
cycloneii_io debug_led_red_obuf_6_(
	.datain(gnd),
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
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam debug_led_red_obuf_6_.input_async_reset = "none";
defparam debug_led_red_obuf_6_.input_power_up = "low";
defparam debug_led_red_obuf_6_.input_register_mode = "none";
defparam debug_led_red_obuf_6_.input_sync_reset = "none";
defparam debug_led_red_obuf_6_.oe_async_reset = "none";
defparam debug_led_red_obuf_6_.oe_power_up = "low";
defparam debug_led_red_obuf_6_.oe_register_mode = "none";
defparam debug_led_red_obuf_6_.oe_sync_reset = "none";
defparam debug_led_red_obuf_6_.operation_mode = "output";
defparam debug_led_red_obuf_6_.output_async_reset = "none";
defparam debug_led_red_obuf_6_.output_power_up = "low";
defparam debug_led_red_obuf_6_.output_register_mode = "none";
defparam debug_led_red_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB25
cycloneii_io debug_led_red_obuf_7_(
	.datain(gnd),
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
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam debug_led_red_obuf_7_.input_async_reset = "none";
defparam debug_led_red_obuf_7_.input_power_up = "low";
defparam debug_led_red_obuf_7_.input_register_mode = "none";
defparam debug_led_red_obuf_7_.input_sync_reset = "none";
defparam debug_led_red_obuf_7_.oe_async_reset = "none";
defparam debug_led_red_obuf_7_.oe_power_up = "low";
defparam debug_led_red_obuf_7_.oe_register_mode = "none";
defparam debug_led_red_obuf_7_.oe_sync_reset = "none";
defparam debug_led_red_obuf_7_.operation_mode = "output";
defparam debug_led_red_obuf_7_.output_async_reset = "none";
defparam debug_led_red_obuf_7_.output_power_up = "low";
defparam debug_led_red_obuf_7_.output_register_mode = "none";
defparam debug_led_red_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W11
cycloneii_io debug_led_red_obuf_8_(
	.datain(gnd),
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
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam debug_led_red_obuf_8_.input_async_reset = "none";
defparam debug_led_red_obuf_8_.input_power_up = "low";
defparam debug_led_red_obuf_8_.input_register_mode = "none";
defparam debug_led_red_obuf_8_.input_sync_reset = "none";
defparam debug_led_red_obuf_8_.oe_async_reset = "none";
defparam debug_led_red_obuf_8_.oe_power_up = "low";
defparam debug_led_red_obuf_8_.oe_register_mode = "none";
defparam debug_led_red_obuf_8_.oe_sync_reset = "none";
defparam debug_led_red_obuf_8_.operation_mode = "output";
defparam debug_led_red_obuf_8_.output_async_reset = "none";
defparam debug_led_red_obuf_8_.output_power_up = "low";
defparam debug_led_red_obuf_8_.output_register_mode = "none";
defparam debug_led_red_obuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M3
cycloneii_io debug_led_red_obuf_9_(
	.datain(gnd),
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
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam debug_led_red_obuf_9_.input_async_reset = "none";
defparam debug_led_red_obuf_9_.input_power_up = "low";
defparam debug_led_red_obuf_9_.input_register_mode = "none";
defparam debug_led_red_obuf_9_.input_sync_reset = "none";
defparam debug_led_red_obuf_9_.oe_async_reset = "none";
defparam debug_led_red_obuf_9_.oe_power_up = "low";
defparam debug_led_red_obuf_9_.oe_register_mode = "none";
defparam debug_led_red_obuf_9_.oe_sync_reset = "none";
defparam debug_led_red_obuf_9_.operation_mode = "output";
defparam debug_led_red_obuf_9_.output_async_reset = "none";
defparam debug_led_red_obuf_9_.output_power_up = "low";
defparam debug_led_red_obuf_9_.output_register_mode = "none";
defparam debug_led_red_obuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F11
cycloneii_io debug_led_red_obuf_10_(
	.datain(gnd),
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
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam debug_led_red_obuf_10_.input_async_reset = "none";
defparam debug_led_red_obuf_10_.input_power_up = "low";
defparam debug_led_red_obuf_10_.input_register_mode = "none";
defparam debug_led_red_obuf_10_.input_sync_reset = "none";
defparam debug_led_red_obuf_10_.oe_async_reset = "none";
defparam debug_led_red_obuf_10_.oe_power_up = "low";
defparam debug_led_red_obuf_10_.oe_register_mode = "none";
defparam debug_led_red_obuf_10_.oe_sync_reset = "none";
defparam debug_led_red_obuf_10_.operation_mode = "output";
defparam debug_led_red_obuf_10_.output_async_reset = "none";
defparam debug_led_red_obuf_10_.output_power_up = "low";
defparam debug_led_red_obuf_10_.output_register_mode = "none";
defparam debug_led_red_obuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B9
cycloneii_io debug_led_red_obuf_11_(
	.datain(gnd),
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
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam debug_led_red_obuf_11_.input_async_reset = "none";
defparam debug_led_red_obuf_11_.input_power_up = "low";
defparam debug_led_red_obuf_11_.input_register_mode = "none";
defparam debug_led_red_obuf_11_.input_sync_reset = "none";
defparam debug_led_red_obuf_11_.oe_async_reset = "none";
defparam debug_led_red_obuf_11_.oe_power_up = "low";
defparam debug_led_red_obuf_11_.oe_register_mode = "none";
defparam debug_led_red_obuf_11_.oe_sync_reset = "none";
defparam debug_led_red_obuf_11_.operation_mode = "output";
defparam debug_led_red_obuf_11_.output_async_reset = "none";
defparam debug_led_red_obuf_11_.output_power_up = "low";
defparam debug_led_red_obuf_11_.output_register_mode = "none";
defparam debug_led_red_obuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R5
cycloneii_io debug_led_red_obuf_12_(
	.datain(gnd),
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
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam debug_led_red_obuf_12_.input_async_reset = "none";
defparam debug_led_red_obuf_12_.input_power_up = "low";
defparam debug_led_red_obuf_12_.input_register_mode = "none";
defparam debug_led_red_obuf_12_.input_sync_reset = "none";
defparam debug_led_red_obuf_12_.oe_async_reset = "none";
defparam debug_led_red_obuf_12_.oe_power_up = "low";
defparam debug_led_red_obuf_12_.oe_register_mode = "none";
defparam debug_led_red_obuf_12_.oe_sync_reset = "none";
defparam debug_led_red_obuf_12_.operation_mode = "output";
defparam debug_led_red_obuf_12_.output_async_reset = "none";
defparam debug_led_red_obuf_12_.output_power_up = "low";
defparam debug_led_red_obuf_12_.output_register_mode = "none";
defparam debug_led_red_obuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF23
cycloneii_io debug_led_red_obuf_13_(
	.datain(gnd),
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
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam debug_led_red_obuf_13_.input_async_reset = "none";
defparam debug_led_red_obuf_13_.input_power_up = "low";
defparam debug_led_red_obuf_13_.input_register_mode = "none";
defparam debug_led_red_obuf_13_.input_sync_reset = "none";
defparam debug_led_red_obuf_13_.oe_async_reset = "none";
defparam debug_led_red_obuf_13_.oe_power_up = "low";
defparam debug_led_red_obuf_13_.oe_register_mode = "none";
defparam debug_led_red_obuf_13_.oe_sync_reset = "none";
defparam debug_led_red_obuf_13_.operation_mode = "output";
defparam debug_led_red_obuf_13_.output_async_reset = "none";
defparam debug_led_red_obuf_13_.output_power_up = "low";
defparam debug_led_red_obuf_13_.output_register_mode = "none";
defparam debug_led_red_obuf_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B7
cycloneii_io debug_led_red_obuf_14_(
	.datain(gnd),
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
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam debug_led_red_obuf_14_.input_async_reset = "none";
defparam debug_led_red_obuf_14_.input_power_up = "low";
defparam debug_led_red_obuf_14_.input_register_mode = "none";
defparam debug_led_red_obuf_14_.input_sync_reset = "none";
defparam debug_led_red_obuf_14_.oe_async_reset = "none";
defparam debug_led_red_obuf_14_.oe_power_up = "low";
defparam debug_led_red_obuf_14_.oe_register_mode = "none";
defparam debug_led_red_obuf_14_.oe_sync_reset = "none";
defparam debug_led_red_obuf_14_.operation_mode = "output";
defparam debug_led_red_obuf_14_.output_async_reset = "none";
defparam debug_led_red_obuf_14_.output_power_up = "low";
defparam debug_led_red_obuf_14_.output_register_mode = "none";
defparam debug_led_red_obuf_14_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA12
cycloneii_io debug_led_red_obuf_15_(
	.datain(gnd),
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
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam debug_led_red_obuf_15_.input_async_reset = "none";
defparam debug_led_red_obuf_15_.input_power_up = "low";
defparam debug_led_red_obuf_15_.input_register_mode = "none";
defparam debug_led_red_obuf_15_.input_sync_reset = "none";
defparam debug_led_red_obuf_15_.oe_async_reset = "none";
defparam debug_led_red_obuf_15_.oe_power_up = "low";
defparam debug_led_red_obuf_15_.oe_register_mode = "none";
defparam debug_led_red_obuf_15_.oe_sync_reset = "none";
defparam debug_led_red_obuf_15_.operation_mode = "output";
defparam debug_led_red_obuf_15_.output_async_reset = "none";
defparam debug_led_red_obuf_15_.output_power_up = "low";
defparam debug_led_red_obuf_15_.output_register_mode = "none";
defparam debug_led_red_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W1
cycloneii_io debug_led_red_obuf_16_(
	.datain(gnd),
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
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam debug_led_red_obuf_16_.input_async_reset = "none";
defparam debug_led_red_obuf_16_.input_power_up = "low";
defparam debug_led_red_obuf_16_.input_register_mode = "none";
defparam debug_led_red_obuf_16_.input_sync_reset = "none";
defparam debug_led_red_obuf_16_.oe_async_reset = "none";
defparam debug_led_red_obuf_16_.oe_power_up = "low";
defparam debug_led_red_obuf_16_.oe_register_mode = "none";
defparam debug_led_red_obuf_16_.oe_sync_reset = "none";
defparam debug_led_red_obuf_16_.operation_mode = "output";
defparam debug_led_red_obuf_16_.output_async_reset = "none";
defparam debug_led_red_obuf_16_.output_power_up = "low";
defparam debug_led_red_obuf_16_.output_register_mode = "none";
defparam debug_led_red_obuf_16_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A8
cycloneii_io debug_led_red_obuf_17_(
	.datain(gnd),
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
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_obuf_17_.input_async_reset = "none";
defparam debug_led_red_obuf_17_.input_power_up = "low";
defparam debug_led_red_obuf_17_.input_register_mode = "none";
defparam debug_led_red_obuf_17_.input_sync_reset = "none";
defparam debug_led_red_obuf_17_.oe_async_reset = "none";
defparam debug_led_red_obuf_17_.oe_power_up = "low";
defparam debug_led_red_obuf_17_.oe_register_mode = "none";
defparam debug_led_red_obuf_17_.oe_sync_reset = "none";
defparam debug_led_red_obuf_17_.operation_mode = "output";
defparam debug_led_red_obuf_17_.output_async_reset = "none";
defparam debug_led_red_obuf_17_.output_power_up = "low";
defparam debug_led_red_obuf_17_.output_register_mode = "none";
defparam debug_led_red_obuf_17_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E23
cycloneii_io debug_led_grn_obuf_0_(
	.datain(gnd),
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
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam debug_led_grn_obuf_0_.input_async_reset = "none";
defparam debug_led_grn_obuf_0_.input_power_up = "low";
defparam debug_led_grn_obuf_0_.input_register_mode = "none";
defparam debug_led_grn_obuf_0_.input_sync_reset = "none";
defparam debug_led_grn_obuf_0_.oe_async_reset = "none";
defparam debug_led_grn_obuf_0_.oe_power_up = "low";
defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
defparam debug_led_grn_obuf_0_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_0_.operation_mode = "output";
defparam debug_led_grn_obuf_0_.output_async_reset = "none";
defparam debug_led_grn_obuf_0_.output_power_up = "low";
defparam debug_led_grn_obuf_0_.output_register_mode = "none";
defparam debug_led_grn_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE7
cycloneii_io debug_led_grn_obuf_1_(
	.datain(gnd),
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
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam debug_led_grn_obuf_1_.input_async_reset = "none";
defparam debug_led_grn_obuf_1_.input_power_up = "low";
defparam debug_led_grn_obuf_1_.input_register_mode = "none";
defparam debug_led_grn_obuf_1_.input_sync_reset = "none";
defparam debug_led_grn_obuf_1_.oe_async_reset = "none";
defparam debug_led_grn_obuf_1_.oe_power_up = "low";
defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
defparam debug_led_grn_obuf_1_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_1_.operation_mode = "output";
defparam debug_led_grn_obuf_1_.output_async_reset = "none";
defparam debug_led_grn_obuf_1_.output_power_up = "low";
defparam debug_led_grn_obuf_1_.output_register_mode = "none";
defparam debug_led_grn_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A10
cycloneii_io debug_led_grn_obuf_2_(
	.datain(gnd),
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
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam debug_led_grn_obuf_2_.input_async_reset = "none";
defparam debug_led_grn_obuf_2_.input_power_up = "low";
defparam debug_led_grn_obuf_2_.input_register_mode = "none";
defparam debug_led_grn_obuf_2_.input_sync_reset = "none";
defparam debug_led_grn_obuf_2_.oe_async_reset = "none";
defparam debug_led_grn_obuf_2_.oe_power_up = "low";
defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
defparam debug_led_grn_obuf_2_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_2_.operation_mode = "output";
defparam debug_led_grn_obuf_2_.output_async_reset = "none";
defparam debug_led_grn_obuf_2_.output_power_up = "low";
defparam debug_led_grn_obuf_2_.output_register_mode = "none";
defparam debug_led_grn_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF4
cycloneii_io debug_led_grn_obuf_3_(
	.datain(gnd),
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
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam debug_led_grn_obuf_3_.input_async_reset = "none";
defparam debug_led_grn_obuf_3_.input_power_up = "low";
defparam debug_led_grn_obuf_3_.input_register_mode = "none";
defparam debug_led_grn_obuf_3_.input_sync_reset = "none";
defparam debug_led_grn_obuf_3_.oe_async_reset = "none";
defparam debug_led_grn_obuf_3_.oe_power_up = "low";
defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
defparam debug_led_grn_obuf_3_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_3_.operation_mode = "output";
defparam debug_led_grn_obuf_3_.output_async_reset = "none";
defparam debug_led_grn_obuf_3_.output_power_up = "low";
defparam debug_led_grn_obuf_3_.output_register_mode = "none";
defparam debug_led_grn_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C10
cycloneii_io debug_led_grn_obuf_4_(
	.datain(gnd),
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
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam debug_led_grn_obuf_4_.input_async_reset = "none";
defparam debug_led_grn_obuf_4_.input_power_up = "low";
defparam debug_led_grn_obuf_4_.input_register_mode = "none";
defparam debug_led_grn_obuf_4_.input_sync_reset = "none";
defparam debug_led_grn_obuf_4_.oe_async_reset = "none";
defparam debug_led_grn_obuf_4_.oe_power_up = "low";
defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
defparam debug_led_grn_obuf_4_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_4_.operation_mode = "output";
defparam debug_led_grn_obuf_4_.output_async_reset = "none";
defparam debug_led_grn_obuf_4_.output_power_up = "low";
defparam debug_led_grn_obuf_4_.output_register_mode = "none";
defparam debug_led_grn_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y16
cycloneii_io debug_led_grn_obuf_5_(
	.datain(gnd),
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
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam debug_led_grn_obuf_5_.input_async_reset = "none";
defparam debug_led_grn_obuf_5_.input_power_up = "low";
defparam debug_led_grn_obuf_5_.input_register_mode = "none";
defparam debug_led_grn_obuf_5_.input_sync_reset = "none";
defparam debug_led_grn_obuf_5_.oe_async_reset = "none";
defparam debug_led_grn_obuf_5_.oe_power_up = "low";
defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
defparam debug_led_grn_obuf_5_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_5_.operation_mode = "output";
defparam debug_led_grn_obuf_5_.output_async_reset = "none";
defparam debug_led_grn_obuf_5_.output_power_up = "low";
defparam debug_led_grn_obuf_5_.output_register_mode = "none";
defparam debug_led_grn_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H17
cycloneii_io debug_valid_obuf(
	.datain(debug_valid_dup0),
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
	.padio(debug_valid));
// synopsys translate_off
defparam debug_valid_obuf.input_async_reset = "none";
defparam debug_valid_obuf.input_power_up = "low";
defparam debug_valid_obuf.input_register_mode = "none";
defparam debug_valid_obuf.input_sync_reset = "none";
defparam debug_valid_obuf.oe_async_reset = "none";
defparam debug_valid_obuf.oe_power_up = "low";
defparam debug_valid_obuf.oe_register_mode = "none";
defparam debug_valid_obuf.oe_sync_reset = "none";
defparam debug_valid_obuf.operation_mode = "output";
defparam debug_valid_obuf.output_async_reset = "none";
defparam debug_valid_obuf.output_power_up = "low";
defparam debug_valid_obuf.output_register_mode = "none";
defparam debug_valid_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B21
cycloneii_io debug_num_0_obuf_0_(
	.datain(u_memory_ap_debug_num_0_0_),
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
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_obuf_0_.input_async_reset = "none";
defparam debug_num_0_obuf_0_.input_power_up = "low";
defparam debug_num_0_obuf_0_.input_register_mode = "none";
defparam debug_num_0_obuf_0_.input_sync_reset = "none";
defparam debug_num_0_obuf_0_.oe_async_reset = "none";
defparam debug_num_0_obuf_0_.oe_power_up = "low";
defparam debug_num_0_obuf_0_.oe_register_mode = "none";
defparam debug_num_0_obuf_0_.oe_sync_reset = "none";
defparam debug_num_0_obuf_0_.operation_mode = "output";
defparam debug_num_0_obuf_0_.output_async_reset = "none";
defparam debug_num_0_obuf_0_.output_power_up = "low";
defparam debug_num_0_obuf_0_.output_register_mode = "none";
defparam debug_num_0_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U25
cycloneii_io debug_num_0_obuf_1_(
	.datain(u_memory_ap_debug_num_0_1_),
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
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_obuf_1_.input_async_reset = "none";
defparam debug_num_0_obuf_1_.input_power_up = "low";
defparam debug_num_0_obuf_1_.input_register_mode = "none";
defparam debug_num_0_obuf_1_.input_sync_reset = "none";
defparam debug_num_0_obuf_1_.oe_async_reset = "none";
defparam debug_num_0_obuf_1_.oe_power_up = "low";
defparam debug_num_0_obuf_1_.oe_register_mode = "none";
defparam debug_num_0_obuf_1_.oe_sync_reset = "none";
defparam debug_num_0_obuf_1_.operation_mode = "output";
defparam debug_num_0_obuf_1_.output_async_reset = "none";
defparam debug_num_0_obuf_1_.output_power_up = "low";
defparam debug_num_0_obuf_1_.output_register_mode = "none";
defparam debug_num_0_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G17
cycloneii_io debug_num_0_obuf_2_(
	.datain(u_memory_ap_debug_num_0_2_),
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
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_obuf_2_.input_async_reset = "none";
defparam debug_num_0_obuf_2_.input_power_up = "low";
defparam debug_num_0_obuf_2_.input_register_mode = "none";
defparam debug_num_0_obuf_2_.input_sync_reset = "none";
defparam debug_num_0_obuf_2_.oe_async_reset = "none";
defparam debug_num_0_obuf_2_.oe_power_up = "low";
defparam debug_num_0_obuf_2_.oe_register_mode = "none";
defparam debug_num_0_obuf_2_.oe_sync_reset = "none";
defparam debug_num_0_obuf_2_.operation_mode = "output";
defparam debug_num_0_obuf_2_.output_async_reset = "none";
defparam debug_num_0_obuf_2_.output_power_up = "low";
defparam debug_num_0_obuf_2_.output_register_mode = "none";
defparam debug_num_0_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M23
cycloneii_io debug_num_1_obuf_0_(
	.datain(u_memory_ap_debug_num_1_0_),
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
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_obuf_0_.input_async_reset = "none";
defparam debug_num_1_obuf_0_.input_power_up = "low";
defparam debug_num_1_obuf_0_.input_register_mode = "none";
defparam debug_num_1_obuf_0_.input_sync_reset = "none";
defparam debug_num_1_obuf_0_.oe_async_reset = "none";
defparam debug_num_1_obuf_0_.oe_power_up = "low";
defparam debug_num_1_obuf_0_.oe_register_mode = "none";
defparam debug_num_1_obuf_0_.oe_sync_reset = "none";
defparam debug_num_1_obuf_0_.operation_mode = "output";
defparam debug_num_1_obuf_0_.output_async_reset = "none";
defparam debug_num_1_obuf_0_.output_power_up = "low";
defparam debug_num_1_obuf_0_.output_register_mode = "none";
defparam debug_num_1_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F18
cycloneii_io debug_num_1_obuf_1_(
	.datain(u_memory_ap_debug_num_1_1_),
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
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_obuf_1_.input_async_reset = "none";
defparam debug_num_1_obuf_1_.input_power_up = "low";
defparam debug_num_1_obuf_1_.input_register_mode = "none";
defparam debug_num_1_obuf_1_.input_sync_reset = "none";
defparam debug_num_1_obuf_1_.oe_async_reset = "none";
defparam debug_num_1_obuf_1_.oe_power_up = "low";
defparam debug_num_1_obuf_1_.oe_register_mode = "none";
defparam debug_num_1_obuf_1_.oe_sync_reset = "none";
defparam debug_num_1_obuf_1_.operation_mode = "output";
defparam debug_num_1_obuf_1_.output_async_reset = "none";
defparam debug_num_1_obuf_1_.output_power_up = "low";
defparam debug_num_1_obuf_1_.output_register_mode = "none";
defparam debug_num_1_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J17
cycloneii_io debug_num_1_obuf_2_(
	.datain(u_memory_ap_debug_num_1_2_),
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
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_obuf_2_.input_async_reset = "none";
defparam debug_num_1_obuf_2_.input_power_up = "low";
defparam debug_num_1_obuf_2_.input_register_mode = "none";
defparam debug_num_1_obuf_2_.input_sync_reset = "none";
defparam debug_num_1_obuf_2_.oe_async_reset = "none";
defparam debug_num_1_obuf_2_.oe_power_up = "low";
defparam debug_num_1_obuf_2_.oe_register_mode = "none";
defparam debug_num_1_obuf_2_.oe_sync_reset = "none";
defparam debug_num_1_obuf_2_.operation_mode = "output";
defparam debug_num_1_obuf_2_.output_async_reset = "none";
defparam debug_num_1_obuf_2_.output_power_up = "low";
defparam debug_num_1_obuf_2_.output_register_mode = "none";
defparam debug_num_1_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P24
cycloneii_io debug_num_2_obuf_0_(
	.datain(debug_num_2_dup0_0_),
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
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_obuf_0_.input_async_reset = "none";
defparam debug_num_2_obuf_0_.input_power_up = "low";
defparam debug_num_2_obuf_0_.input_register_mode = "none";
defparam debug_num_2_obuf_0_.input_sync_reset = "none";
defparam debug_num_2_obuf_0_.oe_async_reset = "none";
defparam debug_num_2_obuf_0_.oe_power_up = "low";
defparam debug_num_2_obuf_0_.oe_register_mode = "none";
defparam debug_num_2_obuf_0_.oe_sync_reset = "none";
defparam debug_num_2_obuf_0_.operation_mode = "output";
defparam debug_num_2_obuf_0_.output_async_reset = "none";
defparam debug_num_2_obuf_0_.output_power_up = "low";
defparam debug_num_2_obuf_0_.output_register_mode = "none";
defparam debug_num_2_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R24
cycloneii_io debug_num_2_obuf_1_(
	.datain(debug_num_2_dup0_1_),
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
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_obuf_1_.input_async_reset = "none";
defparam debug_num_2_obuf_1_.input_power_up = "low";
defparam debug_num_2_obuf_1_.input_register_mode = "none";
defparam debug_num_2_obuf_1_.input_sync_reset = "none";
defparam debug_num_2_obuf_1_.oe_async_reset = "none";
defparam debug_num_2_obuf_1_.oe_power_up = "low";
defparam debug_num_2_obuf_1_.oe_register_mode = "none";
defparam debug_num_2_obuf_1_.oe_sync_reset = "none";
defparam debug_num_2_obuf_1_.operation_mode = "output";
defparam debug_num_2_obuf_1_.output_async_reset = "none";
defparam debug_num_2_obuf_1_.output_power_up = "low";
defparam debug_num_2_obuf_1_.output_register_mode = "none";
defparam debug_num_2_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E18
cycloneii_io debug_num_2_obuf_2_(
	.datain(debug_num_2_dup0_2_),
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
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_obuf_2_.input_async_reset = "none";
defparam debug_num_2_obuf_2_.input_power_up = "low";
defparam debug_num_2_obuf_2_.input_register_mode = "none";
defparam debug_num_2_obuf_2_.input_sync_reset = "none";
defparam debug_num_2_obuf_2_.oe_async_reset = "none";
defparam debug_num_2_obuf_2_.oe_power_up = "low";
defparam debug_num_2_obuf_2_.oe_register_mode = "none";
defparam debug_num_2_obuf_2_.oe_sync_reset = "none";
defparam debug_num_2_obuf_2_.operation_mode = "output";
defparam debug_num_2_obuf_2_.output_async_reset = "none";
defparam debug_num_2_obuf_2_.output_power_up = "low";
defparam debug_num_2_obuf_2_.output_register_mode = "none";
defparam debug_num_2_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P23
cycloneii_io debug_num_2_obuf_3_(
	.datain(debug_num_2_dup0_3_),
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
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_obuf_3_.input_async_reset = "none";
defparam debug_num_2_obuf_3_.input_power_up = "low";
defparam debug_num_2_obuf_3_.input_register_mode = "none";
defparam debug_num_2_obuf_3_.input_sync_reset = "none";
defparam debug_num_2_obuf_3_.oe_async_reset = "none";
defparam debug_num_2_obuf_3_.oe_power_up = "low";
defparam debug_num_2_obuf_3_.oe_register_mode = "none";
defparam debug_num_2_obuf_3_.oe_sync_reset = "none";
defparam debug_num_2_obuf_3_.operation_mode = "output";
defparam debug_num_2_obuf_3_.output_async_reset = "none";
defparam debug_num_2_obuf_3_.output_power_up = "low";
defparam debug_num_2_obuf_3_.output_register_mode = "none";
defparam debug_num_2_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L24
cycloneii_io debug_num_2_obuf_4_(
	.datain(debug_num_2_dup0_4_),
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
	.padio(debug_num_2[4]));
// synopsys translate_off
defparam debug_num_2_obuf_4_.input_async_reset = "none";
defparam debug_num_2_obuf_4_.input_power_up = "low";
defparam debug_num_2_obuf_4_.input_register_mode = "none";
defparam debug_num_2_obuf_4_.input_sync_reset = "none";
defparam debug_num_2_obuf_4_.oe_async_reset = "none";
defparam debug_num_2_obuf_4_.oe_power_up = "low";
defparam debug_num_2_obuf_4_.oe_register_mode = "none";
defparam debug_num_2_obuf_4_.oe_sync_reset = "none";
defparam debug_num_2_obuf_4_.operation_mode = "output";
defparam debug_num_2_obuf_4_.output_async_reset = "none";
defparam debug_num_2_obuf_4_.output_power_up = "low";
defparam debug_num_2_obuf_4_.output_register_mode = "none";
defparam debug_num_2_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA17
cycloneii_io debug_num_2_obuf_5_(
	.datain(debug_num_2_dup0_5_),
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
	.padio(debug_num_2[5]));
// synopsys translate_off
defparam debug_num_2_obuf_5_.input_async_reset = "none";
defparam debug_num_2_obuf_5_.input_power_up = "low";
defparam debug_num_2_obuf_5_.input_register_mode = "none";
defparam debug_num_2_obuf_5_.input_sync_reset = "none";
defparam debug_num_2_obuf_5_.oe_async_reset = "none";
defparam debug_num_2_obuf_5_.oe_power_up = "low";
defparam debug_num_2_obuf_5_.oe_register_mode = "none";
defparam debug_num_2_obuf_5_.oe_sync_reset = "none";
defparam debug_num_2_obuf_5_.operation_mode = "output";
defparam debug_num_2_obuf_5_.output_async_reset = "none";
defparam debug_num_2_obuf_5_.output_power_up = "low";
defparam debug_num_2_obuf_5_.output_register_mode = "none";
defparam debug_num_2_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G18
cycloneii_io debug_num_2_obuf_6_(
	.datain(debug_num_2_dup0_6_),
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
	.padio(debug_num_2[6]));
// synopsys translate_off
defparam debug_num_2_obuf_6_.input_async_reset = "none";
defparam debug_num_2_obuf_6_.input_power_up = "low";
defparam debug_num_2_obuf_6_.input_register_mode = "none";
defparam debug_num_2_obuf_6_.input_sync_reset = "none";
defparam debug_num_2_obuf_6_.oe_async_reset = "none";
defparam debug_num_2_obuf_6_.oe_power_up = "low";
defparam debug_num_2_obuf_6_.oe_register_mode = "none";
defparam debug_num_2_obuf_6_.oe_sync_reset = "none";
defparam debug_num_2_obuf_6_.operation_mode = "output";
defparam debug_num_2_obuf_6_.output_async_reset = "none";
defparam debug_num_2_obuf_6_.output_power_up = "low";
defparam debug_num_2_obuf_6_.output_register_mode = "none";
defparam debug_num_2_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D18
cycloneii_io debug_num_2_obuf_7_(
	.datain(debug_num_2_dup0_7_),
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
	.padio(debug_num_2[7]));
// synopsys translate_off
defparam debug_num_2_obuf_7_.input_async_reset = "none";
defparam debug_num_2_obuf_7_.input_power_up = "low";
defparam debug_num_2_obuf_7_.input_register_mode = "none";
defparam debug_num_2_obuf_7_.input_sync_reset = "none";
defparam debug_num_2_obuf_7_.oe_async_reset = "none";
defparam debug_num_2_obuf_7_.oe_power_up = "low";
defparam debug_num_2_obuf_7_.oe_register_mode = "none";
defparam debug_num_2_obuf_7_.oe_sync_reset = "none";
defparam debug_num_2_obuf_7_.operation_mode = "output";
defparam debug_num_2_obuf_7_.output_async_reset = "none";
defparam debug_num_2_obuf_7_.output_power_up = "low";
defparam debug_num_2_obuf_7_.output_register_mode = "none";
defparam debug_num_2_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J14
cycloneii_io u_memory_debug_num_3_triBus4_0_(
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
defparam u_memory_debug_num_3_triBus4_0_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_0_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_0_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_0_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_0_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_0_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_0_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_0_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_0_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_0_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_0_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_0_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P18
cycloneii_io u_memory_debug_num_3_triBus4_1_(
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
defparam u_memory_debug_num_3_triBus4_1_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_1_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_1_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_1_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_1_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_1_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_1_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_1_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_1_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_1_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_1_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_1_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E12
cycloneii_io u_memory_debug_num_3_triBus4_2_(
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
defparam u_memory_debug_num_3_triBus4_2_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_2_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_2_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_2_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_2_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_2_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_2_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_2_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_2_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_2_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_2_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_2_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y26
cycloneii_io u_memory_debug_num_3_triBus4_3_(
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
defparam u_memory_debug_num_3_triBus4_3_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_3_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_3_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_3_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_3_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_3_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_3_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_3_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_3_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_3_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_3_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_3_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L2
cycloneii_io u_memory_debug_num_3_triBus4_4_(
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
defparam u_memory_debug_num_3_triBus4_4_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_4_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_4_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_4_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_4_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_4_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_4_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_4_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_4_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_4_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_4_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_4_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB24
cycloneii_io u_memory_debug_num_3_triBus4_5_(
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
defparam u_memory_debug_num_3_triBus4_5_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_5_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_5_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_5_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_5_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_5_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_5_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_5_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_5_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_5_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_5_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_5_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K5
cycloneii_io u_memory_debug_num_3_triBus4_6_(
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
defparam u_memory_debug_num_3_triBus4_6_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_6_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_6_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_6_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_6_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_6_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_6_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_6_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_6_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_6_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_6_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_6_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T10
cycloneii_io u_memory_debug_num_3_triBus4_7_(
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
defparam u_memory_debug_num_3_triBus4_7_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_7_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_7_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_7_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_7_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_7_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_7_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_7_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_7_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_7_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_7_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_7_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB12
cycloneii_io u_memory_debug_num_3_triBus4_8_(
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
	.padio(debug_num_3[8]));
// synopsys translate_off
defparam u_memory_debug_num_3_triBus4_8_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_8_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_8_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_8_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_8_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_8_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_8_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_8_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_8_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_8_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_8_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_8_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C3
cycloneii_io u_memory_debug_num_3_triBus4_9_(
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
	.padio(debug_num_3[9]));
// synopsys translate_off
defparam u_memory_debug_num_3_triBus4_9_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_9_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_9_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_9_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_9_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_9_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_9_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_9_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_9_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_9_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_9_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_9_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC11
cycloneii_io u_memory_debug_num_3_triBus4_10_(
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
	.padio(debug_num_3[10]));
// synopsys translate_off
defparam u_memory_debug_num_3_triBus4_10_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_10_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_10_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_10_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_10_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_10_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_10_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_10_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_10_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_10_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_10_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_10_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A5
cycloneii_io u_memory_debug_num_3_triBus4_11_(
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
	.padio(debug_num_3[11]));
// synopsys translate_off
defparam u_memory_debug_num_3_triBus4_11_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_11_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_11_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_11_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_11_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_11_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_11_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_11_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_11_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_11_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_11_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_11_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V21
cycloneii_io u_memory_debug_num_3_triBus4_12_(
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
	.padio(debug_num_3[12]));
// synopsys translate_off
defparam u_memory_debug_num_3_triBus4_12_.input_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_12_.input_power_up = "low";
defparam u_memory_debug_num_3_triBus4_12_.input_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_12_.input_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_12_.oe_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_12_.oe_power_up = "low";
defparam u_memory_debug_num_3_triBus4_12_.oe_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_12_.oe_sync_reset = "none";
defparam u_memory_debug_num_3_triBus4_12_.operation_mode = "output";
defparam u_memory_debug_num_3_triBus4_12_.output_async_reset = "none";
defparam u_memory_debug_num_3_triBus4_12_.output_power_up = "low";
defparam u_memory_debug_num_3_triBus4_12_.output_register_mode = "none";
defparam u_memory_debug_num_3_triBus4_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D10
cycloneii_io u_memory_debug_num_4_triBus5_0_(
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
defparam u_memory_debug_num_4_triBus5_0_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_0_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_0_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_0_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_0_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_0_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_0_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_0_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_0_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_0_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_0_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_0_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA5
cycloneii_io u_memory_debug_num_4_triBus5_1_(
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
defparam u_memory_debug_num_4_triBus5_1_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_1_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_1_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_1_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_1_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_1_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_1_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_1_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_1_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_1_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_1_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_1_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G13
cycloneii_io u_memory_debug_num_4_triBus5_2_(
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
defparam u_memory_debug_num_4_triBus5_2_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_2_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_2_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_2_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_2_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_2_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_2_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_2_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_2_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_2_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_2_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_2_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T6
cycloneii_io u_memory_debug_num_4_triBus5_3_(
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
defparam u_memory_debug_num_4_triBus5_3_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_3_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_3_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_3_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_3_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_3_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_3_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_3_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_3_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_3_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_3_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_3_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P9
cycloneii_io u_memory_debug_num_4_triBus5_4_(
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
defparam u_memory_debug_num_4_triBus5_4_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_4_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_4_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_4_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_4_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_4_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_4_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_4_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_4_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_4_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_4_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_4_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G10
cycloneii_io u_memory_debug_num_4_triBus5_5_(
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
defparam u_memory_debug_num_4_triBus5_5_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_5_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_5_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_5_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_5_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_5_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_5_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_5_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_5_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_5_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_5_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_5_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD7
cycloneii_io u_memory_debug_num_4_triBus5_6_(
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
defparam u_memory_debug_num_4_triBus5_6_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_6_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_6_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_6_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_6_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_6_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_6_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_6_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_6_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_6_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_6_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_6_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W15
cycloneii_io u_memory_debug_num_4_triBus5_7_(
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
defparam u_memory_debug_num_4_triBus5_7_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_7_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_7_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_7_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_7_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_7_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_7_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_7_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_7_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_7_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_7_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_7_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA4
cycloneii_io u_memory_debug_num_4_triBus5_8_(
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
	.padio(debug_num_4[8]));
// synopsys translate_off
defparam u_memory_debug_num_4_triBus5_8_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_8_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_8_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_8_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_8_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_8_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_8_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_8_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_8_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_8_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_8_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_8_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y5
cycloneii_io u_memory_debug_num_4_triBus5_9_(
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
	.padio(debug_num_4[9]));
// synopsys translate_off
defparam u_memory_debug_num_4_triBus5_9_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_9_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_9_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_9_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_9_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_9_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_9_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_9_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_9_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_9_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_9_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_9_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C8
cycloneii_io u_memory_debug_num_4_triBus5_10_(
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
	.padio(debug_num_4[10]));
// synopsys translate_off
defparam u_memory_debug_num_4_triBus5_10_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_10_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_10_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_10_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_10_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_10_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_10_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_10_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_10_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_10_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_10_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_10_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F17
cycloneii_io u_memory_debug_num_4_triBus5_11_(
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
	.padio(debug_num_4[11]));
// synopsys translate_off
defparam u_memory_debug_num_4_triBus5_11_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_11_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_11_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_11_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_11_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_11_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_11_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_11_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_11_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_11_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_11_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_11_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B6
cycloneii_io u_memory_debug_num_4_triBus5_12_(
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
	.padio(debug_num_4[12]));
// synopsys translate_off
defparam u_memory_debug_num_4_triBus5_12_.input_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_12_.input_power_up = "low";
defparam u_memory_debug_num_4_triBus5_12_.input_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_12_.input_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_12_.oe_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_12_.oe_power_up = "low";
defparam u_memory_debug_num_4_triBus5_12_.oe_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_12_.oe_sync_reset = "none";
defparam u_memory_debug_num_4_triBus5_12_.operation_mode = "output";
defparam u_memory_debug_num_4_triBus5_12_.output_async_reset = "none";
defparam u_memory_debug_num_4_triBus5_12_.output_power_up = "low";
defparam u_memory_debug_num_4_triBus5_12_.output_register_mode = "none";
defparam u_memory_debug_num_4_triBus5_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F10
cycloneii_io u_memory_debug_num_5_triBus6_0_(
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
defparam u_memory_debug_num_5_triBus6_0_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_0_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_0_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_0_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_0_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_0_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_0_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_0_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_0_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_0_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_0_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_0_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A14
cycloneii_io u_memory_debug_num_5_triBus6_1_(
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
defparam u_memory_debug_num_5_triBus6_1_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_1_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_1_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_1_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_1_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_1_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_1_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_1_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_1_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_1_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_1_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_1_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC21
cycloneii_io u_memory_debug_num_5_triBus6_2_(
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
defparam u_memory_debug_num_5_triBus6_2_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_2_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_2_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_2_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_2_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_2_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_2_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_2_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_2_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_2_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_2_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_2_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H15
cycloneii_io u_memory_debug_num_5_triBus6_3_(
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
defparam u_memory_debug_num_5_triBus6_3_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_3_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_3_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_3_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_3_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_3_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_3_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_3_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_3_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_3_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_3_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_3_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD8
cycloneii_io u_memory_debug_num_5_triBus6_4_(
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
defparam u_memory_debug_num_5_triBus6_4_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_4_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_4_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_4_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_4_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_4_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_4_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_4_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_4_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_4_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_4_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_4_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J9
cycloneii_io u_memory_debug_num_5_triBus6_5_(
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
defparam u_memory_debug_num_5_triBus6_5_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_5_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_5_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_5_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_5_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_5_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_5_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_5_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_5_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_5_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_5_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_5_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T2
cycloneii_io u_memory_debug_num_5_triBus6_6_(
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
defparam u_memory_debug_num_5_triBus6_6_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_6_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_6_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_6_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_6_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_6_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_6_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_6_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_6_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_6_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_6_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_6_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A23
cycloneii_io u_memory_debug_num_5_triBus6_7_(
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
defparam u_memory_debug_num_5_triBus6_7_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_7_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_7_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_7_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_7_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_7_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_7_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_7_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_7_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_7_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_7_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_7_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H12
cycloneii_io u_memory_debug_num_5_triBus6_8_(
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
	.padio(debug_num_5[8]));
// synopsys translate_off
defparam u_memory_debug_num_5_triBus6_8_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_8_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_8_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_8_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_8_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_8_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_8_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_8_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_8_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_8_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_8_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_8_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T9
cycloneii_io u_memory_debug_num_5_triBus6_9_(
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
	.padio(debug_num_5[9]));
// synopsys translate_off
defparam u_memory_debug_num_5_triBus6_9_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_9_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_9_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_9_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_9_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_9_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_9_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_9_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_9_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_9_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_9_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_9_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V20
cycloneii_io u_memory_debug_num_5_triBus6_10_(
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
	.padio(debug_num_5[10]));
// synopsys translate_off
defparam u_memory_debug_num_5_triBus6_10_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_10_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_10_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_10_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_10_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_10_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_10_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_10_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_10_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_10_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_10_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_10_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF22
cycloneii_io u_memory_debug_num_5_triBus6_11_(
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
	.padio(debug_num_5[11]));
// synopsys translate_off
defparam u_memory_debug_num_5_triBus6_11_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_11_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_11_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_11_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_11_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_11_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_11_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_11_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_11_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_11_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_11_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_11_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC1
cycloneii_io u_memory_debug_num_5_triBus6_12_(
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
	.padio(debug_num_5[12]));
// synopsys translate_off
defparam u_memory_debug_num_5_triBus6_12_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_12_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_12_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_12_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_12_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_12_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_12_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_12_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_12_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_12_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_12_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_12_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D8
cycloneii_io u_memory_debug_num_5_triBus6_13_(
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
	.padio(debug_num_5[13]));
// synopsys translate_off
defparam u_memory_debug_num_5_triBus6_13_.input_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_13_.input_power_up = "low";
defparam u_memory_debug_num_5_triBus6_13_.input_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_13_.input_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_13_.oe_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_13_.oe_power_up = "low";
defparam u_memory_debug_num_5_triBus6_13_.oe_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_13_.oe_sync_reset = "none";
defparam u_memory_debug_num_5_triBus6_13_.operation_mode = "output";
defparam u_memory_debug_num_5_triBus6_13_.output_async_reset = "none";
defparam u_memory_debug_num_5_triBus6_13_.output_power_up = "low";
defparam u_memory_debug_num_5_triBus6_13_.output_register_mode = "none";
defparam u_memory_debug_num_5_triBus6_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD22
cycloneii_io u_memory_ix1313z43919(
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
	.padio(debug_num_6));
// synopsys translate_off
defparam u_memory_ix1313z43919.input_async_reset = "none";
defparam u_memory_ix1313z43919.input_power_up = "low";
defparam u_memory_ix1313z43919.input_register_mode = "none";
defparam u_memory_ix1313z43919.input_sync_reset = "none";
defparam u_memory_ix1313z43919.oe_async_reset = "none";
defparam u_memory_ix1313z43919.oe_power_up = "low";
defparam u_memory_ix1313z43919.oe_register_mode = "none";
defparam u_memory_ix1313z43919.oe_sync_reset = "none";
defparam u_memory_ix1313z43919.operation_mode = "output";
defparam u_memory_ix1313z43919.output_async_reset = "none";
defparam u_memory_ix1313z43919.output_power_up = "low";
defparam u_memory_ix1313z43919.output_register_mode = "none";
defparam u_memory_ix1313z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B8
cycloneii_io u_memory_ix1312z43919(
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
	.padio(debug_num_7));
// synopsys translate_off
defparam u_memory_ix1312z43919.input_async_reset = "none";
defparam u_memory_ix1312z43919.input_power_up = "low";
defparam u_memory_ix1312z43919.input_register_mode = "none";
defparam u_memory_ix1312z43919.input_sync_reset = "none";
defparam u_memory_ix1312z43919.oe_async_reset = "none";
defparam u_memory_ix1312z43919.oe_power_up = "low";
defparam u_memory_ix1312z43919.oe_register_mode = "none";
defparam u_memory_ix1312z43919.oe_sync_reset = "none";
defparam u_memory_ix1312z43919.operation_mode = "output";
defparam u_memory_ix1312z43919.output_async_reset = "none";
defparam u_memory_ix1312z43919.output_power_up = "low";
defparam u_memory_ix1312z43919.output_register_mode = "none";
defparam u_memory_ix1312z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C2
cycloneii_io u_memory_ix1311z43919(
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
	.padio(debug_num_8));
// synopsys translate_off
defparam u_memory_ix1311z43919.input_async_reset = "none";
defparam u_memory_ix1311z43919.input_power_up = "low";
defparam u_memory_ix1311z43919.input_register_mode = "none";
defparam u_memory_ix1311z43919.input_sync_reset = "none";
defparam u_memory_ix1311z43919.oe_async_reset = "none";
defparam u_memory_ix1311z43919.oe_power_up = "low";
defparam u_memory_ix1311z43919.oe_register_mode = "none";
defparam u_memory_ix1311z43919.oe_sync_reset = "none";
defparam u_memory_ix1311z43919.operation_mode = "output";
defparam u_memory_ix1311z43919.output_async_reset = "none";
defparam u_memory_ix1311z43919.output_power_up = "low";
defparam u_memory_ix1311z43919.output_register_mode = "none";
defparam u_memory_ix1311z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R4
cycloneii_io debug_key_a1_a_aI(
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
	.padio(debug_key[1]));
// synopsys translate_off
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C4
cycloneii_io debug_key_a2_a_aI(
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
	.padio(debug_key[2]));
// synopsys translate_off
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE15
cycloneii_io debug_key_a3_a_aI(
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
	.padio(debug_key[3]));
// synopsys translate_off
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V13
cycloneii_io debug_switch_a0_a_aI(
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
	.padio(debug_switch[0]));
// synopsys translate_off
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA24
cycloneii_io debug_switch_a1_a_aI(
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
	.padio(debug_switch[1]));
// synopsys translate_off
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y21
cycloneii_io debug_switch_a2_a_aI(
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
	.padio(debug_switch[2]));
// synopsys translate_off
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y14
cycloneii_io debug_switch_a3_a_aI(
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
	.padio(debug_switch[3]));
// synopsys translate_off
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE13
cycloneii_io debug_switch_a4_a_aI(
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
	.padio(debug_switch[4]));
// synopsys translate_off
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA14
cycloneii_io debug_switch_a5_a_aI(
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
	.padio(debug_switch[5]));
// synopsys translate_off
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B23
cycloneii_io debug_switch_a6_a_aI(
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
	.padio(debug_switch[6]));
// synopsys translate_off
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io debug_switch_a7_a_aI(
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
	.padio(debug_switch[7]));
// synopsys translate_off
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T4
cycloneii_io debug_switch_a8_a_aI(
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
	.padio(debug_switch[8]));
// synopsys translate_off
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F7
cycloneii_io debug_switch_a9_a_aI(
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
	.padio(debug_switch[9]));
// synopsys translate_off
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA11
cycloneii_io debug_switch_a10_a_aI(
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
	.padio(debug_switch[10]));
// synopsys translate_off
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D9
cycloneii_io debug_switch_a11_a_aI(
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
	.padio(debug_switch[11]));
// synopsys translate_off
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA10
cycloneii_io debug_switch_a12_a_aI(
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
	.padio(debug_switch[12]));
// synopsys translate_off
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B22
cycloneii_io debug_switch_a13_a_aI(
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
	.padio(debug_switch[13]));
// synopsys translate_off
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G5
cycloneii_io debug_switch_a14_a_aI(
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
	.padio(debug_switch[14]));
// synopsys translate_off
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D12
cycloneii_io debug_switch_a15_a_aI(
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
	.padio(debug_switch[15]));
// synopsys translate_off
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE3
cycloneii_io debug_switch_a16_a_aI(
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
	.padio(debug_switch[16]));
// synopsys translate_off
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F14
cycloneii_io debug_switch_a17_a_aI(
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
	.padio(debug_switch[17]));
// synopsys translate_off
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
