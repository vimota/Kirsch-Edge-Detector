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

// DATE "07/21/2014 14:17:13"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module memory_chip (	i_valid,
	i_reset,
	i_pixel,
	i_clock,
	o_valid,
	o_mode,
	o_column,
	o_row,
	o_image0_0_,
	o_image0_1_,
	o_image0_2_,
	o_image1_0_,
	o_image1_1_,
	o_image1_2_,
	o_image2_0_,
	o_image2_1_,
	o_image2_2_);
input 	i_valid;
input 	i_reset;
input 	[7:0] i_pixel;
input 	i_clock;
output 	o_valid;
output 	[1:0] o_mode;
output 	[7:0] o_column;
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

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("memory_v.sdo");
// synopsys translate_on

wire nx60567z6;
wire nx8852z7;
wire mem_wrn_1_;
wire mem_wrn_2_;
wire mem_wrn_0_;
wire nx16760z1;
wire nx15763z2;
wire nx15763z4;
wire nx15763z3;
wire mem_wrn_0__afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire modgen_counter_column_anx58250z14;
wire modgen_counter_column_anx52268z1;
wire i_reset_acombout;
wire i_valid_acombout;
wire first_bubble;
wire modgen_counter_row_anx51271z1;
wire nx8852z1;
wire modgen_counter_column_anx57253z1;
wire modgen_counter_column_anx57253z3;
wire modgen_counter_column_anx58250z3;
wire modgen_counter_column_anx56256z1;
wire modgen_counter_column_anx58250z5;
wire nx8852z4;
wire modgen_counter_column_anx53265z1;
wire modgen_counter_column_anx58250z11;
wire nx8852z5;
wire nx8852z3;
wire not_rtlc3_X_0_n252;
wire modgen_counter_row_anx57253z3;
wire modgen_counter_row_anx58250z15;
wire modgen_counter_row_anx58250z14;
wire modgen_counter_row_anx52268z1;
wire modgen_counter_row_anx58250z13;
wire modgen_counter_row_anx58250z12;
wire modgen_counter_row_anx53265z1;
wire modgen_counter_row_anx58250z11;
wire modgen_counter_row_anx58250z10;
wire modgen_counter_row_anx58250z8;
wire modgen_counter_row_anx55259z1;
wire modgen_counter_row_anx58250z7;
wire modgen_counter_row_anx58250z6;
wire modgen_counter_row_anx58250z4;
wire modgen_counter_row_anx57253z1;
wire modgen_counter_row_anx58250z3;
wire modgen_counter_row_anx56256z1;
wire modgen_counter_row_anx58250z5;
wire nx8852z6;
wire nx8852z2;
wire nx47386z1;
wire modgen_counter_column_anx58250z13;
wire modgen_counter_column_anx58250z12;
wire modgen_counter_column_anx58250z10;
wire modgen_counter_column_anx54262z1;
wire modgen_counter_column_anx58250z9;
wire modgen_counter_column_anx58250z8;
wire modgen_counter_column_anx58250z6;
wire modgen_counter_column_anx58250z4;
wire modgen_counter_column_anx58250z2;
wire modgen_counter_column_anx58250z1;
wire modgen_counter_column_anx1041z1;
wire modgen_counter_row_anx54262z1;
wire modgen_counter_row_anx58250z9;
wire nx60567z3;
wire nx60567z2;
wire nx60567z4;
wire modgen_counter_column_anx55259z1;
wire modgen_counter_column_anx58250z7;
wire nx60567z5;
wire nx60567z1;
wire o_valid_dup0;
wire nx33254z1;
wire busySignal;
wire busySignalDelayed;
wire o_mode_dup0_0_;
wire modgen_counter_column_anx51271z1;
wire modgen_counter_column_anx58250z15;
wire nx4657z1;
wire nx5654z1_afeeder_combout;
wire nx5654z1;
wire nx6651z1_afeeder_combout;
wire nx6651z1;
wire nx7648z1_afeeder_combout;
wire nx7648z1;
wire nx8645z1_afeeder_combout;
wire nx8645z1;
wire nx9642z1_afeeder_combout;
wire nx9642z1;
wire nx10639z1;
wire nx11636z1_afeeder_combout;
wire nx11636z1;
wire nx16335z1_afeeder_combout;
wire nx16335z1;
wire nx17332z1_afeeder_combout;
wire nx17332z1;
wire nx18329z1_afeeder_combout;
wire nx18329z1;
wire nx19326z1_afeeder_combout;
wire nx19326z1;
wire nx20323z1_afeeder_combout;
wire nx20323z1;
wire nx21320z1_afeeder_combout;
wire nx21320z1;
wire nx22317z1_afeeder_combout;
wire nx22317z1;
wire modgen_counter_row_anx58250z2;
wire modgen_counter_row_anx58250z1;
wire modgen_counter_row_anx1041z1;
wire nx23314z1_afeeder_combout;
wire nx23314z1;
wire mem_wrn_current_0__afeeder_combout;
wire nx41103z3;
wire nx41103z4;
wire nx41103z2;
wire nx41103z1;
wire mem_wrn_current_1_;
wire mem_wrn_current_2_;
wire nx39109z3;
wire nx39109z2;
wire mem_wrn_current_0_;
wire nx63578z3;
wire buffer2_4n2ss1_0_;
wire nx5021z2;
wire nx5021z1;
wire o_image2_0__dup0_0_;
wire o_image1_0__dup0_0__afeeder_combout;
wire o_image1_0__dup0_0_;
wire nx59473z1_afeeder_combout;
wire nx59473z1;
wire nx63578z4;
wire buffer2_4n2ss1_1_;
wire nx4024z2;
wire nx4024z1;
wire o_image2_0__dup0_1_;
wire o_image1_0__dup0_1__afeeder_combout;
wire o_image1_0__dup0_1_;
wire nx58476z1_afeeder_combout;
wire nx58476z1;
wire buffer2_4n2ss1_2_;
wire nx3027z2;
wire nx3027z1;
wire o_image2_0__dup0_2_;
wire o_image1_0__dup0_2__afeeder_combout;
wire o_image1_0__dup0_2_;
wire nx57479z1_afeeder_combout;
wire nx57479z1;
wire buffer2_4n2ss1_3_;
wire nx2030z2;
wire nx2030z1;
wire o_image2_0__dup0_3_;
wire o_image1_0__dup0_3__afeeder_combout;
wire o_image1_0__dup0_3_;
wire nx56482z1_afeeder_combout;
wire nx56482z1;
wire buffer2_4n2ss1_4_;
wire nx1033z2;
wire nx1033z1;
wire o_image2_0__dup0_4_;
wire o_image1_0__dup0_4__afeeder_combout;
wire o_image1_0__dup0_4_;
wire nx55485z1_afeeder_combout;
wire nx55485z1;
wire buffer2_4n2ss1_5_;
wire nx36z2;
wire nx36z1;
wire o_image2_0__dup0_5_;
wire o_image1_0__dup0_5__afeeder_combout;
wire o_image1_0__dup0_5_;
wire nx54488z1_afeeder_combout;
wire nx54488z1;
wire buffer2_4n2ss1_6_;
wire nx64575z2;
wire nx64575z1;
wire o_image2_0__dup0_6_;
wire o_image1_0__dup0_6_;
wire nx53491z1_afeeder_combout;
wire nx53491z1;
wire buffer2_4n2ss1_7_;
wire nx63578z2;
wire nx63578z1;
wire o_image2_0__dup0_7_;
wire o_image1_0__dup0_7__afeeder_combout;
wire o_image1_0__dup0_7_;
wire nx52494z1;
wire nx62359z4;
wire nx62359z3;
wire nx55380z2;
wire nx55380z1;
wire o_image2_1__dup0_0_;
wire o_image1_1__dup0_0__afeeder_combout;
wire o_image1_1__dup0_0_;
wire nx64608z1_afeeder_combout;
wire nx64608z1;
wire nx56377z2;
wire nx56377z1;
wire o_image2_1__dup0_1_;
wire o_image1_1__dup0_1__afeeder_combout;
wire o_image1_1__dup0_1_;
wire nx63611z1;
wire nx57374z2;
wire nx57374z1;
wire o_image2_1__dup0_2_;
wire o_image1_1__dup0_2__afeeder_combout;
wire o_image1_1__dup0_2_;
wire nx62614z1_afeeder_combout;
wire nx62614z1;
wire nx58371z2;
wire nx58371z1;
wire o_image2_1__dup0_3_;
wire o_image1_1__dup0_3__afeeder_combout;
wire o_image1_1__dup0_3_;
wire nx61617z1_afeeder_combout;
wire nx61617z1;
wire nx59368z2;
wire nx59368z1;
wire o_image2_1__dup0_4_;
wire o_image1_1__dup0_4_;
wire nx60620z1_afeeder_combout;
wire nx60620z1;
wire nx60365z2;
wire nx60365z1;
wire o_image2_1__dup0_5_;
wire o_image1_1__dup0_5_;
wire nx59623z1;
wire nx61362z2;
wire nx61362z1;
wire o_image2_1__dup0_6_;
wire o_image1_1__dup0_6__afeeder_combout;
wire o_image1_1__dup0_6_;
wire nx58626z1_afeeder_combout;
wire nx58626z1;
wire nx62359z2;
wire nx62359z1;
wire o_image2_1__dup0_7_;
wire o_image1_1__dup0_7__afeeder_combout;
wire o_image1_1__dup0_7_;
wire nx57629z1_afeeder_combout;
wire nx57629z1;
wire nx50245z1;
wire o_image2_2__dup0_0_;
wire o_image1_2__dup0_0__afeeder_combout;
wire o_image1_2__dup0_0_;
wire nx4207z1;
wire nx51242z1;
wire o_image2_2__dup0_1_;
wire o_image1_2__dup0_1__afeeder_combout;
wire o_image1_2__dup0_1_;
wire nx3210z1;
wire nx52239z1;
wire o_image2_2__dup0_2_;
wire o_image1_2__dup0_2__afeeder_combout;
wire o_image1_2__dup0_2_;
wire nx2213z1_afeeder_combout;
wire nx2213z1;
wire nx53236z1;
wire o_image2_2__dup0_3_;
wire o_image1_2__dup0_3_;
wire nx1216z1;
wire nx54233z1;
wire o_image2_2__dup0_4_;
wire o_image1_2__dup0_4__afeeder_combout;
wire o_image1_2__dup0_4_;
wire nx219z1;
wire nx55230z1;
wire o_image2_2__dup0_5_;
wire o_image1_2__dup0_5_;
wire nx64758z1_afeeder_combout;
wire nx64758z1;
wire nx56227z1;
wire o_image2_2__dup0_6_;
wire o_image1_2__dup0_6__afeeder_combout;
wire o_image1_2__dup0_6_;
wire nx63761z1_afeeder_combout;
wire nx63761z1;
wire nx57224z1;
wire o_image2_2__dup0_7_;
wire o_image1_2__dup0_7_;
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
wire nx45196z1_afeeder_combout;
wire nx45196z1;
wire nx46193z1_afeeder_combout;
wire nx46193z1;
wire nx47190z1;
wire nx48187z1_afeeder_combout;
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
wire nx32932z1_afeeder_combout;
wire nx32932z1;
wire nx33929z1;
wire nx34926z1_afeeder_combout;
wire nx34926z1;
wire nx35923z1;
wire nx36920z1_afeeder_combout;
wire nx36920z1;
wire nx37917z1;
wire [7:0] u_mem1_mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] i_pixel_acombout;
wire [7:0] u_mem3_mem_aix64056z29483_aauto_generated_aq_a;
wire [7:0] u_mem2_mem_aix64056z29482_aauto_generated_aq_a;

wire [7:0] u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[0] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[1] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[2] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[3] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[4] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[5] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[6] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_mem2_mem_aix64056z29482_aauto_generated_aq_a[7] = u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7] = u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[0] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[1] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[2] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[3] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[4] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[5] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[6] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_mem1_mem_aix64056z29481_aauto_generated_aq_a[7] = u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// atom is at LCCOMB_X27_Y23_N2
cycloneii_lcell_comb ix60567z52928(
// Equation(s):
// nx60567z6 = modgen_counter_column_anx58250z9 # modgen_counter_column_anx58250z11 # modgen_counter_column_anx58250z13

	.dataa(vcc),
	.datab(modgen_counter_column_anx58250z9),
	.datac(modgen_counter_column_anx58250z11),
	.datad(modgen_counter_column_anx58250z13),
	.cin(gnd),
	.combout(nx60567z6),
	.cout());
// synopsys translate_off
defparam ix60567z52928.lut_mask = 16'hFFFC;
defparam ix60567z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N16
cycloneii_lcell_comb ix8852z52929(
// Equation(s):
// nx8852z7 = modgen_counter_row_anx58250z9 & modgen_counter_row_anx58250z15 & modgen_counter_row_anx58250z13 & modgen_counter_row_anx58250z11

	.dataa(modgen_counter_row_anx58250z9),
	.datab(modgen_counter_row_anx58250z15),
	.datac(modgen_counter_row_anx58250z13),
	.datad(modgen_counter_row_anx58250z11),
	.cin(gnd),
	.combout(nx8852z7),
	.cout());
// synopsys translate_off
defparam ix8852z52929.lut_mask = 16'h8000;
defparam ix8852z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X29_Y24_N9
cycloneii_lcell_ff reg_mem_wrn_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(mem_wrn_current_1_),
	.aclr(gnd),
	.sclr(nx16760z1),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(mem_wrn_1_));

// atom is at LCFF_X29_Y24_N19
cycloneii_lcell_ff reg_mem_wrn_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(mem_wrn_current_2_),
	.aclr(gnd),
	.sclr(nx16760z1),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(mem_wrn_2_));

// atom is at LCFF_X29_Y25_N1
cycloneii_lcell_ff reg_mem_wrn_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(mem_wrn_0__afeeder_combout),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(nx15763z2),
	.sload(nx15763z3),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(mem_wrn_0_));

// atom is at LCCOMB_X29_Y23_N0
cycloneii_lcell_comb ix16760z52923(
// Equation(s):
// nx16760z1 = nx41103z2 # i_reset_acombout # nx8852z2

	.dataa(vcc),
	.datab(nx41103z2),
	.datac(i_reset_acombout),
	.datad(nx8852z2),
	.cin(gnd),
	.combout(nx16760z1),
	.cout());
// synopsys translate_off
defparam ix16760z52923.lut_mask = 16'hFFFC;
defparam ix16760z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N10
cycloneii_lcell_comb ix15763z52924(
// Equation(s):
// nx15763z2 = nx8852z2 # i_reset_acombout # !i_valid_acombout

	.dataa(vcc),
	.datab(nx8852z2),
	.datac(i_valid_acombout),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx15763z2),
	.cout());
// synopsys translate_off
defparam ix15763z52924.lut_mask = 16'hFFCF;
defparam ix15763z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N20
cycloneii_lcell_comb ix15763z52926(
// Equation(s):
// nx15763z4 = mem_wrn_current_2_ # mem_wrn_current_1_ # mem_wrn_current_0_

	.dataa(vcc),
	.datab(mem_wrn_current_2_),
	.datac(mem_wrn_current_1_),
	.datad(mem_wrn_current_0_),
	.cin(gnd),
	.combout(nx15763z4),
	.cout());
// synopsys translate_off
defparam ix15763z52926.lut_mask = 16'hFFFC;
defparam ix15763z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N22
cycloneii_lcell_comb ix15763z52925(
// Equation(s):
// nx15763z3 = i_valid_acombout & !nx8852z2 & !nx15763z4 & !i_reset_acombout

	.dataa(i_valid_acombout),
	.datab(nx8852z2),
	.datac(nx15763z4),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx15763z3),
	.cout());
// synopsys translate_off
defparam ix15763z52925.lut_mask = 16'h0002;
defparam ix15763z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y25_N0
cycloneii_lcell_comb mem_wrn_0__afeeder(
// Equation(s):
// mem_wrn_0__afeeder_combout = mem_wrn_current_0_

	.dataa(vcc),
	.datab(mem_wrn_current_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(mem_wrn_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam mem_wrn_0__afeeder.lut_mask = 16'hCCCC;
defparam mem_wrn_0__afeeder.sum_lutc_input = "datac";
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

// atom is at LCCOMB_X27_Y23_N16
cycloneii_lcell_comb modgen_counter_column_aix58250z52931(
// Equation(s):
// modgen_counter_column_anx51271z1 = modgen_counter_column_anx58250z15 $ VCC
// modgen_counter_column_anx58250z14 = CARRY(modgen_counter_column_anx58250z15)

	.dataa(modgen_counter_column_anx58250z15),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_column_anx51271z1),
	.cout(modgen_counter_column_anx58250z14));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52931.lut_mask = 16'h55AA;
defparam modgen_counter_column_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y23_N18
cycloneii_lcell_comb modgen_counter_column_aix58250z52930(
// Equation(s):
// modgen_counter_column_anx52268z1 = modgen_counter_column_anx58250z13 & !modgen_counter_column_anx58250z14 # !modgen_counter_column_anx58250z13 & (modgen_counter_column_anx58250z14 # GND)
// modgen_counter_column_anx58250z12 = CARRY(!modgen_counter_column_anx58250z14 # !modgen_counter_column_anx58250z13)

	.dataa(vcc),
	.datab(modgen_counter_column_anx58250z13),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_column_anx58250z14),
	.combout(modgen_counter_column_anx52268z1),
	.cout(modgen_counter_column_anx58250z12));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52930.lut_mask = 16'h3C3F;
defparam modgen_counter_column_aix58250z52930.sum_lutc_input = "cin";
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

// atom is at LCFF_X29_Y23_N29
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
	.regout(first_bubble));

// atom is at LCCOMB_X25_Y23_N0
cycloneii_lcell_comb modgen_counter_row_aix58250z52931(
// Equation(s):
// modgen_counter_row_anx51271z1 = modgen_counter_row_anx58250z15 $ VCC
// modgen_counter_row_anx58250z14 = CARRY(modgen_counter_row_anx58250z15)

	.dataa(vcc),
	.datab(modgen_counter_row_anx58250z15),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_row_anx51271z1),
	.cout(modgen_counter_row_anx58250z14));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52931.lut_mask = 16'h33CC;
defparam modgen_counter_row_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N18
cycloneii_lcell_comb ix8852z52923(
// Equation(s):
// nx8852z1 = i_reset_acombout # nx8852z2

	.dataa(vcc),
	.datab(i_reset_acombout),
	.datac(vcc),
	.datad(nx8852z2),
	.cin(gnd),
	.combout(nx8852z1),
	.cout());
// synopsys translate_off
defparam ix8852z52923.lut_mask = 16'hFFCC;
defparam ix8852z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y23_N28
cycloneii_lcell_comb modgen_counter_column_aix58250z52925(
// Equation(s):
// modgen_counter_column_anx57253z1 = modgen_counter_column_anx58250z3 & (modgen_counter_column_anx58250z4 $ GND) # !modgen_counter_column_anx58250z3 & !modgen_counter_column_anx58250z4 & VCC
// modgen_counter_column_anx58250z2 = CARRY(modgen_counter_column_anx58250z3 & !modgen_counter_column_anx58250z4)

	.dataa(modgen_counter_column_anx58250z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_column_anx58250z4),
	.combout(modgen_counter_column_anx57253z1),
	.cout(modgen_counter_column_anx58250z2));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52925.lut_mask = 16'hA50A;
defparam modgen_counter_column_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N30
cycloneii_lcell_comb modgen_counter_column_aix57253z52923(
// Equation(s):
// modgen_counter_column_anx57253z3 = i_valid_acombout & nx8852z1 & (first_bubble # nx47386z1) # !i_valid_acombout & (first_bubble # nx47386z1)

	.dataa(i_valid_acombout),
	.datab(nx8852z1),
	.datac(first_bubble),
	.datad(nx47386z1),
	.cin(gnd),
	.combout(modgen_counter_column_anx57253z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_column_aix57253z52923.lut_mask = 16'hDDD0;
defparam modgen_counter_column_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N29
cycloneii_lcell_ff modgen_counter_column_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z3));

// atom is at LCCOMB_X27_Y23_N26
cycloneii_lcell_comb modgen_counter_column_aix58250z52926(
// Equation(s):
// modgen_counter_column_anx56256z1 = modgen_counter_column_anx58250z5 & !modgen_counter_column_anx58250z6 # !modgen_counter_column_anx58250z5 & (modgen_counter_column_anx58250z6 # GND)
// modgen_counter_column_anx58250z4 = CARRY(!modgen_counter_column_anx58250z6 # !modgen_counter_column_anx58250z5)

	.dataa(modgen_counter_column_anx58250z5),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_column_anx58250z6),
	.combout(modgen_counter_column_anx56256z1),
	.cout(modgen_counter_column_anx58250z4));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52926.lut_mask = 16'h5A5F;
defparam modgen_counter_column_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N27
cycloneii_lcell_ff modgen_counter_column_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z5));

// atom is at LCCOMB_X27_Y23_N4
cycloneii_lcell_comb ix8852z52926(
// Equation(s):
// nx8852z4 = modgen_counter_column_anx58250z7 & modgen_counter_column_anx1041z1 & modgen_counter_column_anx58250z3 & modgen_counter_column_anx58250z5

	.dataa(modgen_counter_column_anx58250z7),
	.datab(modgen_counter_column_anx1041z1),
	.datac(modgen_counter_column_anx58250z3),
	.datad(modgen_counter_column_anx58250z5),
	.cin(gnd),
	.combout(nx8852z4),
	.cout());
// synopsys translate_off
defparam ix8852z52926.lut_mask = 16'h8000;
defparam ix8852z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y23_N20
cycloneii_lcell_comb modgen_counter_column_aix58250z52929(
// Equation(s):
// modgen_counter_column_anx53265z1 = modgen_counter_column_anx58250z11 & (modgen_counter_column_anx58250z12 $ GND) # !modgen_counter_column_anx58250z11 & !modgen_counter_column_anx58250z12 & VCC
// modgen_counter_column_anx58250z10 = CARRY(modgen_counter_column_anx58250z11 & !modgen_counter_column_anx58250z12)

	.dataa(modgen_counter_column_anx58250z11),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_column_anx58250z12),
	.combout(modgen_counter_column_anx53265z1),
	.cout(modgen_counter_column_anx58250z10));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52929.lut_mask = 16'hA50A;
defparam modgen_counter_column_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N21
cycloneii_lcell_ff modgen_counter_column_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z11));

// atom is at LCCOMB_X27_Y23_N14
cycloneii_lcell_comb ix8852z52927(
// Equation(s):
// nx8852z5 = modgen_counter_column_anx58250z11 & modgen_counter_column_anx58250z9

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_column_anx58250z11),
	.datad(modgen_counter_column_anx58250z9),
	.cin(gnd),
	.combout(nx8852z5),
	.cout());
// synopsys translate_off
defparam ix8852z52927.lut_mask = 16'hF000;
defparam ix8852z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N16
cycloneii_lcell_comb ix8852z52925(
// Equation(s):
// nx8852z3 = modgen_counter_column_anx58250z15 & modgen_counter_column_anx58250z13 & nx8852z4 & nx8852z5

	.dataa(modgen_counter_column_anx58250z15),
	.datab(modgen_counter_column_anx58250z13),
	.datac(nx8852z4),
	.datad(nx8852z5),
	.cin(gnd),
	.combout(nx8852z3),
	.cout());
// synopsys translate_off
defparam ix8852z52925.lut_mask = 16'h8000;
defparam ix8852z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N4
cycloneii_lcell_comb ix8852z52930(
// Equation(s):
// not_rtlc3_X_0_n252 = first_bubble & !i_valid_acombout & nx8852z3

	.dataa(first_bubble),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(nx8852z3),
	.cin(gnd),
	.combout(not_rtlc3_X_0_n252),
	.cout());
// synopsys translate_off
defparam ix8852z52930.lut_mask = 16'h0A00;
defparam ix8852z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N6
cycloneii_lcell_comb modgen_counter_row_aix57253z52923(
// Equation(s):
// modgen_counter_row_anx57253z3 = i_reset_acombout # not_rtlc3_X_0_n252 # nx8852z2

	.dataa(vcc),
	.datab(i_reset_acombout),
	.datac(not_rtlc3_X_0_n252),
	.datad(nx8852z2),
	.cin(gnd),
	.combout(modgen_counter_row_anx57253z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_row_aix57253z52923.lut_mask = 16'hFFFC;
defparam modgen_counter_row_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N1
cycloneii_lcell_ff modgen_counter_row_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z15));

// atom is at LCCOMB_X25_Y23_N2
cycloneii_lcell_comb modgen_counter_row_aix58250z52930(
// Equation(s):
// modgen_counter_row_anx52268z1 = modgen_counter_row_anx58250z13 & !modgen_counter_row_anx58250z14 # !modgen_counter_row_anx58250z13 & (modgen_counter_row_anx58250z14 # GND)
// modgen_counter_row_anx58250z12 = CARRY(!modgen_counter_row_anx58250z14 # !modgen_counter_row_anx58250z13)

	.dataa(vcc),
	.datab(modgen_counter_row_anx58250z13),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z14),
	.combout(modgen_counter_row_anx52268z1),
	.cout(modgen_counter_row_anx58250z12));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52930.lut_mask = 16'h3C3F;
defparam modgen_counter_row_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N3
cycloneii_lcell_ff modgen_counter_row_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z13));

// atom is at LCCOMB_X25_Y23_N4
cycloneii_lcell_comb modgen_counter_row_aix58250z52929(
// Equation(s):
// modgen_counter_row_anx53265z1 = modgen_counter_row_anx58250z11 & (modgen_counter_row_anx58250z12 $ GND) # !modgen_counter_row_anx58250z11 & !modgen_counter_row_anx58250z12 & VCC
// modgen_counter_row_anx58250z10 = CARRY(modgen_counter_row_anx58250z11 & !modgen_counter_row_anx58250z12)

	.dataa(vcc),
	.datab(modgen_counter_row_anx58250z11),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z12),
	.combout(modgen_counter_row_anx53265z1),
	.cout(modgen_counter_row_anx58250z10));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52929.lut_mask = 16'hC30C;
defparam modgen_counter_row_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N5
cycloneii_lcell_ff modgen_counter_row_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z11));

// atom is at LCCOMB_X25_Y23_N6
cycloneii_lcell_comb modgen_counter_row_aix58250z52928(
// Equation(s):
// modgen_counter_row_anx54262z1 = modgen_counter_row_anx58250z9 & !modgen_counter_row_anx58250z10 # !modgen_counter_row_anx58250z9 & (modgen_counter_row_anx58250z10 # GND)
// modgen_counter_row_anx58250z8 = CARRY(!modgen_counter_row_anx58250z10 # !modgen_counter_row_anx58250z9)

	.dataa(modgen_counter_row_anx58250z9),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z10),
	.combout(modgen_counter_row_anx54262z1),
	.cout(modgen_counter_row_anx58250z8));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52928.lut_mask = 16'h5A5F;
defparam modgen_counter_row_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X25_Y23_N8
cycloneii_lcell_comb modgen_counter_row_aix58250z52927(
// Equation(s):
// modgen_counter_row_anx55259z1 = modgen_counter_row_anx58250z7 & (modgen_counter_row_anx58250z8 $ GND) # !modgen_counter_row_anx58250z7 & !modgen_counter_row_anx58250z8 & VCC
// modgen_counter_row_anx58250z6 = CARRY(modgen_counter_row_anx58250z7 & !modgen_counter_row_anx58250z8)

	.dataa(vcc),
	.datab(modgen_counter_row_anx58250z7),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z8),
	.combout(modgen_counter_row_anx55259z1),
	.cout(modgen_counter_row_anx58250z6));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52927.lut_mask = 16'hC30C;
defparam modgen_counter_row_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N9
cycloneii_lcell_ff modgen_counter_row_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z7));

// atom is at LCCOMB_X25_Y23_N10
cycloneii_lcell_comb modgen_counter_row_aix58250z52926(
// Equation(s):
// modgen_counter_row_anx56256z1 = modgen_counter_row_anx58250z5 & !modgen_counter_row_anx58250z6 # !modgen_counter_row_anx58250z5 & (modgen_counter_row_anx58250z6 # GND)
// modgen_counter_row_anx58250z4 = CARRY(!modgen_counter_row_anx58250z6 # !modgen_counter_row_anx58250z5)

	.dataa(modgen_counter_row_anx58250z5),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z6),
	.combout(modgen_counter_row_anx56256z1),
	.cout(modgen_counter_row_anx58250z4));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52926.lut_mask = 16'h5A5F;
defparam modgen_counter_row_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X25_Y23_N12
cycloneii_lcell_comb modgen_counter_row_aix58250z52925(
// Equation(s):
// modgen_counter_row_anx57253z1 = modgen_counter_row_anx58250z3 & (modgen_counter_row_anx58250z4 $ GND) # !modgen_counter_row_anx58250z3 & !modgen_counter_row_anx58250z4 & VCC
// modgen_counter_row_anx58250z2 = CARRY(modgen_counter_row_anx58250z3 & !modgen_counter_row_anx58250z4)

	.dataa(modgen_counter_row_anx58250z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z4),
	.combout(modgen_counter_row_anx57253z1),
	.cout(modgen_counter_row_anx58250z2));
// synopsys translate_off
defparam modgen_counter_row_aix58250z52925.lut_mask = 16'hA50A;
defparam modgen_counter_row_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N13
cycloneii_lcell_ff modgen_counter_row_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z3));

// atom is at LCFF_X25_Y23_N11
cycloneii_lcell_ff modgen_counter_row_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z5));

// atom is at LCCOMB_X29_Y23_N30
cycloneii_lcell_comb ix8852z52928(
// Equation(s):
// nx8852z6 = modgen_counter_row_anx1041z1 & modgen_counter_row_anx58250z7 & modgen_counter_row_anx58250z3 & modgen_counter_row_anx58250z5

	.dataa(modgen_counter_row_anx1041z1),
	.datab(modgen_counter_row_anx58250z7),
	.datac(modgen_counter_row_anx58250z3),
	.datad(modgen_counter_row_anx58250z5),
	.cin(gnd),
	.combout(nx8852z6),
	.cout());
// synopsys translate_off
defparam ix8852z52928.lut_mask = 16'h8000;
defparam ix8852z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N28
cycloneii_lcell_comb ix8852z52924(
// Equation(s):
// nx8852z2 = nx8852z7 & nx8852z6 & first_bubble & nx8852z3

	.dataa(nx8852z7),
	.datab(nx8852z6),
	.datac(first_bubble),
	.datad(nx8852z3),
	.cin(gnd),
	.combout(nx8852z2),
	.cout());
// synopsys translate_off
defparam ix8852z52924.lut_mask = 16'h8000;
defparam ix8852z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N26
cycloneii_lcell_comb ix47386z52923(
// Equation(s):
// nx47386z1 = i_reset_acombout # nx8852z2 # nx8852z3 & first_bubble

	.dataa(nx8852z3),
	.datab(i_reset_acombout),
	.datac(first_bubble),
	.datad(nx8852z2),
	.cin(gnd),
	.combout(nx47386z1),
	.cout());
// synopsys translate_off
defparam ix47386z52923.lut_mask = 16'hFFEC;
defparam ix47386z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N19
cycloneii_lcell_ff modgen_counter_column_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z13));

// atom is at LCCOMB_X27_Y23_N22
cycloneii_lcell_comb modgen_counter_column_aix58250z52928(
// Equation(s):
// modgen_counter_column_anx54262z1 = modgen_counter_column_anx58250z9 & !modgen_counter_column_anx58250z10 # !modgen_counter_column_anx58250z9 & (modgen_counter_column_anx58250z10 # GND)
// modgen_counter_column_anx58250z8 = CARRY(!modgen_counter_column_anx58250z10 # !modgen_counter_column_anx58250z9)

	.dataa(vcc),
	.datab(modgen_counter_column_anx58250z9),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_column_anx58250z10),
	.combout(modgen_counter_column_anx54262z1),
	.cout(modgen_counter_column_anx58250z8));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52928.lut_mask = 16'h3C3F;
defparam modgen_counter_column_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N23
cycloneii_lcell_ff modgen_counter_column_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z9));

// atom is at LCCOMB_X27_Y23_N24
cycloneii_lcell_comb modgen_counter_column_aix58250z52927(
// Equation(s):
// modgen_counter_column_anx55259z1 = modgen_counter_column_anx58250z7 & (modgen_counter_column_anx58250z8 $ GND) # !modgen_counter_column_anx58250z7 & !modgen_counter_column_anx58250z8 & VCC
// modgen_counter_column_anx58250z6 = CARRY(modgen_counter_column_anx58250z7 & !modgen_counter_column_anx58250z8)

	.dataa(modgen_counter_column_anx58250z7),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_column_anx58250z8),
	.combout(modgen_counter_column_anx55259z1),
	.cout(modgen_counter_column_anx58250z6));
// synopsys translate_off
defparam modgen_counter_column_aix58250z52927.lut_mask = 16'hA50A;
defparam modgen_counter_column_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X27_Y23_N30
cycloneii_lcell_comb modgen_counter_column_aix58250z52923(
// Equation(s):
// modgen_counter_column_anx58250z1 = modgen_counter_column_anx58250z2 $ modgen_counter_column_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_column_anx1041z1),
	.cin(modgen_counter_column_anx58250z2),
	.combout(modgen_counter_column_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_column_aix58250z52923.lut_mask = 16'h0FF0;
defparam modgen_counter_column_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N31
cycloneii_lcell_ff modgen_counter_column_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx1041z1));

// atom is at LCFF_X25_Y23_N7
cycloneii_lcell_ff modgen_counter_row_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx58250z9));

// atom is at LCCOMB_X28_Y23_N4
cycloneii_lcell_comb ix60567z52925(
// Equation(s):
// nx60567z3 = modgen_counter_row_anx58250z11 # modgen_counter_row_anx58250z13 # modgen_counter_row_anx58250z7 # modgen_counter_row_anx58250z9

	.dataa(modgen_counter_row_anx58250z11),
	.datab(modgen_counter_row_anx58250z13),
	.datac(modgen_counter_row_anx58250z7),
	.datad(modgen_counter_row_anx58250z9),
	.cin(gnd),
	.combout(nx60567z3),
	.cout());
// synopsys translate_off
defparam ix60567z52925.lut_mask = 16'hFFFE;
defparam ix60567z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N12
cycloneii_lcell_comb ix60567z52924(
// Equation(s):
// nx60567z2 = modgen_counter_row_anx1041z1 # nx60567z3 # modgen_counter_row_anx58250z3 # modgen_counter_row_anx58250z5

	.dataa(modgen_counter_row_anx1041z1),
	.datab(nx60567z3),
	.datac(modgen_counter_row_anx58250z3),
	.datad(modgen_counter_row_anx58250z5),
	.cin(gnd),
	.combout(nx60567z2),
	.cout());
// synopsys translate_off
defparam ix60567z52924.lut_mask = 16'hFFFE;
defparam ix60567z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y23_N6
cycloneii_lcell_comb ix60567z52926(
// Equation(s):
// nx60567z4 = o_valid_dup0 # modgen_counter_column_anx1041z1 & nx60567z2

	.dataa(o_valid_dup0),
	.datab(modgen_counter_column_anx1041z1),
	.datac(nx60567z2),
	.datad(vcc),
	.cin(gnd),
	.combout(nx60567z4),
	.cout());
// synopsys translate_off
defparam ix60567z52926.lut_mask = 16'hEAEA;
defparam ix60567z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N25
cycloneii_lcell_ff modgen_counter_column_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z7));

// atom is at LCCOMB_X27_Y23_N8
cycloneii_lcell_comb ix60567z52927(
// Equation(s):
// nx60567z5 = nx60567z2 & (modgen_counter_column_anx58250z5 # modgen_counter_column_anx58250z3 # modgen_counter_column_anx58250z7)

	.dataa(modgen_counter_column_anx58250z5),
	.datab(modgen_counter_column_anx58250z3),
	.datac(nx60567z2),
	.datad(modgen_counter_column_anx58250z7),
	.cin(gnd),
	.combout(nx60567z5),
	.cout());
// synopsys translate_off
defparam ix60567z52927.lut_mask = 16'hF0E0;
defparam ix60567z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y25_N24
cycloneii_lcell_comb ix60567z52923(
// Equation(s):
// nx60567z1 = nx60567z4 # nx60567z5 # nx60567z6 & nx60567z2

	.dataa(nx60567z6),
	.datab(nx60567z4),
	.datac(nx60567z5),
	.datad(nx60567z2),
	.cin(gnd),
	.combout(nx60567z1),
	.cout());
// synopsys translate_off
defparam ix60567z52923.lut_mask = 16'hFEFC;
defparam ix60567z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N25
cycloneii_lcell_ff reg_o_valid(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60567z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!first_bubble),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_valid_dup0));

// atom is at LCCOMB_X31_Y23_N8
cycloneii_lcell_comb ix33254z52923(
// Equation(s):
// nx33254z1 = busySignal # i_valid_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(busySignal),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(nx33254z1),
	.cout());
// synopsys translate_off
defparam ix33254z52923.lut_mask = 16'hFFF0;
defparam ix33254z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X31_Y23_N9
cycloneii_lcell_ff reg_busySignal(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx33254z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z2),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(busySignal));

// atom is at LCFF_X29_Y23_N9
cycloneii_lcell_ff reg_busySignalDelayed(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(busySignal),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(busySignalDelayed));

// atom is at LCCOMB_X29_Y23_N8
cycloneii_lcell_comb ix47893z52923(
// Equation(s):
// o_mode_dup0_0_ = i_valid_acombout # busySignal # busySignalDelayed # i_reset_acombout

	.dataa(i_valid_acombout),
	.datab(busySignal),
	.datac(busySignalDelayed),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(o_mode_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix47893z52923.lut_mask = 16'hFFFE;
defparam ix47893z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N17
cycloneii_lcell_ff modgen_counter_column_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_column_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx47386z1),
	.sload(gnd),
	.ena(modgen_counter_column_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_column_anx58250z15));

// atom is at LCFF_X27_Y22_N17
cycloneii_lcell_ff reg_out_o_column_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_column_anx58250z15),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx4657z1));

// atom is at LCCOMB_X28_Y25_N24
cycloneii_lcell_comb nx5654z1_afeeder(
// Equation(s):
// nx5654z1_afeeder_combout = modgen_counter_column_anx58250z13

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_column_anx58250z13),
	.cin(gnd),
	.combout(nx5654z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx5654z1_afeeder.lut_mask = 16'hFF00;
defparam nx5654z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y25_N25
cycloneii_lcell_ff reg_out_o_column_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx5654z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx5654z1));

// atom is at LCCOMB_X27_Y23_N0
cycloneii_lcell_comb nx6651z1_afeeder(
// Equation(s):
// nx6651z1_afeeder_combout = modgen_counter_column_anx58250z11

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_column_anx58250z11),
	.datad(vcc),
	.cin(gnd),
	.combout(nx6651z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx6651z1_afeeder.lut_mask = 16'hF0F0;
defparam nx6651z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N1
cycloneii_lcell_ff reg_out_o_column_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx6651z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx6651z1));

// atom is at LCCOMB_X27_Y23_N10
cycloneii_lcell_comb nx7648z1_afeeder(
// Equation(s):
// nx7648z1_afeeder_combout = modgen_counter_column_anx58250z9

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_column_anx58250z9),
	.cin(gnd),
	.combout(nx7648z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx7648z1_afeeder.lut_mask = 16'hFF00;
defparam nx7648z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N11
cycloneii_lcell_ff reg_out_o_column_obuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx7648z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx7648z1));

// atom is at LCCOMB_X24_Y23_N16
cycloneii_lcell_comb nx8645z1_afeeder(
// Equation(s):
// nx8645z1_afeeder_combout = modgen_counter_column_anx58250z7

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_column_anx58250z7),
	.cin(gnd),
	.combout(nx8645z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx8645z1_afeeder.lut_mask = 16'hFF00;
defparam nx8645z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X24_Y23_N17
cycloneii_lcell_ff reg_out_o_column_obuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx8645z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx8645z1));

// atom is at LCCOMB_X27_Y23_N12
cycloneii_lcell_comb nx9642z1_afeeder(
// Equation(s):
// nx9642z1_afeeder_combout = modgen_counter_column_anx58250z5

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_column_anx58250z5),
	.datad(vcc),
	.cin(gnd),
	.combout(nx9642z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx9642z1_afeeder.lut_mask = 16'hF0F0;
defparam nx9642z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y23_N13
cycloneii_lcell_ff reg_out_o_column_obuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx9642z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx9642z1));

// atom is at LCFF_X23_Y25_N9
cycloneii_lcell_ff reg_out_o_column_obuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_column_anx58250z3),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx10639z1));

// atom is at LCCOMB_X16_Y25_N24
cycloneii_lcell_comb nx11636z1_afeeder(
// Equation(s):
// nx11636z1_afeeder_combout = modgen_counter_column_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_column_anx1041z1),
	.cin(gnd),
	.combout(nx11636z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx11636z1_afeeder.lut_mask = 16'hFF00;
defparam nx11636z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y25_N25
cycloneii_lcell_ff reg_out_o_column_obuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx11636z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx11636z1));

// atom is at LCCOMB_X25_Y23_N24
cycloneii_lcell_comb nx16335z1_afeeder(
// Equation(s):
// nx16335z1_afeeder_combout = modgen_counter_row_anx58250z15

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_row_anx58250z15),
	.cin(gnd),
	.combout(nx16335z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx16335z1_afeeder.lut_mask = 16'hFF00;
defparam nx16335z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N25
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

// atom is at LCCOMB_X25_Y23_N26
cycloneii_lcell_comb nx17332z1_afeeder(
// Equation(s):
// nx17332z1_afeeder_combout = modgen_counter_row_anx58250z13

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_row_anx58250z13),
	.cin(gnd),
	.combout(nx17332z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx17332z1_afeeder.lut_mask = 16'hFF00;
defparam nx17332z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N27
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

// atom is at LCCOMB_X25_Y23_N28
cycloneii_lcell_comb nx18329z1_afeeder(
// Equation(s):
// nx18329z1_afeeder_combout = modgen_counter_row_anx58250z11

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_row_anx58250z11),
	.datad(vcc),
	.cin(gnd),
	.combout(nx18329z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx18329z1_afeeder.lut_mask = 16'hF0F0;
defparam nx18329z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N29
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

// atom is at LCCOMB_X25_Y23_N30
cycloneii_lcell_comb nx19326z1_afeeder(
// Equation(s):
// nx19326z1_afeeder_combout = modgen_counter_row_anx58250z9

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_row_anx58250z9),
	.cin(gnd),
	.combout(nx19326z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx19326z1_afeeder.lut_mask = 16'hFF00;
defparam nx19326z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N31
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

// atom is at LCCOMB_X25_Y23_N16
cycloneii_lcell_comb nx20323z1_afeeder(
// Equation(s):
// nx20323z1_afeeder_combout = modgen_counter_row_anx58250z7

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_row_anx58250z7),
	.datad(vcc),
	.cin(gnd),
	.combout(nx20323z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx20323z1_afeeder.lut_mask = 16'hF0F0;
defparam nx20323z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N17
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

// atom is at LCCOMB_X25_Y23_N18
cycloneii_lcell_comb nx21320z1_afeeder(
// Equation(s):
// nx21320z1_afeeder_combout = modgen_counter_row_anx58250z5

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_row_anx58250z5),
	.cin(gnd),
	.combout(nx21320z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx21320z1_afeeder.lut_mask = 16'hFF00;
defparam nx21320z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N19
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

// atom is at LCCOMB_X25_Y23_N20
cycloneii_lcell_comb nx22317z1_afeeder(
// Equation(s):
// nx22317z1_afeeder_combout = modgen_counter_row_anx58250z3

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_row_anx58250z3),
	.cin(gnd),
	.combout(nx22317z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx22317z1_afeeder.lut_mask = 16'hFF00;
defparam nx22317z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N21
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

// atom is at LCCOMB_X25_Y23_N14
cycloneii_lcell_comb modgen_counter_row_aix58250z52923(
// Equation(s):
// modgen_counter_row_anx58250z1 = modgen_counter_row_anx1041z1 $ modgen_counter_row_anx58250z2

	.dataa(vcc),
	.datab(modgen_counter_row_anx1041z1),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_row_anx58250z2),
	.combout(modgen_counter_row_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_row_aix58250z52923.lut_mask = 16'h3C3C;
defparam modgen_counter_row_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N15
cycloneii_lcell_ff modgen_counter_row_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_row_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(gnd),
	.ena(modgen_counter_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_row_anx1041z1));

// atom is at LCCOMB_X25_Y23_N22
cycloneii_lcell_comb nx23314z1_afeeder(
// Equation(s):
// nx23314z1_afeeder_combout = modgen_counter_row_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_row_anx1041z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx23314z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx23314z1_afeeder.lut_mask = 16'hF0F0;
defparam nx23314z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y23_N23
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

// atom is at PIN_C11
cycloneii_io i_pixel_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_0_.input_async_reset = "none";
defparam i_pixel_ibuf_0_.input_power_up = "low";
defparam i_pixel_ibuf_0_.input_register_mode = "none";
defparam i_pixel_ibuf_0_.input_sync_reset = "none";
defparam i_pixel_ibuf_0_.oe_async_reset = "none";
defparam i_pixel_ibuf_0_.oe_power_up = "low";
defparam i_pixel_ibuf_0_.oe_register_mode = "none";
defparam i_pixel_ibuf_0_.oe_sync_reset = "none";
defparam i_pixel_ibuf_0_.operation_mode = "input";
defparam i_pixel_ibuf_0_.output_async_reset = "none";
defparam i_pixel_ibuf_0_.output_power_up = "low";
defparam i_pixel_ibuf_0_.output_register_mode = "none";
defparam i_pixel_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F12
cycloneii_io i_pixel_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_1_.input_async_reset = "none";
defparam i_pixel_ibuf_1_.input_power_up = "low";
defparam i_pixel_ibuf_1_.input_register_mode = "none";
defparam i_pixel_ibuf_1_.input_sync_reset = "none";
defparam i_pixel_ibuf_1_.oe_async_reset = "none";
defparam i_pixel_ibuf_1_.oe_power_up = "low";
defparam i_pixel_ibuf_1_.oe_register_mode = "none";
defparam i_pixel_ibuf_1_.oe_sync_reset = "none";
defparam i_pixel_ibuf_1_.operation_mode = "input";
defparam i_pixel_ibuf_1_.output_async_reset = "none";
defparam i_pixel_ibuf_1_.output_power_up = "low";
defparam i_pixel_ibuf_1_.output_register_mode = "none";
defparam i_pixel_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io i_pixel_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_2_.input_async_reset = "none";
defparam i_pixel_ibuf_2_.input_power_up = "low";
defparam i_pixel_ibuf_2_.input_register_mode = "none";
defparam i_pixel_ibuf_2_.input_sync_reset = "none";
defparam i_pixel_ibuf_2_.oe_async_reset = "none";
defparam i_pixel_ibuf_2_.oe_power_up = "low";
defparam i_pixel_ibuf_2_.oe_register_mode = "none";
defparam i_pixel_ibuf_2_.oe_sync_reset = "none";
defparam i_pixel_ibuf_2_.operation_mode = "input";
defparam i_pixel_ibuf_2_.output_async_reset = "none";
defparam i_pixel_ibuf_2_.output_power_up = "low";
defparam i_pixel_ibuf_2_.output_register_mode = "none";
defparam i_pixel_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L2
cycloneii_io i_pixel_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_3_.input_async_reset = "none";
defparam i_pixel_ibuf_3_.input_power_up = "low";
defparam i_pixel_ibuf_3_.input_register_mode = "none";
defparam i_pixel_ibuf_3_.input_sync_reset = "none";
defparam i_pixel_ibuf_3_.oe_async_reset = "none";
defparam i_pixel_ibuf_3_.oe_power_up = "low";
defparam i_pixel_ibuf_3_.oe_register_mode = "none";
defparam i_pixel_ibuf_3_.oe_sync_reset = "none";
defparam i_pixel_ibuf_3_.operation_mode = "input";
defparam i_pixel_ibuf_3_.output_async_reset = "none";
defparam i_pixel_ibuf_3_.output_power_up = "low";
defparam i_pixel_ibuf_3_.output_register_mode = "none";
defparam i_pixel_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L9
cycloneii_io i_pixel_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_4_.input_async_reset = "none";
defparam i_pixel_ibuf_4_.input_power_up = "low";
defparam i_pixel_ibuf_4_.input_register_mode = "none";
defparam i_pixel_ibuf_4_.input_sync_reset = "none";
defparam i_pixel_ibuf_4_.oe_async_reset = "none";
defparam i_pixel_ibuf_4_.oe_power_up = "low";
defparam i_pixel_ibuf_4_.oe_register_mode = "none";
defparam i_pixel_ibuf_4_.oe_sync_reset = "none";
defparam i_pixel_ibuf_4_.operation_mode = "input";
defparam i_pixel_ibuf_4_.output_async_reset = "none";
defparam i_pixel_ibuf_4_.output_power_up = "low";
defparam i_pixel_ibuf_4_.output_register_mode = "none";
defparam i_pixel_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J11
cycloneii_io i_pixel_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_5_.input_async_reset = "none";
defparam i_pixel_ibuf_5_.input_power_up = "low";
defparam i_pixel_ibuf_5_.input_register_mode = "none";
defparam i_pixel_ibuf_5_.input_sync_reset = "none";
defparam i_pixel_ibuf_5_.oe_async_reset = "none";
defparam i_pixel_ibuf_5_.oe_power_up = "low";
defparam i_pixel_ibuf_5_.oe_register_mode = "none";
defparam i_pixel_ibuf_5_.oe_sync_reset = "none";
defparam i_pixel_ibuf_5_.operation_mode = "input";
defparam i_pixel_ibuf_5_.output_async_reset = "none";
defparam i_pixel_ibuf_5_.output_power_up = "low";
defparam i_pixel_ibuf_5_.output_register_mode = "none";
defparam i_pixel_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D12
cycloneii_io i_pixel_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_6_.input_async_reset = "none";
defparam i_pixel_ibuf_6_.input_power_up = "low";
defparam i_pixel_ibuf_6_.input_register_mode = "none";
defparam i_pixel_ibuf_6_.input_sync_reset = "none";
defparam i_pixel_ibuf_6_.oe_async_reset = "none";
defparam i_pixel_ibuf_6_.oe_power_up = "low";
defparam i_pixel_ibuf_6_.oe_register_mode = "none";
defparam i_pixel_ibuf_6_.oe_sync_reset = "none";
defparam i_pixel_ibuf_6_.operation_mode = "input";
defparam i_pixel_ibuf_6_.output_async_reset = "none";
defparam i_pixel_ibuf_6_.output_power_up = "low";
defparam i_pixel_ibuf_6_.output_register_mode = "none";
defparam i_pixel_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E12
cycloneii_io i_pixel_ibuf_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
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
defparam i_pixel_ibuf_7_.input_async_reset = "none";
defparam i_pixel_ibuf_7_.input_power_up = "low";
defparam i_pixel_ibuf_7_.input_register_mode = "none";
defparam i_pixel_ibuf_7_.input_sync_reset = "none";
defparam i_pixel_ibuf_7_.oe_async_reset = "none";
defparam i_pixel_ibuf_7_.oe_power_up = "low";
defparam i_pixel_ibuf_7_.oe_register_mode = "none";
defparam i_pixel_ibuf_7_.oe_sync_reset = "none";
defparam i_pixel_ibuf_7_.operation_mode = "input";
defparam i_pixel_ibuf_7_.output_async_reset = "none";
defparam i_pixel_ibuf_7_.output_power_up = "low";
defparam i_pixel_ibuf_7_.output_register_mode = "none";
defparam i_pixel_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at M4K_X26_Y25
cycloneii_ram_block u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(mem_wrn_0_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_column_anx1041z1,modgen_counter_column_anx58250z3,modgen_counter_column_anx58250z5,modgen_counter_column_anx58250z7,modgen_counter_column_anx58250z9,modgen_counter_column_anx58250z11,modgen_counter_column_anx58250z13,
modgen_counter_column_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:u_mem1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam u_mem1_mem_aix64056z29481_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X30_Y23_N24
cycloneii_lcell_comb mem_wrn_current_0__afeeder(
// Equation(s):
// mem_wrn_current_0__afeeder_combout = mem_wrn_current_2_

	.dataa(mem_wrn_current_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(mem_wrn_current_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam mem_wrn_current_0__afeeder.lut_mask = 16'hAAAA;
defparam mem_wrn_current_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N24
cycloneii_lcell_comb ix41103z52925(
// Equation(s):
// nx41103z3 = !i_valid_acombout & (!nx8852z3 # !first_bubble)

	.dataa(first_bubble),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(nx8852z3),
	.cin(gnd),
	.combout(nx41103z3),
	.cout());
// synopsys translate_off
defparam ix41103z52925.lut_mask = 16'h050F;
defparam ix41103z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N28
cycloneii_lcell_comb ix41103z52926(
// Equation(s):
// nx41103z4 = nx8852z1 # nx41103z2 & !nx41103z3 & i_valid_acombout

	.dataa(nx41103z2),
	.datab(nx41103z3),
	.datac(i_valid_acombout),
	.datad(nx8852z1),
	.cin(gnd),
	.combout(nx41103z4),
	.cout());
// synopsys translate_off
defparam ix41103z52926.lut_mask = 16'hFF20;
defparam ix41103z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N24
cycloneii_lcell_comb ix41103z52924(
// Equation(s):
// nx41103z2 = !mem_wrn_current_0_ & !mem_wrn_current_2_ & !mem_wrn_current_1_ # !i_valid_acombout

	.dataa(i_valid_acombout),
	.datab(mem_wrn_current_0_),
	.datac(mem_wrn_current_2_),
	.datad(mem_wrn_current_1_),
	.cin(gnd),
	.combout(nx41103z2),
	.cout());
// synopsys translate_off
defparam ix41103z52924.lut_mask = 16'h5557;
defparam ix41103z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N18
cycloneii_lcell_comb ix41103z52923(
// Equation(s):
// nx41103z1 = i_reset_acombout # nx8852z2 # nx41103z2 & !nx41103z3

	.dataa(i_reset_acombout),
	.datab(nx41103z2),
	.datac(nx41103z3),
	.datad(nx8852z2),
	.cin(gnd),
	.combout(nx41103z1),
	.cout());
// synopsys translate_off
defparam ix41103z52923.lut_mask = 16'hFFAE;
defparam ix41103z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y23_N1
cycloneii_lcell_ff reg_mem_wrn_current_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(mem_wrn_current_0_),
	.aclr(gnd),
	.sclr(nx41103z4),
	.sload(vcc),
	.ena(nx41103z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(mem_wrn_current_1_));

// atom is at LCFF_X28_Y23_N25
cycloneii_lcell_ff reg_mem_wrn_current_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(mem_wrn_current_1_),
	.aclr(gnd),
	.sclr(nx41103z4),
	.sload(vcc),
	.ena(nx41103z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(mem_wrn_current_2_));

// atom is at LCCOMB_X29_Y23_N12
cycloneii_lcell_comb ix39109z52925(
// Equation(s):
// nx39109z3 = i_valid_acombout & !mem_wrn_current_2_ & !mem_wrn_current_1_ & !mem_wrn_current_0_

	.dataa(i_valid_acombout),
	.datab(mem_wrn_current_2_),
	.datac(mem_wrn_current_1_),
	.datad(mem_wrn_current_0_),
	.cin(gnd),
	.combout(nx39109z3),
	.cout());
// synopsys translate_off
defparam ix39109z52925.lut_mask = 16'h0002;
defparam ix39109z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X29_Y23_N14
cycloneii_lcell_comb ix39109z52924(
// Equation(s):
// nx39109z2 = i_reset_acombout # nx8852z2 # nx41103z2 & !nx41103z3

	.dataa(i_reset_acombout),
	.datab(nx41103z2),
	.datac(nx41103z3),
	.datad(nx8852z2),
	.cin(gnd),
	.combout(nx39109z2),
	.cout());
// synopsys translate_off
defparam ix39109z52924.lut_mask = 16'hFFAE;
defparam ix39109z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y23_N25
cycloneii_lcell_ff reg_mem_wrn_current_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(mem_wrn_current_0__afeeder_combout),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(nx8852z1),
	.sload(nx39109z3),
	.ena(nx39109z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(mem_wrn_current_0_));

// atom is at LCCOMB_X28_Y23_N0
cycloneii_lcell_comb ix63578z52926(
// Equation(s):
// nx63578z3 = mem_wrn_current_1_ & nx60567z2 # !mem_wrn_current_0_

	.dataa(vcc),
	.datab(mem_wrn_current_0_),
	.datac(mem_wrn_current_1_),
	.datad(nx60567z2),
	.cin(gnd),
	.combout(nx63578z3),
	.cout());
// synopsys translate_off
defparam ix63578z52926.lut_mask = 16'hF333;
defparam ix63578z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X26_Y24
cycloneii_ram_block u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(mem_wrn_1_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_column_anx1041z1,modgen_counter_column_anx58250z3,modgen_counter_column_anx58250z5,modgen_counter_column_anx58250z7,modgen_counter_column_anx58250z9,modgen_counter_column_anx58250z11,modgen_counter_column_anx58250z13,
modgen_counter_column_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:u_mem2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam u_mem2_mem_aix64056z29482_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N2
cycloneii_lcell_comb ix5021z52925(
// Equation(s):
// buffer2_4n2ss1_0_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[0]) # !nx60567z2 & i_pixel_acombout[0]

	.dataa(nx60567z2),
	.datab(i_pixel_acombout[0]),
	.datac(vcc),
	.datad(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(buffer2_4n2ss1_0_),
	.cout());
// synopsys translate_off
defparam ix5021z52925.lut_mask = 16'hEE44;
defparam ix5021z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N10
cycloneii_lcell_comb ix5021z52924(
// Equation(s):
// nx5021z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0] # !nx63578z3 & (buffer2_4n2ss1_0_)

	.dataa(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datab(vcc),
	.datac(nx63578z3),
	.datad(buffer2_4n2ss1_0_),
	.cin(gnd),
	.combout(nx5021z2),
	.cout());
// synopsys translate_off
defparam ix5021z52924.lut_mask = 16'hAFA0;
defparam ix5021z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N14
cycloneii_lcell_comb ix5021z52923(
// Equation(s):
// nx5021z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[0] # !nx63578z4 & (nx5021z2)

	.dataa(nx63578z4),
	.datab(vcc),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datad(nx5021z2),
	.cin(gnd),
	.combout(nx5021z1),
	.cout());
// synopsys translate_off
defparam ix5021z52923.lut_mask = 16'hF5A0;
defparam ix5021z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y23_N15
cycloneii_lcell_ff reg_buffer2_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx5021z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_0_));

// atom is at LCCOMB_X29_Y23_N26
cycloneii_lcell_comb o_image1_0__dup0_0__afeeder(
// Equation(s):
// o_image1_0__dup0_0__afeeder_combout = o_image2_0__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_0_),
	.cin(gnd),
	.combout(o_image1_0__dup0_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_0__afeeder.lut_mask = 16'hFF00;
defparam o_image1_0__dup0_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X29_Y23_N27
cycloneii_lcell_ff reg_buffer1_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_0_));

// atom is at LCCOMB_X29_Y23_N2
cycloneii_lcell_comb nx59473z1_afeeder(
// Equation(s):
// nx59473z1_afeeder_combout = o_image1_0__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_0__dup0_0_),
	.cin(gnd),
	.combout(nx59473z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx59473z1_afeeder.lut_mask = 16'hFF00;
defparam nx59473z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X29_Y23_N3
cycloneii_lcell_ff reg_out_o_image0_obuf_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx59473z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx59473z1));

// atom is at LCCOMB_X28_Y24_N14
cycloneii_lcell_comb ix63578z52927(
// Equation(s):
// nx63578z4 = !mem_wrn_current_0_ & (!nx60567z2 # !mem_wrn_current_1_)

	.dataa(vcc),
	.datab(mem_wrn_current_1_),
	.datac(nx60567z2),
	.datad(mem_wrn_current_0_),
	.cin(gnd),
	.combout(nx63578z4),
	.cout());
// synopsys translate_off
defparam ix63578z52927.lut_mask = 16'h003F;
defparam ix63578z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N16
cycloneii_lcell_comb ix4024z52925(
// Equation(s):
// buffer2_4n2ss1_1_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[1]) # !nx60567z2 & i_pixel_acombout[1]

	.dataa(vcc),
	.datab(nx60567z2),
	.datac(i_pixel_acombout[1]),
	.datad(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(buffer2_4n2ss1_1_),
	.cout());
// synopsys translate_off
defparam ix4024z52925.lut_mask = 16'hFC30;
defparam ix4024z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X26_Y23
cycloneii_ram_block u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(mem_wrn_2_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_column_anx1041z1,modgen_counter_column_anx58250z3,modgen_counter_column_anx58250z5,modgen_counter_column_anx58250z7,modgen_counter_column_anx58250z9,modgen_counter_column_anx58250z11,modgen_counter_column_anx58250z13,
modgen_counter_column_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:u_mem3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam u_mem3_mem_aix64056z29483_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N26
cycloneii_lcell_comb ix4024z52924(
// Equation(s):
// nx4024z2 = nx63578z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]) # !nx63578z3 & buffer2_4n2ss1_1_

	.dataa(nx63578z3),
	.datab(vcc),
	.datac(buffer2_4n2ss1_1_),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx4024z2),
	.cout());
// synopsys translate_off
defparam ix4024z52924.lut_mask = 16'hFA50;
defparam ix4024z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N24
cycloneii_lcell_comb ix4024z52923(
// Equation(s):
// nx4024z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[1] # !nx63578z4 & (nx4024z2)

	.dataa(vcc),
	.datab(nx63578z4),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.datad(nx4024z2),
	.cin(gnd),
	.combout(nx4024z1),
	.cout());
// synopsys translate_off
defparam ix4024z52923.lut_mask = 16'hF3C0;
defparam ix4024z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N25
cycloneii_lcell_ff reg_buffer2_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx4024z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_1_));

// atom is at LCCOMB_X27_Y25_N30
cycloneii_lcell_comb o_image1_0__dup0_1__afeeder(
// Equation(s):
// o_image1_0__dup0_1__afeeder_combout = o_image2_0__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(o_image2_0__dup0_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(o_image1_0__dup0_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_1__afeeder.lut_mask = 16'hF0F0;
defparam o_image1_0__dup0_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N31
cycloneii_lcell_ff reg_buffer1_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_1_));

// atom is at LCCOMB_X27_Y25_N10
cycloneii_lcell_comb nx58476z1_afeeder(
// Equation(s):
// nx58476z1_afeeder_combout = o_image1_0__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_0__dup0_1_),
	.cin(gnd),
	.combout(nx58476z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx58476z1_afeeder.lut_mask = 16'hFF00;
defparam nx58476z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N11
cycloneii_lcell_ff reg_out_o_image0_obuf_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx58476z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx58476z1));

// atom is at LCCOMB_X28_Y24_N12
cycloneii_lcell_comb ix3027z52925(
// Equation(s):
// buffer2_4n2ss1_2_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[2]) # !nx60567z2 & i_pixel_acombout[2]

	.dataa(vcc),
	.datab(i_pixel_acombout[2]),
	.datac(nx60567z2),
	.datad(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(buffer2_4n2ss1_2_),
	.cout());
// synopsys translate_off
defparam ix3027z52925.lut_mask = 16'hFC0C;
defparam ix3027z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N30
cycloneii_lcell_comb ix3027z52924(
// Equation(s):
// nx3027z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2] # !nx63578z3 & (buffer2_4n2ss1_2_)

	.dataa(nx63578z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datad(buffer2_4n2ss1_2_),
	.cin(gnd),
	.combout(nx3027z2),
	.cout());
// synopsys translate_off
defparam ix3027z52924.lut_mask = 16'hF5A0;
defparam ix3027z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N2
cycloneii_lcell_comb ix3027z52923(
// Equation(s):
// nx3027z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[2] # !nx63578z4 & (nx3027z2)

	.dataa(vcc),
	.datab(nx63578z4),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datad(nx3027z2),
	.cin(gnd),
	.combout(nx3027z1),
	.cout());
// synopsys translate_off
defparam ix3027z52923.lut_mask = 16'hF3C0;
defparam ix3027z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N3
cycloneii_lcell_ff reg_buffer2_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx3027z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_2_));

// atom is at LCCOMB_X27_Y25_N8
cycloneii_lcell_comb o_image1_0__dup0_2__afeeder(
// Equation(s):
// o_image1_0__dup0_2__afeeder_combout = o_image2_0__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_2_),
	.cin(gnd),
	.combout(o_image1_0__dup0_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_2__afeeder.lut_mask = 16'hFF00;
defparam o_image1_0__dup0_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N9
cycloneii_lcell_ff reg_buffer1_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_2_));

// atom is at LCCOMB_X27_Y25_N20
cycloneii_lcell_comb nx57479z1_afeeder(
// Equation(s):
// nx57479z1_afeeder_combout = o_image1_0__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(o_image1_0__dup0_2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx57479z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx57479z1_afeeder.lut_mask = 16'hF0F0;
defparam nx57479z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N21
cycloneii_lcell_ff reg_out_o_image0_obuf_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57479z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx57479z1));

// atom is at LCCOMB_X27_Y24_N16
cycloneii_lcell_comb ix2030z52925(
// Equation(s):
// buffer2_4n2ss1_3_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[3]) # !nx60567z2 & i_pixel_acombout[3]

	.dataa(i_pixel_acombout[3]),
	.datab(vcc),
	.datac(nx60567z2),
	.datad(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(buffer2_4n2ss1_3_),
	.cout());
// synopsys translate_off
defparam ix2030z52925.lut_mask = 16'hFA0A;
defparam ix2030z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N0
cycloneii_lcell_comb ix2030z52924(
// Equation(s):
// nx2030z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3] # !nx63578z3 & (buffer2_4n2ss1_3_)

	.dataa(nx63578z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.datad(buffer2_4n2ss1_3_),
	.cin(gnd),
	.combout(nx2030z2),
	.cout());
// synopsys translate_off
defparam ix2030z52924.lut_mask = 16'hF5A0;
defparam ix2030z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N4
cycloneii_lcell_comb ix2030z52923(
// Equation(s):
// nx2030z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[3] # !nx63578z4 & (nx2030z2)

	.dataa(vcc),
	.datab(nx63578z4),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.datad(nx2030z2),
	.cin(gnd),
	.combout(nx2030z1),
	.cout());
// synopsys translate_off
defparam ix2030z52923.lut_mask = 16'hF3C0;
defparam ix2030z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N5
cycloneii_lcell_ff reg_buffer2_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx2030z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_3_));

// atom is at LCCOMB_X27_Y25_N26
cycloneii_lcell_comb o_image1_0__dup0_3__afeeder(
// Equation(s):
// o_image1_0__dup0_3__afeeder_combout = o_image2_0__dup0_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_3_),
	.cin(gnd),
	.combout(o_image1_0__dup0_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_3__afeeder.lut_mask = 16'hFF00;
defparam o_image1_0__dup0_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N27
cycloneii_lcell_ff reg_buffer1_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_3_));

// atom is at LCCOMB_X27_Y25_N14
cycloneii_lcell_comb nx56482z1_afeeder(
// Equation(s):
// nx56482z1_afeeder_combout = o_image1_0__dup0_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_0__dup0_3_),
	.cin(gnd),
	.combout(nx56482z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx56482z1_afeeder.lut_mask = 16'hFF00;
defparam nx56482z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N15
cycloneii_lcell_ff reg_out_o_image0_obuf_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx56482z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx56482z1));

// atom is at LCCOMB_X27_Y24_N26
cycloneii_lcell_comb ix1033z52925(
// Equation(s):
// buffer2_4n2ss1_4_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[4]) # !nx60567z2 & i_pixel_acombout[4]

	.dataa(i_pixel_acombout[4]),
	.datab(nx60567z2),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.datad(vcc),
	.cin(gnd),
	.combout(buffer2_4n2ss1_4_),
	.cout());
// synopsys translate_off
defparam ix1033z52925.lut_mask = 16'hE2E2;
defparam ix1033z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N12
cycloneii_lcell_comb ix1033z52924(
// Equation(s):
// nx1033z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4] # !nx63578z3 & (buffer2_4n2ss1_4_)

	.dataa(vcc),
	.datab(nx63578z3),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(buffer2_4n2ss1_4_),
	.cin(gnd),
	.combout(nx1033z2),
	.cout());
// synopsys translate_off
defparam ix1033z52924.lut_mask = 16'hF3C0;
defparam ix1033z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N24
cycloneii_lcell_comb ix1033z52923(
// Equation(s):
// nx1033z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[4] # !nx63578z4 & (nx1033z2)

	.dataa(vcc),
	.datab(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.datac(nx63578z4),
	.datad(nx1033z2),
	.cin(gnd),
	.combout(nx1033z1),
	.cout());
// synopsys translate_off
defparam ix1033z52923.lut_mask = 16'hCFC0;
defparam ix1033z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N25
cycloneii_lcell_ff reg_buffer2_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx1033z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_4_));

// atom is at LCCOMB_X27_Y25_N28
cycloneii_lcell_comb o_image1_0__dup0_4__afeeder(
// Equation(s):
// o_image1_0__dup0_4__afeeder_combout = o_image2_0__dup0_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_4_),
	.cin(gnd),
	.combout(o_image1_0__dup0_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_4__afeeder.lut_mask = 16'hFF00;
defparam o_image1_0__dup0_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N29
cycloneii_lcell_ff reg_buffer1_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_4_));

// atom is at LCCOMB_X27_Y25_N16
cycloneii_lcell_comb nx55485z1_afeeder(
// Equation(s):
// nx55485z1_afeeder_combout = o_image1_0__dup0_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_0__dup0_4_),
	.cin(gnd),
	.combout(nx55485z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx55485z1_afeeder.lut_mask = 16'hFF00;
defparam nx55485z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx55485z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx55485z1));

// atom is at LCCOMB_X27_Y24_N30
cycloneii_lcell_comb ix36z52925(
// Equation(s):
// buffer2_4n2ss1_5_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[5]) # !nx60567z2 & i_pixel_acombout[5]

	.dataa(vcc),
	.datab(nx60567z2),
	.datac(i_pixel_acombout[5]),
	.datad(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(buffer2_4n2ss1_5_),
	.cout());
// synopsys translate_off
defparam ix36z52925.lut_mask = 16'hFC30;
defparam ix36z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N0
cycloneii_lcell_comb ix36z52924(
// Equation(s):
// nx36z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5] # !nx63578z3 & (buffer2_4n2ss1_5_)

	.dataa(vcc),
	.datab(nx63578z3),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.datad(buffer2_4n2ss1_5_),
	.cin(gnd),
	.combout(nx36z2),
	.cout());
// synopsys translate_off
defparam ix36z52924.lut_mask = 16'hF3C0;
defparam ix36z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N2
cycloneii_lcell_comb ix36z52923(
// Equation(s):
// nx36z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[5] # !nx63578z4 & (nx36z2)

	.dataa(vcc),
	.datab(nx63578z4),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.datad(nx36z2),
	.cin(gnd),
	.combout(nx36z1),
	.cout());
// synopsys translate_off
defparam ix36z52923.lut_mask = 16'hF3C0;
defparam ix36z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N3
cycloneii_lcell_ff reg_buffer2_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_5_));

// atom is at LCCOMB_X27_Y25_N22
cycloneii_lcell_comb o_image1_0__dup0_5__afeeder(
// Equation(s):
// o_image1_0__dup0_5__afeeder_combout = o_image2_0__dup0_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(o_image2_0__dup0_5_),
	.datad(vcc),
	.cin(gnd),
	.combout(o_image1_0__dup0_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_5__afeeder.lut_mask = 16'hF0F0;
defparam o_image1_0__dup0_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N23
cycloneii_lcell_ff reg_buffer1_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_5_));

// atom is at LCCOMB_X27_Y25_N18
cycloneii_lcell_comb nx54488z1_afeeder(
// Equation(s):
// nx54488z1_afeeder_combout = o_image1_0__dup0_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_0__dup0_5_),
	.cin(gnd),
	.combout(nx54488z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx54488z1_afeeder.lut_mask = 16'hFF00;
defparam nx54488z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N19
cycloneii_lcell_ff reg_out_o_image0_obuf_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx54488z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx54488z1));

// atom is at LCCOMB_X25_Y24_N28
cycloneii_lcell_comb ix64575z52925(
// Equation(s):
// buffer2_4n2ss1_6_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[6]) # !nx60567z2 & i_pixel_acombout[6]

	.dataa(i_pixel_acombout[6]),
	.datab(vcc),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datad(nx60567z2),
	.cin(gnd),
	.combout(buffer2_4n2ss1_6_),
	.cout());
// synopsys translate_off
defparam ix64575z52925.lut_mask = 16'hF0AA;
defparam ix64575z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X25_Y24_N22
cycloneii_lcell_comb ix64575z52924(
// Equation(s):
// nx64575z2 = nx63578z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6] # !nx63578z3 & (buffer2_4n2ss1_6_)

	.dataa(nx63578z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datad(buffer2_4n2ss1_6_),
	.cin(gnd),
	.combout(nx64575z2),
	.cout());
// synopsys translate_off
defparam ix64575z52924.lut_mask = 16'hF5A0;
defparam ix64575z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X25_Y24_N14
cycloneii_lcell_comb ix64575z52923(
// Equation(s):
// nx64575z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[6] # !nx63578z4 & (nx64575z2)

	.dataa(vcc),
	.datab(nx63578z4),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.datad(nx64575z2),
	.cin(gnd),
	.combout(nx64575z1),
	.cout());
// synopsys translate_off
defparam ix64575z52923.lut_mask = 16'hF3C0;
defparam ix64575z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N15
cycloneii_lcell_ff reg_buffer2_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx64575z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_6_));

// atom is at LCFF_X25_Y24_N19
cycloneii_lcell_ff reg_buffer1_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_0__dup0_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_6_));

// atom is at LCCOMB_X25_Y24_N8
cycloneii_lcell_comb nx53491z1_afeeder(
// Equation(s):
// nx53491z1_afeeder_combout = o_image1_0__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_0__dup0_6_),
	.cin(gnd),
	.combout(nx53491z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx53491z1_afeeder.lut_mask = 16'hFF00;
defparam nx53491z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N9
cycloneii_lcell_ff reg_out_o_image0_obuf_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx53491z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx53491z1));

// atom is at LCCOMB_X25_Y24_N16
cycloneii_lcell_comb ix63578z52925(
// Equation(s):
// buffer2_4n2ss1_7_ = nx60567z2 & (u_mem2_mem_aix64056z29482_aauto_generated_aq_a[7]) # !nx60567z2 & i_pixel_acombout[7]

	.dataa(i_pixel_acombout[7]),
	.datab(vcc),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.datad(nx60567z2),
	.cin(gnd),
	.combout(buffer2_4n2ss1_7_),
	.cout());
// synopsys translate_off
defparam ix63578z52925.lut_mask = 16'hF0AA;
defparam ix63578z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X25_Y24_N26
cycloneii_lcell_comb ix63578z52924(
// Equation(s):
// nx63578z2 = nx63578z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]) # !nx63578z3 & buffer2_4n2ss1_7_

	.dataa(nx63578z3),
	.datab(vcc),
	.datac(buffer2_4n2ss1_7_),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx63578z2),
	.cout());
// synopsys translate_off
defparam ix63578z52924.lut_mask = 16'hFA50;
defparam ix63578z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X25_Y24_N24
cycloneii_lcell_comb ix63578z52923(
// Equation(s):
// nx63578z1 = nx63578z4 & u_mem1_mem_aix64056z29481_aauto_generated_aq_a[7] # !nx63578z4 & (nx63578z2)

	.dataa(vcc),
	.datab(nx63578z4),
	.datac(u_mem1_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datad(nx63578z2),
	.cin(gnd),
	.combout(nx63578z1),
	.cout());
// synopsys translate_off
defparam ix63578z52923.lut_mask = 16'hF3C0;
defparam ix63578z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N25
cycloneii_lcell_ff reg_buffer2_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx63578z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_0__dup0_7_));

// atom is at LCCOMB_X30_Y32_N20
cycloneii_lcell_comb o_image1_0__dup0_7__afeeder(
// Equation(s):
// o_image1_0__dup0_7__afeeder_combout = o_image2_0__dup0_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_7_),
	.cin(gnd),
	.combout(o_image1_0__dup0_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_0__dup0_7__afeeder.lut_mask = 16'hFF00;
defparam o_image1_0__dup0_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N21
cycloneii_lcell_ff reg_buffer1_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_0__dup0_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_0__dup0_7_));

// atom is at LCFF_X30_Y32_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_0__dup0_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx52494z1));

// atom is at LCCOMB_X28_Y24_N18
cycloneii_lcell_comb ix62359z52926(
// Equation(s):
// nx62359z4 = !mem_wrn_current_1_ & (!mem_wrn_current_0_ # !nx60567z2)

	.dataa(vcc),
	.datab(mem_wrn_current_1_),
	.datac(nx60567z2),
	.datad(mem_wrn_current_0_),
	.cin(gnd),
	.combout(nx62359z4),
	.cout());
// synopsys translate_off
defparam ix62359z52926.lut_mask = 16'h0333;
defparam ix62359z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N8
cycloneii_lcell_comb ix62359z52925(
// Equation(s):
// nx62359z3 = nx60567z2 & mem_wrn_current_0_ # !mem_wrn_current_1_

	.dataa(nx60567z2),
	.datab(mem_wrn_current_0_),
	.datac(vcc),
	.datad(mem_wrn_current_1_),
	.cin(gnd),
	.combout(nx62359z3),
	.cout());
// synopsys translate_off
defparam ix62359z52925.lut_mask = 16'h88FF;
defparam ix62359z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N6
cycloneii_lcell_comb ix55380z52924(
// Equation(s):
// nx55380z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0] # !nx62359z3 & (buffer2_4n2ss1_0_)

	.dataa(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datab(nx62359z3),
	.datac(vcc),
	.datad(buffer2_4n2ss1_0_),
	.cin(gnd),
	.combout(nx55380z2),
	.cout());
// synopsys translate_off
defparam ix55380z52924.lut_mask = 16'hBB88;
defparam ix55380z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y23_N20
cycloneii_lcell_comb ix55380z52923(
// Equation(s):
// nx55380z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[0] # !nx62359z4 & (nx55380z2)

	.dataa(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.datab(vcc),
	.datac(nx62359z4),
	.datad(nx55380z2),
	.cin(gnd),
	.combout(nx55380z1),
	.cout());
// synopsys translate_off
defparam ix55380z52923.lut_mask = 16'hAFA0;
defparam ix55380z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y23_N21
cycloneii_lcell_ff reg_buffer2_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx55380z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_0_));

// atom is at LCCOMB_X30_Y32_N30
cycloneii_lcell_comb o_image1_1__dup0_0__afeeder(
// Equation(s):
// o_image1_1__dup0_0__afeeder_combout = o_image2_1__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_0_),
	.cin(gnd),
	.combout(o_image1_1__dup0_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_1__dup0_0__afeeder.lut_mask = 16'hFF00;
defparam o_image1_1__dup0_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N31
cycloneii_lcell_ff reg_buffer1_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_1__dup0_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_0_));

// atom is at LCCOMB_X30_Y32_N10
cycloneii_lcell_comb nx64608z1_afeeder(
// Equation(s):
// nx64608z1_afeeder_combout = o_image1_1__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_1__dup0_0_),
	.cin(gnd),
	.combout(nx64608z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx64608z1_afeeder.lut_mask = 16'hFF00;
defparam nx64608z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N11
cycloneii_lcell_ff reg_out_o_image0_obuf_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx64608z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64608z1));

// atom is at LCCOMB_X28_Y24_N28
cycloneii_lcell_comb ix56377z52924(
// Equation(s):
// nx56377z2 = nx62359z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]) # !nx62359z3 & buffer2_4n2ss1_1_

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(buffer2_4n2ss1_1_),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx56377z2),
	.cout());
// synopsys translate_off
defparam ix56377z52924.lut_mask = 16'hFA50;
defparam ix56377z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N22
cycloneii_lcell_comb ix56377z52923(
// Equation(s):
// nx56377z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[1] # !nx62359z4 & (nx56377z2)

	.dataa(vcc),
	.datab(nx62359z4),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.datad(nx56377z2),
	.cin(gnd),
	.combout(nx56377z1),
	.cout());
// synopsys translate_off
defparam ix56377z52923.lut_mask = 16'hF3C0;
defparam ix56377z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N23
cycloneii_lcell_ff reg_buffer2_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx56377z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_1_));

// atom is at LCCOMB_X30_Y32_N24
cycloneii_lcell_comb o_image1_1__dup0_1__afeeder(
// Equation(s):
// o_image1_1__dup0_1__afeeder_combout = o_image2_1__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_1_),
	.cin(gnd),
	.combout(o_image1_1__dup0_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_1__dup0_1__afeeder.lut_mask = 16'hFF00;
defparam o_image1_1__dup0_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N25
cycloneii_lcell_ff reg_buffer1_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_1__dup0_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_1_));

// atom is at LCFF_X30_Y32_N5
cycloneii_lcell_ff reg_out_o_image0_obuf_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_1__dup0_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63611z1));

// atom is at LCCOMB_X28_Y24_N6
cycloneii_lcell_comb ix57374z52924(
// Equation(s):
// nx57374z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2] # !nx62359z3 & (buffer2_4n2ss1_2_)

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datad(buffer2_4n2ss1_2_),
	.cin(gnd),
	.combout(nx57374z2),
	.cout());
// synopsys translate_off
defparam ix57374z52924.lut_mask = 16'hF5A0;
defparam ix57374z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X28_Y24_N8
cycloneii_lcell_comb ix57374z52923(
// Equation(s):
// nx57374z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[2] # !nx62359z4 & (nx57374z2)

	.dataa(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.datab(nx62359z4),
	.datac(vcc),
	.datad(nx57374z2),
	.cin(gnd),
	.combout(nx57374z1),
	.cout());
// synopsys translate_off
defparam ix57374z52923.lut_mask = 16'hBB88;
defparam ix57374z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N9
cycloneii_lcell_ff reg_buffer2_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57374z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_2_));

// atom is at LCCOMB_X30_Y32_N26
cycloneii_lcell_comb o_image1_1__dup0_2__afeeder(
// Equation(s):
// o_image1_1__dup0_2__afeeder_combout = o_image2_1__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_2_),
	.cin(gnd),
	.combout(o_image1_1__dup0_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_1__dup0_2__afeeder.lut_mask = 16'hFF00;
defparam o_image1_1__dup0_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N27
cycloneii_lcell_ff reg_buffer1_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_1__dup0_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_2_));

// atom is at LCCOMB_X30_Y32_N14
cycloneii_lcell_comb nx62614z1_afeeder(
// Equation(s):
// nx62614z1_afeeder_combout = o_image1_1__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_1__dup0_2_),
	.cin(gnd),
	.combout(nx62614z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx62614z1_afeeder.lut_mask = 16'hFF00;
defparam nx62614z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N15
cycloneii_lcell_ff reg_out_o_image0_obuf_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx62614z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62614z1));

// atom is at LCCOMB_X27_Y24_N10
cycloneii_lcell_comb ix58371z52924(
// Equation(s):
// nx58371z2 = nx62359z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]) # !nx62359z3 & buffer2_4n2ss1_3_

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(buffer2_4n2ss1_3_),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx58371z2),
	.cout());
// synopsys translate_off
defparam ix58371z52924.lut_mask = 16'hFA50;
defparam ix58371z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N20
cycloneii_lcell_comb ix58371z52923(
// Equation(s):
// nx58371z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[3] # !nx62359z4 & (nx58371z2)

	.dataa(vcc),
	.datab(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.datac(nx62359z4),
	.datad(nx58371z2),
	.cin(gnd),
	.combout(nx58371z1),
	.cout());
// synopsys translate_off
defparam ix58371z52923.lut_mask = 16'hCFC0;
defparam ix58371z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N21
cycloneii_lcell_ff reg_buffer2_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx58371z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_3_));

// atom is at LCCOMB_X30_Y32_N28
cycloneii_lcell_comb o_image1_1__dup0_3__afeeder(
// Equation(s):
// o_image1_1__dup0_3__afeeder_combout = o_image2_1__dup0_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_3_),
	.cin(gnd),
	.combout(o_image1_1__dup0_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_1__dup0_3__afeeder.lut_mask = 16'hFF00;
defparam o_image1_1__dup0_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N29
cycloneii_lcell_ff reg_buffer1_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_1__dup0_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_3_));

// atom is at LCCOMB_X30_Y32_N8
cycloneii_lcell_comb nx61617z1_afeeder(
// Equation(s):
// nx61617z1_afeeder_combout = o_image1_1__dup0_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_1__dup0_3_),
	.cin(gnd),
	.combout(nx61617z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx61617z1_afeeder.lut_mask = 16'hFF00;
defparam nx61617z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N9
cycloneii_lcell_ff reg_out_o_image0_obuf_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx61617z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx61617z1));

// atom is at LCCOMB_X27_Y24_N28
cycloneii_lcell_comb ix59368z52924(
// Equation(s):
// nx59368z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4] # !nx62359z3 & (buffer2_4n2ss1_4_)

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(buffer2_4n2ss1_4_),
	.cin(gnd),
	.combout(nx59368z2),
	.cout());
// synopsys translate_off
defparam ix59368z52924.lut_mask = 16'hF5A0;
defparam ix59368z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N6
cycloneii_lcell_comb ix59368z52923(
// Equation(s):
// nx59368z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[4] # !nx62359z4 & (nx59368z2)

	.dataa(nx62359z4),
	.datab(vcc),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.datad(nx59368z2),
	.cin(gnd),
	.combout(nx59368z1),
	.cout());
// synopsys translate_off
defparam ix59368z52923.lut_mask = 16'hF5A0;
defparam ix59368z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N7
cycloneii_lcell_ff reg_buffer2_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx59368z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_4_));

// atom is at LCFF_X18_Y32_N23
cycloneii_lcell_ff reg_buffer1_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_1__dup0_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_4_));

// atom is at LCCOMB_X18_Y32_N24
cycloneii_lcell_comb nx60620z1_afeeder(
// Equation(s):
// nx60620z1_afeeder_combout = o_image1_1__dup0_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_1__dup0_4_),
	.cin(gnd),
	.combout(nx60620z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx60620z1_afeeder.lut_mask = 16'hFF00;
defparam nx60620z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N25
cycloneii_lcell_ff reg_out_o_image0_obuf_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60620z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx60620z1));

// atom is at LCCOMB_X27_Y24_N22
cycloneii_lcell_comb ix60365z52924(
// Equation(s):
// nx60365z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5] # !nx62359z3 & (buffer2_4n2ss1_5_)

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.datad(buffer2_4n2ss1_5_),
	.cin(gnd),
	.combout(nx60365z2),
	.cout());
// synopsys translate_off
defparam ix60365z52924.lut_mask = 16'hF5A0;
defparam ix60365z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X27_Y24_N8
cycloneii_lcell_comb ix60365z52923(
// Equation(s):
// nx60365z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[5] # !nx62359z4 & (nx60365z2)

	.dataa(vcc),
	.datab(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.datac(nx62359z4),
	.datad(nx60365z2),
	.cin(gnd),
	.combout(nx60365z1),
	.cout());
// synopsys translate_off
defparam ix60365z52923.lut_mask = 16'hCFC0;
defparam ix60365z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N9
cycloneii_lcell_ff reg_buffer2_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60365z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_5_));

// atom is at LCFF_X18_Y32_N9
cycloneii_lcell_ff reg_buffer1_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_1__dup0_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_5_));

// atom is at LCFF_X18_Y32_N11
cycloneii_lcell_ff reg_out_o_image0_obuf_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_1__dup0_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx59623z1));

// atom is at LCCOMB_X25_Y24_N12
cycloneii_lcell_comb ix61362z52924(
// Equation(s):
// nx61362z2 = nx62359z3 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6] # !nx62359z3 & (buffer2_4n2ss1_6_)

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datad(buffer2_4n2ss1_6_),
	.cin(gnd),
	.combout(nx61362z2),
	.cout());
// synopsys translate_off
defparam ix61362z52924.lut_mask = 16'hF5A0;
defparam ix61362z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X25_Y24_N10
cycloneii_lcell_comb ix61362z52923(
// Equation(s):
// nx61362z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[6] # !nx62359z4 & (nx61362z2)

	.dataa(vcc),
	.datab(nx62359z4),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datad(nx61362z2),
	.cin(gnd),
	.combout(nx61362z1),
	.cout());
// synopsys translate_off
defparam ix61362z52923.lut_mask = 16'hF3C0;
defparam ix61362z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N11
cycloneii_lcell_ff reg_buffer2_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx61362z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_6_));

// atom is at LCCOMB_X30_Y32_N22
cycloneii_lcell_comb o_image1_1__dup0_6__afeeder(
// Equation(s):
// o_image1_1__dup0_6__afeeder_combout = o_image2_1__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_6_),
	.cin(gnd),
	.combout(o_image1_1__dup0_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_1__dup0_6__afeeder.lut_mask = 16'hFF00;
defparam o_image1_1__dup0_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N23
cycloneii_lcell_ff reg_buffer1_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_1__dup0_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_6_));

// atom is at LCCOMB_X30_Y32_N2
cycloneii_lcell_comb nx58626z1_afeeder(
// Equation(s):
// nx58626z1_afeeder_combout = o_image1_1__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_1__dup0_6_),
	.cin(gnd),
	.combout(nx58626z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx58626z1_afeeder.lut_mask = 16'hFF00;
defparam nx58626z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N3
cycloneii_lcell_ff reg_out_o_image0_obuf_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx58626z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx58626z1));

// atom is at LCCOMB_X25_Y24_N30
cycloneii_lcell_comb ix62359z52924(
// Equation(s):
// nx62359z2 = nx62359z3 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]) # !nx62359z3 & buffer2_4n2ss1_7_

	.dataa(nx62359z3),
	.datab(vcc),
	.datac(buffer2_4n2ss1_7_),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx62359z2),
	.cout());
// synopsys translate_off
defparam ix62359z52924.lut_mask = 16'hFA50;
defparam ix62359z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X25_Y24_N20
cycloneii_lcell_comb ix62359z52923(
// Equation(s):
// nx62359z1 = nx62359z4 & u_mem2_mem_aix64056z29482_aauto_generated_aq_a[7] # !nx62359z4 & (nx62359z2)

	.dataa(vcc),
	.datab(nx62359z4),
	.datac(u_mem2_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.datad(nx62359z2),
	.cin(gnd),
	.combout(nx62359z1),
	.cout());
// synopsys translate_off
defparam ix62359z52923.lut_mask = 16'hF3C0;
defparam ix62359z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N21
cycloneii_lcell_ff reg_buffer2_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx62359z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_1__dup0_7_));

// atom is at LCCOMB_X18_Y32_N26
cycloneii_lcell_comb o_image1_1__dup0_7__afeeder(
// Equation(s):
// o_image1_1__dup0_7__afeeder_combout = o_image2_1__dup0_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_7_),
	.cin(gnd),
	.combout(o_image1_1__dup0_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_1__dup0_7__afeeder.lut_mask = 16'hFF00;
defparam o_image1_1__dup0_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N27
cycloneii_lcell_ff reg_buffer1_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_1__dup0_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_1__dup0_7_));

// atom is at LCCOMB_X18_Y32_N12
cycloneii_lcell_comb nx57629z1_afeeder(
// Equation(s):
// nx57629z1_afeeder_combout = o_image1_1__dup0_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_1__dup0_7_),
	.cin(gnd),
	.combout(nx57629z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx57629z1_afeeder.lut_mask = 16'hFF00;
defparam nx57629z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N13
cycloneii_lcell_ff reg_out_o_image0_obuf_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57629z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx57629z1));

// atom is at LCCOMB_X28_Y23_N22
cycloneii_lcell_comb ix50245z52923(
// Equation(s):
// nx50245z1 = nx60567z2 & i_pixel_acombout[0] # !nx60567z2 & (mem_wrn_current_2_ & i_pixel_acombout[0] # !mem_wrn_current_2_ & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]))

	.dataa(nx60567z2),
	.datab(i_pixel_acombout[0]),
	.datac(mem_wrn_current_2_),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx50245z1),
	.cout());
// synopsys translate_off
defparam ix50245z52923.lut_mask = 16'hCDC8;
defparam ix50245z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y23_N23
cycloneii_lcell_ff reg_buffer2_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx50245z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_0_));

// atom is at LCCOMB_X18_Y32_N4
cycloneii_lcell_comb o_image1_2__dup0_0__afeeder(
// Equation(s):
// o_image1_2__dup0_0__afeeder_combout = o_image2_2__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_0_),
	.cin(gnd),
	.combout(o_image1_2__dup0_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_2__dup0_0__afeeder.lut_mask = 16'hFF00;
defparam o_image1_2__dup0_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N5
cycloneii_lcell_ff reg_buffer1_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_2__dup0_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_0_));

// atom is at LCFF_X18_Y32_N31
cycloneii_lcell_ff reg_out_o_image0_obuf_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_2__dup0_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx4207z1));

// atom is at LCCOMB_X28_Y24_N10
cycloneii_lcell_comb ix51242z52923(
// Equation(s):
// nx51242z1 = mem_wrn_current_2_ & (i_pixel_acombout[1]) # !mem_wrn_current_2_ & (nx60567z2 & i_pixel_acombout[1] # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]))

	.dataa(mem_wrn_current_2_),
	.datab(nx60567z2),
	.datac(i_pixel_acombout[1]),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx51242z1),
	.cout());
// synopsys translate_off
defparam ix51242z52923.lut_mask = 16'hF1E0;
defparam ix51242z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N11
cycloneii_lcell_ff reg_buffer2_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx51242z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_1_));

// atom is at LCCOMB_X18_Y32_N14
cycloneii_lcell_comb o_image1_2__dup0_1__afeeder(
// Equation(s):
// o_image1_2__dup0_1__afeeder_combout = o_image2_2__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_1_),
	.cin(gnd),
	.combout(o_image1_2__dup0_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_2__dup0_1__afeeder.lut_mask = 16'hFF00;
defparam o_image1_2__dup0_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N15
cycloneii_lcell_ff reg_buffer1_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_2__dup0_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_1_));

// atom is at LCFF_X18_Y32_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_2__dup0_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx3210z1));

// atom is at LCCOMB_X28_Y24_N20
cycloneii_lcell_comb ix52239z52923(
// Equation(s):
// nx52239z1 = mem_wrn_current_2_ & i_pixel_acombout[2] # !mem_wrn_current_2_ & (nx60567z2 & i_pixel_acombout[2] # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]))

	.dataa(mem_wrn_current_2_),
	.datab(i_pixel_acombout[2]),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datad(nx60567z2),
	.cin(gnd),
	.combout(nx52239z1),
	.cout());
// synopsys translate_off
defparam ix52239z52923.lut_mask = 16'hCCD8;
defparam ix52239z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X28_Y24_N21
cycloneii_lcell_ff reg_buffer2_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx52239z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_2_));

// atom is at LCCOMB_X20_Y32_N28
cycloneii_lcell_comb o_image1_2__dup0_2__afeeder(
// Equation(s):
// o_image1_2__dup0_2__afeeder_combout = o_image2_2__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_2_),
	.cin(gnd),
	.combout(o_image1_2__dup0_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_2__dup0_2__afeeder.lut_mask = 16'hFF00;
defparam o_image1_2__dup0_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X20_Y32_N29
cycloneii_lcell_ff reg_buffer1_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_2__dup0_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_2_));

// atom is at LCCOMB_X18_Y32_N2
cycloneii_lcell_comb nx2213z1_afeeder(
// Equation(s):
// nx2213z1_afeeder_combout = o_image1_2__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_2__dup0_2_),
	.cin(gnd),
	.combout(nx2213z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx2213z1_afeeder.lut_mask = 16'hFF00;
defparam nx2213z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N3
cycloneii_lcell_ff reg_out_o_image0_obuf_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx2213z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx2213z1));

// atom is at LCCOMB_X27_Y24_N18
cycloneii_lcell_comb ix53236z52923(
// Equation(s):
// nx53236z1 = mem_wrn_current_2_ & (i_pixel_acombout[3]) # !mem_wrn_current_2_ & (nx60567z2 & i_pixel_acombout[3] # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]))

	.dataa(mem_wrn_current_2_),
	.datab(nx60567z2),
	.datac(i_pixel_acombout[3]),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx53236z1),
	.cout());
// synopsys translate_off
defparam ix53236z52923.lut_mask = 16'hF1E0;
defparam ix53236z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N19
cycloneii_lcell_ff reg_buffer2_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx53236z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_3_));

// atom is at LCFF_X32_Y25_N15
cycloneii_lcell_ff reg_buffer1_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_2__dup0_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_3_));

// atom is at LCFF_X32_Y25_N25
cycloneii_lcell_ff reg_out_o_image0_obuf_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_2__dup0_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx1216z1));

// atom is at LCCOMB_X27_Y24_N4
cycloneii_lcell_comb ix54233z52923(
// Equation(s):
// nx54233z1 = mem_wrn_current_2_ & (i_pixel_acombout[4]) # !mem_wrn_current_2_ & (nx60567z2 & (i_pixel_acombout[4]) # !nx60567z2 & u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4])

	.dataa(mem_wrn_current_2_),
	.datab(nx60567z2),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(i_pixel_acombout[4]),
	.cin(gnd),
	.combout(nx54233z1),
	.cout());
// synopsys translate_off
defparam ix54233z52923.lut_mask = 16'hFE10;
defparam ix54233z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N5
cycloneii_lcell_ff reg_buffer2_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx54233z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_4_));

// atom is at LCCOMB_X32_Y25_N8
cycloneii_lcell_comb o_image1_2__dup0_4__afeeder(
// Equation(s):
// o_image1_2__dup0_4__afeeder_combout = o_image2_2__dup0_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_4_),
	.cin(gnd),
	.combout(o_image1_2__dup0_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_2__dup0_4__afeeder.lut_mask = 16'hFF00;
defparam o_image1_2__dup0_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N9
cycloneii_lcell_ff reg_buffer1_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_2__dup0_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_4_));

// atom is at LCFF_X32_Y25_N11
cycloneii_lcell_ff reg_out_o_image0_obuf_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image1_2__dup0_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx219z1));

// atom is at LCCOMB_X27_Y24_N14
cycloneii_lcell_comb ix55230z52923(
// Equation(s):
// nx55230z1 = mem_wrn_current_2_ & (i_pixel_acombout[5]) # !mem_wrn_current_2_ & (nx60567z2 & i_pixel_acombout[5] # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]))

	.dataa(mem_wrn_current_2_),
	.datab(nx60567z2),
	.datac(i_pixel_acombout[5]),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx55230z1),
	.cout());
// synopsys translate_off
defparam ix55230z52923.lut_mask = 16'hF1E0;
defparam ix55230z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y24_N15
cycloneii_lcell_ff reg_buffer2_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx55230z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_5_));

// atom is at LCFF_X32_Y25_N27
cycloneii_lcell_ff reg_buffer1_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_2__dup0_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_5_));

// atom is at LCCOMB_X32_Y25_N12
cycloneii_lcell_comb nx64758z1_afeeder(
// Equation(s):
// nx64758z1_afeeder_combout = o_image1_2__dup0_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_2__dup0_5_),
	.cin(gnd),
	.combout(nx64758z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx64758z1_afeeder.lut_mask = 16'hFF00;
defparam nx64758z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N13
cycloneii_lcell_ff reg_out_o_image0_obuf_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx64758z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64758z1));

// atom is at LCCOMB_X25_Y24_N6
cycloneii_lcell_comb ix56227z52923(
// Equation(s):
// nx56227z1 = mem_wrn_current_2_ & i_pixel_acombout[6] # !mem_wrn_current_2_ & (nx60567z2 & i_pixel_acombout[6] # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]))

	.dataa(mem_wrn_current_2_),
	.datab(i_pixel_acombout[6]),
	.datac(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datad(nx60567z2),
	.cin(gnd),
	.combout(nx56227z1),
	.cout());
// synopsys translate_off
defparam ix56227z52923.lut_mask = 16'hCCD8;
defparam ix56227z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N7
cycloneii_lcell_ff reg_buffer2_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx56227z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_6_));

// atom is at LCCOMB_X32_Y25_N28
cycloneii_lcell_comb o_image1_2__dup0_6__afeeder(
// Equation(s):
// o_image1_2__dup0_6__afeeder_combout = o_image2_2__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_6_),
	.cin(gnd),
	.combout(o_image1_2__dup0_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_image1_2__dup0_6__afeeder.lut_mask = 16'hFF00;
defparam o_image1_2__dup0_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N29
cycloneii_lcell_ff reg_buffer1_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_image1_2__dup0_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_6_));

// atom is at LCCOMB_X32_Y25_N30
cycloneii_lcell_comb nx63761z1_afeeder(
// Equation(s):
// nx63761z1_afeeder_combout = o_image1_2__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_2__dup0_6_),
	.cin(gnd),
	.combout(nx63761z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx63761z1_afeeder.lut_mask = 16'hFF00;
defparam nx63761z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N31
cycloneii_lcell_ff reg_out_o_image0_obuf_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx63761z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63761z1));

// atom is at LCCOMB_X25_Y24_N0
cycloneii_lcell_comb ix57224z52923(
// Equation(s):
// nx57224z1 = mem_wrn_current_2_ & (i_pixel_acombout[7]) # !mem_wrn_current_2_ & (nx60567z2 & i_pixel_acombout[7] # !nx60567z2 & (u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]))

	.dataa(mem_wrn_current_2_),
	.datab(nx60567z2),
	.datac(i_pixel_acombout[7]),
	.datad(u_mem3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx57224z1),
	.cout());
// synopsys translate_off
defparam ix57224z52923.lut_mask = 16'hF1E0;
defparam ix57224z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N1
cycloneii_lcell_ff reg_buffer2_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57224z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image2_2__dup0_7_));

// atom is at LCFF_X32_Y25_N7
cycloneii_lcell_ff reg_buffer1_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_2__dup0_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_image1_2__dup0_7_));

// atom is at LCCOMB_X32_Y25_N16
cycloneii_lcell_comb nx62764z1_afeeder(
// Equation(s):
// nx62764z1_afeeder_combout = o_image1_2__dup0_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image1_2__dup0_7_),
	.cin(gnd),
	.combout(nx62764z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx62764z1_afeeder.lut_mask = 16'hFF00;
defparam nx62764z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N17
cycloneii_lcell_ff reg_out_o_image0_obuf_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx62764z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62764z1));

// atom is at LCCOMB_X32_Y25_N2
cycloneii_lcell_comb nx41208z1_afeeder(
// Equation(s):
// nx41208z1_afeeder_combout = o_image2_0__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_0_),
	.cin(gnd),
	.combout(nx41208z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx41208z1_afeeder.lut_mask = 16'hFF00;
defparam nx41208z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N3
cycloneii_lcell_ff reg_out_o_image1_obuf_0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx41208z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41208z1));

// atom is at LCCOMB_X27_Y25_N4
cycloneii_lcell_comb nx42205z1_afeeder(
// Equation(s):
// nx42205z1_afeeder_combout = o_image2_0__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(o_image2_0__dup0_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx42205z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx42205z1_afeeder.lut_mask = 16'hF0F0;
defparam nx42205z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N5
cycloneii_lcell_ff reg_out_o_image1_obuf_0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42205z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42205z1));

// atom is at LCCOMB_X27_Y25_N6
cycloneii_lcell_comb nx43202z1_afeeder(
// Equation(s):
// nx43202z1_afeeder_combout = o_image2_0__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_2_),
	.cin(gnd),
	.combout(nx43202z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx43202z1_afeeder.lut_mask = 16'hFF00;
defparam nx43202z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N7
cycloneii_lcell_ff reg_out_o_image1_obuf_0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43202z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43202z1));

// atom is at LCCOMB_X27_Y25_N0
cycloneii_lcell_comb nx44199z1_afeeder(
// Equation(s):
// nx44199z1_afeeder_combout = o_image2_0__dup0_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_3_),
	.cin(gnd),
	.combout(nx44199z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx44199z1_afeeder.lut_mask = 16'hFF00;
defparam nx44199z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N1
cycloneii_lcell_ff reg_out_o_image1_obuf_0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44199z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44199z1));

// atom is at LCCOMB_X27_Y25_N2
cycloneii_lcell_comb nx45196z1_afeeder(
// Equation(s):
// nx45196z1_afeeder_combout = o_image2_0__dup0_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_4_),
	.cin(gnd),
	.combout(nx45196z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx45196z1_afeeder.lut_mask = 16'hFF00;
defparam nx45196z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N3
cycloneii_lcell_ff reg_out_o_image1_obuf_0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45196z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45196z1));

// atom is at LCCOMB_X27_Y25_N12
cycloneii_lcell_comb nx46193z1_afeeder(
// Equation(s):
// nx46193z1_afeeder_combout = o_image2_0__dup0_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(o_image2_0__dup0_5_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx46193z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx46193z1_afeeder.lut_mask = 16'hF0F0;
defparam nx46193z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X27_Y25_N13
cycloneii_lcell_ff reg_out_o_image1_obuf_0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx46193z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46193z1));

// atom is at LCFF_X25_Y24_N3
cycloneii_lcell_ff reg_out_o_image1_obuf_0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_0__dup0_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47190z1));

// atom is at LCCOMB_X30_Y32_N12
cycloneii_lcell_comb nx48187z1_afeeder(
// Equation(s):
// nx48187z1_afeeder_combout = o_image2_0__dup0_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_0__dup0_7_),
	.cin(gnd),
	.combout(nx48187z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx48187z1_afeeder.lut_mask = 16'hFF00;
defparam nx48187z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N13
cycloneii_lcell_ff reg_out_o_image1_obuf_0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx48187z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx48187z1));

// atom is at LCCOMB_X30_Y32_N6
cycloneii_lcell_comb nx36073z1_afeeder(
// Equation(s):
// nx36073z1_afeeder_combout = o_image2_1__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_0_),
	.cin(gnd),
	.combout(nx36073z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx36073z1_afeeder.lut_mask = 16'hFF00;
defparam nx36073z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N7
cycloneii_lcell_ff reg_out_o_image1_obuf_1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36073z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx36073z1));

// atom is at LCCOMB_X30_Y32_N0
cycloneii_lcell_comb nx37070z1_afeeder(
// Equation(s):
// nx37070z1_afeeder_combout = o_image2_1__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_1_),
	.cin(gnd),
	.combout(nx37070z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx37070z1_afeeder.lut_mask = 16'hFF00;
defparam nx37070z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N1
cycloneii_lcell_ff reg_out_o_image1_obuf_1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx37070z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx37070z1));

// atom is at LCCOMB_X30_Y32_N18
cycloneii_lcell_comb nx38067z1_afeeder(
// Equation(s):
// nx38067z1_afeeder_combout = o_image2_1__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_2_),
	.cin(gnd),
	.combout(nx38067z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx38067z1_afeeder.lut_mask = 16'hFF00;
defparam nx38067z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y32_N19
cycloneii_lcell_ff reg_out_o_image1_obuf_1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx38067z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx38067z1));

// atom is at LCCOMB_X20_Y32_N8
cycloneii_lcell_comb nx39064z1_afeeder(
// Equation(s):
// nx39064z1_afeeder_combout = o_image2_1__dup0_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_3_),
	.cin(gnd),
	.combout(nx39064z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx39064z1_afeeder.lut_mask = 16'hFF00;
defparam nx39064z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X20_Y32_N9
cycloneii_lcell_ff reg_out_o_image1_obuf_1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx39064z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx39064z1));

// atom is at LCFF_X18_Y32_N21
cycloneii_lcell_ff reg_out_o_image1_obuf_1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_1__dup0_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx40061z1));

// atom is at LCFF_X18_Y32_N7
cycloneii_lcell_ff reg_out_o_image1_obuf_1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_1__dup0_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41058z1));

// atom is at LCCOMB_X25_Y24_N4
cycloneii_lcell_comb nx42055z1_afeeder(
// Equation(s):
// nx42055z1_afeeder_combout = o_image2_1__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_6_),
	.cin(gnd),
	.combout(nx42055z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx42055z1_afeeder.lut_mask = 16'hFF00;
defparam nx42055z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X25_Y24_N5
cycloneii_lcell_ff reg_out_o_image1_obuf_1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42055z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42055z1));

// atom is at LCCOMB_X18_Y32_N0
cycloneii_lcell_comb nx43052z1_afeeder(
// Equation(s):
// nx43052z1_afeeder_combout = o_image2_1__dup0_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_1__dup0_7_),
	.cin(gnd),
	.combout(nx43052z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx43052z1_afeeder.lut_mask = 16'hFF00;
defparam nx43052z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N1
cycloneii_lcell_ff reg_out_o_image1_obuf_1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43052z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43052z1));

// atom is at LCCOMB_X18_Y32_N18
cycloneii_lcell_comb nx30938z1_afeeder(
// Equation(s):
// nx30938z1_afeeder_combout = o_image2_2__dup0_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_0_),
	.cin(gnd),
	.combout(nx30938z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx30938z1_afeeder.lut_mask = 16'hFF00;
defparam nx30938z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N19
cycloneii_lcell_ff reg_out_o_image1_obuf_2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx30938z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx30938z1));

// atom is at LCCOMB_X18_Y32_N28
cycloneii_lcell_comb nx31935z1_afeeder(
// Equation(s):
// nx31935z1_afeeder_combout = o_image2_2__dup0_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_1_),
	.cin(gnd),
	.combout(nx31935z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx31935z1_afeeder.lut_mask = 16'hFF00;
defparam nx31935z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X18_Y32_N29
cycloneii_lcell_ff reg_out_o_image1_obuf_2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx31935z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx31935z1));

// atom is at LCCOMB_X20_Y32_N10
cycloneii_lcell_comb nx32932z1_afeeder(
// Equation(s):
// nx32932z1_afeeder_combout = o_image2_2__dup0_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_2_),
	.cin(gnd),
	.combout(nx32932z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx32932z1_afeeder.lut_mask = 16'hFF00;
defparam nx32932z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X20_Y32_N11
cycloneii_lcell_ff reg_out_o_image1_obuf_2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx32932z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx32932z1));

// atom is at LCFF_X32_Y25_N5
cycloneii_lcell_ff reg_out_o_image1_obuf_2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_2__dup0_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx33929z1));

// atom is at LCCOMB_X32_Y25_N22
cycloneii_lcell_comb nx34926z1_afeeder(
// Equation(s):
// nx34926z1_afeeder_combout = o_image2_2__dup0_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_4_),
	.cin(gnd),
	.combout(nx34926z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx34926z1_afeeder.lut_mask = 16'hFF00;
defparam nx34926z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N23
cycloneii_lcell_ff reg_out_o_image1_obuf_2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx34926z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx34926z1));

// atom is at LCFF_X32_Y25_N1
cycloneii_lcell_ff reg_out_o_image1_obuf_2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_2__dup0_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx35923z1));

// atom is at LCCOMB_X32_Y25_N18
cycloneii_lcell_comb nx36920z1_afeeder(
// Equation(s):
// nx36920z1_afeeder_combout = o_image2_2__dup0_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_image2_2__dup0_6_),
	.cin(gnd),
	.combout(nx36920z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx36920z1_afeeder.lut_mask = 16'hFF00;
defparam nx36920z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X32_Y25_N19
cycloneii_lcell_ff reg_out_o_image1_obuf_2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36920z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx36920z1));

// atom is at LCFF_X32_Y25_N21
cycloneii_lcell_ff reg_out_o_image1_obuf_2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_image2_2__dup0_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(first_bubble),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx37917z1));

// atom is at PIN_B14
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

// atom is at PIN_J1
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

// atom is at PIN_F13
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

// atom is at PIN_AE11
cycloneii_io ix4657z43919(
	.datain(nx4657z1),
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
	.padio(o_column[0]));
// synopsys translate_off
defparam ix4657z43919.input_async_reset = "none";
defparam ix4657z43919.input_power_up = "low";
defparam ix4657z43919.input_register_mode = "none";
defparam ix4657z43919.input_sync_reset = "none";
defparam ix4657z43919.oe_async_reset = "none";
defparam ix4657z43919.oe_power_up = "low";
defparam ix4657z43919.oe_register_mode = "none";
defparam ix4657z43919.oe_sync_reset = "none";
defparam ix4657z43919.operation_mode = "output";
defparam ix4657z43919.output_async_reset = "none";
defparam ix4657z43919.output_power_up = "low";
defparam ix4657z43919.output_register_mode = "none";
defparam ix4657z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K19
cycloneii_io ix5654z43919(
	.datain(nx5654z1),
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
	.padio(o_column[1]));
// synopsys translate_off
defparam ix5654z43919.input_async_reset = "none";
defparam ix5654z43919.input_power_up = "low";
defparam ix5654z43919.input_register_mode = "none";
defparam ix5654z43919.input_sync_reset = "none";
defparam ix5654z43919.oe_async_reset = "none";
defparam ix5654z43919.oe_power_up = "low";
defparam ix5654z43919.oe_register_mode = "none";
defparam ix5654z43919.oe_sync_reset = "none";
defparam ix5654z43919.operation_mode = "output";
defparam ix5654z43919.output_async_reset = "none";
defparam ix5654z43919.output_power_up = "low";
defparam ix5654z43919.output_register_mode = "none";
defparam ix5654z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L10
cycloneii_io ix6651z43919(
	.datain(nx6651z1),
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
	.padio(o_column[2]));
// synopsys translate_off
defparam ix6651z43919.input_async_reset = "none";
defparam ix6651z43919.input_power_up = "low";
defparam ix6651z43919.input_register_mode = "none";
defparam ix6651z43919.input_sync_reset = "none";
defparam ix6651z43919.oe_async_reset = "none";
defparam ix6651z43919.oe_power_up = "low";
defparam ix6651z43919.oe_register_mode = "none";
defparam ix6651z43919.oe_sync_reset = "none";
defparam ix6651z43919.operation_mode = "output";
defparam ix6651z43919.output_async_reset = "none";
defparam ix6651z43919.output_power_up = "low";
defparam ix6651z43919.output_register_mode = "none";
defparam ix6651z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L6
cycloneii_io ix7648z43919(
	.datain(nx7648z1),
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
	.padio(o_column[3]));
// synopsys translate_off
defparam ix7648z43919.input_async_reset = "none";
defparam ix7648z43919.input_power_up = "low";
defparam ix7648z43919.input_register_mode = "none";
defparam ix7648z43919.input_sync_reset = "none";
defparam ix7648z43919.oe_async_reset = "none";
defparam ix7648z43919.oe_power_up = "low";
defparam ix7648z43919.oe_register_mode = "none";
defparam ix7648z43919.oe_sync_reset = "none";
defparam ix7648z43919.operation_mode = "output";
defparam ix7648z43919.output_async_reset = "none";
defparam ix7648z43919.output_power_up = "low";
defparam ix7648z43919.output_register_mode = "none";
defparam ix7648z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE10
cycloneii_io ix8645z43919(
	.datain(nx8645z1),
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
	.padio(o_column[4]));
// synopsys translate_off
defparam ix8645z43919.input_async_reset = "none";
defparam ix8645z43919.input_power_up = "low";
defparam ix8645z43919.input_register_mode = "none";
defparam ix8645z43919.input_sync_reset = "none";
defparam ix8645z43919.oe_async_reset = "none";
defparam ix8645z43919.oe_power_up = "low";
defparam ix8645z43919.oe_register_mode = "none";
defparam ix8645z43919.oe_sync_reset = "none";
defparam ix8645z43919.operation_mode = "output";
defparam ix8645z43919.output_async_reset = "none";
defparam ix8645z43919.output_power_up = "low";
defparam ix8645z43919.output_register_mode = "none";
defparam ix8645z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M4
cycloneii_io ix9642z43919(
	.datain(nx9642z1),
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
	.padio(o_column[5]));
// synopsys translate_off
defparam ix9642z43919.input_async_reset = "none";
defparam ix9642z43919.input_power_up = "low";
defparam ix9642z43919.input_register_mode = "none";
defparam ix9642z43919.input_sync_reset = "none";
defparam ix9642z43919.oe_async_reset = "none";
defparam ix9642z43919.oe_power_up = "low";
defparam ix9642z43919.oe_register_mode = "none";
defparam ix9642z43919.oe_sync_reset = "none";
defparam ix9642z43919.operation_mode = "output";
defparam ix9642z43919.output_async_reset = "none";
defparam ix9642z43919.output_power_up = "low";
defparam ix9642z43919.output_register_mode = "none";
defparam ix9642z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B10
cycloneii_io ix10639z43919(
	.datain(nx10639z1),
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
	.padio(o_column[6]));
// synopsys translate_off
defparam ix10639z43919.input_async_reset = "none";
defparam ix10639z43919.input_power_up = "low";
defparam ix10639z43919.input_register_mode = "none";
defparam ix10639z43919.input_sync_reset = "none";
defparam ix10639z43919.oe_async_reset = "none";
defparam ix10639z43919.oe_power_up = "low";
defparam ix10639z43919.oe_register_mode = "none";
defparam ix10639z43919.oe_sync_reset = "none";
defparam ix10639z43919.operation_mode = "output";
defparam ix10639z43919.output_async_reset = "none";
defparam ix10639z43919.output_power_up = "low";
defparam ix10639z43919.output_register_mode = "none";
defparam ix10639z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N9
cycloneii_io ix11636z43919(
	.datain(nx11636z1),
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
	.padio(o_column[7]));
// synopsys translate_off
defparam ix11636z43919.input_async_reset = "none";
defparam ix11636z43919.input_power_up = "low";
defparam ix11636z43919.input_register_mode = "none";
defparam ix11636z43919.input_sync_reset = "none";
defparam ix11636z43919.oe_async_reset = "none";
defparam ix11636z43919.oe_power_up = "low";
defparam ix11636z43919.oe_register_mode = "none";
defparam ix11636z43919.oe_sync_reset = "none";
defparam ix11636z43919.operation_mode = "output";
defparam ix11636z43919.output_async_reset = "none";
defparam ix11636z43919.output_power_up = "low";
defparam ix11636z43919.output_register_mode = "none";
defparam ix11636z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M5
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

// atom is at PIN_M2
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

// atom is at PIN_D10
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

// atom is at PIN_M3
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

// atom is at PIN_AF10
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

// atom is at PIN_AC12
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

// atom is at PIN_A10
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

// atom is at PIN_AB12
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

// atom is at PIN_P3
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

// atom is at PIN_E10
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

// atom is at PIN_K4
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

// atom is at PIN_V13
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

// atom is at PIN_K1
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

// atom is at PIN_K24
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

// atom is at PIN_J13
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

// atom is at PIN_V11
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

// atom is at PIN_B12
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

// atom is at PIN_A18
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

// atom is at PIN_G16
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

// atom is at PIN_H15
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

// atom is at PIN_H11
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

// atom is at PIN_F3
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

// atom is at PIN_D14
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

// atom is at PIN_A8
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

// atom is at PIN_F4
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

// atom is at PIN_C9
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

// atom is at PIN_D8
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

// atom is at PIN_K21
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

// atom is at PIN_AE13
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

// atom is at PIN_K2
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

// atom is at PIN_K18
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

// atom is at PIN_K23
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

// atom is at PIN_G15
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

// atom is at PIN_P9
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

// atom is at PIN_L7
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

// atom is at PIN_D11
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

// atom is at PIN_G14
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

// atom is at PIN_F16
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

// atom is at PIN_B8
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

// atom is at PIN_F7
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

// atom is at PIN_C16
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

// atom is at PIN_B15
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

// atom is at PIN_B16
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

// atom is at PIN_A9
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

// atom is at PIN_C25
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

// atom is at PIN_C8
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

// atom is at PIN_J14
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

// atom is at PIN_C24
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

// atom is at PIN_D1
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

// atom is at PIN_F10
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

// atom is at PIN_B9
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

// atom is at PIN_A17
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

// atom is at PIN_B17
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

// atom is at PIN_F15
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

// atom is at PIN_L4
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

// atom is at PIN_H16
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

// atom is at PIN_G13
cycloneii_io o_image2_obuf_0__0_(
	.datain(o_image2_0__dup0_0_),
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

// atom is at PIN_V14
cycloneii_io o_image2_obuf_0__1_(
	.datain(o_image2_0__dup0_1_),
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

// atom is at PIN_J25
cycloneii_io o_image2_obuf_0__2_(
	.datain(o_image2_0__dup0_2_),
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

// atom is at PIN_A14
cycloneii_io o_image2_obuf_0__3_(
	.datain(o_image2_0__dup0_3_),
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

// atom is at PIN_J10
cycloneii_io o_image2_obuf_0__4_(
	.datain(o_image2_0__dup0_4_),
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

// atom is at PIN_G12
cycloneii_io o_image2_obuf_0__5_(
	.datain(o_image2_0__dup0_5_),
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

// atom is at PIN_L3
cycloneii_io o_image2_obuf_0__6_(
	.datain(o_image2_0__dup0_6_),
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

// atom is at PIN_C17
cycloneii_io o_image2_obuf_0__7_(
	.datain(o_image2_0__dup0_7_),
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

// atom is at PIN_D15
cycloneii_io o_image2_obuf_1__0_(
	.datain(o_image2_1__dup0_0_),
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

// atom is at PIN_C12
cycloneii_io o_image2_obuf_1__1_(
	.datain(o_image2_1__dup0_1_),
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

// atom is at PIN_E15
cycloneii_io o_image2_obuf_1__2_(
	.datain(o_image2_1__dup0_2_),
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

// atom is at PIN_H12
cycloneii_io o_image2_obuf_1__3_(
	.datain(o_image2_1__dup0_3_),
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

// atom is at PIN_E1
cycloneii_io o_image2_obuf_1__4_(
	.datain(o_image2_1__dup0_4_),
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

// atom is at PIN_J2
cycloneii_io o_image2_obuf_1__5_(
	.datain(o_image2_1__dup0_5_),
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

// atom is at PIN_G11
cycloneii_io o_image2_obuf_1__6_(
	.datain(o_image2_1__dup0_6_),
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

// atom is at PIN_F11
cycloneii_io o_image2_obuf_1__7_(
	.datain(o_image2_1__dup0_7_),
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

// atom is at PIN_G10
cycloneii_io o_image2_obuf_2__0_(
	.datain(o_image2_2__dup0_0_),
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

// atom is at PIN_D9
cycloneii_io o_image2_obuf_2__1_(
	.datain(o_image2_2__dup0_1_),
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

// atom is at PIN_C10
cycloneii_io o_image2_obuf_2__2_(
	.datain(o_image2_2__dup0_2_),
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

// atom is at PIN_AD11
cycloneii_io o_image2_obuf_2__3_(
	.datain(o_image2_2__dup0_3_),
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

// atom is at PIN_F14
cycloneii_io o_image2_obuf_2__4_(
	.datain(o_image2_2__dup0_4_),
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

// atom is at PIN_D16
cycloneii_io o_image2_obuf_2__5_(
	.datain(o_image2_2__dup0_5_),
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

// atom is at PIN_C15
cycloneii_io o_image2_obuf_2__6_(
	.datain(o_image2_2__dup0_6_),
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

// atom is at PIN_L20
cycloneii_io o_image2_obuf_2__7_(
	.datain(o_image2_2__dup0_7_),
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

endmodule
