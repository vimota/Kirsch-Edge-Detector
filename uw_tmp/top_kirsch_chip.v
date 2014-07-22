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

// DATE "07/22/2014 01:38:41"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_kirsch_chip (	nrst,
	clk,
	rxflex,
	txflex,
	o_sevenseg,
	o_mode,
	o_nrst,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_sevenseg_0,
	debug_sevenseg_1,
	debug_sevenseg_2,
	debug_sevenseg_3,
	debug_sevenseg_4,
	debug_sevenseg_5);
input 	nrst;
input 	clk;
input 	rxflex;
output 	txflex;
output 	[15:0] o_sevenseg;
output 	[1:0] o_mode;
output 	o_nrst;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[16:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_sevenseg_0;
output 	[3:0] debug_sevenseg_1;
output 	[3:0] debug_sevenseg_2;
output 	[3:0] debug_sevenseg_3;
output 	[3:0] debug_sevenseg_4;
output 	[3:0] debug_sevenseg_5;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("top_kirsch_v.sdo");
// synopsys translate_on

wire \u_uw_uart|i_uarts|nx61140z1 ;
wire \u_kirsch|u_flow|o_row_3_ ;
wire \u_kirsch|u_memory|nx8852z5 ;
wire \u_kirsch|u_memory|nx8852z7 ;
wire \u_uw_uart|sdout_0_ ;
wire \u_uw_uart|i_uarts|nx28624z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ;
wire \u_uw_uart|i_uarts|nx35603z1 ;
wire \u_uw_uart|i_uarts|TxDivisor_5_ ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ;
wire \u_uw_uart|i_uarts|nx32400z5 ;
wire \u_uw_uart|i_uarts|nx32400z7 ;
wire \u_kirsch|u_flow|nx30069z1 ;
wire \u_kirsch|u_memory|nx47386z1 ;
wire \u_uw_uart|mdata_0_ ;
wire \u_uw_uart|sdout_1_ ;
wire \u_uw_uart|i_uarts|nx29621z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ;
wire \u_uw_uart|i_uarts|nx50920z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z19 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z13 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z15 ;
wire \u_uw_uart|modgen_counter_waitcount|nx64508z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z5 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z7 ;
wire \u_uw_uart|nx39480z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z9 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z11 ;
wire \u_uw_uart|nx39480z7 ;
wire \u_uw_uart|nx39480z5 ;
wire \u_uw_uart|nx40736z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ;
wire \u_kirsch|u_flow|nx24934z1 ;
wire \u_uw_uart|i_uarts|nx34394z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ;
wire \u_uw_uart|i_uarts|nx34394z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ;
wire \u_uw_uart|i_uarts|nx34394z8 ;
wire \u_uw_uart|i_uarts|nx34394z5 ;
wire \u_uw_uart|i_uarts|RxBitCnt_1_ ;
wire \u_uw_uart|rawrx ;
wire \u_kirsch|u_flow|o_edge ;
wire \u_uw_uart|nx38742z1 ;
wire \u_uw_uart|nx40736z3 ;
wire \u_uw_uart|nx40736z2 ;
wire \u_uw_uart|mdata_1_ ;
wire \u_uw_uart|sdout_2_ ;
wire \u_uw_uart|i_uarts|nx30618z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ;
wire \u_uw_uart|modgen_counter_waitcount|nx57253z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z16 ;
wire \u_uw_uart|modgen_counter_waitcount|nx59247z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z14 ;
wire \u_uw_uart|modgen_counter_waitcount|nx60244z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z12 ;
wire \u_uw_uart|modgen_counter_waitcount|nx17096z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z10 ;
wire \u_uw_uart|modgen_counter_waitcount|nx18093z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z8 ;
wire \u_uw_uart|modgen_counter_waitcount|nx19090z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx20087z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z4 ;
wire \u_uw_uart|modgen_counter_waitcount|nx21084z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z1 ;
wire \u_kirsch|u_flow|nx19799z1 ;
wire \u_kirsch|f_i_mode_next_1_ ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ;
wire \u_uw_uart|i_uarts|nx9370z2 ;
wire \u_uw_uart|i_uarts|nx10367z1 ;
wire \u_kirsch|u_flow|prev_edge ;
wire \u_kirsch|u_flow|p41 ;
wire \u_kirsch|u_flow|p45 ;
wire \u_kirsch|u_flow|max_fwd ;
wire \u_kirsch|u_flow|prev_max_13_ ;
wire \u_kirsch|u_flow|p43_13_ ;
wire \u_kirsch|u_flow|prev_max_12_ ;
wire \u_kirsch|u_flow|p43_12_ ;
wire \u_kirsch|u_flow|prev_max_11_ ;
wire \u_kirsch|u_flow|p43_11_ ;
wire \u_kirsch|u_flow|prev_max_10_ ;
wire \u_kirsch|u_flow|p43_10_ ;
wire \u_kirsch|u_flow|prev_max_9_ ;
wire \u_kirsch|u_flow|p43_9_ ;
wire \u_kirsch|u_flow|prev_max_8_ ;
wire \u_kirsch|u_flow|p43_8_ ;
wire \u_kirsch|u_flow|prev_max_7_ ;
wire \u_kirsch|u_flow|p43_7_ ;
wire \u_kirsch|u_flow|prev_max_6_ ;
wire \u_kirsch|u_flow|p43_6_ ;
wire \u_kirsch|u_flow|prev_max_5_ ;
wire \u_kirsch|u_flow|p43_5_ ;
wire \u_kirsch|u_flow|prev_max_4_ ;
wire \u_kirsch|u_flow|p43_4_ ;
wire \u_kirsch|u_flow|prev_max_3_ ;
wire \u_kirsch|u_flow|p43_3_ ;
wire \u_kirsch|u_flow|prev_max_2_ ;
wire \u_kirsch|u_flow|p43_2_ ;
wire \u_kirsch|u_flow|prev_max_1_ ;
wire \u_kirsch|u_flow|p43_1_ ;
wire \u_kirsch|u_flow|p43_0_ ;
wire \u_kirsch|u_flow|prev_max_0_ ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z40 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z37 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z34 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z31 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z28 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z25 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z22 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z19 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z16 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z13 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z10 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z7 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z4 ;
wire \u_kirsch|u_flow|ix47310z8933|nx100z1 ;
wire \u_kirsch|u_flow|nx47310z6 ;
wire \u_kirsch|u_flow|nx47310z7 ;
wire \u_kirsch|u_flow|nx47310z8 ;
wire \u_kirsch|u_flow|nx47310z9 ;
wire \u_kirsch|u_flow|nx47310z5 ;
wire \u_kirsch|u_flow|nx47310z10 ;
wire \u_kirsch|u_flow|nx47310z11 ;
wire \u_kirsch|u_flow|nx47310z12 ;
wire \u_kirsch|u_flow|nx47310z4 ;
wire \u_kirsch|u_flow|nx47310z2 ;
wire \u_kirsch|u_flow|nx30752z1 ;
wire \u_kirsch|u_flow|max_dir_0_ ;
wire \u_kirsch|u_flow|o_dir_0_ ;
wire \u_uw_uart|mdata_2_ ;
wire \u_uw_uart|sdout_3_ ;
wire \u_uw_uart|i_uarts|nx31615z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ;
wire \u_kirsch|u_flow|p40 ;
wire \u_kirsch|u_memory|o_row_3_ ;
wire \u_kirsch|f_i_row_next_3_ ;
wire \u_kirsch|f_i_row_3_ ;
wire \u_kirsch|f_i_row_next_2_ ;
wire \u_kirsch|u_flow|nx5049z1 ;
wire \u_kirsch|u_flow|nx47310z1 ;
wire \u_kirsch|u_flow|p31_11_ ;
wire \u_kirsch|u_flow|p32_10_ ;
wire \u_kirsch|u_flow|p31_10_ ;
wire \u_kirsch|u_flow|p32_9_ ;
wire \u_kirsch|u_flow|p31_9_ ;
wire \u_kirsch|u_flow|p32_8_ ;
wire \u_kirsch|u_flow|p31_8_ ;
wire \u_kirsch|u_flow|p32_7_ ;
wire \u_kirsch|u_flow|p31_7_ ;
wire \u_kirsch|u_flow|p32_6_ ;
wire \u_kirsch|u_flow|p31_6_ ;
wire \u_kirsch|u_flow|p32_5_ ;
wire \u_kirsch|u_flow|p31_5_ ;
wire \u_kirsch|u_flow|p32_4_ ;
wire \u_kirsch|u_flow|p31_4_ ;
wire \u_kirsch|u_flow|p32_3_ ;
wire \u_kirsch|u_flow|p31_3_ ;
wire \u_kirsch|u_flow|p32_2_ ;
wire \u_kirsch|u_flow|p31_2_ ;
wire \u_kirsch|u_flow|p32_1_ ;
wire \u_kirsch|u_flow|p31_1_ ;
wire \u_kirsch|u_flow|p31_0_ ;
wire \u_kirsch|u_flow|p32_0_ ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx37973z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z33 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx38970z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z30 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx39967z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z27 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx40964z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z24 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx41961z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z21 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx42958z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z18 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx43955z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z15 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx44952z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z12 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx45949z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z9 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx46946z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z6 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx62798z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z3 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx63795z1 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx23445z2 ;
wire \u_kirsch|u_flow|p31_12_ ;
wire \u_kirsch|u_flow|p30 ;
wire \u_kirsch|u_flow|p4s_sub12_0|nx23445z1 ;
wire \u_kirsch|u_flow|nx26026z2 ;
wire \u_kirsch|u_flow|nx26026z4 ;
wire \u_kirsch|u_flow|nx26026z1 ;
wire \u_kirsch|u_flow|p35 ;
wire \u_kirsch|u_flow|p4s_13_ ;
wire \u_kirsch|u_flow|p4s_12_ ;
wire \u_kirsch|u_flow|nx27830z1 ;
wire \u_kirsch|u_flow|max_dir_1_ ;
wire \u_kirsch|u_flow|o_dir_1_ ;
wire \u_uw_uart|mdata_3_ ;
wire \u_uw_uart|sdout_5_ ;
wire \u_uw_uart|i_uarts|nx32612z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ;
wire \u_kirsch|u_memory|nx60567z3 ;
wire \u_kirsch|u_memory|nx60567z6 ;
wire \u_kirsch|u_flow|p21_11_ ;
wire \u_kirsch|u_flow|p22_11_ ;
wire \u_kirsch|u_flow|p21_12_ ;
wire \u_kirsch|u_flow|p22_12_ ;
wire \u_kirsch|u_flow|p21_10_ ;
wire \u_kirsch|u_flow|p22_10_ ;
wire \u_kirsch|u_flow|p21_9_ ;
wire \u_kirsch|u_flow|p22_9_ ;
wire \u_kirsch|u_flow|p21_8_ ;
wire \u_kirsch|u_flow|p22_8_ ;
wire \u_kirsch|u_flow|p21_7_ ;
wire \u_kirsch|u_flow|p22_7_ ;
wire \u_kirsch|u_flow|p21_6_ ;
wire \u_kirsch|u_flow|p22_6_ ;
wire \u_kirsch|u_flow|p21_5_ ;
wire \u_kirsch|u_flow|p22_5_ ;
wire \u_kirsch|u_flow|p21_4_ ;
wire \u_kirsch|u_flow|p22_4_ ;
wire \u_kirsch|u_flow|p21_3_ ;
wire \u_kirsch|u_flow|p22_3_ ;
wire \u_kirsch|u_flow|p21_2_ ;
wire \u_kirsch|u_flow|p22_2_ ;
wire \u_kirsch|u_flow|p21_1_ ;
wire \u_kirsch|u_flow|p22_1_ ;
wire \u_kirsch|u_flow|p22_0_ ;
wire \u_kirsch|u_flow|p21_0_ ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z37 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z34 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z31 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z28 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z25 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z22 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z19 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z16 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z13 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z10 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z7 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z4 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z1 ;
wire \u_kirsch|u_flow|p23_10_ ;
wire \u_kirsch|u_flow|p23_9_ ;
wire \u_kirsch|u_flow|p23_8_ ;
wire \u_kirsch|u_flow|p23_7_ ;
wire \u_kirsch|u_flow|p23_6_ ;
wire \u_kirsch|u_flow|p23_5_ ;
wire \u_kirsch|u_flow|p23_4_ ;
wire \u_kirsch|u_flow|p23_3_ ;
wire \u_kirsch|u_flow|p23_2_ ;
wire \u_kirsch|u_flow|p23_1_ ;
wire \u_kirsch|u_flow|p23_0_ ;
wire \u_kirsch|u_flow|p20 ;
wire \u_kirsch|u_flow|nx26833z2 ;
wire \u_kirsch|u_flow|nx26833z3 ;
wire \u_kirsch|u_flow|nx26833z1 ;
wire \u_kirsch|u_flow|max_dir_2_ ;
wire \u_kirsch|u_flow|o_dir_2_ ;
wire \u_uw_uart|mdata_5_ ;
wire \u_uw_uart|i_uarts|nx33609z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ;
wire \u_kirsch|f_t2_next_7_ ;
wire \u_kirsch|u_memory|o_image0_1__7_ ;
wire \u_kirsch|f_t2_7_ ;
wire \u_kirsch|f_t1_next_7_ ;
wire \u_kirsch|u_memory|o_image0_2__7_ ;
wire \u_kirsch|f_t1_7_ ;
wire \u_kirsch|f_t2_next_6_ ;
wire \u_kirsch|u_memory|o_image0_1__6_ ;
wire \u_kirsch|f_t2_6_ ;
wire \u_kirsch|f_t1_next_6_ ;
wire \u_kirsch|u_memory|o_image0_2__6_ ;
wire \u_kirsch|f_t1_6_ ;
wire \u_kirsch|f_t2_next_5_ ;
wire \u_kirsch|u_memory|o_image0_1__5_ ;
wire \u_kirsch|f_t2_5_ ;
wire \u_kirsch|f_t1_next_5_ ;
wire \u_kirsch|u_memory|o_image0_2__5_ ;
wire \u_kirsch|f_t1_5_ ;
wire \u_kirsch|f_t2_next_4_ ;
wire \u_kirsch|u_memory|o_image0_1__4_ ;
wire \u_kirsch|f_t2_4_ ;
wire \u_kirsch|f_t1_next_4_ ;
wire \u_kirsch|u_memory|o_image0_2__4_ ;
wire \u_kirsch|f_t1_4_ ;
wire \u_kirsch|f_t2_next_3_ ;
wire \u_kirsch|u_memory|o_image0_1__3_ ;
wire \u_kirsch|f_t2_3_ ;
wire \u_kirsch|f_t1_next_3_ ;
wire \u_kirsch|u_memory|o_image0_2__3_ ;
wire \u_kirsch|f_t1_3_ ;
wire \u_kirsch|f_t2_next_2_ ;
wire \u_kirsch|u_memory|o_image0_1__2_ ;
wire \u_kirsch|f_t2_2_ ;
wire \u_kirsch|f_t1_next_2_ ;
wire \u_kirsch|u_memory|o_image0_2__2_ ;
wire \u_kirsch|f_t1_2_ ;
wire \u_kirsch|f_t2_next_1_ ;
wire \u_kirsch|u_memory|o_image0_1__1_ ;
wire \u_kirsch|f_t2_1_ ;
wire \u_kirsch|f_t1_next_1_ ;
wire \u_kirsch|u_memory|o_image0_2__1_ ;
wire \u_kirsch|f_t1_1_ ;
wire \u_kirsch|f_t1_next_0_ ;
wire \u_kirsch|u_memory|o_image0_2__0_ ;
wire \u_kirsch|f_t1_0_ ;
wire \u_kirsch|f_t2_next_0_ ;
wire \u_kirsch|u_memory|o_image0_1__0_ ;
wire \u_kirsch|f_t2_0_ ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx37973z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z22 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx38970z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z19 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx39967z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z16 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx40964z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z13 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx41961z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z10 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx42958z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z7 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx43955z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z4 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx44952z1 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx23445z2 ;
wire \u_kirsch|u_flow|p11_add8_0i1|nx23445z1 ;
wire \u_kirsch|f_t3_next_7_ ;
wire \u_kirsch|u_memory|o_image0_0__7_ ;
wire \u_kirsch|f_t3_7_ ;
wire \u_kirsch|f_t3_next_6_ ;
wire \u_kirsch|u_memory|o_image0_0__6_ ;
wire \u_kirsch|f_t3_6_ ;
wire \u_kirsch|f_t3_next_5_ ;
wire \u_kirsch|u_memory|o_image0_0__5_ ;
wire \u_kirsch|f_t3_5_ ;
wire \u_kirsch|f_t3_next_4_ ;
wire \u_kirsch|u_memory|o_image0_0__4_ ;
wire \u_kirsch|f_t3_4_ ;
wire \u_kirsch|f_t3_next_3_ ;
wire \u_kirsch|u_memory|o_image0_0__3_ ;
wire \u_kirsch|f_t3_3_ ;
wire \u_kirsch|f_t3_next_2_ ;
wire \u_kirsch|u_memory|o_image0_0__2_ ;
wire \u_kirsch|f_t3_2_ ;
wire \u_kirsch|f_t3_next_1_ ;
wire \u_kirsch|u_memory|o_image0_0__1_ ;
wire \u_kirsch|f_t3_1_ ;
wire \u_kirsch|f_t3_next_0_ ;
wire \u_kirsch|u_memory|o_image0_0__0_ ;
wire \u_kirsch|f_t3_0_ ;
wire \u_kirsch|u_flow|p11_add9_1|nx37973z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z24 ;
wire \u_kirsch|u_flow|p11_add9_1|nx38970z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z21 ;
wire \u_kirsch|u_flow|p11_add9_1|nx39967z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z18 ;
wire \u_kirsch|u_flow|p11_add9_1|nx40964z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z15 ;
wire \u_kirsch|u_flow|p11_add9_1|nx41961z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z12 ;
wire \u_kirsch|u_flow|p11_add9_1|nx42958z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z9 ;
wire \u_kirsch|u_flow|p11_add9_1|nx43955z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z6 ;
wire \u_kirsch|u_flow|p11_add9_1|nx44952z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z3 ;
wire \u_kirsch|u_flow|p11_add9_1|nx45949z1 ;
wire \u_kirsch|u_flow|p11_add9_1|nx23445z2 ;
wire \u_kirsch|u_flow|p11_add9_1|nx23445z1 ;
wire \u_kirsch|f_b2_next_7_ ;
wire \u_kirsch|u_memory|o_image2_1__7_ ;
wire \u_kirsch|f_b2_7_ ;
wire \u_kirsch|f_b1_next_7_ ;
wire \u_kirsch|u_memory|o_image2_0__7_ ;
wire \u_kirsch|f_b1_7_ ;
wire \u_kirsch|f_b2_next_6_ ;
wire \u_kirsch|u_memory|o_image2_1__6_ ;
wire \u_kirsch|f_b2_6_ ;
wire \u_kirsch|f_b1_next_6_ ;
wire \u_kirsch|u_memory|o_image2_0__6_ ;
wire \u_kirsch|f_b1_6_ ;
wire \u_kirsch|f_b2_next_5_ ;
wire \u_kirsch|u_memory|o_image2_1__5_ ;
wire \u_kirsch|f_b2_5_ ;
wire \u_kirsch|f_b1_next_5_ ;
wire \u_kirsch|u_memory|o_image2_0__5_ ;
wire \u_kirsch|f_b1_5_ ;
wire \u_kirsch|f_b2_next_4_ ;
wire \u_kirsch|u_memory|o_image2_1__4_ ;
wire \u_kirsch|f_b2_4_ ;
wire \u_kirsch|f_b1_next_4_ ;
wire \u_kirsch|u_memory|o_image2_0__4_ ;
wire \u_kirsch|f_b1_4_ ;
wire \u_kirsch|f_b2_next_3_ ;
wire \u_kirsch|u_memory|o_image2_1__3_ ;
wire \u_kirsch|f_b2_3_ ;
wire \u_kirsch|f_b1_next_3_ ;
wire \u_kirsch|u_memory|o_image2_0__3_ ;
wire \u_kirsch|f_b1_3_ ;
wire \u_kirsch|f_b2_next_2_ ;
wire \u_kirsch|u_memory|o_image2_1__2_ ;
wire \u_kirsch|f_b2_2_ ;
wire \u_kirsch|f_b1_next_2_ ;
wire \u_kirsch|u_memory|o_image2_0__2_ ;
wire \u_kirsch|f_b1_2_ ;
wire \u_kirsch|f_b2_next_1_ ;
wire \u_kirsch|u_memory|o_image2_1__1_ ;
wire \u_kirsch|f_b2_1_ ;
wire \u_kirsch|f_b1_next_1_ ;
wire \u_kirsch|u_memory|o_image2_0__1_ ;
wire \u_kirsch|f_b1_1_ ;
wire \u_kirsch|f_b1_next_0_ ;
wire \u_kirsch|u_memory|o_image2_0__0_ ;
wire \u_kirsch|f_b1_0_ ;
wire \u_kirsch|f_b2_next_0_ ;
wire \u_kirsch|u_memory|o_image2_1__0_ ;
wire \u_kirsch|f_b2_0_ ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx37973z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z22 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx38970z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z19 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx39967z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z16 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx40964z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z13 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx41961z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z10 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx42958z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z7 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx43955z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z4 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx44952z1 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx23445z2 ;
wire \u_kirsch|u_flow|p12_add8_0i2|nx23445z1 ;
wire \u_kirsch|f_b3_next_7_ ;
wire \u_kirsch|u_memory|o_image2_2__7_ ;
wire \u_kirsch|f_b3_7_ ;
wire \u_kirsch|f_b3_next_6_ ;
wire \u_kirsch|u_memory|o_image2_2__6_ ;
wire \u_kirsch|f_b3_6_ ;
wire \u_kirsch|f_b3_next_5_ ;
wire \u_kirsch|u_memory|o_image2_2__5_ ;
wire \u_kirsch|f_b3_5_ ;
wire \u_kirsch|f_b3_next_4_ ;
wire \u_kirsch|u_memory|o_image2_2__4_ ;
wire \u_kirsch|f_b3_4_ ;
wire \u_kirsch|f_b3_next_3_ ;
wire \u_kirsch|u_memory|o_image2_2__3_ ;
wire \u_kirsch|f_b3_3_ ;
wire \u_kirsch|f_b3_next_2_ ;
wire \u_kirsch|u_memory|o_image2_2__2_ ;
wire \u_kirsch|f_b3_2_ ;
wire \u_kirsch|f_b3_next_1_ ;
wire \u_kirsch|u_memory|o_image2_2__1_ ;
wire \u_kirsch|f_b3_1_ ;
wire \u_kirsch|f_b3_next_0_ ;
wire \u_kirsch|u_memory|o_image2_2__0_ ;
wire \u_kirsch|f_b3_0_ ;
wire \u_kirsch|u_flow|p12_add9_2|nx37973z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z24 ;
wire \u_kirsch|u_flow|p12_add9_2|nx38970z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z21 ;
wire \u_kirsch|u_flow|p12_add9_2|nx39967z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z18 ;
wire \u_kirsch|u_flow|p12_add9_2|nx40964z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z15 ;
wire \u_kirsch|u_flow|p12_add9_2|nx41961z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z12 ;
wire \u_kirsch|u_flow|p12_add9_2|nx42958z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z9 ;
wire \u_kirsch|u_flow|p12_add9_2|nx43955z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z6 ;
wire \u_kirsch|u_flow|p12_add9_2|nx44952z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z3 ;
wire \u_kirsch|u_flow|p12_add9_2|nx45949z1 ;
wire \u_kirsch|u_flow|p12_add9_2|nx23445z2 ;
wire \u_kirsch|u_flow|p12_add9_2|nx23445z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx37973z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx42958z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx44952z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z3 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx46946z1 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx37973z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx40964z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx41961z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx42958z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx43955z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx45949z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx23445z2 ;
wire \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx37973z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z32 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx38970z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z29 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx39967z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z26 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx40964z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z23 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx41961z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z20 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx42958z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z17 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx43955z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z14 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx44952z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z11 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx45949z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z8 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx46946z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z6 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx62798z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z4 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx37973z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx39967z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx42958z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx43955z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx44952z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z3 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx46946z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx37973z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx40964z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx42958z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx43955z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx23445z2 ;
wire \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx37973z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z32 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx38970z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z29 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx39967z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z26 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx40964z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z23 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx41961z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z20 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx42958z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z17 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx43955z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z14 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx44952z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z11 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx45949z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z8 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx46946z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z6 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx62798z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z4 ;
wire \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1 ;
wire \u_kirsch|u_flow|p21_add12_4i1|nx63795z1 ;
wire \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1 ;
wire \u_kirsch|u_flow|p22_add12_4i2|nx63795z1 ;
wire \u_kirsch|f_i2_next_7_ ;
wire \u_kirsch|u_memory|o_image1_2__7_ ;
wire \u_kirsch|f_i2_7_ ;
wire \u_kirsch|f_i1_next_7_ ;
wire \u_kirsch|u_memory|o_image1_0__7_ ;
wire \u_kirsch|f_i1_7_ ;
wire \u_kirsch|f_i2_next_6_ ;
wire \u_kirsch|u_memory|o_image1_2__6_ ;
wire \u_kirsch|f_i2_6_ ;
wire \u_kirsch|f_i1_next_6_ ;
wire \u_kirsch|u_memory|o_image1_0__6_ ;
wire \u_kirsch|f_i1_6_ ;
wire \u_kirsch|f_i2_next_5_ ;
wire \u_kirsch|u_memory|o_image1_2__5_ ;
wire \u_kirsch|f_i2_5_ ;
wire \u_kirsch|f_i1_next_5_ ;
wire \u_kirsch|u_memory|o_image1_0__5_ ;
wire \u_kirsch|f_i1_5_ ;
wire \u_kirsch|f_i2_next_4_ ;
wire \u_kirsch|u_memory|o_image1_2__4_ ;
wire \u_kirsch|f_i2_4_ ;
wire \u_kirsch|f_i1_next_4_ ;
wire \u_kirsch|u_memory|o_image1_0__4_ ;
wire \u_kirsch|f_i1_4_ ;
wire \u_kirsch|f_i2_next_3_ ;
wire \u_kirsch|u_memory|o_image1_2__3_ ;
wire \u_kirsch|f_i2_3_ ;
wire \u_kirsch|f_i1_next_3_ ;
wire \u_kirsch|u_memory|o_image1_0__3_ ;
wire \u_kirsch|f_i1_3_ ;
wire \u_kirsch|f_i2_next_2_ ;
wire \u_kirsch|u_memory|o_image1_2__2_ ;
wire \u_kirsch|f_i2_2_ ;
wire \u_kirsch|f_i1_next_2_ ;
wire \u_kirsch|u_memory|o_image1_0__2_ ;
wire \u_kirsch|f_i1_2_ ;
wire \u_kirsch|f_i2_next_1_ ;
wire \u_kirsch|u_memory|o_image1_2__1_ ;
wire \u_kirsch|f_i2_1_ ;
wire \u_kirsch|f_i1_next_1_ ;
wire \u_kirsch|u_memory|o_image1_0__1_ ;
wire \u_kirsch|f_i1_1_ ;
wire \u_kirsch|f_i1_next_0_ ;
wire \u_kirsch|u_memory|o_image1_0__0_ ;
wire \u_kirsch|f_i1_0_ ;
wire \u_kirsch|f_i2_next_0_ ;
wire \u_kirsch|u_memory|o_image1_2__0_ ;
wire \u_kirsch|f_i2_0_ ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx37973z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z22 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx38970z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z19 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx39967z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z16 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx40964z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z13 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx41961z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z10 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx42958z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z7 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx43955z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z4 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx44952z1 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx23445z2 ;
wire \u_kirsch|u_flow|p13_add8_0i3|nx23445z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx37973z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z17 ;
wire \u_kirsch|u_flow|p13_add9_3|nx38970z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z15 ;
wire \u_kirsch|u_flow|p13_add9_3|nx39967z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z13 ;
wire \u_kirsch|u_flow|p13_add9_3|nx40964z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z11 ;
wire \u_kirsch|u_flow|p13_add9_3|nx41961z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z9 ;
wire \u_kirsch|u_flow|p13_add9_3|nx42958z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z7 ;
wire \u_kirsch|u_flow|p13_add9_3|nx43955z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z5 ;
wire \u_kirsch|u_flow|p13_add9_3|nx44952z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z3 ;
wire \u_kirsch|u_flow|p13_add9_3|nx45949z1 ;
wire \u_kirsch|u_flow|p13_add9_3|nx23445z2 ;
wire \u_kirsch|u_flow|p13_add9_3|nx23445z1 ;
wire \u_kirsch|nx20836z1 ;
wire \u_kirsch|u_flow|nx25836z2 ;
wire \u_kirsch|u_flow|nx25836z3 ;
wire \u_kirsch|u_flow|nx25836z1 ;
wire \u_uw_uart|mdata_7n5ss1_4_ ;
wire \u_uw_uart|sdout_7_ ;
wire \u_uw_uart|i_uarts|nx34606z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ;
wire \u_kirsch|nx57127z1 ;
wire \u_kirsch|u_memory|o_image1_1__7_ ;
wire \u_kirsch|u_memory|o_image1_1__6_ ;
wire \u_kirsch|u_memory|o_image1_1__5_ ;
wire \u_kirsch|u_memory|o_image1_1__4_ ;
wire \u_kirsch|u_memory|o_image1_1__3_ ;
wire \u_kirsch|u_memory|o_image1_1__2_ ;
wire \u_kirsch|u_memory|o_image1_1__1_ ;
wire \u_kirsch|u_memory|o_image1_1__dup0_0_ ;
wire \u_kirsch|u_memory|mem_wrn_current_1_ ;
wire \u_kirsch|u_memory|mem_wrn_current_0_ ;
wire \u_kirsch|u_memory|b_0__dup_353 ;
wire \u_kirsch|u_memory|mem_data_7_ ;
wire \u_kirsch|u_memory|nx62359z2 ;
wire \u_kirsch|u_memory|nx62359z1 ;
wire \u_kirsch|u_memory|b_1__dup_352 ;
wire \u_kirsch|u_memory|b_0_ ;
wire \u_kirsch|u_memory|nx63578z2 ;
wire \u_kirsch|u_memory|nx63578z1 ;
wire \u_kirsch|u_memory|b_1_ ;
wire \u_kirsch|u_memory|mem_data_6_ ;
wire \u_kirsch|u_memory|nx61362z2 ;
wire \u_kirsch|u_memory|nx61362z1 ;
wire \u_kirsch|u_memory|nx64575z2 ;
wire \u_kirsch|u_memory|nx64575z1 ;
wire \u_kirsch|u_memory|mem_data_5_ ;
wire \u_kirsch|u_memory|nx60365z2 ;
wire \u_kirsch|u_memory|nx60365z1 ;
wire \u_kirsch|u_memory|nx36z2 ;
wire \u_kirsch|u_memory|nx36z1 ;
wire \u_kirsch|u_memory|mem_data_4_ ;
wire \u_kirsch|u_memory|nx59368z2 ;
wire \u_kirsch|u_memory|nx59368z1 ;
wire \u_kirsch|u_memory|nx1033z2 ;
wire \u_kirsch|u_memory|nx1033z1 ;
wire \u_kirsch|u_memory|mem_data_3_ ;
wire \u_kirsch|u_memory|nx58371z2 ;
wire \u_kirsch|u_memory|nx58371z1 ;
wire \u_kirsch|u_memory|nx2030z2 ;
wire \u_kirsch|u_memory|nx2030z1 ;
wire \u_kirsch|u_memory|mem_data_2_ ;
wire \u_kirsch|u_memory|nx57374z2 ;
wire \u_kirsch|u_memory|nx57374z1 ;
wire \u_kirsch|u_memory|nx3027z2 ;
wire \u_kirsch|u_memory|nx3027z1 ;
wire \u_kirsch|u_memory|mem_data_1_ ;
wire \u_kirsch|u_memory|nx56377z2 ;
wire \u_kirsch|u_memory|nx56377z1 ;
wire \u_kirsch|u_memory|nx4024z2 ;
wire \u_kirsch|u_memory|nx4024z1 ;
wire \u_kirsch|u_memory|mem_data_0_ ;
wire \u_kirsch|u_memory|nx5021z2 ;
wire \u_kirsch|u_memory|nx5021z1 ;
wire \u_kirsch|u_memory|nx55380z2 ;
wire \u_kirsch|u_memory|nx55380z1 ;
wire \u_kirsch|u_memory|mem_wrn_current_2_ ;
wire \u_kirsch|u_memory|nx57224z1 ;
wire \u_uw_uart|mdata_7_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ;
wire \u_kirsch|u_memory|mem_wrn_2_ ;
wire \u_kirsch|u_memory|nx39109z3 ;
wire \u_kirsch|u_memory|nx39109z4 ;
wire \u_kirsch|u_memory|nx40106z1 ;
wire \u_kirsch|u_memory|nx39109z2 ;
wire \u_kirsch|u_memory|nx39109z5 ;
wire \u_uw_uart|rdata_7_ ;
wire \u_uw_uart|datain_7_ ;
wire \u_kirsch|u_memory|mem_wrn_0_ ;
wire \u_kirsch|u_memory|mem_wrn_1_ ;
wire \u_uw_uart|rdata_6_ ;
wire \u_uw_uart|datain_6_ ;
wire \u_uw_uart|rdata_5_ ;
wire \u_uw_uart|datain_5_ ;
wire \u_uw_uart|rdata_4_ ;
wire \u_uw_uart|datain_4_ ;
wire \u_uw_uart|rdata_3_ ;
wire \u_uw_uart|datain_3_ ;
wire \u_uw_uart|rdata_2_ ;
wire \u_uw_uart|datain_2_ ;
wire \u_uw_uart|rdata_1_ ;
wire \u_uw_uart|datain_1_ ;
wire \u_uw_uart|rdata_0_ ;
wire \u_uw_uart|datain_0_ ;
wire \u_uw_uart|mdata_7n5ss1_6_ ;
wire \u_kirsch|u_memory|nx17757z1 ;
wire \u_uw_uart|i_uarts|Dout_7_ ;
wire \u_kirsch|u_memory|nx15763z3 ;
wire \u_kirsch|u_memory|nx15763z2 ;
wire \u_uw_uart|i_uarts|Dout_6_ ;
wire \u_uw_uart|i_uarts|Dout_5_ ;
wire \u_uw_uart|i_uarts|Dout_4_ ;
wire \u_uw_uart|i_uarts|Dout_3_ ;
wire \u_uw_uart|i_uarts|Dout_2_ ;
wire \u_uw_uart|i_uarts|Dout_1_ ;
wire \u_uw_uart|i_uarts|Dout_0_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_7_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_4_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_2_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_ ;
wire \u_uw_uart|i_uarts|nx54636z1 ;
wire \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout ;
wire \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ;
wire \u_kirsch|f_i_mode_next_1_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_3_~feeder_combout ;
wire \u_kirsch|u_flow|o_row_3_~feeder_combout ;
wire \u_uw_uart|sdout_0_~feeder_combout ;
wire \u_kirsch|u_flow|nx30069z1~feeder_combout ;
wire \u_uw_uart|mdata_0_~feeder_combout ;
wire \u_uw_uart|sdout_1_~feeder_combout ;
wire \u_kirsch|u_flow|nx24934z1~feeder_combout ;
wire \u_kirsch|u_flow|o_edge~feeder_combout ;
wire \u_uw_uart|sdout_2_~feeder_combout ;
wire \u_kirsch|f_i_row_next_3_~feeder_combout ;
wire \u_kirsch|f_i_row_next_2_~feeder_combout ;
wire \u_uw_uart|sdout_3_~feeder_combout ;
wire \u_kirsch|u_flow|p31_11_~feeder_combout ;
wire \u_kirsch|u_flow|p31_12_~feeder_combout ;
wire \u_kirsch|u_flow|p31_10_~feeder_combout ;
wire \u_kirsch|u_flow|p31_9_~feeder_combout ;
wire \u_kirsch|u_flow|p31_8_~feeder_combout ;
wire \u_kirsch|u_flow|p31_7_~feeder_combout ;
wire \u_kirsch|u_flow|p31_6_~feeder_combout ;
wire \u_kirsch|u_flow|p31_5_~feeder_combout ;
wire \u_kirsch|u_flow|p31_4_~feeder_combout ;
wire \u_kirsch|u_flow|p31_3_~feeder_combout ;
wire \u_kirsch|u_flow|p31_2_~feeder_combout ;
wire \u_kirsch|u_flow|p31_1_~feeder_combout ;
wire \u_kirsch|u_flow|p31_0_~feeder_combout ;
wire \u_kirsch|u_flow|p32_10_~feeder_combout ;
wire \u_kirsch|u_flow|p32_7_~feeder_combout ;
wire \u_kirsch|u_flow|p32_6_~feeder_combout ;
wire \u_kirsch|u_flow|p32_3_~feeder_combout ;
wire \u_kirsch|u_flow|p32_2_~feeder_combout ;
wire \u_kirsch|u_flow|p32_1_~feeder_combout ;
wire \u_kirsch|u_flow|p32_0_~feeder_combout ;
wire \u_uw_uart|sdout_5_~feeder_combout ;
wire \u_kirsch|f_t1_next_7_~feeder_combout ;
wire \u_kirsch|f_i2_next_7_~feeder_combout ;
wire \u_kirsch|f_t1_next_6_~feeder_combout ;
wire \u_kirsch|f_i2_next_6_~feeder_combout ;
wire \u_kirsch|f_t1_next_5_~feeder_combout ;
wire \u_kirsch|f_i2_next_5_~feeder_combout ;
wire \u_kirsch|f_t1_next_4_~feeder_combout ;
wire \u_kirsch|f_i2_next_4_~feeder_combout ;
wire \u_kirsch|f_t1_next_3_~feeder_combout ;
wire \u_kirsch|f_i2_next_3_~feeder_combout ;
wire \u_kirsch|f_t1_next_2_~feeder_combout ;
wire \u_kirsch|f_i2_next_2_~feeder_combout ;
wire \u_kirsch|f_t1_next_1_~feeder_combout ;
wire \u_kirsch|f_i2_next_1_~feeder_combout ;
wire \u_kirsch|f_i2_next_0_~feeder_combout ;
wire \u_kirsch|f_t1_next_0_~feeder_combout ;
wire \u_kirsch|f_t2_next_7_~feeder_combout ;
wire \u_kirsch|f_t2_next_6_~feeder_combout ;
wire \u_kirsch|f_t2_next_5_~feeder_combout ;
wire \u_kirsch|f_t2_next_4_~feeder_combout ;
wire \u_kirsch|f_t2_next_3_~feeder_combout ;
wire \u_kirsch|f_t2_next_2_~feeder_combout ;
wire \u_kirsch|f_t2_next_1_~feeder_combout ;
wire \u_kirsch|f_t2_next_0_~feeder_combout ;
wire \u_kirsch|f_b1_next_7_~feeder_combout ;
wire \u_kirsch|f_i1_next_7_~feeder_combout ;
wire \u_kirsch|f_b1_next_6_~feeder_combout ;
wire \u_kirsch|f_i1_next_6_~feeder_combout ;
wire \u_kirsch|f_b1_next_5_~feeder_combout ;
wire \u_kirsch|f_i1_next_5_~feeder_combout ;
wire \u_kirsch|f_b1_next_4_~feeder_combout ;
wire \u_kirsch|f_i1_next_4_~feeder_combout ;
wire \u_kirsch|f_b1_next_3_~feeder_combout ;
wire \u_kirsch|u_memory|o_image1_1__3_~feeder_combout ;
wire \u_kirsch|f_i1_next_3_~feeder_combout ;
wire \u_kirsch|f_b1_next_2_~feeder_combout ;
wire \u_kirsch|u_memory|o_image1_1__2_~feeder_combout ;
wire \u_kirsch|f_i1_next_2_~feeder_combout ;
wire \u_kirsch|f_b1_next_1_~feeder_combout ;
wire \u_kirsch|f_i1_next_1_~feeder_combout ;
wire \u_kirsch|f_i1_next_0_~feeder_combout ;
wire \u_kirsch|f_b1_next_0_~feeder_combout ;
wire \u_kirsch|f_b2_next_7_~feeder_combout ;
wire \u_kirsch|f_b2_next_6_~feeder_combout ;
wire \u_kirsch|f_b2_next_5_~feeder_combout ;
wire \u_kirsch|f_b2_next_4_~feeder_combout ;
wire \u_kirsch|f_b2_next_3_~feeder_combout ;
wire \u_kirsch|f_b2_next_2_~feeder_combout ;
wire \u_kirsch|f_b2_next_1_~feeder_combout ;
wire \u_kirsch|f_b2_next_0_~feeder_combout ;
wire \u_kirsch|f_b3_next_7_~feeder_combout ;
wire \u_kirsch|f_t3_next_7_~feeder_combout ;
wire \u_kirsch|f_b3_next_6_~feeder_combout ;
wire \u_kirsch|f_t3_next_6_~feeder_combout ;
wire \u_kirsch|u_memory|o_image0_0__6_~feeder_combout ;
wire \u_kirsch|f_b3_next_5_~feeder_combout ;
wire \u_kirsch|f_t3_next_5_~feeder_combout ;
wire \u_kirsch|f_b3_next_4_~feeder_combout ;
wire \u_kirsch|f_t3_next_4_~feeder_combout ;
wire \u_kirsch|f_b3_next_3_~feeder_combout ;
wire \u_kirsch|f_t3_next_3_~feeder_combout ;
wire \u_kirsch|f_b3_next_2_~feeder_combout ;
wire \u_kirsch|f_t3_next_2_~feeder_combout ;
wire \u_kirsch|f_b3_next_1_~feeder_combout ;
wire \u_kirsch|f_t3_next_1_~feeder_combout ;
wire \u_kirsch|f_t3_next_0_~feeder_combout ;
wire \u_kirsch|f_b3_next_0_~feeder_combout ;
wire \u_kirsch|u_memory|o_image0_1__6_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__7_~feeder_combout ;
wire \u_kirsch|u_memory|mem_wrn_0_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__6_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__5_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__4_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__3_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__2_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__1_~feeder_combout ;
wire \u_kirsch|u_memory|o_image2_2__0_~feeder_combout ;
wire \u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout ;
wire \u_uw_uart|sdout_7_~feeder_combout ;
wire \u_uw_uart|rdata_7_~feeder_combout ;
wire \u_uw_uart|rdata_6_~feeder_combout ;
wire \u_uw_uart|rdata_5_~feeder_combout ;
wire \u_uw_uart|rdata_4_~feeder_combout ;
wire \u_uw_uart|rdata_2_~feeder_combout ;
wire \u_uw_uart|rdata_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_7_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_5_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_2_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ;
wire \nrst~combout ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ;
wire \u_uw_uart|i_uarts|nx32400z6 ;
wire \u_uw_uart|i_uarts|nx32400z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ;
wire \u_uw_uart|i_uarts|nx32400z3 ;
wire \u_uw_uart|i_uarts|nx32400z2 ;
wire \u_uw_uart|i_uarts|nx32400z9 ;
wire \u_uw_uart|i_uarts|nx32400z8 ;
wire \u_uw_uart|i_uarts|nx32400z1 ;
wire \u_uw_uart|i_uarts|TopTx ;
wire \u_uw_uart|i_uarts|nx48926z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx51917z2 ;
wire \u_uw_uart|i_uarts|nx49923z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx50920z3 ;
wire \u_uw_uart|i_uarts|nx50920z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx51917z3 ;
wire \u_uw_uart|i_uarts|nx51917z4 ;
wire \u_uw_uart|i_uarts|nx51917z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|nx4608z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx51271z1 ;
wire \u_uw_uart|nx33354z2 ;
wire \rxflex~combout ;
wire \u_uw_uart|i_uarts|NOT_Rx ;
wire \u_uw_uart|i_uarts|not_Rx_r ;
wire \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ;
wire \u_uw_uart|i_uarts|nx65151z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ;
wire \u_uw_uart|i_uarts|nx34394z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ;
wire \u_uw_uart|i_uarts|nx34394z9 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ;
wire \u_uw_uart|i_uarts|nx34394z4 ;
wire \u_uw_uart|i_uarts|nx34394z3 ;
wire \u_uw_uart|i_uarts|nx34394z1 ;
wire \u_uw_uart|i_uarts|TopRx ;
wire \u_uw_uart|i_uarts|nx15541z2 ;
wire \u_uw_uart|i_uarts|nx15541z3 ;
wire \u_uw_uart|i_uarts|nx15541z1 ;
wire \u_uw_uart|i_uarts|RxFSM_6_ ;
wire \u_uw_uart|i_uarts|nx16538z1 ;
wire \u_uw_uart|i_uarts|nx34394z2 ;
wire \u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ;
wire \u_uw_uart|i_uarts|nx9370z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ;
wire \u_uw_uart|i_uarts|RxFSM_1_ ;
wire \u_uw_uart|i_uarts|nx14544z1 ;
wire \u_uw_uart|i_uarts|RxFSM_2_ ;
wire \u_uw_uart|i_uarts|nx13547z1 ;
wire \u_uw_uart|i_uarts|RxFSM_3_ ;
wire \u_uw_uart|i_uarts|nx11364z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx8373z2 ;
wire \u_uw_uart|i_uarts|nx8373z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|nx13547z2 ;
wire \u_uw_uart|i_uarts|nx11553z1 ;
wire \u_uw_uart|i_uarts|RxFSM_5_ ;
wire \u_uw_uart|i_uarts|nx30017z1 ;
wire \u_uw_uart|i_uarts|RxRDY ;
wire \u_uw_uart|nx58116z1 ;
wire \u_uw_uart|o_pixavail ;
wire \u_uw_uart|nx39480z1 ;
wire \u_uw_uart|ack ;
wire \u_uw_uart|nx33354z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z31 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z30 ;
wire \u_uw_uart|modgen_counter_waitcount|nx52268z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z29 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z28 ;
wire \u_uw_uart|modgen_counter_waitcount|nx53265z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z27 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z26 ;
wire \u_uw_uart|modgen_counter_waitcount|nx54262z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z25 ;
wire \u_uw_uart|nx39480z4 ;
wire \u_kirsch|u_flow|state_3_~_wirecell_combout ;
wire \u_kirsch|u_flow|nx29521z1 ;
wire \u_kirsch|u_flow|nx28524z1 ;
wire \u_kirsch|u_flow|nx28524z1~_wirecell_combout ;
wire \u_kirsch|u_flow|state_1_ ;
wire \u_kirsch|u_flow|state_2_ ;
wire \u_kirsch|u_flow|state_3_ ;
wire \u_kirsch|u_flow|o_valid ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z24 ;
wire \u_uw_uart|modgen_counter_waitcount|nx55259z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z23 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z22 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z20 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z18 ;
wire \u_uw_uart|modgen_counter_waitcount|nx58250z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z17 ;
wire \u_uw_uart|modgen_counter_waitcount|nx56256z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z21 ;
wire \u_uw_uart|nx39480z3 ;
wire \u_uw_uart|nx39480z2 ;
wire \u_uw_uart|i_uarts|nx15376z1 ;
wire \u_uw_uart|i_uarts|RxErr ;
wire \u_uw_uart|nx46385z1 ;
wire \u_uw_uart|dsend ;
wire \u_uw_uart|nx38868z1 ;
wire \u_uw_uart|state ;
wire \u_uw_uart|nx18433z1 ;
wire \u_uw_uart|ld_sdout ;
wire \u_uw_uart|i_uarts|nx4608z2 ;
wire \u_uw_uart|i_uarts|nx4608z1 ;
wire \u_uw_uart|i_uarts|TxFSM_0_ ;
wire \u_uw_uart|i_uarts|nx5605z1 ;
wire \u_uw_uart|i_uarts|TxFSM_1_ ;
wire \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ;
wire \u_uw_uart|i_uarts|nx61812z1 ;
wire nx21351z2;
wire \u_kirsch|u_memory|modgen_counter_column|nx51271z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout ;
wire \u_kirsch|u_memory|modgen_counter_column|nx53265z1 ;
wire \u_kirsch|u_memory|first_bubble ;
wire \u_kirsch|u_memory|modgen_counter_column|nx57253z3 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z11 ;
wire \u_kirsch|u_memory|nx8852z4 ;
wire \u_kirsch|u_memory|nx8852z3 ;
wire \u_kirsch|u_memory|nx47386z2 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z15 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z14 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx52268z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z13 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z12 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z10 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx54262z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z9 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z8 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z6 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx56256z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z5 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z4 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx57253z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z3 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z2 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx1041z1 ;
wire \u_kirsch|u_memory|nx60567z4 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx55259z1 ;
wire \u_kirsch|u_memory|modgen_counter_column|nx58250z7 ;
wire \u_kirsch|u_memory|nx60567z5 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z14 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx52268z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx55259z1 ;
wire \u_kirsch|u_memory|not_rtlc2_X_0_n244 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx57253z3 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z7 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z2 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx1041z1 ;
wire \u_kirsch|u_memory|nx8852z6 ;
wire \u_kirsch|u_memory|nx8852z2 ;
wire \u_kirsch|u_memory|nx8852z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z13 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z12 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z10 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx54262z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z9 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z8 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z6 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx56256z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z5 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z4 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx57253z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z3 ;
wire \u_kirsch|u_memory|nx60567z2 ;
wire \u_kirsch|u_memory|nx60567z1 ;
wire \u_kirsch|u_memory|o_valid ;
wire \u_kirsch|nx64956z1 ;
wire \u_kirsch|f_state_3_ ;
wire \u_kirsch|f_state_3_~_wirecell_combout ;
wire \u_kirsch|nx63959z1 ;
wire \u_kirsch|nx63959z1~_wirecell_combout ;
wire \u_kirsch|f_state_1_ ;
wire \u_kirsch|f_state_2_ ;
wire \u_kirsch|nx57127z2 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx51271z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z15 ;
wire \u_kirsch|u_memory|o_row_0_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_0_ ;
wire \u_kirsch|f_i_row_next_0_~feeder_combout ;
wire \u_kirsch|nx35105z1 ;
wire \u_kirsch|f_i_row_next_0_ ;
wire \u_kirsch|f_i_row_0_ ;
wire \u_kirsch|u_flow|nx22790z1 ;
wire \u_kirsch|u_flow|nx27925z1 ;
wire \u_kirsch|u_flow|nx33060z1~feeder_combout ;
wire \u_kirsch|u_flow|nx33060z1 ;
wire \u_kirsch|u_flow|o_row_0_~feeder_combout ;
wire \u_kirsch|u_flow|o_row_0_ ;
wire \u_kirsch|u_memory|o_row_1_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_1_ ;
wire \u_kirsch|f_i_row_next_1_~feeder_combout ;
wire \u_kirsch|f_i_row_next_1_ ;
wire \u_kirsch|f_i_row_1_ ;
wire \u_kirsch|u_flow|nx21793z1 ;
wire \u_kirsch|u_flow|nx26928z1~feeder_combout ;
wire \u_kirsch|u_flow|nx26928z1 ;
wire \u_kirsch|u_flow|nx32063z1~feeder_combout ;
wire \u_kirsch|u_flow|nx32063z1 ;
wire \u_kirsch|u_flow|o_row_1_ ;
wire \u_kirsch|u_memory|modgen_counter_row|nx53265z1 ;
wire \u_kirsch|u_memory|modgen_counter_row|nx58250z11 ;
wire \u_kirsch|u_memory|o_row_2_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_2_ ;
wire \u_kirsch|f_i_row_2_ ;
wire \u_kirsch|u_flow|nx20796z1 ;
wire \u_kirsch|u_flow|nx25931z1~feeder_combout ;
wire \u_kirsch|u_flow|nx25931z1 ;
wire \u_kirsch|u_flow|nx31066z1~feeder_combout ;
wire \u_kirsch|u_flow|nx31066z1 ;
wire \u_kirsch|u_flow|o_row_2_ ;
wire nx57590z1;
wire nx41851z1;
wire nx58587z1;
wire nx42848z1;
wire nx59584z1;
wire nx43845z1;
wire nx60581z1;
wire nx44842z1;
wire nx61578z1;
wire nx45839z1;
wire nx62575z1;
wire nx46836z1;
wire nx63572z1;
wire nx47833z1;
wire \u_kirsch|u_memory|o_row_6_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_6_ ;
wire \u_kirsch|f_i_row_next_6_~feeder_combout ;
wire \u_kirsch|f_i_row_next_6_ ;
wire \u_kirsch|f_i_row_6_ ;
wire \u_kirsch|u_flow|nx16808z1 ;
wire \u_kirsch|u_flow|nx21943z1~feeder_combout ;
wire \u_kirsch|u_flow|nx21943z1 ;
wire \u_kirsch|u_flow|nx27078z1~feeder_combout ;
wire \u_kirsch|u_flow|nx27078z1 ;
wire \u_kirsch|u_flow|o_row_6_~feeder_combout ;
wire \u_kirsch|u_flow|o_row_6_ ;
wire \u_kirsch|u_memory|o_row_5_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_5_ ;
wire \u_kirsch|f_i_row_next_5_~feeder_combout ;
wire \u_kirsch|f_i_row_next_5_ ;
wire \u_kirsch|f_i_row_5_ ;
wire \u_kirsch|u_flow|nx17805z1 ;
wire \u_kirsch|u_flow|nx22940z1~feeder_combout ;
wire \u_kirsch|u_flow|nx22940z1 ;
wire \u_kirsch|u_flow|nx28075z1~feeder_combout ;
wire \u_kirsch|u_flow|nx28075z1 ;
wire \u_kirsch|u_flow|o_row_5_ ;
wire \u_kirsch|u_memory|o_row_7_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_7_ ;
wire \u_kirsch|f_i_row_next_7_~feeder_combout ;
wire \u_kirsch|f_i_row_next_7_ ;
wire \u_kirsch|f_i_row_7_ ;
wire \u_kirsch|u_flow|nx15811z1 ;
wire \u_kirsch|u_flow|nx20946z1~feeder_combout ;
wire \u_kirsch|u_flow|nx20946z1 ;
wire \u_kirsch|u_flow|nx26081z1~feeder_combout ;
wire \u_kirsch|u_flow|nx26081z1 ;
wire \u_kirsch|u_flow|o_row_7_~feeder_combout ;
wire \u_kirsch|u_flow|o_row_7_ ;
wire nx30z1;
wire nx49827z1;
wire \u_kirsch|u_memory|o_row_4_~feeder_combout ;
wire \u_kirsch|u_memory|o_row_4_ ;
wire \u_kirsch|f_i_row_next_4_~feeder_combout ;
wire \u_kirsch|f_i_row_next_4_ ;
wire \u_kirsch|f_i_row_4_ ;
wire \u_kirsch|u_flow|nx18802z1 ;
wire \u_kirsch|u_flow|nx23937z1 ;
wire \u_kirsch|u_flow|nx29072z1~feeder_combout ;
wire \u_kirsch|u_flow|nx29072z1 ;
wire \u_kirsch|u_flow|o_row_4_~feeder_combout ;
wire \u_kirsch|u_flow|o_row_4_ ;
wire nx1027z1;
wire nx50824z1;
wire nx25683z1;
wire nx62540z1;
wire nx26680z1;
wire nx63537z1;
wire nx27677z1;
wire nx64534z1;
wire nx28674z1;
wire nx65531z1;
wire nx29671z1;
wire nx992z1;
wire \u_kirsch|u_memory|nx33254z1 ;
wire \u_kirsch|u_memory|busySignal ;
wire \u_kirsch|u_memory|busySignalDelayed~feeder_combout ;
wire \u_kirsch|u_memory|busySignalDelayed ;
wire \u_kirsch|u_memory|o_mode_0_ ;
wire \u_kirsch|f_i_mode_next_0_ ;
wire \u_kirsch|f_i_mode_0_ ;
wire \u_kirsch|u_flow|nx42010z1 ;
wire \u_kirsch|u_flow|nx47145z1~feeder_combout ;
wire \u_kirsch|u_flow|nx47145z1 ;
wire \u_kirsch|u_flow|nx13256z1~feeder_combout ;
wire \u_kirsch|u_flow|nx13256z1 ;
wire \u_kirsch|u_flow|p5m_0_~feeder_combout ;
wire \u_kirsch|u_flow|p5m_0_ ;
wire \u_kirsch|f_i_mode_1_ ;
wire \u_kirsch|u_flow|nx41013z1 ;
wire \u_kirsch|u_flow|nx46148z1~feeder_combout ;
wire \u_kirsch|u_flow|nx46148z1 ;
wire \u_kirsch|u_flow|nx14253z1~feeder_combout ;
wire \u_kirsch|u_flow|nx14253z1 ;
wire \u_kirsch|u_flow|p5m_1_ ;
wire \u_kirsch|o_mode_0_ ;
wire [7:0] \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a ;
wire [7:0] \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a ;
wire [7:0] \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a ;

wire [7:0] \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [7:0] \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [7:0] \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus ;

assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7] = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [0] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [1] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [2] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [3] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [4] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [5] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [6] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [7] = \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [0] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [1] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [2] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [3] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [4] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [5] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [6] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [7] = \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

// atom is at LCFF_X55_Y22_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx61140z1 ));

// atom is at LCFF_X55_Y17_N31
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_row_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_3_ ));

// atom is at LCCOMB_X53_Y18_N10
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52927 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z5  = \u_kirsch|u_memory|modgen_counter_column|nx58250z7  & \u_kirsch|u_memory|modgen_counter_column|nx58250z9 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ),
	.datad(\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52927 .lut_mask = 16'hF000;
defparam \u_kirsch|u_memory|ix8852z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N30
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52929 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z7  = \u_kirsch|u_memory|modgen_counter_row|nx58250z13  & \u_kirsch|u_memory|modgen_counter_row|nx58250z11  & \u_kirsch|u_memory|modgen_counter_row|nx58250z15  & \u_kirsch|u_memory|modgen_counter_row|nx58250z9 

	.dataa(\u_kirsch|u_memory|modgen_counter_row|nx58250z13 ),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z11 ),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z15 ),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx58250z9 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z7 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52929 .lut_mask = 16'h8000;
defparam \u_kirsch|u_memory|ix8852z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N7
cycloneii_lcell_ff \u_uw_uart|reg_sdout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_0_ ));

// atom is at LCFF_X55_Y22_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx28624z1 ));

// atom is at LCCOMB_X55_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28624z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx28624z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_0_ 

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx28624z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28624z52923 .lut_mask = 16'hF303;
defparam \u_uw_uart|i_uarts|ix28624z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx35603z1  = !\u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|ld_sdout ))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|ld_sdout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx35603z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52924 .lut_mask = 16'h2320;
defparam \u_uw_uart|i_uarts|ix35603z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxDivisor_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDivisor_5_ ));

// atom is at LCFF_X55_Y22_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ));

// atom is at LCFF_X55_Y22_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ));

// atom is at LCFF_X55_Y22_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ));

// atom is at LCFF_X55_Y22_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ));

// atom is at LCCOMB_X54_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z5  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52927 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z7  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N1
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx30069z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx30069z1 ));

// atom is at LCCOMB_X54_Y18_N26
cycloneii_lcell_comb \u_kirsch|u_memory|ix47386z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx47386z1  = \u_kirsch|u_memory|nx8852z2  # !\u_uw_uart|o_pixavail  # !\nrst~combout 

	.dataa(\u_kirsch|u_memory|nx8852z2 ),
	.datab(\nrst~combout ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx47386z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix47386z52923 .lut_mask = 16'hBBFF;
defparam \u_kirsch|u_memory|ix47386z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N19
cycloneii_lcell_ff \u_uw_uart|reg_mdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_0_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|u_flow|o_valid ),
	.ena(\u_uw_uart|nx40736z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_0_ ));

// atom is at LCFF_X55_Y21_N1
cycloneii_lcell_ff \u_uw_uart|reg_sdout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_1_ ));

// atom is at LCFF_X55_Y22_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx29621z1 ));

// atom is at LCCOMB_X55_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix29621z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx29621z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_1_ 

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|sdout_1_ ),
	.datac(\u_uw_uart|i_uarts|nx29621z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix29621z52923 .lut_mask = 16'hB1B1;
defparam \u_uw_uart|i_uarts|ix29621z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z2  = !\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx 

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TopTx ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52924 .lut_mask = 16'h5050;
defparam \u_uw_uart|i_uarts|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N13
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ));

// atom is at LCFF_X56_Y20_N19
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ));

// atom is at LCFF_X56_Y20_N17
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ));

// atom is at LCFF_X56_Y20_N31
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ));

// atom is at LCFF_X56_Y20_N29
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ));

// atom is at LCFF_X56_Y20_N27
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ));

// atom is at LCFF_X56_Y20_N25
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ));

// atom is at LCCOMB_X57_Y20_N8
cycloneii_lcell_comb \u_uw_uart|ix39480z52928 (
// Equation(s):
// \u_uw_uart|nx39480z6  = !\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z5  & !\u_uw_uart|modgen_counter_waitcount|nx64508z1  & !\u_uw_uart|modgen_counter_waitcount|nx22081z7 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N23
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ));

// atom is at LCFF_X56_Y20_N21
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ));

// atom is at LCCOMB_X62_Y20_N8
cycloneii_lcell_comb \u_uw_uart|ix39480z52929 (
// Equation(s):
// \u_uw_uart|nx39480z7  = !\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z9 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52929 .lut_mask = 16'h000F;
defparam \u_uw_uart|ix39480z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N10
cycloneii_lcell_comb \u_uw_uart|ix39480z52927 (
// Equation(s):
// \u_uw_uart|nx39480z5  = \u_uw_uart|nx39480z6  & !\u_uw_uart|modgen_counter_waitcount|nx22081z13  & !\u_uw_uart|modgen_counter_waitcount|nx22081z15  & \u_uw_uart|nx39480z7 

	.dataa(\u_uw_uart|nx39480z6 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datad(\u_uw_uart|nx39480z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52927 .lut_mask = 16'h0200;
defparam \u_uw_uart|ix39480z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N12
cycloneii_lcell_comb \u_uw_uart|ix40736z52924 (
// Equation(s):
// \u_uw_uart|nx40736z1  = \u_uw_uart|o_pixavail  # \u_uw_uart|ack 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52924 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|ix40736z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N11
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx24934z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx24934z1 ));

// atom is at LCCOMB_X53_Y22_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z6  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|i_uarts|TxDivisor_5_ 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datad(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ));

// atom is at LCCOMB_X53_Y22_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z7  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ));

// atom is at LCCOMB_X53_Y22_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z8  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z5  = \u_uw_uart|i_uarts|nx34394z8  & \u_uw_uart|i_uarts|nx34394z6  & \u_uw_uart|i_uarts|nx34394z7 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx34394z8 ),
	.datac(\u_uw_uart|i_uarts|nx34394z6 ),
	.datad(\u_uw_uart|i_uarts|nx34394z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52926 .lut_mask = 16'hC000;
defparam \u_uw_uart|i_uarts|ix34394z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_1_ ));

// atom is at LCCOMB_X54_Y21_N24
cycloneii_lcell_comb \u_uw_uart|ix15671z52923 (
// Equation(s):
// \u_uw_uart|rawrx  = \nrst~combout  & \rxflex~combout 

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix15671z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix15671z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y21_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_tmp_o_edge (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_edge~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p41 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|nx30752z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_edge ));

// atom is at LCCOMB_X55_Y20_N8
cycloneii_lcell_comb \u_uw_uart|ix38742z52924 (
// Equation(s):
// \u_uw_uart|nx38742z1  = \u_uw_uart|o_pixavail  & (!\nrst~combout  & \u_kirsch|o_mode_0_ ) # !\u_uw_uart|o_pixavail  & (!\nrst~combout  & \u_kirsch|o_mode_0_  # !\u_uw_uart|ack )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_uw_uart|ack ),
	.datac(\nrst~combout ),
	.datad(\u_kirsch|o_mode_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38742z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38742z52924 .lut_mask = 16'h1F11;
defparam \u_uw_uart|ix38742z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N8
cycloneii_lcell_comb \u_uw_uart|ix40736z52926 (
// Equation(s):
// \u_uw_uart|nx40736z3  = \u_uw_uart|o_pixavail  & (\u_uw_uart|nx39480z2 ) # !\u_uw_uart|o_pixavail  & (\u_uw_uart|ack  & (\u_uw_uart|nx39480z2 ) # !\u_uw_uart|ack  & \u_uw_uart|i_uarts|RxErr )

	.dataa(\u_uw_uart|i_uarts|RxErr ),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\u_uw_uart|nx39480z2 ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52926 .lut_mask = 16'hF0E2;
defparam \u_uw_uart|ix40736z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N0
cycloneii_lcell_comb \u_uw_uart|ix40736z52925 (
// Equation(s):
// \u_uw_uart|nx40736z2  = \nrst~combout  & \u_uw_uart|nx40736z3 

	.dataa(vcc),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(\u_uw_uart|nx40736z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52925 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix40736z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N3
cycloneii_lcell_ff \u_uw_uart|reg_mdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_dir_0_ ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|u_flow|o_valid ),
	.ena(\u_uw_uart|nx40736z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_1_ ));

// atom is at LCFF_X55_Y21_N25
cycloneii_lcell_ff \u_uw_uart|reg_sdout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_2_ ));

// atom is at LCFF_X55_Y22_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx30618z1 ));

// atom is at LCCOMB_X55_Y22_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30618z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx30618z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_2_ 

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|sdout_2_ ),
	.datad(\u_uw_uart|i_uarts|nx30618z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30618z52923 .lut_mask = 16'hAF05;
defparam \u_uw_uart|i_uarts|ix30618z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N12
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52933 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx57253z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z19  & (\u_uw_uart|modgen_counter_waitcount|nx22081z20  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z20 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z18  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z20 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N14
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52932 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx58250z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z17  & !\u_uw_uart|modgen_counter_waitcount|nx22081z18  # !\u_uw_uart|modgen_counter_waitcount|nx22081z17  & (\u_uw_uart|modgen_counter_waitcount|nx22081z18  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z16  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z18  # !\u_uw_uart|modgen_counter_waitcount|nx22081z17 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N16
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52931 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx59247z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z15  & (\u_uw_uart|modgen_counter_waitcount|nx22081z16  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z15  & !\u_uw_uart|modgen_counter_waitcount|nx22081z16 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z14  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z15  & !\u_uw_uart|modgen_counter_waitcount|nx22081z16 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N18
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52930 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx60244z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z13  & !\u_uw_uart|modgen_counter_waitcount|nx22081z14  # !\u_uw_uart|modgen_counter_waitcount|nx22081z13  & (\u_uw_uart|modgen_counter_waitcount|nx22081z14  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z12  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z14  # !\u_uw_uart|modgen_counter_waitcount|nx22081z13 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N20
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52929 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx17096z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z11  & (\u_uw_uart|modgen_counter_waitcount|nx22081z12  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z12 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z10  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z12 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N22
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52928 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx18093z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z9  & !\u_uw_uart|modgen_counter_waitcount|nx22081z10  # !\u_uw_uart|modgen_counter_waitcount|nx22081z9  & (\u_uw_uart|modgen_counter_waitcount|nx22081z10  # GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z8  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z10  # !\u_uw_uart|modgen_counter_waitcount|nx22081z9 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N24
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52927 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx19090z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z7  & (\u_uw_uart|modgen_counter_waitcount|nx22081z8  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z7  & !\u_uw_uart|modgen_counter_waitcount|nx22081z8  & 
// VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z6  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z7  & !\u_uw_uart|modgen_counter_waitcount|nx22081z8 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N26
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52926 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx20087z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z5  & !\u_uw_uart|modgen_counter_waitcount|nx22081z6  # !\u_uw_uart|modgen_counter_waitcount|nx22081z5  & (\u_uw_uart|modgen_counter_waitcount|nx22081z6  # GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z4  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z6  # !\u_uw_uart|modgen_counter_waitcount|nx22081z5 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N28
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52925 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx21084z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z3  & (\u_uw_uart|modgen_counter_waitcount|nx22081z4  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z4  & 
// VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z2  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z4 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N30
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52923 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx22081z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z2  $ \u_uw_uart|modgen_counter_waitcount|nx64508z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N21
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx19799z1 ));

// atom is at LCFF_X55_Y17_N13
cycloneii_lcell_ff \u_kirsch|reg_f_i_mode_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_mode_next_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_mode_next_1_ ));

// atom is at LCCOMB_X53_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z2  = \u_uw_uart|i_uarts|RxBitCnt_1_  & \u_uw_uart|i_uarts|RxBitCnt_0_ 

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52924 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|i_uarts|ix9370z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix10367z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx10367z1  = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_0_  $ \u_uw_uart|i_uarts|RxBitCnt_1_ ) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|RxBitCnt_1_ )

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix10367z52923 .lut_mask = 16'h28F0;
defparam \u_uw_uart|i_uarts|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y21_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_edge (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p41 ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_edge ));

// atom is at LCFF_X60_Y21_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p41 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx26026z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p41 ));

// atom is at LCFF_X60_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p45 (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p35 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p45 ));

// atom is at LCFF_X58_Y21_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_max_fwd (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p45 ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|max_fwd ));

// atom is at LCFF_X59_Y21_N29
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_13_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_13_ ));

// atom is at LCFF_X61_Y20_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_13_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_13_ ));

// atom is at LCFF_X59_Y21_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_12_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_12_ ));

// atom is at LCFF_X61_Y20_N29
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_12_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_12_ ));

// atom is at LCFF_X59_Y21_N25
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_11_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_11_ ));

// atom is at LCFF_X60_Y21_N27
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx63795z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_11_ ));

// atom is at LCFF_X58_Y21_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_10_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_10_ ));

// atom is at LCFF_X60_Y21_N25
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx62798z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_10_ ));

// atom is at LCFF_X58_Y21_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_9_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_9_ ));

// atom is at LCFF_X60_Y21_N23
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_9_ ));

// atom is at LCFF_X59_Y21_N19
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_8_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_8_ ));

// atom is at LCFF_X60_Y21_N21
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_8_ ));

// atom is at LCFF_X59_Y21_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_7_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_7_ ));

// atom is at LCFF_X60_Y21_N19
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_7_ ));

// atom is at LCFF_X59_Y21_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_6_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_6_ ));

// atom is at LCFF_X60_Y21_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_6_ ));

// atom is at LCFF_X59_Y21_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_5_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_5_ ));

// atom is at LCFF_X60_Y21_N15
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_5_ ));

// atom is at LCFF_X59_Y21_N11
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_4_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_4_ ));

// atom is at LCFF_X60_Y21_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_4_ ));

// atom is at LCFF_X59_Y21_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_3_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_3_ ));

// atom is at LCFF_X60_Y21_N11
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_3_ ));

// atom is at LCFF_X59_Y21_N7
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_2_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_2_ ));

// atom is at LCFF_X60_Y21_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_2_ ));

// atom is at LCFF_X59_Y21_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_1_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_1_ ));

// atom is at LCFF_X60_Y21_N7
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_1_ ));

// atom is at LCFF_X60_Y21_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p43_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p4s_sub12_0|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p43_0_ ));

// atom is at LCFF_X59_Y21_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_prev_max_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p43_0_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_flow|nx5049z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx47310z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|prev_max_0_ ));

// atom is at LCCOMB_X59_Y21_N2
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52937 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z40  = CARRY(!\u_kirsch|u_flow|prev_max_0_  & \u_kirsch|u_flow|p43_0_ )

	.dataa(\u_kirsch|u_flow|prev_max_0_ ),
	.datab(\u_kirsch|u_flow|p43_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z40 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52937 .lut_mask = 16'h0044;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N4
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52936 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z37  = CARRY(\u_kirsch|u_flow|p43_1_  & \u_kirsch|u_flow|prev_max_1_  & !\u_kirsch|u_flow|ix47310z8933|nx100z40  # !\u_kirsch|u_flow|p43_1_  & (\u_kirsch|u_flow|prev_max_1_  # !\u_kirsch|u_flow|ix47310z8933|nx100z40 ))

	.dataa(\u_kirsch|u_flow|p43_1_ ),
	.datab(\u_kirsch|u_flow|prev_max_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z40 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z37 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52936 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N6
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52935 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z34  = CARRY(\u_kirsch|u_flow|prev_max_2_  & \u_kirsch|u_flow|p43_2_  & !\u_kirsch|u_flow|ix47310z8933|nx100z37  # !\u_kirsch|u_flow|prev_max_2_  & (\u_kirsch|u_flow|p43_2_  # !\u_kirsch|u_flow|ix47310z8933|nx100z37 ))

	.dataa(\u_kirsch|u_flow|prev_max_2_ ),
	.datab(\u_kirsch|u_flow|p43_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z37 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z34 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52935 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N8
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52934 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z31  = CARRY(\u_kirsch|u_flow|prev_max_3_  & (!\u_kirsch|u_flow|ix47310z8933|nx100z34  # !\u_kirsch|u_flow|p43_3_ ) # !\u_kirsch|u_flow|prev_max_3_  & !\u_kirsch|u_flow|p43_3_  & !\u_kirsch|u_flow|ix47310z8933|nx100z34 )

	.dataa(\u_kirsch|u_flow|prev_max_3_ ),
	.datab(\u_kirsch|u_flow|p43_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z34 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z31 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52934 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N10
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52933 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z28  = CARRY(\u_kirsch|u_flow|prev_max_4_  & \u_kirsch|u_flow|p43_4_  & !\u_kirsch|u_flow|ix47310z8933|nx100z31  # !\u_kirsch|u_flow|prev_max_4_  & (\u_kirsch|u_flow|p43_4_  # !\u_kirsch|u_flow|ix47310z8933|nx100z31 ))

	.dataa(\u_kirsch|u_flow|prev_max_4_ ),
	.datab(\u_kirsch|u_flow|p43_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z31 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z28 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52933 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N12
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52932 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z25  = CARRY(\u_kirsch|u_flow|prev_max_5_  & (!\u_kirsch|u_flow|ix47310z8933|nx100z28  # !\u_kirsch|u_flow|p43_5_ ) # !\u_kirsch|u_flow|prev_max_5_  & !\u_kirsch|u_flow|p43_5_  & !\u_kirsch|u_flow|ix47310z8933|nx100z28 )

	.dataa(\u_kirsch|u_flow|prev_max_5_ ),
	.datab(\u_kirsch|u_flow|p43_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z28 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z25 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52932 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N14
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52931 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z22  = CARRY(\u_kirsch|u_flow|p43_6_  & (!\u_kirsch|u_flow|ix47310z8933|nx100z25  # !\u_kirsch|u_flow|prev_max_6_ ) # !\u_kirsch|u_flow|p43_6_  & !\u_kirsch|u_flow|prev_max_6_  & !\u_kirsch|u_flow|ix47310z8933|nx100z25 )

	.dataa(\u_kirsch|u_flow|p43_6_ ),
	.datab(\u_kirsch|u_flow|prev_max_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z25 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52930 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z19  = CARRY(\u_kirsch|u_flow|p43_7_  & \u_kirsch|u_flow|prev_max_7_  & !\u_kirsch|u_flow|ix47310z8933|nx100z22  # !\u_kirsch|u_flow|p43_7_  & (\u_kirsch|u_flow|prev_max_7_  # !\u_kirsch|u_flow|ix47310z8933|nx100z22 ))

	.dataa(\u_kirsch|u_flow|p43_7_ ),
	.datab(\u_kirsch|u_flow|prev_max_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N18
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52929 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z16  = CARRY(\u_kirsch|u_flow|p43_8_  & (!\u_kirsch|u_flow|ix47310z8933|nx100z19  # !\u_kirsch|u_flow|prev_max_8_ ) # !\u_kirsch|u_flow|p43_8_  & !\u_kirsch|u_flow|prev_max_8_  & !\u_kirsch|u_flow|ix47310z8933|nx100z19 )

	.dataa(\u_kirsch|u_flow|p43_8_ ),
	.datab(\u_kirsch|u_flow|prev_max_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N20
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52928 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z13  = CARRY(\u_kirsch|u_flow|prev_max_9_  & (!\u_kirsch|u_flow|ix47310z8933|nx100z16  # !\u_kirsch|u_flow|p43_9_ ) # !\u_kirsch|u_flow|prev_max_9_  & !\u_kirsch|u_flow|p43_9_  & !\u_kirsch|u_flow|ix47310z8933|nx100z16 )

	.dataa(\u_kirsch|u_flow|prev_max_9_ ),
	.datab(\u_kirsch|u_flow|p43_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N22
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52927 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z10  = CARRY(\u_kirsch|u_flow|prev_max_10_  & \u_kirsch|u_flow|p43_10_  & !\u_kirsch|u_flow|ix47310z8933|nx100z13  # !\u_kirsch|u_flow|prev_max_10_  & (\u_kirsch|u_flow|p43_10_  # !\u_kirsch|u_flow|ix47310z8933|nx100z13 
// ))

	.dataa(\u_kirsch|u_flow|prev_max_10_ ),
	.datab(\u_kirsch|u_flow|p43_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N24
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52926 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z7  = CARRY(\u_kirsch|u_flow|p43_11_  & \u_kirsch|u_flow|prev_max_11_  & !\u_kirsch|u_flow|ix47310z8933|nx100z10  # !\u_kirsch|u_flow|p43_11_  & (\u_kirsch|u_flow|prev_max_11_  # !\u_kirsch|u_flow|ix47310z8933|nx100z10 
// ))

	.dataa(\u_kirsch|u_flow|p43_11_ ),
	.datab(\u_kirsch|u_flow|prev_max_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52926 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N26
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52925 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z4  = CARRY(\u_kirsch|u_flow|prev_max_12_  & \u_kirsch|u_flow|p43_12_  & !\u_kirsch|u_flow|ix47310z8933|nx100z7  # !\u_kirsch|u_flow|prev_max_12_  & (\u_kirsch|u_flow|p43_12_  # !\u_kirsch|u_flow|ix47310z8933|nx100z7 ))

	.dataa(\u_kirsch|u_flow|prev_max_12_ ),
	.datab(\u_kirsch|u_flow|p43_12_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix47310z8933|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N28
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z8933|ix100z52923 (
// Equation(s):
// \u_kirsch|u_flow|ix47310z8933|nx100z1  = \u_kirsch|u_flow|p43_13_  & \u_kirsch|u_flow|ix47310z8933|nx100z4  & \u_kirsch|u_flow|prev_max_13_  # !\u_kirsch|u_flow|p43_13_  & (\u_kirsch|u_flow|ix47310z8933|nx100z4  # \u_kirsch|u_flow|prev_max_13_ )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p43_13_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|prev_max_13_ ),
	.cin(\u_kirsch|u_flow|ix47310z8933|nx100z4 ),
	.combout(\u_kirsch|u_flow|ix47310z8933|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52923 .lut_mask = 16'hF330;
defparam \u_kirsch|u_flow|ix47310z8933|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N0
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52928 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z6  = \u_kirsch|u_flow|p43_13_  & (\u_kirsch|u_flow|p43_12_  $ \u_kirsch|u_flow|prev_max_12_  # !\u_kirsch|u_flow|prev_max_13_ ) # !\u_kirsch|u_flow|p43_13_  & (\u_kirsch|u_flow|prev_max_13_  # \u_kirsch|u_flow|p43_12_  $ 
// \u_kirsch|u_flow|prev_max_12_ )

	.dataa(\u_kirsch|u_flow|p43_13_ ),
	.datab(\u_kirsch|u_flow|p43_12_ ),
	.datac(\u_kirsch|u_flow|prev_max_12_ ),
	.datad(\u_kirsch|u_flow|prev_max_13_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52928 .lut_mask = 16'h7DBE;
defparam \u_kirsch|u_flow|ix47310z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52929 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z7  = \u_kirsch|u_flow|prev_max_10_  & (\u_kirsch|u_flow|prev_max_11_  $ \u_kirsch|u_flow|p43_11_  # !\u_kirsch|u_flow|p43_10_ ) # !\u_kirsch|u_flow|prev_max_10_  & (\u_kirsch|u_flow|p43_10_  # \u_kirsch|u_flow|prev_max_11_  $ 
// \u_kirsch|u_flow|p43_11_ )

	.dataa(\u_kirsch|u_flow|prev_max_10_ ),
	.datab(\u_kirsch|u_flow|prev_max_11_ ),
	.datac(\u_kirsch|u_flow|p43_10_ ),
	.datad(\u_kirsch|u_flow|p43_11_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z7 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52929 .lut_mask = 16'h7BDE;
defparam \u_kirsch|u_flow|ix47310z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N18
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52930 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z8  = \u_kirsch|u_flow|p43_8_  & (\u_kirsch|u_flow|p43_9_  $ \u_kirsch|u_flow|prev_max_9_  # !\u_kirsch|u_flow|prev_max_8_ ) # !\u_kirsch|u_flow|p43_8_  & (\u_kirsch|u_flow|prev_max_8_  # \u_kirsch|u_flow|p43_9_  $ 
// \u_kirsch|u_flow|prev_max_9_ )

	.dataa(\u_kirsch|u_flow|p43_8_ ),
	.datab(\u_kirsch|u_flow|prev_max_8_ ),
	.datac(\u_kirsch|u_flow|p43_9_ ),
	.datad(\u_kirsch|u_flow|prev_max_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z8 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52930 .lut_mask = 16'h6FF6;
defparam \u_kirsch|u_flow|ix47310z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y21_N30
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52931 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z9  = \u_kirsch|u_flow|p43_6_  & (\u_kirsch|u_flow|prev_max_7_  $ \u_kirsch|u_flow|p43_7_  # !\u_kirsch|u_flow|prev_max_6_ ) # !\u_kirsch|u_flow|p43_6_  & (\u_kirsch|u_flow|prev_max_6_  # \u_kirsch|u_flow|prev_max_7_  $ 
// \u_kirsch|u_flow|p43_7_ )

	.dataa(\u_kirsch|u_flow|p43_6_ ),
	.datab(\u_kirsch|u_flow|prev_max_7_ ),
	.datac(\u_kirsch|u_flow|prev_max_6_ ),
	.datad(\u_kirsch|u_flow|p43_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z9 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52931 .lut_mask = 16'h7BDE;
defparam \u_kirsch|u_flow|ix47310z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N4
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52927 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z5  = \u_kirsch|u_flow|nx47310z7  # \u_kirsch|u_flow|nx47310z9  # \u_kirsch|u_flow|nx47310z8  # \u_kirsch|u_flow|nx47310z6 

	.dataa(\u_kirsch|u_flow|nx47310z7 ),
	.datab(\u_kirsch|u_flow|nx47310z9 ),
	.datac(\u_kirsch|u_flow|nx47310z8 ),
	.datad(\u_kirsch|u_flow|nx47310z6 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52927 .lut_mask = 16'hFFFE;
defparam \u_kirsch|u_flow|ix47310z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N22
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52932 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z10  = \u_kirsch|u_flow|p43_5_  & (\u_kirsch|u_flow|prev_max_4_  $ \u_kirsch|u_flow|p43_4_  # !\u_kirsch|u_flow|prev_max_5_ ) # !\u_kirsch|u_flow|p43_5_  & (\u_kirsch|u_flow|prev_max_5_  # \u_kirsch|u_flow|prev_max_4_  $ 
// \u_kirsch|u_flow|p43_4_ )

	.dataa(\u_kirsch|u_flow|p43_5_ ),
	.datab(\u_kirsch|u_flow|prev_max_4_ ),
	.datac(\u_kirsch|u_flow|prev_max_5_ ),
	.datad(\u_kirsch|u_flow|p43_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z10 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52932 .lut_mask = 16'h7BDE;
defparam \u_kirsch|u_flow|ix47310z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N24
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52933 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z11  = \u_kirsch|u_flow|p43_3_  & (\u_kirsch|u_flow|prev_max_2_  $ \u_kirsch|u_flow|p43_2_  # !\u_kirsch|u_flow|prev_max_3_ ) # !\u_kirsch|u_flow|p43_3_  & (\u_kirsch|u_flow|prev_max_3_  # \u_kirsch|u_flow|prev_max_2_  $ 
// \u_kirsch|u_flow|p43_2_ )

	.dataa(\u_kirsch|u_flow|p43_3_ ),
	.datab(\u_kirsch|u_flow|prev_max_2_ ),
	.datac(\u_kirsch|u_flow|prev_max_3_ ),
	.datad(\u_kirsch|u_flow|p43_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z11 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52933 .lut_mask = 16'h7BDE;
defparam \u_kirsch|u_flow|ix47310z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N26
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52934 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z12  = \u_kirsch|u_flow|prev_max_1_  & (\u_kirsch|u_flow|p43_0_  $ \u_kirsch|u_flow|prev_max_0_  # !\u_kirsch|u_flow|p43_1_ ) # !\u_kirsch|u_flow|prev_max_1_  & (\u_kirsch|u_flow|p43_1_  # \u_kirsch|u_flow|p43_0_  $ 
// \u_kirsch|u_flow|prev_max_0_ )

	.dataa(\u_kirsch|u_flow|prev_max_1_ ),
	.datab(\u_kirsch|u_flow|p43_1_ ),
	.datac(\u_kirsch|u_flow|p43_0_ ),
	.datad(\u_kirsch|u_flow|prev_max_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z12 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52934 .lut_mask = 16'h6FF6;
defparam \u_kirsch|u_flow|ix47310z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N20
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52926 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z4  = !\u_kirsch|u_flow|nx47310z11  & !\u_kirsch|u_flow|nx47310z12  & !\u_kirsch|u_flow|nx47310z5  & !\u_kirsch|u_flow|nx47310z10 

	.dataa(\u_kirsch|u_flow|nx47310z11 ),
	.datab(\u_kirsch|u_flow|nx47310z12 ),
	.datac(\u_kirsch|u_flow|nx47310z5 ),
	.datad(\u_kirsch|u_flow|nx47310z10 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52926 .lut_mask = 16'h0001;
defparam \u_kirsch|u_flow|ix47310z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N2
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52924 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z2  = \u_kirsch|u_flow|ix47310z8933|nx100z1  # \u_kirsch|u_flow|nx47310z4  & \u_kirsch|u_flow|p45  & !\u_kirsch|u_flow|max_fwd 

	.dataa(\u_kirsch|u_flow|nx47310z4 ),
	.datab(\u_kirsch|u_flow|p45 ),
	.datac(\u_kirsch|u_flow|max_fwd ),
	.datad(\u_kirsch|u_flow|ix47310z8933|nx100z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52924 .lut_mask = 16'hFF08;
defparam \u_kirsch|u_flow|ix47310z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N18
cycloneii_lcell_comb \u_kirsch|u_flow|ix30752z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx30752z1  = \u_kirsch|u_flow|state_3_  & \u_kirsch|u_flow|nx47310z2 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|state_3_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx47310z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx30752z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix30752z52923 .lut_mask = 16'hCC00;
defparam \u_kirsch|u_flow|ix30752z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y21_N7
cycloneii_lcell_ff \u_kirsch|u_flow|reg_max_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx27830z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|u_flow|nx47310z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|max_dir_0_ ));

// atom is at LCCOMB_X54_Y21_N2
cycloneii_lcell_comb \u_kirsch|u_flow|ix63886z52923 (
// Equation(s):
// \u_kirsch|u_flow|o_dir_0_  = \u_kirsch|u_flow|max_dir_0_  & \u_kirsch|u_flow|o_edge 

	.dataa(\u_kirsch|u_flow|max_dir_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_dir_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix63886z52923 .lut_mask = 16'hAA00;
defparam \u_kirsch|u_flow|ix63886z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N17
cycloneii_lcell_ff \u_uw_uart|reg_mdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_dir_1_ ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|u_flow|o_valid ),
	.ena(\u_uw_uart|nx40736z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_2_ ));

// atom is at LCFF_X55_Y21_N3
cycloneii_lcell_ff \u_uw_uart|reg_sdout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_3_ ));

// atom is at LCFF_X56_Y22_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx31615z1 ));

// atom is at LCCOMB_X55_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix31615z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx31615z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_3_ 

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_3_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx31615z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix31615z52923 .lut_mask = 16'hF303;
defparam \u_uw_uart|i_uarts|ix31615z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N21
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p40 (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p30 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p40 ));

// atom is at LCFF_X55_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_3_ ));

// atom is at LCFF_X55_Y17_N23
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_3_ ));

// atom is at LCCOMB_X55_Y17_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52994 (
// Equation(s):
// \u_kirsch|f_i_row_3_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_row_3_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i_row_next_3_ )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|o_row_3_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|f_i_row_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52994 .lut_mask = 16'hCFC0;
defparam \u_kirsch|ix20836z52994 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N25
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_2_ ));

// atom is at LCCOMB_X55_Y20_N4
cycloneii_lcell_comb \u_kirsch|u_flow|ix5049z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx5049z1  = \u_kirsch|u_flow|state_3_  # !\nrst~combout  # !\u_kirsch|u_flow|p40 

	.dataa(\u_kirsch|u_flow|p40 ),
	.datab(\u_kirsch|u_flow|state_3_ ),
	.datac(\nrst~combout ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx5049z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix5049z52923 .lut_mask = 16'hDFDF;
defparam \u_kirsch|u_flow|ix5049z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y17_N20
cycloneii_lcell_comb \u_kirsch|u_flow|ix47310z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx47310z1  = \u_kirsch|u_flow|state_3_  # \u_kirsch|u_flow|nx47310z2  # !\u_kirsch|u_flow|p40  # !\nrst~combout 

	.dataa(\u_kirsch|u_flow|state_3_ ),
	.datab(\nrst~combout ),
	.datac(\u_kirsch|u_flow|p40 ),
	.datad(\u_kirsch|u_flow|nx47310z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47310z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix47310z52923 .lut_mask = 16'hFFBF;
defparam \u_kirsch|u_flow|ix47310z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y20_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_11_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_11_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_11_ ));

// atom is at LCFF_X56_Y21_N21
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_10_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_10_ ));

// atom is at LCFF_X60_Y19_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_10_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_10_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_10_ ));

// atom is at LCFF_X59_Y22_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p23_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_9_ ));

// atom is at LCFF_X61_Y19_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_9_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_9_ ));

// atom is at LCFF_X62_Y21_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p23_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_8_ ));

// atom is at LCFF_X60_Y19_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_8_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_8_ ));

// atom is at LCFF_X56_Y21_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_7_ ));

// atom is at LCFF_X60_Y20_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_7_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_7_ ));

// atom is at LCFF_X56_Y21_N25
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_6_ ));

// atom is at LCFF_X61_Y19_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_6_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_6_ ));

// atom is at LCFF_X56_Y21_N27
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p23_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_5_ ));

// atom is at LCFF_X61_Y19_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_5_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_5_ ));

// atom is at LCFF_X61_Y21_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p23_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_4_ ));

// atom is at LCFF_X60_Y20_N29
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_4_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_4_ ));

// atom is at LCFF_X61_Y18_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_3_ ));

// atom is at LCFF_X60_Y20_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_3_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_3_ ));

// atom is at LCFF_X56_Y21_N29
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_2_ ));

// atom is at LCFF_X61_Y19_N7
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_2_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_2_ ));

// atom is at LCFF_X56_Y21_N23
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_1_ ));

// atom is at LCFF_X60_Y19_N27
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_1_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_1_ ));

// atom is at LCFF_X60_Y19_N29
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_0_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_0_ ));

// atom is at LCFF_X60_Y22_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p32_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p32_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p32_0_ ));

// atom is at LCCOMB_X60_Y21_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52935 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx37973z1  = \u_kirsch|u_flow|p32_0_  & (\u_kirsch|u_flow|p31_0_  $ VCC) # !\u_kirsch|u_flow|p32_0_  & (\u_kirsch|u_flow|p31_0_  # GND)
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z33  = CARRY(\u_kirsch|u_flow|p31_0_  # !\u_kirsch|u_flow|p32_0_ )

	.dataa(\u_kirsch|u_flow|p32_0_ ),
	.datab(\u_kirsch|u_flow|p31_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z33 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52935 .lut_mask = 16'h66DD;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52934 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx38970z1  = \u_kirsch|u_flow|p32_1_  & (\u_kirsch|u_flow|p31_1_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z33  # !\u_kirsch|u_flow|p31_1_  & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z33  # GND)) # !\u_kirsch|u_flow|p32_1_  & 
// (\u_kirsch|u_flow|p31_1_  & \u_kirsch|u_flow|p4s_sub12_0|nx63795z33  & VCC # !\u_kirsch|u_flow|p31_1_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z33 )
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z30  = CARRY(\u_kirsch|u_flow|p32_1_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z33  # !\u_kirsch|u_flow|p31_1_ ) # !\u_kirsch|u_flow|p32_1_  & !\u_kirsch|u_flow|p31_1_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z33 )

	.dataa(\u_kirsch|u_flow|p32_1_ ),
	.datab(\u_kirsch|u_flow|p31_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z33 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z30 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52934 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52933 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx39967z1  = (\u_kirsch|u_flow|p32_2_  $ \u_kirsch|u_flow|p31_2_  $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z30 ) # GND
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z27  = CARRY(\u_kirsch|u_flow|p32_2_  & \u_kirsch|u_flow|p31_2_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z30  # !\u_kirsch|u_flow|p32_2_  & (\u_kirsch|u_flow|p31_2_  # !\u_kirsch|u_flow|p4s_sub12_0|nx63795z30 ))

	.dataa(\u_kirsch|u_flow|p32_2_ ),
	.datab(\u_kirsch|u_flow|p31_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z30 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z27 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52933 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52932 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx40964z1  = \u_kirsch|u_flow|p32_3_  & (\u_kirsch|u_flow|p31_3_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z27  # !\u_kirsch|u_flow|p31_3_  & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z27  # GND)) # !\u_kirsch|u_flow|p32_3_  & 
// (\u_kirsch|u_flow|p31_3_  & \u_kirsch|u_flow|p4s_sub12_0|nx63795z27  & VCC # !\u_kirsch|u_flow|p31_3_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z27 )
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z24  = CARRY(\u_kirsch|u_flow|p32_3_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z27  # !\u_kirsch|u_flow|p31_3_ ) # !\u_kirsch|u_flow|p32_3_  & !\u_kirsch|u_flow|p31_3_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z27 )

	.dataa(\u_kirsch|u_flow|p32_3_ ),
	.datab(\u_kirsch|u_flow|p31_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z27 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z24 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52932 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52931 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx41961z1  = (\u_kirsch|u_flow|p31_4_  $ \u_kirsch|u_flow|p32_4_  $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z24 ) # GND
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z21  = CARRY(\u_kirsch|u_flow|p31_4_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z24  # !\u_kirsch|u_flow|p32_4_ ) # !\u_kirsch|u_flow|p31_4_  & !\u_kirsch|u_flow|p32_4_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z24 )

	.dataa(\u_kirsch|u_flow|p31_4_ ),
	.datab(\u_kirsch|u_flow|p32_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z24 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z21 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52931 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52930 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx42958z1  = \u_kirsch|u_flow|p31_5_  & (\u_kirsch|u_flow|p32_5_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21  # !\u_kirsch|u_flow|p32_5_  & \u_kirsch|u_flow|p4s_sub12_0|nx63795z21  & VCC) # !\u_kirsch|u_flow|p31_5_  & 
// (\u_kirsch|u_flow|p32_5_  & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z21  # GND) # !\u_kirsch|u_flow|p32_5_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21 )
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z18  = CARRY(\u_kirsch|u_flow|p31_5_  & \u_kirsch|u_flow|p32_5_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21  # !\u_kirsch|u_flow|p31_5_  & (\u_kirsch|u_flow|p32_5_  # !\u_kirsch|u_flow|p4s_sub12_0|nx63795z21 ))

	.dataa(\u_kirsch|u_flow|p31_5_ ),
	.datab(\u_kirsch|u_flow|p32_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z21 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z18 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52930 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52929 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx43955z1  = (\u_kirsch|u_flow|p31_6_  $ \u_kirsch|u_flow|p32_6_  $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z18 ) # GND
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z15  = CARRY(\u_kirsch|u_flow|p31_6_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z18  # !\u_kirsch|u_flow|p32_6_ ) # !\u_kirsch|u_flow|p31_6_  & !\u_kirsch|u_flow|p32_6_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z18 )

	.dataa(\u_kirsch|u_flow|p31_6_ ),
	.datab(\u_kirsch|u_flow|p32_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z18 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z15 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52929 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52928 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx44952z1  = \u_kirsch|u_flow|p32_7_  & (\u_kirsch|u_flow|p31_7_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z15  # !\u_kirsch|u_flow|p31_7_  & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z15  # GND)) # !\u_kirsch|u_flow|p32_7_  & 
// (\u_kirsch|u_flow|p31_7_  & \u_kirsch|u_flow|p4s_sub12_0|nx63795z15  & VCC # !\u_kirsch|u_flow|p31_7_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z15 )
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z12  = CARRY(\u_kirsch|u_flow|p32_7_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z15  # !\u_kirsch|u_flow|p31_7_ ) # !\u_kirsch|u_flow|p32_7_  & !\u_kirsch|u_flow|p31_7_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z15 )

	.dataa(\u_kirsch|u_flow|p32_7_ ),
	.datab(\u_kirsch|u_flow|p31_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z15 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z12 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52928 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52927 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx45949z1  = (\u_kirsch|u_flow|p31_8_  $ \u_kirsch|u_flow|p32_8_  $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z12 ) # GND
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z9  = CARRY(\u_kirsch|u_flow|p31_8_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z12  # !\u_kirsch|u_flow|p32_8_ ) # !\u_kirsch|u_flow|p31_8_  & !\u_kirsch|u_flow|p32_8_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z12 )

	.dataa(\u_kirsch|u_flow|p31_8_ ),
	.datab(\u_kirsch|u_flow|p32_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z12 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z9 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52927 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52926 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx46946z1  = \u_kirsch|u_flow|p32_9_  & (\u_kirsch|u_flow|p31_9_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z9  # !\u_kirsch|u_flow|p31_9_  & (\u_kirsch|u_flow|p4s_sub12_0|nx63795z9  # GND)) # !\u_kirsch|u_flow|p32_9_  & 
// (\u_kirsch|u_flow|p31_9_  & \u_kirsch|u_flow|p4s_sub12_0|nx63795z9  & VCC # !\u_kirsch|u_flow|p31_9_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z9 )
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z6  = CARRY(\u_kirsch|u_flow|p32_9_  & (!\u_kirsch|u_flow|p4s_sub12_0|nx63795z9  # !\u_kirsch|u_flow|p31_9_ ) # !\u_kirsch|u_flow|p32_9_  & !\u_kirsch|u_flow|p31_9_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z9 )

	.dataa(\u_kirsch|u_flow|p32_9_ ),
	.datab(\u_kirsch|u_flow|p31_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z9 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52926 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52925 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx62798z1  = (\u_kirsch|u_flow|p32_10_  $ \u_kirsch|u_flow|p31_10_  $ \u_kirsch|u_flow|p4s_sub12_0|nx63795z6 ) # GND
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z3  = CARRY(\u_kirsch|u_flow|p32_10_  & \u_kirsch|u_flow|p31_10_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z6  # !\u_kirsch|u_flow|p32_10_  & (\u_kirsch|u_flow|p31_10_  # !\u_kirsch|u_flow|p4s_sub12_0|nx63795z6 ))

	.dataa(\u_kirsch|u_flow|p32_10_ ),
	.datab(\u_kirsch|u_flow|p31_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z6 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx62798z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z3 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52925 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N26
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix63795z52923 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx63795z1  = \u_kirsch|u_flow|p31_11_  & \u_kirsch|u_flow|p4s_sub12_0|nx63795z3  & VCC # !\u_kirsch|u_flow|p31_11_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z3 
// \u_kirsch|u_flow|p4s_sub12_0|nx23445z2  = CARRY(!\u_kirsch|u_flow|p31_11_  & !\u_kirsch|u_flow|p4s_sub12_0|nx63795z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p31_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx63795z3 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx63795z1 ),
	.cout(\u_kirsch|u_flow|p4s_sub12_0|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52923 .lut_mask = 16'hC303;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X61_Y20_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p31_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p31_12_~feeder_combout ),
	.sdata(\u_kirsch|u_flow|p22_12_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p31_12_ ));

// atom is at LCFF_X59_Y17_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p30 (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|p20 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p30 ));

// atom is at LCCOMB_X60_Y21_N28
cycloneii_lcell_comb \u_kirsch|u_flow|p4s_sub12_0|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p4s_sub12_0|nx23445z1  = !\u_kirsch|u_flow|p4s_sub12_0|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p4s_sub12_0|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p4s_sub12_0|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p4s_sub12_0|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|p4s_sub12_0|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y17_N8
cycloneii_lcell_comb \u_kirsch|u_flow|ix26026z52924 (
// Equation(s):
// \u_kirsch|u_flow|nx26026z2  = \u_kirsch|u_flow|p4s_sub12_0|nx23445z1  & \u_kirsch|u_flow|p30  & !\u_kirsch|u_flow|p31_12_ 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p4s_sub12_0|nx23445z1 ),
	.datac(\u_kirsch|u_flow|p30 ),
	.datad(\u_kirsch|u_flow|p31_12_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26026z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix26026z52924 .lut_mask = 16'h00C0;
defparam \u_kirsch|u_flow|ix26026z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N30
cycloneii_lcell_comb \u_kirsch|u_flow|ix26026z52925 (
// Equation(s):
// \u_kirsch|u_flow|nx26026z4  = \u_kirsch|u_flow|p4s_sub12_0|nx46946z1  # \u_kirsch|u_flow|p4s_sub12_0|nx44952z1  & \u_kirsch|u_flow|p4s_sub12_0|nx45949z1 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p4s_sub12_0|nx44952z1 ),
	.datac(\u_kirsch|u_flow|p4s_sub12_0|nx45949z1 ),
	.datad(\u_kirsch|u_flow|p4s_sub12_0|nx46946z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26026z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix26026z52925 .lut_mask = 16'hFFC0;
defparam \u_kirsch|u_flow|ix26026z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N2
cycloneii_lcell_comb \u_kirsch|u_flow|ix26026z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx26026z1  = \u_kirsch|u_flow|nx26026z2  & (\u_kirsch|u_flow|nx26026z4  # \u_kirsch|u_flow|p4s_sub12_0|nx62798z1  # \u_kirsch|u_flow|p4s_sub12_0|nx63795z1 )

	.dataa(\u_kirsch|u_flow|nx26026z2 ),
	.datab(\u_kirsch|u_flow|nx26026z4 ),
	.datac(\u_kirsch|u_flow|p4s_sub12_0|nx62798z1 ),
	.datad(\u_kirsch|u_flow|p4s_sub12_0|nx63795z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26026z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix26026z52923 .lut_mask = 16'hAAA8;
defparam \u_kirsch|u_flow|ix26026z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y19_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p35 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p35 ));

// atom is at LCCOMB_X61_Y20_N0
cycloneii_lcell_comb \u_kirsch|u_flow|ix29125z52923 (
// Equation(s):
// \u_kirsch|u_flow|p4s_13_  = \u_kirsch|u_flow|p31_12_  # !\u_kirsch|u_flow|p4s_sub12_0|nx23445z1 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p4s_sub12_0|nx23445z1 ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p31_12_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p4s_13_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix29125z52923 .lut_mask = 16'hFF33;
defparam \u_kirsch|u_flow|ix29125z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N28
cycloneii_lcell_comb \u_kirsch|u_flow|ix28128z52923 (
// Equation(s):
// \u_kirsch|u_flow|p4s_12_  = \u_kirsch|u_flow|p4s_sub12_0|nx23445z1  $ !\u_kirsch|u_flow|p31_12_ 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p4s_sub12_0|nx23445z1 ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p31_12_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p4s_12_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix28128z52923 .lut_mask = 16'hCC33;
defparam \u_kirsch|u_flow|ix28128z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y21_N6
cycloneii_lcell_comb \u_kirsch|u_flow|ix27830z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx27830z1  = \u_kirsch|u_flow|p45  $ \u_kirsch|u_flow|nx28524z1 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p45 ),
	.datac(\u_kirsch|u_flow|nx28524z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx27830z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix27830z52923 .lut_mask = 16'h3C3C;
defparam \u_kirsch|u_flow|ix27830z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N23
cycloneii_lcell_ff \u_kirsch|u_flow|reg_max_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx26833z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|max_dir_1_ ));

// atom is at LCCOMB_X54_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_flow|ix62889z52923 (
// Equation(s):
// \u_kirsch|u_flow|o_dir_1_  = \u_kirsch|u_flow|max_dir_1_  & \u_kirsch|u_flow|o_edge 

	.dataa(\u_kirsch|u_flow|max_dir_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_dir_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix62889z52923 .lut_mask = 16'hAA00;
defparam \u_kirsch|u_flow|ix62889z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N11
cycloneii_lcell_ff \u_uw_uart|reg_mdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_dir_2_ ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|u_flow|o_valid ),
	.ena(\u_uw_uart|nx40736z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_3_ ));

// atom is at LCFF_X55_Y21_N21
cycloneii_lcell_ff \u_uw_uart|reg_sdout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_5_ ));

// atom is at LCFF_X56_Y22_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx32612z1 ));

// atom is at LCCOMB_X56_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32612z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx32612z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_5_ 

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_5_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx32612z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32612z52923 .lut_mask = 16'hF303;
defparam \u_uw_uart|i_uarts|ix32612z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N20
cycloneii_lcell_comb \u_kirsch|u_memory|ix60567z52925 (
// Equation(s):
// \u_kirsch|u_memory|nx60567z3  = \u_kirsch|u_memory|modgen_counter_row|nx58250z11  # \u_kirsch|u_memory|modgen_counter_row|nx58250z7  # \u_kirsch|u_memory|modgen_counter_row|nx58250z13  # \u_kirsch|u_memory|modgen_counter_row|nx58250z9 

	.dataa(\u_kirsch|u_memory|modgen_counter_row|nx58250z11 ),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z7 ),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z13 ),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx58250z9 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60567z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60567z52925 .lut_mask = 16'hFFFE;
defparam \u_kirsch|u_memory|ix60567z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N12
cycloneii_lcell_comb \u_kirsch|u_memory|ix60567z52928 (
// Equation(s):
// \u_kirsch|u_memory|nx60567z6  = \u_kirsch|u_memory|modgen_counter_column|nx58250z9  # \u_kirsch|u_memory|modgen_counter_column|nx58250z11  # \u_kirsch|u_memory|modgen_counter_column|nx58250z13 

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ),
	.datac(\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ),
	.datad(\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60567z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60567z52928 .lut_mask = 16'hFFFC;
defparam \u_kirsch|u_memory|ix60567z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y19_N29
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx62798z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_11_ ));

// atom is at LCFF_X60_Y20_N25
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx62798z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_11_ ));

// atom is at LCFF_X61_Y19_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx63795z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_12_ ));

// atom is at LCFF_X60_Y20_N27
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx63795z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_12_ ));

// atom is at LCFF_X61_Y19_N27
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_10_ ));

// atom is at LCFF_X60_Y20_N23
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_10_ ));

// atom is at LCFF_X61_Y19_N25
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_9_ ));

// atom is at LCFF_X60_Y20_N21
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_9_ ));

// atom is at LCFF_X61_Y19_N23
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_8_ ));

// atom is at LCFF_X60_Y20_N19
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_8_ ));

// atom is at LCFF_X61_Y19_N21
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_7_ ));

// atom is at LCFF_X60_Y20_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_7_ ));

// atom is at LCFF_X61_Y19_N19
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_6_ ));

// atom is at LCFF_X60_Y20_N15
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_6_ ));

// atom is at LCFF_X61_Y19_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_5_ ));

// atom is at LCFF_X60_Y20_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_5_ ));

// atom is at LCFF_X61_Y19_N15
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_4_ ));

// atom is at LCFF_X60_Y20_N11
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_4_ ));

// atom is at LCFF_X61_Y19_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_3_ ));

// atom is at LCFF_X60_Y20_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_3_ ));

// atom is at LCFF_X61_Y19_N11
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_2_ ));

// atom is at LCFF_X60_Y20_N7
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_2_ ));

// atom is at LCFF_X61_Y19_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_add12_4i1|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_1_ ));

// atom is at LCFF_X60_Y20_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_add12_4i2|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_1_ ));

// atom is at LCFF_X59_Y20_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p22_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p22_sub10_4i5|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p22_0_ ));

// atom is at LCFF_X60_Y19_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p21_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p21_sub10_4i3|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p21_0_ ));

// atom is at LCCOMB_X61_Y20_N2
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52936 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z37  = CARRY(!\u_kirsch|u_flow|p21_0_  & \u_kirsch|u_flow|p22_0_ )

	.dataa(\u_kirsch|u_flow|p21_0_ ),
	.datab(\u_kirsch|u_flow|p22_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z37 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52936 .lut_mask = 16'h0044;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N4
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52935 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z34  = CARRY(\u_kirsch|u_flow|p21_1_  & (!\u_kirsch|u_flow|ix45188z19900|nx100z37  # !\u_kirsch|u_flow|p22_1_ ) # !\u_kirsch|u_flow|p21_1_  & !\u_kirsch|u_flow|p22_1_  & !\u_kirsch|u_flow|ix45188z19900|nx100z37 )

	.dataa(\u_kirsch|u_flow|p21_1_ ),
	.datab(\u_kirsch|u_flow|p22_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z37 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z34 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52935 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N6
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52934 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z31  = CARRY(\u_kirsch|u_flow|p21_2_  & \u_kirsch|u_flow|p22_2_  & !\u_kirsch|u_flow|ix45188z19900|nx100z34  # !\u_kirsch|u_flow|p21_2_  & (\u_kirsch|u_flow|p22_2_  # !\u_kirsch|u_flow|ix45188z19900|nx100z34 ))

	.dataa(\u_kirsch|u_flow|p21_2_ ),
	.datab(\u_kirsch|u_flow|p22_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z34 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z31 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52934 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N8
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52933 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z28  = CARRY(\u_kirsch|u_flow|p22_3_  & \u_kirsch|u_flow|p21_3_  & !\u_kirsch|u_flow|ix45188z19900|nx100z31  # !\u_kirsch|u_flow|p22_3_  & (\u_kirsch|u_flow|p21_3_  # !\u_kirsch|u_flow|ix45188z19900|nx100z31 ))

	.dataa(\u_kirsch|u_flow|p22_3_ ),
	.datab(\u_kirsch|u_flow|p21_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z31 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z28 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52933 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N10
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52932 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z25  = CARRY(\u_kirsch|u_flow|p21_4_  & \u_kirsch|u_flow|p22_4_  & !\u_kirsch|u_flow|ix45188z19900|nx100z28  # !\u_kirsch|u_flow|p21_4_  & (\u_kirsch|u_flow|p22_4_  # !\u_kirsch|u_flow|ix45188z19900|nx100z28 ))

	.dataa(\u_kirsch|u_flow|p21_4_ ),
	.datab(\u_kirsch|u_flow|p22_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z28 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z25 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N12
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52931 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z22  = CARRY(\u_kirsch|u_flow|p22_5_  & \u_kirsch|u_flow|p21_5_  & !\u_kirsch|u_flow|ix45188z19900|nx100z25  # !\u_kirsch|u_flow|p22_5_  & (\u_kirsch|u_flow|p21_5_  # !\u_kirsch|u_flow|ix45188z19900|nx100z25 ))

	.dataa(\u_kirsch|u_flow|p22_5_ ),
	.datab(\u_kirsch|u_flow|p21_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z25 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52931 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N14
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52930 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z19  = CARRY(\u_kirsch|u_flow|p22_6_  & (!\u_kirsch|u_flow|ix45188z19900|nx100z22  # !\u_kirsch|u_flow|p21_6_ ) # !\u_kirsch|u_flow|p22_6_  & !\u_kirsch|u_flow|p21_6_  & !\u_kirsch|u_flow|ix45188z19900|nx100z22 )

	.dataa(\u_kirsch|u_flow|p22_6_ ),
	.datab(\u_kirsch|u_flow|p21_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52929 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z16  = CARRY(\u_kirsch|u_flow|p21_7_  & (!\u_kirsch|u_flow|ix45188z19900|nx100z19  # !\u_kirsch|u_flow|p22_7_ ) # !\u_kirsch|u_flow|p21_7_  & !\u_kirsch|u_flow|p22_7_  & !\u_kirsch|u_flow|ix45188z19900|nx100z19 )

	.dataa(\u_kirsch|u_flow|p21_7_ ),
	.datab(\u_kirsch|u_flow|p22_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N18
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52928 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z13  = CARRY(\u_kirsch|u_flow|p22_8_  & (!\u_kirsch|u_flow|ix45188z19900|nx100z16  # !\u_kirsch|u_flow|p21_8_ ) # !\u_kirsch|u_flow|p22_8_  & !\u_kirsch|u_flow|p21_8_  & !\u_kirsch|u_flow|ix45188z19900|nx100z16 )

	.dataa(\u_kirsch|u_flow|p22_8_ ),
	.datab(\u_kirsch|u_flow|p21_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N20
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52927 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z10  = CARRY(\u_kirsch|u_flow|p22_9_  & \u_kirsch|u_flow|p21_9_  & !\u_kirsch|u_flow|ix45188z19900|nx100z13  # !\u_kirsch|u_flow|p22_9_  & (\u_kirsch|u_flow|p21_9_  # !\u_kirsch|u_flow|ix45188z19900|nx100z13 ))

	.dataa(\u_kirsch|u_flow|p22_9_ ),
	.datab(\u_kirsch|u_flow|p21_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N22
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52926 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z7  = CARRY(\u_kirsch|u_flow|p22_10_  & (!\u_kirsch|u_flow|ix45188z19900|nx100z10  # !\u_kirsch|u_flow|p21_10_ ) # !\u_kirsch|u_flow|p22_10_  & !\u_kirsch|u_flow|p21_10_  & !\u_kirsch|u_flow|ix45188z19900|nx100z10 )

	.dataa(\u_kirsch|u_flow|p22_10_ ),
	.datab(\u_kirsch|u_flow|p21_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N24
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52925 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z4  = CARRY(\u_kirsch|u_flow|p21_11_  & (!\u_kirsch|u_flow|ix45188z19900|nx100z7  # !\u_kirsch|u_flow|p22_11_ ) # !\u_kirsch|u_flow|p21_11_  & !\u_kirsch|u_flow|p22_11_  & !\u_kirsch|u_flow|ix45188z19900|nx100z7 )

	.dataa(\u_kirsch|u_flow|p21_11_ ),
	.datab(\u_kirsch|u_flow|p22_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|u_flow|ix45188z19900|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N26
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|ix100z52923 (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z1  = \u_kirsch|u_flow|p22_12_  & !\u_kirsch|u_flow|ix45188z19900|nx100z4  & \u_kirsch|u_flow|p21_12_  # !\u_kirsch|u_flow|p22_12_  & (\u_kirsch|u_flow|p21_12_  # !\u_kirsch|u_flow|ix45188z19900|nx100z4 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p22_12_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_12_ ),
	.cin(\u_kirsch|u_flow|ix45188z19900|nx100z4 ),
	.combout(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52923 .lut_mask = 16'h3F03;
defparam \u_kirsch|u_flow|ix45188z19900|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y21_N19
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_10_ ));

// atom is at LCFF_X56_Y21_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_9_ ));

// atom is at LCFF_X56_Y21_N15
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_8_ ));

// atom is at LCFF_X56_Y21_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_7_ ));

// atom is at LCFF_X56_Y21_N11
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_6_ ));

// atom is at LCFF_X56_Y21_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_5_ ));

// atom is at LCFF_X56_Y21_N7
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_4_ ));

// atom is at LCFF_X56_Y21_N5
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_3_ ));

// atom is at LCFF_X56_Y21_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_2_ ));

// atom is at LCFF_X56_Y21_N1
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add9_3|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_1_ ));

// atom is at LCFF_X57_Y21_N9
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p23_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p13_add8_0i3|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p23_0_ ));

// atom is at LCFF_X59_Y17_N25
cycloneii_lcell_ff \u_kirsch|u_flow|reg_p20 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx20836z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p20 ));

// atom is at LCCOMB_X55_Y20_N30
cycloneii_lcell_comb \u_kirsch|u_flow|ix26833z52924 (
// Equation(s):
// \u_kirsch|u_flow|nx26833z2  = \u_kirsch|u_flow|state_3_  # \u_kirsch|u_flow|state_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_flow|state_3_ ),
	.datad(\u_kirsch|u_flow|state_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26833z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix26833z52924 .lut_mask = 16'hFFF0;
defparam \u_kirsch|u_flow|ix26833z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N26
cycloneii_lcell_comb \u_kirsch|u_flow|ix26833z52925 (
// Equation(s):
// \u_kirsch|u_flow|nx26833z3  = \u_kirsch|u_flow|nx28524z1  & !\u_kirsch|u_flow|state_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|nx28524z1 ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|state_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26833z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix26833z52925 .lut_mask = 16'h00CC;
defparam \u_kirsch|u_flow|ix26833z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N22
cycloneii_lcell_comb \u_kirsch|u_flow|ix26833z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx26833z1  = \u_kirsch|u_flow|nx47310z2  & \u_kirsch|u_flow|nx26833z3  & (\u_kirsch|u_flow|nx26833z2  # \u_kirsch|u_flow|max_dir_1_ ) # !\u_kirsch|u_flow|nx47310z2  & (\u_kirsch|u_flow|max_dir_1_ )

	.dataa(\u_kirsch|u_flow|nx26833z2 ),
	.datab(\u_kirsch|u_flow|nx26833z3 ),
	.datac(\u_kirsch|u_flow|max_dir_1_ ),
	.datad(\u_kirsch|u_flow|nx47310z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26833z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix26833z52923 .lut_mask = 16'hC8F0;
defparam \u_kirsch|u_flow|ix26833z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y20_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_max_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx25836z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|max_dir_2_ ));

// atom is at LCCOMB_X54_Y21_N10
cycloneii_lcell_comb \u_kirsch|u_flow|ix61892z52923 (
// Equation(s):
// \u_kirsch|u_flow|o_dir_2_  = \u_kirsch|u_flow|max_dir_2_  & \u_kirsch|u_flow|o_edge 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|max_dir_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_dir_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix61892z52923 .lut_mask = 16'hCC00;
defparam \u_kirsch|u_flow|ix61892z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N5
cycloneii_lcell_ff \u_uw_uart|reg_mdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx40736z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_5_ ));

// atom is at LCFF_X56_Y22_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx33609z1 ));

// atom is at LCCOMB_X56_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix33609z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx33609z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_5_ 

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_5_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx33609z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix33609z52923 .lut_mask = 16'hF303;
defparam \u_uw_uart|i_uarts|ix33609z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N25
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_7_ ));

// atom is at LCFF_X57_Y18_N7
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__7_ ));

// atom is at LCCOMB_X57_Y18_N8
cycloneii_lcell_comb \u_kirsch|ix20836z52931 (
// Equation(s):
// \u_kirsch|f_t2_7_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image0_1__7_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_t2_next_7_ )

	.dataa(\u_kirsch|u_memory|o_image0_1__7_ ),
	.datab(\u_kirsch|f_t2_next_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52931 .lut_mask = 16'hAACC;
defparam \u_kirsch|ix20836z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N19
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_7_ ));

// atom is at LCFF_X57_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__7_ ));

// atom is at LCCOMB_X57_Y18_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52923 (
// Equation(s):
// \u_kirsch|f_t1_7_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__7_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_7_ 

	.dataa(\u_kirsch|f_t1_next_7_ ),
	.datab(\u_kirsch|u_memory|o_image0_2__7_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52923 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix20836z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N1
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_6_ ));

// atom is at LCFF_X57_Y17_N29
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image0_1__6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__6_ ));

// atom is at LCCOMB_X57_Y17_N10
cycloneii_lcell_comb \u_kirsch|ix20836z52932 (
// Equation(s):
// \u_kirsch|f_t2_6_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image0_1__6_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_t2_next_6_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|u_memory|o_image0_1__6_ ),
	.datac(vcc),
	.datad(\u_kirsch|f_t2_next_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52932 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix20836z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N11
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_6_ ));

// atom is at LCFF_X57_Y17_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__6_ ));

// atom is at LCCOMB_X57_Y17_N12
cycloneii_lcell_comb \u_kirsch|ix20836z52924 (
// Equation(s):
// \u_kirsch|f_t1_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_6_ 

	.dataa(\u_kirsch|f_t1_next_6_ ),
	.datab(\u_kirsch|u_memory|o_image0_2__6_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52924 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix20836z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N25
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_5_ ));

// atom is at LCFF_X57_Y17_N25
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__5_ ));

// atom is at LCCOMB_X57_Y17_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52933 (
// Equation(s):
// \u_kirsch|f_t2_5_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image0_1__5_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_t2_next_5_ )

	.dataa(\u_kirsch|u_memory|o_image0_1__5_ ),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(vcc),
	.datad(\u_kirsch|f_t2_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52933 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix20836z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N11
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_5_ ));

// atom is at LCFF_X57_Y17_N3
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__5_ ));

// atom is at LCCOMB_X57_Y17_N16
cycloneii_lcell_comb \u_kirsch|ix20836z52925 (
// Equation(s):
// \u_kirsch|f_t1_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_5_ 

	.dataa(\u_kirsch|f_t1_next_5_ ),
	.datab(\u_kirsch|u_memory|o_image0_2__5_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52925 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix20836z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N21
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_4_ ));

// atom is at LCFF_X57_Y18_N11
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__4_ ));

// atom is at LCCOMB_X57_Y18_N4
cycloneii_lcell_comb \u_kirsch|ix20836z52934 (
// Equation(s):
// \u_kirsch|f_t2_4_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image0_1__4_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_t2_next_4_ )

	.dataa(\u_kirsch|u_memory|o_image0_1__4_ ),
	.datab(\u_kirsch|f_t2_next_4_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52934 .lut_mask = 16'hAACC;
defparam \u_kirsch|ix20836z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N31
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_4_ ));

// atom is at LCFF_X57_Y18_N19
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__4_ ));

// atom is at LCCOMB_X57_Y18_N12
cycloneii_lcell_comb \u_kirsch|ix20836z52926 (
// Equation(s):
// \u_kirsch|f_t1_4_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__4_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_4_ 

	.dataa(\u_kirsch|f_t1_next_4_ ),
	.datab(\u_kirsch|u_memory|o_image0_2__4_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52926 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix20836z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N5
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_3_ ));

// atom is at LCFF_X54_Y18_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__3_ ));

// atom is at LCCOMB_X54_Y18_N16
cycloneii_lcell_comb \u_kirsch|ix20836z52935 (
// Equation(s):
// \u_kirsch|f_t2_3_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image0_1__3_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_t2_next_3_ )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|o_image0_1__3_ ),
	.datac(\u_kirsch|f_t2_next_3_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52935 .lut_mask = 16'hCCF0;
defparam \u_kirsch|ix20836z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N15
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_3_ ));

// atom is at LCFF_X58_Y18_N25
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__3_ ));

// atom is at LCCOMB_X58_Y18_N24
cycloneii_lcell_comb \u_kirsch|ix20836z52927 (
// Equation(s):
// \u_kirsch|f_t1_3_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__3_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_3_ 

	.dataa(\u_kirsch|f_t1_next_3_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image0_2__3_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52927 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N13
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_2_ ));

// atom is at LCFF_X58_Y18_N21
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__2_ ));

// atom is at LCCOMB_X58_Y18_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52936 (
// Equation(s):
// \u_kirsch|f_t2_2_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_1__2_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t2_next_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t2_next_2_ ),
	.datac(\u_kirsch|u_memory|o_image0_1__2_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52936 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N23
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_2_ ));

// atom is at LCFF_X58_Y18_N31
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__2_ ));

// atom is at LCCOMB_X58_Y18_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52928 (
// Equation(s):
// \u_kirsch|f_t1_2_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__2_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t1_next_2_ ),
	.datac(\u_kirsch|u_memory|o_image0_2__2_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52928 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N1
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_1_ ));

// atom is at LCFF_X58_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__1_ ));

// atom is at LCCOMB_X58_Y18_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52937 (
// Equation(s):
// \u_kirsch|f_t2_1_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_1__1_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t2_next_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t2_next_1_ ),
	.datac(\u_kirsch|u_memory|o_image0_1__1_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52937 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N11
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_1_ ));

// atom is at LCFF_X58_Y18_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__1_ ));

// atom is at LCCOMB_X58_Y18_N26
cycloneii_lcell_comb \u_kirsch|ix20836z52929 (
// Equation(s):
// \u_kirsch|f_t1_1_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__1_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_1_ 

	.dataa(\u_kirsch|f_t1_next_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image0_2__1_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52929 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N5
cycloneii_lcell_ff \u_kirsch|reg_f_t1_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t1_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_1__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t1_next_0_ ));

// atom is at LCFF_X58_Y18_N29
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_2__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_2__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_2__0_ ));

// atom is at LCCOMB_X58_Y18_N28
cycloneii_lcell_comb \u_kirsch|ix20836z52930 (
// Equation(s):
// \u_kirsch|f_t1_0_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_2__0_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t1_next_0_ 

	.dataa(\u_kirsch|f_t1_next_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image0_2__0_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52930 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N15
cycloneii_lcell_ff \u_kirsch|reg_f_t2_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t2_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_0__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t2_next_0_ ));

// atom is at LCFF_X58_Y18_N23
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_1__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_1__dup0_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_1__0_ ));

// atom is at LCCOMB_X58_Y18_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52938 (
// Equation(s):
// \u_kirsch|f_t2_0_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_1__0_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t2_next_0_ 

	.dataa(\u_kirsch|f_t2_next_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image0_1__0_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52938 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52931 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx37973z1  = \u_kirsch|f_t1_0_  & (\u_kirsch|f_t2_0_  $ VCC) # !\u_kirsch|f_t1_0_  & \u_kirsch|f_t2_0_  & VCC
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z22  = CARRY(\u_kirsch|f_t1_0_  & \u_kirsch|f_t2_0_ )

	.dataa(\u_kirsch|f_t1_0_ ),
	.datab(\u_kirsch|f_t2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52931 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52930 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx38970z1  = \u_kirsch|f_t2_1_  & (\u_kirsch|f_t1_1_  & \u_kirsch|u_flow|p11_add8_0i1|nx44952z22  & VCC # !\u_kirsch|f_t1_1_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z22 ) # !\u_kirsch|f_t2_1_  & (\u_kirsch|f_t1_1_  & 
// !\u_kirsch|u_flow|p11_add8_0i1|nx44952z22  # !\u_kirsch|f_t1_1_  & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z22  # GND))
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z19  = CARRY(\u_kirsch|f_t2_1_  & !\u_kirsch|f_t1_1_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z22  # !\u_kirsch|f_t2_1_  & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z22  # !\u_kirsch|f_t1_1_ ))

	.dataa(\u_kirsch|f_t2_1_ ),
	.datab(\u_kirsch|f_t1_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z22 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52929 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx39967z1  = (\u_kirsch|f_t2_2_  $ \u_kirsch|f_t1_2_  $ !\u_kirsch|u_flow|p11_add8_0i1|nx44952z19 ) # GND
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z16  = CARRY(\u_kirsch|f_t2_2_  & (\u_kirsch|f_t1_2_  # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z19 ) # !\u_kirsch|f_t2_2_  & \u_kirsch|f_t1_2_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z19 )

	.dataa(\u_kirsch|f_t2_2_ ),
	.datab(\u_kirsch|f_t1_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z19 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52928 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx40964z1  = \u_kirsch|f_t1_3_  & (\u_kirsch|f_t2_3_  & \u_kirsch|u_flow|p11_add8_0i1|nx44952z16  & VCC # !\u_kirsch|f_t2_3_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z16 ) # !\u_kirsch|f_t1_3_  & (\u_kirsch|f_t2_3_  & 
// !\u_kirsch|u_flow|p11_add8_0i1|nx44952z16  # !\u_kirsch|f_t2_3_  & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z16  # GND))
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z13  = CARRY(\u_kirsch|f_t1_3_  & !\u_kirsch|f_t2_3_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z16  # !\u_kirsch|f_t1_3_  & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z16  # !\u_kirsch|f_t2_3_ ))

	.dataa(\u_kirsch|f_t1_3_ ),
	.datab(\u_kirsch|f_t2_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z16 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52927 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx41961z1  = (\u_kirsch|f_t1_4_  $ \u_kirsch|f_t2_4_  $ !\u_kirsch|u_flow|p11_add8_0i1|nx44952z13 ) # GND
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z10  = CARRY(\u_kirsch|f_t1_4_  & (\u_kirsch|f_t2_4_  # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z13 ) # !\u_kirsch|f_t1_4_  & \u_kirsch|f_t2_4_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z13 )

	.dataa(\u_kirsch|f_t1_4_ ),
	.datab(\u_kirsch|f_t2_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z13 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52926 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx42958z1  = \u_kirsch|f_t2_5_  & (\u_kirsch|f_t1_5_  & \u_kirsch|u_flow|p11_add8_0i1|nx44952z10  & VCC # !\u_kirsch|f_t1_5_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z10 ) # !\u_kirsch|f_t2_5_  & (\u_kirsch|f_t1_5_  & 
// !\u_kirsch|u_flow|p11_add8_0i1|nx44952z10  # !\u_kirsch|f_t1_5_  & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z10  # GND))
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z7  = CARRY(\u_kirsch|f_t2_5_  & !\u_kirsch|f_t1_5_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z10  # !\u_kirsch|f_t2_5_  & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z10  # !\u_kirsch|f_t1_5_ ))

	.dataa(\u_kirsch|f_t2_5_ ),
	.datab(\u_kirsch|f_t1_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z10 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52925 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx43955z1  = (\u_kirsch|f_t1_6_  $ \u_kirsch|f_t2_6_  $ !\u_kirsch|u_flow|p11_add8_0i1|nx44952z7 ) # GND
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z4  = CARRY(\u_kirsch|f_t1_6_  & (\u_kirsch|f_t2_6_  # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z7 ) # !\u_kirsch|f_t1_6_  & \u_kirsch|f_t2_6_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z7 )

	.dataa(\u_kirsch|f_t1_6_ ),
	.datab(\u_kirsch|f_t2_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z7 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix44952z52923 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx44952z1  = \u_kirsch|f_t2_7_  & (\u_kirsch|f_t1_7_  & \u_kirsch|u_flow|p11_add8_0i1|nx44952z4  & VCC # !\u_kirsch|f_t1_7_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z4 ) # !\u_kirsch|f_t2_7_  & (\u_kirsch|f_t1_7_  & 
// !\u_kirsch|u_flow|p11_add8_0i1|nx44952z4  # !\u_kirsch|f_t1_7_  & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z4  # GND))
// \u_kirsch|u_flow|p11_add8_0i1|nx23445z2  = CARRY(\u_kirsch|f_t2_7_  & !\u_kirsch|f_t1_7_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z4  # !\u_kirsch|f_t2_7_  & (!\u_kirsch|u_flow|p11_add8_0i1|nx44952z4  # !\u_kirsch|f_t1_7_ ))

	.dataa(\u_kirsch|f_t2_7_ ),
	.datab(\u_kirsch|f_t1_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx44952z4 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p11_add8_0i1|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52923 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y18_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add8_0i1|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p11_add8_0i1|nx23445z1  = !\u_kirsch|u_flow|p11_add8_0i1|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add8_0i1|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p11_add8_0i1|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add8_0i1|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|p11_add8_0i1|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N17
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_7_ ));

// atom is at LCFF_X57_Y18_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__7_ ));

// atom is at LCCOMB_X57_Y18_N14
cycloneii_lcell_comb \u_kirsch|ix20836z52939 (
// Equation(s):
// \u_kirsch|f_t3_7_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__7_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_7_ 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|f_t3_next_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_image0_0__7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52939 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix20836z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N17
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_6_ ));

// atom is at LCFF_X57_Y17_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image0_0__6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__6_ ));

// atom is at LCCOMB_X57_Y17_N18
cycloneii_lcell_comb \u_kirsch|ix20836z52940 (
// Equation(s):
// \u_kirsch|f_t3_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_6_ 

	.dataa(\u_kirsch|f_t3_next_6_ ),
	.datab(\u_kirsch|u_memory|o_image0_0__6_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52940 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix20836z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N1
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_5_ ));

// atom is at LCFF_X59_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__5_ ));

// atom is at LCCOMB_X59_Y18_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52941 (
// Equation(s):
// \u_kirsch|f_t3_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_5_ 

	.dataa(\u_kirsch|f_t3_next_5_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image0_0__5_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52941 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N3
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_4_ ));

// atom is at LCFF_X59_Y18_N3
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__4_ ));

// atom is at LCCOMB_X59_Y18_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52942 (
// Equation(s):
// \u_kirsch|f_t3_4_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__4_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t3_next_4_ ),
	.datac(\u_kirsch|u_memory|o_image0_0__4_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52942 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N27
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_3_ ));

// atom is at LCFF_X59_Y18_N29
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__3_ ));

// atom is at LCCOMB_X59_Y18_N28
cycloneii_lcell_comb \u_kirsch|ix20836z52943 (
// Equation(s):
// \u_kirsch|f_t3_3_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__3_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_3_ 

	.dataa(\u_kirsch|f_t3_next_3_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image0_0__3_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52943 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N3
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_2_ ));

// atom is at LCFF_X59_Y18_N31
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__2_ ));

// atom is at LCCOMB_X59_Y18_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52944 (
// Equation(s):
// \u_kirsch|f_t3_2_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__2_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t3_next_2_ ),
	.datac(\u_kirsch|u_memory|o_image0_0__2_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52944 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N17
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_1_ ));

// atom is at LCFF_X59_Y18_N5
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__1_ ));

// atom is at LCCOMB_X59_Y18_N4
cycloneii_lcell_comb \u_kirsch|ix20836z52945 (
// Equation(s):
// \u_kirsch|f_t3_1_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__1_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t3_next_1_ ),
	.datac(\u_kirsch|u_memory|o_image0_0__1_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52945 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52945 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N19
cycloneii_lcell_ff \u_kirsch|reg_f_t3_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_t3_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_0__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_t3_next_0_ ));

// atom is at LCFF_X59_Y18_N7
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer0_0__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image1_0__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image0_0__0_ ));

// atom is at LCCOMB_X59_Y18_N6
cycloneii_lcell_comb \u_kirsch|ix20836z52946 (
// Equation(s):
// \u_kirsch|f_t3_0_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image0_0__0_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_t3_next_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t3_next_0_ ),
	.datac(\u_kirsch|u_memory|o_image0_0__0_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52946 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52946 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52932 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx37973z1  = \u_kirsch|f_t3_0_  & (\u_kirsch|u_flow|p11_add8_0i1|nx37973z1  $ VCC) # !\u_kirsch|f_t3_0_  & \u_kirsch|u_flow|p11_add8_0i1|nx37973z1  & VCC
// \u_kirsch|u_flow|p11_add9_1|nx45949z24  = CARRY(\u_kirsch|f_t3_0_  & \u_kirsch|u_flow|p11_add8_0i1|nx37973z1 )

	.dataa(\u_kirsch|f_t3_0_ ),
	.datab(\u_kirsch|u_flow|p11_add8_0i1|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52931 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx38970z1  = \u_kirsch|f_t3_1_  & (\u_kirsch|u_flow|p11_add8_0i1|nx38970z1  & \u_kirsch|u_flow|p11_add9_1|nx45949z24  & VCC # !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z24 ) # 
// !\u_kirsch|f_t3_1_  & (\u_kirsch|u_flow|p11_add8_0i1|nx38970z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z24  # !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1  & (\u_kirsch|u_flow|p11_add9_1|nx45949z24  # GND))
// \u_kirsch|u_flow|p11_add9_1|nx45949z21  = CARRY(\u_kirsch|f_t3_1_  & !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z24  # !\u_kirsch|f_t3_1_  & (!\u_kirsch|u_flow|p11_add9_1|nx45949z24  # 
// !\u_kirsch|u_flow|p11_add8_0i1|nx38970z1 ))

	.dataa(\u_kirsch|f_t3_1_ ),
	.datab(\u_kirsch|u_flow|p11_add8_0i1|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z24 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52930 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx39967z1  = (\u_kirsch|f_t3_2_  $ \u_kirsch|u_flow|p11_add8_0i1|nx39967z1  $ !\u_kirsch|u_flow|p11_add9_1|nx45949z21 ) # GND
// \u_kirsch|u_flow|p11_add9_1|nx45949z18  = CARRY(\u_kirsch|f_t3_2_  & (\u_kirsch|u_flow|p11_add8_0i1|nx39967z1  # !\u_kirsch|u_flow|p11_add9_1|nx45949z21 ) # !\u_kirsch|f_t3_2_  & \u_kirsch|u_flow|p11_add8_0i1|nx39967z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx45949z21 )

	.dataa(\u_kirsch|f_t3_2_ ),
	.datab(\u_kirsch|u_flow|p11_add8_0i1|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z21 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52929 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx40964z1  = \u_kirsch|u_flow|p11_add8_0i1|nx40964z1  & (\u_kirsch|f_t3_3_  & \u_kirsch|u_flow|p11_add9_1|nx45949z18  & VCC # !\u_kirsch|f_t3_3_  & !\u_kirsch|u_flow|p11_add9_1|nx45949z18 ) # 
// !\u_kirsch|u_flow|p11_add8_0i1|nx40964z1  & (\u_kirsch|f_t3_3_  & !\u_kirsch|u_flow|p11_add9_1|nx45949z18  # !\u_kirsch|f_t3_3_  & (\u_kirsch|u_flow|p11_add9_1|nx45949z18  # GND))
// \u_kirsch|u_flow|p11_add9_1|nx45949z15  = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx40964z1  & !\u_kirsch|f_t3_3_  & !\u_kirsch|u_flow|p11_add9_1|nx45949z18  # !\u_kirsch|u_flow|p11_add8_0i1|nx40964z1  & (!\u_kirsch|u_flow|p11_add9_1|nx45949z18  # 
// !\u_kirsch|f_t3_3_ ))

	.dataa(\u_kirsch|u_flow|p11_add8_0i1|nx40964z1 ),
	.datab(\u_kirsch|f_t3_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z18 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52928 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx41961z1  = (\u_kirsch|u_flow|p11_add8_0i1|nx41961z1  $ \u_kirsch|f_t3_4_  $ !\u_kirsch|u_flow|p11_add9_1|nx45949z15 ) # GND
// \u_kirsch|u_flow|p11_add9_1|nx45949z12  = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx41961z1  & (\u_kirsch|f_t3_4_  # !\u_kirsch|u_flow|p11_add9_1|nx45949z15 ) # !\u_kirsch|u_flow|p11_add8_0i1|nx41961z1  & \u_kirsch|f_t3_4_  & 
// !\u_kirsch|u_flow|p11_add9_1|nx45949z15 )

	.dataa(\u_kirsch|u_flow|p11_add8_0i1|nx41961z1 ),
	.datab(\u_kirsch|f_t3_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z15 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52927 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx42958z1  = \u_kirsch|u_flow|p11_add8_0i1|nx42958z1  & (\u_kirsch|f_t3_5_  & \u_kirsch|u_flow|p11_add9_1|nx45949z12  & VCC # !\u_kirsch|f_t3_5_  & !\u_kirsch|u_flow|p11_add9_1|nx45949z12 ) # 
// !\u_kirsch|u_flow|p11_add8_0i1|nx42958z1  & (\u_kirsch|f_t3_5_  & !\u_kirsch|u_flow|p11_add9_1|nx45949z12  # !\u_kirsch|f_t3_5_  & (\u_kirsch|u_flow|p11_add9_1|nx45949z12  # GND))
// \u_kirsch|u_flow|p11_add9_1|nx45949z9  = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx42958z1  & !\u_kirsch|f_t3_5_  & !\u_kirsch|u_flow|p11_add9_1|nx45949z12  # !\u_kirsch|u_flow|p11_add8_0i1|nx42958z1  & (!\u_kirsch|u_flow|p11_add9_1|nx45949z12  # 
// !\u_kirsch|f_t3_5_ ))

	.dataa(\u_kirsch|u_flow|p11_add8_0i1|nx42958z1 ),
	.datab(\u_kirsch|f_t3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z12 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52926 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx43955z1  = (\u_kirsch|u_flow|p11_add8_0i1|nx43955z1  $ \u_kirsch|f_t3_6_  $ !\u_kirsch|u_flow|p11_add9_1|nx45949z9 ) # GND
// \u_kirsch|u_flow|p11_add9_1|nx45949z6  = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx43955z1  & (\u_kirsch|f_t3_6_  # !\u_kirsch|u_flow|p11_add9_1|nx45949z9 ) # !\u_kirsch|u_flow|p11_add8_0i1|nx43955z1  & \u_kirsch|f_t3_6_  & 
// !\u_kirsch|u_flow|p11_add9_1|nx45949z9 )

	.dataa(\u_kirsch|u_flow|p11_add8_0i1|nx43955z1 ),
	.datab(\u_kirsch|f_t3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z9 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52925 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx44952z1  = \u_kirsch|f_t3_7_  & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z1  & \u_kirsch|u_flow|p11_add9_1|nx45949z6  & VCC # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z6 ) # 
// !\u_kirsch|f_t3_7_  & (\u_kirsch|u_flow|p11_add8_0i1|nx44952z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z6  # !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx45949z6  # GND))
// \u_kirsch|u_flow|p11_add9_1|nx45949z3  = CARRY(\u_kirsch|f_t3_7_  & !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z6  # !\u_kirsch|f_t3_7_  & (!\u_kirsch|u_flow|p11_add9_1|nx45949z6  # 
// !\u_kirsch|u_flow|p11_add8_0i1|nx44952z1 ))

	.dataa(\u_kirsch|f_t3_7_ ),
	.datab(\u_kirsch|u_flow|p11_add8_0i1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z6 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix45949z52923 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx45949z1  = \u_kirsch|u_flow|p11_add8_0i1|nx23445z1  & (\u_kirsch|u_flow|p11_add9_1|nx45949z3  $ GND) # !\u_kirsch|u_flow|p11_add8_0i1|nx23445z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z3  & VCC
// \u_kirsch|u_flow|p11_add9_1|nx23445z2  = CARRY(\u_kirsch|u_flow|p11_add8_0i1|nx23445z1  & !\u_kirsch|u_flow|p11_add9_1|nx45949z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p11_add8_0i1|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx45949z3 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p11_add9_1|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52923 .lut_mask = 16'hC30C;
defparam \u_kirsch|u_flow|p11_add9_1|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y18_N26
cycloneii_lcell_comb \u_kirsch|u_flow|p11_add9_1|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p11_add9_1|nx23445z1  = \u_kirsch|u_flow|p11_add9_1|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p11_add9_1|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p11_add9_1|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p11_add9_1|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|p11_add9_1|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N21
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_7_ ));

// atom is at LCFF_X54_Y17_N25
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx62359z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__7_ ));

// atom is at LCCOMB_X57_Y18_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52955 (
// Equation(s):
// \u_kirsch|f_b2_7_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_1__7_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b2_next_7_ )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|o_image2_1__7_ ),
	.datac(\u_kirsch|f_b2_next_7_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52955 .lut_mask = 16'hCCF0;
defparam \u_kirsch|ix20836z52955 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N31
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_7_ ));

// atom is at LCFF_X53_Y17_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx63578z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__7_ ));

// atom is at LCCOMB_X56_Y19_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52947 (
// Equation(s):
// \u_kirsch|f_b1_7_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_0__7_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b1_next_7_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image2_0__7_ ),
	.datad(\u_kirsch|f_b1_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52947 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52947 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N13
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_6_ ));

// atom is at LCFF_X54_Y17_N11
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx61362z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__6_ ));

// atom is at LCCOMB_X57_Y17_N6
cycloneii_lcell_comb \u_kirsch|ix20836z52956 (
// Equation(s):
// \u_kirsch|f_b2_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_1__6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b2_next_6_ 

	.dataa(\u_kirsch|f_b2_next_6_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_1__6_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52956 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52956 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N15
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_6_ ));

// atom is at LCFF_X53_Y17_N19
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx64575z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__6_ ));

// atom is at LCCOMB_X57_Y17_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52948 (
// Equation(s):
// \u_kirsch|f_b1_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_0__6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b1_next_6_ 

	.dataa(\u_kirsch|f_b1_next_6_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_0__6_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52948 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52948 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N17
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_5_ ));

// atom is at LCFF_X54_Y17_N21
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx60365z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__5_ ));

// atom is at LCCOMB_X57_Y17_N4
cycloneii_lcell_comb \u_kirsch|ix20836z52957 (
// Equation(s):
// \u_kirsch|f_b2_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_1__5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b2_next_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b2_next_5_ ),
	.datac(\u_kirsch|u_memory|o_image2_1__5_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52957 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52957 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N19
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_5_ ));

// atom is at LCFF_X53_Y17_N5
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx36z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__5_ ));

// atom is at LCCOMB_X57_Y17_N14
cycloneii_lcell_comb \u_kirsch|ix20836z52949 (
// Equation(s):
// \u_kirsch|f_b1_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_0__5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b1_next_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b1_next_5_ ),
	.datac(\u_kirsch|u_memory|o_image2_0__5_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52949 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52949 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N21
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_4_ ));

// atom is at LCFF_X54_Y17_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx59368z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__4_ ));

// atom is at LCCOMB_X57_Y18_N24
cycloneii_lcell_comb \u_kirsch|ix20836z52958 (
// Equation(s):
// \u_kirsch|f_b2_4_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_1__4_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b2_next_4_ 

	.dataa(\u_kirsch|f_b2_next_4_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_1__4_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52958 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52958 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N15
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_4_ ));

// atom is at LCFF_X53_Y17_N7
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx1033z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__4_ ));

// atom is at LCCOMB_X57_Y18_N16
cycloneii_lcell_comb \u_kirsch|ix20836z52950 (
// Equation(s):
// \u_kirsch|f_b1_4_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_0__4_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b1_next_4_ 

	.dataa(\u_kirsch|f_b1_next_4_ ),
	.datab(\u_kirsch|u_memory|o_image2_0__4_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52950 .lut_mask = 16'hCACA;
defparam \u_kirsch|ix20836z52950 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N13
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_3_ ));

// atom is at LCFF_X53_Y19_N23
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx58371z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__3_ ));

// atom is at LCCOMB_X56_Y18_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52959 (
// Equation(s):
// \u_kirsch|f_b2_3_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_1__3_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b2_next_3_ 

	.dataa(\u_kirsch|f_b2_next_3_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_1__3_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52959 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52959 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N9
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_3_ ));

// atom is at LCFF_X53_Y17_N25
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx2030z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__3_ ));

// atom is at LCCOMB_X56_Y18_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52951 (
// Equation(s):
// \u_kirsch|f_b1_3_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_0__3_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b1_next_3_ )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|o_image2_0__3_ ),
	.datac(\u_kirsch|f_b1_next_3_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52951 .lut_mask = 16'hCCF0;
defparam \u_kirsch|ix20836z52951 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y19_N29
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_2_ ));

// atom is at LCFF_X53_Y19_N17
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx57374z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__2_ ));

// atom is at LCCOMB_X56_Y19_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52960 (
// Equation(s):
// \u_kirsch|f_b2_2_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_1__2_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b2_next_2_ )

	.dataa(\u_kirsch|u_memory|o_image2_1__2_ ),
	.datab(vcc),
	.datac(\u_kirsch|f_b2_next_2_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52960 .lut_mask = 16'hAAF0;
defparam \u_kirsch|ix20836z52960 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N9
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_2_ ));

// atom is at LCFF_X53_Y17_N11
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx3027z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__2_ ));

// atom is at LCCOMB_X57_Y19_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52952 (
// Equation(s):
// \u_kirsch|f_b1_2_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_0__2_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b1_next_2_ 

	.dataa(\u_kirsch|f_b1_next_2_ ),
	.datab(\u_kirsch|u_memory|o_image2_0__2_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52952 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix20836z52952 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y19_N31
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_1_ ));

// atom is at LCFF_X53_Y19_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx56377z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__1_ ));

// atom is at LCCOMB_X57_Y19_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52961 (
// Equation(s):
// \u_kirsch|f_b2_1_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_1__1_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b2_next_1_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image2_1__1_ ),
	.datad(\u_kirsch|f_b2_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52961 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52961 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N25
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_1_ ));

// atom is at LCFF_X53_Y17_N29
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx4024z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__1_ ));

// atom is at LCCOMB_X57_Y19_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52953 (
// Equation(s):
// \u_kirsch|f_b1_1_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_0__1_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b1_next_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|f_b1_next_1_ ),
	.datad(\u_kirsch|u_memory|o_image2_0__1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52953 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix20836z52953 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N27
cycloneii_lcell_ff \u_kirsch|reg_f_b1_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b1_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_1__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b1_next_0_ ));

// atom is at LCFF_X53_Y17_N23
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_0__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx5021z1 ),
	.sdata(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1_ ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_0__0_ ));

// atom is at LCCOMB_X57_Y19_N26
cycloneii_lcell_comb \u_kirsch|ix20836z52954 (
// Equation(s):
// \u_kirsch|f_b1_0_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_0__0_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b1_next_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|f_b1_next_0_ ),
	.datad(\u_kirsch|u_memory|o_image2_0__0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52954 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix20836z52954 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y19_N25
cycloneii_lcell_ff \u_kirsch|reg_f_b2_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b2_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_2__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b2_next_0_ ));

// atom is at LCFF_X53_Y19_N21
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_1__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx55380z1 ),
	.sdata(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|b_1__dup_352 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_1__0_ ));

// atom is at LCCOMB_X57_Y19_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52962 (
// Equation(s):
// \u_kirsch|f_b2_0_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_1__0_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b2_next_0_ 

	.dataa(\u_kirsch|f_b2_next_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_1__0_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52962 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52962 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52931 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx37973z1  = \u_kirsch|f_b2_0_  & (\u_kirsch|f_b1_0_  $ VCC) # !\u_kirsch|f_b2_0_  & \u_kirsch|f_b1_0_  & VCC
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z22  = CARRY(\u_kirsch|f_b2_0_  & \u_kirsch|f_b1_0_ )

	.dataa(\u_kirsch|f_b2_0_ ),
	.datab(\u_kirsch|f_b1_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52931 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52930 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx38970z1  = \u_kirsch|f_b2_1_  & (\u_kirsch|f_b1_1_  & \u_kirsch|u_flow|p12_add8_0i2|nx44952z22  & VCC # !\u_kirsch|f_b1_1_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z22 ) # !\u_kirsch|f_b2_1_  & (\u_kirsch|f_b1_1_  & 
// !\u_kirsch|u_flow|p12_add8_0i2|nx44952z22  # !\u_kirsch|f_b1_1_  & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z22  # GND))
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z19  = CARRY(\u_kirsch|f_b2_1_  & !\u_kirsch|f_b1_1_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z22  # !\u_kirsch|f_b2_1_  & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z22  # !\u_kirsch|f_b1_1_ ))

	.dataa(\u_kirsch|f_b2_1_ ),
	.datab(\u_kirsch|f_b1_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z22 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52929 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx39967z1  = (\u_kirsch|f_b2_2_  $ \u_kirsch|f_b1_2_  $ !\u_kirsch|u_flow|p12_add8_0i2|nx44952z19 ) # GND
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z16  = CARRY(\u_kirsch|f_b2_2_  & (\u_kirsch|f_b1_2_  # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z19 ) # !\u_kirsch|f_b2_2_  & \u_kirsch|f_b1_2_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z19 )

	.dataa(\u_kirsch|f_b2_2_ ),
	.datab(\u_kirsch|f_b1_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z19 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52928 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx40964z1  = \u_kirsch|f_b1_3_  & (\u_kirsch|f_b2_3_  & \u_kirsch|u_flow|p12_add8_0i2|nx44952z16  & VCC # !\u_kirsch|f_b2_3_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z16 ) # !\u_kirsch|f_b1_3_  & (\u_kirsch|f_b2_3_  & 
// !\u_kirsch|u_flow|p12_add8_0i2|nx44952z16  # !\u_kirsch|f_b2_3_  & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z16  # GND))
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z13  = CARRY(\u_kirsch|f_b1_3_  & !\u_kirsch|f_b2_3_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z16  # !\u_kirsch|f_b1_3_  & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z16  # !\u_kirsch|f_b2_3_ ))

	.dataa(\u_kirsch|f_b1_3_ ),
	.datab(\u_kirsch|f_b2_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z16 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52927 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx41961z1  = (\u_kirsch|f_b1_4_  $ \u_kirsch|f_b2_4_  $ !\u_kirsch|u_flow|p12_add8_0i2|nx44952z13 ) # GND
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z10  = CARRY(\u_kirsch|f_b1_4_  & (\u_kirsch|f_b2_4_  # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z13 ) # !\u_kirsch|f_b1_4_  & \u_kirsch|f_b2_4_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z13 )

	.dataa(\u_kirsch|f_b1_4_ ),
	.datab(\u_kirsch|f_b2_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z13 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52926 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx42958z1  = \u_kirsch|f_b1_5_  & (\u_kirsch|f_b2_5_  & \u_kirsch|u_flow|p12_add8_0i2|nx44952z10  & VCC # !\u_kirsch|f_b2_5_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z10 ) # !\u_kirsch|f_b1_5_  & (\u_kirsch|f_b2_5_  & 
// !\u_kirsch|u_flow|p12_add8_0i2|nx44952z10  # !\u_kirsch|f_b2_5_  & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z10  # GND))
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z7  = CARRY(\u_kirsch|f_b1_5_  & !\u_kirsch|f_b2_5_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z10  # !\u_kirsch|f_b1_5_  & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z10  # !\u_kirsch|f_b2_5_ ))

	.dataa(\u_kirsch|f_b1_5_ ),
	.datab(\u_kirsch|f_b2_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z10 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52925 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx43955z1  = (\u_kirsch|f_b2_6_  $ \u_kirsch|f_b1_6_  $ !\u_kirsch|u_flow|p12_add8_0i2|nx44952z7 ) # GND
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z4  = CARRY(\u_kirsch|f_b2_6_  & (\u_kirsch|f_b1_6_  # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z7 ) # !\u_kirsch|f_b2_6_  & \u_kirsch|f_b1_6_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z7 )

	.dataa(\u_kirsch|f_b2_6_ ),
	.datab(\u_kirsch|f_b1_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z7 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix44952z52923 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx44952z1  = \u_kirsch|f_b1_7_  & (\u_kirsch|f_b2_7_  & \u_kirsch|u_flow|p12_add8_0i2|nx44952z4  & VCC # !\u_kirsch|f_b2_7_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z4 ) # !\u_kirsch|f_b1_7_  & (\u_kirsch|f_b2_7_  & 
// !\u_kirsch|u_flow|p12_add8_0i2|nx44952z4  # !\u_kirsch|f_b2_7_  & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z4  # GND))
// \u_kirsch|u_flow|p12_add8_0i2|nx23445z2  = CARRY(\u_kirsch|f_b1_7_  & !\u_kirsch|f_b2_7_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z4  # !\u_kirsch|f_b1_7_  & (!\u_kirsch|u_flow|p12_add8_0i2|nx44952z4  # !\u_kirsch|f_b2_7_ ))

	.dataa(\u_kirsch|f_b1_7_ ),
	.datab(\u_kirsch|f_b2_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx44952z4 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p12_add8_0i2|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52923 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add8_0i2|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p12_add8_0i2|nx23445z1  = !\u_kirsch|u_flow|p12_add8_0i2|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add8_0i2|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p12_add8_0i2|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add8_0i2|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|p12_add8_0i2|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N1
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_7_ ));

// atom is at LCFF_X54_Y19_N25
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__7_ ));

// atom is at LCCOMB_X57_Y18_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52963 (
// Equation(s):
// \u_kirsch|f_b3_7_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_2__7_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b3_next_7_ 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(vcc),
	.datac(\u_kirsch|f_b3_next_7_ ),
	.datad(\u_kirsch|u_memory|o_image2_2__7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52963 .lut_mask = 16'hFA50;
defparam \u_kirsch|ix20836z52963 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N5
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_6_ ));

// atom is at LCFF_X54_Y19_N31
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__6_ ));

// atom is at LCCOMB_X56_Y17_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52964 (
// Equation(s):
// \u_kirsch|f_b3_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_2__6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b3_next_6_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b3_next_6_ ),
	.datac(\u_kirsch|u_memory|o_image2_2__6_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52964 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52964 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N9
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_5_ ));

// atom is at LCFF_X54_Y19_N21
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__5_ ));

// atom is at LCCOMB_X57_Y17_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52965 (
// Equation(s):
// \u_kirsch|f_b3_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_2__5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b3_next_5_ 

	.dataa(\u_kirsch|f_b3_next_5_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_2__5_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52965 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix20836z52965 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N11
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_4_ ));

// atom is at LCFF_X54_Y19_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__4_ ));

// atom is at LCCOMB_X57_Y18_N28
cycloneii_lcell_comb \u_kirsch|ix20836z52966 (
// Equation(s):
// \u_kirsch|f_b3_4_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_2__4_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b3_next_4_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|u_memory|o_image2_2__4_ ),
	.datac(\u_kirsch|f_b3_next_4_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52966 .lut_mask = 16'hD8D8;
defparam \u_kirsch|ix20836z52966 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N21
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_3_ ));

// atom is at LCFF_X54_Y19_N19
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__3_ ));

// atom is at LCCOMB_X56_Y18_N6
cycloneii_lcell_comb \u_kirsch|ix20836z52967 (
// Equation(s):
// \u_kirsch|f_b3_3_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_2__3_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b3_next_3_ )

	.dataa(\u_kirsch|u_memory|o_image2_2__3_ ),
	.datab(\u_kirsch|f_b3_next_3_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52967 .lut_mask = 16'hAACC;
defparam \u_kirsch|ix20836z52967 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N27
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_2_ ));

// atom is at LCFF_X54_Y19_N5
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__2_ ));

// atom is at LCCOMB_X58_Y19_N26
cycloneii_lcell_comb \u_kirsch|ix20836z52968 (
// Equation(s):
// \u_kirsch|f_b3_2_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_2__2_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b3_next_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|o_image2_2__2_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|f_b3_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52968 .lut_mask = 16'hCFC0;
defparam \u_kirsch|ix20836z52968 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N29
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_1_ ));

// atom is at LCFF_X54_Y19_N23
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__1_ ));

// atom is at LCCOMB_X58_Y19_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52969 (
// Equation(s):
// \u_kirsch|f_b3_1_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image2_2__1_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_b3_next_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b3_next_1_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|u_memory|o_image2_2__1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52969 .lut_mask = 16'hFC0C;
defparam \u_kirsch|ix20836z52969 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N23
cycloneii_lcell_ff \u_kirsch|reg_f_b3_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_b3_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image1_2__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_b3_next_0_ ));

// atom is at LCFF_X54_Y19_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer2_2__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image2_2__0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|mem_data_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|u_memory|nx57224z1 ),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image2_2__0_ ));

// atom is at LCCOMB_X58_Y19_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52970 (
// Equation(s):
// \u_kirsch|f_b3_0_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image2_2__0_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_b3_next_0_ )

	.dataa(\u_kirsch|u_memory|o_image2_2__0_ ),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52970 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix20836z52970 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N0
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52932 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx37973z1  = \u_kirsch|u_flow|p12_add8_0i2|nx37973z1  & (\u_kirsch|f_b3_0_  $ VCC) # !\u_kirsch|u_flow|p12_add8_0i2|nx37973z1  & \u_kirsch|f_b3_0_  & VCC
// \u_kirsch|u_flow|p12_add9_2|nx45949z24  = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx37973z1  & \u_kirsch|f_b3_0_ )

	.dataa(\u_kirsch|u_flow|p12_add8_0i2|nx37973z1 ),
	.datab(\u_kirsch|f_b3_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52931 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx38970z1  = \u_kirsch|f_b3_1_  & (\u_kirsch|u_flow|p12_add8_0i2|nx38970z1  & \u_kirsch|u_flow|p12_add9_2|nx45949z24  & VCC # !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z24 ) # 
// !\u_kirsch|f_b3_1_  & (\u_kirsch|u_flow|p12_add8_0i2|nx38970z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z24  # !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1  & (\u_kirsch|u_flow|p12_add9_2|nx45949z24  # GND))
// \u_kirsch|u_flow|p12_add9_2|nx45949z21  = CARRY(\u_kirsch|f_b3_1_  & !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z24  # !\u_kirsch|f_b3_1_  & (!\u_kirsch|u_flow|p12_add9_2|nx45949z24  # 
// !\u_kirsch|u_flow|p12_add8_0i2|nx38970z1 ))

	.dataa(\u_kirsch|f_b3_1_ ),
	.datab(\u_kirsch|u_flow|p12_add8_0i2|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z24 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52930 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx39967z1  = (\u_kirsch|f_b3_2_  $ \u_kirsch|u_flow|p12_add8_0i2|nx39967z1  $ !\u_kirsch|u_flow|p12_add9_2|nx45949z21 ) # GND
// \u_kirsch|u_flow|p12_add9_2|nx45949z18  = CARRY(\u_kirsch|f_b3_2_  & (\u_kirsch|u_flow|p12_add8_0i2|nx39967z1  # !\u_kirsch|u_flow|p12_add9_2|nx45949z21 ) # !\u_kirsch|f_b3_2_  & \u_kirsch|u_flow|p12_add8_0i2|nx39967z1  & 
// !\u_kirsch|u_flow|p12_add9_2|nx45949z21 )

	.dataa(\u_kirsch|f_b3_2_ ),
	.datab(\u_kirsch|u_flow|p12_add8_0i2|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z21 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52929 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx40964z1  = \u_kirsch|u_flow|p12_add8_0i2|nx40964z1  & (\u_kirsch|f_b3_3_  & \u_kirsch|u_flow|p12_add9_2|nx45949z18  & VCC # !\u_kirsch|f_b3_3_  & !\u_kirsch|u_flow|p12_add9_2|nx45949z18 ) # 
// !\u_kirsch|u_flow|p12_add8_0i2|nx40964z1  & (\u_kirsch|f_b3_3_  & !\u_kirsch|u_flow|p12_add9_2|nx45949z18  # !\u_kirsch|f_b3_3_  & (\u_kirsch|u_flow|p12_add9_2|nx45949z18  # GND))
// \u_kirsch|u_flow|p12_add9_2|nx45949z15  = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx40964z1  & !\u_kirsch|f_b3_3_  & !\u_kirsch|u_flow|p12_add9_2|nx45949z18  # !\u_kirsch|u_flow|p12_add8_0i2|nx40964z1  & (!\u_kirsch|u_flow|p12_add9_2|nx45949z18  # 
// !\u_kirsch|f_b3_3_ ))

	.dataa(\u_kirsch|u_flow|p12_add8_0i2|nx40964z1 ),
	.datab(\u_kirsch|f_b3_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z18 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52928 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx41961z1  = (\u_kirsch|u_flow|p12_add8_0i2|nx41961z1  $ \u_kirsch|f_b3_4_  $ !\u_kirsch|u_flow|p12_add9_2|nx45949z15 ) # GND
// \u_kirsch|u_flow|p12_add9_2|nx45949z12  = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx41961z1  & (\u_kirsch|f_b3_4_  # !\u_kirsch|u_flow|p12_add9_2|nx45949z15 ) # !\u_kirsch|u_flow|p12_add8_0i2|nx41961z1  & \u_kirsch|f_b3_4_  & 
// !\u_kirsch|u_flow|p12_add9_2|nx45949z15 )

	.dataa(\u_kirsch|u_flow|p12_add8_0i2|nx41961z1 ),
	.datab(\u_kirsch|f_b3_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z15 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52927 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx42958z1  = \u_kirsch|u_flow|p12_add8_0i2|nx42958z1  & (\u_kirsch|f_b3_5_  & \u_kirsch|u_flow|p12_add9_2|nx45949z12  & VCC # !\u_kirsch|f_b3_5_  & !\u_kirsch|u_flow|p12_add9_2|nx45949z12 ) # 
// !\u_kirsch|u_flow|p12_add8_0i2|nx42958z1  & (\u_kirsch|f_b3_5_  & !\u_kirsch|u_flow|p12_add9_2|nx45949z12  # !\u_kirsch|f_b3_5_  & (\u_kirsch|u_flow|p12_add9_2|nx45949z12  # GND))
// \u_kirsch|u_flow|p12_add9_2|nx45949z9  = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx42958z1  & !\u_kirsch|f_b3_5_  & !\u_kirsch|u_flow|p12_add9_2|nx45949z12  # !\u_kirsch|u_flow|p12_add8_0i2|nx42958z1  & (!\u_kirsch|u_flow|p12_add9_2|nx45949z12  # 
// !\u_kirsch|f_b3_5_ ))

	.dataa(\u_kirsch|u_flow|p12_add8_0i2|nx42958z1 ),
	.datab(\u_kirsch|f_b3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z12 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52926 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx43955z1  = (\u_kirsch|u_flow|p12_add8_0i2|nx43955z1  $ \u_kirsch|f_b3_6_  $ !\u_kirsch|u_flow|p12_add9_2|nx45949z9 ) # GND
// \u_kirsch|u_flow|p12_add9_2|nx45949z6  = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx43955z1  & (\u_kirsch|f_b3_6_  # !\u_kirsch|u_flow|p12_add9_2|nx45949z9 ) # !\u_kirsch|u_flow|p12_add8_0i2|nx43955z1  & \u_kirsch|f_b3_6_  & 
// !\u_kirsch|u_flow|p12_add9_2|nx45949z9 )

	.dataa(\u_kirsch|u_flow|p12_add8_0i2|nx43955z1 ),
	.datab(\u_kirsch|f_b3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z9 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52925 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx44952z1  = \u_kirsch|f_b3_7_  & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z1  & \u_kirsch|u_flow|p12_add9_2|nx45949z6  & VCC # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z6 ) # 
// !\u_kirsch|f_b3_7_  & (\u_kirsch|u_flow|p12_add8_0i2|nx44952z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z6  # !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1  & (\u_kirsch|u_flow|p12_add9_2|nx45949z6  # GND))
// \u_kirsch|u_flow|p12_add9_2|nx45949z3  = CARRY(\u_kirsch|f_b3_7_  & !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z6  # !\u_kirsch|f_b3_7_  & (!\u_kirsch|u_flow|p12_add9_2|nx45949z6  # 
// !\u_kirsch|u_flow|p12_add8_0i2|nx44952z1 ))

	.dataa(\u_kirsch|f_b3_7_ ),
	.datab(\u_kirsch|u_flow|p12_add8_0i2|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z6 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix45949z52923 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx45949z1  = \u_kirsch|u_flow|p12_add8_0i2|nx23445z1  & (\u_kirsch|u_flow|p12_add9_2|nx45949z3  $ GND) # !\u_kirsch|u_flow|p12_add8_0i2|nx23445z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z3  & VCC
// \u_kirsch|u_flow|p12_add9_2|nx23445z2  = CARRY(\u_kirsch|u_flow|p12_add8_0i2|nx23445z1  & !\u_kirsch|u_flow|p12_add9_2|nx45949z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p12_add8_0i2|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx45949z3 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p12_add9_2|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52923 .lut_mask = 16'hC30C;
defparam \u_kirsch|u_flow|p12_add9_2|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p12_add9_2|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p12_add9_2|nx23445z1  = \u_kirsch|u_flow|p12_add9_2|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p12_add9_2|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p12_add9_2|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p12_add9_2|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|p12_add9_2|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N0
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52934 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx37973z1 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx37973z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52934 .lut_mask = 16'h00AA;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52933 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx37973z1  = \u_kirsch|u_flow|p12_add9_2|nx37973z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29  # GND) # !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & 
// !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29 ) # !\u_kirsch|u_flow|p12_add9_2|nx37973z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29  # !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & 
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z29  & VCC)
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29 ) # !\u_kirsch|u_flow|p12_add9_2|nx37973z1  & 
// \u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx37973z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z29 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z27 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52933 .lut_mask = 16'h968E;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52932 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1  = (\u_kirsch|u_flow|p12_add9_2|nx39967z1  $ \u_kirsch|u_flow|p11_add9_1|nx38970z1  $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z27 ) # GND
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1  & \u_kirsch|u_flow|p11_add9_1|nx38970z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z27  # !\u_kirsch|u_flow|p12_add9_2|nx39967z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx38970z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z27 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z27 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52932 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52931 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1  = \u_kirsch|u_flow|p12_add9_2|nx40964z1  & (\u_kirsch|u_flow|p11_add9_1|nx39967z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24  # !\u_kirsch|u_flow|p11_add9_1|nx39967z1  & 
// (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24  # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & (\u_kirsch|u_flow|p11_add9_1|nx39967z1  & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z24  & VCC # !\u_kirsch|u_flow|p11_add9_1|nx39967z1  & 
// !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24 )
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx40964z1  & (!\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24  # !\u_kirsch|u_flow|p11_add9_1|nx39967z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx39967z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx40964z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z24 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z21 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52931 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52930 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1  = (\u_kirsch|u_flow|p12_add9_2|nx41961z1  $ \u_kirsch|u_flow|p11_add9_1|nx40964z1  $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z21 ) # GND
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx41961z1  & \u_kirsch|u_flow|p11_add9_1|nx40964z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z21  # !\u_kirsch|u_flow|p12_add9_2|nx41961z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx40964z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z21 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z21 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52930 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52929 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1  = \u_kirsch|u_flow|p12_add9_2|nx42958z1  & (\u_kirsch|u_flow|p11_add9_1|nx41961z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18  # !\u_kirsch|u_flow|p11_add9_1|nx41961z1  & 
// (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18  # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & (\u_kirsch|u_flow|p11_add9_1|nx41961z1  & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z18  & VCC # !\u_kirsch|u_flow|p11_add9_1|nx41961z1  & 
// !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18 )
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx42958z1  & (!\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18  # !\u_kirsch|u_flow|p11_add9_1|nx41961z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx41961z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z18 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z15 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52929 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52928 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx42958z1  = (\u_kirsch|u_flow|p12_add9_2|nx43955z1  $ \u_kirsch|u_flow|p11_add9_1|nx42958z1  $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z15 ) # GND
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx43955z1  & \u_kirsch|u_flow|p11_add9_1|nx42958z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z15  # !\u_kirsch|u_flow|p12_add9_2|nx43955z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx42958z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z15 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx43955z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z15 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52928 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52927 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1  = \u_kirsch|u_flow|p12_add9_2|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx43955z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12  # !\u_kirsch|u_flow|p11_add9_1|nx43955z1  & 
// (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12  # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx43955z1  & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z12  & VCC # !\u_kirsch|u_flow|p11_add9_1|nx43955z1  & 
// !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12 )
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1  & (!\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12  # !\u_kirsch|u_flow|p11_add9_1|nx43955z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx43955z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z12 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z9 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52927 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52926 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx44952z1  = (\u_kirsch|u_flow|p12_add9_2|nx45949z1  $ \u_kirsch|u_flow|p11_add9_1|nx44952z1  $ \u_kirsch|u_flow|p21_sub11_4i4|nx46946z9 ) # GND
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx45949z1  & \u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z9  # !\u_kirsch|u_flow|p12_add9_2|nx45949z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx44952z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z9 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z9 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52926 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52925 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1  = \u_kirsch|u_flow|p11_add9_1|nx45949z1  & (\u_kirsch|u_flow|p12_add9_2|nx23445z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6  # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & \u_kirsch|u_flow|p21_sub11_4i4|nx46946z6  
// & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx45949z1  & (\u_kirsch|u_flow|p12_add9_2|nx23445z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6  # GND) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6 )
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z3  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx45949z1  & \u_kirsch|u_flow|p12_add9_2|nx23445z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6  # !\u_kirsch|u_flow|p11_add9_1|nx45949z1  & 
// (\u_kirsch|u_flow|p12_add9_2|nx23445z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6 ))

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z6 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52925 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52923 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx46946z1  = \u_kirsch|u_flow|p11_add9_1|nx23445z1  & (GND # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3 ) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3  $ GND)
// \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx23445z1  # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z3 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p21_sub11_4i4|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52923 .lut_mask = 16'h3CCF;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix46946z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52933 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx37973z1  = \u_kirsch|u_flow|p11_add9_1|nx37973z1  & (GND # !\u_kirsch|u_flow|p12_add9_2|nx37973z1 ) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1  & (\u_kirsch|u_flow|p12_add9_2|nx37973z1  $ GND)
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx37973z1  # !\u_kirsch|u_flow|p12_add9_2|nx37973z1 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx37973z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52933 .lut_mask = 16'h66BB;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52932 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1  = \u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28  # !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & 
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z28  & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28  # GND) # !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & 
// !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28 )
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx38970z1  & \u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28  # !\u_kirsch|u_flow|p11_add9_1|nx38970z1  & 
// (\u_kirsch|u_flow|p12_add9_2|nx38970z1  # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28 ))

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx38970z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z28 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z25 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52932 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52931 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1  = (\u_kirsch|u_flow|p12_add9_2|nx39967z1  $ \u_kirsch|u_flow|p11_add9_1|nx39967z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z25 ) # GND
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1  & \u_kirsch|u_flow|p11_add9_1|nx39967z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z25  # !\u_kirsch|u_flow|p12_add9_2|nx39967z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx39967z1  # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z25 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z25 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52931 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52930 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx40964z1  = \u_kirsch|u_flow|p12_add9_2|nx40964z1  & (\u_kirsch|u_flow|p11_add9_1|nx40964z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22  # !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & 
// (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22  # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & (\u_kirsch|u_flow|p11_add9_1|nx40964z1  & \u_kirsch|u_flow|p21_sub10_4i3|nx46946z22  & VCC # !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & 
// !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22 )
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx40964z1  & (!\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22  # !\u_kirsch|u_flow|p11_add9_1|nx40964z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx40964z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z22 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52930 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52929 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx41961z1  = (\u_kirsch|u_flow|p12_add9_2|nx41961z1  $ \u_kirsch|u_flow|p11_add9_1|nx41961z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z19 ) # GND
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx41961z1  & \u_kirsch|u_flow|p11_add9_1|nx41961z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z19  # !\u_kirsch|u_flow|p12_add9_2|nx41961z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx41961z1  # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z19 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z19 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52929 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52928 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx42958z1  = \u_kirsch|u_flow|p11_add9_1|nx42958z1  & (\u_kirsch|u_flow|p12_add9_2|nx42958z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16  # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & 
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z16  & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1  & (\u_kirsch|u_flow|p12_add9_2|nx42958z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16  # GND) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & 
// !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16 )
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx42958z1  & \u_kirsch|u_flow|p12_add9_2|nx42958z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16  # !\u_kirsch|u_flow|p11_add9_1|nx42958z1  & 
// (\u_kirsch|u_flow|p12_add9_2|nx42958z1  # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16 ))

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z16 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52928 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52927 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx43955z1  = (\u_kirsch|u_flow|p11_add9_1|nx43955z1  $ \u_kirsch|u_flow|p12_add9_2|nx43955z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z13 ) # GND
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx43955z1  & (!\u_kirsch|u_flow|p21_sub10_4i3|nx46946z13  # !\u_kirsch|u_flow|p12_add9_2|nx43955z1 ) # !\u_kirsch|u_flow|p11_add9_1|nx43955z1  & 
// !\u_kirsch|u_flow|p12_add9_2|nx43955z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z13 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx43955z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z13 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52927 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52926 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1  = \u_kirsch|u_flow|p12_add9_2|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10  # !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & 
// (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10  # GND)) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx44952z1  & \u_kirsch|u_flow|p21_sub10_4i3|nx46946z10  & VCC # !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & 
// !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10 )
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1  & (!\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10  # !\u_kirsch|u_flow|p11_add9_1|nx44952z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z10 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52926 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52925 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx45949z1  = (\u_kirsch|u_flow|p12_add9_2|nx45949z1  $ \u_kirsch|u_flow|p11_add9_1|nx45949z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z7 ) # GND
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx45949z1  & \u_kirsch|u_flow|p11_add9_1|nx45949z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z7  # !\u_kirsch|u_flow|p12_add9_2|nx45949z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx45949z1  # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z7 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z7 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52925 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52923 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1  = \u_kirsch|u_flow|p11_add9_1|nx23445z1  & (\u_kirsch|u_flow|p12_add9_2|nx23445z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4  # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & \u_kirsch|u_flow|p21_sub10_4i3|nx46946z4  
// & VCC) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & (\u_kirsch|u_flow|p12_add9_2|nx23445z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4  # GND) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4 )
// \u_kirsch|u_flow|p21_sub10_4i3|nx23445z2  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx23445z1  & \u_kirsch|u_flow|p12_add9_2|nx23445z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4  # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & 
// (\u_kirsch|u_flow|p12_add9_2|nx23445z1  # !\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4 ))

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx23445z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z4 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p21_sub10_4i3|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52923 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix46946z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub10_4i3|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  = !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub10_4i3|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|p21_sub10_4i3|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52935 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx37973z1  = \u_kirsch|u_flow|p12_add9_2|nx37973z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx38970z1  $ VCC) # !\u_kirsch|u_flow|p12_add9_2|nx37973z1  & \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1  & VCC
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z32  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1  & \u_kirsch|u_flow|p21_sub10_4i3|nx38970z1 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx37973z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z32 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52935 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52934 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx38970z1  = \u_kirsch|u_flow|p21_sub10_4i3|nx39967z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1  & \u_kirsch|u_flow|p21_add12_4i1|nx63795z32  & VCC # !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1  & 
// !\u_kirsch|u_flow|p21_add12_4i1|nx63795z32 ) # !\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z32  # !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1  & 
// (\u_kirsch|u_flow|p21_add12_4i1|nx63795z32  # GND))
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z29  = CARRY(\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1  & !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z32  # !\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1  & 
// (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z32  # !\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1 ))

	.dataa(\u_kirsch|u_flow|p21_sub10_4i3|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p21_sub11_4i4|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z32 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z29 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52934 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52933 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx39967z1  = (\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1  $ \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1  $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z29 ) # GND
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z26  = CARRY(\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx38970z1  # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z29 ) # !\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1  & 
// \u_kirsch|u_flow|p21_sub11_4i4|nx38970z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z29 )

	.dataa(\u_kirsch|u_flow|p21_sub10_4i3|nx40964z1 ),
	.datab(\u_kirsch|u_flow|p21_sub11_4i4|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z29 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z26 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52933 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52932 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx40964z1  = \u_kirsch|u_flow|p21_sub11_4i4|nx39967z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1  & \u_kirsch|u_flow|p21_add12_4i1|nx63795z26  & VCC # !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1  & 
// !\u_kirsch|u_flow|p21_add12_4i1|nx63795z26 ) # !\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z26  # !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1  & 
// (\u_kirsch|u_flow|p21_add12_4i1|nx63795z26  # GND))
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z23  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z26  # !\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1  & 
// (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z26  # !\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1 ))

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z26 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z23 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52932 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52931 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx41961z1  = (\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1  $ \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1  $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z23 ) # GND
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z20  = CARRY(\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1  & (\u_kirsch|u_flow|p21_sub11_4i4|nx40964z1  # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z23 ) # !\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1  & 
// \u_kirsch|u_flow|p21_sub11_4i4|nx40964z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z23 )

	.dataa(\u_kirsch|u_flow|p21_sub10_4i3|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p21_sub11_4i4|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z23 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z20 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52931 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52930 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx42958z1  = \u_kirsch|u_flow|p21_sub11_4i4|nx41961z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1  & \u_kirsch|u_flow|p21_add12_4i1|nx63795z20  & VCC # !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1  & 
// !\u_kirsch|u_flow|p21_add12_4i1|nx63795z20 ) # !\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z20  # !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1  & 
// (\u_kirsch|u_flow|p21_add12_4i1|nx63795z20  # GND))
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z17  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z20  # !\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1  & 
// (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z20  # !\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1 ))

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z20 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z17 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52929 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx43955z1  = (\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1  $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z17 ) # GND
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z14  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx44952z1  # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z17 ) # !\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1  & 
// \u_kirsch|u_flow|p21_sub10_4i3|nx44952z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z17 )

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z17 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z14 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52928 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx44952z1  = \u_kirsch|u_flow|p21_sub11_4i4|nx43955z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1  & \u_kirsch|u_flow|p21_add12_4i1|nx63795z14  & VCC # !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1  & 
// !\u_kirsch|u_flow|p21_add12_4i1|nx63795z14 ) # !\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z14  # !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1  & 
// (\u_kirsch|u_flow|p21_add12_4i1|nx63795z14  # GND))
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z11  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1  & !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z14  # !\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1  & 
// (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z14  # !\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1 ))

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx43955z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z14 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z11 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52927 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx45949z1  = (\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1  $ !\u_kirsch|u_flow|p21_add12_4i1|nx63795z11 ) # GND
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z8  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx46946z1  # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z11 ) # !\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1  & 
// \u_kirsch|u_flow|p21_sub10_4i3|nx46946z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z11 )

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z11 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z8 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N26
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52926 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx46946z1  = \u_kirsch|u_flow|p21_sub11_4i4|nx45949z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8  # !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  & 
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z8  & VCC) # !\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1  & (\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  & (\u_kirsch|u_flow|p21_add12_4i1|nx63795z8  # GND) # !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  & 
// !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8 )
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z6  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1  & \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8  # !\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1  & 
// (\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  # !\u_kirsch|u_flow|p21_add12_4i1|nx63795z8 ))

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z8 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52926 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N28
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52925 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx62798z1  = (\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  $ \u_kirsch|u_flow|p21_add12_4i1|nx63795z6 ) # GND
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z4  = CARRY(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1  & (!\u_kirsch|u_flow|p21_add12_4i1|nx63795z6  # !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1 ) # !\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1  & 
// !\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  & !\u_kirsch|u_flow|p21_add12_4i1|nx63795z6 )

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx46946z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z6 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx62798z1 ),
	.cout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52925 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52934 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52934 .lut_mask = 16'h00CC;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52933 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx37973z1  = \u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p11_add9_1|nx37973z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1  & 
// !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29 ) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p11_add9_1|nx37973z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29  # !\u_kirsch|u_flow|p11_add9_1|nx37973z1  & 
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z29  & VCC)
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p11_add9_1|nx37973z1  # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29 ) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1  & 
// \u_kirsch|u_flow|p11_add9_1|nx37973z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx38970z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z29 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z27 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52933 .lut_mask = 16'h968E;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52932 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1  = (\u_kirsch|u_flow|p11_add9_1|nx39967z1  $ \u_kirsch|u_flow|p12_add9_2|nx38970z1  $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z27 ) # GND
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx39967z1  & \u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z27  # !\u_kirsch|u_flow|p11_add9_1|nx39967z1  & 
// (\u_kirsch|u_flow|p12_add9_2|nx38970z1  # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z27 ))

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z27 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52932 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52931 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx39967z1  = \u_kirsch|u_flow|p12_add9_2|nx39967z1  & (\u_kirsch|u_flow|p11_add9_1|nx40964z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24  # !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & 
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z24  & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx39967z1  & (\u_kirsch|u_flow|p11_add9_1|nx40964z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & 
// !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24 )
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1  & \u_kirsch|u_flow|p11_add9_1|nx40964z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24  # !\u_kirsch|u_flow|p12_add9_2|nx39967z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx40964z1  # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z24 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z21 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52931 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52930 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1  = (\u_kirsch|u_flow|p12_add9_2|nx40964z1  $ \u_kirsch|u_flow|p11_add9_1|nx41961z1  $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z21 ) # GND
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx40964z1  & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z21  # !\u_kirsch|u_flow|p11_add9_1|nx41961z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx41961z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z21 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx40964z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z21 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52930 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52929 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1  = \u_kirsch|u_flow|p11_add9_1|nx42958z1  & (\u_kirsch|u_flow|p12_add9_2|nx41961z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18  # !\u_kirsch|u_flow|p12_add9_2|nx41961z1  & 
// (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18  # GND)) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1  & (\u_kirsch|u_flow|p12_add9_2|nx41961z1  & \u_kirsch|u_flow|p22_sub11_4i6|nx46946z18  & VCC # !\u_kirsch|u_flow|p12_add9_2|nx41961z1  & 
// !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18 )
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx42958z1  & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18  # !\u_kirsch|u_flow|p12_add9_2|nx41961z1 ) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1  & 
// !\u_kirsch|u_flow|p12_add9_2|nx41961z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z18 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z15 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52929 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52928 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx42958z1  = (\u_kirsch|u_flow|p12_add9_2|nx42958z1  $ \u_kirsch|u_flow|p11_add9_1|nx43955z1  $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z15 ) # GND
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx42958z1  & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z15  # !\u_kirsch|u_flow|p11_add9_1|nx43955z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx43955z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z15 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z15 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52928 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52927 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx43955z1  = \u_kirsch|u_flow|p12_add9_2|nx43955z1  & (\u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12  # !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & 
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z12  & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx43955z1  & (\u_kirsch|u_flow|p11_add9_1|nx44952z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & 
// !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12 )
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx43955z1  & \u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12  # !\u_kirsch|u_flow|p12_add9_2|nx43955z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx44952z1  # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx43955z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z12 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z9 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52927 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52926 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx44952z1  = (\u_kirsch|u_flow|p12_add9_2|nx44952z1  $ \u_kirsch|u_flow|p11_add9_1|nx45949z1  $ \u_kirsch|u_flow|p22_sub11_4i6|nx46946z9 ) # GND
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1  & (!\u_kirsch|u_flow|p22_sub11_4i6|nx46946z9  # !\u_kirsch|u_flow|p11_add9_1|nx45949z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx45949z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z9 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z9 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52926 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N26
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52925 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1  = \u_kirsch|u_flow|p12_add9_2|nx45949z1  & (\u_kirsch|u_flow|p11_add9_1|nx23445z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6  # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & \u_kirsch|u_flow|p22_sub11_4i6|nx46946z6  
// & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx45949z1  & (\u_kirsch|u_flow|p11_add9_1|nx23445z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6 )
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z3  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx45949z1  & \u_kirsch|u_flow|p11_add9_1|nx23445z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6  # !\u_kirsch|u_flow|p12_add9_2|nx45949z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx23445z1  # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z6 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52925 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N28
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52923 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx46946z1  = \u_kirsch|u_flow|p12_add9_2|nx23445z1  & (GND # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3 ) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3  $ GND)
// \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx23445z1  # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z3 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p22_sub11_4i6|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52923 .lut_mask = 16'h3CCF;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix46946z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52933 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx37973z1  = \u_kirsch|u_flow|p11_add9_1|nx37973z1  & (\u_kirsch|u_flow|p12_add9_2|nx37973z1  $ VCC) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1  & (\u_kirsch|u_flow|p12_add9_2|nx37973z1  # GND)
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx37973z1  # !\u_kirsch|u_flow|p11_add9_1|nx37973z1 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx37973z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52933 .lut_mask = 16'h66DD;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52932 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1  = \u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28  # !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & 
// (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28  # GND)) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1  & (\u_kirsch|u_flow|p12_add9_2|nx38970z1  & \u_kirsch|u_flow|p22_sub10_4i5|nx46946z28  & VCC # !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & 
// !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28 )
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx38970z1  & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28  # !\u_kirsch|u_flow|p12_add9_2|nx38970z1 ) # !\u_kirsch|u_flow|p11_add9_1|nx38970z1  & 
// !\u_kirsch|u_flow|p12_add9_2|nx38970z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx38970z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z28 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z25 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52932 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52931 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1  = (\u_kirsch|u_flow|p12_add9_2|nx39967z1  $ \u_kirsch|u_flow|p11_add9_1|nx39967z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z25 ) # GND
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx39967z1  & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z25  # !\u_kirsch|u_flow|p11_add9_1|nx39967z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx39967z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx39967z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z25 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z25 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52931 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52930 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx40964z1  = \u_kirsch|u_flow|p11_add9_1|nx40964z1  & (\u_kirsch|u_flow|p12_add9_2|nx40964z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22  # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & 
// (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22  # GND)) # !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & (\u_kirsch|u_flow|p12_add9_2|nx40964z1  & \u_kirsch|u_flow|p22_sub10_4i5|nx46946z22  & VCC # !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & 
// !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22 )
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx40964z1  & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22  # !\u_kirsch|u_flow|p12_add9_2|nx40964z1 ) # !\u_kirsch|u_flow|p11_add9_1|nx40964z1  & 
// !\u_kirsch|u_flow|p12_add9_2|nx40964z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx40964z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z22 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52930 .lut_mask = 16'h692B;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52929 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1  = (\u_kirsch|u_flow|p12_add9_2|nx41961z1  $ \u_kirsch|u_flow|p11_add9_1|nx41961z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z19 ) # GND
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx41961z1  & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z19  # !\u_kirsch|u_flow|p11_add9_1|nx41961z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx41961z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx41961z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z19 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z19 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52929 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52928 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx42958z1  = \u_kirsch|u_flow|p12_add9_2|nx42958z1  & (\u_kirsch|u_flow|p11_add9_1|nx42958z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16  # !\u_kirsch|u_flow|p11_add9_1|nx42958z1  & 
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z16  & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & (\u_kirsch|u_flow|p11_add9_1|nx42958z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx42958z1  & 
// !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16 )
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx42958z1  & \u_kirsch|u_flow|p11_add9_1|nx42958z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16  # !\u_kirsch|u_flow|p12_add9_2|nx42958z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx42958z1  # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z16 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52928 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52927 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx43955z1  = (\u_kirsch|u_flow|p12_add9_2|nx43955z1  $ \u_kirsch|u_flow|p11_add9_1|nx43955z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z13 ) # GND
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx43955z1  & (!\u_kirsch|u_flow|p22_sub10_4i5|nx46946z13  # !\u_kirsch|u_flow|p11_add9_1|nx43955z1 ) # !\u_kirsch|u_flow|p12_add9_2|nx43955z1  & 
// !\u_kirsch|u_flow|p11_add9_1|nx43955z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z13 )

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx43955z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z13 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52927 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52926 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1  = \u_kirsch|u_flow|p12_add9_2|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10  # !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & 
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z10  & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & (\u_kirsch|u_flow|p11_add9_1|nx44952z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx44952z1  & 
// !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10 )
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx44952z1  & \u_kirsch|u_flow|p11_add9_1|nx44952z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10  # !\u_kirsch|u_flow|p12_add9_2|nx44952z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx44952z1  # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z10 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52926 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52925 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1  = (\u_kirsch|u_flow|p11_add9_1|nx45949z1  $ \u_kirsch|u_flow|p12_add9_2|nx45949z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z7 ) # GND
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx45949z1  & \u_kirsch|u_flow|p12_add9_2|nx45949z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z7  # !\u_kirsch|u_flow|p11_add9_1|nx45949z1  & 
// (\u_kirsch|u_flow|p12_add9_2|nx45949z1  # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z7 ))

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p12_add9_2|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z7 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52925 .lut_mask = 16'h964D;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52923 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1  = \u_kirsch|u_flow|p12_add9_2|nx23445z1  & (\u_kirsch|u_flow|p11_add9_1|nx23445z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4  # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & \u_kirsch|u_flow|p22_sub10_4i5|nx46946z4  
// & VCC) # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & (\u_kirsch|u_flow|p11_add9_1|nx23445z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4  # GND) # !\u_kirsch|u_flow|p11_add9_1|nx23445z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4 )
// \u_kirsch|u_flow|p22_sub10_4i5|nx23445z2  = CARRY(\u_kirsch|u_flow|p12_add9_2|nx23445z1  & \u_kirsch|u_flow|p11_add9_1|nx23445z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4  # !\u_kirsch|u_flow|p12_add9_2|nx23445z1  & 
// (\u_kirsch|u_flow|p11_add9_1|nx23445z1  # !\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4 ))

	.dataa(\u_kirsch|u_flow|p12_add9_2|nx23445z1 ),
	.datab(\u_kirsch|u_flow|p11_add9_1|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z4 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p22_sub10_4i5|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52923 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix46946z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y20_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub10_4i5|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  = !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub10_4i5|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|p22_sub10_4i5|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52935 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx37973z1  = \u_kirsch|u_flow|p11_add9_1|nx37973z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx38970z1  $ VCC) # !\u_kirsch|u_flow|p11_add9_1|nx37973z1  & \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1  & VCC
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z32  = CARRY(\u_kirsch|u_flow|p11_add9_1|nx37973z1  & \u_kirsch|u_flow|p22_sub10_4i5|nx38970z1 )

	.dataa(\u_kirsch|u_flow|p11_add9_1|nx37973z1 ),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z32 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52935 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52934 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx38970z1  = \u_kirsch|u_flow|p22_sub10_4i5|nx39967z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1  & \u_kirsch|u_flow|p22_add12_4i2|nx63795z32  & VCC # !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1  & 
// !\u_kirsch|u_flow|p22_add12_4i2|nx63795z32 ) # !\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z32  # !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1  & 
// (\u_kirsch|u_flow|p22_add12_4i2|nx63795z32  # GND))
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z29  = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z32  # !\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1  & 
// (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z32  # !\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1 ))

	.dataa(\u_kirsch|u_flow|p22_sub10_4i5|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p22_sub11_4i6|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z32 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z29 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52934 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52933 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx39967z1  = (\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1  $ \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1  $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z29 ) # GND
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z26  = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx38970z1  # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z29 ) # !\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1  & 
// \u_kirsch|u_flow|p22_sub11_4i6|nx38970z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z29 )

	.dataa(\u_kirsch|u_flow|p22_sub10_4i5|nx40964z1 ),
	.datab(\u_kirsch|u_flow|p22_sub11_4i6|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z29 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z26 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52933 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52932 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx40964z1  = \u_kirsch|u_flow|p22_sub10_4i5|nx41961z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1  & \u_kirsch|u_flow|p22_add12_4i2|nx63795z26  & VCC # !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1  & 
// !\u_kirsch|u_flow|p22_add12_4i2|nx63795z26 ) # !\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z26  # !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1  & 
// (\u_kirsch|u_flow|p22_add12_4i2|nx63795z26  # GND))
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z23  = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z26  # !\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1  & 
// (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z26  # !\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1 ))

	.dataa(\u_kirsch|u_flow|p22_sub10_4i5|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p22_sub11_4i6|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z26 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z23 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52932 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52931 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx41961z1  = (\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1  $ \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1  $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z23 ) # GND
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z20  = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx40964z1  # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z23 ) # !\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1  & 
// \u_kirsch|u_flow|p22_sub11_4i6|nx40964z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z23 )

	.dataa(\u_kirsch|u_flow|p22_sub10_4i5|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p22_sub11_4i6|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z23 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z20 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52931 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52930 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx42958z1  = \u_kirsch|u_flow|p22_sub11_4i6|nx41961z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1  & \u_kirsch|u_flow|p22_add12_4i2|nx63795z20  & VCC # !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1  & 
// !\u_kirsch|u_flow|p22_add12_4i2|nx63795z20 ) # !\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z20  # !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1  & 
// (\u_kirsch|u_flow|p22_add12_4i2|nx63795z20  # GND))
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z17  = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1  & !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z20  # !\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1  & 
// (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z20  # !\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1 ))

	.dataa(\u_kirsch|u_flow|p22_sub11_4i6|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z20 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z17 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52929 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx43955z1  = (\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1  $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z17 ) # GND
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z14  = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx44952z1  # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z17 ) # !\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1  & 
// \u_kirsch|u_flow|p22_sub10_4i5|nx44952z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z17 )

	.dataa(\u_kirsch|u_flow|p22_sub11_4i6|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z17 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z14 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52928 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx44952z1  = \u_kirsch|u_flow|p22_sub10_4i5|nx45949z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1  & \u_kirsch|u_flow|p22_add12_4i2|nx63795z14  & VCC # !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1  & 
// !\u_kirsch|u_flow|p22_add12_4i2|nx63795z14 ) # !\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1  & (\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z14  # !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1  & 
// (\u_kirsch|u_flow|p22_add12_4i2|nx63795z14  # GND))
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z11  = CARRY(\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1  & !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z14  # !\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1  & 
// (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z14  # !\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1 ))

	.dataa(\u_kirsch|u_flow|p22_sub10_4i5|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p22_sub11_4i6|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z14 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z11 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52927 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx45949z1  = (\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1  $ !\u_kirsch|u_flow|p22_add12_4i2|nx63795z11 ) # GND
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z8  = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx46946z1  # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z11 ) # !\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1  & 
// \u_kirsch|u_flow|p22_sub10_4i5|nx46946z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z11 )

	.dataa(\u_kirsch|u_flow|p22_sub11_4i6|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z11 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z8 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52926 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx46946z1  = \u_kirsch|u_flow|p22_sub11_4i6|nx45949z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8  # !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  & 
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z8  & VCC) # !\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1  & (\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  & (\u_kirsch|u_flow|p22_add12_4i2|nx63795z8  # GND) # !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  & 
// !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8 )
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z6  = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1  & \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8  # !\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1  & 
// (\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  # !\u_kirsch|u_flow|p22_add12_4i2|nx63795z8 ))

	.dataa(\u_kirsch|u_flow|p22_sub11_4i6|nx45949z1 ),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z8 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx46946z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z6 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52926 .lut_mask = 16'h694D;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52925 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx62798z1  = (\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1  $ \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  $ \u_kirsch|u_flow|p22_add12_4i2|nx63795z6 ) # GND
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z4  = CARRY(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1  & (!\u_kirsch|u_flow|p22_add12_4i2|nx63795z6  # !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1 ) # !\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1  & 
// !\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  & !\u_kirsch|u_flow|p22_add12_4i2|nx63795z6 )

	.dataa(\u_kirsch|u_flow|p22_sub11_4i6|nx46946z1 ),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z6 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx62798z1 ),
	.cout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52925 .lut_mask = 16'h962B;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y19_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p21_sub11_4i4|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1  = \u_kirsch|u_flow|p21_sub11_4i4|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_sub11_4i4|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p21_sub11_4i4|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|p21_sub11_4i4|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N30
cycloneii_lcell_comb \u_kirsch|u_flow|p21_add12_4i1|ix63795z52923 (
// Equation(s):
// \u_kirsch|u_flow|p21_add12_4i1|nx63795z1  = \u_kirsch|u_flow|p21_sub11_4i4|nx23445z1  $ \u_kirsch|u_flow|p21_sub10_4i3|nx23445z1  $ \u_kirsch|u_flow|p21_add12_4i1|nx63795z4 

	.dataa(\u_kirsch|u_flow|p21_sub11_4i4|nx23445z1 ),
	.datab(\u_kirsch|u_flow|p21_sub10_4i3|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p21_add12_4i1|nx63795z4 ),
	.combout(\u_kirsch|u_flow|p21_add12_4i1|nx63795z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52923 .lut_mask = 16'h9696;
defparam \u_kirsch|u_flow|p21_add12_4i1|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y20_N30
cycloneii_lcell_comb \u_kirsch|u_flow|p22_sub11_4i6|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1  = \u_kirsch|u_flow|p22_sub11_4i6|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p22_sub11_4i6|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p22_sub11_4i6|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|p22_sub11_4i6|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N26
cycloneii_lcell_comb \u_kirsch|u_flow|p22_add12_4i2|ix63795z52923 (
// Equation(s):
// \u_kirsch|u_flow|p22_add12_4i2|nx63795z1  = \u_kirsch|u_flow|p22_sub10_4i5|nx23445z1  $ \u_kirsch|u_flow|p22_add12_4i2|nx63795z4  $ \u_kirsch|u_flow|p22_sub11_4i6|nx23445z1 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p22_sub10_4i5|nx23445z1 ),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p22_sub11_4i6|nx23445z1 ),
	.cin(\u_kirsch|u_flow|p22_add12_4i2|nx63795z4 ),
	.combout(\u_kirsch|u_flow|p22_add12_4i2|nx63795z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52923 .lut_mask = 16'hC33C;
defparam \u_kirsch|u_flow|p22_add12_4i2|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N5
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_7_ ));

// atom is at LCFF_X57_Y18_N13
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__7_ ));

// atom is at LCCOMB_X57_Y18_N18
cycloneii_lcell_comb \u_kirsch|ix20836z52979 (
// Equation(s):
// \u_kirsch|f_i2_7_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image1_2__7_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i2_next_7_ 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|f_i2_next_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_image1_2__7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52979 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix20836z52979 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N7
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_7_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_7_ ));

// atom is at LCFF_X57_Y18_N5
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__7_ ));

// atom is at LCCOMB_X57_Y18_N10
cycloneii_lcell_comb \u_kirsch|ix20836z52971 (
// Equation(s):
// \u_kirsch|f_i1_7_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_0__7_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i1_next_7_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|u_memory|o_image1_0__7_ ),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52971 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix20836z52971 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N27
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_6_ ));

// atom is at LCFF_X57_Y17_N17
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__6_ ));

// atom is at LCCOMB_X57_Y17_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52980 (
// Equation(s):
// \u_kirsch|f_i2_6_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__6_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_6_ )

	.dataa(\u_kirsch|u_memory|o_image1_2__6_ ),
	.datab(\u_kirsch|f_i2_next_6_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52980 .lut_mask = 16'hAACC;
defparam \u_kirsch|ix20836z52980 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N25
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_6_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_6_ ));

// atom is at LCFF_X57_Y17_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__6_ ));

// atom is at LCCOMB_X57_Y17_N24
cycloneii_lcell_comb \u_kirsch|ix20836z52972 (
// Equation(s):
// \u_kirsch|f_i1_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image1_0__6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i1_next_6_ 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|f_i1_next_6_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_image1_0__6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52972 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix20836z52972 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N29
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_5_ ));

// atom is at LCFF_X57_Y17_N13
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__5_ ));

// atom is at LCCOMB_X57_Y17_N8
cycloneii_lcell_comb \u_kirsch|ix20836z52981 (
// Equation(s):
// \u_kirsch|f_i2_5_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__5_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_5_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|u_memory|o_image1_2__5_ ),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52981 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix20836z52981 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N7
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_5_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_5_ ));

// atom is at LCFF_X57_Y17_N11
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__5_ ));

// atom is at LCCOMB_X57_Y17_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52973 (
// Equation(s):
// \u_kirsch|f_i1_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_image1_0__5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i1_next_5_ 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|f_i1_next_5_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_image1_0__5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52973 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix20836z52973 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N5
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_4_ ));

// atom is at LCFF_X57_Y18_N23
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__4_ ));

// atom is at LCCOMB_X57_Y18_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52982 (
// Equation(s):
// \u_kirsch|f_i2_4_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__4_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_4_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|u_memory|o_image1_2__4_ ),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52982 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix20836z52982 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N31
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_4_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_4_ ));

// atom is at LCFF_X57_Y18_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__4_ ));

// atom is at LCCOMB_X57_Y18_N20
cycloneii_lcell_comb \u_kirsch|ix20836z52974 (
// Equation(s):
// \u_kirsch|f_i1_4_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_0__4_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i1_next_4_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(\u_kirsch|u_memory|o_image1_0__4_ ),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52974 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix20836z52974 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N19
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_3_ ));

// atom is at LCFF_X59_Y17_N23
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__3_ ));

// atom is at LCCOMB_X59_Y17_N22
cycloneii_lcell_comb \u_kirsch|ix20836z52983 (
// Equation(s):
// \u_kirsch|f_i2_3_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__3_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_3_ )

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image1_2__3_ ),
	.datad(\u_kirsch|f_i2_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52983 .lut_mask = 16'hF5A0;
defparam \u_kirsch|ix20836z52983 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y18_N29
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_3_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_3_ ));

// atom is at LCFF_X57_Y21_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__3_ ));

// atom is at LCCOMB_X57_Y21_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52975 (
// Equation(s):
// \u_kirsch|f_i1_3_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_0__3_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i1_next_3_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_0__3_ ),
	.datad(\u_kirsch|f_i1_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52975 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52975 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N1
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_2_ ));

// atom is at LCFF_X57_Y21_N27
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__2_ ));

// atom is at LCCOMB_X57_Y21_N26
cycloneii_lcell_comb \u_kirsch|ix20836z52984 (
// Equation(s):
// \u_kirsch|f_i2_2_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__2_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_2__2_ ),
	.datad(\u_kirsch|f_i2_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52984 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52984 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y19_N11
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_2_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_2_ ));

// atom is at LCFF_X57_Y21_N29
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__2_ ));

// atom is at LCCOMB_X57_Y21_N28
cycloneii_lcell_comb \u_kirsch|ix20836z52976 (
// Equation(s):
// \u_kirsch|f_i1_2_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_0__2_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i1_next_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_0__2_ ),
	.datad(\u_kirsch|f_i1_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52976 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52976 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N9
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_1_ ));

// atom is at LCFF_X57_Y21_N31
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__1_ ));

// atom is at LCCOMB_X57_Y21_N30
cycloneii_lcell_comb \u_kirsch|ix20836z52985 (
// Equation(s):
// \u_kirsch|f_i2_1_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__1_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_1_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_2__1_ ),
	.datad(\u_kirsch|f_i2_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52985 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52985 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N3
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_1_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_1_ ));

// atom is at LCFF_X57_Y21_N3
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__1_ ));

// atom is at LCCOMB_X57_Y21_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52977 (
// Equation(s):
// \u_kirsch|f_i1_1_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_0__1_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i1_next_1_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_0__1_ ),
	.datad(\u_kirsch|f_i1_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52977 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52977 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N13
cycloneii_lcell_ff \u_kirsch|reg_f_i1_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i1_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image2_0__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i1_next_0_ ));

// atom is at LCFF_X57_Y21_N5
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_0__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_0__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_0__0_ ));

// atom is at LCCOMB_X57_Y21_N4
cycloneii_lcell_comb \u_kirsch|ix20836z52978 (
// Equation(s):
// \u_kirsch|f_i1_0_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_0__0_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i1_next_0_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_0__0_ ),
	.datad(\u_kirsch|f_i1_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52978 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52978 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y17_N7
cycloneii_lcell_ff \u_kirsch|reg_f_i2_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i2_next_0_~feeder_combout ),
	.sdata(\u_kirsch|u_memory|o_image0_2__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|nx57127z2 ),
	.ena(\u_kirsch|nx57127z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i2_next_0_ ));

// atom is at LCFF_X57_Y21_N7
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_2__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_2__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_2__0_ ));

// atom is at LCCOMB_X57_Y21_N6
cycloneii_lcell_comb \u_kirsch|ix20836z52986 (
// Equation(s):
// \u_kirsch|f_i2_0_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_image1_2__0_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i2_next_0_ )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_image1_2__0_ ),
	.datad(\u_kirsch|f_i2_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52986 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix20836z52986 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52931 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx37973z1  = \u_kirsch|f_i2_0_  & (\u_kirsch|f_i1_0_  $ VCC) # !\u_kirsch|f_i2_0_  & \u_kirsch|f_i1_0_  & VCC
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z22  = CARRY(\u_kirsch|f_i2_0_  & \u_kirsch|f_i1_0_ )

	.dataa(\u_kirsch|f_i2_0_ ),
	.datab(\u_kirsch|f_i1_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z22 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52931 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52930 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx38970z1  = \u_kirsch|f_i2_1_  & (\u_kirsch|f_i1_1_  & \u_kirsch|u_flow|p13_add8_0i3|nx44952z22  & VCC # !\u_kirsch|f_i1_1_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z22 ) # !\u_kirsch|f_i2_1_  & (\u_kirsch|f_i1_1_  & 
// !\u_kirsch|u_flow|p13_add8_0i3|nx44952z22  # !\u_kirsch|f_i1_1_  & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z22  # GND))
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z19  = CARRY(\u_kirsch|f_i2_1_  & !\u_kirsch|f_i1_1_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z22  # !\u_kirsch|f_i2_1_  & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z22  # !\u_kirsch|f_i1_1_ ))

	.dataa(\u_kirsch|f_i2_1_ ),
	.datab(\u_kirsch|f_i1_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z22 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z19 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52929 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx39967z1  = (\u_kirsch|f_i1_2_  $ \u_kirsch|f_i2_2_  $ !\u_kirsch|u_flow|p13_add8_0i3|nx44952z19 ) # GND
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z16  = CARRY(\u_kirsch|f_i1_2_  & (\u_kirsch|f_i2_2_  # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z19 ) # !\u_kirsch|f_i1_2_  & \u_kirsch|f_i2_2_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z19 )

	.dataa(\u_kirsch|f_i1_2_ ),
	.datab(\u_kirsch|f_i2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z19 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z16 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52928 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx40964z1  = \u_kirsch|f_i2_3_  & (\u_kirsch|f_i1_3_  & \u_kirsch|u_flow|p13_add8_0i3|nx44952z16  & VCC # !\u_kirsch|f_i1_3_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z16 ) # !\u_kirsch|f_i2_3_  & (\u_kirsch|f_i1_3_  & 
// !\u_kirsch|u_flow|p13_add8_0i3|nx44952z16  # !\u_kirsch|f_i1_3_  & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z16  # GND))
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z13  = CARRY(\u_kirsch|f_i2_3_  & !\u_kirsch|f_i1_3_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z16  # !\u_kirsch|f_i2_3_  & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z16  # !\u_kirsch|f_i1_3_ ))

	.dataa(\u_kirsch|f_i2_3_ ),
	.datab(\u_kirsch|f_i1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z16 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52927 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx41961z1  = (\u_kirsch|f_i2_4_  $ \u_kirsch|f_i1_4_  $ !\u_kirsch|u_flow|p13_add8_0i3|nx44952z13 ) # GND
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z10  = CARRY(\u_kirsch|f_i2_4_  & (\u_kirsch|f_i1_4_  # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z13 ) # !\u_kirsch|f_i2_4_  & \u_kirsch|f_i1_4_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z13 )

	.dataa(\u_kirsch|f_i2_4_ ),
	.datab(\u_kirsch|f_i1_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z13 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z10 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52926 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx42958z1  = \u_kirsch|f_i2_5_  & (\u_kirsch|f_i1_5_  & \u_kirsch|u_flow|p13_add8_0i3|nx44952z10  & VCC # !\u_kirsch|f_i1_5_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z10 ) # !\u_kirsch|f_i2_5_  & (\u_kirsch|f_i1_5_  & 
// !\u_kirsch|u_flow|p13_add8_0i3|nx44952z10  # !\u_kirsch|f_i1_5_  & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z10  # GND))
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z7  = CARRY(\u_kirsch|f_i2_5_  & !\u_kirsch|f_i1_5_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z10  # !\u_kirsch|f_i2_5_  & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z10  # !\u_kirsch|f_i1_5_ ))

	.dataa(\u_kirsch|f_i2_5_ ),
	.datab(\u_kirsch|f_i1_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z10 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52925 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx43955z1  = (\u_kirsch|f_i1_6_  $ \u_kirsch|f_i2_6_  $ !\u_kirsch|u_flow|p13_add8_0i3|nx44952z7 ) # GND
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z4  = CARRY(\u_kirsch|f_i1_6_  & (\u_kirsch|f_i2_6_  # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z7 ) # !\u_kirsch|f_i1_6_  & \u_kirsch|f_i2_6_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z7 )

	.dataa(\u_kirsch|f_i1_6_ ),
	.datab(\u_kirsch|f_i2_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z7 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z4 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix44952z52923 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx44952z1  = \u_kirsch|f_i2_7_  & (\u_kirsch|f_i1_7_  & \u_kirsch|u_flow|p13_add8_0i3|nx44952z4  & VCC # !\u_kirsch|f_i1_7_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z4 ) # !\u_kirsch|f_i2_7_  & (\u_kirsch|f_i1_7_  & 
// !\u_kirsch|u_flow|p13_add8_0i3|nx44952z4  # !\u_kirsch|f_i1_7_  & (\u_kirsch|u_flow|p13_add8_0i3|nx44952z4  # GND))
// \u_kirsch|u_flow|p13_add8_0i3|nx23445z2  = CARRY(\u_kirsch|f_i2_7_  & !\u_kirsch|f_i1_7_  & !\u_kirsch|u_flow|p13_add8_0i3|nx44952z4  # !\u_kirsch|f_i2_7_  & (!\u_kirsch|u_flow|p13_add8_0i3|nx44952z4  # !\u_kirsch|f_i1_7_ ))

	.dataa(\u_kirsch|f_i2_7_ ),
	.datab(\u_kirsch|f_i1_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx44952z4 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p13_add8_0i3|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52923 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y21_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add8_0i3|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p13_add8_0i3|nx23445z1  = !\u_kirsch|u_flow|p13_add8_0i3|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add8_0i3|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p13_add8_0i3|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add8_0i3|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|p13_add8_0i3|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N0
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52932 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx37973z1  = \u_kirsch|u_flow|p13_add8_0i3|nx37973z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx38970z1  $ VCC) # !\u_kirsch|u_flow|p13_add8_0i3|nx37973z1  & \u_kirsch|u_flow|p13_add8_0i3|nx38970z1  & VCC
// \u_kirsch|u_flow|p13_add9_3|nx45949z17  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx37973z1  & \u_kirsch|u_flow|p13_add8_0i3|nx38970z1 )

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx37973z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx37973z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z17 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52931 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx38970z1  = \u_kirsch|u_flow|p13_add8_0i3|nx39967z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx38970z1  & \u_kirsch|u_flow|p13_add9_3|nx45949z17  & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1  & 
// !\u_kirsch|u_flow|p13_add9_3|nx45949z17 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx39967z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx38970z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z17  # !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1  & 
// (\u_kirsch|u_flow|p13_add9_3|nx45949z17  # GND))
// \u_kirsch|u_flow|p13_add9_3|nx45949z15  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1  & !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z17  # !\u_kirsch|u_flow|p13_add8_0i3|nx39967z1  & 
// (!\u_kirsch|u_flow|p13_add9_3|nx45949z17  # !\u_kirsch|u_flow|p13_add8_0i3|nx38970z1 ))

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z17 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx38970z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52930 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx39967z1  = (\u_kirsch|u_flow|p13_add8_0i3|nx39967z1  $ \u_kirsch|u_flow|p13_add8_0i3|nx40964z1  $ !\u_kirsch|u_flow|p13_add9_3|nx45949z15 ) # GND
// \u_kirsch|u_flow|p13_add9_3|nx45949z13  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx40964z1  # !\u_kirsch|u_flow|p13_add9_3|nx45949z15 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx39967z1  & 
// \u_kirsch|u_flow|p13_add8_0i3|nx40964z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z15 )

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx39967z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z15 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx39967z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z13 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52929 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx40964z1  = \u_kirsch|u_flow|p13_add8_0i3|nx41961z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx40964z1  & \u_kirsch|u_flow|p13_add9_3|nx45949z13  & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1  & 
// !\u_kirsch|u_flow|p13_add9_3|nx45949z13 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx41961z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx40964z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z13  # !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1  & 
// (\u_kirsch|u_flow|p13_add9_3|nx45949z13  # GND))
// \u_kirsch|u_flow|p13_add9_3|nx45949z11  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1  & !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z13  # !\u_kirsch|u_flow|p13_add8_0i3|nx41961z1  & 
// (!\u_kirsch|u_flow|p13_add9_3|nx45949z13  # !\u_kirsch|u_flow|p13_add8_0i3|nx40964z1 ))

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z13 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx40964z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z11 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52928 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx41961z1  = (\u_kirsch|u_flow|p13_add8_0i3|nx41961z1  $ \u_kirsch|u_flow|p13_add8_0i3|nx42958z1  $ !\u_kirsch|u_flow|p13_add9_3|nx45949z11 ) # GND
// \u_kirsch|u_flow|p13_add9_3|nx45949z9  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx42958z1  # !\u_kirsch|u_flow|p13_add9_3|nx45949z11 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx41961z1  & 
// \u_kirsch|u_flow|p13_add8_0i3|nx42958z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z11 )

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx41961z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z11 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx41961z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N10
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52927 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx42958z1  = \u_kirsch|u_flow|p13_add8_0i3|nx42958z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx43955z1  & \u_kirsch|u_flow|p13_add9_3|nx45949z9  & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1  & 
// !\u_kirsch|u_flow|p13_add9_3|nx45949z9 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx42958z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx43955z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z9  # !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1  & (\u_kirsch|u_flow|p13_add9_3|nx45949z9 
//  # GND))
// \u_kirsch|u_flow|p13_add9_3|nx45949z7  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx42958z1  & !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z9  # !\u_kirsch|u_flow|p13_add8_0i3|nx42958z1  & 
// (!\u_kirsch|u_flow|p13_add9_3|nx45949z9  # !\u_kirsch|u_flow|p13_add8_0i3|nx43955z1 ))

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx42958z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z9 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx42958z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z7 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N12
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52926 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx43955z1  = (\u_kirsch|u_flow|p13_add8_0i3|nx44952z1  $ \u_kirsch|u_flow|p13_add8_0i3|nx43955z1  $ !\u_kirsch|u_flow|p13_add9_3|nx45949z7 ) # GND
// \u_kirsch|u_flow|p13_add9_3|nx45949z5  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx43955z1  # !\u_kirsch|u_flow|p13_add9_3|nx45949z7 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z1  & 
// \u_kirsch|u_flow|p13_add8_0i3|nx43955z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z7 )

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z7 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx43955z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z5 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N14
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52925 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx44952z1  = \u_kirsch|u_flow|p13_add8_0i3|nx44952z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & \u_kirsch|u_flow|p13_add9_3|nx45949z5  & VCC # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & 
// !\u_kirsch|u_flow|p13_add9_3|nx45949z5 ) # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z1  & (\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z5  # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & (\u_kirsch|u_flow|p13_add9_3|nx45949z5 
//  # GND))
// \u_kirsch|u_flow|p13_add9_3|nx45949z3  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1  & !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z5  # !\u_kirsch|u_flow|p13_add8_0i3|nx44952z1  & 
// (!\u_kirsch|u_flow|p13_add9_3|nx45949z5  # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1 ))

	.dataa(\u_kirsch|u_flow|p13_add8_0i3|nx44952z1 ),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z5 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx44952z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix45949z52923 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx45949z1  = \u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & (\u_kirsch|u_flow|p13_add9_3|nx45949z3  $ GND) # !\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z3  & VCC
// \u_kirsch|u_flow|p13_add9_3|nx23445z2  = CARRY(\u_kirsch|u_flow|p13_add8_0i3|nx23445z1  & !\u_kirsch|u_flow|p13_add9_3|nx45949z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p13_add8_0i3|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx45949z3 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx45949z1 ),
	.cout(\u_kirsch|u_flow|p13_add9_3|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52923 .lut_mask = 16'hC30C;
defparam \u_kirsch|u_flow|p13_add9_3|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N18
cycloneii_lcell_comb \u_kirsch|u_flow|p13_add9_3|ix23445z52923 (
// Equation(s):
// \u_kirsch|u_flow|p13_add9_3|nx23445z1  = \u_kirsch|u_flow|p13_add9_3|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_flow|p13_add9_3|nx23445z2 ),
	.combout(\u_kirsch|u_flow|p13_add9_3|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p13_add9_3|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|p13_add9_3|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y17_N24
cycloneii_lcell_comb \u_kirsch|ix20836z52987 (
// Equation(s):
// \u_kirsch|nx20836z1  = \u_kirsch|u_memory|o_valid  # !\u_kirsch|nx57127z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_valid ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx20836z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52987 .lut_mask = 16'hF0FF;
defparam \u_kirsch|ix20836z52987 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N2
cycloneii_lcell_comb \u_kirsch|u_flow|ix25836z52924 (
// Equation(s):
// \u_kirsch|u_flow|nx25836z2  = \u_kirsch|u_flow|max_dir_2_  # \u_kirsch|u_flow|state_3_  & \u_kirsch|u_flow|nx47310z2 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|state_3_ ),
	.datac(\u_kirsch|u_flow|max_dir_2_ ),
	.datad(\u_kirsch|u_flow|nx47310z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx25836z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix25836z52924 .lut_mask = 16'hFCF0;
defparam \u_kirsch|u_flow|ix25836z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N24
cycloneii_lcell_comb \u_kirsch|u_flow|ix25836z52925 (
// Equation(s):
// \u_kirsch|u_flow|nx25836z3  = \u_kirsch|u_flow|nx47310z2  & (\u_kirsch|u_flow|nx28524z1  & \u_kirsch|u_flow|state_1_ ) # !\u_kirsch|u_flow|nx47310z2  & \u_kirsch|u_flow|max_dir_2_ 

	.dataa(\u_kirsch|u_flow|max_dir_2_ ),
	.datab(\u_kirsch|u_flow|nx28524z1 ),
	.datac(\u_kirsch|u_flow|state_1_ ),
	.datad(\u_kirsch|u_flow|nx47310z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx25836z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix25836z52925 .lut_mask = 16'hC0AA;
defparam \u_kirsch|u_flow|ix25836z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_flow|ix25836z52923 (
// Equation(s):
// \u_kirsch|u_flow|nx25836z1  = \u_kirsch|u_flow|nx25836z3  # !\u_kirsch|u_flow|state_2_  & \u_kirsch|u_flow|nx28524z1  & \u_kirsch|u_flow|nx25836z2 

	.dataa(\u_kirsch|u_flow|state_2_ ),
	.datab(\u_kirsch|u_flow|nx28524z1 ),
	.datac(\u_kirsch|u_flow|nx25836z3 ),
	.datad(\u_kirsch|u_flow|nx25836z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx25836z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix25836z52923 .lut_mask = 16'hF4F0;
defparam \u_kirsch|u_flow|ix25836z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N4
cycloneii_lcell_comb \u_uw_uart|ix38742z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_4_  = \u_uw_uart|nx38742z1  # !\u_kirsch|u_flow|o_valid 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|nx38742z1 ),
	.datad(\u_kirsch|u_flow|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38742z52923 .lut_mask = 16'hF0FF;
defparam \u_uw_uart|ix38742z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N15
cycloneii_lcell_ff \u_uw_uart|reg_sdout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_7_ ));

// atom is at LCFF_X56_Y22_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx34606z1 ));

// atom is at LCCOMB_X56_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34606z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx34606z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_7_ 

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|sdout_7_ ),
	.datad(\u_uw_uart|i_uarts|nx34606z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34606z52923 .lut_mask = 16'hAF05;
defparam \u_uw_uart|i_uarts|ix34606z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N28
cycloneii_lcell_comb \u_kirsch|ix57127z52923 (
// Equation(s):
// \u_kirsch|nx57127z1  = \nrst~combout  & (\u_kirsch|u_memory|o_valid  # !\u_kirsch|nx57127z2 )

	.dataa(vcc),
	.datab(\u_kirsch|nx57127z2 ),
	.datac(\u_kirsch|u_memory|o_valid ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx57127z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix57127z52923 .lut_mask = 16'hF300;
defparam \u_kirsch|ix57127z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y18_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_1__7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__7_ ));

// atom is at LCFF_X57_Y17_N19
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_1__6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__6_ ));

// atom is at LCFF_X57_Y17_N21
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_1__5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__5_ ));

// atom is at LCFF_X57_Y18_N21
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_1__4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__4_ ));

// atom is at LCFF_X56_Y18_N31
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image1_1__3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__3_ ));

// atom is at LCFF_X56_Y19_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_image1_1__2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__2_ ));

// atom is at LCFF_X59_Y17_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_1__1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__1_ ));

// atom is at LCFF_X59_Y17_N13
cycloneii_lcell_ff \u_kirsch|u_memory|reg_buffer1_1__0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|o_image2_1__0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|first_bubble ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_image1_1__dup0_0_ ));

// atom is at LCFF_X53_Y21_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_wrn_current_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx40106z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|nx39109z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_wrn_current_1_ ));

// atom is at LCFF_X51_Y20_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_wrn_current_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(\u_kirsch|u_memory|nx39109z5 ),
	.ena(\u_kirsch|u_memory|nx39109z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_wrn_current_0_ ));

// atom is at LCCOMB_X54_Y17_N0
cycloneii_lcell_comb \u_kirsch|u_memory|ix62359z52924 (
// Equation(s):
// \u_kirsch|u_memory|b_0__dup_353  = \u_kirsch|u_memory|mem_wrn_current_1_  & (!\u_kirsch|u_memory|nx60567z2  # !\u_kirsch|u_memory|mem_wrn_current_0_ )

	.dataa(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datad(\u_kirsch|u_memory|nx60567z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|b_0__dup_353 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix62359z52924 .lut_mask = 16'h0AAA;
defparam \u_kirsch|u_memory|ix62359z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_7_ ));

// atom is at LCCOMB_X54_Y17_N26
cycloneii_lcell_comb \u_kirsch|u_memory|ix62359z52925 (
// Equation(s):
// \u_kirsch|u_memory|nx62359z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [7] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_7_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [7]),
	.datad(\u_kirsch|u_memory|mem_data_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx62359z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix62359z52925 .lut_mask = 16'hF5A0;
defparam \u_kirsch|u_memory|ix62359z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N24
cycloneii_lcell_comb \u_kirsch|u_memory|ix62359z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx62359z1  = \u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|nx62359z2 ) # !\u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7]),
	.datab(\u_kirsch|u_memory|nx62359z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|b_0__dup_353 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx62359z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix62359z52923 .lut_mask = 16'hCCAA;
defparam \u_kirsch|u_memory|ix62359z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N4
cycloneii_lcell_comb \u_kirsch|u_memory|ix62359z52926 (
// Equation(s):
// \u_kirsch|u_memory|b_1__dup_352  = !\u_kirsch|u_memory|mem_wrn_current_1_  & (!\u_kirsch|u_memory|nx60567z2  # !\u_kirsch|u_memory|mem_wrn_current_0_ )

	.dataa(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datad(\u_kirsch|u_memory|nx60567z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|b_1__dup_352 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix62359z52926 .lut_mask = 16'h0555;
defparam \u_kirsch|u_memory|ix62359z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N30
cycloneii_lcell_comb \u_kirsch|u_memory|ix63578z52924 (
// Equation(s):
// \u_kirsch|u_memory|b_0_  = \u_kirsch|u_memory|mem_wrn_current_0_  & (!\u_kirsch|u_memory|nx60567z2  # !\u_kirsch|u_memory|mem_wrn_current_1_ )

	.dataa(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datad(\u_kirsch|u_memory|nx60567z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|b_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix63578z52924 .lut_mask = 16'h50F0;
defparam \u_kirsch|u_memory|ix63578z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N8
cycloneii_lcell_comb \u_kirsch|u_memory|ix63578z52925 (
// Equation(s):
// \u_kirsch|u_memory|nx63578z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [7] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_7_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [7]),
	.datad(\u_kirsch|u_memory|mem_data_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx63578z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix63578z52925 .lut_mask = 16'hF5A0;
defparam \u_kirsch|u_memory|ix63578z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N8
cycloneii_lcell_comb \u_kirsch|u_memory|ix63578z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx63578z1  = \u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|nx63578z2  # !\u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7])

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|nx63578z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx63578z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix63578z52923 .lut_mask = 16'hDD88;
defparam \u_kirsch|u_memory|ix63578z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N18
cycloneii_lcell_comb \u_kirsch|u_memory|ix63578z52926 (
// Equation(s):
// \u_kirsch|u_memory|b_1_  = !\u_kirsch|u_memory|mem_wrn_current_0_  & (!\u_kirsch|u_memory|nx60567z2  # !\u_kirsch|u_memory|mem_wrn_current_1_ )

	.dataa(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datad(\u_kirsch|u_memory|nx60567z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|b_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix63578z52926 .lut_mask = 16'h050F;
defparam \u_kirsch|u_memory|ix63578z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N11
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_6_ ));

// atom is at LCCOMB_X54_Y17_N28
cycloneii_lcell_comb \u_kirsch|u_memory|ix61362z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx61362z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [6] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_6_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [6]),
	.datad(\u_kirsch|u_memory|mem_data_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx61362z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix61362z52924 .lut_mask = 16'hF5A0;
defparam \u_kirsch|u_memory|ix61362z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N10
cycloneii_lcell_comb \u_kirsch|u_memory|ix61362z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx61362z1  = \u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|nx61362z2 ) # !\u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6]),
	.datab(\u_kirsch|u_memory|nx61362z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|b_0__dup_353 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx61362z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix61362z52923 .lut_mask = 16'hCCAA;
defparam \u_kirsch|u_memory|ix61362z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N6
cycloneii_lcell_comb \u_kirsch|u_memory|ix64575z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx64575z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [6] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_6_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [6]),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|mem_data_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx64575z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix64575z52924 .lut_mask = 16'hDD88;
defparam \u_kirsch|u_memory|ix64575z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N18
cycloneii_lcell_comb \u_kirsch|u_memory|ix64575z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx64575z1  = \u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|nx64575z2 ) # !\u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6]

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6]),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|nx64575z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx64575z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix64575z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|u_memory|ix64575z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N17
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_5_ ));

// atom is at LCCOMB_X54_Y17_N16
cycloneii_lcell_comb \u_kirsch|u_memory|ix60365z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx60365z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [5] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_5_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [5]),
	.datad(\u_kirsch|u_memory|mem_data_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60365z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60365z52924 .lut_mask = 16'hF5A0;
defparam \u_kirsch|u_memory|ix60365z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N20
cycloneii_lcell_comb \u_kirsch|u_memory|ix60365z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx60365z1  = \u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|nx60365z2  # !\u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5])

	.dataa(\u_kirsch|u_memory|nx60365z2 ),
	.datab(\u_kirsch|u_memory|b_0__dup_353 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60365z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60365z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|u_memory|ix60365z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N2
cycloneii_lcell_comb \u_kirsch|u_memory|ix36z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx36z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [5] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_5_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [5]),
	.datad(\u_kirsch|u_memory|mem_data_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx36z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix36z52924 .lut_mask = 16'hF5A0;
defparam \u_kirsch|u_memory|ix36z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N4
cycloneii_lcell_comb \u_kirsch|u_memory|ix36z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx36z1  = \u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|nx36z2 ) # !\u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5]

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5]),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|nx36z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx36z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix36z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|u_memory|ix36z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y19_N31
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_4_ ));

// atom is at LCCOMB_X54_Y17_N12
cycloneii_lcell_comb \u_kirsch|u_memory|ix59368z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx59368z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [4]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_4_ 

	.dataa(\u_kirsch|u_memory|mem_data_4_ ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [4]),
	.datad(\u_kirsch|u_memory|nx60567z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx59368z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix59368z52924 .lut_mask = 16'hF0AA;
defparam \u_kirsch|u_memory|ix59368z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N14
cycloneii_lcell_comb \u_kirsch|u_memory|ix59368z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx59368z1  = \u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|nx59368z2 ) # !\u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4]),
	.datab(\u_kirsch|u_memory|b_0__dup_353 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|nx59368z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx59368z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix59368z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|u_memory|ix59368z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_memory|ix1033z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx1033z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [4] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_4_ )

	.dataa(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [4]),
	.datab(\u_kirsch|u_memory|mem_data_4_ ),
	.datac(\u_kirsch|u_memory|nx60567z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx1033z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix1033z52924 .lut_mask = 16'hACAC;
defparam \u_kirsch|u_memory|ix1033z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N6
cycloneii_lcell_comb \u_kirsch|u_memory|ix1033z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx1033z1  = \u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|nx1033z2 ) # !\u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4]

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4]),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|nx1033z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx1033z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix1033z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|u_memory|ix1033z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N29
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_3_ ));

// atom is at LCCOMB_X53_Y17_N16
cycloneii_lcell_comb \u_kirsch|u_memory|ix58371z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx58371z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [3] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_3_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [3]),
	.datac(\u_kirsch|u_memory|mem_data_3_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx58371z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix58371z52924 .lut_mask = 16'hD8D8;
defparam \u_kirsch|u_memory|ix58371z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N22
cycloneii_lcell_comb \u_kirsch|u_memory|ix58371z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx58371z1  = \u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|nx58371z2 ) # !\u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3]),
	.datab(\u_kirsch|u_memory|nx58371z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|b_0__dup_353 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx58371z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix58371z52923 .lut_mask = 16'hCCAA;
defparam \u_kirsch|u_memory|ix58371z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N26
cycloneii_lcell_comb \u_kirsch|u_memory|ix2030z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx2030z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [3]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_3_ 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|mem_data_3_ ),
	.datac(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [3]),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx2030z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix2030z52924 .lut_mask = 16'hE4E4;
defparam \u_kirsch|u_memory|ix2030z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N24
cycloneii_lcell_comb \u_kirsch|u_memory|ix2030z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx2030z1  = \u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|nx2030z2  # !\u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3])

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|nx2030z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx2030z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix2030z52923 .lut_mask = 16'hDD88;
defparam \u_kirsch|u_memory|ix2030z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y19_N13
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_2_ ));

// atom is at LCCOMB_X53_Y17_N12
cycloneii_lcell_comb \u_kirsch|u_memory|ix57374z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx57374z2  = \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [2] # !\u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|mem_data_2_ )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [2]),
	.datac(\u_kirsch|u_memory|mem_data_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx57374z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix57374z52924 .lut_mask = 16'hD8D8;
defparam \u_kirsch|u_memory|ix57374z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N16
cycloneii_lcell_comb \u_kirsch|u_memory|ix57374z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx57374z1  = \u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|nx57374z2  # !\u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2])

	.dataa(\u_kirsch|u_memory|nx57374z2 ),
	.datab(\u_kirsch|u_memory|b_0__dup_353 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx57374z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix57374z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|u_memory|ix57374z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N30
cycloneii_lcell_comb \u_kirsch|u_memory|ix3027z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx3027z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [2]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_2_ 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|mem_data_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx3027z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix3027z52924 .lut_mask = 16'hEE44;
defparam \u_kirsch|u_memory|ix3027z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N10
cycloneii_lcell_comb \u_kirsch|u_memory|ix3027z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx3027z1  = \u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|nx3027z2  # !\u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2])

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|nx3027z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx3027z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix3027z52923 .lut_mask = 16'hDD88;
defparam \u_kirsch|u_memory|ix3027z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y19_N3
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_1_ ));

// atom is at LCCOMB_X53_Y19_N28
cycloneii_lcell_comb \u_kirsch|u_memory|ix56377z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx56377z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [1]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_1_ 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|mem_data_1_ ),
	.datac(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [1]),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx56377z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix56377z52924 .lut_mask = 16'hE4E4;
defparam \u_kirsch|u_memory|ix56377z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N26
cycloneii_lcell_comb \u_kirsch|u_memory|ix56377z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx56377z1  = \u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|nx56377z2 ) # !\u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1]),
	.datab(\u_kirsch|u_memory|b_0__dup_353 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|nx56377z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx56377z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix56377z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|u_memory|ix56377z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N6
cycloneii_lcell_comb \u_kirsch|u_memory|ix4024z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx4024z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [1]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_1_ 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|mem_data_1_ ),
	.datac(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [1]),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx4024z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix4024z52924 .lut_mask = 16'hE4E4;
defparam \u_kirsch|u_memory|ix4024z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N28
cycloneii_lcell_comb \u_kirsch|u_memory|ix4024z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx4024z1  = \u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|nx4024z2  # !\u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1])

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|nx4024z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx4024z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix4024z52923 .lut_mask = 16'hDD88;
defparam \u_kirsch|u_memory|ix4024z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X52_Y18
cycloneii_ram_block \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|u_memory|mem_wrn_2_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_kirsch|u_memory|mem_data_7_ ,\u_kirsch|u_memory|mem_data_6_ ,\u_kirsch|u_memory|mem_data_5_ ,\u_kirsch|u_memory|mem_data_4_ ,\u_kirsch|u_memory|mem_data_3_ ,\u_kirsch|u_memory|mem_data_2_ ,\u_kirsch|u_memory|mem_data_1_ ,\u_kirsch|u_memory|mem_data_0_ }),
	.portaaddr({\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ,
\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z15 }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .logical_ram_name = "kirsch:u_kirsch|memory:u_memory|ram_dq_8_2:u_mem3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCFF_X53_Y19_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_data_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_data_0_ ));

// atom is at M4K_X52_Y19
cycloneii_ram_block \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|u_memory|mem_wrn_1_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_kirsch|u_memory|mem_data_7_ ,\u_kirsch|u_memory|mem_data_6_ ,\u_kirsch|u_memory|mem_data_5_ ,\u_kirsch|u_memory|mem_data_4_ ,\u_kirsch|u_memory|mem_data_3_ ,\u_kirsch|u_memory|mem_data_2_ ,\u_kirsch|u_memory|mem_data_1_ ,\u_kirsch|u_memory|mem_data_0_ }),
	.portaaddr({\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ,
\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z15 }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .logical_ram_name = "kirsch:u_kirsch|memory:u_memory|ram_dq_8_1:u_mem2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N10
cycloneii_lcell_comb \u_kirsch|u_memory|ix5021z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx5021z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [0]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_0_ 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|mem_data_0_ ),
	.datac(\u_kirsch|u_memory|u_mem2_mem|ix64056z29482|auto_generated|q_a [0]),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx5021z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix5021z52924 .lut_mask = 16'hE4E4;
defparam \u_kirsch|u_memory|ix5021z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N22
cycloneii_lcell_comb \u_kirsch|u_memory|ix5021z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx5021z1  = \u_kirsch|u_memory|b_0_  & (\u_kirsch|u_memory|nx5021z2 ) # !\u_kirsch|u_memory|b_0_  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0]

	.dataa(\u_kirsch|u_memory|b_0_ ),
	.datab(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0]),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|nx5021z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx5021z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix5021z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|u_memory|ix5021z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X52_Y17
cycloneii_ram_block \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|u_memory|mem_wrn_0_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_kirsch|u_memory|mem_data_7_ ,\u_kirsch|u_memory|mem_data_6_ ,\u_kirsch|u_memory|mem_data_5_ ,\u_kirsch|u_memory|mem_data_4_ ,\u_kirsch|u_memory|mem_data_3_ ,\u_kirsch|u_memory|mem_data_2_ ,\u_kirsch|u_memory|mem_data_1_ ,\u_kirsch|u_memory|mem_data_0_ }),
	.portaaddr({\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ,
\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ,\u_kirsch|u_memory|modgen_counter_column|nx58250z15 }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .logical_ram_name = "kirsch:u_kirsch|memory:u_memory|ram_dq_8_0:u_mem1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_memory|ix55380z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx55380z2  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [0]) # !\u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|mem_data_0_ 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|mem_data_0_ ),
	.datac(\u_kirsch|u_memory|u_mem1_mem|ix64056z29481|auto_generated|q_a [0]),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx55380z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix55380z52924 .lut_mask = 16'hE4E4;
defparam \u_kirsch|u_memory|ix55380z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y19_N20
cycloneii_lcell_comb \u_kirsch|u_memory|ix55380z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx55380z1  = \u_kirsch|u_memory|b_0__dup_353  & (\u_kirsch|u_memory|nx55380z2 ) # !\u_kirsch|u_memory|b_0__dup_353  & \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0]),
	.datab(\u_kirsch|u_memory|nx55380z2 ),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|b_0__dup_353 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx55380z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix55380z52923 .lut_mask = 16'hCCAA;
defparam \u_kirsch|u_memory|ix55380z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N17
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_wrn_current_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx40106z1 ),
	.sload(vcc),
	.ena(\u_kirsch|u_memory|nx39109z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_wrn_current_2_ ));

// atom is at LCCOMB_X53_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_memory|ix57224z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx57224z1  = \u_kirsch|u_memory|nx60567z2  # \u_kirsch|u_memory|mem_wrn_current_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|nx60567z2 ),
	.datad(\u_kirsch|u_memory|mem_wrn_current_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx57224z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix57224z52923 .lut_mask = 16'hFFF0;
defparam \u_kirsch|u_memory|ix57224z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N31
cycloneii_lcell_ff \u_uw_uart|reg_mdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx40736z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_7_ ));

// atom is at LCCOMB_X56_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_  = !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_7_ 

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|sdout_7_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52923 .lut_mask = 16'h0505;
defparam \u_uw_uart|i_uarts|ix35603z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y19_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_wrn_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|mem_wrn_current_2_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx17757z1 ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_wrn_2_ ));

// atom is at LCCOMB_X54_Y18_N10
cycloneii_lcell_comb \u_kirsch|u_memory|ix39109z52925 (
// Equation(s):
// \u_kirsch|u_memory|nx39109z3  = !\u_uw_uart|o_pixavail  & (!\u_kirsch|u_memory|first_bubble  # !\u_kirsch|u_memory|nx8852z3 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|nx8852z3 ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|u_memory|first_bubble ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx39109z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix39109z52925 .lut_mask = 16'h030F;
defparam \u_kirsch|u_memory|ix39109z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N14
cycloneii_lcell_comb \u_kirsch|u_memory|ix39109z52926 (
// Equation(s):
// \u_kirsch|u_memory|nx39109z4  = !\u_kirsch|u_memory|mem_wrn_current_0_  & !\u_kirsch|u_memory|mem_wrn_current_2_  & !\u_kirsch|u_memory|mem_wrn_current_1_  # !\u_uw_uart|o_pixavail 

	.dataa(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datab(\u_kirsch|u_memory|mem_wrn_current_2_ ),
	.datac(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx39109z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix39109z52926 .lut_mask = 16'h01FF;
defparam \u_kirsch|u_memory|ix39109z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N24
cycloneii_lcell_comb \u_kirsch|u_memory|ix40106z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx40106z1  = \u_kirsch|u_memory|nx8852z1  # \u_uw_uart|o_pixavail  & \u_kirsch|u_memory|nx39109z4  & !\u_kirsch|u_memory|nx39109z3 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_kirsch|u_memory|nx39109z4 ),
	.datac(\u_kirsch|u_memory|nx39109z3 ),
	.datad(\u_kirsch|u_memory|nx8852z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx40106z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix40106z52923 .lut_mask = 16'hFF08;
defparam \u_kirsch|u_memory|ix40106z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N12
cycloneii_lcell_comb \u_kirsch|u_memory|ix39109z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx39109z2  = \u_kirsch|u_memory|nx8852z2  # \u_kirsch|u_memory|nx39109z4  & !\u_kirsch|u_memory|nx39109z3  # !\nrst~combout 

	.dataa(\u_kirsch|u_memory|nx8852z2 ),
	.datab(\nrst~combout ),
	.datac(\u_kirsch|u_memory|nx39109z4 ),
	.datad(\u_kirsch|u_memory|nx39109z3 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx39109z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix39109z52924 .lut_mask = 16'hBBFB;
defparam \u_kirsch|u_memory|ix39109z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N22
cycloneii_lcell_comb \u_kirsch|u_memory|ix39109z52927 (
// Equation(s):
// \u_kirsch|u_memory|nx39109z5  = !\u_kirsch|u_memory|mem_wrn_current_1_  & !\u_kirsch|u_memory|mem_wrn_current_2_  & \u_uw_uart|o_pixavail  & !\u_kirsch|u_memory|mem_wrn_current_0_ 

	.dataa(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datab(\u_kirsch|u_memory|mem_wrn_current_2_ ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx39109z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix39109z52927 .lut_mask = 16'h0010;
defparam \u_kirsch|u_memory|ix39109z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N25
cycloneii_lcell_ff \u_uw_uart|reg_rdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_7_ ));

// atom is at LCCOMB_X54_Y19_N14
cycloneii_lcell_comb \u_uw_uart|ix47405z52923 (
// Equation(s):
// \u_uw_uart|datain_7_  = \u_uw_uart|rdata_7_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_7_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix47405z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix47405z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y18_N17
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_wrn_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|mem_wrn_0_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z1 ),
	.sload(\u_kirsch|u_memory|nx15763z2 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_wrn_0_ ));

// atom is at LCFF_X51_Y19_N3
cycloneii_lcell_ff \u_kirsch|u_memory|reg_mem_wrn_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx17757z1 ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|mem_wrn_1_ ));

// atom is at LCFF_X50_Y21_N27
cycloneii_lcell_ff \u_uw_uart|reg_rdata_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_6_ ));

// atom is at LCCOMB_X54_Y19_N10
cycloneii_lcell_comb \u_uw_uart|ix46408z52923 (
// Equation(s):
// \u_uw_uart|datain_6_  = \u_uw_uart|rdata_6_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_6_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46408z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix46408z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N21
cycloneii_lcell_ff \u_uw_uart|reg_rdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_5_ ));

// atom is at LCCOMB_X54_Y19_N16
cycloneii_lcell_comb \u_uw_uart|ix45411z52923 (
// Equation(s):
// \u_uw_uart|datain_5_  = \u_uw_uart|rdata_5_  & \u_uw_uart|o_pixavail 

	.dataa(\u_uw_uart|rdata_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix45411z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix45411z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N23
cycloneii_lcell_ff \u_uw_uart|reg_rdata_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_4_ ));

// atom is at LCCOMB_X53_Y19_N30
cycloneii_lcell_comb \u_uw_uart|ix44414z52923 (
// Equation(s):
// \u_uw_uart|datain_4_  = \u_uw_uart|rdata_4_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_4_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix44414z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix44414z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N9
cycloneii_lcell_ff \u_uw_uart|reg_rdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_3_ ));

// atom is at LCCOMB_X54_Y19_N28
cycloneii_lcell_comb \u_uw_uart|ix43417z52923 (
// Equation(s):
// \u_uw_uart|datain_3_  = \u_uw_uart|rdata_3_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_3_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix43417z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix43417z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N11
cycloneii_lcell_ff \u_uw_uart|reg_rdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_2_ ));

// atom is at LCCOMB_X54_Y19_N12
cycloneii_lcell_comb \u_uw_uart|ix42420z52923 (
// Equation(s):
// \u_uw_uart|datain_2_  = \u_uw_uart|rdata_2_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_2_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42420z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix42420z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N13
cycloneii_lcell_ff \u_uw_uart|reg_rdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_1_ ));

// atom is at LCCOMB_X53_Y19_N2
cycloneii_lcell_comb \u_uw_uart|ix41423z52923 (
// Equation(s):
// \u_uw_uart|datain_1_  = \u_uw_uart|rdata_1_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix41423z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix41423z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y21_N31
cycloneii_lcell_ff \u_uw_uart|reg_rdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_0_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_0_ ));

// atom is at LCCOMB_X53_Y19_N0
cycloneii_lcell_comb \u_uw_uart|ix40426z52923 (
// Equation(s):
// \u_uw_uart|datain_0_  = \u_uw_uart|rdata_0_  & \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_0_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40426z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix40426z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N30
cycloneii_lcell_comb \u_uw_uart|ix40736z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_6_  = \u_kirsch|u_flow|o_valid  & !\u_uw_uart|nx40736z1  & (\nrst~combout  # !\u_kirsch|o_mode_0_ ) # !\u_kirsch|u_flow|o_valid  & (\nrst~combout  # !\u_kirsch|o_mode_0_ )

	.dataa(\u_kirsch|u_flow|o_valid ),
	.datab(\u_kirsch|o_mode_0_ ),
	.datac(\u_uw_uart|nx40736z1 ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52923 .lut_mask = 16'h5F13;
defparam \u_uw_uart|ix40736z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N28
cycloneii_lcell_comb \u_kirsch|u_memory|ix17757z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx17757z1  = \u_kirsch|u_memory|nx8852z2  # \u_kirsch|u_memory|nx39109z4  # !\nrst~combout 

	.dataa(\u_kirsch|u_memory|nx8852z2 ),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(\u_kirsch|u_memory|nx39109z4 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx17757z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix17757z52923 .lut_mask = 16'hFFAF;
defparam \u_kirsch|u_memory|ix17757z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_7_ ));

// atom is at LCCOMB_X53_Y21_N16
cycloneii_lcell_comb \u_kirsch|u_memory|ix15763z52925 (
// Equation(s):
// \u_kirsch|u_memory|nx15763z3  = !\u_kirsch|u_memory|mem_wrn_current_0_  & !\u_kirsch|u_memory|mem_wrn_current_1_  & !\u_kirsch|u_memory|mem_wrn_current_2_ 

	.dataa(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datab(\u_kirsch|u_memory|mem_wrn_current_1_ ),
	.datac(\u_kirsch|u_memory|mem_wrn_current_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx15763z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix15763z52925 .lut_mask = 16'h0101;
defparam \u_kirsch|u_memory|ix15763z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N14
cycloneii_lcell_comb \u_kirsch|u_memory|ix15763z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx15763z2  = !\u_kirsch|u_memory|nx8852z2  & \u_kirsch|u_memory|nx15763z3  & \nrst~combout  & \u_uw_uart|o_pixavail 

	.dataa(\u_kirsch|u_memory|nx8852z2 ),
	.datab(\u_kirsch|u_memory|nx15763z3 ),
	.datac(\nrst~combout ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx15763z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix15763z52924 .lut_mask = 16'h4000;
defparam \u_kirsch|u_memory|ix15763z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y21_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_6_ ));

// atom is at LCFF_X51_Y21_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_5_ ));

// atom is at LCFF_X51_Y21_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_4_ ));

// atom is at LCFF_X51_Y21_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_3_ ));

// atom is at LCFF_X51_Y21_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_2_ ));

// atom is at LCFF_X51_Y21_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_1_ ));

// atom is at LCFF_X51_Y21_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_0_ ));

// atom is at LCFF_X51_Y21_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_7_ ));

// atom is at LCFF_X51_Y21_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_6_ ));

// atom is at LCFF_X51_Y21_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_5_ ));

// atom is at LCFF_X51_Y21_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_4_ ));

// atom is at LCFF_X51_Y21_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_3_ ));

// atom is at LCFF_X51_Y21_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_2_ ));

// atom is at LCFF_X51_Y21_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_1_ ));

// atom is at LCFF_X51_Y21_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_0_ ));

// atom is at LCCOMB_X53_Y21_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix54636z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx54636z1  = \u_uw_uart|i_uarts|RxFSM_3_  & \u_uw_uart|i_uarts|TopRx 

	.dataa(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|TopRx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx54636z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix54636z52924 .lut_mask = 16'hAA00;
defparam \u_uw_uart|i_uarts|ix54636z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N30
cycloneii_lcell_comb \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell (
// Equation(s):
// \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout  = !\u_kirsch|u_flow|ix45188z19900|nx100z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|ix45188z19900|nx100z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|u_flow|ix45188z19900|nx100z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|not_Rx_r~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout  = !\u_uw_uart|i_uarts|not_Rx_r 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|not_Rx_r ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|not_Rx_r~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|not_Rx_r~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N12
cycloneii_lcell_comb \u_kirsch|f_i_mode_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_i_mode_next_1_~feeder_combout  = \nrst~combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_mode_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_mode_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_mode_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y18_N0
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_3_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_3_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z9 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx58250z9 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_row_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N30
cycloneii_lcell_comb \u_kirsch|u_flow|o_row_3_~feeder (
// Equation(s):
// \u_kirsch|u_flow|o_row_3_~feeder_combout  = \u_kirsch|u_flow|nx30069z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx30069z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_row_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|o_row_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|o_row_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N6
cycloneii_lcell_comb \u_uw_uart|sdout_0_~feeder (
// Equation(s):
// \u_uw_uart|sdout_0_~feeder_combout  = \u_uw_uart|mdata_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N0
cycloneii_lcell_comb \u_kirsch|u_flow|nx30069z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx30069z1~feeder_combout  = \u_kirsch|u_flow|nx24934z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx24934z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx30069z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx30069z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx30069z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N18
cycloneii_lcell_comb \u_uw_uart|mdata_0_~feeder (
// Equation(s):
// \u_uw_uart|mdata_0_~feeder_combout  = \u_kirsch|u_flow|o_edge 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|o_edge ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|mdata_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|mdata_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N0
cycloneii_lcell_comb \u_uw_uart|sdout_1_~feeder (
// Equation(s):
// \u_uw_uart|sdout_1_~feeder_combout  = \u_uw_uart|mdata_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N10
cycloneii_lcell_comb \u_kirsch|u_flow|nx24934z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx24934z1~feeder_combout  = \u_kirsch|u_flow|nx19799z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_flow|nx19799z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx24934z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx24934z1~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|nx24934z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y21_N0
cycloneii_lcell_comb \u_kirsch|u_flow|o_edge~feeder (
// Equation(s):
// \u_kirsch|u_flow|o_edge~feeder_combout  = \u_kirsch|u_flow|prev_edge 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|prev_edge ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_edge~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|o_edge~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|o_edge~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N24
cycloneii_lcell_comb \u_uw_uart|sdout_2_~feeder (
// Equation(s):
// \u_uw_uart|sdout_2_~feeder_combout  = \u_uw_uart|mdata_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N22
cycloneii_lcell_comb \u_kirsch|f_i_row_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_3_~feeder_combout  = \u_kirsch|u_memory|o_row_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_row_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_row_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N24
cycloneii_lcell_comb \u_kirsch|f_i_row_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_2_~feeder_combout  = \u_kirsch|u_memory|o_row_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_row_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_row_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N2
cycloneii_lcell_comb \u_uw_uart|sdout_3_~feeder (
// Equation(s):
// \u_uw_uart|sdout_3_~feeder_combout  = \u_uw_uart|mdata_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N0
cycloneii_lcell_comb \u_kirsch|u_flow|p31_11_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_11_~feeder_combout  = \u_kirsch|u_flow|p21_11_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_11_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_11_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_11_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_11_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y20_N30
cycloneii_lcell_comb \u_kirsch|u_flow|p31_12_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_12_~feeder_combout  = \u_kirsch|u_flow|p21_12_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_12_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_12_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_12_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_12_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N0
cycloneii_lcell_comb \u_kirsch|u_flow|p31_10_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_10_~feeder_combout  = \u_kirsch|u_flow|p21_10_ 

	.dataa(\u_kirsch|u_flow|p21_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_10_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_10_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|u_flow|p31_10_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N0
cycloneii_lcell_comb \u_kirsch|u_flow|p31_9_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_9_~feeder_combout  = \u_kirsch|u_flow|p21_9_ 

	.dataa(\u_kirsch|u_flow|p21_9_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_9_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|u_flow|p31_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p31_8_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_8_~feeder_combout  = \u_kirsch|u_flow|p21_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_8_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p31_7_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_7_~feeder_combout  = \u_kirsch|u_flow|p21_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N2
cycloneii_lcell_comb \u_kirsch|u_flow|p31_6_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_6_~feeder_combout  = \u_kirsch|u_flow|p21_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_flow|p31_5_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_5_~feeder_combout  = \u_kirsch|u_flow|p21_5_ 

	.dataa(\u_kirsch|u_flow|p21_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_5_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|u_flow|p31_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N28
cycloneii_lcell_comb \u_kirsch|u_flow|p31_4_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_4_~feeder_combout  = \u_kirsch|u_flow|p21_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y20_N30
cycloneii_lcell_comb \u_kirsch|u_flow|p31_3_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_3_~feeder_combout  = \u_kirsch|u_flow|p21_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p21_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|u_flow|p31_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y19_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p31_2_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_2_~feeder_combout  = \u_kirsch|u_flow|p21_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N26
cycloneii_lcell_comb \u_kirsch|u_flow|p31_1_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_1_~feeder_combout  = \u_kirsch|u_flow|p21_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p21_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p31_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y19_N28
cycloneii_lcell_comb \u_kirsch|u_flow|p31_0_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p31_0_~feeder_combout  = \u_kirsch|u_flow|p21_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|u_flow|p21_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p31_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p31_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|u_flow|p31_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N20
cycloneii_lcell_comb \u_kirsch|u_flow|p32_10_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_10_~feeder_combout  = \u_kirsch|u_flow|p23_10_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_10_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_10_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_10_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_10_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N30
cycloneii_lcell_comb \u_kirsch|u_flow|p32_7_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_7_~feeder_combout  = \u_kirsch|u_flow|p23_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N24
cycloneii_lcell_comb \u_kirsch|u_flow|p32_6_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_6_~feeder_combout  = \u_kirsch|u_flow|p23_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y18_N8
cycloneii_lcell_comb \u_kirsch|u_flow|p32_3_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_3_~feeder_combout  = \u_kirsch|u_flow|p23_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N28
cycloneii_lcell_comb \u_kirsch|u_flow|p32_2_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_2_~feeder_combout  = \u_kirsch|u_flow|p23_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y21_N22
cycloneii_lcell_comb \u_kirsch|u_flow|p32_1_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_1_~feeder_combout  = \u_kirsch|u_flow|p23_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y22_N16
cycloneii_lcell_comb \u_kirsch|u_flow|p32_0_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p32_0_~feeder_combout  = \u_kirsch|u_flow|p23_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|p23_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p32_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p32_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p32_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N20
cycloneii_lcell_comb \u_uw_uart|sdout_5_~feeder (
// Equation(s):
// \u_uw_uart|sdout_5_~feeder_combout  = \u_uw_uart|mdata_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|mdata_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_5_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|sdout_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N18
cycloneii_lcell_comb \u_kirsch|f_t1_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_7_~feeder_combout  = \u_kirsch|f_t2_next_7_ 

	.dataa(\u_kirsch|f_t2_next_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_7_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_t1_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N4
cycloneii_lcell_comb \u_kirsch|f_i2_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_7_~feeder_combout  = \u_kirsch|f_t1_next_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t1_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i2_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N10
cycloneii_lcell_comb \u_kirsch|f_t1_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_6_~feeder_combout  = \u_kirsch|f_t2_next_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t2_next_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t1_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N26
cycloneii_lcell_comb \u_kirsch|f_i2_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_6_~feeder_combout  = \u_kirsch|f_t1_next_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t1_next_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i2_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N10
cycloneii_lcell_comb \u_kirsch|f_t1_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_5_~feeder_combout  = \u_kirsch|f_t2_next_5_ 

	.dataa(\u_kirsch|f_t2_next_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_5_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_t1_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N28
cycloneii_lcell_comb \u_kirsch|f_i2_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_5_~feeder_combout  = \u_kirsch|f_t1_next_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t1_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i2_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N30
cycloneii_lcell_comb \u_kirsch|f_t1_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_4_~feeder_combout  = \u_kirsch|f_t2_next_4_ 

	.dataa(\u_kirsch|f_t2_next_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_4_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_t1_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N4
cycloneii_lcell_comb \u_kirsch|f_i2_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_4_~feeder_combout  = \u_kirsch|f_t1_next_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t1_next_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_i2_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N14
cycloneii_lcell_comb \u_kirsch|f_t1_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_3_~feeder_combout  = \u_kirsch|f_t2_next_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t2_next_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_t1_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N18
cycloneii_lcell_comb \u_kirsch|f_i2_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_3_~feeder_combout  = \u_kirsch|f_t1_next_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t1_next_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_i2_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N22
cycloneii_lcell_comb \u_kirsch|f_t1_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_2_~feeder_combout  = \u_kirsch|f_t2_next_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t2_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t1_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N0
cycloneii_lcell_comb \u_kirsch|f_i2_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_2_~feeder_combout  = \u_kirsch|f_t1_next_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t1_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i2_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N10
cycloneii_lcell_comb \u_kirsch|f_t1_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_1_~feeder_combout  = \u_kirsch|f_t2_next_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t2_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t1_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N8
cycloneii_lcell_comb \u_kirsch|f_i2_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_1_~feeder_combout  = \u_kirsch|f_t1_next_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t1_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i2_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N6
cycloneii_lcell_comb \u_kirsch|f_i2_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_i2_next_0_~feeder_combout  = \u_kirsch|f_t1_next_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t1_next_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i2_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i2_next_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_i2_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N4
cycloneii_lcell_comb \u_kirsch|f_t1_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_t1_next_0_~feeder_combout  = \u_kirsch|f_t2_next_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_t2_next_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t1_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t1_next_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_t1_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N24
cycloneii_lcell_comb \u_kirsch|f_t2_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_7_~feeder_combout  = \u_kirsch|f_t3_next_7_ 

	.dataa(\u_kirsch|f_t3_next_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_7_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_t2_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N0
cycloneii_lcell_comb \u_kirsch|f_t2_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_6_~feeder_combout  = \u_kirsch|f_t3_next_6_ 

	.dataa(\u_kirsch|f_t3_next_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_6_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_t2_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N24
cycloneii_lcell_comb \u_kirsch|f_t2_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_5_~feeder_combout  = \u_kirsch|f_t3_next_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t3_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t2_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N20
cycloneii_lcell_comb \u_kirsch|f_t2_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_4_~feeder_combout  = \u_kirsch|f_t3_next_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t3_next_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t2_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N4
cycloneii_lcell_comb \u_kirsch|f_t2_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_3_~feeder_combout  = \u_kirsch|f_t3_next_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t3_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t2_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N12
cycloneii_lcell_comb \u_kirsch|f_t2_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_2_~feeder_combout  = \u_kirsch|f_t3_next_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t3_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t2_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N0
cycloneii_lcell_comb \u_kirsch|f_t2_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_1_~feeder_combout  = \u_kirsch|f_t3_next_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t3_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t2_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N14
cycloneii_lcell_comb \u_kirsch|f_t2_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_t2_next_0_~feeder_combout  = \u_kirsch|f_t3_next_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_t3_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t2_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t2_next_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t2_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N30
cycloneii_lcell_comb \u_kirsch|f_b1_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_7_~feeder_combout  = \u_kirsch|f_b2_next_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b2_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b1_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N6
cycloneii_lcell_comb \u_kirsch|f_i1_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_7_~feeder_combout  = \u_kirsch|f_b1_next_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b1_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i1_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N14
cycloneii_lcell_comb \u_kirsch|f_b1_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_6_~feeder_combout  = \u_kirsch|f_b2_next_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b2_next_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b1_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N24
cycloneii_lcell_comb \u_kirsch|f_i1_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_6_~feeder_combout  = \u_kirsch|f_b1_next_6_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b1_next_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_6_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_i1_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N18
cycloneii_lcell_comb \u_kirsch|f_b1_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_5_~feeder_combout  = \u_kirsch|f_b2_next_5_ 

	.dataa(\u_kirsch|f_b2_next_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_5_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_b1_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N6
cycloneii_lcell_comb \u_kirsch|f_i1_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_5_~feeder_combout  = \u_kirsch|f_b1_next_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b1_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i1_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N14
cycloneii_lcell_comb \u_kirsch|f_b1_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_4_~feeder_combout  = \u_kirsch|f_b2_next_4_ 

	.dataa(\u_kirsch|f_b2_next_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_4_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_b1_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N30
cycloneii_lcell_comb \u_kirsch|f_i1_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_4_~feeder_combout  = \u_kirsch|f_b1_next_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b1_next_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_i1_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N8
cycloneii_lcell_comb \u_kirsch|f_b1_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_3_~feeder_combout  = \u_kirsch|f_b2_next_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b2_next_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_b1_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N30
cycloneii_lcell_comb \u_kirsch|u_memory|o_image1_1__3_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image1_1__3_~feeder_combout  = \u_kirsch|u_memory|o_image2_1__3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_1__3_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image1_1__3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image1_1__3_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_memory|o_image1_1__3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N28
cycloneii_lcell_comb \u_kirsch|f_i1_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_3_~feeder_combout  = \u_kirsch|f_b1_next_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b1_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i1_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N8
cycloneii_lcell_comb \u_kirsch|f_b1_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_2_~feeder_combout  = \u_kirsch|f_b2_next_2_ 

	.dataa(\u_kirsch|f_b2_next_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_2_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_b1_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N14
cycloneii_lcell_comb \u_kirsch|u_memory|o_image1_1__2_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image1_1__2_~feeder_combout  = \u_kirsch|u_memory|o_image2_1__2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_image2_1__2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image1_1__2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image1_1__2_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_memory|o_image1_1__2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N10
cycloneii_lcell_comb \u_kirsch|f_i1_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_2_~feeder_combout  = \u_kirsch|f_b1_next_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b1_next_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_2_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_i1_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N24
cycloneii_lcell_comb \u_kirsch|f_b1_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_1_~feeder_combout  = \u_kirsch|f_b2_next_1_ 

	.dataa(\u_kirsch|f_b2_next_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_1_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_b1_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N2
cycloneii_lcell_comb \u_kirsch|f_i1_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_1_~feeder_combout  = \u_kirsch|f_b1_next_1_ 

	.dataa(\u_kirsch|f_b1_next_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_1_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_i1_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N12
cycloneii_lcell_comb \u_kirsch|f_i1_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_i1_next_0_~feeder_combout  = \u_kirsch|f_b1_next_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b1_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i1_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i1_next_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i1_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N26
cycloneii_lcell_comb \u_kirsch|f_b1_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_b1_next_0_~feeder_combout  = \u_kirsch|f_b2_next_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b2_next_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b1_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b1_next_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_b1_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N20
cycloneii_lcell_comb \u_kirsch|f_b2_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_7_~feeder_combout  = \u_kirsch|f_b3_next_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b2_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N12
cycloneii_lcell_comb \u_kirsch|f_b2_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_6_~feeder_combout  = \u_kirsch|f_b3_next_6_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b3_next_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_6_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_b2_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N16
cycloneii_lcell_comb \u_kirsch|f_b2_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_5_~feeder_combout  = \u_kirsch|f_b3_next_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b2_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N20
cycloneii_lcell_comb \u_kirsch|f_b2_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_4_~feeder_combout  = \u_kirsch|f_b3_next_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b2_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N12
cycloneii_lcell_comb \u_kirsch|f_b2_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_3_~feeder_combout  = \u_kirsch|f_b3_next_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b2_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N28
cycloneii_lcell_comb \u_kirsch|f_b2_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_2_~feeder_combout  = \u_kirsch|f_b3_next_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b2_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N30
cycloneii_lcell_comb \u_kirsch|f_b2_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_1_~feeder_combout  = \u_kirsch|f_b3_next_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_b3_next_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_1_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_b2_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y19_N24
cycloneii_lcell_comb \u_kirsch|f_b2_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_b2_next_0_~feeder_combout  = \u_kirsch|f_b3_next_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_b3_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b2_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b2_next_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b2_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N0
cycloneii_lcell_comb \u_kirsch|f_b3_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_7_~feeder_combout  = \u_kirsch|f_i2_next_7_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i2_next_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_7_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_b3_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N16
cycloneii_lcell_comb \u_kirsch|f_t3_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_7_~feeder_combout  = \u_kirsch|f_i1_next_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t3_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N4
cycloneii_lcell_comb \u_kirsch|f_b3_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_6_~feeder_combout  = \u_kirsch|f_i2_next_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b3_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N16
cycloneii_lcell_comb \u_kirsch|f_t3_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_6_~feeder_combout  = \u_kirsch|f_i1_next_6_ 

	.dataa(\u_kirsch|f_i1_next_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_6_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|f_t3_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y17_N26
cycloneii_lcell_comb \u_kirsch|u_memory|o_image0_0__6_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image0_0__6_~feeder_combout  = \u_kirsch|u_memory|o_image1_0__6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_image1_0__6_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image0_0__6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image0_0__6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image0_0__6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N8
cycloneii_lcell_comb \u_kirsch|f_b3_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_5_~feeder_combout  = \u_kirsch|f_i2_next_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b3_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N0
cycloneii_lcell_comb \u_kirsch|f_t3_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_5_~feeder_combout  = \u_kirsch|f_i1_next_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t3_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N10
cycloneii_lcell_comb \u_kirsch|f_b3_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_4_~feeder_combout  = \u_kirsch|f_i2_next_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i2_next_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_b3_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N2
cycloneii_lcell_comb \u_kirsch|f_t3_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_4_~feeder_combout  = \u_kirsch|f_i1_next_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i1_next_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|f_t3_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N20
cycloneii_lcell_comb \u_kirsch|f_b3_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_3_~feeder_combout  = \u_kirsch|f_i2_next_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b3_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y18_N26
cycloneii_lcell_comb \u_kirsch|f_t3_next_3_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_3_~feeder_combout  = \u_kirsch|f_i1_next_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t3_next_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N26
cycloneii_lcell_comb \u_kirsch|f_b3_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_2_~feeder_combout  = \u_kirsch|f_i2_next_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b3_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y19_N2
cycloneii_lcell_comb \u_kirsch|f_t3_next_2_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_2_~feeder_combout  = \u_kirsch|f_i1_next_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t3_next_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N28
cycloneii_lcell_comb \u_kirsch|f_b3_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_1_~feeder_combout  = \u_kirsch|f_i2_next_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b3_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N16
cycloneii_lcell_comb \u_kirsch|f_t3_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_1_~feeder_combout  = \u_kirsch|f_i1_next_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t3_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N18
cycloneii_lcell_comb \u_kirsch|f_t3_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_t3_next_0_~feeder_combout  = \u_kirsch|f_i1_next_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i1_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_t3_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_t3_next_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_t3_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y17_N22
cycloneii_lcell_comb \u_kirsch|f_b3_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_b3_next_0_~feeder_combout  = \u_kirsch|f_i2_next_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_i2_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_b3_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_b3_next_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_b3_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y17_N28
cycloneii_lcell_comb \u_kirsch|u_memory|o_image0_1__6_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image0_1__6_~feeder_combout  = \u_kirsch|u_memory|o_image1_1__6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_image1_1__6_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image0_1__6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image0_1__6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image0_1__6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N24
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__7_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__7_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7]

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [7]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__7_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|u_memory|o_image2_2__7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y18_N16
cycloneii_lcell_comb \u_kirsch|u_memory|mem_wrn_0_~feeder (
// Equation(s):
// \u_kirsch|u_memory|mem_wrn_0_~feeder_combout  = \u_kirsch|u_memory|mem_wrn_current_0_ 

	.dataa(\u_kirsch|u_memory|mem_wrn_current_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|mem_wrn_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|mem_wrn_0_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|u_memory|mem_wrn_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N30
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__6_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__6_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [6]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image2_2__6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N20
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__5_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__5_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image2_2__5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N26
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__4_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__4_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [4]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image2_2__4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__3_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__3_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image2_2__3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N4
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__2_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__2_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2]

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [2]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__2_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|u_memory|o_image2_2__2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N22
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__1_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__1_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1]

	.dataa(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [1]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__1_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|u_memory|o_image2_2__1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y19_N8
cycloneii_lcell_comb \u_kirsch|u_memory|o_image2_2__0_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_image2_2__0_~feeder_combout  = \u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|u_mem3_mem|ix64056z29483|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_image2_2__0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_image2_2__0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_image2_2__0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y20_N0
cycloneii_lcell_comb \u_kirsch|u_memory|mem_wrn_current_0_~feeder (
// Equation(s):
// \u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout  = \u_kirsch|u_memory|mem_wrn_current_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|mem_wrn_current_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|mem_wrn_current_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|mem_wrn_current_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|u_memory|mem_wrn_current_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N14
cycloneii_lcell_comb \u_uw_uart|sdout_7_~feeder (
// Equation(s):
// \u_uw_uart|sdout_7_~feeder_combout  = \u_uw_uart|mdata_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|mdata_7_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_7_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|sdout_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N24
cycloneii_lcell_comb \u_uw_uart|rdata_7_~feeder (
// Equation(s):
// \u_uw_uart|rdata_7_~feeder_combout  = \u_uw_uart|i_uarts|Dout_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_7_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N26
cycloneii_lcell_comb \u_uw_uart|rdata_6_~feeder (
// Equation(s):
// \u_uw_uart|rdata_6_~feeder_combout  = \u_uw_uart|i_uarts|Dout_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N20
cycloneii_lcell_comb \u_uw_uart|rdata_5_~feeder (
// Equation(s):
// \u_uw_uart|rdata_5_~feeder_combout  = \u_uw_uart|i_uarts|Dout_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N22
cycloneii_lcell_comb \u_uw_uart|rdata_4_~feeder (
// Equation(s):
// \u_uw_uart|rdata_4_~feeder_combout  = \u_uw_uart|i_uarts|Dout_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N10
cycloneii_lcell_comb \u_uw_uart|rdata_2_~feeder (
// Equation(s):
// \u_uw_uart|rdata_2_~feeder_combout  = \u_uw_uart|i_uarts|Dout_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y21_N12
cycloneii_lcell_comb \u_uw_uart|rdata_1_~feeder (
// Equation(s):
// \u_uw_uart|rdata_1_~feeder_combout  = \u_uw_uart|i_uarts|Dout_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_7_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_7_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_7_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_5_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_4_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_3_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_2_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_2_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_1_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_1_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_1_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y21_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|TxDivisor_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|TxDivisor_5_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart|i_uarts|TxDivisor_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_N2
cycloneii_io clk_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  $ VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 .lut_mask = 16'h33CC;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_G26
cycloneii_io nrst_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\nrst~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nrst));
// synopsys translate_off
defparam nrst_ibuf.input_async_reset = "none";
defparam nrst_ibuf.input_power_up = "low";
defparam nrst_ibuf.input_register_mode = "none";
defparam nrst_ibuf.input_sync_reset = "none";
defparam nrst_ibuf.oe_async_reset = "none";
defparam nrst_ibuf.oe_power_up = "low";
defparam nrst_ibuf.oe_register_mode = "none";
defparam nrst_ibuf.oe_sync_reset = "none";
defparam nrst_ibuf.operation_mode = "input";
defparam nrst_ibuf.output_async_reset = "none";
defparam nrst_ibuf.output_power_up = "low";
defparam nrst_ibuf.output_register_mode = "none";
defparam nrst_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ));

// atom is at LCCOMB_X55_Y22_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ));

// atom is at LCCOMB_X55_Y22_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ));

// atom is at LCCOMB_X55_Y22_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ));

// atom is at LCCOMB_X55_Y22_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ));

// atom is at LCCOMB_X54_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z6  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z4  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52926 .lut_mask = 16'h4000;
defparam \u_uw_uart|i_uarts|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y22_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ));

// atom is at LCCOMB_X55_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ));

// atom is at LCCOMB_X55_Y22_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2  $ \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y22_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ));

// atom is at LCCOMB_X54_Y22_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z3  = \u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52925 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z2  = \u_uw_uart|i_uarts|nx32400z5  & \u_uw_uart|i_uarts|nx32400z4  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  & \u_uw_uart|i_uarts|nx32400z3 

	.dataa(\u_uw_uart|i_uarts|nx32400z5 ),
	.datab(\u_uw_uart|i_uarts|nx32400z4 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|i_uarts|nx32400z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52924 .lut_mask = 16'h8000;
defparam \u_uw_uart|i_uarts|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z9  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52931 .lut_mask = 16'h000F;
defparam \u_uw_uart|i_uarts|ix32400z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z8  = !\u_uw_uart|i_uarts|TxDivisor_5_  & \u_uw_uart|i_uarts|nx32400z9  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|nx32400z9 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52930 .lut_mask = 16'h0004;
defparam \u_uw_uart|i_uarts|ix32400z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z1  = \u_uw_uart|i_uarts|nx32400z2  # \u_uw_uart|i_uarts|nx32400z7  & \u_uw_uart|i_uarts|nx32400z6  & \u_uw_uart|i_uarts|nx32400z8 

	.dataa(\u_uw_uart|i_uarts|nx32400z7 ),
	.datab(\u_uw_uart|i_uarts|nx32400z6 ),
	.datac(\u_uw_uart|i_uarts|nx32400z2 ),
	.datad(\u_uw_uart|i_uarts|nx32400z8 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52923 .lut_mask = 16'hF8F0;
defparam \u_uw_uart|i_uarts|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopTx ));

// atom is at LCCOMB_X55_Y21_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z1  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ (!\u_uw_uart|i_uarts|TxFSM_0_  & \u_uw_uart|i_uarts|TopTx )) # !\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  # \u_uw_uart|i_uarts|TxFSM_0_ 
//  & \u_uw_uart|i_uarts|TopTx )

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52923 .lut_mask = 16'hD6F0;
defparam \u_uw_uart|i_uarts|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_0_ ));

// atom is at LCCOMB_X55_Y21_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z2  = \u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxFSM_0_  $ \u_uw_uart|i_uarts|TxFSM_1_ )

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52924 .lut_mask = 16'h2828;
defparam \u_uw_uart|i_uarts|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix49923z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx49923z1  = \u_uw_uart|i_uarts|nx51917z2  & !\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ !\u_uw_uart|i_uarts|TxBitCnt_1_ ) # !\u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|TxBitCnt_1_ )

	.dataa(\u_uw_uart|i_uarts|nx50920z2 ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix49923z52923 .lut_mask = 16'h41F0;
defparam \u_uw_uart|i_uarts|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_1_ ));

// atom is at LCCOMB_X54_Y23_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z3  = \u_uw_uart|i_uarts|TxBitCnt_1_  # \u_uw_uart|i_uarts|TxBitCnt_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52925 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|i_uarts|ix50920z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z1  = \u_uw_uart|i_uarts|nx51917z2  & !\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|nx50920z3  $ !\u_uw_uart|i_uarts|TxBitCnt_2_ ) # !\u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|TxBitCnt_2_ )

	.dataa(\u_uw_uart|i_uarts|nx50920z2 ),
	.datab(\u_uw_uart|i_uarts|nx50920z3 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52923 .lut_mask = 16'h41F0;
defparam \u_uw_uart|i_uarts|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_2_ ));

// atom is at LCCOMB_X54_Y23_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z3  = \u_uw_uart|i_uarts|TxBitCnt_2_  # \u_uw_uart|i_uarts|TxBitCnt_1_  # \u_uw_uart|i_uarts|TxBitCnt_0_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52925 .lut_mask = 16'hFFFC;
defparam \u_uw_uart|i_uarts|ix51917z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z4  = \u_uw_uart|i_uarts|nx50920z2  # !\u_uw_uart|i_uarts|TxBitCnt_2_  & !\u_uw_uart|i_uarts|TxBitCnt_3_  & !\u_uw_uart|i_uarts|nx50920z3 

	.dataa(\u_uw_uart|i_uarts|nx50920z2 ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52926 .lut_mask = 16'hAAAB;
defparam \u_uw_uart|i_uarts|ix51917z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z1  = \u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|nx51917z4  # \u_uw_uart|i_uarts|nx51917z3  & \u_uw_uart|i_uarts|TxBitCnt_3_ ) # !\u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|TxBitCnt_3_ )

	.dataa(\u_uw_uart|i_uarts|nx51917z2 ),
	.datab(\u_uw_uart|i_uarts|nx51917z3 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52923 .lut_mask = 16'hFAD0;
defparam \u_uw_uart|i_uarts|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_3_ ));

// atom is at LCCOMB_X54_Y22_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z3  = \u_uw_uart|i_uarts|TxBitCnt_2_  # \u_uw_uart|i_uarts|TxBitCnt_3_  # \u_uw_uart|i_uarts|TxBitCnt_1_  # !\u_uw_uart|i_uarts|TxBitCnt_0_ 

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52925 .lut_mask = 16'hFFFD;
defparam \u_uw_uart|i_uarts|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y20_N0
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52939 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx51271z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z31  $ VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z30  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N28
cycloneii_lcell_comb \u_uw_uart|ix33354z52924 (
// Equation(s):
// \u_uw_uart|nx33354z2  = \u_uw_uart|nx39480z2  # !\nrst~combout 

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|nx39480z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52924 .lut_mask = 16'hF3F3;
defparam \u_uw_uart|ix33354z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_C25
cycloneii_io rxflex_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam rxflex_ibuf.input_async_reset = "none";
defparam rxflex_ibuf.input_power_up = "low";
defparam rxflex_ibuf.input_register_mode = "none";
defparam rxflex_ibuf.input_sync_reset = "none";
defparam rxflex_ibuf.oe_async_reset = "none";
defparam rxflex_ibuf.oe_power_up = "low";
defparam rxflex_ibuf.oe_register_mode = "none";
defparam rxflex_ibuf.oe_sync_reset = "none";
defparam rxflex_ibuf.operation_mode = "input";
defparam rxflex_ibuf.output_async_reset = "none";
defparam rxflex_ibuf.output_power_up = "low";
defparam rxflex_ibuf.output_register_mode = "none";
defparam rxflex_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix57064z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Rx  = !\rxflex~combout  # !\nrst~combout 

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Rx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix57064z52923 .lut_mask = 16'h33FF;
defparam \u_uw_uart|i_uarts|ix57064z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Rx ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|not_Rx_r ));

// atom is at LCCOMB_X54_Y23_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|RxFSM_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout  = \u_uw_uart|i_uarts|RxFSM_1_ 

	.dataa(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|RxFSM_6_~feeder .lut_mask = 16'hAAAA;
defparam \u_uw_uart|i_uarts|RxFSM_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21  $ VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 .lut_mask = 16'h33CC;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix65151z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx65151z1  = \u_uw_uart|i_uarts|nx34394z3  # !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z3 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx65151z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix65151z52923 .lut_mask = 16'hF5F5;
defparam \u_uw_uart|i_uarts|ix65151z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ));

// atom is at LCCOMB_X53_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ));

// atom is at LCCOMB_X53_Y22_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ));

// atom is at LCCOMB_X53_Y22_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z10  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z10 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52931 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix34394z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ));

// atom is at LCCOMB_X53_Y22_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ));

// atom is at LCFF_X53_Y22_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ));

// atom is at LCCOMB_X53_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z9  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52930 .lut_mask = 16'h0080;
defparam \u_uw_uart|i_uarts|ix34394z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y22_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ));

// atom is at LCCOMB_X53_Y22_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1  $ !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 .lut_mask = 16'hA5A5;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y22_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ));

// atom is at LCFF_X53_Y22_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ));

// atom is at LCCOMB_X54_Y22_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z4  = \u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52925 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix34394z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z3  = \u_uw_uart|i_uarts|nx34394z5  # \u_uw_uart|i_uarts|nx34394z10  & \u_uw_uart|i_uarts|nx34394z9  & \u_uw_uart|i_uarts|nx34394z4 

	.dataa(\u_uw_uart|i_uarts|nx34394z5 ),
	.datab(\u_uw_uart|i_uarts|nx34394z10 ),
	.datac(\u_uw_uart|i_uarts|nx34394z9 ),
	.datad(\u_uw_uart|i_uarts|nx34394z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52924 .lut_mask = 16'hEAAA;
defparam \u_uw_uart|i_uarts|ix34394z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z1  = \u_uw_uart|i_uarts|nx34394z2  & \u_uw_uart|i_uarts|nx34394z3 

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z3 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|i_uarts|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopRx ));

// atom is at LCCOMB_X54_Y21_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z2  = \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxFSM_6_  & \u_uw_uart|rawrx  # !\u_uw_uart|i_uarts|RxFSM_6_  & (\u_uw_uart|i_uarts|TopRx ))

	.dataa(\u_uw_uart|rawrx ),
	.datab(\u_uw_uart|i_uarts|TopRx ),
	.datac(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.datad(\u_uw_uart|i_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52925 .lut_mask = 16'hAC00;
defparam \u_uw_uart|i_uarts|ix15541z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z3  = \nrst~combout  & \rxflex~combout  # !\u_uw_uart|i_uarts|RxFSM_6_ 

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52926 .lut_mask = 16'hCF0F;
defparam \u_uw_uart|i_uarts|ix15541z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z1  = \u_uw_uart|i_uarts|nx15541z2  # \u_uw_uart|i_uarts|not_Rx_r  & \u_uw_uart|i_uarts|nx15541z3  & !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(\u_uw_uart|i_uarts|nx15541z2 ),
	.datac(\u_uw_uart|i_uarts|nx15541z3 ),
	.datad(\u_uw_uart|i_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52924 .lut_mask = 16'hCCEC;
defparam \u_uw_uart|i_uarts|ix15541z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|not_Rx_r ),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_6_ ));

// atom is at LCCOMB_X54_Y23_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix16538z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx16538z1  = !\u_uw_uart|i_uarts|RxFSM_6_  & (\u_uw_uart|i_uarts|not_Rx_r  # !\u_uw_uart|i_uarts|RxFSM_5_ )

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix16538z52923 .lut_mask = 16'h00AF;
defparam \u_uw_uart|i_uarts|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx34394z2 ));

// atom is at LCCOMB_X53_Y21_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  = \u_uw_uart|i_uarts|RxFSM_3_  & (\u_uw_uart|i_uarts|TopRx ) # !\u_uw_uart|i_uarts|RxFSM_3_  & !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z2 ),
	.datad(\u_uw_uart|i_uarts|TopRx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52924 .lut_mask = 16'hAF05;
defparam \u_uw_uart|i_uarts|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z1  = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|nx9370z2  $ \u_uw_uart|i_uarts|RxBitCnt_2_ ) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|RxBitCnt_2_ )

	.dataa(\u_uw_uart|i_uarts|nx9370z2 ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52923 .lut_mask = 16'h48F0;
defparam \u_uw_uart|i_uarts|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_2_ ));

// atom is at LCCOMB_X54_Y23_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx34394z2~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout  = !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx34394z2~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|nx34394z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_1_ ));

// atom is at LCCOMB_X54_Y23_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix14544z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx14544z1  = \u_uw_uart|i_uarts|RxFSM_3_  # \u_uw_uart|i_uarts|not_Rx_r  & \u_uw_uart|i_uarts|RxFSM_1_ 

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix14544z52923 .lut_mask = 16'hFFA0;
defparam \u_uw_uart|i_uarts|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_2_ ));

// atom is at LCCOMB_X54_Y23_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z1  = !\u_uw_uart|i_uarts|nx13547z2  & \u_uw_uart|i_uarts|RxFSM_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx13547z2 ),
	.datad(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|i_uarts|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_3_ ));

// atom is at LCCOMB_X53_Y21_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z1  = \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_0_  $ (\u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|RxFSM_3_ )) # !\u_uw_uart|i_uarts|nx34394z2  & !\u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|RxBitCnt_0_  
// & \u_uw_uart|i_uarts|RxFSM_3_ 

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|TopRx ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52923 .lut_mask = 16'h38A0;
defparam \u_uw_uart|i_uarts|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_0_ ));

// atom is at LCCOMB_X53_Y21_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z2  = \u_uw_uart|i_uarts|RxBitCnt_3_  $ (\u_uw_uart|i_uarts|RxBitCnt_1_  & \u_uw_uart|i_uarts|RxBitCnt_2_  & \u_uw_uart|i_uarts|RxBitCnt_0_ )

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52925 .lut_mask = 16'h7F80;
defparam \u_uw_uart|i_uarts|ix8373z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y21_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z1  = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & \u_uw_uart|i_uarts|nx34394z2  & \u_uw_uart|i_uarts|nx8373z2  # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|RxBitCnt_3_ )

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|nx8373z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52923 .lut_mask = 16'h88F0;
defparam \u_uw_uart|i_uarts|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_3_ ));

// atom is at LCCOMB_X53_Y21_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z2  = !\u_uw_uart|i_uarts|RxBitCnt_1_  & !\u_uw_uart|i_uarts|RxBitCnt_2_  & !\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_3_ 

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52924 .lut_mask = 16'h0100;
defparam \u_uw_uart|i_uarts|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y23_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11553z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11553z1  = \u_uw_uart|i_uarts|nx13547z2  & \u_uw_uart|i_uarts|RxFSM_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx13547z2 ),
	.datad(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11553z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|i_uarts|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y23_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_5_ ));

// atom is at LCCOMB_X53_Y21_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30017z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx30017z1  = \u_uw_uart|i_uarts|TopRx  & !\u_uw_uart|i_uarts|not_Rx_r  & \u_uw_uart|i_uarts|RxFSM_5_ 

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|not_Rx_r ),
	.datad(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx30017z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30017z52923 .lut_mask = 16'h0A00;
defparam \u_uw_uart|i_uarts|ix30017z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx30017z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxRDY ));

// atom is at LCCOMB_X53_Y21_N12
cycloneii_lcell_comb \u_uw_uart|ix58116z52923 (
// Equation(s):
// \u_uw_uart|nx58116z1  = !\u_uw_uart|o_pixavail  & \u_uw_uart|i_uarts|RxRDY 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|i_uarts|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|nx58116z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix58116z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y21_N13
cycloneii_lcell_ff \u_uw_uart|reg_charavail (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx58116z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|o_pixavail ));

// atom is at LCCOMB_X55_Y21_N30
cycloneii_lcell_comb \u_uw_uart|ix39480z52923 (
// Equation(s):
// \u_uw_uart|nx39480z1  = !\u_uw_uart|nx39480z2  & (\u_uw_uart|ack  # \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(\u_uw_uart|nx39480z2 ),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52923 .lut_mask = 16'h3330;
defparam \u_uw_uart|ix39480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N31
cycloneii_lcell_ff \u_uw_uart|reg_ack (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39480z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ack ));

// atom is at LCCOMB_X54_Y21_N22
cycloneii_lcell_comb \u_uw_uart|ix33354z52923 (
// Equation(s):
// \u_uw_uart|nx33354z1  = \u_uw_uart|ack  # \u_uw_uart|o_pixavail  # !\nrst~combout 

	.dataa(vcc),
	.datab(\u_uw_uart|ack ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52923 .lut_mask = 16'hFCFF;
defparam \u_uw_uart|ix33354z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N1
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ));

// atom is at LCCOMB_X56_Y20_N2
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52938 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx52268z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z29  & !\u_uw_uart|modgen_counter_waitcount|nx22081z30  # !\u_uw_uart|modgen_counter_waitcount|nx22081z29  & (\u_uw_uart|modgen_counter_waitcount|nx22081z30  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z28  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z30  # !\u_uw_uart|modgen_counter_waitcount|nx22081z29 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N3
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ));

// atom is at LCCOMB_X56_Y20_N4
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52937 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx53265z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z27  & (\u_uw_uart|modgen_counter_waitcount|nx22081z28  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z28 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z26  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z28 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N5
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ));

// atom is at LCCOMB_X56_Y20_N6
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52936 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx54262z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z25  & !\u_uw_uart|modgen_counter_waitcount|nx22081z26  # !\u_uw_uart|modgen_counter_waitcount|nx22081z25  & (\u_uw_uart|modgen_counter_waitcount|nx22081z26  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z24  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z26  # !\u_uw_uart|modgen_counter_waitcount|nx22081z25 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N7
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ));

// atom is at LCCOMB_X55_Y20_N28
cycloneii_lcell_comb \u_uw_uart|ix39480z52926 (
// Equation(s):
// \u_uw_uart|nx39480z4  = !\u_uw_uart|modgen_counter_waitcount|nx22081z29  & \u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z31  & !\u_uw_uart|modgen_counter_waitcount|nx22081z25 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52926 .lut_mask = 16'h0004;
defparam \u_uw_uart|ix39480z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_flow|state_3_~_wirecell (
// Equation(s):
// \u_kirsch|u_flow|state_3_~_wirecell_combout  = !\u_kirsch|u_flow|state_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|state_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|state_3_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|state_3_~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|u_flow|state_3_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N14
cycloneii_lcell_comb \u_kirsch|u_flow|ix29521z52924 (
// Equation(s):
// \u_kirsch|u_flow|nx29521z1  = \u_kirsch|u_flow|p40  # !\nrst~combout 

	.dataa(\u_kirsch|u_flow|p40 ),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx29521z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|ix29521z52924 .lut_mask = 16'hAFAF;
defparam \u_kirsch|u_flow|ix29521z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N17
cycloneii_lcell_ff \u_kirsch|u_flow|reg_state_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|state_3_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|u_flow|nx29521z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx28524z1 ));

// atom is at LCCOMB_X54_Y20_N2
cycloneii_lcell_comb \u_kirsch|u_flow|nx28524z1~_wirecell (
// Equation(s):
// \u_kirsch|u_flow|nx28524z1~_wirecell_combout  = !\u_kirsch|u_flow|nx28524z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_flow|nx28524z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx28524z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx28524z1~_wirecell .lut_mask = 16'h0F0F;
defparam \u_kirsch|u_flow|nx28524z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y20_N3
cycloneii_lcell_ff \u_kirsch|u_flow|reg_state_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx28524z1~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|u_flow|nx29521z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|state_1_ ));

// atom is at LCFF_X55_Y20_N13
cycloneii_lcell_ff \u_kirsch|u_flow|reg_state_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|state_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx29521z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|state_2_ ));

// atom is at LCFF_X55_Y20_N31
cycloneii_lcell_ff \u_kirsch|u_flow|reg_state_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|state_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|u_flow|nx29521z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|state_3_ ));

// atom is at LCFF_X55_Y20_N21
cycloneii_lcell_ff \u_kirsch|u_flow|reg_o_valid (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|state_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_valid ));

// atom is at LCCOMB_X56_Y20_N8
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52935 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx55259z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z23  & (\u_uw_uart|modgen_counter_waitcount|nx22081z24  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z24 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z22  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z24 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N9
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ));

// atom is at LCCOMB_X56_Y20_N10
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52934 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx56256z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z21  & !\u_uw_uart|modgen_counter_waitcount|nx22081z22  # !\u_uw_uart|modgen_counter_waitcount|nx22081z21  & (\u_uw_uart|modgen_counter_waitcount|nx22081z22  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z20  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z22  # !\u_uw_uart|modgen_counter_waitcount|nx22081z21 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y20_N15
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ));

// atom is at LCFF_X56_Y20_N11
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ));

// atom is at LCCOMB_X55_Y20_N6
cycloneii_lcell_comb \u_uw_uart|ix39480z52925 (
// Equation(s):
// \u_uw_uart|nx39480z3  = \u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z17  & \u_uw_uart|modgen_counter_waitcount|nx22081z21 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52925 .lut_mask = 16'h0200;
defparam \u_uw_uart|ix39480z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y20_N20
cycloneii_lcell_comb \u_uw_uart|ix39480z52924 (
// Equation(s):
// \u_uw_uart|nx39480z2  = \u_kirsch|u_flow|o_valid  # \u_uw_uart|nx39480z5  & \u_uw_uart|nx39480z4  & \u_uw_uart|nx39480z3 

	.dataa(\u_uw_uart|nx39480z5 ),
	.datab(\u_uw_uart|nx39480z4 ),
	.datac(\u_kirsch|u_flow|o_valid ),
	.datad(\u_uw_uart|nx39480z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52924 .lut_mask = 16'hF8F0;
defparam \u_uw_uart|ix39480z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y21_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15376z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15376z1  = \u_uw_uart|i_uarts|RxFSM_6_  # \u_uw_uart|i_uarts|RxErr  & !\u_uw_uart|i_uarts|RxRDY 

	.dataa(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|i_uarts|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15376z52923 .lut_mask = 16'hAAFA;
defparam \u_uw_uart|i_uarts|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y21_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxErr ));

// atom is at LCCOMB_X55_Y21_N22
cycloneii_lcell_comb \u_uw_uart|ix46385z52923 (
// Equation(s):
// \u_uw_uart|nx46385z1  = \u_uw_uart|nx40736z1  & \u_uw_uart|nx39480z2  # !\u_uw_uart|nx40736z1  & (\u_uw_uart|i_uarts|RxErr ) # !\nrst~combout 

	.dataa(\u_uw_uart|nx40736z1 ),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|nx39480z2 ),
	.datad(\u_uw_uart|i_uarts|RxErr ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52923 .lut_mask = 16'hF7B3;
defparam \u_uw_uart|ix46385z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N23
cycloneii_lcell_ff \u_uw_uart|reg_dsend (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx46385z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|dsend ));

// atom is at LCCOMB_X55_Y21_N4
cycloneii_lcell_comb \u_uw_uart|ix38868z52923 (
// Equation(s):
// \u_uw_uart|nx38868z1  = !\u_uw_uart|state  & \u_uw_uart|dsend 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|state ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38868z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38868z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix38868z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N5
cycloneii_lcell_ff \u_uw_uart|reg_state (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx38868z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|state ));

// atom is at LCCOMB_X55_Y21_N26
cycloneii_lcell_comb \u_uw_uart|ix18433z52923 (
// Equation(s):
// \u_uw_uart|nx18433z1  = !\u_uw_uart|state  & (\u_uw_uart|ld_sdout  # \u_uw_uart|dsend )

	.dataa(vcc),
	.datab(\u_uw_uart|state ),
	.datac(\u_uw_uart|ld_sdout ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx18433z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix18433z52923 .lut_mask = 16'h3330;
defparam \u_uw_uart|ix18433z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N27
cycloneii_lcell_ff \u_uw_uart|reg_ld_sdout (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx18433z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ld_sdout ));

// atom is at LCCOMB_X54_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z2  = \u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxFSM_0_  & !\u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_0_  & (!\u_uw_uart|ld_sdout ))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|ld_sdout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52924 .lut_mask = 16'h3237;
defparam \u_uw_uart|i_uarts|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z1  = \u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|i_uarts|nx4608z2 ) # !\u_uw_uart|i_uarts|TxFSM_0_  & !\u_uw_uart|i_uarts|nx4608z2  & (!\u_uw_uart|i_uarts|nx4608z3  # !\u_uw_uart|i_uarts|TxFSM_1_ )

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|nx4608z3 ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|nx4608z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52923 .lut_mask = 16'hF007;
defparam \u_uw_uart|i_uarts|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y22_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_0_ ));

// atom is at LCCOMB_X55_Y21_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix5605z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx5605z1  = \u_uw_uart|i_uarts|TxFSM_1_  $ (\u_uw_uart|i_uarts|TopTx  & \u_uw_uart|i_uarts|TxFSM_0_ )

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix5605z52923 .lut_mask = 16'h7878;
defparam \u_uw_uart|i_uarts|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y21_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_1_ ));

// atom is at LCCOMB_X56_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix61140z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_  = \u_uw_uart|i_uarts|TxFSM_0_  # \u_uw_uart|i_uarts|nx61140z1  & \u_uw_uart|i_uarts|TxFSM_1_ 

	.dataa(\u_uw_uart|i_uarts|nx61140z1 ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix61140z52923 .lut_mask = 16'hFFA0;
defparam \u_uw_uart|i_uarts|ix61140z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y21_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix61812z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx61812z1  = \u_uw_uart|i_uarts|TxFSM_0_  & \u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_1_  # !\u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_1_  & 
// (\u_uw_uart|ld_sdout ))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|ld_sdout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx61812z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix61812z52923 .lut_mask = 16'h2B28;
defparam \u_uw_uart|i_uarts|ix61812z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y22_N17
cycloneii_lcell_ff reg_out_txflex_obuf(
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx61812z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21351z2));

// atom is at LCCOMB_X53_Y18_N16
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52931 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx51271z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z15  $ VCC
// \u_kirsch|u_memory|modgen_counter_column|nx58250z14  = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z15 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx51271z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z14 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52931 .lut_mask = 16'h33CC;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N0
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout  = \u_kirsch|u_memory|modgen_counter_column|nx51271z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|modgen_counter_column|nx51271z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N20
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52929 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx53265z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z11  & (\u_kirsch|u_memory|modgen_counter_column|nx58250z12  $ GND) # !\u_kirsch|u_memory|modgen_counter_column|nx58250z11  & 
// !\u_kirsch|u_memory|modgen_counter_column|nx58250z12  & VCC
// \u_kirsch|u_memory|modgen_counter_column|nx58250z10  = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z11  & !\u_kirsch|u_memory|modgen_counter_column|nx58250z12 )

	.dataa(\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z12 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx53265z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z10 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52929 .lut_mask = 16'hA50A;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_memory|reg_first_bubble (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|o_pixavail ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|first_bubble ));

// atom is at LCCOMB_X54_Y18_N4
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix57253z52923 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx57253z3  = \u_kirsch|u_memory|nx47386z1  & (\u_kirsch|u_memory|nx47386z2  # \u_kirsch|u_memory|first_bubble )

	.dataa(\u_kirsch|u_memory|nx47386z1 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|nx47386z2 ),
	.datad(\u_kirsch|u_memory|first_bubble ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix57253z52923 .lut_mask = 16'hAAA0;
defparam \u_kirsch|u_memory|modgen_counter_column|ix57253z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N21
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ));

// atom is at LCCOMB_X53_Y19_N24
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52926 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z4  = \u_kirsch|u_memory|modgen_counter_column|nx58250z5  & \u_kirsch|u_memory|modgen_counter_column|nx1041z1  & \u_kirsch|u_memory|modgen_counter_column|nx58250z3  & \u_kirsch|u_memory|modgen_counter_column|nx58250z15 

	.dataa(\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ),
	.datac(\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ),
	.datad(\u_kirsch|u_memory|modgen_counter_column|nx58250z15 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52926 .lut_mask = 16'h8000;
defparam \u_kirsch|u_memory|ix8852z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N18
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52925 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z3  = \u_kirsch|u_memory|nx8852z5  & \u_kirsch|u_memory|modgen_counter_column|nx58250z13  & \u_kirsch|u_memory|modgen_counter_column|nx58250z11  & \u_kirsch|u_memory|nx8852z4 

	.dataa(\u_kirsch|u_memory|nx8852z5 ),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ),
	.datac(\u_kirsch|u_memory|modgen_counter_column|nx58250z11 ),
	.datad(\u_kirsch|u_memory|nx8852z4 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52925 .lut_mask = 16'h8000;
defparam \u_kirsch|u_memory|ix8852z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N8
cycloneii_lcell_comb \u_kirsch|u_memory|ix47386z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx47386z2  = \u_kirsch|u_memory|nx8852z2  # \u_kirsch|u_memory|nx8852z3  & \u_kirsch|u_memory|first_bubble  # !\nrst~combout 

	.dataa(\u_kirsch|u_memory|nx8852z2 ),
	.datab(\u_kirsch|u_memory|nx8852z3 ),
	.datac(\nrst~combout ),
	.datad(\u_kirsch|u_memory|first_bubble ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx47386z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix47386z52924 .lut_mask = 16'hEFAF;
defparam \u_kirsch|u_memory|ix47386z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N1
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx58250z15~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z15 ));

// atom is at LCCOMB_X53_Y18_N18
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52930 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx52268z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z13  & !\u_kirsch|u_memory|modgen_counter_column|nx58250z14  # !\u_kirsch|u_memory|modgen_counter_column|nx58250z13  & 
// (\u_kirsch|u_memory|modgen_counter_column|nx58250z14  # GND)
// \u_kirsch|u_memory|modgen_counter_column|nx58250z12  = CARRY(!\u_kirsch|u_memory|modgen_counter_column|nx58250z14  # !\u_kirsch|u_memory|modgen_counter_column|nx58250z13 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z14 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx52268z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z12 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52930 .lut_mask = 16'h3C3F;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N19
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z13 ));

// atom is at LCCOMB_X53_Y18_N22
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52928 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx54262z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z9  & !\u_kirsch|u_memory|modgen_counter_column|nx58250z10  # !\u_kirsch|u_memory|modgen_counter_column|nx58250z9  & 
// (\u_kirsch|u_memory|modgen_counter_column|nx58250z10  # GND)
// \u_kirsch|u_memory|modgen_counter_column|nx58250z8  = CARRY(!\u_kirsch|u_memory|modgen_counter_column|nx58250z10  # !\u_kirsch|u_memory|modgen_counter_column|nx58250z9 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z10 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx54262z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z8 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52928 .lut_mask = 16'h3C3F;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N23
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z9 ));

// atom is at LCCOMB_X53_Y18_N24
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52927 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx55259z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z7  & (\u_kirsch|u_memory|modgen_counter_column|nx58250z8  $ GND) # !\u_kirsch|u_memory|modgen_counter_column|nx58250z7  & 
// !\u_kirsch|u_memory|modgen_counter_column|nx58250z8  & VCC
// \u_kirsch|u_memory|modgen_counter_column|nx58250z6  = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z7  & !\u_kirsch|u_memory|modgen_counter_column|nx58250z8 )

	.dataa(\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z8 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx55259z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z6 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52927 .lut_mask = 16'hA50A;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y18_N26
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52926 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx56256z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z5  & !\u_kirsch|u_memory|modgen_counter_column|nx58250z6  # !\u_kirsch|u_memory|modgen_counter_column|nx58250z5  & 
// (\u_kirsch|u_memory|modgen_counter_column|nx58250z6  # GND)
// \u_kirsch|u_memory|modgen_counter_column|nx58250z4  = CARRY(!\u_kirsch|u_memory|modgen_counter_column|nx58250z6  # !\u_kirsch|u_memory|modgen_counter_column|nx58250z5 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z6 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx56256z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z4 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52926 .lut_mask = 16'h3C3F;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N27
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ));

// atom is at LCCOMB_X53_Y18_N28
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52925 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx57253z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z3  & (\u_kirsch|u_memory|modgen_counter_column|nx58250z4  $ GND) # !\u_kirsch|u_memory|modgen_counter_column|nx58250z3  & 
// !\u_kirsch|u_memory|modgen_counter_column|nx58250z4  & VCC
// \u_kirsch|u_memory|modgen_counter_column|nx58250z2  = CARRY(\u_kirsch|u_memory|modgen_counter_column|nx58250z3  & !\u_kirsch|u_memory|modgen_counter_column|nx58250z4 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z4 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx57253z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_column|nx58250z2 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52925 .lut_mask = 16'hC30C;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N29
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ));

// atom is at LCCOMB_X53_Y18_N30
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_column|ix58250z52923 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_column|nx58250z1  = \u_kirsch|u_memory|modgen_counter_column|nx58250z2  $ \u_kirsch|u_memory|modgen_counter_column|nx1041z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ),
	.cin(\u_kirsch|u_memory|modgen_counter_column|nx58250z2 ),
	.combout(\u_kirsch|u_memory|modgen_counter_column|nx58250z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52923 .lut_mask = 16'h0FF0;
defparam \u_kirsch|u_memory|modgen_counter_column|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N31
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ));

// atom is at LCCOMB_X53_Y19_N18
cycloneii_lcell_comb \u_kirsch|u_memory|ix60567z52926 (
// Equation(s):
// \u_kirsch|u_memory|nx60567z4  = \u_kirsch|u_memory|o_valid  # \u_kirsch|u_memory|nx60567z2  & \u_kirsch|u_memory|modgen_counter_column|nx1041z1 

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx1041z1 ),
	.datac(\u_kirsch|u_memory|o_valid ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60567z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60567z52926 .lut_mask = 16'hF8F8;
defparam \u_kirsch|u_memory|ix60567z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y18_N25
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_column|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_column|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx47386z2 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_column|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ));

// atom is at LCCOMB_X53_Y19_N12
cycloneii_lcell_comb \u_kirsch|u_memory|ix60567z52927 (
// Equation(s):
// \u_kirsch|u_memory|nx60567z5  = \u_kirsch|u_memory|nx60567z2  & (\u_kirsch|u_memory|modgen_counter_column|nx58250z7  # \u_kirsch|u_memory|modgen_counter_column|nx58250z5  # \u_kirsch|u_memory|modgen_counter_column|nx58250z3 )

	.dataa(\u_kirsch|u_memory|nx60567z2 ),
	.datab(\u_kirsch|u_memory|modgen_counter_column|nx58250z7 ),
	.datac(\u_kirsch|u_memory|modgen_counter_column|nx58250z5 ),
	.datad(\u_kirsch|u_memory|modgen_counter_column|nx58250z3 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60567z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60567z52927 .lut_mask = 16'hAAA8;
defparam \u_kirsch|u_memory|ix60567z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y18_N16
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52931 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx51271z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z15  $ VCC
// \u_kirsch|u_memory|modgen_counter_row|nx58250z14  = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z15 )

	.dataa(\u_kirsch|u_memory|modgen_counter_row|nx58250z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx51271z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z14 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52931 .lut_mask = 16'h55AA;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y18_N18
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52930 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx52268z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z13  & !\u_kirsch|u_memory|modgen_counter_row|nx58250z14  # !\u_kirsch|u_memory|modgen_counter_row|nx58250z13  & 
// (\u_kirsch|u_memory|modgen_counter_row|nx58250z14  # GND)
// \u_kirsch|u_memory|modgen_counter_row|nx58250z12  = CARRY(!\u_kirsch|u_memory|modgen_counter_row|nx58250z14  # !\u_kirsch|u_memory|modgen_counter_row|nx58250z13 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z14 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx52268z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z12 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52930 .lut_mask = 16'h3C3F;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y18_N24
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52927 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx55259z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z7  & (\u_kirsch|u_memory|modgen_counter_row|nx58250z8  $ GND) # !\u_kirsch|u_memory|modgen_counter_row|nx58250z7  & 
// !\u_kirsch|u_memory|modgen_counter_row|nx58250z8  & VCC
// \u_kirsch|u_memory|modgen_counter_row|nx58250z6  = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z7  & !\u_kirsch|u_memory|modgen_counter_row|nx58250z8 )

	.dataa(\u_kirsch|u_memory|modgen_counter_row|nx58250z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z8 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx55259z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z6 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52927 .lut_mask = 16'hA50A;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N24
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52930 (
// Equation(s):
// \u_kirsch|u_memory|not_rtlc2_X_0_n244  = \u_kirsch|u_memory|nx8852z3  & !\u_uw_uart|o_pixavail  & \u_kirsch|u_memory|first_bubble 

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|nx8852z3 ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|u_memory|first_bubble ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|not_rtlc2_X_0_n244 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52930 .lut_mask = 16'h0C00;
defparam \u_kirsch|u_memory|ix8852z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N2
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix57253z52923 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx57253z3  = \u_kirsch|u_memory|nx8852z2  # \u_kirsch|u_memory|not_rtlc2_X_0_n244  # !\nrst~combout 

	.dataa(\u_kirsch|u_memory|nx8852z2 ),
	.datab(\nrst~combout ),
	.datac(\u_kirsch|u_memory|not_rtlc2_X_0_n244 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix57253z52923 .lut_mask = 16'hFBFB;
defparam \u_kirsch|u_memory|modgen_counter_row|ix57253z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N25
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z7 ));

// atom is at LCCOMB_X55_Y18_N28
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52925 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx57253z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z3  & (\u_kirsch|u_memory|modgen_counter_row|nx58250z4  $ GND) # !\u_kirsch|u_memory|modgen_counter_row|nx58250z3  & 
// !\u_kirsch|u_memory|modgen_counter_row|nx58250z4  & VCC
// \u_kirsch|u_memory|modgen_counter_row|nx58250z2  = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z3  & !\u_kirsch|u_memory|modgen_counter_row|nx58250z4 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z4 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx57253z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z2 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52925 .lut_mask = 16'hC30C;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y18_N30
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52923 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx58250z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z2  $ \u_kirsch|u_memory|modgen_counter_row|nx1041z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx1041z1 ),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z2 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx58250z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52923 .lut_mask = 16'h0FF0;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N31
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx1041z1 ));

// atom is at LCCOMB_X54_Y18_N28
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52928 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z6  = \u_kirsch|u_memory|modgen_counter_row|nx58250z5  & \u_kirsch|u_memory|modgen_counter_row|nx58250z7  & \u_kirsch|u_memory|modgen_counter_row|nx58250z3  & \u_kirsch|u_memory|modgen_counter_row|nx1041z1 

	.dataa(\u_kirsch|u_memory|modgen_counter_row|nx58250z5 ),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z7 ),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z3 ),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx1041z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52928 .lut_mask = 16'h8000;
defparam \u_kirsch|u_memory|ix8852z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N0
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z2  = \u_kirsch|u_memory|nx8852z7  & \u_kirsch|u_memory|nx8852z6  & \u_kirsch|u_memory|first_bubble  & \u_kirsch|u_memory|nx8852z3 

	.dataa(\u_kirsch|u_memory|nx8852z7 ),
	.datab(\u_kirsch|u_memory|nx8852z6 ),
	.datac(\u_kirsch|u_memory|first_bubble ),
	.datad(\u_kirsch|u_memory|nx8852z3 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52924 .lut_mask = 16'h8000;
defparam \u_kirsch|u_memory|ix8852z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y18_N6
cycloneii_lcell_comb \u_kirsch|u_memory|ix8852z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx8852z1  = \u_kirsch|u_memory|nx8852z2  # !\nrst~combout 

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(\u_kirsch|u_memory|nx8852z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx8852z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix8852z52923 .lut_mask = 16'hF3F3;
defparam \u_kirsch|u_memory|ix8852z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N19
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z13 ));

// atom is at LCCOMB_X55_Y18_N20
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52929 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx53265z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z11  & (\u_kirsch|u_memory|modgen_counter_row|nx58250z12  $ GND) # !\u_kirsch|u_memory|modgen_counter_row|nx58250z11  & 
// !\u_kirsch|u_memory|modgen_counter_row|nx58250z12  & VCC
// \u_kirsch|u_memory|modgen_counter_row|nx58250z10  = CARRY(\u_kirsch|u_memory|modgen_counter_row|nx58250z11  & !\u_kirsch|u_memory|modgen_counter_row|nx58250z12 )

	.dataa(\u_kirsch|u_memory|modgen_counter_row|nx58250z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z12 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx53265z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z10 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52929 .lut_mask = 16'hA50A;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y18_N22
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52928 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx54262z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z9  & !\u_kirsch|u_memory|modgen_counter_row|nx58250z10  # !\u_kirsch|u_memory|modgen_counter_row|nx58250z9  & 
// (\u_kirsch|u_memory|modgen_counter_row|nx58250z10  # GND)
// \u_kirsch|u_memory|modgen_counter_row|nx58250z8  = CARRY(!\u_kirsch|u_memory|modgen_counter_row|nx58250z10  # !\u_kirsch|u_memory|modgen_counter_row|nx58250z9 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z10 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx54262z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z8 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52928 .lut_mask = 16'h3C3F;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N23
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z9 ));

// atom is at LCCOMB_X55_Y18_N26
cycloneii_lcell_comb \u_kirsch|u_memory|modgen_counter_row|ix58250z52926 (
// Equation(s):
// \u_kirsch|u_memory|modgen_counter_row|nx56256z1  = \u_kirsch|u_memory|modgen_counter_row|nx58250z5  & !\u_kirsch|u_memory|modgen_counter_row|nx58250z6  # !\u_kirsch|u_memory|modgen_counter_row|nx58250z5  & (\u_kirsch|u_memory|modgen_counter_row|nx58250z6  
// # GND)
// \u_kirsch|u_memory|modgen_counter_row|nx58250z4  = CARRY(!\u_kirsch|u_memory|modgen_counter_row|nx58250z6  # !\u_kirsch|u_memory|modgen_counter_row|nx58250z5 )

	.dataa(vcc),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|u_memory|modgen_counter_row|nx58250z6 ),
	.combout(\u_kirsch|u_memory|modgen_counter_row|nx56256z1 ),
	.cout(\u_kirsch|u_memory|modgen_counter_row|nx58250z4 ));
// synopsys translate_off
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52926 .lut_mask = 16'h3C3F;
defparam \u_kirsch|u_memory|modgen_counter_row|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N27
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z5 ));

// atom is at LCFF_X55_Y18_N29
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z3 ));

// atom is at LCCOMB_X54_Y18_N22
cycloneii_lcell_comb \u_kirsch|u_memory|ix60567z52924 (
// Equation(s):
// \u_kirsch|u_memory|nx60567z2  = \u_kirsch|u_memory|nx60567z3  # \u_kirsch|u_memory|modgen_counter_row|nx58250z3  # \u_kirsch|u_memory|modgen_counter_row|nx58250z5  # \u_kirsch|u_memory|modgen_counter_row|nx1041z1 

	.dataa(\u_kirsch|u_memory|nx60567z3 ),
	.datab(\u_kirsch|u_memory|modgen_counter_row|nx58250z3 ),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z5 ),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx1041z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60567z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60567z52924 .lut_mask = 16'hFFFE;
defparam \u_kirsch|u_memory|ix60567z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y20_N16
cycloneii_lcell_comb \u_kirsch|u_memory|ix60567z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx60567z1  = \u_kirsch|u_memory|nx60567z4  # \u_kirsch|u_memory|nx60567z5  # \u_kirsch|u_memory|nx60567z6  & \u_kirsch|u_memory|nx60567z2 

	.dataa(\u_kirsch|u_memory|nx60567z6 ),
	.datab(\u_kirsch|u_memory|nx60567z4 ),
	.datac(\u_kirsch|u_memory|nx60567z5 ),
	.datad(\u_kirsch|u_memory|nx60567z2 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx60567z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix60567z52923 .lut_mask = 16'hFEFC;
defparam \u_kirsch|u_memory|ix60567z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y20_N17
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_valid (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx60567z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_kirsch|u_memory|first_bubble ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_valid ));

// atom is at LCCOMB_X59_Y17_N28
cycloneii_lcell_comb \u_kirsch|ix64956z52924 (
// Equation(s):
// \u_kirsch|nx64956z1  = \u_kirsch|u_memory|o_valid  # !\nrst~combout  # !\u_kirsch|nx57127z2 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_valid ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx64956z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64956z52924 .lut_mask = 16'hF5FF;
defparam \u_kirsch|ix64956z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y19_N25
cycloneii_lcell_ff \u_kirsch|reg_f_state_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_state_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx64956z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_state_3_ ));

// atom is at LCCOMB_X55_Y19_N2
cycloneii_lcell_comb \u_kirsch|f_state_3_~_wirecell (
// Equation(s):
// \u_kirsch|f_state_3_~_wirecell_combout  = !\u_kirsch|f_state_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_state_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_state_3_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_state_3_~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|f_state_3_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y19_N3
cycloneii_lcell_ff \u_kirsch|reg_f_state_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_state_3_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx64956z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx63959z1 ));

// atom is at LCCOMB_X55_Y19_N0
cycloneii_lcell_comb \u_kirsch|nx63959z1~_wirecell (
// Equation(s):
// \u_kirsch|nx63959z1~_wirecell_combout  = !\u_kirsch|nx63959z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|nx63959z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx63959z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|nx63959z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|nx63959z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y19_N1
cycloneii_lcell_ff \u_kirsch|reg_f_state_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx63959z1~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx64956z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_state_1_ ));

// atom is at LCFF_X57_Y19_N23
cycloneii_lcell_ff \u_kirsch|reg_f_state_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_state_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx64956z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_state_2_ ));

// atom is at LCCOMB_X57_Y19_N28
cycloneii_lcell_comb \u_kirsch|ix57127z52924 (
// Equation(s):
// \u_kirsch|nx57127z2  = !\u_kirsch|f_state_3_  & !\u_kirsch|f_state_2_  & !\u_kirsch|f_state_1_  & !\u_kirsch|nx63959z1 

	.dataa(\u_kirsch|f_state_3_ ),
	.datab(\u_kirsch|f_state_2_ ),
	.datac(\u_kirsch|f_state_1_ ),
	.datad(\u_kirsch|nx63959z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx57127z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix57127z52924 .lut_mask = 16'h0001;
defparam \u_kirsch|ix57127z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N17
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z15 ));

// atom is at LCCOMB_X55_Y18_N6
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_0_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_0_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z15 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z15 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_0_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_memory|o_row_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N7
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_0_ ));

// atom is at LCCOMB_X55_Y17_N4
cycloneii_lcell_comb \u_kirsch|f_i_row_next_0_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_0_~feeder_combout  = \u_kirsch|u_memory|o_row_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_row_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_0_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|f_i_row_next_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y17_N16
cycloneii_lcell_comb \u_kirsch|ix35105z52923 (
// Equation(s):
// \u_kirsch|nx35105z1  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_valid  & \nrst~combout 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_valid ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx35105z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix35105z52923 .lut_mask = 16'hA000;
defparam \u_kirsch|ix35105z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N5
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_0_ ));

// atom is at LCCOMB_X55_Y17_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52997 (
// Equation(s):
// \u_kirsch|f_i_row_0_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_row_0_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i_row_next_0_ )

	.dataa(\u_kirsch|u_memory|o_row_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|f_i_row_next_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52997 .lut_mask = 16'hAFA0;
defparam \u_kirsch|ix20836z52997 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N3
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx22790z1 ));

// atom is at LCFF_X1_Y17_N7
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|nx22790z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx27925z1 ));

// atom is at LCCOMB_X1_Y17_N0
cycloneii_lcell_comb \u_kirsch|u_flow|nx33060z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx33060z1~feeder_combout  = \u_kirsch|u_flow|nx27925z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx27925z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx33060z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx33060z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx33060z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N1
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx33060z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx33060z1 ));

// atom is at LCCOMB_X1_Y17_N2
cycloneii_lcell_comb \u_kirsch|u_flow|o_row_0_~feeder (
// Equation(s):
// \u_kirsch|u_flow|o_row_0_~feeder_combout  = \u_kirsch|u_flow|nx33060z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx33060z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_row_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|o_row_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|o_row_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N3
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_row_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_0_ ));

// atom is at LCCOMB_X55_Y18_N12
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_1_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_1_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z13 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx58250z13 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_row_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N13
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_1_ ));

// atom is at LCCOMB_X55_Y17_N26
cycloneii_lcell_comb \u_kirsch|f_i_row_next_1_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_1_~feeder_combout  = \u_kirsch|u_memory|o_row_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_row_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_row_next_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N27
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_1_ ));

// atom is at LCCOMB_X55_Y17_N16
cycloneii_lcell_comb \u_kirsch|ix20836z52996 (
// Equation(s):
// \u_kirsch|f_i_row_1_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_row_1_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_row_next_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i_row_next_1_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|u_memory|o_row_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52996 .lut_mask = 16'hFC0C;
defparam \u_kirsch|ix20836z52996 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N17
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx21793z1 ));

// atom is at LCCOMB_X1_Y17_N28
cycloneii_lcell_comb \u_kirsch|u_flow|nx26928z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx26928z1~feeder_combout  = \u_kirsch|u_flow|nx21793z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx21793z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26928z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx26928z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx26928z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N29
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx26928z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx26928z1 ));

// atom is at LCCOMB_X1_Y17_N14
cycloneii_lcell_comb \u_kirsch|u_flow|nx32063z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx32063z1~feeder_combout  = \u_kirsch|u_flow|nx26928z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx26928z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx32063z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx32063z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx32063z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N15
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx32063z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx32063z1 ));

// atom is at LCFF_X1_Y17_N17
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|nx32063z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_1_ ));

// atom is at LCFF_X55_Y18_N21
cycloneii_lcell_ff \u_kirsch|u_memory|modgen_counter_row|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|modgen_counter_row|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z1 ),
	.sload(gnd),
	.ena(\u_kirsch|u_memory|modgen_counter_row|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|modgen_counter_row|nx58250z11 ));

// atom is at LCCOMB_X55_Y18_N10
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_2_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_2_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z11 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z11 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_2_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_memory|o_row_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N11
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_2_ ));

// atom is at LCCOMB_X55_Y17_N14
cycloneii_lcell_comb \u_kirsch|ix20836z52995 (
// Equation(s):
// \u_kirsch|f_i_row_2_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_row_2_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_row_next_2_ 

	.dataa(\u_kirsch|f_i_row_next_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|u_memory|o_row_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52995 .lut_mask = 16'hFA0A;
defparam \u_kirsch|ix20836z52995 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N15
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx20796z1 ));

// atom is at LCCOMB_X1_Y17_N26
cycloneii_lcell_comb \u_kirsch|u_flow|nx25931z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx25931z1~feeder_combout  = \u_kirsch|u_flow|nx20796z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx20796z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx25931z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx25931z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx25931z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N27
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx25931z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx25931z1 ));

// atom is at LCCOMB_X1_Y17_N4
cycloneii_lcell_comb \u_kirsch|u_flow|nx31066z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx31066z1~feeder_combout  = \u_kirsch|u_flow|nx25931z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx25931z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx31066z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx31066z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx31066z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N5
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx31066z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx31066z1 ));

// atom is at LCFF_X1_Y17_N31
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|nx31066z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_2_ ));

// atom is at LCCOMB_X1_Y17_N8
cycloneii_lcell_comb ix57590z52923(
// Equation(s):
// nx57590z1 = \u_kirsch|u_flow|o_row_0_  & !\u_kirsch|u_flow|o_row_3_  & (\u_kirsch|u_flow|o_row_1_  $ !\u_kirsch|u_flow|o_row_2_ ) # !\u_kirsch|u_flow|o_row_0_  & !\u_kirsch|u_flow|o_row_1_  & (\u_kirsch|u_flow|o_row_3_  $ !\u_kirsch|u_flow|o_row_2_ )

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx57590z1),
	.cout());
// synopsys translate_off
defparam ix57590z52923.lut_mask = 16'h4205;
defparam ix57590z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N9
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx57590z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41851z1));

// atom is at LCCOMB_X1_Y17_N10
cycloneii_lcell_comb ix58587z52923(
// Equation(s):
// nx58587z1 = \u_kirsch|u_flow|o_row_0_  & (\u_kirsch|u_flow|o_row_3_  $ (\u_kirsch|u_flow|o_row_1_  # !\u_kirsch|u_flow|o_row_2_ )) # !\u_kirsch|u_flow|o_row_0_  & !\u_kirsch|u_flow|o_row_3_  & \u_kirsch|u_flow|o_row_1_  & !\u_kirsch|u_flow|o_row_2_ 

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx58587z1),
	.cout());
// synopsys translate_off
defparam ix58587z52923.lut_mask = 16'h4854;
defparam ix58587z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N11
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx58587z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42848z1));

// atom is at LCCOMB_X1_Y17_N12
cycloneii_lcell_comb ix59584z52923(
// Equation(s):
// nx59584z1 = \u_kirsch|u_flow|o_row_1_  & !\u_kirsch|u_flow|o_row_3_  & \u_kirsch|u_flow|o_row_0_  # !\u_kirsch|u_flow|o_row_1_  & (\u_kirsch|u_flow|o_row_2_  & !\u_kirsch|u_flow|o_row_3_  # !\u_kirsch|u_flow|o_row_2_  & (\u_kirsch|u_flow|o_row_0_ ))

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx59584z1),
	.cout());
// synopsys translate_off
defparam ix59584z52923.lut_mask = 16'h454C;
defparam ix59584z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N13
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx59584z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43845z1));

// atom is at LCCOMB_X1_Y17_N22
cycloneii_lcell_comb ix60581z52923(
// Equation(s):
// nx60581z1 = \u_kirsch|u_flow|o_row_0_  & (\u_kirsch|u_flow|o_row_1_  $ !\u_kirsch|u_flow|o_row_2_ ) # !\u_kirsch|u_flow|o_row_0_  & (\u_kirsch|u_flow|o_row_3_  & \u_kirsch|u_flow|o_row_1_  & !\u_kirsch|u_flow|o_row_2_  # !\u_kirsch|u_flow|o_row_3_  & 
// !\u_kirsch|u_flow|o_row_1_  & \u_kirsch|u_flow|o_row_2_ )

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx60581z1),
	.cout());
// synopsys translate_off
defparam ix60581z52923.lut_mask = 16'hC12C;
defparam ix60581z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N23
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx60581z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44842z1));

// atom is at LCCOMB_X1_Y17_N24
cycloneii_lcell_comb ix61578z52923(
// Equation(s):
// nx61578z1 = \u_kirsch|u_flow|o_row_3_  & \u_kirsch|u_flow|o_row_2_  & (\u_kirsch|u_flow|o_row_1_  # !\u_kirsch|u_flow|o_row_0_ ) # !\u_kirsch|u_flow|o_row_3_  & !\u_kirsch|u_flow|o_row_0_  & \u_kirsch|u_flow|o_row_1_  & !\u_kirsch|u_flow|o_row_2_ 

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx61578z1),
	.cout());
// synopsys translate_off
defparam ix61578z52923.lut_mask = 16'hA210;
defparam ix61578z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N25
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx61578z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45839z1));

// atom is at LCCOMB_X1_Y17_N18
cycloneii_lcell_comb ix62575z52923(
// Equation(s):
// nx62575z1 = \u_kirsch|u_flow|o_row_3_  & (\u_kirsch|u_flow|o_row_0_  & \u_kirsch|u_flow|o_row_1_  # !\u_kirsch|u_flow|o_row_0_  & (\u_kirsch|u_flow|o_row_2_ )) # !\u_kirsch|u_flow|o_row_3_  & \u_kirsch|u_flow|o_row_2_  & (\u_kirsch|u_flow|o_row_0_  $ 
// \u_kirsch|u_flow|o_row_1_ )

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx62575z1),
	.cout());
// synopsys translate_off
defparam ix62575z52923.lut_mask = 16'hB680;
defparam ix62575z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N19
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx62575z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46836z1));

// atom is at LCCOMB_X1_Y17_N20
cycloneii_lcell_comb ix63572z52923(
// Equation(s):
// nx63572z1 = \u_kirsch|u_flow|o_row_3_  & \u_kirsch|u_flow|o_row_0_  & (\u_kirsch|u_flow|o_row_1_  $ \u_kirsch|u_flow|o_row_2_ ) # !\u_kirsch|u_flow|o_row_3_  & !\u_kirsch|u_flow|o_row_1_  & (\u_kirsch|u_flow|o_row_0_  $ \u_kirsch|u_flow|o_row_2_ )

	.dataa(\u_kirsch|u_flow|o_row_3_ ),
	.datab(\u_kirsch|u_flow|o_row_0_ ),
	.datac(\u_kirsch|u_flow|o_row_1_ ),
	.datad(\u_kirsch|u_flow|o_row_2_ ),
	.cin(gnd),
	.combout(nx63572z1),
	.cout());
// synopsys translate_off
defparam ix63572z52923.lut_mask = 16'h0984;
defparam ix63572z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X1_Y17_N21
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx63572z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47833z1));

// atom is at LCCOMB_X55_Y18_N2
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_6_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_6_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z3 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx58250z3 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_row_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N3
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_6_ ));

// atom is at LCCOMB_X55_Y16_N18
cycloneii_lcell_comb \u_kirsch|f_i_row_next_6_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_6_~feeder_combout  = \u_kirsch|u_memory|o_row_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_row_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_row_next_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N19
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_6_ ));

// atom is at LCCOMB_X56_Y16_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52991 (
// Equation(s):
// \u_kirsch|f_i_row_6_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_row_6_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_row_next_6_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i_row_next_6_ ),
	.datac(\u_kirsch|u_memory|o_row_6_ ),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52991 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix20836z52991 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N3
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx16808z1 ));

// atom is at LCCOMB_X56_Y16_N22
cycloneii_lcell_comb \u_kirsch|u_flow|nx21943z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx21943z1~feeder_combout  = \u_kirsch|u_flow|nx16808z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx16808z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx21943z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx21943z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx21943z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N23
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx21943z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx21943z1 ));

// atom is at LCCOMB_X56_Y16_N18
cycloneii_lcell_comb \u_kirsch|u_flow|nx27078z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx27078z1~feeder_combout  = \u_kirsch|u_flow|nx21943z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx21943z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx27078z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx27078z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx27078z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N19
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx27078z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx27078z1 ));

// atom is at LCCOMB_X56_Y16_N28
cycloneii_lcell_comb \u_kirsch|u_flow|o_row_6_~feeder (
// Equation(s):
// \u_kirsch|u_flow|o_row_6_~feeder_combout  = \u_kirsch|u_flow|nx27078z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx27078z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_row_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|o_row_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|o_row_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N29
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_row_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_6_ ));

// atom is at LCCOMB_X55_Y18_N4
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_5_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_5_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z5 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx58250z5 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_row_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N5
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_5_ ));

// atom is at LCCOMB_X55_Y16_N4
cycloneii_lcell_comb \u_kirsch|f_i_row_next_5_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_5_~feeder_combout  = \u_kirsch|u_memory|o_row_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_row_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_row_next_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N5
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_5_ ));

// atom is at LCCOMB_X55_Y16_N6
cycloneii_lcell_comb \u_kirsch|ix20836z52992 (
// Equation(s):
// \u_kirsch|f_i_row_5_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_row_5_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_row_next_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i_row_next_5_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|u_memory|o_row_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52992 .lut_mask = 16'hFC0C;
defparam \u_kirsch|ix20836z52992 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N7
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx17805z1 ));

// atom is at LCCOMB_X55_Y16_N26
cycloneii_lcell_comb \u_kirsch|u_flow|nx22940z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx22940z1~feeder_combout  = \u_kirsch|u_flow|nx17805z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx17805z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx22940z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx22940z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx22940z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N27
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx22940z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx22940z1 ));

// atom is at LCCOMB_X55_Y16_N14
cycloneii_lcell_comb \u_kirsch|u_flow|nx28075z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx28075z1~feeder_combout  = \u_kirsch|u_flow|nx22940z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx22940z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx28075z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx28075z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx28075z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N15
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx28075z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx28075z1 ));

// atom is at LCFF_X55_Y16_N21
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|nx28075z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_5_ ));

// atom is at LCCOMB_X55_Y18_N8
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_7_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_7_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx1041z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|modgen_counter_row|nx1041z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|o_row_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_7_ ));

// atom is at LCCOMB_X55_Y17_N6
cycloneii_lcell_comb \u_kirsch|f_i_row_next_7_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_7_~feeder_combout  = \u_kirsch|u_memory|o_row_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|o_row_7_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_7_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|f_i_row_next_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N7
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_7_ ));

// atom is at LCCOMB_X56_Y16_N16
cycloneii_lcell_comb \u_kirsch|ix20836z52990 (
// Equation(s):
// \u_kirsch|f_i_row_7_  = \u_kirsch|nx57127z2  & \u_kirsch|u_memory|o_row_7_  # !\u_kirsch|nx57127z2  & (\u_kirsch|f_i_row_next_7_ )

	.dataa(\u_kirsch|u_memory|o_row_7_ ),
	.datab(\u_kirsch|f_i_row_next_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx57127z2 ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52990 .lut_mask = 16'hAACC;
defparam \u_kirsch|ix20836z52990 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N17
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx15811z1 ));

// atom is at LCCOMB_X56_Y16_N12
cycloneii_lcell_comb \u_kirsch|u_flow|nx20946z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx20946z1~feeder_combout  = \u_kirsch|u_flow|nx15811z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_flow|nx15811z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx20946z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx20946z1~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|nx20946z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N13
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx20946z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx20946z1 ));

// atom is at LCCOMB_X56_Y16_N24
cycloneii_lcell_comb \u_kirsch|u_flow|nx26081z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx26081z1~feeder_combout  = \u_kirsch|u_flow|nx20946z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx20946z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx26081z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx26081z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx26081z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N25
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx26081z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx26081z1 ));

// atom is at LCCOMB_X56_Y16_N26
cycloneii_lcell_comb \u_kirsch|u_flow|o_row_7_~feeder (
// Equation(s):
// \u_kirsch|u_flow|o_row_7_~feeder_combout  = \u_kirsch|u_flow|nx26081z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_flow|nx26081z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_row_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|o_row_7_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_flow|o_row_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N27
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_row_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_7_ ));

// atom is at LCCOMB_X56_Y16_N8
cycloneii_lcell_comb ix30z52923(
// Equation(s):
// nx30z1 = \u_kirsch|u_flow|o_row_4_  & !\u_kirsch|u_flow|o_row_7_  & (\u_kirsch|u_flow|o_row_6_  $ !\u_kirsch|u_flow|o_row_5_ ) # !\u_kirsch|u_flow|o_row_4_  & !\u_kirsch|u_flow|o_row_5_  & (\u_kirsch|u_flow|o_row_6_  $ !\u_kirsch|u_flow|o_row_7_ )

	.dataa(\u_kirsch|u_flow|o_row_4_ ),
	.datab(\u_kirsch|u_flow|o_row_6_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_7_ ),
	.cin(gnd),
	.combout(nx30z1),
	.cout());
// synopsys translate_off
defparam ix30z52923.lut_mask = 16'h0483;
defparam ix30z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N9
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx30z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx49827z1));

// atom is at LCCOMB_X55_Y18_N14
cycloneii_lcell_comb \u_kirsch|u_memory|o_row_4_~feeder (
// Equation(s):
// \u_kirsch|u_memory|o_row_4_~feeder_combout  = \u_kirsch|u_memory|modgen_counter_row|nx58250z7 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|modgen_counter_row|nx58250z7 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_row_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|o_row_4_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|u_memory|o_row_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y18_N15
cycloneii_lcell_ff \u_kirsch|u_memory|reg_o_row_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_row_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|o_row_4_ ));

// atom is at LCCOMB_X55_Y16_N22
cycloneii_lcell_comb \u_kirsch|f_i_row_next_4_~feeder (
// Equation(s):
// \u_kirsch|f_i_row_next_4_~feeder_combout  = \u_kirsch|u_memory|o_row_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|o_row_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_next_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|f_i_row_next_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|f_i_row_next_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N23
cycloneii_lcell_ff \u_kirsch|reg_f_i_row_next_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_next_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_row_next_4_ ));

// atom is at LCCOMB_X55_Y16_N24
cycloneii_lcell_comb \u_kirsch|ix20836z52993 (
// Equation(s):
// \u_kirsch|f_i_row_4_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_row_4_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_row_next_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|f_i_row_next_4_ ),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\u_kirsch|u_memory|o_row_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_row_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52993 .lut_mask = 16'hFC0C;
defparam \u_kirsch|ix20836z52993 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N25
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p2r_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_row_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx18802z1 ));

// atom is at LCFF_X55_Y16_N29
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p3r_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|nx18802z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx23937z1 ));

// atom is at LCCOMB_X55_Y16_N16
cycloneii_lcell_comb \u_kirsch|u_flow|nx29072z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx29072z1~feeder_combout  = \u_kirsch|u_flow|nx23937z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx23937z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx29072z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx29072z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx29072z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N17
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p4r_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx29072z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx29072z1 ));

// atom is at LCCOMB_X56_Y16_N6
cycloneii_lcell_comb \u_kirsch|u_flow|o_row_4_~feeder (
// Equation(s):
// \u_kirsch|u_flow|o_row_4_~feeder_combout  = \u_kirsch|u_flow|nx29072z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx29072z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|o_row_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|o_row_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|o_row_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N7
cycloneii_lcell_ff \u_kirsch|u_flow|ix258_reg_p5r_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|o_row_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|o_row_4_ ));

// atom is at LCCOMB_X55_Y16_N0
cycloneii_lcell_comb ix1027z52923(
// Equation(s):
// nx1027z1 = \u_kirsch|u_flow|o_row_4_  & (\u_kirsch|u_flow|o_row_7_  $ (\u_kirsch|u_flow|o_row_5_  # !\u_kirsch|u_flow|o_row_6_ )) # !\u_kirsch|u_flow|o_row_4_  & !\u_kirsch|u_flow|o_row_7_  & \u_kirsch|u_flow|o_row_5_  & !\u_kirsch|u_flow|o_row_6_ 

	.dataa(\u_kirsch|u_flow|o_row_7_ ),
	.datab(\u_kirsch|u_flow|o_row_4_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_6_ ),
	.cin(gnd),
	.combout(nx1027z1),
	.cout());
// synopsys translate_off
defparam ix1027z52923.lut_mask = 16'h4854;
defparam ix1027z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N1
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx1027z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx50824z1));

// atom is at LCCOMB_X55_Y16_N2
cycloneii_lcell_comb ix25683z52923(
// Equation(s):
// nx25683z1 = \u_kirsch|u_flow|o_row_5_  & !\u_kirsch|u_flow|o_row_7_  & \u_kirsch|u_flow|o_row_4_  # !\u_kirsch|u_flow|o_row_5_  & (\u_kirsch|u_flow|o_row_6_  & !\u_kirsch|u_flow|o_row_7_  # !\u_kirsch|u_flow|o_row_6_  & (\u_kirsch|u_flow|o_row_4_ ))

	.dataa(\u_kirsch|u_flow|o_row_7_ ),
	.datab(\u_kirsch|u_flow|o_row_4_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_6_ ),
	.cin(gnd),
	.combout(nx25683z1),
	.cout());
// synopsys translate_off
defparam ix25683z52923.lut_mask = 16'h454C;
defparam ix25683z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N3
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx25683z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62540z1));

// atom is at LCCOMB_X55_Y16_N12
cycloneii_lcell_comb ix26680z52923(
// Equation(s):
// nx26680z1 = \u_kirsch|u_flow|o_row_4_  & (\u_kirsch|u_flow|o_row_5_  $ !\u_kirsch|u_flow|o_row_6_ ) # !\u_kirsch|u_flow|o_row_4_  & (\u_kirsch|u_flow|o_row_7_  & \u_kirsch|u_flow|o_row_5_  & !\u_kirsch|u_flow|o_row_6_  # !\u_kirsch|u_flow|o_row_7_  & 
// !\u_kirsch|u_flow|o_row_5_  & \u_kirsch|u_flow|o_row_6_ )

	.dataa(\u_kirsch|u_flow|o_row_7_ ),
	.datab(\u_kirsch|u_flow|o_row_4_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_6_ ),
	.cin(gnd),
	.combout(nx26680z1),
	.cout());
// synopsys translate_off
defparam ix26680z52923.lut_mask = 16'hC12C;
defparam ix26680z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N13
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx26680z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63537z1));

// atom is at LCCOMB_X55_Y16_N30
cycloneii_lcell_comb ix27677z52923(
// Equation(s):
// nx27677z1 = \u_kirsch|u_flow|o_row_7_  & \u_kirsch|u_flow|o_row_6_  & (\u_kirsch|u_flow|o_row_5_  # !\u_kirsch|u_flow|o_row_4_ ) # !\u_kirsch|u_flow|o_row_7_  & !\u_kirsch|u_flow|o_row_4_  & \u_kirsch|u_flow|o_row_5_  & !\u_kirsch|u_flow|o_row_6_ 

	.dataa(\u_kirsch|u_flow|o_row_7_ ),
	.datab(\u_kirsch|u_flow|o_row_4_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_6_ ),
	.cin(gnd),
	.combout(nx27677z1),
	.cout());
// synopsys translate_off
defparam ix27677z52923.lut_mask = 16'hA210;
defparam ix27677z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N31
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx27677z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64534z1));

// atom is at LCCOMB_X55_Y16_N8
cycloneii_lcell_comb ix28674z52923(
// Equation(s):
// nx28674z1 = \u_kirsch|u_flow|o_row_7_  & (\u_kirsch|u_flow|o_row_4_  & \u_kirsch|u_flow|o_row_5_  # !\u_kirsch|u_flow|o_row_4_  & (\u_kirsch|u_flow|o_row_6_ )) # !\u_kirsch|u_flow|o_row_7_  & \u_kirsch|u_flow|o_row_6_  & (\u_kirsch|u_flow|o_row_4_  $ 
// \u_kirsch|u_flow|o_row_5_ )

	.dataa(\u_kirsch|u_flow|o_row_7_ ),
	.datab(\u_kirsch|u_flow|o_row_4_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_6_ ),
	.cin(gnd),
	.combout(nx28674z1),
	.cout());
// synopsys translate_off
defparam ix28674z52923.lut_mask = 16'hB680;
defparam ix28674z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N9
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx28674z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx65531z1));

// atom is at LCCOMB_X55_Y16_N10
cycloneii_lcell_comb ix29671z52923(
// Equation(s):
// nx29671z1 = \u_kirsch|u_flow|o_row_7_  & \u_kirsch|u_flow|o_row_4_  & (\u_kirsch|u_flow|o_row_5_  $ \u_kirsch|u_flow|o_row_6_ ) # !\u_kirsch|u_flow|o_row_7_  & !\u_kirsch|u_flow|o_row_5_  & (\u_kirsch|u_flow|o_row_4_  $ \u_kirsch|u_flow|o_row_6_ )

	.dataa(\u_kirsch|u_flow|o_row_7_ ),
	.datab(\u_kirsch|u_flow|o_row_4_ ),
	.datac(\u_kirsch|u_flow|o_row_5_ ),
	.datad(\u_kirsch|u_flow|o_row_6_ ),
	.cin(gnd),
	.combout(nx29671z1),
	.cout());
// synopsys translate_off
defparam ix29671z52923.lut_mask = 16'h0984;
defparam ix29671z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N11
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx29671z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx992z1));

// atom is at LCCOMB_X55_Y17_N18
cycloneii_lcell_comb \u_kirsch|u_memory|ix33254z52923 (
// Equation(s):
// \u_kirsch|u_memory|nx33254z1  = \u_kirsch|u_memory|busySignal  # \u_uw_uart|o_pixavail 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|u_memory|busySignal ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|nx33254z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix33254z52923 .lut_mask = 16'hFFF0;
defparam \u_kirsch|u_memory|ix33254z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N19
cycloneii_lcell_ff \u_kirsch|u_memory|reg_busySignal (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|nx33254z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|u_memory|nx8852z2 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|busySignal ));

// atom is at LCCOMB_X55_Y17_N8
cycloneii_lcell_comb \u_kirsch|u_memory|busySignalDelayed~feeder (
// Equation(s):
// \u_kirsch|u_memory|busySignalDelayed~feeder_combout  = \u_kirsch|u_memory|busySignal 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_memory|busySignal ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|busySignalDelayed~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|busySignalDelayed~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_memory|busySignalDelayed~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N9
cycloneii_lcell_ff \u_kirsch|u_memory|reg_busySignalDelayed (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|busySignalDelayed~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_memory|busySignalDelayed ));

// atom is at LCCOMB_X55_Y17_N28
cycloneii_lcell_comb \u_kirsch|u_memory|ix15976z52923 (
// Equation(s):
// \u_kirsch|u_memory|o_mode_0_  = \u_uw_uart|o_pixavail  # \u_kirsch|u_memory|busySignal  # \u_kirsch|u_memory|busySignalDelayed  # !\nrst~combout 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_kirsch|u_memory|busySignal ),
	.datac(\u_kirsch|u_memory|busySignalDelayed ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|u_memory|o_mode_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_memory|ix15976z52923 .lut_mask = 16'hFEFF;
defparam \u_kirsch|u_memory|ix15976z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N29
cycloneii_lcell_ff \u_kirsch|reg_f_i_mode_next_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_memory|o_mode_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx35105z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_i_mode_next_0_ ));

// atom is at LCCOMB_X59_Y17_N2
cycloneii_lcell_comb \u_kirsch|ix20836z52989 (
// Equation(s):
// \u_kirsch|f_i_mode_0_  = \u_kirsch|nx57127z2  & (\u_kirsch|u_memory|o_mode_0_ ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_mode_next_0_ 

	.dataa(\u_kirsch|nx57127z2 ),
	.datab(vcc),
	.datac(\u_kirsch|f_i_mode_next_0_ ),
	.datad(\u_kirsch|u_memory|o_mode_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_mode_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52989 .lut_mask = 16'hFA50;
defparam \u_kirsch|ix20836z52989 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N3
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p2m_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_mode_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx42010z1 ));

// atom is at LCCOMB_X59_Y17_N30
cycloneii_lcell_comb \u_kirsch|u_flow|nx47145z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx47145z1~feeder_combout  = \u_kirsch|u_flow|nx42010z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx42010z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx47145z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx47145z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx47145z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N31
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p3m_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx47145z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx47145z1 ));

// atom is at LCCOMB_X59_Y17_N10
cycloneii_lcell_comb \u_kirsch|u_flow|nx13256z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx13256z1~feeder_combout  = \u_kirsch|u_flow|nx47145z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx47145z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx13256z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx13256z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx13256z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N11
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p4m_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx13256z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx13256z1 ));

// atom is at LCCOMB_X59_Y17_N6
cycloneii_lcell_comb \u_kirsch|u_flow|p5m_0_~feeder (
// Equation(s):
// \u_kirsch|u_flow|p5m_0_~feeder_combout  = \u_kirsch|u_flow|nx13256z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx13256z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|p5m_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|p5m_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|p5m_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N7
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p5m_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|p5m_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p5m_0_ ));

// atom is at LCCOMB_X59_Y17_N0
cycloneii_lcell_comb \u_kirsch|ix20836z52988 (
// Equation(s):
// \u_kirsch|f_i_mode_1_  = \u_kirsch|nx57127z2  & (\nrst~combout ) # !\u_kirsch|nx57127z2  & \u_kirsch|f_i_mode_next_1_ 

	.dataa(\u_kirsch|f_i_mode_next_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|nx57127z2 ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|f_i_mode_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20836z52988 .lut_mask = 16'hFA0A;
defparam \u_kirsch|ix20836z52988 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N1
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p2m_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|f_i_mode_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx41013z1 ));

// atom is at LCCOMB_X59_Y17_N26
cycloneii_lcell_comb \u_kirsch|u_flow|nx46148z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx46148z1~feeder_combout  = \u_kirsch|u_flow|nx41013z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx41013z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx46148z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx46148z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx46148z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N27
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p3m_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx46148z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx46148z1 ));

// atom is at LCCOMB_X59_Y17_N4
cycloneii_lcell_comb \u_kirsch|u_flow|nx14253z1~feeder (
// Equation(s):
// \u_kirsch|u_flow|nx14253z1~feeder_combout  = \u_kirsch|u_flow|nx46148z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|u_flow|nx46148z1 ),
	.cin(gnd),
	.combout(\u_kirsch|u_flow|nx14253z1~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|u_flow|nx14253z1~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|u_flow|nx14253z1~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y17_N5
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p4m_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|u_flow|nx14253z1~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|nx14253z1 ));

// atom is at LCFF_X59_Y17_N19
cycloneii_lcell_ff \u_kirsch|u_flow|ix259_reg_p5m_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|u_flow|nx14253z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|u_flow|p5m_1_ ));

// atom is at LCCOMB_X59_Y17_N18
cycloneii_lcell_comb \u_kirsch|ix15976z52923 (
// Equation(s):
// \u_kirsch|o_mode_0_  = \u_kirsch|u_memory|o_mode_0_  # \u_kirsch|u_flow|p5m_0_  & \u_kirsch|u_flow|p5m_1_  # !\nrst~combout 

	.dataa(\u_kirsch|u_flow|p5m_0_ ),
	.datab(\u_kirsch|u_memory|o_mode_0_ ),
	.datac(\u_kirsch|u_flow|p5m_1_ ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|o_mode_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix15976z52923 .lut_mask = 16'hECFF;
defparam \u_kirsch|ix15976z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_B25
cycloneii_io ix21351z43919(
	.datain(!nx21351z2),
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
	.padio(txflex));
// synopsys translate_off
defparam ix21351z43919.input_async_reset = "none";
defparam ix21351z43919.input_power_up = "low";
defparam ix21351z43919.input_register_mode = "none";
defparam ix21351z43919.input_sync_reset = "none";
defparam ix21351z43919.oe_async_reset = "none";
defparam ix21351z43919.oe_power_up = "low";
defparam ix21351z43919.oe_register_mode = "none";
defparam ix21351z43919.oe_sync_reset = "none";
defparam ix21351z43919.operation_mode = "output";
defparam ix21351z43919.output_async_reset = "none";
defparam ix21351z43919.output_power_up = "low";
defparam ix21351z43919.output_register_mode = "none";
defparam ix21351z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M4
cycloneii_io ix41851z43919(
	.datain(nx41851z1),
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
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam ix41851z43919.input_async_reset = "none";
defparam ix41851z43919.input_power_up = "low";
defparam ix41851z43919.input_register_mode = "none";
defparam ix41851z43919.input_sync_reset = "none";
defparam ix41851z43919.oe_async_reset = "none";
defparam ix41851z43919.oe_power_up = "low";
defparam ix41851z43919.oe_register_mode = "none";
defparam ix41851z43919.oe_sync_reset = "none";
defparam ix41851z43919.operation_mode = "output";
defparam ix41851z43919.output_async_reset = "none";
defparam ix41851z43919.output_power_up = "low";
defparam ix41851z43919.output_register_mode = "none";
defparam ix41851z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M5
cycloneii_io ix42848z43919(
	.datain(nx42848z1),
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
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam ix42848z43919.input_async_reset = "none";
defparam ix42848z43919.input_power_up = "low";
defparam ix42848z43919.input_register_mode = "none";
defparam ix42848z43919.input_sync_reset = "none";
defparam ix42848z43919.oe_async_reset = "none";
defparam ix42848z43919.oe_power_up = "low";
defparam ix42848z43919.oe_register_mode = "none";
defparam ix42848z43919.oe_sync_reset = "none";
defparam ix42848z43919.operation_mode = "output";
defparam ix42848z43919.output_async_reset = "none";
defparam ix42848z43919.output_power_up = "low";
defparam ix42848z43919.output_register_mode = "none";
defparam ix42848z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M3
cycloneii_io ix43845z43919(
	.datain(nx43845z1),
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
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam ix43845z43919.input_async_reset = "none";
defparam ix43845z43919.input_power_up = "low";
defparam ix43845z43919.input_register_mode = "none";
defparam ix43845z43919.input_sync_reset = "none";
defparam ix43845z43919.oe_async_reset = "none";
defparam ix43845z43919.oe_power_up = "low";
defparam ix43845z43919.oe_register_mode = "none";
defparam ix43845z43919.oe_sync_reset = "none";
defparam ix43845z43919.operation_mode = "output";
defparam ix43845z43919.output_async_reset = "none";
defparam ix43845z43919.output_power_up = "low";
defparam ix43845z43919.output_register_mode = "none";
defparam ix43845z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M2
cycloneii_io ix44842z43919(
	.datain(nx44842z1),
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
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam ix44842z43919.input_async_reset = "none";
defparam ix44842z43919.input_power_up = "low";
defparam ix44842z43919.input_register_mode = "none";
defparam ix44842z43919.input_sync_reset = "none";
defparam ix44842z43919.oe_async_reset = "none";
defparam ix44842z43919.oe_power_up = "low";
defparam ix44842z43919.oe_register_mode = "none";
defparam ix44842z43919.oe_sync_reset = "none";
defparam ix44842z43919.operation_mode = "output";
defparam ix44842z43919.output_async_reset = "none";
defparam ix44842z43919.output_power_up = "low";
defparam ix44842z43919.output_register_mode = "none";
defparam ix44842z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P3
cycloneii_io ix45839z43919(
	.datain(nx45839z1),
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
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam ix45839z43919.input_async_reset = "none";
defparam ix45839z43919.input_power_up = "low";
defparam ix45839z43919.input_register_mode = "none";
defparam ix45839z43919.input_sync_reset = "none";
defparam ix45839z43919.oe_async_reset = "none";
defparam ix45839z43919.oe_power_up = "low";
defparam ix45839z43919.oe_register_mode = "none";
defparam ix45839z43919.oe_sync_reset = "none";
defparam ix45839z43919.operation_mode = "output";
defparam ix45839z43919.output_async_reset = "none";
defparam ix45839z43919.output_power_up = "low";
defparam ix45839z43919.output_register_mode = "none";
defparam ix45839z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P4
cycloneii_io ix46836z43919(
	.datain(nx46836z1),
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
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam ix46836z43919.input_async_reset = "none";
defparam ix46836z43919.input_power_up = "low";
defparam ix46836z43919.input_register_mode = "none";
defparam ix46836z43919.input_sync_reset = "none";
defparam ix46836z43919.oe_async_reset = "none";
defparam ix46836z43919.oe_power_up = "low";
defparam ix46836z43919.oe_register_mode = "none";
defparam ix46836z43919.oe_sync_reset = "none";
defparam ix46836z43919.operation_mode = "output";
defparam ix46836z43919.output_async_reset = "none";
defparam ix46836z43919.output_power_up = "low";
defparam ix46836z43919.output_register_mode = "none";
defparam ix46836z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R2
cycloneii_io ix47833z43919(
	.datain(nx47833z1),
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
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam ix47833z43919.input_async_reset = "none";
defparam ix47833z43919.input_power_up = "low";
defparam ix47833z43919.input_register_mode = "none";
defparam ix47833z43919.input_sync_reset = "none";
defparam ix47833z43919.oe_async_reset = "none";
defparam ix47833z43919.oe_power_up = "low";
defparam ix47833z43919.oe_register_mode = "none";
defparam ix47833z43919.oe_sync_reset = "none";
defparam ix47833z43919.operation_mode = "output";
defparam ix47833z43919.output_async_reset = "none";
defparam ix47833z43919.output_power_up = "low";
defparam ix47833z43919.output_register_mode = "none";
defparam ix47833z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A10
cycloneii_io o_sevenseg_obuf_7_(
	.datain(vcc),
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
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam o_sevenseg_obuf_7_.input_async_reset = "none";
defparam o_sevenseg_obuf_7_.input_power_up = "low";
defparam o_sevenseg_obuf_7_.input_register_mode = "none";
defparam o_sevenseg_obuf_7_.input_sync_reset = "none";
defparam o_sevenseg_obuf_7_.oe_async_reset = "none";
defparam o_sevenseg_obuf_7_.oe_power_up = "low";
defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
defparam o_sevenseg_obuf_7_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_7_.operation_mode = "output";
defparam o_sevenseg_obuf_7_.output_async_reset = "none";
defparam o_sevenseg_obuf_7_.output_power_up = "low";
defparam o_sevenseg_obuf_7_.output_register_mode = "none";
defparam o_sevenseg_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N9
cycloneii_io ix49827z43919(
	.datain(nx49827z1),
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
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam ix49827z43919.input_async_reset = "none";
defparam ix49827z43919.input_power_up = "low";
defparam ix49827z43919.input_register_mode = "none";
defparam ix49827z43919.input_sync_reset = "none";
defparam ix49827z43919.oe_async_reset = "none";
defparam ix49827z43919.oe_power_up = "low";
defparam ix49827z43919.oe_register_mode = "none";
defparam ix49827z43919.oe_sync_reset = "none";
defparam ix49827z43919.operation_mode = "output";
defparam ix49827z43919.output_async_reset = "none";
defparam ix49827z43919.output_power_up = "low";
defparam ix49827z43919.output_register_mode = "none";
defparam ix49827z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P9
cycloneii_io ix50824z43919(
	.datain(nx50824z1),
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
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam ix50824z43919.input_async_reset = "none";
defparam ix50824z43919.input_power_up = "low";
defparam ix50824z43919.input_register_mode = "none";
defparam ix50824z43919.input_sync_reset = "none";
defparam ix50824z43919.oe_async_reset = "none";
defparam ix50824z43919.oe_power_up = "low";
defparam ix50824z43919.oe_register_mode = "none";
defparam ix50824z43919.oe_sync_reset = "none";
defparam ix50824z43919.operation_mode = "output";
defparam ix50824z43919.output_async_reset = "none";
defparam ix50824z43919.output_power_up = "low";
defparam ix50824z43919.output_register_mode = "none";
defparam ix50824z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L7
cycloneii_io ix62540z43919(
	.datain(nx62540z1),
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
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam ix62540z43919.input_async_reset = "none";
defparam ix62540z43919.input_power_up = "low";
defparam ix62540z43919.input_register_mode = "none";
defparam ix62540z43919.input_sync_reset = "none";
defparam ix62540z43919.oe_async_reset = "none";
defparam ix62540z43919.oe_power_up = "low";
defparam ix62540z43919.oe_register_mode = "none";
defparam ix62540z43919.oe_sync_reset = "none";
defparam ix62540z43919.operation_mode = "output";
defparam ix62540z43919.output_async_reset = "none";
defparam ix62540z43919.output_power_up = "low";
defparam ix62540z43919.output_register_mode = "none";
defparam ix62540z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L6
cycloneii_io ix63537z43919(
	.datain(nx63537z1),
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
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam ix63537z43919.input_async_reset = "none";
defparam ix63537z43919.input_power_up = "low";
defparam ix63537z43919.input_register_mode = "none";
defparam ix63537z43919.input_sync_reset = "none";
defparam ix63537z43919.oe_async_reset = "none";
defparam ix63537z43919.oe_power_up = "low";
defparam ix63537z43919.oe_register_mode = "none";
defparam ix63537z43919.oe_sync_reset = "none";
defparam ix63537z43919.operation_mode = "output";
defparam ix63537z43919.output_async_reset = "none";
defparam ix63537z43919.output_power_up = "low";
defparam ix63537z43919.output_register_mode = "none";
defparam ix63537z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L9
cycloneii_io ix64534z43919(
	.datain(nx64534z1),
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
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam ix64534z43919.input_async_reset = "none";
defparam ix64534z43919.input_power_up = "low";
defparam ix64534z43919.input_register_mode = "none";
defparam ix64534z43919.input_sync_reset = "none";
defparam ix64534z43919.oe_async_reset = "none";
defparam ix64534z43919.oe_power_up = "low";
defparam ix64534z43919.oe_register_mode = "none";
defparam ix64534z43919.oe_sync_reset = "none";
defparam ix64534z43919.operation_mode = "output";
defparam ix64534z43919.output_async_reset = "none";
defparam ix64534z43919.output_power_up = "low";
defparam ix64534z43919.output_register_mode = "none";
defparam ix64534z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L2
cycloneii_io ix65531z43919(
	.datain(nx65531z1),
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
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam ix65531z43919.input_async_reset = "none";
defparam ix65531z43919.input_power_up = "low";
defparam ix65531z43919.input_register_mode = "none";
defparam ix65531z43919.input_sync_reset = "none";
defparam ix65531z43919.oe_async_reset = "none";
defparam ix65531z43919.oe_power_up = "low";
defparam ix65531z43919.oe_register_mode = "none";
defparam ix65531z43919.oe_sync_reset = "none";
defparam ix65531z43919.operation_mode = "output";
defparam ix65531z43919.output_async_reset = "none";
defparam ix65531z43919.output_power_up = "low";
defparam ix65531z43919.output_register_mode = "none";
defparam ix65531z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L3
cycloneii_io ix992z43919(
	.datain(nx992z1),
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
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam ix992z43919.input_async_reset = "none";
defparam ix992z43919.input_power_up = "low";
defparam ix992z43919.input_register_mode = "none";
defparam ix992z43919.input_sync_reset = "none";
defparam ix992z43919.oe_async_reset = "none";
defparam ix992z43919.oe_power_up = "low";
defparam ix992z43919.oe_register_mode = "none";
defparam ix992z43919.oe_sync_reset = "none";
defparam ix992z43919.operation_mode = "output";
defparam ix992z43919.output_async_reset = "none";
defparam ix992z43919.output_power_up = "low";
defparam ix992z43919.output_register_mode = "none";
defparam ix992z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A8
cycloneii_io o_sevenseg_obuf_15_(
	.datain(vcc),
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
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam o_sevenseg_obuf_15_.input_async_reset = "none";
defparam o_sevenseg_obuf_15_.input_power_up = "low";
defparam o_sevenseg_obuf_15_.input_register_mode = "none";
defparam o_sevenseg_obuf_15_.input_sync_reset = "none";
defparam o_sevenseg_obuf_15_.oe_async_reset = "none";
defparam o_sevenseg_obuf_15_.oe_power_up = "low";
defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
defparam o_sevenseg_obuf_15_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_15_.operation_mode = "output";
defparam o_sevenseg_obuf_15_.output_async_reset = "none";
defparam o_sevenseg_obuf_15_.output_power_up = "low";
defparam o_sevenseg_obuf_15_.output_register_mode = "none";
defparam o_sevenseg_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA20
cycloneii_io o_mode_obuf_0_(
	.datain(\u_kirsch|o_mode_0_ ),
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

// atom is at PIN_Y18
cycloneii_io o_mode_obuf_1_(
	.datain(\nrst~combout ),
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

// atom is at PIN_AD12
cycloneii_io o_nrst_obuf(
	.datain(!\nrst~combout ),
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
	.padio(o_nrst));
// synopsys translate_off
defparam o_nrst_obuf.input_async_reset = "none";
defparam o_nrst_obuf.input_power_up = "low";
defparam o_nrst_obuf.input_register_mode = "none";
defparam o_nrst_obuf.input_sync_reset = "none";
defparam o_nrst_obuf.oe_async_reset = "none";
defparam o_nrst_obuf.oe_power_up = "low";
defparam o_nrst_obuf.oe_register_mode = "none";
defparam o_nrst_obuf.oe_sync_reset = "none";
defparam o_nrst_obuf.operation_mode = "output";
defparam o_nrst_obuf.output_async_reset = "none";
defparam o_nrst_obuf.output_power_up = "low";
defparam o_nrst_obuf.output_register_mode = "none";
defparam o_nrst_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE23
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

// atom is at PIN_AF23
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

// atom is at PIN_AB21
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

// atom is at PIN_AC22
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

// atom is at PIN_AD22
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

// atom is at PIN_AD23
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

// atom is at PIN_AD21
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

// atom is at PIN_AC21
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

// atom is at PIN_AA14
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

// atom is at PIN_Y13
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

// atom is at PIN_AA13
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

// atom is at PIN_AC14
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

// atom is at PIN_AD15
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

// atom is at PIN_AE15
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

// atom is at PIN_AF13
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

// atom is at PIN_AE13
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

// atom is at PIN_AE12
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

// atom is at PIN_AE22
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

// atom is at PIN_AF22
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

// atom is at PIN_W19
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

// atom is at PIN_V18
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

// atom is at PIN_U18
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

// atom is at PIN_U17
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

// atom is at PIN_V13
cycloneii_io debug_sevenseg_0_triBus3_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[0]));
// synopsys translate_off
defparam debug_sevenseg_0_triBus3_0_.input_async_reset = "none";
defparam debug_sevenseg_0_triBus3_0_.input_power_up = "low";
defparam debug_sevenseg_0_triBus3_0_.input_register_mode = "none";
defparam debug_sevenseg_0_triBus3_0_.input_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_0_.oe_async_reset = "none";
defparam debug_sevenseg_0_triBus3_0_.oe_power_up = "low";
defparam debug_sevenseg_0_triBus3_0_.oe_register_mode = "none";
defparam debug_sevenseg_0_triBus3_0_.oe_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_0_.operation_mode = "output";
defparam debug_sevenseg_0_triBus3_0_.output_async_reset = "none";
defparam debug_sevenseg_0_triBus3_0_.output_power_up = "low";
defparam debug_sevenseg_0_triBus3_0_.output_register_mode = "none";
defparam debug_sevenseg_0_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V14
cycloneii_io debug_sevenseg_0_triBus3_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[1]));
// synopsys translate_off
defparam debug_sevenseg_0_triBus3_1_.input_async_reset = "none";
defparam debug_sevenseg_0_triBus3_1_.input_power_up = "low";
defparam debug_sevenseg_0_triBus3_1_.input_register_mode = "none";
defparam debug_sevenseg_0_triBus3_1_.input_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_1_.oe_async_reset = "none";
defparam debug_sevenseg_0_triBus3_1_.oe_power_up = "low";
defparam debug_sevenseg_0_triBus3_1_.oe_register_mode = "none";
defparam debug_sevenseg_0_triBus3_1_.oe_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_1_.operation_mode = "output";
defparam debug_sevenseg_0_triBus3_1_.output_async_reset = "none";
defparam debug_sevenseg_0_triBus3_1_.output_power_up = "low";
defparam debug_sevenseg_0_triBus3_1_.output_register_mode = "none";
defparam debug_sevenseg_0_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE11
cycloneii_io debug_sevenseg_0_triBus3_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[2]));
// synopsys translate_off
defparam debug_sevenseg_0_triBus3_2_.input_async_reset = "none";
defparam debug_sevenseg_0_triBus3_2_.input_power_up = "low";
defparam debug_sevenseg_0_triBus3_2_.input_register_mode = "none";
defparam debug_sevenseg_0_triBus3_2_.input_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_2_.oe_async_reset = "none";
defparam debug_sevenseg_0_triBus3_2_.oe_power_up = "low";
defparam debug_sevenseg_0_triBus3_2_.oe_register_mode = "none";
defparam debug_sevenseg_0_triBus3_2_.oe_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_2_.operation_mode = "output";
defparam debug_sevenseg_0_triBus3_2_.output_async_reset = "none";
defparam debug_sevenseg_0_triBus3_2_.output_power_up = "low";
defparam debug_sevenseg_0_triBus3_2_.output_register_mode = "none";
defparam debug_sevenseg_0_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD11
cycloneii_io debug_sevenseg_0_triBus3_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[3]));
// synopsys translate_off
defparam debug_sevenseg_0_triBus3_3_.input_async_reset = "none";
defparam debug_sevenseg_0_triBus3_3_.input_power_up = "low";
defparam debug_sevenseg_0_triBus3_3_.input_register_mode = "none";
defparam debug_sevenseg_0_triBus3_3_.input_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_3_.oe_async_reset = "none";
defparam debug_sevenseg_0_triBus3_3_.oe_power_up = "low";
defparam debug_sevenseg_0_triBus3_3_.oe_register_mode = "none";
defparam debug_sevenseg_0_triBus3_3_.oe_sync_reset = "none";
defparam debug_sevenseg_0_triBus3_3_.operation_mode = "output";
defparam debug_sevenseg_0_triBus3_3_.output_async_reset = "none";
defparam debug_sevenseg_0_triBus3_3_.output_power_up = "low";
defparam debug_sevenseg_0_triBus3_3_.output_register_mode = "none";
defparam debug_sevenseg_0_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB24
cycloneii_io debug_sevenseg_1_triBus4_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[0]));
// synopsys translate_off
defparam debug_sevenseg_1_triBus4_0_.input_async_reset = "none";
defparam debug_sevenseg_1_triBus4_0_.input_power_up = "low";
defparam debug_sevenseg_1_triBus4_0_.input_register_mode = "none";
defparam debug_sevenseg_1_triBus4_0_.input_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_0_.oe_async_reset = "none";
defparam debug_sevenseg_1_triBus4_0_.oe_power_up = "low";
defparam debug_sevenseg_1_triBus4_0_.oe_register_mode = "none";
defparam debug_sevenseg_1_triBus4_0_.oe_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_0_.operation_mode = "output";
defparam debug_sevenseg_1_triBus4_0_.output_async_reset = "none";
defparam debug_sevenseg_1_triBus4_0_.output_power_up = "low";
defparam debug_sevenseg_1_triBus4_0_.output_register_mode = "none";
defparam debug_sevenseg_1_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA23
cycloneii_io debug_sevenseg_1_triBus4_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[1]));
// synopsys translate_off
defparam debug_sevenseg_1_triBus4_1_.input_async_reset = "none";
defparam debug_sevenseg_1_triBus4_1_.input_power_up = "low";
defparam debug_sevenseg_1_triBus4_1_.input_register_mode = "none";
defparam debug_sevenseg_1_triBus4_1_.input_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_1_.oe_async_reset = "none";
defparam debug_sevenseg_1_triBus4_1_.oe_power_up = "low";
defparam debug_sevenseg_1_triBus4_1_.oe_register_mode = "none";
defparam debug_sevenseg_1_triBus4_1_.oe_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_1_.operation_mode = "output";
defparam debug_sevenseg_1_triBus4_1_.output_async_reset = "none";
defparam debug_sevenseg_1_triBus4_1_.output_power_up = "low";
defparam debug_sevenseg_1_triBus4_1_.output_register_mode = "none";
defparam debug_sevenseg_1_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA24
cycloneii_io debug_sevenseg_1_triBus4_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[2]));
// synopsys translate_off
defparam debug_sevenseg_1_triBus4_2_.input_async_reset = "none";
defparam debug_sevenseg_1_triBus4_2_.input_power_up = "low";
defparam debug_sevenseg_1_triBus4_2_.input_register_mode = "none";
defparam debug_sevenseg_1_triBus4_2_.input_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_2_.oe_async_reset = "none";
defparam debug_sevenseg_1_triBus4_2_.oe_power_up = "low";
defparam debug_sevenseg_1_triBus4_2_.oe_register_mode = "none";
defparam debug_sevenseg_1_triBus4_2_.oe_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_2_.operation_mode = "output";
defparam debug_sevenseg_1_triBus4_2_.output_async_reset = "none";
defparam debug_sevenseg_1_triBus4_2_.output_power_up = "low";
defparam debug_sevenseg_1_triBus4_2_.output_register_mode = "none";
defparam debug_sevenseg_1_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y22
cycloneii_io debug_sevenseg_1_triBus4_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[3]));
// synopsys translate_off
defparam debug_sevenseg_1_triBus4_3_.input_async_reset = "none";
defparam debug_sevenseg_1_triBus4_3_.input_power_up = "low";
defparam debug_sevenseg_1_triBus4_3_.input_register_mode = "none";
defparam debug_sevenseg_1_triBus4_3_.input_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_3_.oe_async_reset = "none";
defparam debug_sevenseg_1_triBus4_3_.oe_power_up = "low";
defparam debug_sevenseg_1_triBus4_3_.oe_register_mode = "none";
defparam debug_sevenseg_1_triBus4_3_.oe_sync_reset = "none";
defparam debug_sevenseg_1_triBus4_3_.operation_mode = "output";
defparam debug_sevenseg_1_triBus4_3_.output_async_reset = "none";
defparam debug_sevenseg_1_triBus4_3_.output_power_up = "low";
defparam debug_sevenseg_1_triBus4_3_.output_register_mode = "none";
defparam debug_sevenseg_1_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y24
cycloneii_io debug_sevenseg_2_triBus5_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[0]));
// synopsys translate_off
defparam debug_sevenseg_2_triBus5_0_.input_async_reset = "none";
defparam debug_sevenseg_2_triBus5_0_.input_power_up = "low";
defparam debug_sevenseg_2_triBus5_0_.input_register_mode = "none";
defparam debug_sevenseg_2_triBus5_0_.input_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_0_.oe_async_reset = "none";
defparam debug_sevenseg_2_triBus5_0_.oe_power_up = "low";
defparam debug_sevenseg_2_triBus5_0_.oe_register_mode = "none";
defparam debug_sevenseg_2_triBus5_0_.oe_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_0_.operation_mode = "output";
defparam debug_sevenseg_2_triBus5_0_.output_async_reset = "none";
defparam debug_sevenseg_2_triBus5_0_.output_power_up = "low";
defparam debug_sevenseg_2_triBus5_0_.output_register_mode = "none";
defparam debug_sevenseg_2_triBus5_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB25
cycloneii_io debug_sevenseg_2_triBus5_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[1]));
// synopsys translate_off
defparam debug_sevenseg_2_triBus5_1_.input_async_reset = "none";
defparam debug_sevenseg_2_triBus5_1_.input_power_up = "low";
defparam debug_sevenseg_2_triBus5_1_.input_register_mode = "none";
defparam debug_sevenseg_2_triBus5_1_.input_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_1_.oe_async_reset = "none";
defparam debug_sevenseg_2_triBus5_1_.oe_power_up = "low";
defparam debug_sevenseg_2_triBus5_1_.oe_register_mode = "none";
defparam debug_sevenseg_2_triBus5_1_.oe_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_1_.operation_mode = "output";
defparam debug_sevenseg_2_triBus5_1_.output_async_reset = "none";
defparam debug_sevenseg_2_triBus5_1_.output_power_up = "low";
defparam debug_sevenseg_2_triBus5_1_.output_register_mode = "none";
defparam debug_sevenseg_2_triBus5_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB26
cycloneii_io debug_sevenseg_2_triBus5_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[2]));
// synopsys translate_off
defparam debug_sevenseg_2_triBus5_2_.input_async_reset = "none";
defparam debug_sevenseg_2_triBus5_2_.input_power_up = "low";
defparam debug_sevenseg_2_triBus5_2_.input_register_mode = "none";
defparam debug_sevenseg_2_triBus5_2_.input_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_2_.oe_async_reset = "none";
defparam debug_sevenseg_2_triBus5_2_.oe_power_up = "low";
defparam debug_sevenseg_2_triBus5_2_.oe_register_mode = "none";
defparam debug_sevenseg_2_triBus5_2_.oe_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_2_.operation_mode = "output";
defparam debug_sevenseg_2_triBus5_2_.output_async_reset = "none";
defparam debug_sevenseg_2_triBus5_2_.output_power_up = "low";
defparam debug_sevenseg_2_triBus5_2_.output_register_mode = "none";
defparam debug_sevenseg_2_triBus5_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC26
cycloneii_io debug_sevenseg_2_triBus5_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[3]));
// synopsys translate_off
defparam debug_sevenseg_2_triBus5_3_.input_async_reset = "none";
defparam debug_sevenseg_2_triBus5_3_.input_power_up = "low";
defparam debug_sevenseg_2_triBus5_3_.input_register_mode = "none";
defparam debug_sevenseg_2_triBus5_3_.input_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_3_.oe_async_reset = "none";
defparam debug_sevenseg_2_triBus5_3_.oe_power_up = "low";
defparam debug_sevenseg_2_triBus5_3_.oe_register_mode = "none";
defparam debug_sevenseg_2_triBus5_3_.oe_sync_reset = "none";
defparam debug_sevenseg_2_triBus5_3_.operation_mode = "output";
defparam debug_sevenseg_2_triBus5_3_.output_async_reset = "none";
defparam debug_sevenseg_2_triBus5_3_.output_power_up = "low";
defparam debug_sevenseg_2_triBus5_3_.output_register_mode = "none";
defparam debug_sevenseg_2_triBus5_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W24
cycloneii_io debug_sevenseg_3_triBus6_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[0]));
// synopsys translate_off
defparam debug_sevenseg_3_triBus6_0_.input_async_reset = "none";
defparam debug_sevenseg_3_triBus6_0_.input_power_up = "low";
defparam debug_sevenseg_3_triBus6_0_.input_register_mode = "none";
defparam debug_sevenseg_3_triBus6_0_.input_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_0_.oe_async_reset = "none";
defparam debug_sevenseg_3_triBus6_0_.oe_power_up = "low";
defparam debug_sevenseg_3_triBus6_0_.oe_register_mode = "none";
defparam debug_sevenseg_3_triBus6_0_.oe_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_0_.operation_mode = "output";
defparam debug_sevenseg_3_triBus6_0_.output_async_reset = "none";
defparam debug_sevenseg_3_triBus6_0_.output_power_up = "low";
defparam debug_sevenseg_3_triBus6_0_.output_register_mode = "none";
defparam debug_sevenseg_3_triBus6_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U22
cycloneii_io debug_sevenseg_3_triBus6_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[1]));
// synopsys translate_off
defparam debug_sevenseg_3_triBus6_1_.input_async_reset = "none";
defparam debug_sevenseg_3_triBus6_1_.input_power_up = "low";
defparam debug_sevenseg_3_triBus6_1_.input_register_mode = "none";
defparam debug_sevenseg_3_triBus6_1_.input_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_1_.oe_async_reset = "none";
defparam debug_sevenseg_3_triBus6_1_.oe_power_up = "low";
defparam debug_sevenseg_3_triBus6_1_.oe_register_mode = "none";
defparam debug_sevenseg_3_triBus6_1_.oe_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_1_.operation_mode = "output";
defparam debug_sevenseg_3_triBus6_1_.output_async_reset = "none";
defparam debug_sevenseg_3_triBus6_1_.output_power_up = "low";
defparam debug_sevenseg_3_triBus6_1_.output_register_mode = "none";
defparam debug_sevenseg_3_triBus6_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y25
cycloneii_io debug_sevenseg_3_triBus6_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[2]));
// synopsys translate_off
defparam debug_sevenseg_3_triBus6_2_.input_async_reset = "none";
defparam debug_sevenseg_3_triBus6_2_.input_power_up = "low";
defparam debug_sevenseg_3_triBus6_2_.input_register_mode = "none";
defparam debug_sevenseg_3_triBus6_2_.input_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_2_.oe_async_reset = "none";
defparam debug_sevenseg_3_triBus6_2_.oe_power_up = "low";
defparam debug_sevenseg_3_triBus6_2_.oe_register_mode = "none";
defparam debug_sevenseg_3_triBus6_2_.oe_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_2_.operation_mode = "output";
defparam debug_sevenseg_3_triBus6_2_.output_async_reset = "none";
defparam debug_sevenseg_3_triBus6_2_.output_power_up = "low";
defparam debug_sevenseg_3_triBus6_2_.output_register_mode = "none";
defparam debug_sevenseg_3_triBus6_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y26
cycloneii_io debug_sevenseg_3_triBus6_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[3]));
// synopsys translate_off
defparam debug_sevenseg_3_triBus6_3_.input_async_reset = "none";
defparam debug_sevenseg_3_triBus6_3_.input_power_up = "low";
defparam debug_sevenseg_3_triBus6_3_.input_register_mode = "none";
defparam debug_sevenseg_3_triBus6_3_.input_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_3_.oe_async_reset = "none";
defparam debug_sevenseg_3_triBus6_3_.oe_power_up = "low";
defparam debug_sevenseg_3_triBus6_3_.oe_register_mode = "none";
defparam debug_sevenseg_3_triBus6_3_.oe_sync_reset = "none";
defparam debug_sevenseg_3_triBus6_3_.operation_mode = "output";
defparam debug_sevenseg_3_triBus6_3_.output_async_reset = "none";
defparam debug_sevenseg_3_triBus6_3_.output_power_up = "low";
defparam debug_sevenseg_3_triBus6_3_.output_register_mode = "none";
defparam debug_sevenseg_3_triBus6_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T3
cycloneii_io debug_sevenseg_4_triBus7_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[0]));
// synopsys translate_off
defparam debug_sevenseg_4_triBus7_0_.input_async_reset = "none";
defparam debug_sevenseg_4_triBus7_0_.input_power_up = "low";
defparam debug_sevenseg_4_triBus7_0_.input_register_mode = "none";
defparam debug_sevenseg_4_triBus7_0_.input_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_0_.oe_async_reset = "none";
defparam debug_sevenseg_4_triBus7_0_.oe_power_up = "low";
defparam debug_sevenseg_4_triBus7_0_.oe_register_mode = "none";
defparam debug_sevenseg_4_triBus7_0_.oe_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_0_.operation_mode = "output";
defparam debug_sevenseg_4_triBus7_0_.output_async_reset = "none";
defparam debug_sevenseg_4_triBus7_0_.output_power_up = "low";
defparam debug_sevenseg_4_triBus7_0_.output_register_mode = "none";
defparam debug_sevenseg_4_triBus7_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R6
cycloneii_io debug_sevenseg_4_triBus7_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[1]));
// synopsys translate_off
defparam debug_sevenseg_4_triBus7_1_.input_async_reset = "none";
defparam debug_sevenseg_4_triBus7_1_.input_power_up = "low";
defparam debug_sevenseg_4_triBus7_1_.input_register_mode = "none";
defparam debug_sevenseg_4_triBus7_1_.input_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_1_.oe_async_reset = "none";
defparam debug_sevenseg_4_triBus7_1_.oe_power_up = "low";
defparam debug_sevenseg_4_triBus7_1_.oe_register_mode = "none";
defparam debug_sevenseg_4_triBus7_1_.oe_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_1_.operation_mode = "output";
defparam debug_sevenseg_4_triBus7_1_.output_async_reset = "none";
defparam debug_sevenseg_4_triBus7_1_.output_power_up = "low";
defparam debug_sevenseg_4_triBus7_1_.output_register_mode = "none";
defparam debug_sevenseg_4_triBus7_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R7
cycloneii_io debug_sevenseg_4_triBus7_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[2]));
// synopsys translate_off
defparam debug_sevenseg_4_triBus7_2_.input_async_reset = "none";
defparam debug_sevenseg_4_triBus7_2_.input_power_up = "low";
defparam debug_sevenseg_4_triBus7_2_.input_register_mode = "none";
defparam debug_sevenseg_4_triBus7_2_.input_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_2_.oe_async_reset = "none";
defparam debug_sevenseg_4_triBus7_2_.oe_power_up = "low";
defparam debug_sevenseg_4_triBus7_2_.oe_register_mode = "none";
defparam debug_sevenseg_4_triBus7_2_.oe_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_2_.operation_mode = "output";
defparam debug_sevenseg_4_triBus7_2_.output_async_reset = "none";
defparam debug_sevenseg_4_triBus7_2_.output_power_up = "low";
defparam debug_sevenseg_4_triBus7_2_.output_register_mode = "none";
defparam debug_sevenseg_4_triBus7_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T4
cycloneii_io debug_sevenseg_4_triBus7_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[3]));
// synopsys translate_off
defparam debug_sevenseg_4_triBus7_3_.input_async_reset = "none";
defparam debug_sevenseg_4_triBus7_3_.input_power_up = "low";
defparam debug_sevenseg_4_triBus7_3_.input_register_mode = "none";
defparam debug_sevenseg_4_triBus7_3_.input_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_3_.oe_async_reset = "none";
defparam debug_sevenseg_4_triBus7_3_.oe_power_up = "low";
defparam debug_sevenseg_4_triBus7_3_.oe_register_mode = "none";
defparam debug_sevenseg_4_triBus7_3_.oe_sync_reset = "none";
defparam debug_sevenseg_4_triBus7_3_.operation_mode = "output";
defparam debug_sevenseg_4_triBus7_3_.output_async_reset = "none";
defparam debug_sevenseg_4_triBus7_3_.output_power_up = "low";
defparam debug_sevenseg_4_triBus7_3_.output_register_mode = "none";
defparam debug_sevenseg_4_triBus7_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R3
cycloneii_io debug_sevenseg_5_triBus8_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[0]));
// synopsys translate_off
defparam debug_sevenseg_5_triBus8_0_.input_async_reset = "none";
defparam debug_sevenseg_5_triBus8_0_.input_power_up = "low";
defparam debug_sevenseg_5_triBus8_0_.input_register_mode = "none";
defparam debug_sevenseg_5_triBus8_0_.input_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_0_.oe_async_reset = "none";
defparam debug_sevenseg_5_triBus8_0_.oe_power_up = "low";
defparam debug_sevenseg_5_triBus8_0_.oe_register_mode = "none";
defparam debug_sevenseg_5_triBus8_0_.oe_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_0_.operation_mode = "output";
defparam debug_sevenseg_5_triBus8_0_.output_async_reset = "none";
defparam debug_sevenseg_5_triBus8_0_.output_power_up = "low";
defparam debug_sevenseg_5_triBus8_0_.output_register_mode = "none";
defparam debug_sevenseg_5_triBus8_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R4
cycloneii_io debug_sevenseg_5_triBus8_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[1]));
// synopsys translate_off
defparam debug_sevenseg_5_triBus8_1_.input_async_reset = "none";
defparam debug_sevenseg_5_triBus8_1_.input_power_up = "low";
defparam debug_sevenseg_5_triBus8_1_.input_register_mode = "none";
defparam debug_sevenseg_5_triBus8_1_.input_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_1_.oe_async_reset = "none";
defparam debug_sevenseg_5_triBus8_1_.oe_power_up = "low";
defparam debug_sevenseg_5_triBus8_1_.oe_register_mode = "none";
defparam debug_sevenseg_5_triBus8_1_.oe_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_1_.operation_mode = "output";
defparam debug_sevenseg_5_triBus8_1_.output_async_reset = "none";
defparam debug_sevenseg_5_triBus8_1_.output_power_up = "low";
defparam debug_sevenseg_5_triBus8_1_.output_register_mode = "none";
defparam debug_sevenseg_5_triBus8_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R5
cycloneii_io debug_sevenseg_5_triBus8_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[2]));
// synopsys translate_off
defparam debug_sevenseg_5_triBus8_2_.input_async_reset = "none";
defparam debug_sevenseg_5_triBus8_2_.input_power_up = "low";
defparam debug_sevenseg_5_triBus8_2_.input_register_mode = "none";
defparam debug_sevenseg_5_triBus8_2_.input_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_2_.oe_async_reset = "none";
defparam debug_sevenseg_5_triBus8_2_.oe_power_up = "low";
defparam debug_sevenseg_5_triBus8_2_.oe_register_mode = "none";
defparam debug_sevenseg_5_triBus8_2_.oe_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_2_.operation_mode = "output";
defparam debug_sevenseg_5_triBus8_2_.output_async_reset = "none";
defparam debug_sevenseg_5_triBus8_2_.output_power_up = "low";
defparam debug_sevenseg_5_triBus8_2_.output_register_mode = "none";
defparam debug_sevenseg_5_triBus8_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T9
cycloneii_io debug_sevenseg_5_triBus8_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[3]));
// synopsys translate_off
defparam debug_sevenseg_5_triBus8_3_.input_async_reset = "none";
defparam debug_sevenseg_5_triBus8_3_.input_power_up = "low";
defparam debug_sevenseg_5_triBus8_3_.input_register_mode = "none";
defparam debug_sevenseg_5_triBus8_3_.input_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_3_.oe_async_reset = "none";
defparam debug_sevenseg_5_triBus8_3_.oe_power_up = "low";
defparam debug_sevenseg_5_triBus8_3_.oe_register_mode = "none";
defparam debug_sevenseg_5_triBus8_3_.oe_sync_reset = "none";
defparam debug_sevenseg_5_triBus8_3_.operation_mode = "output";
defparam debug_sevenseg_5_triBus8_3_.output_async_reset = "none";
defparam debug_sevenseg_5_triBus8_3_.output_power_up = "low";
defparam debug_sevenseg_5_triBus8_3_.output_register_mode = "none";
defparam debug_sevenseg_5_triBus8_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N23
cycloneii_io \debug_key[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_key[1]~I .input_async_reset = "none";
defparam \debug_key[1]~I .input_power_up = "low";
defparam \debug_key[1]~I .input_register_mode = "none";
defparam \debug_key[1]~I .input_sync_reset = "none";
defparam \debug_key[1]~I .oe_async_reset = "none";
defparam \debug_key[1]~I .oe_power_up = "low";
defparam \debug_key[1]~I .oe_register_mode = "none";
defparam \debug_key[1]~I .oe_sync_reset = "none";
defparam \debug_key[1]~I .operation_mode = "input";
defparam \debug_key[1]~I .output_async_reset = "none";
defparam \debug_key[1]~I .output_power_up = "low";
defparam \debug_key[1]~I .output_register_mode = "none";
defparam \debug_key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P23
cycloneii_io \debug_key[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_key[2]~I .input_async_reset = "none";
defparam \debug_key[2]~I .input_power_up = "low";
defparam \debug_key[2]~I .input_register_mode = "none";
defparam \debug_key[2]~I .input_sync_reset = "none";
defparam \debug_key[2]~I .oe_async_reset = "none";
defparam \debug_key[2]~I .oe_power_up = "low";
defparam \debug_key[2]~I .oe_register_mode = "none";
defparam \debug_key[2]~I .oe_sync_reset = "none";
defparam \debug_key[2]~I .operation_mode = "input";
defparam \debug_key[2]~I .output_async_reset = "none";
defparam \debug_key[2]~I .output_power_up = "low";
defparam \debug_key[2]~I .output_register_mode = "none";
defparam \debug_key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W26
cycloneii_io \debug_key[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_key[3]~I .input_async_reset = "none";
defparam \debug_key[3]~I .input_power_up = "low";
defparam \debug_key[3]~I .input_register_mode = "none";
defparam \debug_key[3]~I .input_sync_reset = "none";
defparam \debug_key[3]~I .oe_async_reset = "none";
defparam \debug_key[3]~I .oe_power_up = "low";
defparam \debug_key[3]~I .oe_register_mode = "none";
defparam \debug_key[3]~I .oe_sync_reset = "none";
defparam \debug_key[3]~I .operation_mode = "input";
defparam \debug_key[3]~I .output_async_reset = "none";
defparam \debug_key[3]~I .output_power_up = "low";
defparam \debug_key[3]~I .output_register_mode = "none";
defparam \debug_key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N25
cycloneii_io \debug_switch[0]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[0]~I .input_async_reset = "none";
defparam \debug_switch[0]~I .input_power_up = "low";
defparam \debug_switch[0]~I .input_register_mode = "none";
defparam \debug_switch[0]~I .input_sync_reset = "none";
defparam \debug_switch[0]~I .oe_async_reset = "none";
defparam \debug_switch[0]~I .oe_power_up = "low";
defparam \debug_switch[0]~I .oe_register_mode = "none";
defparam \debug_switch[0]~I .oe_sync_reset = "none";
defparam \debug_switch[0]~I .operation_mode = "input";
defparam \debug_switch[0]~I .output_async_reset = "none";
defparam \debug_switch[0]~I .output_power_up = "low";
defparam \debug_switch[0]~I .output_register_mode = "none";
defparam \debug_switch[0]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N26
cycloneii_io \debug_switch[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[1]~I .input_async_reset = "none";
defparam \debug_switch[1]~I .input_power_up = "low";
defparam \debug_switch[1]~I .input_register_mode = "none";
defparam \debug_switch[1]~I .input_sync_reset = "none";
defparam \debug_switch[1]~I .oe_async_reset = "none";
defparam \debug_switch[1]~I .oe_power_up = "low";
defparam \debug_switch[1]~I .oe_register_mode = "none";
defparam \debug_switch[1]~I .oe_sync_reset = "none";
defparam \debug_switch[1]~I .operation_mode = "input";
defparam \debug_switch[1]~I .output_async_reset = "none";
defparam \debug_switch[1]~I .output_power_up = "low";
defparam \debug_switch[1]~I .output_register_mode = "none";
defparam \debug_switch[1]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P25
cycloneii_io \debug_switch[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[2]~I .input_async_reset = "none";
defparam \debug_switch[2]~I .input_power_up = "low";
defparam \debug_switch[2]~I .input_register_mode = "none";
defparam \debug_switch[2]~I .input_sync_reset = "none";
defparam \debug_switch[2]~I .oe_async_reset = "none";
defparam \debug_switch[2]~I .oe_power_up = "low";
defparam \debug_switch[2]~I .oe_register_mode = "none";
defparam \debug_switch[2]~I .oe_sync_reset = "none";
defparam \debug_switch[2]~I .operation_mode = "input";
defparam \debug_switch[2]~I .output_async_reset = "none";
defparam \debug_switch[2]~I .output_power_up = "low";
defparam \debug_switch[2]~I .output_register_mode = "none";
defparam \debug_switch[2]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE14
cycloneii_io \debug_switch[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[3]~I .input_async_reset = "none";
defparam \debug_switch[3]~I .input_power_up = "low";
defparam \debug_switch[3]~I .input_register_mode = "none";
defparam \debug_switch[3]~I .input_sync_reset = "none";
defparam \debug_switch[3]~I .oe_async_reset = "none";
defparam \debug_switch[3]~I .oe_power_up = "low";
defparam \debug_switch[3]~I .oe_register_mode = "none";
defparam \debug_switch[3]~I .oe_sync_reset = "none";
defparam \debug_switch[3]~I .operation_mode = "input";
defparam \debug_switch[3]~I .output_async_reset = "none";
defparam \debug_switch[3]~I .output_power_up = "low";
defparam \debug_switch[3]~I .output_register_mode = "none";
defparam \debug_switch[3]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF14
cycloneii_io \debug_switch[4]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[4]~I .input_async_reset = "none";
defparam \debug_switch[4]~I .input_power_up = "low";
defparam \debug_switch[4]~I .input_register_mode = "none";
defparam \debug_switch[4]~I .input_sync_reset = "none";
defparam \debug_switch[4]~I .oe_async_reset = "none";
defparam \debug_switch[4]~I .oe_power_up = "low";
defparam \debug_switch[4]~I .oe_register_mode = "none";
defparam \debug_switch[4]~I .oe_sync_reset = "none";
defparam \debug_switch[4]~I .operation_mode = "input";
defparam \debug_switch[4]~I .output_async_reset = "none";
defparam \debug_switch[4]~I .output_power_up = "low";
defparam \debug_switch[4]~I .output_register_mode = "none";
defparam \debug_switch[4]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD13
cycloneii_io \debug_switch[5]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[5]~I .input_async_reset = "none";
defparam \debug_switch[5]~I .input_power_up = "low";
defparam \debug_switch[5]~I .input_register_mode = "none";
defparam \debug_switch[5]~I .input_sync_reset = "none";
defparam \debug_switch[5]~I .oe_async_reset = "none";
defparam \debug_switch[5]~I .oe_power_up = "low";
defparam \debug_switch[5]~I .oe_register_mode = "none";
defparam \debug_switch[5]~I .oe_sync_reset = "none";
defparam \debug_switch[5]~I .operation_mode = "input";
defparam \debug_switch[5]~I .output_async_reset = "none";
defparam \debug_switch[5]~I .output_power_up = "low";
defparam \debug_switch[5]~I .output_register_mode = "none";
defparam \debug_switch[5]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC13
cycloneii_io \debug_switch[6]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[6]~I .input_async_reset = "none";
defparam \debug_switch[6]~I .input_power_up = "low";
defparam \debug_switch[6]~I .input_register_mode = "none";
defparam \debug_switch[6]~I .input_sync_reset = "none";
defparam \debug_switch[6]~I .oe_async_reset = "none";
defparam \debug_switch[6]~I .oe_power_up = "low";
defparam \debug_switch[6]~I .oe_register_mode = "none";
defparam \debug_switch[6]~I .oe_sync_reset = "none";
defparam \debug_switch[6]~I .operation_mode = "input";
defparam \debug_switch[6]~I .output_async_reset = "none";
defparam \debug_switch[6]~I .output_power_up = "low";
defparam \debug_switch[6]~I .output_register_mode = "none";
defparam \debug_switch[6]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io \debug_switch[7]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[7]~I .input_async_reset = "none";
defparam \debug_switch[7]~I .input_power_up = "low";
defparam \debug_switch[7]~I .input_register_mode = "none";
defparam \debug_switch[7]~I .input_sync_reset = "none";
defparam \debug_switch[7]~I .oe_async_reset = "none";
defparam \debug_switch[7]~I .oe_power_up = "low";
defparam \debug_switch[7]~I .oe_register_mode = "none";
defparam \debug_switch[7]~I .oe_sync_reset = "none";
defparam \debug_switch[7]~I .operation_mode = "input";
defparam \debug_switch[7]~I .output_async_reset = "none";
defparam \debug_switch[7]~I .output_power_up = "low";
defparam \debug_switch[7]~I .output_register_mode = "none";
defparam \debug_switch[7]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B13
cycloneii_io \debug_switch[8]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[8]~I .input_async_reset = "none";
defparam \debug_switch[8]~I .input_power_up = "low";
defparam \debug_switch[8]~I .input_register_mode = "none";
defparam \debug_switch[8]~I .input_sync_reset = "none";
defparam \debug_switch[8]~I .oe_async_reset = "none";
defparam \debug_switch[8]~I .oe_power_up = "low";
defparam \debug_switch[8]~I .oe_register_mode = "none";
defparam \debug_switch[8]~I .oe_sync_reset = "none";
defparam \debug_switch[8]~I .operation_mode = "input";
defparam \debug_switch[8]~I .output_async_reset = "none";
defparam \debug_switch[8]~I .output_power_up = "low";
defparam \debug_switch[8]~I .output_register_mode = "none";
defparam \debug_switch[8]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A13
cycloneii_io \debug_switch[9]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[9]~I .input_async_reset = "none";
defparam \debug_switch[9]~I .input_power_up = "low";
defparam \debug_switch[9]~I .input_register_mode = "none";
defparam \debug_switch[9]~I .input_sync_reset = "none";
defparam \debug_switch[9]~I .oe_async_reset = "none";
defparam \debug_switch[9]~I .oe_power_up = "low";
defparam \debug_switch[9]~I .oe_register_mode = "none";
defparam \debug_switch[9]~I .oe_sync_reset = "none";
defparam \debug_switch[9]~I .operation_mode = "input";
defparam \debug_switch[9]~I .output_async_reset = "none";
defparam \debug_switch[9]~I .output_power_up = "low";
defparam \debug_switch[9]~I .output_register_mode = "none";
defparam \debug_switch[9]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N1
cycloneii_io \debug_switch[10]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[10]~I .input_async_reset = "none";
defparam \debug_switch[10]~I .input_power_up = "low";
defparam \debug_switch[10]~I .input_register_mode = "none";
defparam \debug_switch[10]~I .input_sync_reset = "none";
defparam \debug_switch[10]~I .oe_async_reset = "none";
defparam \debug_switch[10]~I .oe_power_up = "low";
defparam \debug_switch[10]~I .oe_register_mode = "none";
defparam \debug_switch[10]~I .oe_sync_reset = "none";
defparam \debug_switch[10]~I .operation_mode = "input";
defparam \debug_switch[10]~I .output_async_reset = "none";
defparam \debug_switch[10]~I .output_power_up = "low";
defparam \debug_switch[10]~I .output_register_mode = "none";
defparam \debug_switch[10]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P1
cycloneii_io \debug_switch[11]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[11]~I .input_async_reset = "none";
defparam \debug_switch[11]~I .input_power_up = "low";
defparam \debug_switch[11]~I .input_register_mode = "none";
defparam \debug_switch[11]~I .input_sync_reset = "none";
defparam \debug_switch[11]~I .oe_async_reset = "none";
defparam \debug_switch[11]~I .oe_power_up = "low";
defparam \debug_switch[11]~I .oe_register_mode = "none";
defparam \debug_switch[11]~I .oe_sync_reset = "none";
defparam \debug_switch[11]~I .operation_mode = "input";
defparam \debug_switch[11]~I .output_async_reset = "none";
defparam \debug_switch[11]~I .output_power_up = "low";
defparam \debug_switch[11]~I .output_register_mode = "none";
defparam \debug_switch[11]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P2
cycloneii_io \debug_switch[12]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[12]~I .input_async_reset = "none";
defparam \debug_switch[12]~I .input_power_up = "low";
defparam \debug_switch[12]~I .input_register_mode = "none";
defparam \debug_switch[12]~I .input_sync_reset = "none";
defparam \debug_switch[12]~I .oe_async_reset = "none";
defparam \debug_switch[12]~I .oe_power_up = "low";
defparam \debug_switch[12]~I .oe_register_mode = "none";
defparam \debug_switch[12]~I .oe_sync_reset = "none";
defparam \debug_switch[12]~I .operation_mode = "input";
defparam \debug_switch[12]~I .output_async_reset = "none";
defparam \debug_switch[12]~I .output_power_up = "low";
defparam \debug_switch[12]~I .output_register_mode = "none";
defparam \debug_switch[12]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T7
cycloneii_io \debug_switch[13]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[13]~I .input_async_reset = "none";
defparam \debug_switch[13]~I .input_power_up = "low";
defparam \debug_switch[13]~I .input_register_mode = "none";
defparam \debug_switch[13]~I .input_sync_reset = "none";
defparam \debug_switch[13]~I .oe_async_reset = "none";
defparam \debug_switch[13]~I .oe_power_up = "low";
defparam \debug_switch[13]~I .oe_register_mode = "none";
defparam \debug_switch[13]~I .oe_sync_reset = "none";
defparam \debug_switch[13]~I .operation_mode = "input";
defparam \debug_switch[13]~I .output_async_reset = "none";
defparam \debug_switch[13]~I .output_power_up = "low";
defparam \debug_switch[13]~I .output_register_mode = "none";
defparam \debug_switch[13]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U3
cycloneii_io \debug_switch[14]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[14]~I .input_async_reset = "none";
defparam \debug_switch[14]~I .input_power_up = "low";
defparam \debug_switch[14]~I .input_register_mode = "none";
defparam \debug_switch[14]~I .input_sync_reset = "none";
defparam \debug_switch[14]~I .oe_async_reset = "none";
defparam \debug_switch[14]~I .oe_power_up = "low";
defparam \debug_switch[14]~I .oe_register_mode = "none";
defparam \debug_switch[14]~I .oe_sync_reset = "none";
defparam \debug_switch[14]~I .operation_mode = "input";
defparam \debug_switch[14]~I .output_async_reset = "none";
defparam \debug_switch[14]~I .output_power_up = "low";
defparam \debug_switch[14]~I .output_register_mode = "none";
defparam \debug_switch[14]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U4
cycloneii_io \debug_switch[15]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[15]~I .input_async_reset = "none";
defparam \debug_switch[15]~I .input_power_up = "low";
defparam \debug_switch[15]~I .input_register_mode = "none";
defparam \debug_switch[15]~I .input_sync_reset = "none";
defparam \debug_switch[15]~I .oe_async_reset = "none";
defparam \debug_switch[15]~I .oe_power_up = "low";
defparam \debug_switch[15]~I .oe_register_mode = "none";
defparam \debug_switch[15]~I .oe_sync_reset = "none";
defparam \debug_switch[15]~I .operation_mode = "input";
defparam \debug_switch[15]~I .output_async_reset = "none";
defparam \debug_switch[15]~I .output_power_up = "low";
defparam \debug_switch[15]~I .output_register_mode = "none";
defparam \debug_switch[15]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V1
cycloneii_io \debug_switch[16]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[16]~I .input_async_reset = "none";
defparam \debug_switch[16]~I .input_power_up = "low";
defparam \debug_switch[16]~I .input_register_mode = "none";
defparam \debug_switch[16]~I .input_sync_reset = "none";
defparam \debug_switch[16]~I .oe_async_reset = "none";
defparam \debug_switch[16]~I .oe_power_up = "low";
defparam \debug_switch[16]~I .oe_register_mode = "none";
defparam \debug_switch[16]~I .oe_sync_reset = "none";
defparam \debug_switch[16]~I .operation_mode = "input";
defparam \debug_switch[16]~I .output_async_reset = "none";
defparam \debug_switch[16]~I .output_power_up = "low";
defparam \debug_switch[16]~I .output_register_mode = "none";
defparam \debug_switch[16]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V2
cycloneii_io \debug_switch[17]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
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
defparam \debug_switch[17]~I .input_async_reset = "none";
defparam \debug_switch[17]~I .input_power_up = "low";
defparam \debug_switch[17]~I .input_register_mode = "none";
defparam \debug_switch[17]~I .input_sync_reset = "none";
defparam \debug_switch[17]~I .oe_async_reset = "none";
defparam \debug_switch[17]~I .oe_power_up = "low";
defparam \debug_switch[17]~I .oe_register_mode = "none";
defparam \debug_switch[17]~I .oe_sync_reset = "none";
defparam \debug_switch[17]~I .operation_mode = "input";
defparam \debug_switch[17]~I .output_async_reset = "none";
defparam \debug_switch[17]~I .output_power_up = "low";
defparam \debug_switch[17]~I .output_register_mode = "none";
defparam \debug_switch[17]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
