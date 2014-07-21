//
// Verilog description for cell flow, 
// Mon Jul 21 14:06:11 2014
//
// Precision RTL Synthesis, 2008a.47//


module flow ( debug_valid, debug_num_0, debug_num_1, debug_num_2, debug_num_3, 
              debug_num_4, debug_num_5, debug_num_6, debug_num_7, debug_num_8, 
              t1, t2, t3, b1, b2, b3, i1, i2, i_clock, i_reset, i_valid, i_mode, 
              i_row, o_dir, o_edge, o_valid, o_mode, o_row ) ;

    output debug_valid ;
    output [7:0]debug_num_0 ;
    output [7:0]debug_num_1 ;
    output [7:0]debug_num_2 ;
    output [7:0]debug_num_3 ;
    output [7:0]debug_num_4 ;
    output [7:0]debug_num_5 ;
    output [7:0]debug_num_6 ;
    output [7:0]debug_num_7 ;
    output [7:0]debug_num_8 ;
    input [7:0]t1 ;
    input [7:0]t2 ;
    input [7:0]t3 ;
    input [7:0]b1 ;
    input [7:0]b2 ;
    input [7:0]b3 ;
    input [7:0]i1 ;
    input [7:0]i2 ;
    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [1:0]i_mode ;
    input [7:0]i_row ;
    output [2:0]o_dir ;
    output o_edge ;
    output o_valid ;
    output [1:0]o_mode ;
    output [7:0]o_row ;

    wire o_valid_dup0;
    wire [9:0]p11;
    wire [9:0]p12;
    wire [10:1]p13;
    wire [11:0]p21;
    wire [11:0]p22;
    wire [10:0]p23;
    wire [11:0]p31;
    wire [10:0]p32;
    wire p35, p41, p45, p40;
    wire [11:0]p43;
    wire [11:0]p4s;
    wire [1:0]p5m;
    wire max_fwd, prev_edge;
    wire [11:0]prev_max;
    wire [3:0]state;
    wire [8:0]p11_0n0s2;
    wire [8:0]p12_0n0s2;
    wire [8:0]p13_0n0s2;
    wire nx32403z4, p21_3n0r3_9_, p21_3n0r3_8_, p21_3n0r3_7_, p21_3n0r3_6_, 
         p21_3n0r3_5_, p21_3n0r3_4_, p21_3n0r3_3_, p21_3n0r3_2_, p21_3n0r3_1_, 
         p21_3n0r3_0_;
    wire [11:2]p21_3n0r4;
    wire [11:1]rtlc3n189;
    wire p22_3n0r3_9_, p22_3n0r3_8_, p22_3n0r3_7_, p22_3n0r3_6_, p22_3n0r3_5_, 
         p22_3n0r3_4_, p22_3n0r3_3_, p22_3n0r3_2_, p22_3n0r3_1_, p22_3n0r3_0_;
    
    wire [11:2]p22_3n0r4;
    wire [11:1]rtlc3n195;
    wire nx45188z1, nx52975z2, nx47840z2, nx15811z1, nx20946z1, nx45613z1, 
         nx16808z1, nx21943z1, nx44616z1, nx17805z1, nx22940z1, nx43619z1, 
         nx18802z1, nx23937z1, nx42622z1, nx19799z1, nx24934z1, nx41625z1, 
         nx20796z1, nx25931z1, nx40628z1, nx21793z1, nx26928z1, nx39631z1, 
         nx22790z1, nx27925z1, nx38634z1, nx41013z1, nx46148z1, nx14253z1, 
         nx42010z1, nx47145z1, nx13256z1, nx40824z1, nx39827z1;
    wire [7:0]t1_int;
    wire [7:0]t2_int;
    wire [7:0]t3_int;
    wire [7:0]b1_int;
    wire [7:0]b2_int;
    wire [7:0]b3_int;
    wire [7:0]i1_int;
    wire [7:0]i2_int;
    wire i_clock_int, i_reset_int;
    wire [1:0]o_mode_dup0;
    wire GND, PWR, nx32403z3, nx26026z1, nx30361z1, nx30409z1, nx32403z2, 
         nx32403z1, nx25033z1, nx32403z5, nx31358z3, nx31358z1, nx26530z1, 
         nx31358z4, nx31358z5, nx31358z6, nx31358z7, nx31358z8, nx31358z9, 
         nx31358z2, nx26026z2, nx31358z10, nx16335z1, nx17332z1, nx18329z1, 
         nx19326z1, nx20323z1, nx21320z1, nx22317z1, nx23314z1, nx45767z1, 
         nx63886z1, nx62889z1, nx61892z1, nx28524z1, NOT_state_3_;
    wire [3215:0] xmplr_dummy ;




    sub_12_0 p4s_sub12_0 (.a ({p31[11],p31[10],p31[9],p31[8],p31[7],p31[6],
             p31[5],p31[4],p31[3],p31[2],p31[1],p31[0]}), .b ({xmplr_dummy [0],
             p32[10],p32[9],p32[8],p32[7],p32[6],p32[5],p32[4],p32[3],p32[2],
             p32[1],p32[0]}), .d ({p4s[11],p4s[10],p4s[9],p4s[8],p4s[7],p4s[6],
             p4s[5],p4s[4],p4s[3],p4s[2],p4s[1],p4s[0]})) ;
    gt_12_0 ix32403z30872 (.a ({p43[11],p43[10],p43[9],p43[8],p43[7],p43[6],
            p43[5],p43[4],p43[3],p43[2],p43[1],p43[0]}), .b ({prev_max[11],
            prev_max[10],prev_max[9],prev_max[8],prev_max[7],prev_max[6],
            prev_max[5],prev_max[4],prev_max[3],prev_max[2],prev_max[1],
            prev_max[0]}), .d (nx32403z4)) ;
    gt_12_1 ix45188z30868 (.a ({p22[11],p22[10],p22[9],p22[8],p22[7],p22[6],
            p22[5],p22[4],p22[3],p22[2],p22[1],p22[0]}), .b ({p21[11],p21[10],
            p21[9],p21[8],p21[7],p21[6],p21[5],p21[4],p21[3],p21[2],p21[1],
            p21[0]}), .d (nx45188z1)) ;
    add_11_0 ix52975z52630 (.a ({xmplr_dummy [1],xmplr_dummy [2],p21_3n0r3_9_,
             p21_3n0r3_8_,p21_3n0r3_7_,p21_3n0r3_6_,p21_3n0r3_5_,p21_3n0r3_4_,
             p21_3n0r3_3_,p21_3n0r3_2_,p21_3n0r3_1_}), .b ({p21_3n0r4[11],
             p21_3n0r4[10],p21_3n0r4[9],p21_3n0r4[8],p21_3n0r4[7],p21_3n0r4[6],
             p21_3n0r4[5],p21_3n0r4[4],p21_3n0r4[3],p21_3n0r4[2],p12[0]}), .d (
             rtlc3n189), .p_rtlcn822 (nx52975z2)) ;
    add_11_1 ix47840z52631 (.a ({xmplr_dummy [3],xmplr_dummy [4],p22_3n0r3_9_,
             p22_3n0r3_8_,p22_3n0r3_7_,p22_3n0r3_6_,p22_3n0r3_5_,p22_3n0r3_4_,
             p22_3n0r3_3_,p22_3n0r3_2_,p22_3n0r3_1_}), .b ({p22_3n0r4[11],
             p22_3n0r4[10],p22_3n0r4[9],p22_3n0r4[8],p22_3n0r4[7],p22_3n0r4[6],
             p22_3n0r4[5],p22_3n0r4[4],p22_3n0r4[3],p22_3n0r4[2],p11[0]}), .d (
             rtlc3n195), .p_rtlcn874 (nx47840z2)) ;
    add_8_0 p11_add8_0i1 (.a ({t1_int[7],t1_int[6],t1_int[5],t1_int[4],t1_int[3]
            ,t1_int[2],t1_int[1],t1_int[0]}), .b ({t2_int[7],t2_int[6],t2_int[5]
            ,t2_int[4],t2_int[3],t2_int[2],t2_int[1],t2_int[0]}), .d ({
            p11_0n0s2[7],p11_0n0s2[6],p11_0n0s2[5],p11_0n0s2[4],p11_0n0s2[3],
            p11_0n0s2[2],p11_0n0s2[1],p11_0n0s2[0]}), .cout (p11_0n0s2[8])) ;
    add_9_0 p11_add9_1 (.a ({p11_0n0s2[8],p11_0n0s2[7],p11_0n0s2[6],p11_0n0s2[5]
            ,p11_0n0s2[4],p11_0n0s2[3],p11_0n0s2[2],p11_0n0s2[1],p11_0n0s2[0]})
            , .b ({xmplr_dummy [5],t3_int[7],t3_int[6],t3_int[5],t3_int[4],
            t3_int[3],t3_int[2],t3_int[1],t3_int[0]}), .d ({p11[8],p11[7],p11[6]
            ,p11[5],p11[4],p11[3],p11[2],p11[1],p11[0]}), .cout (p11[9])) ;
    add_8_1 p12_add8_0i2 (.a ({b1_int[7],b1_int[6],b1_int[5],b1_int[4],b1_int[3]
            ,b1_int[2],b1_int[1],b1_int[0]}), .b ({b2_int[7],b2_int[6],b2_int[5]
            ,b2_int[4],b2_int[3],b2_int[2],b2_int[1],b2_int[0]}), .d ({
            p12_0n0s2[7],p12_0n0s2[6],p12_0n0s2[5],p12_0n0s2[4],p12_0n0s2[3],
            p12_0n0s2[2],p12_0n0s2[1],p12_0n0s2[0]}), .cout (p12_0n0s2[8])) ;
    add_9_1 p12_add9_2 (.a ({p12_0n0s2[8],p12_0n0s2[7],p12_0n0s2[6],p12_0n0s2[5]
            ,p12_0n0s2[4],p12_0n0s2[3],p12_0n0s2[2],p12_0n0s2[1],p12_0n0s2[0]})
            , .b ({xmplr_dummy [6],b3_int[7],b3_int[6],b3_int[5],b3_int[4],
            b3_int[3],b3_int[2],b3_int[1],b3_int[0]}), .d ({p12[8],p12[7],p12[6]
            ,p12[5],p12[4],p12[3],p12[2],p12[1],p12[0]}), .cout (p12[9])) ;
    sub_10_0 p21_sub10_3i3 (.a ({p11[9],p11[8],p11[7],p11[6],p11[5],p11[4],
             p11[3],p11[2],p11[1],p11[0]}), .b ({p12[9],p12[8],p12[7],p12[6],
             p12[5],p12[4],p12[3],p12[2],p12[1],p12[0]}), .d ({p21_3n0r3_9_,
             p21_3n0r3_8_,p21_3n0r3_7_,p21_3n0r3_6_,p21_3n0r3_5_,p21_3n0r3_4_,
             p21_3n0r3_3_,p21_3n0r3_2_,p21_3n0r3_1_,p21_3n0r3_0_}), .cout (
             nx52975z2)) ;
    sub_10_1 p22_sub10_3i4 (.a ({p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],
             p12[3],p12[2],p12[1],p12[0]}), .b ({p11[9],p11[8],p11[7],p11[6],
             p11[5],p11[4],p11[3],p11[2],p11[1],p11[0]}), .d ({p22_3n0r3_9_,
             p22_3n0r3_8_,p22_3n0r3_7_,p22_3n0r3_6_,p22_3n0r3_5_,p22_3n0r3_4_,
             p22_3n0r3_3_,p22_3n0r3_2_,p22_3n0r3_1_,p22_3n0r3_0_}), .cout (
             nx47840z2)) ;
    add_8_2 p13_add8_0i3 (.a ({i1_int[7],i1_int[6],i1_int[5],i1_int[4],i1_int[3]
            ,i1_int[2],i1_int[1],i1_int[0]}), .b ({i2_int[7],i2_int[6],i2_int[5]
            ,i2_int[4],i2_int[3],i2_int[2],i2_int[1],i2_int[0]}), .d ({
            p13_0n0s2[7],p13_0n0s2[6],p13_0n0s2[5],p13_0n0s2[4],p13_0n0s2[3],
            p13_0n0s2[2],p13_0n0s2[1],p13_0n0s2[0]}), .cout (p13_0n0s2[8])) ;
    add_9_2 p13_add9_3 (.a ({xmplr_dummy [7],p13_0n0s2[8],p13_0n0s2[7],
            p13_0n0s2[6],p13_0n0s2[5],p13_0n0s2[4],p13_0n0s2[3],p13_0n0s2[2],
            p13_0n0s2[1]}), .b ({xmplr_dummy [8],xmplr_dummy [9],
            xmplr_dummy [10],xmplr_dummy [11],xmplr_dummy [12],xmplr_dummy [13],
            xmplr_dummy [14],xmplr_dummy [15],p13_0n0s2[0]}), .d ({p13[9],p13[8]
            ,p13[7],p13[6],p13[5],p13[4],p13[3],p13[2],p13[1]}), .cout (p13[10])
            ) ;
    sub_10_2 p21_sub11_3i1 (.a ({p11[9],p11[8],p11[7],p11[6],p11[5],p11[4],
             p11[3],p11[2],p11[1],p11[0]}), .b ({xmplr_dummy [16],p12[9],p12[8],
             p12[7],p12[6],p12[5],p12[4],p12[3],p12[2],p12[1]}), .d ({
             p21_3n0r4[11],p21_3n0r4[10],p21_3n0r4[9],p21_3n0r4[8],p21_3n0r4[7],
             p21_3n0r4[6],p21_3n0r4[5],p21_3n0r4[4],p21_3n0r4[3],p21_3n0r4[2]})
             , .p_p12_0_ (p12[0])) ;
    sub_10_3 p22_sub11_3i2 (.a ({p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],
             p12[3],p12[2],p12[1],p12[0]}), .b ({xmplr_dummy [17],p11[9],p11[8],
             p11[7],p11[6],p11[5],p11[4],p11[3],p11[2],p11[1]}), .d ({
             p22_3n0r4[11],p22_3n0r4[10],p22_3n0r4[9],p22_3n0r4[8],p22_3n0r4[7],
             p22_3n0r4[6],p22_3n0r4[5],p22_3n0r4[4],p22_3n0r4[3],p22_3n0r4[2]})
             , .p_p11_0_ (p11[0])) ;
    assign GND = 0 ;
    assign PWR = 1 ;
    assign nx25033z1 = ~nx45188z1 ;
    assign state[0] = ~nx28524z1 ;
    assign NOT_state_3_ = ~state[3] ;
    cycloneii_io t3_ibuf_7_ (.combout (t3_int[7]), .padio (t3[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_7_.operation_mode = "input";
                 
                 defparam t3_ibuf_7_.output_register_mode = "none";
                 
                 defparam t3_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_7_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_7_.input_register_mode = "none";
    cycloneii_io t3_ibuf_6_ (.combout (t3_int[6]), .padio (t3[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_6_.operation_mode = "input";
                 
                 defparam t3_ibuf_6_.output_register_mode = "none";
                 
                 defparam t3_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_6_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_6_.input_register_mode = "none";
    cycloneii_io t3_ibuf_5_ (.combout (t3_int[5]), .padio (t3[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_5_.operation_mode = "input";
                 
                 defparam t3_ibuf_5_.output_register_mode = "none";
                 
                 defparam t3_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_5_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_5_.input_register_mode = "none";
    cycloneii_io t3_ibuf_4_ (.combout (t3_int[4]), .padio (t3[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_4_.operation_mode = "input";
                 
                 defparam t3_ibuf_4_.output_register_mode = "none";
                 
                 defparam t3_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_4_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_4_.input_register_mode = "none";
    cycloneii_io t3_ibuf_3_ (.combout (t3_int[3]), .padio (t3[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_3_.operation_mode = "input";
                 
                 defparam t3_ibuf_3_.output_register_mode = "none";
                 
                 defparam t3_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_3_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_3_.input_register_mode = "none";
    cycloneii_io t3_ibuf_2_ (.combout (t3_int[2]), .padio (t3[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_2_.operation_mode = "input";
                 
                 defparam t3_ibuf_2_.output_register_mode = "none";
                 
                 defparam t3_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_2_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_2_.input_register_mode = "none";
    cycloneii_io t3_ibuf_1_ (.combout (t3_int[1]), .padio (t3[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_1_.operation_mode = "input";
                 
                 defparam t3_ibuf_1_.output_register_mode = "none";
                 
                 defparam t3_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_1_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_1_.input_register_mode = "none";
    cycloneii_io t3_ibuf_0_ (.combout (t3_int[0]), .padio (t3[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t3_ibuf_0_.operation_mode = "input";
                 
                 defparam t3_ibuf_0_.output_register_mode = "none";
                 
                 defparam t3_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam t3_ibuf_0_.oe_register_mode = "none";
                 
                 defparam t3_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam t3_ibuf_0_.input_register_mode = "none";
    cycloneii_io t2_ibuf_7_ (.combout (t2_int[7]), .padio (t2[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_7_.operation_mode = "input";
                 
                 defparam t2_ibuf_7_.output_register_mode = "none";
                 
                 defparam t2_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_7_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_7_.input_register_mode = "none";
    cycloneii_io t2_ibuf_6_ (.combout (t2_int[6]), .padio (t2[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_6_.operation_mode = "input";
                 
                 defparam t2_ibuf_6_.output_register_mode = "none";
                 
                 defparam t2_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_6_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_6_.input_register_mode = "none";
    cycloneii_io t2_ibuf_5_ (.combout (t2_int[5]), .padio (t2[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_5_.operation_mode = "input";
                 
                 defparam t2_ibuf_5_.output_register_mode = "none";
                 
                 defparam t2_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_5_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_5_.input_register_mode = "none";
    cycloneii_io t2_ibuf_4_ (.combout (t2_int[4]), .padio (t2[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_4_.operation_mode = "input";
                 
                 defparam t2_ibuf_4_.output_register_mode = "none";
                 
                 defparam t2_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_4_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_4_.input_register_mode = "none";
    cycloneii_io t2_ibuf_3_ (.combout (t2_int[3]), .padio (t2[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_3_.operation_mode = "input";
                 
                 defparam t2_ibuf_3_.output_register_mode = "none";
                 
                 defparam t2_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_3_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_3_.input_register_mode = "none";
    cycloneii_io t2_ibuf_2_ (.combout (t2_int[2]), .padio (t2[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_2_.operation_mode = "input";
                 
                 defparam t2_ibuf_2_.output_register_mode = "none";
                 
                 defparam t2_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_2_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_2_.input_register_mode = "none";
    cycloneii_io t2_ibuf_1_ (.combout (t2_int[1]), .padio (t2[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_1_.operation_mode = "input";
                 
                 defparam t2_ibuf_1_.output_register_mode = "none";
                 
                 defparam t2_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_1_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_1_.input_register_mode = "none";
    cycloneii_io t2_ibuf_0_ (.combout (t2_int[0]), .padio (t2[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t2_ibuf_0_.operation_mode = "input";
                 
                 defparam t2_ibuf_0_.output_register_mode = "none";
                 
                 defparam t2_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam t2_ibuf_0_.oe_register_mode = "none";
                 
                 defparam t2_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam t2_ibuf_0_.input_register_mode = "none";
    cycloneii_io t1_ibuf_7_ (.combout (t1_int[7]), .padio (t1[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_7_.operation_mode = "input";
                 
                 defparam t1_ibuf_7_.output_register_mode = "none";
                 
                 defparam t1_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_7_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_7_.input_register_mode = "none";
    cycloneii_io t1_ibuf_6_ (.combout (t1_int[6]), .padio (t1[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_6_.operation_mode = "input";
                 
                 defparam t1_ibuf_6_.output_register_mode = "none";
                 
                 defparam t1_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_6_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_6_.input_register_mode = "none";
    cycloneii_io t1_ibuf_5_ (.combout (t1_int[5]), .padio (t1[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_5_.operation_mode = "input";
                 
                 defparam t1_ibuf_5_.output_register_mode = "none";
                 
                 defparam t1_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_5_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_5_.input_register_mode = "none";
    cycloneii_io t1_ibuf_4_ (.combout (t1_int[4]), .padio (t1[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_4_.operation_mode = "input";
                 
                 defparam t1_ibuf_4_.output_register_mode = "none";
                 
                 defparam t1_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_4_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_4_.input_register_mode = "none";
    cycloneii_io t1_ibuf_3_ (.combout (t1_int[3]), .padio (t1[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_3_.operation_mode = "input";
                 
                 defparam t1_ibuf_3_.output_register_mode = "none";
                 
                 defparam t1_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_3_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_3_.input_register_mode = "none";
    cycloneii_io t1_ibuf_2_ (.combout (t1_int[2]), .padio (t1[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_2_.operation_mode = "input";
                 
                 defparam t1_ibuf_2_.output_register_mode = "none";
                 
                 defparam t1_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_2_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_2_.input_register_mode = "none";
    cycloneii_io t1_ibuf_1_ (.combout (t1_int[1]), .padio (t1[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_1_.operation_mode = "input";
                 
                 defparam t1_ibuf_1_.output_register_mode = "none";
                 
                 defparam t1_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_1_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_1_.input_register_mode = "none";
    cycloneii_io t1_ibuf_0_ (.combout (t1_int[0]), .padio (t1[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam t1_ibuf_0_.operation_mode = "input";
                 
                 defparam t1_ibuf_0_.output_register_mode = "none";
                 
                 defparam t1_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam t1_ibuf_0_.oe_register_mode = "none";
                 
                 defparam t1_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam t1_ibuf_0_.input_register_mode = "none";
    cycloneii_lcell_ff reg_state_3_ (.regout (state[3]), .datain (state[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26530z1), .aclr (1'b0)
                       , .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_2_ (.regout (state[2]), .datain (state[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26530z1), .aclr (1'b0)
                       , .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_1_ (.regout (state[1]), .datain (state[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26530z1), .aclr (1'b0)
                       , .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_0_ (.regout (nx28524z1), .datain (NOT_state_3_)
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx26530z1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_9_ (.regout (prev_max[9]), .datain (p43[9])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_8_ (.regout (prev_max[8]), .datain (p43[8])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_7_ (.regout (prev_max[7]), .datain (p43[7])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_6_ (.regout (prev_max[6]), .datain (p43[6])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_5_ (.regout (prev_max[5]), .datain (p43[5])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_4_ (.regout (prev_max[4]), .datain (p43[4])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_3_ (.regout (prev_max[3]), .datain (p43[3])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_2_ (.regout (prev_max[2]), .datain (p43[2])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_11_ (.regout (prev_max[11]), .datain (
                       p43[11]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx31358z1), .aclr (1'b0), .sclr (nx30361z1), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_prev_max_10_ (.regout (prev_max[10]), .datain (
                       p43[10]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx31358z1), .aclr (1'b0), .sclr (nx30361z1), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_prev_max_1_ (.regout (prev_max[1]), .datain (p43[1])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_0_ (.regout (prev_max[0]), .datain (p43[0])
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (
                       1'b0), .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_edge (.regout (prev_edge), .datain (p41), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (1'b0)
                       , .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p45 (.regout (p45), .datain (p35), .sdata (1'b0), .clk (
                       i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_p43_9_ (.regout (p43[9]), .datain (p4s[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_8_ (.regout (p43[8]), .datain (p4s[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_7_ (.regout (p43[7]), .datain (p4s[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_6_ (.regout (p43[6]), .datain (p4s[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_5_ (.regout (p43[5]), .datain (p4s[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_4_ (.regout (p43[4]), .datain (p4s[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_3_ (.regout (p43[3]), .datain (p4s[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_2_ (.regout (p43[2]), .datain (p4s[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_11_ (.regout (p43[11]), .datain (p4s[11]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_10_ (.regout (p43[10]), .datain (p4s[10]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_1_ (.regout (p43[1]), .datain (p4s[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_0_ (.regout (p43[0]), .datain (p4s[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p41 (.regout (p41), .datain (nx26026z1), .sdata (1'b0
                       ), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p35 (.regout (p35), .datain (nx25033z1), .sdata (1'b0
                       ), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_9_ (.regout (p32[9]), .datain (p23[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_8_ (.regout (p32[8]), .datain (p23[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_7_ (.regout (p32[7]), .datain (p23[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_6_ (.regout (p32[6]), .datain (p23[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_5_ (.regout (p32[5]), .datain (p23[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_4_ (.regout (p32[4]), .datain (p23[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_3_ (.regout (p32[3]), .datain (p23[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_2_ (.regout (p32[2]), .datain (p23[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_10_ (.regout (p32[10]), .datain (p23[10]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_1_ (.regout (p32[1]), .datain (p23[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_0_ (.regout (p32[0]), .datain (p23[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p31_9_ (.regout (p31[9]), .datain (p21[9]), .sdata (
                       p22[9]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_8_ (.regout (p31[8]), .datain (p21[8]), .sdata (
                       p22[8]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_7_ (.regout (p31[7]), .datain (p21[7]), .sdata (
                       p22[7]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_6_ (.regout (p31[6]), .datain (p21[6]), .sdata (
                       p22[6]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_5_ (.regout (p31[5]), .datain (p21[5]), .sdata (
                       p22[5]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_4_ (.regout (p31[4]), .datain (p21[4]), .sdata (
                       p22[4]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_3_ (.regout (p31[3]), .datain (p21[3]), .sdata (
                       p22[3]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_2_ (.regout (p31[2]), .datain (p21[2]), .sdata (
                       p22[2]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_11_ (.regout (p31[11]), .datain (p21[11]), .sdata (
                       p22[11]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_10_ (.regout (p31[10]), .datain (p21[10]), .sdata (
                       p22[10]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_1_ (.regout (p31[1]), .datain (p21[1]), .sdata (
                       p22[1]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_0_ (.regout (p31[0]), .datain (p21[0]), .sdata (
                       p22[0]), .clk (i_clock_int), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p23_9_ (.regout (p23[9]), .datain (p13[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_8_ (.regout (p23[8]), .datain (p13[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_7_ (.regout (p23[7]), .datain (p13[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_6_ (.regout (p23[6]), .datain (p13[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_5_ (.regout (p23[5]), .datain (p13[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_4_ (.regout (p23[4]), .datain (p13[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_3_ (.regout (p23[3]), .datain (p13[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_2_ (.regout (p23[2]), .datain (p13[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_10_ (.regout (p23[10]), .datain (p13[10]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_1_ (.regout (p23[1]), .datain (p13[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_0_ (.regout (p23[0]), .datain (p13_0n0s2[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_9_ (.regout (p22[9]), .datain (rtlc3n195[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_8_ (.regout (p22[8]), .datain (rtlc3n195[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_7_ (.regout (p22[7]), .datain (rtlc3n195[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_6_ (.regout (p22[6]), .datain (rtlc3n195[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_5_ (.regout (p22[5]), .datain (rtlc3n195[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_4_ (.regout (p22[4]), .datain (rtlc3n195[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_3_ (.regout (p22[3]), .datain (rtlc3n195[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_2_ (.regout (p22[2]), .datain (rtlc3n195[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_11_ (.regout (p22[11]), .datain (rtlc3n195[11]), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_10_ (.regout (p22[10]), .datain (rtlc3n195[10]), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_1_ (.regout (p22[1]), .datain (rtlc3n195[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_0_ (.regout (p22[0]), .datain (p22_3n0r3_0_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_9_ (.regout (p21[9]), .datain (rtlc3n189[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_8_ (.regout (p21[8]), .datain (rtlc3n189[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_7_ (.regout (p21[7]), .datain (rtlc3n189[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_6_ (.regout (p21[6]), .datain (rtlc3n189[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_5_ (.regout (p21[5]), .datain (rtlc3n189[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_4_ (.regout (p21[4]), .datain (rtlc3n189[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_3_ (.regout (p21[3]), .datain (rtlc3n189[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_2_ (.regout (p21[2]), .datain (rtlc3n189[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_11_ (.regout (p21[11]), .datain (rtlc3n189[11]), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_10_ (.regout (p21[10]), .datain (rtlc3n189[10]), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_1_ (.regout (p21[1]), .datain (rtlc3n189[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_0_ (.regout (p21[0]), .datain (p21_3n0r3_0_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_7_ (.regout (nx23314z1), .datain (
                       nx45613z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_6_ (.regout (nx22317z1), .datain (
                       nx44616z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_5_ (.regout (nx21320z1), .datain (
                       nx43619z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_4_ (.regout (nx20323z1), .datain (
                       nx42622z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_3_ (.regout (nx19326z1), .datain (
                       nx41625z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_2_ (.regout (nx18329z1), .datain (
                       nx40628z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_1_ (.regout (nx17332z1), .datain (
                       nx39631z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_0_ (.regout (nx16335z1), .datain (
                       nx38634z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_edge_obuf (.regout (nx45767z1), .datain (
                       prev_edge), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_dir_obuf_2_ (.regout (nx61892z1), .datain (
                       nx32403z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx32403z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_dir_obuf_1_ (.regout (nx62889z1), .datain (
                       nx32403z5), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx32403z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_dir_obuf_0_ (.regout (nx63886z1), .datain (
                       nx30409z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx32403z3), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_valid (.regout (o_valid_dup0), .datain (state[3]), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_fwd (.regout (max_fwd), .datain (p45), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx31358z1), .aclr (1'b0)
                       , .sclr (nx30361z1), .sload (1'b0)) ;
    cycloneii_io o_valid_obuf (.padio (o_valid), .datain (o_valid_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_valid_obuf.operation_mode = "output";
                 
                 defparam o_valid_obuf.output_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_valid_obuf.oe_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_valid_obuf.input_register_mode = "none";
    cycloneii_io o_mode_obuf_1_ (.padio (o_mode[1]), .datain (o_mode_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_1_.operation_mode = "output";
                 
                 defparam o_mode_obuf_1_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.input_register_mode = "none";
    cycloneii_io o_mode_obuf_0_ (.padio (o_mode[0]), .datain (o_mode_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_0_.operation_mode = "output";
                 
                 defparam o_mode_obuf_0_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.input_register_mode = "none";
    cycloneii_io ix61892z43919 (.padio (o_dir[2]), .datain (nx61892z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix61892z43919.operation_mode = "output";
                 
                 defparam ix61892z43919.output_register_mode = "none";
                 
                 defparam ix61892z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix61892z43919.oe_register_mode = "none";
                 
                 defparam ix61892z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix61892z43919.input_register_mode = "none";
    cycloneii_io ix62889z43919 (.padio (o_dir[1]), .datain (nx62889z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62889z43919.operation_mode = "output";
                 
                 defparam ix62889z43919.output_register_mode = "none";
                 
                 defparam ix62889z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62889z43919.oe_register_mode = "none";
                 
                 defparam ix62889z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62889z43919.input_register_mode = "none";
    cycloneii_io ix63886z43919 (.padio (o_dir[0]), .datain (nx63886z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63886z43919.operation_mode = "output";
                 
                 defparam ix63886z43919.output_register_mode = "none";
                 
                 defparam ix63886z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63886z43919.oe_register_mode = "none";
                 
                 defparam ix63886z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63886z43919.input_register_mode = "none";
    cycloneii_io ix45767z43919 (.padio (o_edge), .datain (nx45767z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45767z43919.operation_mode = "output";
                 
                 defparam ix45767z43919.output_register_mode = "none";
                 
                 defparam ix45767z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45767z43919.oe_register_mode = "none";
                 
                 defparam ix45767z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45767z43919.input_register_mode = "none";
    cycloneii_io ix23314z43919 (.padio (o_row[7]), .datain (nx23314z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix23314z43919.operation_mode = "output";
                 
                 defparam ix23314z43919.output_register_mode = "none";
                 
                 defparam ix23314z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix23314z43919.oe_register_mode = "none";
                 
                 defparam ix23314z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix23314z43919.input_register_mode = "none";
    cycloneii_io ix22317z43919 (.padio (o_row[6]), .datain (nx22317z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix22317z43919.operation_mode = "output";
                 
                 defparam ix22317z43919.output_register_mode = "none";
                 
                 defparam ix22317z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix22317z43919.oe_register_mode = "none";
                 
                 defparam ix22317z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix22317z43919.input_register_mode = "none";
    cycloneii_io ix21320z43919 (.padio (o_row[5]), .datain (nx21320z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21320z43919.operation_mode = "output";
                 
                 defparam ix21320z43919.output_register_mode = "none";
                 
                 defparam ix21320z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21320z43919.oe_register_mode = "none";
                 
                 defparam ix21320z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21320z43919.input_register_mode = "none";
    cycloneii_io ix20323z43919 (.padio (o_row[4]), .datain (nx20323z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix20323z43919.operation_mode = "output";
                 
                 defparam ix20323z43919.output_register_mode = "none";
                 
                 defparam ix20323z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix20323z43919.oe_register_mode = "none";
                 
                 defparam ix20323z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix20323z43919.input_register_mode = "none";
    cycloneii_io ix19326z43919 (.padio (o_row[3]), .datain (nx19326z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix19326z43919.operation_mode = "output";
                 
                 defparam ix19326z43919.output_register_mode = "none";
                 
                 defparam ix19326z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix19326z43919.oe_register_mode = "none";
                 
                 defparam ix19326z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix19326z43919.input_register_mode = "none";
    cycloneii_lcell_ff ix260_reg_p40 (.regout (p40), .datain (nx39827z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix260_reg_p30 (.regout (nx39827z1), .datain (nx40824z1), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p5m_1_ (.regout (p5m[1]), .datain (nx14253z1), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p5m_0_ (.regout (p5m[0]), .datain (nx13256z1), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p4m_1_ (.regout (nx14253z1), .datain (nx46148z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p4m_0_ (.regout (nx13256z1), .datain (nx47145z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p3m_1_ (.regout (nx46148z1), .datain (nx41013z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p3m_0_ (.regout (nx47145z1), .datain (nx42010z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io ix18329z43919 (.padio (o_row[2]), .datain (nx18329z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix18329z43919.operation_mode = "output";
                 
                 defparam ix18329z43919.output_register_mode = "none";
                 
                 defparam ix18329z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix18329z43919.oe_register_mode = "none";
                 
                 defparam ix18329z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix18329z43919.input_register_mode = "none";
    cycloneii_lcell_ff ix258_reg_p4r_7_ (.regout (nx45613z1), .datain (nx20946z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_6_ (.regout (nx44616z1), .datain (nx21943z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_5_ (.regout (nx43619z1), .datain (nx22940z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_4_ (.regout (nx42622z1), .datain (nx23937z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_3_ (.regout (nx41625z1), .datain (nx24934z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_2_ (.regout (nx40628z1), .datain (nx25931z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_1_ (.regout (nx39631z1), .datain (nx26928z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_0_ (.regout (nx38634z1), .datain (nx27925z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_7_ (.regout (nx20946z1), .datain (nx15811z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_6_ (.regout (nx21943z1), .datain (nx16808z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_5_ (.regout (nx22940z1), .datain (nx17805z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_4_ (.regout (nx23937z1), .datain (nx18802z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_3_ (.regout (nx24934z1), .datain (nx19799z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_2_ (.regout (nx25931z1), .datain (nx20796z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_1_ (.regout (nx26928z1), .datain (nx21793z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_0_ (.regout (nx27925z1), .datain (nx22790z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io ix17332z43919 (.padio (o_row[1]), .datain (nx17332z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix17332z43919.operation_mode = "output";
                 
                 defparam ix17332z43919.output_register_mode = "none";
                 
                 defparam ix17332z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix17332z43919.oe_register_mode = "none";
                 
                 defparam ix17332z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix17332z43919.input_register_mode = "none";
    cycloneii_io ix16335z43919 (.padio (o_row[0]), .datain (nx16335z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix16335z43919.operation_mode = "output";
                 
                 defparam ix16335z43919.output_register_mode = "none";
                 
                 defparam ix16335z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix16335z43919.oe_register_mode = "none";
                 
                 defparam ix16335z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix16335z43919.input_register_mode = "none";
    cycloneii_io ix6038z43919 (.padio (debug_valid), .datain (GND), .oe (GND), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam ix6038z43919.operation_mode = "output";
                 
                 defparam ix6038z43919.output_register_mode = "none";
                 
                 defparam ix6038z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix6038z43919.oe_register_mode = "none";
                 
                 defparam ix6038z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix6038z43919.input_register_mode = "none";
    cycloneii_io i_valid_ibuf (.regout (nx40824z1), .padio (i_valid), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_valid_ibuf.operation_mode = "input";
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_valid_ibuf.input_register_mode = "register";
    cycloneii_io i_row_ibuf_7_ (.regout (nx15811z1), .padio (i_row[7]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_7_.operation_mode = "input";
                 defparam i_row_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_7_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_7_.oe_register_mode = "none";
                 defparam i_row_ibuf_7_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_7_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_6_ (.regout (nx16808z1), .padio (i_row[6]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_6_.operation_mode = "input";
                 defparam i_row_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_6_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_6_.oe_register_mode = "none";
                 defparam i_row_ibuf_6_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_6_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_5_ (.regout (nx17805z1), .padio (i_row[5]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_5_.operation_mode = "input";
                 defparam i_row_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_5_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_5_.oe_register_mode = "none";
                 defparam i_row_ibuf_5_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_5_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_4_ (.regout (nx18802z1), .padio (i_row[4]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_4_.operation_mode = "input";
                 defparam i_row_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_4_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_4_.oe_register_mode = "none";
                 defparam i_row_ibuf_4_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_4_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_3_ (.regout (nx19799z1), .padio (i_row[3]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_3_.operation_mode = "input";
                 defparam i_row_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_3_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_3_.oe_register_mode = "none";
                 defparam i_row_ibuf_3_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_3_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_2_ (.regout (nx20796z1), .padio (i_row[2]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_2_.operation_mode = "input";
                 defparam i_row_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_2_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_2_.oe_register_mode = "none";
                 defparam i_row_ibuf_2_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_2_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_1_ (.regout (nx21793z1), .padio (i_row[1]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_1_.operation_mode = "input";
                 defparam i_row_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_1_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_1_.oe_register_mode = "none";
                 defparam i_row_ibuf_1_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_1_.input_register_mode = "register";
    cycloneii_io i_row_ibuf_0_ (.regout (nx22790z1), .padio (i_row[0]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_row_ibuf_0_.operation_mode = "input";
                 defparam i_row_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_row_ibuf_0_.tie_off_output_clock_enable = "false";
                 defparam i_row_ibuf_0_.oe_register_mode = "none";
                 defparam i_row_ibuf_0_.tie_off_oe_clock_enable = "false";
                 defparam i_row_ibuf_0_.input_register_mode = "register";
    cycloneii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_reset_ibuf.operation_mode = "input";
                 
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_reset_ibuf.input_register_mode = "none";
    cycloneii_io i_mode_ibuf_1_ (.regout (nx41013z1), .padio (i_mode[1]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_mode_ibuf_1_.operation_mode = "input";
                 defparam i_mode_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_mode_ibuf_1_.tie_off_output_clock_enable = "false";
                 defparam i_mode_ibuf_1_.oe_register_mode = "none";
                 defparam i_mode_ibuf_1_.tie_off_oe_clock_enable = "false";
                 defparam i_mode_ibuf_1_.input_register_mode = "register";
    cycloneii_io i_mode_ibuf_0_ (.regout (nx42010z1), .padio (i_mode[0]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 i_clock_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam i_mode_ibuf_0_.operation_mode = "input";
                 defparam i_mode_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_mode_ibuf_0_.tie_off_output_clock_enable = "false";
                 defparam i_mode_ibuf_0_.oe_register_mode = "none";
                 defparam i_mode_ibuf_0_.tie_off_oe_clock_enable = "false";
                 defparam i_mode_ibuf_0_.input_register_mode = "register";
    cycloneii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_clock_ibuf.operation_mode = "input";
                 
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_clock_ibuf.input_register_mode = "none";
    cycloneii_io i2_ibuf_7_ (.combout (i2_int[7]), .padio (i2[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_7_.operation_mode = "input";
                 
                 defparam i2_ibuf_7_.output_register_mode = "none";
                 
                 defparam i2_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_7_.input_register_mode = "none";
    cycloneii_io i2_ibuf_6_ (.combout (i2_int[6]), .padio (i2[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_6_.operation_mode = "input";
                 
                 defparam i2_ibuf_6_.output_register_mode = "none";
                 
                 defparam i2_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_6_.input_register_mode = "none";
    cycloneii_io i2_ibuf_5_ (.combout (i2_int[5]), .padio (i2[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_5_.operation_mode = "input";
                 
                 defparam i2_ibuf_5_.output_register_mode = "none";
                 
                 defparam i2_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_5_.input_register_mode = "none";
    cycloneii_io i2_ibuf_4_ (.combout (i2_int[4]), .padio (i2[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_4_.operation_mode = "input";
                 
                 defparam i2_ibuf_4_.output_register_mode = "none";
                 
                 defparam i2_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_4_.input_register_mode = "none";
    cycloneii_io i2_ibuf_3_ (.combout (i2_int[3]), .padio (i2[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_3_.operation_mode = "input";
                 
                 defparam i2_ibuf_3_.output_register_mode = "none";
                 
                 defparam i2_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_3_.input_register_mode = "none";
    cycloneii_io i2_ibuf_2_ (.combout (i2_int[2]), .padio (i2[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_2_.operation_mode = "input";
                 
                 defparam i2_ibuf_2_.output_register_mode = "none";
                 
                 defparam i2_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_2_.input_register_mode = "none";
    cycloneii_io i2_ibuf_1_ (.combout (i2_int[1]), .padio (i2[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_1_.operation_mode = "input";
                 
                 defparam i2_ibuf_1_.output_register_mode = "none";
                 
                 defparam i2_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_1_.input_register_mode = "none";
    cycloneii_io i2_ibuf_0_ (.combout (i2_int[0]), .padio (i2[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2_ibuf_0_.operation_mode = "input";
                 
                 defparam i2_ibuf_0_.output_register_mode = "none";
                 
                 defparam i2_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i2_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i2_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i2_ibuf_0_.input_register_mode = "none";
    cycloneii_io i1_ibuf_7_ (.combout (i1_int[7]), .padio (i1[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_7_.operation_mode = "input";
                 
                 defparam i1_ibuf_7_.output_register_mode = "none";
                 
                 defparam i1_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_7_.input_register_mode = "none";
    cycloneii_io i1_ibuf_6_ (.combout (i1_int[6]), .padio (i1[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_6_.operation_mode = "input";
                 
                 defparam i1_ibuf_6_.output_register_mode = "none";
                 
                 defparam i1_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_6_.input_register_mode = "none";
    cycloneii_io i1_ibuf_5_ (.combout (i1_int[5]), .padio (i1[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_5_.operation_mode = "input";
                 
                 defparam i1_ibuf_5_.output_register_mode = "none";
                 
                 defparam i1_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_5_.input_register_mode = "none";
    cycloneii_io i1_ibuf_4_ (.combout (i1_int[4]), .padio (i1[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_4_.operation_mode = "input";
                 
                 defparam i1_ibuf_4_.output_register_mode = "none";
                 
                 defparam i1_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_4_.input_register_mode = "none";
    cycloneii_io i1_ibuf_3_ (.combout (i1_int[3]), .padio (i1[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_3_.operation_mode = "input";
                 
                 defparam i1_ibuf_3_.output_register_mode = "none";
                 
                 defparam i1_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_3_.input_register_mode = "none";
    cycloneii_io i1_ibuf_2_ (.combout (i1_int[2]), .padio (i1[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_2_.operation_mode = "input";
                 
                 defparam i1_ibuf_2_.output_register_mode = "none";
                 
                 defparam i1_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_2_.input_register_mode = "none";
    cycloneii_io i1_ibuf_1_ (.combout (i1_int[1]), .padio (i1[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_1_.operation_mode = "input";
                 
                 defparam i1_ibuf_1_.output_register_mode = "none";
                 
                 defparam i1_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_1_.input_register_mode = "none";
    cycloneii_io i1_ibuf_0_ (.combout (i1_int[0]), .padio (i1[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i1_ibuf_0_.operation_mode = "input";
                 
                 defparam i1_ibuf_0_.output_register_mode = "none";
                 
                 defparam i1_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i1_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i1_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i1_ibuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_7_ (.padio (debug_num_8[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_7_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_7_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_7_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_7_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_6_ (.padio (debug_num_8[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_6_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_6_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_6_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_6_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_5_ (.padio (debug_num_8[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_5_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_5_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_5_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_5_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_4_ (.padio (debug_num_8[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_4_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_4_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_4_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_4_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_3_ (.padio (debug_num_8[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_3_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_3_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_3_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_3_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_2_ (.padio (debug_num_8[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_2_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_2_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_2_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_2_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_1_ (.padio (debug_num_8[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_1_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_1_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_1_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_1_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus9_0_ (.padio (debug_num_8[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus9_0_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus9_0_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_0_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus9_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus9_0_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_7_ (.padio (debug_num_7[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_7_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_7_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_7_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_7_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_6_ (.padio (debug_num_7[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_6_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_6_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_6_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_6_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_5_ (.padio (debug_num_7[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_5_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_5_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_5_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_5_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_4_ (.padio (debug_num_7[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_4_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_4_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_4_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_4_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_3_ (.padio (debug_num_7[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_3_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_3_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_3_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_3_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_2_ (.padio (debug_num_7[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_2_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_2_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_2_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_2_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_1_ (.padio (debug_num_7[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_1_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_1_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_1_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_1_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus8_0_ (.padio (debug_num_7[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus8_0_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus8_0_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_0_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus8_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus8_0_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_7_ (.padio (debug_num_6[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_7_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_7_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_7_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_7_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_6_ (.padio (debug_num_6[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_6_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_6_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_6_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_6_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_5_ (.padio (debug_num_6[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_5_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_5_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_5_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_5_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_4_ (.padio (debug_num_6[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_4_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_4_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_4_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_4_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_3_ (.padio (debug_num_6[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_3_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_3_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_3_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_3_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_2_ (.padio (debug_num_6[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_2_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_2_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_2_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_2_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_1_ (.padio (debug_num_6[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_1_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_1_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_1_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_1_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus7_0_ (.padio (debug_num_6[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus7_0_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus7_0_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_0_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus7_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus7_0_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_7_ (.padio (debug_num_5[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_7_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_7_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_7_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_7_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_6_ (.padio (debug_num_5[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_6_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_6_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_6_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_6_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_5_ (.padio (debug_num_5[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_5_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_5_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_5_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_5_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_4_ (.padio (debug_num_5[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_4_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_4_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_4_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_4_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_3_ (.padio (debug_num_5[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_3_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_3_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_2_ (.padio (debug_num_5[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_2_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_2_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_1_ (.padio (debug_num_5[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_1_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_1_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus6_0_ (.padio (debug_num_5[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus6_0_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus6_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus6_0_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_7_ (.padio (debug_num_4[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_7_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_7_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_7_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_7_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_6_ (.padio (debug_num_4[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_6_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_6_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_6_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_6_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_5_ (.padio (debug_num_4[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_5_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_5_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_5_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_5_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_4_ (.padio (debug_num_4[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_4_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_4_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_4_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_4_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_3_ (.padio (debug_num_4[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_3_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_3_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_2_ (.padio (debug_num_4[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_2_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_2_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_1_ (.padio (debug_num_4[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_1_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_1_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus5_0_ (.padio (debug_num_4[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus5_0_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus5_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus5_0_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_7_ (.padio (debug_num_3[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_7_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_7_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_7_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_7_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_6_ (.padio (debug_num_3[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_6_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_6_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_6_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_6_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_5_ (.padio (debug_num_3[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_5_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_5_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_5_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_5_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_4_ (.padio (debug_num_3[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_4_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_4_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_4_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_4_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_3_ (.padio (debug_num_3[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_3_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_3_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_2_ (.padio (debug_num_3[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_2_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_2_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_1_ (.padio (debug_num_3[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_1_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_1_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus4_0_ (.padio (debug_num_3[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus4_0_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus4_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus4_0_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_7_ (.padio (debug_num_2[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_7_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_7_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_7_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_7_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_6_ (.padio (debug_num_2[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_6_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_6_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_6_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_6_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_5_ (.padio (debug_num_2[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_5_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_5_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_5_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_5_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_4_ (.padio (debug_num_2[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_4_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_4_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_4_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_4_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_3_ (.padio (debug_num_2[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_3_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_3_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_2_ (.padio (debug_num_2[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_2_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_2_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_1_ (.padio (debug_num_2[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_1_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_1_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus3_0_ (.padio (debug_num_2[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus3_0_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus3_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus3_0_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_7_ (.padio (debug_num_1[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_7_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_7_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_7_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_7_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_6_ (.padio (debug_num_1[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_6_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_6_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_6_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_6_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_5_ (.padio (debug_num_1[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_5_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_5_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_5_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_5_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_4_ (.padio (debug_num_1[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_4_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_4_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_4_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_4_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_3_ (.padio (debug_num_1[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_3_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_3_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_2_ (.padio (debug_num_1[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_2_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_2_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_1_ (.padio (debug_num_1[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_1_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_1_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus2_0_ (.padio (debug_num_1[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus2_0_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus2_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus2_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus2_0_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_7_ (.padio (debug_num_0[7]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_7_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_7_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_7_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_7_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_6_ (.padio (debug_num_0[6]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_6_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_6_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_6_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_6_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_5_ (.padio (debug_num_0[5]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_5_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_5_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_5_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_5_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_4_ (.padio (debug_num_0[4]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_4_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_4_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_4_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_4_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_3_ (.padio (debug_num_0[3]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_3_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_3_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_2_ (.padio (debug_num_0[2]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_2_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_2_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_1_ (.padio (debug_num_0[1]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_1_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_1_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus1_0_ (.padio (debug_num_0[0]), .datain (GND)
                 , .oe (GND), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), 
                 .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus1_0_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus1_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus1_0_.input_register_mode = "none";
    cycloneii_io b3_ibuf_7_ (.combout (b3_int[7]), .padio (b3[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_7_.operation_mode = "input";
                 
                 defparam b3_ibuf_7_.output_register_mode = "none";
                 
                 defparam b3_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_7_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_7_.input_register_mode = "none";
    cycloneii_io b3_ibuf_6_ (.combout (b3_int[6]), .padio (b3[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_6_.operation_mode = "input";
                 
                 defparam b3_ibuf_6_.output_register_mode = "none";
                 
                 defparam b3_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_6_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_6_.input_register_mode = "none";
    cycloneii_io b3_ibuf_5_ (.combout (b3_int[5]), .padio (b3[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_5_.operation_mode = "input";
                 
                 defparam b3_ibuf_5_.output_register_mode = "none";
                 
                 defparam b3_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_5_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_5_.input_register_mode = "none";
    cycloneii_io b3_ibuf_4_ (.combout (b3_int[4]), .padio (b3[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_4_.operation_mode = "input";
                 
                 defparam b3_ibuf_4_.output_register_mode = "none";
                 
                 defparam b3_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_4_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_4_.input_register_mode = "none";
    cycloneii_io b3_ibuf_3_ (.combout (b3_int[3]), .padio (b3[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_3_.operation_mode = "input";
                 
                 defparam b3_ibuf_3_.output_register_mode = "none";
                 
                 defparam b3_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_3_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_3_.input_register_mode = "none";
    cycloneii_io b3_ibuf_2_ (.combout (b3_int[2]), .padio (b3[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_2_.operation_mode = "input";
                 
                 defparam b3_ibuf_2_.output_register_mode = "none";
                 
                 defparam b3_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_2_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_2_.input_register_mode = "none";
    cycloneii_io b3_ibuf_1_ (.combout (b3_int[1]), .padio (b3[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_1_.operation_mode = "input";
                 
                 defparam b3_ibuf_1_.output_register_mode = "none";
                 
                 defparam b3_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_1_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_1_.input_register_mode = "none";
    cycloneii_io b3_ibuf_0_ (.combout (b3_int[0]), .padio (b3[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b3_ibuf_0_.operation_mode = "input";
                 
                 defparam b3_ibuf_0_.output_register_mode = "none";
                 
                 defparam b3_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam b3_ibuf_0_.oe_register_mode = "none";
                 
                 defparam b3_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam b3_ibuf_0_.input_register_mode = "none";
    cycloneii_io b2_ibuf_7_ (.combout (b2_int[7]), .padio (b2[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_7_.operation_mode = "input";
                 
                 defparam b2_ibuf_7_.output_register_mode = "none";
                 
                 defparam b2_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_7_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_7_.input_register_mode = "none";
    cycloneii_io b2_ibuf_6_ (.combout (b2_int[6]), .padio (b2[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_6_.operation_mode = "input";
                 
                 defparam b2_ibuf_6_.output_register_mode = "none";
                 
                 defparam b2_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_6_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_6_.input_register_mode = "none";
    cycloneii_io b2_ibuf_5_ (.combout (b2_int[5]), .padio (b2[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_5_.operation_mode = "input";
                 
                 defparam b2_ibuf_5_.output_register_mode = "none";
                 
                 defparam b2_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_5_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_5_.input_register_mode = "none";
    cycloneii_io b2_ibuf_4_ (.combout (b2_int[4]), .padio (b2[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_4_.operation_mode = "input";
                 
                 defparam b2_ibuf_4_.output_register_mode = "none";
                 
                 defparam b2_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_4_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_4_.input_register_mode = "none";
    cycloneii_io b2_ibuf_3_ (.combout (b2_int[3]), .padio (b2[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_3_.operation_mode = "input";
                 
                 defparam b2_ibuf_3_.output_register_mode = "none";
                 
                 defparam b2_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_3_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_3_.input_register_mode = "none";
    cycloneii_io b2_ibuf_2_ (.combout (b2_int[2]), .padio (b2[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_2_.operation_mode = "input";
                 
                 defparam b2_ibuf_2_.output_register_mode = "none";
                 
                 defparam b2_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_2_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_2_.input_register_mode = "none";
    cycloneii_io b2_ibuf_1_ (.combout (b2_int[1]), .padio (b2[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_1_.operation_mode = "input";
                 
                 defparam b2_ibuf_1_.output_register_mode = "none";
                 
                 defparam b2_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_1_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_1_.input_register_mode = "none";
    cycloneii_io b2_ibuf_0_ (.combout (b2_int[0]), .padio (b2[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b2_ibuf_0_.operation_mode = "input";
                 
                 defparam b2_ibuf_0_.output_register_mode = "none";
                 
                 defparam b2_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam b2_ibuf_0_.oe_register_mode = "none";
                 
                 defparam b2_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam b2_ibuf_0_.input_register_mode = "none";
    cycloneii_io b1_ibuf_7_ (.combout (b1_int[7]), .padio (b1[7]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_7_.operation_mode = "input";
                 
                 defparam b1_ibuf_7_.output_register_mode = "none";
                 
                 defparam b1_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_7_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_7_.input_register_mode = "none";
    cycloneii_io b1_ibuf_6_ (.combout (b1_int[6]), .padio (b1[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_6_.operation_mode = "input";
                 
                 defparam b1_ibuf_6_.output_register_mode = "none";
                 
                 defparam b1_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_6_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_6_.input_register_mode = "none";
    cycloneii_io b1_ibuf_5_ (.combout (b1_int[5]), .padio (b1[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_5_.operation_mode = "input";
                 
                 defparam b1_ibuf_5_.output_register_mode = "none";
                 
                 defparam b1_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_5_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_5_.input_register_mode = "none";
    cycloneii_io b1_ibuf_4_ (.combout (b1_int[4]), .padio (b1[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_4_.operation_mode = "input";
                 
                 defparam b1_ibuf_4_.output_register_mode = "none";
                 
                 defparam b1_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_4_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_4_.input_register_mode = "none";
    cycloneii_io b1_ibuf_3_ (.combout (b1_int[3]), .padio (b1[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_3_.operation_mode = "input";
                 
                 defparam b1_ibuf_3_.output_register_mode = "none";
                 
                 defparam b1_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_3_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_3_.input_register_mode = "none";
    cycloneii_io b1_ibuf_2_ (.combout (b1_int[2]), .padio (b1[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_2_.operation_mode = "input";
                 
                 defparam b1_ibuf_2_.output_register_mode = "none";
                 
                 defparam b1_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_2_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_2_.input_register_mode = "none";
    cycloneii_io b1_ibuf_1_ (.combout (b1_int[1]), .padio (b1[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_1_.operation_mode = "input";
                 
                 defparam b1_ibuf_1_.output_register_mode = "none";
                 
                 defparam b1_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_1_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_1_.input_register_mode = "none";
    cycloneii_io b1_ibuf_0_ (.combout (b1_int[0]), .padio (b1[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam b1_ibuf_0_.operation_mode = "input";
                 
                 defparam b1_ibuf_0_.output_register_mode = "none";
                 
                 defparam b1_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam b1_ibuf_0_.oe_register_mode = "none";
                 
                 defparam b1_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam b1_ibuf_0_.input_register_mode = "none";
    cycloneii_lcell_comb ix31358z52932 (.combout (nx31358z10), .dataa (p45), .datab (
                         max_fwd), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix31358z52932.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix26026z52924 (.combout (nx26026z2), .dataa (p4s[11]), 
                         .datab (p4s[9]), .datac (p4s[8]), .datad (p4s[7]), .cin (
                         1'b0)) ;
                         defparam ix26026z52924.lut_mask = 16'h5444;
    cycloneii_lcell_comb ix31358z52924 (.combout (nx31358z2), .dataa (nx31358z3)
                         , .datab (nx31358z8), .datac (nx31358z9), .datad (
                         nx31358z10), .cin (1'b0)) ;
                         
                         defparam ix31358z52924.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix31358z52931 (.combout (nx31358z9), .dataa (p43[1]), .datab (
                         p43[0]), .datac (prev_max[1]), .datad (prev_max[0]), .cin (
                         1'b0)) ;
                         defparam ix31358z52931.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix31358z52930 (.combout (nx31358z8), .dataa (p43[3]), .datab (
                         p43[2]), .datac (prev_max[3]), .datad (prev_max[2]), .cin (
                         1'b0)) ;
                         defparam ix31358z52930.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix31358z52929 (.combout (nx31358z7), .dataa (p43[5]), .datab (
                         p43[4]), .datac (prev_max[5]), .datad (prev_max[4]), .cin (
                         1'b0)) ;
                         defparam ix31358z52929.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix31358z52928 (.combout (nx31358z6), .dataa (p43[7]), .datab (
                         p43[6]), .datac (prev_max[7]), .datad (prev_max[6]), .cin (
                         1'b0)) ;
                         defparam ix31358z52928.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix31358z52927 (.combout (nx31358z5), .dataa (p43[9]), .datab (
                         p43[8]), .datac (prev_max[9]), .datad (prev_max[8]), .cin (
                         1'b0)) ;
                         defparam ix31358z52927.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix31358z52926 (.combout (nx31358z4), .dataa (p43[11]), 
                         .datab (p43[10]), .datac (prev_max[11]), .datad (
                         prev_max[10]), .cin (1'b0)) ;
                         
                         defparam ix31358z52926.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix26530z52923 (.combout (nx26530z1), .dataa (p40), .datab (
                         i_reset_int), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix26530z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix31358z52923 (.combout (nx31358z1), .dataa (state[3])
                         , .datab (nx32403z4), .datac (i_reset_int), .datad (
                         nx31358z2), .cin (1'b0)) ;
                         
                         defparam ix31358z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix31358z52925 (.combout (nx31358z3), .dataa (nx31358z4)
                         , .datab (nx31358z5), .datac (nx31358z6), .datad (
                         nx31358z7), .cin (1'b0)) ;
                         
                         defparam ix31358z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix32403z52927 (.combout (nx32403z5), .dataa (state[1])
                         , .datab (nx28524z1), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32403z52927.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix32403z52923 (.combout (nx32403z1), .dataa (state[2])
                         , .datab (state[1]), .datac (nx28524z1), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix32403z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix32403z52924 (.combout (nx32403z2), .dataa (state[3])
                         , .datab (state[2]), .datac (nx32403z3), .datad (
                         nx32403z5), .cin (1'b0)) ;
                         
                         defparam ix32403z52924.lut_mask = 16'he0f0;
    cycloneii_lcell_comb ix30409z52923 (.combout (nx30409z1), .dataa (p45), .datab (
                         nx28524z1), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix30409z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix30361z52923 (.combout (nx30361z1), .dataa (state[3])
                         , .datab (i_reset_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix30361z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix26026z52923 (.combout (nx26026z1), .dataa (p4s[11]), 
                         .datab (p4s[10]), .datac (nx26026z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26026z52923.lut_mask = 16'hf4f4;
    cycloneii_lcell_comb ix32403z52925 (.combout (nx32403z3), .dataa (nx32403z4)
                         , .datab (nx31358z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32403z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix47893z52923 (.combout (o_mode_dup0[0]), .dataa (
                         p5m[0]), .datab (i_reset_int), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix47893z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix46896z52923 (.combout (o_mode_dup0[1]), .dataa (
                         p5m[1]), .datab (i_reset_int), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix46896z52923.lut_mask = 16'h2222;
endmodule


module sub_10_3 ( cin, a, b, d, cout, p_p11_0_ ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;
    input p_p11_0_ ;

    wire nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, nx46946z12, 
         nx46946z9, nx46946z6, nx46946z3, nx46946z29, nx_sub_10_3_vcc_net;
    wire [15:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .dataa (a[9]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_3_vcc_net), .cin (
                         nx46946z3)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'ha500;
                         
                         defparam ix46946z52923.sum_lutc_input = "cin";
    assign nx_sub_10_3_vcc_net = 1 ;
    cycloneii_lcell_comb ix46946z52925 (.combout (d[8]), .cout (nx46946z3), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z6)) ;
                         
                         defparam ix46946z52925.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52926 (.combout (d[7]), .cout (nx46946z6), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z9)) ;
                         
                         defparam ix46946z52926.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52927 (.combout (d[6]), .cout (nx46946z9), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z12)) ;
                         
                         defparam ix46946z52927.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52928 (.combout (d[5]), .cout (nx46946z12), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z15)) ;
                         
                         defparam ix46946z52928.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52929 (.combout (d[4]), .cout (nx46946z15), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z18)) ;
                         
                         defparam ix46946z52929.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52930 (.combout (d[3]), .cout (nx46946z18), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z21)) ;
                         
                         defparam ix46946z52930.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52931 (.combout (d[2]), .cout (nx46946z21), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z24)) ;
                         
                         defparam ix46946z52931.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52932 (.combout (d[1]), .cout (nx46946z24), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z27)) ;
                         
                         defparam ix46946z52932.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52934 (.cout (nx46946z29), .dataa (a[0]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_3_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix46946z52934.lut_mask = 16'h00aa;
    cycloneii_lcell_comb ix46946z52933 (.combout (d[0]), .cout (nx46946z27), .dataa (
                         b[0]), .datab (p_p11_0_), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z29)) ;
                         
                         defparam ix46946z52933.lut_mask = 16'h9671;
                         
                         defparam ix46946z52933.sum_lutc_input = "cin";
endmodule


module sub_10_2 ( cin, a, b, d, cout, p_p12_0_ ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;
    input p_p12_0_ ;

    wire nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, nx46946z12, 
         nx46946z9, nx46946z6, nx46946z3, nx46946z29, nx_sub_10_2_vcc_net;
    wire [15:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .dataa (a[9]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx46946z3)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'ha500;
                         
                         defparam ix46946z52923.sum_lutc_input = "cin";
    assign nx_sub_10_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix46946z52925 (.combout (d[8]), .cout (nx46946z3), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z6)) ;
                         
                         defparam ix46946z52925.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52926 (.combout (d[7]), .cout (nx46946z6), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z9)) ;
                         
                         defparam ix46946z52926.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52927 (.combout (d[6]), .cout (nx46946z9), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z12)) ;
                         
                         defparam ix46946z52927.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52928 (.combout (d[5]), .cout (nx46946z12), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z15)) ;
                         
                         defparam ix46946z52928.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52929 (.combout (d[4]), .cout (nx46946z15), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z18)) ;
                         
                         defparam ix46946z52929.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52930 (.combout (d[3]), .cout (nx46946z18), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z21)) ;
                         
                         defparam ix46946z52930.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52931 (.combout (d[2]), .cout (nx46946z21), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z24)) ;
                         
                         defparam ix46946z52931.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52932 (.combout (d[1]), .cout (nx46946z24), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z27)) ;
                         
                         defparam ix46946z52932.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52934 (.cout (nx46946z29), .dataa (a[0]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix46946z52934.lut_mask = 16'h00aa;
    cycloneii_lcell_comb ix46946z52933 (.combout (d[0]), .cout (nx46946z27), .dataa (
                         b[0]), .datab (p_p12_0_), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z29)) ;
                         
                         defparam ix46946z52933.lut_mask = 16'h9671;
                         
                         defparam ix46946z52933.sum_lutc_input = "cin";
endmodule


module add_9_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z17, nx45949z15, nx45949z13, nx45949z11, nx45949z9, nx45949z7, 
         nx45949z5, nx45949z3, nx23445z2, nx_add_9_2_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         a[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         a[6]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z5)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z5), .dataa (
                         a[5]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z7)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z7), .dataa (
                         a[4]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z9), .dataa (
                         a[3]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z11)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z11), .dataa (
                         a[2]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z13)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z13), .dataa (
                         a[1]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_2_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z15), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z17)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z17), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_8_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_2_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_2_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module sub_10_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, nx46946z13, 
         nx46946z10, nx46946z7, nx46946z4, nx23445z2, nx_sub_10_1_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .cout (nx23445z2), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z4)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52923.sum_lutc_input = "cin";
    assign nx_sub_10_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix46946z52925 (.combout (d[8]), .cout (nx46946z4), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z7)) ;
                         
                         defparam ix46946z52925.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52926 (.combout (d[7]), .cout (nx46946z7), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z10)) ;
                         
                         defparam ix46946z52926.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52927 (.combout (d[6]), .cout (nx46946z10), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z13)) ;
                         
                         defparam ix46946z52927.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52928 (.combout (d[5]), .cout (nx46946z13), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z16)) ;
                         
                         defparam ix46946z52928.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52929 (.combout (d[4]), .cout (nx46946z16), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z19)) ;
                         
                         defparam ix46946z52929.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52930 (.combout (d[3]), .cout (nx46946z19), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z22)) ;
                         
                         defparam ix46946z52930.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52931 (.combout (d[2]), .cout (nx46946z22), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z25)) ;
                         
                         defparam ix46946z52931.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52932 (.combout (d[1]), .cout (nx46946z25), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (nx46946z28)) ;
                         
                         defparam ix46946z52932.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52933 (.combout (d[0]), .cout (nx46946z28), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_10_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix46946z52933.lut_mask = 16'h66bb;
endmodule


module sub_10_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, nx46946z13, 
         nx46946z10, nx46946z7, nx46946z4, nx23445z2, nx_sub_10_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .cout (nx23445z2), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z4)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52923.sum_lutc_input = "cin";
    assign nx_sub_10_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix46946z52925 (.combout (d[8]), .cout (nx46946z4), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z7)) ;
                         
                         defparam ix46946z52925.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52926 (.combout (d[7]), .cout (nx46946z7), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z10)) ;
                         
                         defparam ix46946z52926.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52927 (.combout (d[6]), .cout (nx46946z10), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z13)) ;
                         
                         defparam ix46946z52927.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52928 (.combout (d[5]), .cout (nx46946z13), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z16)) ;
                         
                         defparam ix46946z52928.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52929 (.combout (d[4]), .cout (nx46946z16), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z19)) ;
                         
                         defparam ix46946z52929.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52930 (.combout (d[3]), .cout (nx46946z19), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z22)) ;
                         
                         defparam ix46946z52930.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52931 (.combout (d[2]), .cout (nx46946z22), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z25)) ;
                         
                         defparam ix46946z52931.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52932 (.combout (d[1]), .cout (nx46946z25), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (nx46946z28)) ;
                         
                         defparam ix46946z52932.lut_mask = 16'h69d4;
                         
                         defparam ix46946z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52933 (.combout (d[0]), .cout (nx46946z28), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_10_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix46946z52933.lut_mask = 16'h66bb;
endmodule


module add_9_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx23445z2, nx_add_9_1_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_8_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_1_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module add_9_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module add_11_1 ( cin, a, b, d, cout, p_rtlcn874 ) ;

    input cin ;
    input [10:0]a ;
    input [10:0]b ;
    output [10:0]d ;
    output cout ;
    input p_rtlcn874 ;

    wire nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, nx62798z15, 
         nx62798z12, nx62798z9, nx62798z6, nx62798z4, nx_add_11_1_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix62798z52923 (.combout (d[10]), .dataa (b[10]), .datab (
                         p_rtlcn874), .datac (1'b1), .datad (nx_add_11_1_vcc_net
                         ), .cin (nx62798z4)) ;
                         
                         defparam ix62798z52923.lut_mask = 16'h6900;
                         
                         defparam ix62798z52923.sum_lutc_input = "cin";
    assign nx_add_11_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix62798z52926 (.combout (d[8]), .cout (nx62798z6), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z9)) ;
                         
                         defparam ix62798z52926.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52927 (.combout (d[7]), .cout (nx62798z9), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z12)) ;
                         
                         defparam ix62798z52927.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52928 (.combout (d[6]), .cout (nx62798z12), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z15)) ;
                         
                         defparam ix62798z52928.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52929 (.combout (d[5]), .cout (nx62798z15), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z18)) ;
                         
                         defparam ix62798z52929.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52930 (.combout (d[4]), .cout (nx62798z18), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z21)) ;
                         
                         defparam ix62798z52930.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52931 (.combout (d[3]), .cout (nx62798z21), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z24)) ;
                         
                         defparam ix62798z52931.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52932 (.combout (d[2]), .cout (nx62798z24), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z27)) ;
                         
                         defparam ix62798z52932.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52933 (.combout (d[1]), .cout (nx62798z27), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z30)) ;
                         
                         defparam ix62798z52933.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52934 (.combout (d[0]), .cout (nx62798z30), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix62798z52934.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix62798z52925 (.combout (d[9]), .cout (nx62798z4), .dataa (
                         b[9]), .datab (p_rtlcn874), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z6)) ;
                         
                         defparam ix62798z52925.lut_mask = 16'h69b2;
                         
                         defparam ix62798z52925.sum_lutc_input = "cin";
endmodule


module add_11_0 ( cin, a, b, d, cout, p_rtlcn822 ) ;

    input cin ;
    input [10:0]a ;
    input [10:0]b ;
    output [10:0]d ;
    output cout ;
    input p_rtlcn822 ;

    wire nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, nx62798z15, 
         nx62798z12, nx62798z9, nx62798z6, nx62798z4, nx_add_11_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix62798z52923 (.combout (d[10]), .dataa (b[10]), .datab (
                         p_rtlcn822), .datac (1'b1), .datad (nx_add_11_0_vcc_net
                         ), .cin (nx62798z4)) ;
                         
                         defparam ix62798z52923.lut_mask = 16'h6900;
                         
                         defparam ix62798z52923.sum_lutc_input = "cin";
    assign nx_add_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix62798z52926 (.combout (d[8]), .cout (nx62798z6), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z9)) ;
                         
                         defparam ix62798z52926.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52927 (.combout (d[7]), .cout (nx62798z9), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z12)) ;
                         
                         defparam ix62798z52927.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52928 (.combout (d[6]), .cout (nx62798z12), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z15)) ;
                         
                         defparam ix62798z52928.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52929 (.combout (d[5]), .cout (nx62798z15), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z18)) ;
                         
                         defparam ix62798z52929.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52930 (.combout (d[4]), .cout (nx62798z18), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z21)) ;
                         
                         defparam ix62798z52930.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52931 (.combout (d[3]), .cout (nx62798z21), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z24)) ;
                         
                         defparam ix62798z52931.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52932 (.combout (d[2]), .cout (nx62798z24), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z27)) ;
                         
                         defparam ix62798z52932.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52933 (.combout (d[1]), .cout (nx62798z27), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z30)) ;
                         
                         defparam ix62798z52933.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52934 (.combout (d[0]), .cout (nx62798z30), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix62798z52934.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix62798z52925 (.combout (d[9]), .cout (nx62798z4), .dataa (
                         b[9]), .datab (p_rtlcn822), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z6)) ;
                         
                         defparam ix62798z52925.lut_mask = 16'h69b2;
                         
                         defparam ix62798z52925.sum_lutc_input = "cin";
endmodule


module gt_12_1 ( a, b, d ) ;

    input [11:0]a ;
    input [11:0]b ;
    output d ;

    wire nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, 
         nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_12_1_vcc_net;
    wire [24:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[11]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hb200;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_12_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[10]), .datab (
                         a[10]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z31)) ;
                         defparam ix100z52933.lut_mask = 16'h00d4;
                         
                         defparam ix100z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52934 (.cout (nx100z31), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         nx100z34)) ;
                         defparam ix100z52934.lut_mask = 16'h00d4;
                         
                         defparam ix100z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52935 (.cout (nx100z34), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_12_1_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52935.lut_mask = 16'h0022;
endmodule


module gt_12_0 ( a, b, d ) ;

    input [11:0]a ;
    input [11:0]b ;
    output d ;

    wire nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, 
         nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_12_0_vcc_net;
    wire [24:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[11]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hb200;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[10]), .datab (
                         a[10]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z31)) ;
                         defparam ix100z52933.lut_mask = 16'h00d4;
                         
                         defparam ix100z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52934 (.cout (nx100z31), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         nx100z34)) ;
                         defparam ix100z52934.lut_mask = 16'h00d4;
                         
                         defparam ix100z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52935 (.cout (nx100z34), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_12_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52935.lut_mask = 16'h0022;
endmodule


module sub_12_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;

    wire nx63795z33, nx63795z30, nx63795z27, nx63795z24, nx63795z21, nx63795z18, 
         nx63795z15, nx63795z12, nx63795z9, nx63795z6, nx63795z3, 
         nx_sub_12_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .dataa (a[11]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z3)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'ha500;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    assign nx_sub_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z3), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z6)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z6), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z9)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z9), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z12)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z12), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z15)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z15), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z18)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.combout (d[5]), .cout (nx63795z18), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z21)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.combout (d[4]), .cout (nx63795z21), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z24)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.combout (d[3]), .cout (nx63795z24), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z27)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.combout (d[2]), .cout (nx63795z27), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z30)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.combout (d[1]), .cout (nx63795z30), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z33)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.combout (d[0]), .cout (nx63795z33), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix63795z52935.lut_mask = 16'h66bb;
endmodule

