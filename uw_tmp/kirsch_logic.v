//
// Verilog description for cell kirsch, 
// Tue Jul 22 01:54:44 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_column, 
                debug_led_red, debug_led_grn, debug_num_0, debug_num_1, 
                debug_num_2, debug_num_3, debug_num_4, debug_num_5, debug_num_6, 
                debug_num_7, debug_num_8 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [7:0]debug_column ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;
    output [3:0]debug_num_6 ;
    output [3:0]debug_num_7 ;
    output [3:0]debug_num_8 ;

    wire o_valid_dup0, o_edge_dup0;
    wire [2:0]o_dir_dup0;
    wire [7:1]debug_column_dup0;
    wire [3:0]f_state;
    wire [1:0]m_o_mode;
    wire [7:0]m_o_row;
    wire m_o_valid;
    wire [7:0]f_t1_next;
    wire [7:0]f_t2_next;
    wire [7:0]f_t3_next;
    wire [7:0]f_b1_next;
    wire [7:0]f_b2_next;
    wire [7:0]f_b3_next;
    wire [7:0]f_i1_next;
    wire [7:0]f_i2_next;
    wire [7:0]f_i_row_next;
    wire [1:0]f_i_mode_next;
    wire [7:0]m_o_image0_0_;
    wire [7:0]m_o_image0_1_;
    wire [7:0]m_o_image0_2_;
    wire [7:0]m_o_image1_0_;
    wire [7:0]m_o_image1_2_;
    wire [7:0]m_o_image2_0_;
    wire [7:0]m_o_image2_1_;
    wire [7:0]m_o_image2_2_;
    wire i_clock_int, i_reset_int, i_valid_int;
    wire [7:0]i_pixel_int;
    wire [1:0]o_mode_dup0;
    wire [7:0]f_t1;
    wire [7:0]f_t2;
    wire [7:0]f_t3;
    wire [7:0]f_b1;
    wire [7:0]f_b2;
    wire [7:0]f_b3;
    wire [7:0]f_i1;
    wire [7:0]f_i2;
    wire [7:0]f_i_row;
    wire [1:0]f_i_mode;
    wire [17:17]debug_led_red_dup0;
    wire nx20836z1, nx57127z1, nx35105z1, nx57127z2, nx64956z1, first_bubble, 
         mem_data_7_, mem_data_6_, mem_data_5_, mem_data_4_, mem_data_3_, 
         mem_data_2_, mem_data_1_, mem_data_0_, nx45613z1, nx44616z1, nx43619z1, 
         nx42622z1, nx41625z1, nx40628z1, nx39631z1, nx38634z1, nx10452z1, 
         nx10452z2, nx10452z3, p5m_1__dup_82, p5m_0__dup_86, nx4807z1, nx16335z1, 
         nx17332z1, nx18329z1, nx19326z1, nx20323z1, nx21320z1, nx22317z1, 
         nx23314z1, nx63959z1, NOT_f_state_3_;
    wire [2001:0] xmplr_dummy ;




    memory u_memory (.i_valid (i_valid_int), .i_reset (i_reset_int), .i_clock (
           i_clock_int), .o_valid (m_o_valid), .o_mode ({m_o_mode[1],m_o_mode[0]
           }), .o_column ({debug_column_dup0[7],debug_column_dup0[6],
           debug_column_dup0[5],debug_column_dup0[4],debug_column_dup0[3],
           debug_column_dup0[2],debug_column_dup0[1],xmplr_dummy [0]}), .o_row (
           {m_o_row[7],m_o_row[6],m_o_row[5],m_o_row[4],m_o_row[3],m_o_row[2],
           m_o_row[1],m_o_row[0]}), .o_image0_0_ ({m_o_image0_0_[7],
           m_o_image0_0_[6],m_o_image0_0_[5],m_o_image0_0_[4],m_o_image0_0_[3],
           m_o_image0_0_[2],m_o_image0_0_[1],m_o_image0_0_[0]}), .o_image0_1_ ({
           m_o_image0_1_[7],m_o_image0_1_[6],m_o_image0_1_[5],m_o_image0_1_[4],
           m_o_image0_1_[3],m_o_image0_1_[2],m_o_image0_1_[1],m_o_image0_1_[0]})
           , .o_image0_2_ ({m_o_image0_2_[7],m_o_image0_2_[6],m_o_image0_2_[5],
           m_o_image0_2_[4],m_o_image0_2_[3],m_o_image0_2_[2],m_o_image0_2_[1],
           m_o_image0_2_[0]}), .o_image1_0_ ({m_o_image1_0_[7],m_o_image1_0_[6],
           m_o_image1_0_[5],m_o_image1_0_[4],m_o_image1_0_[3],m_o_image1_0_[2],
           m_o_image1_0_[1],m_o_image1_0_[0]}), .o_image1_2_ ({m_o_image1_2_[7],
           m_o_image1_2_[6],m_o_image1_2_[5],m_o_image1_2_[4],m_o_image1_2_[3],
           m_o_image1_2_[2],m_o_image1_2_[1],m_o_image1_2_[0]}), .o_image2_0_ ({
           m_o_image2_0_[7],m_o_image2_0_[6],m_o_image2_0_[5],m_o_image2_0_[4],
           m_o_image2_0_[3],m_o_image2_0_[2],m_o_image2_0_[1],m_o_image2_0_[0]})
           , .o_image2_1_ ({m_o_image2_1_[7],m_o_image2_1_[6],m_o_image2_1_[5],
           m_o_image2_1_[4],m_o_image2_1_[3],m_o_image2_1_[2],m_o_image2_1_[1],
           m_o_image2_1_[0]}), .o_image2_2_ ({m_o_image2_2_[7],m_o_image2_2_[6],
           m_o_image2_2_[5],m_o_image2_2_[4],m_o_image2_2_[3],m_o_image2_2_[2],
           m_o_image2_2_[1],m_o_image2_2_[0]}), .p_first_bubble (first_bubble), 
           .p_mem_data_7_ (mem_data_7_), .p_mem_data_6_ (mem_data_6_), .p_mem_data_5_ (
           mem_data_5_), .p_mem_data_4_ (mem_data_4_), .p_mem_data_3_ (
           mem_data_3_), .p_mem_data_2_ (mem_data_2_), .p_mem_data_1_ (
           mem_data_1_), .p_mem_data_0_ (mem_data_0_), .px1 (nx10452z1), .px23 (
           nx10452z2), .p_rtlc2n264 (nx10452z3)) ;
    flow u_flow (.t1 ({f_t1[7],f_t1[6],f_t1[5],f_t1[4],f_t1[3],f_t1[2],f_t1[1],
         f_t1[0]}), .t2 ({f_t2[7],f_t2[6],f_t2[5],f_t2[4],f_t2[3],f_t2[2],
         f_t2[1],f_t2[0]}), .t3 ({f_t3[7],f_t3[6],f_t3[5],f_t3[4],f_t3[3],
         f_t3[2],f_t3[1],f_t3[0]}), .b1 ({f_b1[7],f_b1[6],f_b1[5],f_b1[4],
         f_b1[3],f_b1[2],f_b1[1],f_b1[0]}), .b2 ({f_b2[7],f_b2[6],f_b2[5],
         f_b2[4],f_b2[3],f_b2[2],f_b2[1],f_b2[0]}), .b3 ({f_b3[7],f_b3[6],
         f_b3[5],f_b3[4],f_b3[3],f_b3[2],f_b3[1],f_b3[0]}), .i1 ({f_i1[7],
         f_i1[6],f_i1[5],f_i1[4],f_i1[3],f_i1[2],f_i1[1],f_i1[0]}), .i2 ({
         f_i2[7],f_i2[6],f_i2[5],f_i2[4],f_i2[3],f_i2[2],f_i2[1],f_i2[0]}), .i_clock (
         i_clock_int), .i_reset (i_reset_int), .i_valid (nx20836z1), .i_mode ({
         f_i_mode[1],f_i_mode[0]}), .i_row ({f_i_row[7],f_i_row[6],f_i_row[5],
         f_i_row[4],f_i_row[3],f_i_row[2],f_i_row[1],f_i_row[0]}), .o_dir ({
         o_dir_dup0[2],o_dir_dup0[1],o_dir_dup0[0]}), .o_edge (o_edge_dup0), .o_valid (
         o_valid_dup0), .p_ix258_ix248_nx13 (nx45613z1), .p_ix258_ix249_nx13 (
         nx44616z1), .p_ix258_ix250_nx13 (nx43619z1), .p_ix258_ix251_nx13 (
         nx42622z1), .p_ix258_ix252_nx13 (nx41625z1), .p_ix258_ix253_nx13 (
         nx40628z1), .p_ix258_ix254_nx13 (nx39631z1), .p_ix258_ix255_nx13 (
         nx38634z1), .p_p5m_1_ (p5m_1__dup_82), .p_p5m_0_ (p5m_0__dup_86)) ;
    assign o_mode_dup0[1] = ~i_reset_int ;
    assign debug_led_red_dup0[17] = 0 ;
    assign f_state[0] = ~nx63959z1 ;
    assign NOT_f_state_3_ = ~f_state[3] ;
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
    cycloneii_lcell_ff reg_out_debug_column_obuf_0_ (.regout (nx4807z1), .datain (
                       nx10452z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx10452z2), .aclr (1'b0), .sclr (nx10452z3), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_in_i_valid_ibuf (.regout (first_bubble), .datain (
                       i_valid_int), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_7_ (.regout (mem_data_7_), .datain (
                       i_pixel_int[7]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_6_ (.regout (mem_data_6_), .datain (
                       i_pixel_int[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_5_ (.regout (mem_data_5_), .datain (
                       i_pixel_int[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_4_ (.regout (mem_data_4_), .datain (
                       i_pixel_int[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_3_ (.regout (mem_data_3_), .datain (
                       i_pixel_int[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_2_ (.regout (mem_data_2_), .datain (
                       i_pixel_int[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_1_ (.regout (mem_data_1_), .datain (
                       i_pixel_int[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_0_ (.regout (mem_data_0_), .datain (
                       i_pixel_int[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_t3_next_7_ (.regout (f_t3_next[7]), .datain (
                       f_i1_next[7]), .sdata (m_o_image1_0_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_6_ (.regout (f_t3_next[6]), .datain (
                       f_i1_next[6]), .sdata (m_o_image1_0_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_5_ (.regout (f_t3_next[5]), .datain (
                       f_i1_next[5]), .sdata (m_o_image1_0_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_4_ (.regout (f_t3_next[4]), .datain (
                       f_i1_next[4]), .sdata (m_o_image1_0_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_3_ (.regout (f_t3_next[3]), .datain (
                       f_i1_next[3]), .sdata (m_o_image1_0_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_2_ (.regout (f_t3_next[2]), .datain (
                       f_i1_next[2]), .sdata (m_o_image1_0_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_1_ (.regout (f_t3_next[1]), .datain (
                       f_i1_next[1]), .sdata (m_o_image1_0_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_0_ (.regout (f_t3_next[0]), .datain (
                       f_i1_next[0]), .sdata (m_o_image1_0_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_7_ (.regout (f_t2_next[7]), .datain (
                       f_t3_next[7]), .sdata (m_o_image0_0_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_6_ (.regout (f_t2_next[6]), .datain (
                       f_t3_next[6]), .sdata (m_o_image0_0_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_5_ (.regout (f_t2_next[5]), .datain (
                       f_t3_next[5]), .sdata (m_o_image0_0_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_4_ (.regout (f_t2_next[4]), .datain (
                       f_t3_next[4]), .sdata (m_o_image0_0_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_3_ (.regout (f_t2_next[3]), .datain (
                       f_t3_next[3]), .sdata (m_o_image0_0_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_2_ (.regout (f_t2_next[2]), .datain (
                       f_t3_next[2]), .sdata (m_o_image0_0_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_1_ (.regout (f_t2_next[1]), .datain (
                       f_t3_next[1]), .sdata (m_o_image0_0_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_0_ (.regout (f_t2_next[0]), .datain (
                       f_t3_next[0]), .sdata (m_o_image0_0_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_7_ (.regout (f_t1_next[7]), .datain (
                       f_t2_next[7]), .sdata (m_o_image0_1_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_6_ (.regout (f_t1_next[6]), .datain (
                       f_t2_next[6]), .sdata (m_o_image0_1_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_5_ (.regout (f_t1_next[5]), .datain (
                       f_t2_next[5]), .sdata (m_o_image0_1_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_4_ (.regout (f_t1_next[4]), .datain (
                       f_t2_next[4]), .sdata (m_o_image0_1_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_3_ (.regout (f_t1_next[3]), .datain (
                       f_t2_next[3]), .sdata (m_o_image0_1_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_2_ (.regout (f_t1_next[2]), .datain (
                       f_t2_next[2]), .sdata (m_o_image0_1_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_1_ (.regout (f_t1_next[1]), .datain (
                       f_t2_next[1]), .sdata (m_o_image0_1_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_0_ (.regout (f_t1_next[0]), .datain (
                       f_t2_next[0]), .sdata (m_o_image0_1_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_state_3_ (.regout (f_state[3]), .datain (f_state[2]
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (nx64956z1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_state_2_ (.regout (f_state[2]), .datain (f_state[1]
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (nx64956z1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_state_1_ (.regout (f_state[1]), .datain (f_state[0]
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (nx64956z1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_state_0_ (.regout (nx63959z1), .datain (
                       NOT_f_state_3_), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx64956z1), .aclr (1'b0), .sclr (i_reset_int), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_7_ (.regout (f_i_row_next[7]), .datain (
                       m_o_row[7]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_6_ (.regout (f_i_row_next[6]), .datain (
                       m_o_row[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_5_ (.regout (f_i_row_next[5]), .datain (
                       m_o_row[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_4_ (.regout (f_i_row_next[4]), .datain (
                       m_o_row[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_3_ (.regout (f_i_row_next[3]), .datain (
                       m_o_row[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_2_ (.regout (f_i_row_next[2]), .datain (
                       m_o_row[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_1_ (.regout (f_i_row_next[1]), .datain (
                       m_o_row[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_0_ (.regout (f_i_row_next[0]), .datain (
                       m_o_row[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_mode_next_1_ (.regout (f_i_mode_next[1]), .datain (
                       m_o_mode[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_mode_next_0_ (.regout (f_i_mode_next[0]), .datain (
                       m_o_mode[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i2_next_7_ (.regout (f_i2_next[7]), .datain (
                       f_t1_next[7]), .sdata (m_o_image0_2_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_6_ (.regout (f_i2_next[6]), .datain (
                       f_t1_next[6]), .sdata (m_o_image0_2_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_5_ (.regout (f_i2_next[5]), .datain (
                       f_t1_next[5]), .sdata (m_o_image0_2_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_4_ (.regout (f_i2_next[4]), .datain (
                       f_t1_next[4]), .sdata (m_o_image0_2_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_3_ (.regout (f_i2_next[3]), .datain (
                       f_t1_next[3]), .sdata (m_o_image0_2_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_2_ (.regout (f_i2_next[2]), .datain (
                       f_t1_next[2]), .sdata (m_o_image0_2_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_1_ (.regout (f_i2_next[1]), .datain (
                       f_t1_next[1]), .sdata (m_o_image0_2_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_0_ (.regout (f_i2_next[0]), .datain (
                       f_t1_next[0]), .sdata (m_o_image0_2_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_7_ (.regout (f_i1_next[7]), .datain (
                       f_b1_next[7]), .sdata (m_o_image2_0_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_6_ (.regout (f_i1_next[6]), .datain (
                       f_b1_next[6]), .sdata (m_o_image2_0_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_5_ (.regout (f_i1_next[5]), .datain (
                       f_b1_next[5]), .sdata (m_o_image2_0_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_4_ (.regout (f_i1_next[4]), .datain (
                       f_b1_next[4]), .sdata (m_o_image2_0_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_3_ (.regout (f_i1_next[3]), .datain (
                       f_b1_next[3]), .sdata (m_o_image2_0_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_2_ (.regout (f_i1_next[2]), .datain (
                       f_b1_next[2]), .sdata (m_o_image2_0_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_1_ (.regout (f_i1_next[1]), .datain (
                       f_b1_next[1]), .sdata (m_o_image2_0_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_0_ (.regout (f_i1_next[0]), .datain (
                       f_b1_next[0]), .sdata (m_o_image2_0_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_7_ (.regout (f_b3_next[7]), .datain (
                       f_i2_next[7]), .sdata (m_o_image1_2_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_6_ (.regout (f_b3_next[6]), .datain (
                       f_i2_next[6]), .sdata (m_o_image1_2_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_5_ (.regout (f_b3_next[5]), .datain (
                       f_i2_next[5]), .sdata (m_o_image1_2_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_4_ (.regout (f_b3_next[4]), .datain (
                       f_i2_next[4]), .sdata (m_o_image1_2_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_3_ (.regout (f_b3_next[3]), .datain (
                       f_i2_next[3]), .sdata (m_o_image1_2_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_2_ (.regout (f_b3_next[2]), .datain (
                       f_i2_next[2]), .sdata (m_o_image1_2_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_1_ (.regout (f_b3_next[1]), .datain (
                       f_i2_next[1]), .sdata (m_o_image1_2_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_0_ (.regout (f_b3_next[0]), .datain (
                       f_i2_next[0]), .sdata (m_o_image1_2_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_7_ (.regout (f_b2_next[7]), .datain (
                       f_b3_next[7]), .sdata (m_o_image2_2_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_6_ (.regout (f_b2_next[6]), .datain (
                       f_b3_next[6]), .sdata (m_o_image2_2_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_5_ (.regout (f_b2_next[5]), .datain (
                       f_b3_next[5]), .sdata (m_o_image2_2_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_4_ (.regout (f_b2_next[4]), .datain (
                       f_b3_next[4]), .sdata (m_o_image2_2_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_3_ (.regout (f_b2_next[3]), .datain (
                       f_b3_next[3]), .sdata (m_o_image2_2_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_2_ (.regout (f_b2_next[2]), .datain (
                       f_b3_next[2]), .sdata (m_o_image2_2_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_1_ (.regout (f_b2_next[1]), .datain (
                       f_b3_next[1]), .sdata (m_o_image2_2_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_0_ (.regout (f_b2_next[0]), .datain (
                       f_b3_next[0]), .sdata (m_o_image2_2_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_7_ (.regout (f_b1_next[7]), .datain (
                       f_b2_next[7]), .sdata (m_o_image2_1_[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_6_ (.regout (f_b1_next[6]), .datain (
                       f_b2_next[6]), .sdata (m_o_image2_1_[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_5_ (.regout (f_b1_next[5]), .datain (
                       f_b2_next[5]), .sdata (m_o_image2_1_[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_4_ (.regout (f_b1_next[4]), .datain (
                       f_b2_next[4]), .sdata (m_o_image2_1_[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_3_ (.regout (f_b1_next[3]), .datain (
                       f_b2_next[3]), .sdata (m_o_image2_1_[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_2_ (.regout (f_b1_next[2]), .datain (
                       f_b2_next[2]), .sdata (m_o_image2_1_[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_1_ (.regout (f_b1_next[1]), .datain (
                       f_b2_next[1]), .sdata (m_o_image2_1_[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_0_ (.regout (f_b1_next[0]), .datain (
                       f_b2_next[0]), .sdata (m_o_image2_1_[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
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
    cycloneii_io o_edge_obuf (.padio (o_edge), .datain (o_edge_dup0), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_edge_obuf.operation_mode = "output";
                 
                 defparam o_edge_obuf.output_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_edge_obuf.oe_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_edge_obuf.input_register_mode = "none";
    cycloneii_io o_dir_obuf_2_ (.padio (o_dir[2]), .datain (o_dir_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_2_.operation_mode = "output";
                 
                 defparam o_dir_obuf_2_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.input_register_mode = "none";
    cycloneii_io o_dir_obuf_1_ (.padio (o_dir[1]), .datain (o_dir_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_1_.operation_mode = "output";
                 
                 defparam o_dir_obuf_1_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.input_register_mode = "none";
    cycloneii_io o_dir_obuf_0_ (.padio (o_dir[0]), .datain (o_dir_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_0_.operation_mode = "output";
                 
                 defparam o_dir_obuf_0_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.input_register_mode = "none";
    cycloneii_io ix15183z43919 (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix15183z43919.operation_mode = "input";
                 
                 defparam ix15183z43919.output_register_mode = "none";
                 
                 defparam ix15183z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix15183z43919.oe_register_mode = "none";
                 
                 defparam ix15183z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix15183z43919.input_register_mode = "none";
    cycloneii_io ix37378z43919 (.combout (i_pixel_int[7]), .padio (i_pixel[7]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix37378z43919.operation_mode = "input";
                 defparam ix37378z43919.output_register_mode = "none";
                 
                 defparam ix37378z43919.tie_off_output_clock_enable = "false";
                 defparam ix37378z43919.oe_register_mode = "none";
                 defparam ix37378z43919.tie_off_oe_clock_enable = "false";
                 defparam ix37378z43919.input_register_mode = "none";
    cycloneii_io ix36381z43919 (.combout (i_pixel_int[6]), .padio (i_pixel[6]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix36381z43919.operation_mode = "input";
                 defparam ix36381z43919.output_register_mode = "none";
                 
                 defparam ix36381z43919.tie_off_output_clock_enable = "false";
                 defparam ix36381z43919.oe_register_mode = "none";
                 defparam ix36381z43919.tie_off_oe_clock_enable = "false";
                 defparam ix36381z43919.input_register_mode = "none";
    cycloneii_io ix35384z43919 (.combout (i_pixel_int[5]), .padio (i_pixel[5]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix35384z43919.operation_mode = "input";
                 defparam ix35384z43919.output_register_mode = "none";
                 
                 defparam ix35384z43919.tie_off_output_clock_enable = "false";
                 defparam ix35384z43919.oe_register_mode = "none";
                 defparam ix35384z43919.tie_off_oe_clock_enable = "false";
                 defparam ix35384z43919.input_register_mode = "none";
    cycloneii_io ix34387z43919 (.combout (i_pixel_int[4]), .padio (i_pixel[4]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix34387z43919.operation_mode = "input";
                 defparam ix34387z43919.output_register_mode = "none";
                 
                 defparam ix34387z43919.tie_off_output_clock_enable = "false";
                 defparam ix34387z43919.oe_register_mode = "none";
                 defparam ix34387z43919.tie_off_oe_clock_enable = "false";
                 defparam ix34387z43919.input_register_mode = "none";
    cycloneii_io ix33390z43919 (.combout (i_pixel_int[3]), .padio (i_pixel[3]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix33390z43919.operation_mode = "input";
                 defparam ix33390z43919.output_register_mode = "none";
                 
                 defparam ix33390z43919.tie_off_output_clock_enable = "false";
                 defparam ix33390z43919.oe_register_mode = "none";
                 defparam ix33390z43919.tie_off_oe_clock_enable = "false";
                 defparam ix33390z43919.input_register_mode = "none";
    cycloneii_io ix32393z43919 (.combout (i_pixel_int[2]), .padio (i_pixel[2]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix32393z43919.operation_mode = "input";
                 defparam ix32393z43919.output_register_mode = "none";
                 
                 defparam ix32393z43919.tie_off_output_clock_enable = "false";
                 defparam ix32393z43919.oe_register_mode = "none";
                 defparam ix32393z43919.tie_off_oe_clock_enable = "false";
                 defparam ix32393z43919.input_register_mode = "none";
    cycloneii_io ix31396z43919 (.combout (i_pixel_int[1]), .padio (i_pixel[1]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix31396z43919.operation_mode = "input";
                 defparam ix31396z43919.output_register_mode = "none";
                 
                 defparam ix31396z43919.tie_off_output_clock_enable = "false";
                 defparam ix31396z43919.oe_register_mode = "none";
                 defparam ix31396z43919.tie_off_oe_clock_enable = "false";
                 defparam ix31396z43919.input_register_mode = "none";
    cycloneii_io ix30399z43919 (.combout (i_pixel_int[0]), .padio (i_pixel[0]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix30399z43919.operation_mode = "input";
                 defparam ix30399z43919.output_register_mode = "none";
                 
                 defparam ix30399z43919.tie_off_output_clock_enable = "false";
                 defparam ix30399z43919.oe_register_mode = "none";
                 defparam ix30399z43919.tie_off_oe_clock_enable = "false";
                 defparam ix30399z43919.input_register_mode = "none";
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
    cycloneii_io ix18329z43919 (.padio (o_row[2]), .datain (nx18329z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix18329z43919.operation_mode = "output";
                 
                 defparam ix18329z43919.output_register_mode = "none";
                 
                 defparam ix18329z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix18329z43919.oe_register_mode = "none";
                 
                 defparam ix18329z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix18329z43919.input_register_mode = "none";
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
    cycloneii_io ix4807z43919 (.padio (debug_column[0]), .datain (nx4807z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix4807z43919.operation_mode = "output";
                 
                 defparam ix4807z43919.output_register_mode = "none";
                 
                 defparam ix4807z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix4807z43919.oe_register_mode = "none";
                 
                 defparam ix4807z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix4807z43919.input_register_mode = "none";
    cycloneii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_reset_ibuf.operation_mode = "input";
                 
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_reset_ibuf.input_register_mode = "none";
    cycloneii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_clock_ibuf.operation_mode = "input";
                 
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_clock_ibuf.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_3_ (.padio (debug_num_8[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_3_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_3_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_3_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_3_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_2_ (.padio (debug_num_8[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_2_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_2_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_2_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_2_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_1_ (.padio (debug_num_8[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_1_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_1_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_1_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_1_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_0_ (.padio (debug_num_8[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_0_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_0_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_0_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_0_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus10_3_ (.padio (debug_num_7[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus10_3_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus10_3_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_3_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_3_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus10_2_ (.padio (debug_num_7[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus10_2_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus10_2_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_2_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_2_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus10_1_ (.padio (debug_num_7[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus10_1_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus10_1_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_1_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_1_.input_register_mode = "none";
    cycloneii_io debug_num_7_triBus10_0_ (.padio (debug_num_7[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_7_triBus10_0_.operation_mode = "output";
                 
                 defparam debug_num_7_triBus10_0_.output_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_0_.oe_register_mode = "none";
                 
                 defparam debug_num_7_triBus10_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_triBus10_0_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus9_3_ (.padio (debug_num_6[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus9_3_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus9_3_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_3_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_3_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus9_2_ (.padio (debug_num_6[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus9_2_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus9_2_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_2_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_2_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus9_1_ (.padio (debug_num_6[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus9_1_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus9_1_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_1_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_1_.input_register_mode = "none";
    cycloneii_io debug_num_6_triBus9_0_ (.padio (debug_num_6[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_6_triBus9_0_.operation_mode = "output";
                 
                 defparam debug_num_6_triBus9_0_.output_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_0_.oe_register_mode = "none";
                 
                 defparam debug_num_6_triBus9_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_triBus9_0_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus8_3_ (.padio (debug_num_5[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus8_3_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus8_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_3_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus8_2_ (.padio (debug_num_5[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus8_2_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus8_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_2_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus8_1_ (.padio (debug_num_5[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus8_1_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus8_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_1_.input_register_mode = "none";
    cycloneii_io debug_num_5_triBus8_0_ (.padio (debug_num_5[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus8_0_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus8_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus8_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus8_0_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus7_3_ (.padio (debug_num_4[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus7_3_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus7_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_3_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus7_2_ (.padio (debug_num_4[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus7_2_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus7_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_2_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus7_1_ (.padio (debug_num_4[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus7_1_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus7_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_1_.input_register_mode = "none";
    cycloneii_io debug_num_4_triBus7_0_ (.padio (debug_num_4[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus7_0_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus7_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus7_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus7_0_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus6_3_ (.padio (debug_num_3[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus6_3_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus6_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_3_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus6_2_ (.padio (debug_num_3[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus6_2_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus6_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_2_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus6_1_ (.padio (debug_num_3[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus6_1_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus6_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_1_.input_register_mode = "none";
    cycloneii_io debug_num_3_triBus6_0_ (.padio (debug_num_3[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus6_0_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus6_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus6_0_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus5_3_ (.padio (debug_num_2[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus5_3_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus5_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_3_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus5_2_ (.padio (debug_num_2[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus5_2_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus5_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_2_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus5_1_ (.padio (debug_num_2[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus5_1_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus5_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_1_.input_register_mode = "none";
    cycloneii_io debug_num_2_triBus5_0_ (.padio (debug_num_2[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus5_0_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus5_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus5_0_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus4_3_ (.padio (debug_num_1[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus4_3_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus4_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_3_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus4_2_ (.padio (debug_num_1[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus4_2_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus4_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_2_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus4_1_ (.padio (debug_num_1[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus4_1_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus4_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_1_.input_register_mode = "none";
    cycloneii_io debug_num_1_triBus4_0_ (.padio (debug_num_1[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus4_0_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus4_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus4_0_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus3_3_ (.padio (debug_num_0[3]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus3_3_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus3_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_3_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus3_2_ (.padio (debug_num_0[2]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus3_2_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus3_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_2_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus3_1_ (.padio (debug_num_0[1]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus3_1_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus3_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_1_.input_register_mode = "none";
    cycloneii_io debug_num_0_triBus3_0_ (.padio (debug_num_0[0]), .datain (
                 debug_led_red_dup0[17]), .oe (debug_led_red_dup0[17]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus3_0_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus3_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus3_0_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_17_ (.padio (debug_led_red[17]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_17_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_led_red_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_7_ (.padio (debug_column[7]), .datain (
                 debug_column_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_7_.operation_mode = "output";
                 
                 defparam debug_column_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_6_ (.padio (debug_column[6]), .datain (
                 debug_column_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_6_.operation_mode = "output";
                 
                 defparam debug_column_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_5_ (.padio (debug_column[5]), .datain (
                 debug_column_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_5_.operation_mode = "output";
                 
                 defparam debug_column_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_4_ (.padio (debug_column[4]), .datain (
                 debug_column_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_4_.operation_mode = "output";
                 
                 defparam debug_column_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_3_ (.padio (debug_column[3]), .datain (
                 debug_column_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_3_.operation_mode = "output";
                 
                 defparam debug_column_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_2_ (.padio (debug_column[2]), .datain (
                 debug_column_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_2_.operation_mode = "output";
                 
                 defparam debug_column_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_column_obuf_1_ (.padio (debug_column[1]), .datain (
                 debug_column_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_column_obuf_1_.operation_mode = "output";
                 
                 defparam debug_column_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_1_.input_register_mode = "none";
    cycloneii_lcell_comb ix20836z52988 (.combout (f_i_mode[1]), .dataa (
                         nx57127z2), .datab (f_i_mode_next[1]), .datac (
                         i_reset_int), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52988.lut_mask = 16'h4e4e;
    cycloneii_lcell_comb ix64956z52924 (.combout (nx64956z1), .dataa (m_o_valid)
                         , .datab (nx57127z2), .datac (i_reset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64956z52924.lut_mask = 16'hfbfb;
    cycloneii_lcell_comb ix57127z52924 (.combout (nx57127z2), .dataa (f_state[3]
                         ), .datab (f_state[2]), .datac (f_state[1]), .datad (
                         nx63959z1), .cin (1'b0)) ;
                         
                         defparam ix57127z52924.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix35105z52923 (.combout (nx35105z1), .dataa (m_o_valid)
                         , .datab (nx57127z2), .datac (i_reset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix35105z52923.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix57127z52923 (.combout (nx57127z1), .dataa (m_o_valid)
                         , .datab (nx57127z2), .datac (i_reset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix57127z52923.lut_mask = 16'h0b0b;
    cycloneii_lcell_comb ix20836z52987 (.combout (nx20836z1), .dataa (m_o_valid)
                         , .datab (nx57127z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix20836z52987.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix20836z52989 (.combout (f_i_mode[0]), .dataa (
                         m_o_mode[0]), .datab (f_i_mode_next[0]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52989.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52997 (.combout (f_i_row[0]), .dataa (
                         m_o_row[0]), .datab (f_i_row_next[0]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52997.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52996 (.combout (f_i_row[1]), .dataa (
                         m_o_row[1]), .datab (f_i_row_next[1]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52996.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52995 (.combout (f_i_row[2]), .dataa (
                         m_o_row[2]), .datab (f_i_row_next[2]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52995.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52994 (.combout (f_i_row[3]), .dataa (
                         m_o_row[3]), .datab (f_i_row_next[3]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52994.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52993 (.combout (f_i_row[4]), .dataa (
                         m_o_row[4]), .datab (f_i_row_next[4]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52993.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52992 (.combout (f_i_row[5]), .dataa (
                         m_o_row[5]), .datab (f_i_row_next[5]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52992.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52991 (.combout (f_i_row[6]), .dataa (
                         m_o_row[6]), .datab (f_i_row_next[6]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52991.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52990 (.combout (f_i_row[7]), .dataa (
                         m_o_row[7]), .datab (f_i_row_next[7]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52990.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix20836z52986 (.combout (f_i2[0]), .dataa (f_i2_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52986.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52985 (.combout (f_i2[1]), .dataa (f_i2_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52985.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52984 (.combout (f_i2[2]), .dataa (f_i2_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52984.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52983 (.combout (f_i2[3]), .dataa (f_i2_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52983.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52982 (.combout (f_i2[4]), .dataa (f_i2_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52982.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52981 (.combout (f_i2[5]), .dataa (f_i2_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52981.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52980 (.combout (f_i2[6]), .dataa (f_i2_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52980.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52979 (.combout (f_i2[7]), .dataa (f_i2_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image1_2_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52979.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52978 (.combout (f_i1[0]), .dataa (f_i1_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52978.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52977 (.combout (f_i1[1]), .dataa (f_i1_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52977.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52976 (.combout (f_i1[2]), .dataa (f_i1_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52976.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52975 (.combout (f_i1[3]), .dataa (f_i1_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52975.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52974 (.combout (f_i1[4]), .dataa (f_i1_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52974.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52973 (.combout (f_i1[5]), .dataa (f_i1_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52973.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52972 (.combout (f_i1[6]), .dataa (f_i1_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52972.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52971 (.combout (f_i1[7]), .dataa (f_i1_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image1_0_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52971.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52970 (.combout (f_b3[0]), .dataa (f_b3_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52970.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52969 (.combout (f_b3[1]), .dataa (f_b3_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52969.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52968 (.combout (f_b3[2]), .dataa (f_b3_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52968.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52967 (.combout (f_b3[3]), .dataa (f_b3_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52967.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52966 (.combout (f_b3[4]), .dataa (f_b3_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52966.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52965 (.combout (f_b3[5]), .dataa (f_b3_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52965.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52964 (.combout (f_b3[6]), .dataa (f_b3_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52964.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52963 (.combout (f_b3[7]), .dataa (f_b3_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image2_2_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52963.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52962 (.combout (f_b2[0]), .dataa (f_b2_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52962.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52961 (.combout (f_b2[1]), .dataa (f_b2_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52961.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52960 (.combout (f_b2[2]), .dataa (f_b2_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52960.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52959 (.combout (f_b2[3]), .dataa (f_b2_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52959.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52958 (.combout (f_b2[4]), .dataa (f_b2_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52958.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52957 (.combout (f_b2[5]), .dataa (f_b2_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52957.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52956 (.combout (f_b2[6]), .dataa (f_b2_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52956.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52955 (.combout (f_b2[7]), .dataa (f_b2_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image2_1_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52955.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52954 (.combout (f_b1[0]), .dataa (f_b1_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52954.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52953 (.combout (f_b1[1]), .dataa (f_b1_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52953.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52952 (.combout (f_b1[2]), .dataa (f_b1_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52952.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52951 (.combout (f_b1[3]), .dataa (f_b1_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52951.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52950 (.combout (f_b1[4]), .dataa (f_b1_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52950.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52949 (.combout (f_b1[5]), .dataa (f_b1_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52949.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52948 (.combout (f_b1[6]), .dataa (f_b1_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52948.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52947 (.combout (f_b1[7]), .dataa (f_b1_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image2_0_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52947.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52946 (.combout (f_t3[0]), .dataa (f_t3_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52946.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52945 (.combout (f_t3[1]), .dataa (f_t3_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52945.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52944 (.combout (f_t3[2]), .dataa (f_t3_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52944.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52943 (.combout (f_t3[3]), .dataa (f_t3_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52943.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52942 (.combout (f_t3[4]), .dataa (f_t3_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52942.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52941 (.combout (f_t3[5]), .dataa (f_t3_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52941.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52940 (.combout (f_t3[6]), .dataa (f_t3_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52940.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52939 (.combout (f_t3[7]), .dataa (f_t3_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image0_0_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52939.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52938 (.combout (f_t2[0]), .dataa (f_t2_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52938.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52937 (.combout (f_t2[1]), .dataa (f_t2_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52937.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52936 (.combout (f_t2[2]), .dataa (f_t2_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52936.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52935 (.combout (f_t2[3]), .dataa (f_t2_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52935.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52934 (.combout (f_t2[4]), .dataa (f_t2_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52934.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52933 (.combout (f_t2[5]), .dataa (f_t2_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52933.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52932 (.combout (f_t2[6]), .dataa (f_t2_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52932.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52931 (.combout (f_t2[7]), .dataa (f_t2_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image0_1_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52931.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52930 (.combout (f_t1[0]), .dataa (f_t1_next[0]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52930.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52929 (.combout (f_t1[1]), .dataa (f_t1_next[1]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52929.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52928 (.combout (f_t1[2]), .dataa (f_t1_next[2]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52928.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52927 (.combout (f_t1[3]), .dataa (f_t1_next[3]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52927.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52926 (.combout (f_t1[4]), .dataa (f_t1_next[4]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52926.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52925 (.combout (f_t1[5]), .dataa (f_t1_next[5]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52925.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52924 (.combout (f_t1[6]), .dataa (f_t1_next[6]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52923 (.combout (f_t1[7]), .dataa (f_t1_next[7]
                         ), .datab (nx57127z2), .datac (m_o_image0_2_[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix47893z52923 (.combout (o_mode_dup0[0]), .dataa (
                         m_o_mode[0]), .datab (i_reset_int), .datac (
                         p5m_0__dup_86), .datad (p5m_1__dup_82), .cin (1'b0)) ;
                         
                         defparam ix47893z52923.lut_mask = 16'hfeee;
endmodule


module flow ( t1, t2, t3, b1, b2, b3, i1, i2, i_clock, i_reset, i_valid, i_mode, 
              i_row, o_dir, o_edge, o_valid, o_mode, o_row, p_ix258_ix248_nx13, 
              p_ix258_ix249_nx13, p_ix258_ix250_nx13, p_ix258_ix251_nx13, 
              p_ix258_ix252_nx13, p_ix258_ix253_nx13, p_ix258_ix254_nx13, 
              p_ix258_ix255_nx13, p_p5m_1_, p_p5m_0_ ) ;

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
    output p_ix258_ix248_nx13 ;
    output p_ix258_ix249_nx13 ;
    output p_ix258_ix250_nx13 ;
    output p_ix258_ix251_nx13 ;
    output p_ix258_ix252_nx13 ;
    output p_ix258_ix253_nx13 ;
    output p_ix258_ix254_nx13 ;
    output p_ix258_ix255_nx13 ;
    output p_p5m_1_ ;
    output p_p5m_0_ ;

    wire [9:0]p11;
    wire [9:0]p12;
    wire [10:1]p13;
    wire [12:0]p21;
    wire [12:0]p22;
    wire [10:0]p23;
    wire p20;
    wire [12:0]p31;
    wire [10:0]p32;
    wire p35, p30, p41, p45, p40;
    wire [13:0]p43;
    wire [13:0]p4s;
    wire max_fwd, prev_edge;
    wire [13:0]prev_max;
    wire [2:0]max_dir;
    wire [3:0]state;
    wire [8:0]p11_0n0s2;
    wire [8:0]p12_0n0s2;
    wire [8:0]p13_0n0s2;
    wire nx26026z3, nx47310z3, p21_4n0r3_9_, p21_4n0r3_8_, p21_4n0r3_7_, 
         p21_4n0r3_6_, p21_4n0r3_5_, p21_4n0r3_4_, p21_4n0r3_3_, p21_4n0r3_2_, 
         p21_4n0r3_1_, p21_4n0r3_0_;
    wire [11:2]p21_4n0r4;
    wire [12:1]p21_4n0r2;
    wire p22_4n0r3_9_, p22_4n0r3_8_, p22_4n0r3_7_, p22_4n0r3_6_, p22_4n0r3_5_, 
         p22_4n0r3_4_, p22_4n0r3_3_, p22_4n0r3_2_, p22_4n0r3_1_, p22_4n0r3_0_;
    
    wire [11:2]p22_4n0r4;
    wire [12:1]p22_4n0r2;
    wire nx45188z1, nx10173z1, nx10173z2, nx6397z1, nx6397z2, nx15811z1, 
         nx20946z1, nx16808z1, nx21943z1, nx17805z1, nx22940z1, nx18802z1, 
         nx23937z1, nx19799z1, nx24934z1, nx20796z1, nx25931z1, nx21793z1, 
         nx26928z1, nx22790z1, nx27925z1, nx41013z1, nx46148z1, nx14253z1, 
         nx42010z1, nx47145z1, nx13256z1, nx47310z2, nx26026z1, nx5049z1, 
         nx30752z1, nx27830z1, nx25033z1, PWR, nx47310z5, nx47310z1, nx29521z1, 
         nx25836z1, nx26833z1, nx26833z2, nx26026z2, nx25836z2, nx47310z6, 
         nx47310z7, nx47310z8, nx47310z9, nx47310z10, nx47310z11, nx47310z12, 
         nx25836z3, nx26026z4, nx26833z3, nx47310z4, nx28524z1, NOT_state_3_;
    wire [724:0] xmplr_dummy ;




    sub_12_0 p4s_sub12_0 (.a ({p31[11],p31[10],p31[9],p31[8],p31[7],p31[6],
             p31[5],p31[4],p31[3],p31[2],p31[1],p31[0]}), .b ({xmplr_dummy [0],
             p32[10],p32[9],p32[8],p32[7],p32[6],p32[5],p32[4],p32[3],p32[2],
             p32[1],p32[0]}), .d ({p4s[11],p4s[10],p4s[9],p4s[8],p4s[7],p4s[6],
             p4s[5],p4s[4],p4s[3],p4s[2],p4s[1],p4s[0]}), .cout (nx26026z3)) ;
    gt_14_0 ix47310z8933 (.a ({p43[13],p43[12],p43[11],p43[10],p43[9],p43[8],
            p43[7],p43[6],p43[5],p43[4],p43[3],p43[2],p43[1],p43[0]}), .b ({
            prev_max[13],prev_max[12],prev_max[11],prev_max[10],prev_max[9],
            prev_max[8],prev_max[7],prev_max[6],prev_max[5],prev_max[4],
            prev_max[3],prev_max[2],prev_max[1],prev_max[0]}), .d (nx47310z3)) ;
    gt_13_0 ix45188z19900 (.a ({p22[12],p22[11],p22[10],p22[9],p22[8],p22[7],
            p22[6],p22[5],p22[4],p22[3],p22[2],p22[1],p22[0]}), .b ({p21[12],
            p21[11],p21[10],p21[9],p21[8],p21[7],p21[6],p21[5],p21[4],p21[3],
            p21[2],p21[1],p21[0]}), .d (nx45188z1)) ;
    add_12_0 p21_add12_4i1 (.a ({xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3]
             ,p21_4n0r3_9_,p21_4n0r3_8_,p21_4n0r3_7_,p21_4n0r3_6_,p21_4n0r3_5_,
             p21_4n0r3_4_,p21_4n0r3_3_,p21_4n0r3_2_,p21_4n0r3_1_}), .b ({
             xmplr_dummy [4],p21_4n0r4[11],p21_4n0r4[10],p21_4n0r4[9],
             p21_4n0r4[8],p21_4n0r4[7],p21_4n0r4[6],p21_4n0r4[5],p21_4n0r4[4],
             p21_4n0r4[3],p21_4n0r4[2],p12[0]}), .d ({p21_4n0r2[12],
             p21_4n0r2[11],p21_4n0r2[10],p21_4n0r2[9],p21_4n0r2[8],p21_4n0r2[7],
             p21_4n0r2[6],p21_4n0r2[5],p21_4n0r2[4],p21_4n0r2[3],p21_4n0r2[2],
             p21_4n0r2[1]}), .p_rtlcn826 (nx10173z1), .p_rtlcn866 (nx10173z2)) ;
    add_12_1 p22_add12_4i2 (.a ({xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7]
             ,p22_4n0r3_9_,p22_4n0r3_8_,p22_4n0r3_7_,p22_4n0r3_6_,p22_4n0r3_5_,
             p22_4n0r3_4_,p22_4n0r3_3_,p22_4n0r3_2_,p22_4n0r3_1_}), .b ({
             xmplr_dummy [8],p22_4n0r4[11],p22_4n0r4[10],p22_4n0r4[9],
             p22_4n0r4[8],p22_4n0r4[7],p22_4n0r4[6],p22_4n0r4[5],p22_4n0r4[4],
             p22_4n0r4[3],p22_4n0r4[2],p11[0]}), .d ({p22_4n0r2[12],
             p22_4n0r2[11],p22_4n0r2[10],p22_4n0r2[9],p22_4n0r2[8],p22_4n0r2[7],
             p22_4n0r2[6],p22_4n0r2[5],p22_4n0r2[4],p22_4n0r2[3],p22_4n0r2[2],
             p22_4n0r2[1]}), .p_rtlcn907 (nx6397z1), .p_rtlcn947 (nx6397z2)) ;
    add_8_0 p11_add8_0i1 (.a ({t1[7],t1[6],t1[5],t1[4],t1[3],t1[2],t1[1],t1[0]})
            , .b ({t2[7],t2[6],t2[5],t2[4],t2[3],t2[2],t2[1],t2[0]}), .d ({
            p11_0n0s2[7],p11_0n0s2[6],p11_0n0s2[5],p11_0n0s2[4],p11_0n0s2[3],
            p11_0n0s2[2],p11_0n0s2[1],p11_0n0s2[0]}), .cout (p11_0n0s2[8])) ;
    add_9_0 p11_add9_1 (.a ({p11_0n0s2[8],p11_0n0s2[7],p11_0n0s2[6],p11_0n0s2[5]
            ,p11_0n0s2[4],p11_0n0s2[3],p11_0n0s2[2],p11_0n0s2[1],p11_0n0s2[0]})
            , .b ({xmplr_dummy [9],t3[7],t3[6],t3[5],t3[4],t3[3],t3[2],t3[1],
            t3[0]}), .d ({p11[8],p11[7],p11[6],p11[5],p11[4],p11[3],p11[2],
            p11[1],p11[0]}), .cout (p11[9])) ;
    add_8_1 p12_add8_0i2 (.a ({b1[7],b1[6],b1[5],b1[4],b1[3],b1[2],b1[1],b1[0]})
            , .b ({b2[7],b2[6],b2[5],b2[4],b2[3],b2[2],b2[1],b2[0]}), .d ({
            p12_0n0s2[7],p12_0n0s2[6],p12_0n0s2[5],p12_0n0s2[4],p12_0n0s2[3],
            p12_0n0s2[2],p12_0n0s2[1],p12_0n0s2[0]}), .cout (p12_0n0s2[8])) ;
    add_9_1 p12_add9_2 (.a ({p12_0n0s2[8],p12_0n0s2[7],p12_0n0s2[6],p12_0n0s2[5]
            ,p12_0n0s2[4],p12_0n0s2[3],p12_0n0s2[2],p12_0n0s2[1],p12_0n0s2[0]})
            , .b ({xmplr_dummy [10],b3[7],b3[6],b3[5],b3[4],b3[3],b3[2],b3[1],
            b3[0]}), .d ({p12[8],p12[7],p12[6],p12[5],p12[4],p12[3],p12[2],
            p12[1],p12[0]}), .cout (p12[9])) ;
    sub_10_0 p21_sub10_4i3 (.a ({p11[9],p11[8],p11[7],p11[6],p11[5],p11[4],
             p11[3],p11[2],p11[1],p11[0]}), .b ({p12[9],p12[8],p12[7],p12[6],
             p12[5],p12[4],p12[3],p12[2],p12[1],p12[0]}), .d ({p21_4n0r3_9_,
             p21_4n0r3_8_,p21_4n0r3_7_,p21_4n0r3_6_,p21_4n0r3_5_,p21_4n0r3_4_,
             p21_4n0r3_3_,p21_4n0r3_2_,p21_4n0r3_1_,p21_4n0r3_0_}), .cout (
             nx10173z1)) ;
    sub_10_1 p22_sub10_4i5 (.a ({p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],
             p12[3],p12[2],p12[1],p12[0]}), .b ({p11[9],p11[8],p11[7],p11[6],
             p11[5],p11[4],p11[3],p11[2],p11[1],p11[0]}), .d ({p22_4n0r3_9_,
             p22_4n0r3_8_,p22_4n0r3_7_,p22_4n0r3_6_,p22_4n0r3_5_,p22_4n0r3_4_,
             p22_4n0r3_3_,p22_4n0r3_2_,p22_4n0r3_1_,p22_4n0r3_0_}), .cout (
             nx6397z1)) ;
    add_8_2 p13_add8_0i3 (.a ({i1[7],i1[6],i1[5],i1[4],i1[3],i1[2],i1[1],i1[0]})
            , .b ({i2[7],i2[6],i2[5],i2[4],i2[3],i2[2],i2[1],i2[0]}), .d ({
            p13_0n0s2[7],p13_0n0s2[6],p13_0n0s2[5],p13_0n0s2[4],p13_0n0s2[3],
            p13_0n0s2[2],p13_0n0s2[1],p13_0n0s2[0]}), .cout (p13_0n0s2[8])) ;
    add_9_2 p13_add9_3 (.a ({xmplr_dummy [11],p13_0n0s2[8],p13_0n0s2[7],
            p13_0n0s2[6],p13_0n0s2[5],p13_0n0s2[4],p13_0n0s2[3],p13_0n0s2[2],
            p13_0n0s2[1]}), .b ({xmplr_dummy [12],xmplr_dummy [13],
            xmplr_dummy [14],xmplr_dummy [15],xmplr_dummy [16],xmplr_dummy [17],
            xmplr_dummy [18],xmplr_dummy [19],p13_0n0s2[0]}), .d ({p13[9],p13[8]
            ,p13[7],p13[6],p13[5],p13[4],p13[3],p13[2],p13[1]}), .cout (p13[10])
            ) ;
    sub_10_2 p21_sub11_4i4 (.a ({p11[9],p11[8],p11[7],p11[6],p11[5],p11[4],
             p11[3],p11[2],p11[1],p11[0]}), .b ({xmplr_dummy [20],p12[9],p12[8],
             p12[7],p12[6],p12[5],p12[4],p12[3],p12[2],p12[1]}), .d ({
             p21_4n0r4[11],p21_4n0r4[10],p21_4n0r4[9],p21_4n0r4[8],p21_4n0r4[7],
             p21_4n0r4[6],p21_4n0r4[5],p21_4n0r4[4],p21_4n0r4[3],p21_4n0r4[2]})
             , .cout (nx10173z2), .p_p12_0_ (p12[0])) ;
    sub_10_3 p22_sub11_4i6 (.a ({p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],
             p12[3],p12[2],p12[1],p12[0]}), .b ({xmplr_dummy [21],p11[9],p11[8],
             p11[7],p11[6],p11[5],p11[4],p11[3],p11[2],p11[1]}), .d ({
             p22_4n0r4[11],p22_4n0r4[10],p22_4n0r4[9],p22_4n0r4[8],p22_4n0r4[7],
             p22_4n0r4[6],p22_4n0r4[5],p22_4n0r4[4],p22_4n0r4[3],p22_4n0r4[2]})
             , .cout (nx6397z2), .p_p11_0_ (p11[0])) ;
    assign nx25033z1 = ~nx45188z1 ;
    assign PWR = 1 ;
    assign state[0] = ~nx28524z1 ;
    assign NOT_state_3_ = ~state[3] ;
    cycloneii_lcell_ff reg_tmp_o_edge (.regout (o_edge), .datain (prev_edge), .sdata (
                       p41), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx30752z1)) ;
    cycloneii_lcell_ff reg_state_3_ (.regout (state[3]), .datain (state[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx29521z1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_2_ (.regout (state[2]), .datain (state[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx29521z1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_1_ (.regout (state[1]), .datain (state[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx29521z1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_0_ (.regout (nx28524z1), .datain (NOT_state_3_)
                       , .sdata (1'b0), .clk (i_clock), .ena (nx29521z1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_9_ (.regout (prev_max[9]), .datain (p43[9])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_8_ (.regout (prev_max[8]), .datain (p43[8])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_7_ (.regout (prev_max[7]), .datain (p43[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_6_ (.regout (prev_max[6]), .datain (p43[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_5_ (.regout (prev_max[5]), .datain (p43[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_4_ (.regout (prev_max[4]), .datain (p43[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_3_ (.regout (prev_max[3]), .datain (p43[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_2_ (.regout (prev_max[2]), .datain (p43[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_13_ (.regout (prev_max[13]), .datain (
                       p43[13]), .sdata (1'b0), .clk (i_clock), .ena (nx47310z1)
                       , .aclr (1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_12_ (.regout (prev_max[12]), .datain (
                       p43[12]), .sdata (1'b0), .clk (i_clock), .ena (nx47310z1)
                       , .aclr (1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_11_ (.regout (prev_max[11]), .datain (
                       p43[11]), .sdata (1'b0), .clk (i_clock), .ena (nx47310z1)
                       , .aclr (1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_10_ (.regout (prev_max[10]), .datain (
                       p43[10]), .sdata (1'b0), .clk (i_clock), .ena (nx47310z1)
                       , .aclr (1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_1_ (.regout (prev_max[1]), .datain (p43[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_0_ (.regout (prev_max[0]), .datain (p43[0])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (
                       1'b0), .sclr (nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_edge (.regout (prev_edge), .datain (p41), .sdata (
                       1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (1'b0), .sclr (
                       nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p45 (.regout (p45), .datain (p35), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_p43_9_ (.regout (p43[9]), .datain (p4s[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_8_ (.regout (p43[8]), .datain (p4s[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_7_ (.regout (p43[7]), .datain (p4s[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_6_ (.regout (p43[6]), .datain (p4s[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_5_ (.regout (p43[5]), .datain (p4s[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_4_ (.regout (p43[4]), .datain (p4s[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_3_ (.regout (p43[3]), .datain (p4s[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_2_ (.regout (p43[2]), .datain (p4s[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_13_ (.regout (p43[13]), .datain (p4s[13]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_12_ (.regout (p43[12]), .datain (p4s[12]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_11_ (.regout (p43[11]), .datain (p4s[11]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_10_ (.regout (p43[10]), .datain (p4s[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_1_ (.regout (p43[1]), .datain (p4s[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p43_0_ (.regout (p43[0]), .datain (p4s[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p41 (.regout (p41), .datain (nx26026z1), .sdata (1'b0
                       ), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p40 (.regout (p40), .datain (p30), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_p35 (.regout (p35), .datain (nx25033z1), .sdata (1'b0
                       ), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_9_ (.regout (p32[9]), .datain (p23[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_8_ (.regout (p32[8]), .datain (p23[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_7_ (.regout (p32[7]), .datain (p23[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_6_ (.regout (p32[6]), .datain (p23[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_5_ (.regout (p32[5]), .datain (p23[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_4_ (.regout (p32[4]), .datain (p23[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_3_ (.regout (p32[3]), .datain (p23[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_2_ (.regout (p32[2]), .datain (p23[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_10_ (.regout (p32[10]), .datain (p23[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_1_ (.regout (p32[1]), .datain (p23[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p32_0_ (.regout (p32[0]), .datain (p23[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p31_9_ (.regout (p31[9]), .datain (p21[9]), .sdata (
                       p22[9]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_8_ (.regout (p31[8]), .datain (p21[8]), .sdata (
                       p22[8]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_7_ (.regout (p31[7]), .datain (p21[7]), .sdata (
                       p22[7]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_6_ (.regout (p31[6]), .datain (p21[6]), .sdata (
                       p22[6]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_5_ (.regout (p31[5]), .datain (p21[5]), .sdata (
                       p22[5]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_4_ (.regout (p31[4]), .datain (p21[4]), .sdata (
                       p22[4]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_3_ (.regout (p31[3]), .datain (p21[3]), .sdata (
                       p22[3]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_2_ (.regout (p31[2]), .datain (p21[2]), .sdata (
                       p22[2]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_12_ (.regout (p31[12]), .datain (p21[12]), .sdata (
                       p22[12]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_11_ (.regout (p31[11]), .datain (p21[11]), .sdata (
                       p22[11]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_10_ (.regout (p31[10]), .datain (p21[10]), .sdata (
                       p22[10]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_1_ (.regout (p31[1]), .datain (p21[1]), .sdata (
                       p22[1]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p31_0_ (.regout (p31[0]), .datain (p21[0]), .sdata (
                       p22[0]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx45188z1)) ;
    cycloneii_lcell_ff reg_p30 (.regout (p30), .datain (p20), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_p23_9_ (.regout (p23[9]), .datain (p13[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_8_ (.regout (p23[8]), .datain (p13[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_7_ (.regout (p23[7]), .datain (p13[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_6_ (.regout (p23[6]), .datain (p13[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_5_ (.regout (p23[5]), .datain (p13[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_4_ (.regout (p23[4]), .datain (p13[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_3_ (.regout (p23[3]), .datain (p13[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_2_ (.regout (p23[2]), .datain (p13[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_10_ (.regout (p23[10]), .datain (p13[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_1_ (.regout (p23[1]), .datain (p13[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p23_0_ (.regout (p23[0]), .datain (p13_0n0s2[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_9_ (.regout (p22[9]), .datain (p22_4n0r2[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_8_ (.regout (p22[8]), .datain (p22_4n0r2[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_7_ (.regout (p22[7]), .datain (p22_4n0r2[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_6_ (.regout (p22[6]), .datain (p22_4n0r2[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_5_ (.regout (p22[5]), .datain (p22_4n0r2[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_4_ (.regout (p22[4]), .datain (p22_4n0r2[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_3_ (.regout (p22[3]), .datain (p22_4n0r2[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_2_ (.regout (p22[2]), .datain (p22_4n0r2[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_12_ (.regout (p22[12]), .datain (p22_4n0r2[12]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_11_ (.regout (p22[11]), .datain (p22_4n0r2[11]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_10_ (.regout (p22[10]), .datain (p22_4n0r2[10]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_1_ (.regout (p22[1]), .datain (p22_4n0r2[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_0_ (.regout (p22[0]), .datain (p22_4n0r3_0_), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_9_ (.regout (p21[9]), .datain (p21_4n0r2[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_8_ (.regout (p21[8]), .datain (p21_4n0r2[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_7_ (.regout (p21[7]), .datain (p21_4n0r2[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_6_ (.regout (p21[6]), .datain (p21_4n0r2[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_5_ (.regout (p21[5]), .datain (p21_4n0r2[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_4_ (.regout (p21[4]), .datain (p21_4n0r2[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_3_ (.regout (p21[3]), .datain (p21_4n0r2[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_2_ (.regout (p21[2]), .datain (p21_4n0r2[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_12_ (.regout (p21[12]), .datain (p21_4n0r2[12]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_11_ (.regout (p21[11]), .datain (p21_4n0r2[11]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_10_ (.regout (p21[10]), .datain (p21_4n0r2[10]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_1_ (.regout (p21[1]), .datain (p21_4n0r2[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_0_ (.regout (p21[0]), .datain (p21_4n0r3_0_), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p20 (.regout (p20), .datain (i_valid), .sdata (1'b0)
                       , .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_valid (.regout (o_valid), .datain (state[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_fwd (.regout (max_fwd), .datain (p45), .sdata (
                       1'b0), .clk (i_clock), .ena (nx47310z1), .aclr (1'b0), .sclr (
                       nx5049z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_dir_2_ (.regout (max_dir[2]), .datain (nx25836z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_dir_1_ (.regout (max_dir[1]), .datain (nx26833z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_dir_0_ (.regout (max_dir[0]), .datain (nx27830z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (nx47310z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p5m_1_ (.regout (p_p5m_1_), .datain (nx14253z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p5m_0_ (.regout (p_p5m_0_), .datain (nx13256z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p4m_1_ (.regout (nx14253z1), .datain (nx46148z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p4m_0_ (.regout (nx13256z1), .datain (nx47145z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p3m_1_ (.regout (nx46148z1), .datain (nx41013z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p3m_0_ (.regout (nx47145z1), .datain (nx42010z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p2m_1_ (.regout (nx41013z1), .datain (i_mode[1]
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix259_reg_p2m_0_ (.regout (nx42010z1), .datain (i_mode[0]
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_7_ (.regout (p_ix258_ix248_nx13), .datain (
                       nx20946z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_6_ (.regout (p_ix258_ix249_nx13), .datain (
                       nx21943z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_5_ (.regout (p_ix258_ix250_nx13), .datain (
                       nx22940z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_4_ (.regout (p_ix258_ix251_nx13), .datain (
                       nx23937z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_3_ (.regout (p_ix258_ix252_nx13), .datain (
                       nx24934z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_2_ (.regout (p_ix258_ix253_nx13), .datain (
                       nx25931z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_1_ (.regout (p_ix258_ix254_nx13), .datain (
                       nx26928z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_0_ (.regout (p_ix258_ix255_nx13), .datain (
                       nx27925z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_7_ (.regout (nx20946z1), .datain (nx15811z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_6_ (.regout (nx21943z1), .datain (nx16808z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_5_ (.regout (nx22940z1), .datain (nx17805z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_4_ (.regout (nx23937z1), .datain (nx18802z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_3_ (.regout (nx24934z1), .datain (nx19799z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_2_ (.regout (nx25931z1), .datain (nx20796z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_1_ (.regout (nx26928z1), .datain (nx21793z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p3r_0_ (.regout (nx27925z1), .datain (nx22790z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_7_ (.regout (nx15811z1), .datain (i_row[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_6_ (.regout (nx16808z1), .datain (i_row[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_5_ (.regout (nx17805z1), .datain (i_row[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_4_ (.regout (nx18802z1), .datain (i_row[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_3_ (.regout (nx19799z1), .datain (i_row[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_2_ (.regout (nx20796z1), .datain (i_row[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_1_ (.regout (nx21793z1), .datain (i_row[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p2r_0_ (.regout (nx22790z1), .datain (i_row[0])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix47310z52926 (.combout (nx47310z4), .dataa (nx47310z5)
                         , .datab (nx47310z10), .datac (nx47310z11), .datad (
                         nx47310z12), .cin (1'b0)) ;
                         
                         defparam ix47310z52926.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix26833z52925 (.combout (nx26833z3), .dataa (state[1])
                         , .datab (nx28524z1), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26833z52925.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix26026z52925 (.combout (nx26026z4), .dataa (p4s[9]), .datab (
                         p4s[8]), .datac (p4s[7]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix26026z52925.lut_mask = 16'heaea;
    cycloneii_lcell_comb ix25836z52925 (.combout (nx25836z3), .dataa (max_dir[2]
                         ), .datab (state[1]), .datac (nx28524z1), .datad (
                         nx47310z2), .cin (1'b0)) ;
                         
                         defparam ix25836z52925.lut_mask = 16'hc0aa;
    cycloneii_lcell_comb ix47310z52934 (.combout (nx47310z12), .dataa (p43[1]), 
                         .datab (p43[0]), .datac (prev_max[1]), .datad (
                         prev_max[0]), .cin (1'b0)) ;
                         
                         defparam ix47310z52934.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix47310z52933 (.combout (nx47310z11), .dataa (p43[3]), 
                         .datab (p43[2]), .datac (prev_max[3]), .datad (
                         prev_max[2]), .cin (1'b0)) ;
                         
                         defparam ix47310z52933.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix47310z52932 (.combout (nx47310z10), .dataa (p43[5]), 
                         .datab (p43[4]), .datac (prev_max[5]), .datad (
                         prev_max[4]), .cin (1'b0)) ;
                         
                         defparam ix47310z52932.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix47310z52931 (.combout (nx47310z9), .dataa (p43[7]), .datab (
                         p43[6]), .datac (prev_max[7]), .datad (prev_max[6]), .cin (
                         1'b0)) ;
                         defparam ix47310z52931.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix47310z52930 (.combout (nx47310z8), .dataa (p43[9]), .datab (
                         p43[8]), .datac (prev_max[9]), .datad (prev_max[8]), .cin (
                         1'b0)) ;
                         defparam ix47310z52930.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix47310z52929 (.combout (nx47310z7), .dataa (p43[11]), 
                         .datab (p43[10]), .datac (prev_max[11]), .datad (
                         prev_max[10]), .cin (1'b0)) ;
                         
                         defparam ix47310z52929.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix47310z52928 (.combout (nx47310z6), .dataa (p43[13]), 
                         .datab (p43[12]), .datac (prev_max[13]), .datad (
                         prev_max[12]), .cin (1'b0)) ;
                         
                         defparam ix47310z52928.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix25836z52924 (.combout (nx25836z2), .dataa (max_dir[2]
                         ), .datab (state[3]), .datac (nx47310z2), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix25836z52924.lut_mask = 16'heaea;
    cycloneii_lcell_comb ix26026z52924 (.combout (nx26026z2), .dataa (p31[12]), 
                         .datab (p30), .datac (nx26026z3), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26026z52924.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26833z52924 (.combout (nx26833z2), .dataa (state[3])
                         , .datab (state[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26833z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix26833z52923 (.combout (nx26833z1), .dataa (max_dir[1]
                         ), .datab (nx47310z2), .datac (nx26833z2), .datad (
                         nx26833z3), .cin (1'b0)) ;
                         
                         defparam ix26833z52923.lut_mask = 16'hea22;
    cycloneii_lcell_comb ix25836z52923 (.combout (nx25836z1), .dataa (state[2])
                         , .datab (nx28524z1), .datac (nx25836z2), .datad (
                         nx25836z3), .cin (1'b0)) ;
                         
                         defparam ix25836z52923.lut_mask = 16'hff40;
    cycloneii_lcell_comb ix29521z52924 (.combout (nx29521z1), .dataa (i_reset), 
                         .datab (p40), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix29521z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix47310z52923 (.combout (nx47310z1), .dataa (i_reset), 
                         .datab (p40), .datac (state[3]), .datad (nx47310z2), .cin (
                         1'b0)) ;
                         defparam ix47310z52923.lut_mask = 16'hfffb;
    cycloneii_lcell_comb ix47310z52927 (.combout (nx47310z5), .dataa (nx47310z6)
                         , .datab (nx47310z7), .datac (nx47310z8), .datad (
                         nx47310z9), .cin (1'b0)) ;
                         
                         defparam ix47310z52927.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix27830z52923 (.combout (nx27830z1), .dataa (p45), .datab (
                         nx28524z1), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix27830z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix30752z52923 (.combout (nx30752z1), .dataa (state[3])
                         , .datab (nx47310z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix30752z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix5049z52923 (.combout (nx5049z1), .dataa (i_reset), .datab (
                         p40), .datac (state[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5049z52923.lut_mask = 16'hfbfb;
    cycloneii_lcell_comb ix26026z52923 (.combout (nx26026z1), .dataa (p4s[11]), 
                         .datab (p4s[10]), .datac (nx26026z2), .datad (nx26026z4
                         ), .cin (1'b0)) ;
                         
                         defparam ix26026z52923.lut_mask = 16'hf0e0;
    cycloneii_lcell_comb ix47310z52924 (.combout (nx47310z2), .dataa (p45), .datab (
                         max_fwd), .datac (nx47310z3), .datad (nx47310z4), .cin (
                         1'b0)) ;
                         defparam ix47310z52924.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix28128z52923 (.combout (p4s[12]), .dataa (p31[12]), .datab (
                         nx26026z3), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix28128z52923.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix29125z52923 (.combout (p4s[13]), .dataa (p31[12]), .datab (
                         nx26026z3), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix29125z52923.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix63886z52923 (.combout (o_dir[0]), .dataa (o_edge), .datab (
                         max_dir[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix63886z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix62889z52923 (.combout (o_dir[1]), .dataa (o_edge), .datab (
                         max_dir[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix62889z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix61892z52923 (.combout (o_dir[2]), .dataa (o_edge), .datab (
                         max_dir[2]), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix61892z52923.lut_mask = 16'h8888;
endmodule


module sub_10_3 ( cin, a, b, d, cout, p_p11_0_ ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;
    input p_p11_0_ ;

    wire nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, nx46946z12, 
         nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx46946z29, 
         nx_sub_10_3_vcc_net;
    wire [18:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .cout (nx23445z2), .dataa (
                         a[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_sub_10_3_vcc_net), .cin (nx46946z3)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'ha5fa;
                         
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
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_3_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
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
         nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx46946z29, 
         nx_sub_10_2_vcc_net;
    wire [18:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .cout (nx23445z2), .dataa (
                         a[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_sub_10_2_vcc_net), .cin (nx46946z3)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'ha5fa;
                         
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
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
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


module add_12_1 ( cin, a, b, d, cout, p_rtlcn907, p_rtlcn947 ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_rtlcn907 ;
    input p_rtlcn947 ;

    wire nx63795z32, nx63795z29, nx63795z26, nx63795z23, nx63795z20, nx63795z17, 
         nx63795z14, nx63795z11, nx63795z8, nx63795z6, nx63795z4, 
         nx_add_12_1_vcc_net;
    wire [13:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z4), .dataa (
                         b[10]), .datab (p_rtlcn907), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z6)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h69b2;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    assign nx_add_12_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z8), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z11)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z11), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z14)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z14), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z17)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.combout (d[5]), .cout (nx63795z17), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z20)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.combout (d[4]), .cout (nx63795z20), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z23)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.combout (d[3]), .cout (nx63795z23), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z26)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.combout (d[2]), .cout (nx63795z26), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z29)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.combout (d[1]), .cout (nx63795z29), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z32)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.combout (d[0]), .cout (nx63795z32), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix63795z52935.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .dataa (p_rtlcn907), .datab (
                         p_rtlcn947), .datac (1'b1), .datad (nx_add_12_1_vcc_net
                         ), .cin (nx63795z4)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'h9600;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z6), .dataa (
                         b[9]), .datab (p_rtlcn907), .datac (1'b1), .datad (
                         nx_add_12_1_vcc_net), .cin (nx63795z8)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h69b2;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
endmodule


module add_12_0 ( cin, a, b, d, cout, p_rtlcn826, p_rtlcn866 ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_rtlcn826 ;
    input p_rtlcn866 ;

    wire nx63795z32, nx63795z29, nx63795z26, nx63795z23, nx63795z20, nx63795z17, 
         nx63795z14, nx63795z11, nx63795z8, nx63795z6, nx63795z4, 
         nx_add_12_0_vcc_net;
    wire [13:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z4), .dataa (
                         b[10]), .datab (p_rtlcn826), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z6)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h69b2;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    assign nx_add_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z8), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z11)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z11), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z14)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z14), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z17)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.combout (d[5]), .cout (nx63795z17), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z20)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.combout (d[4]), .cout (nx63795z20), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z23)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.combout (d[3]), .cout (nx63795z23), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z26)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.combout (d[2]), .cout (nx63795z26), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z29)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.combout (d[1]), .cout (nx63795z29), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z32)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.combout (d[0]), .cout (nx63795z32), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix63795z52935.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .dataa (p_rtlcn826), .datab (
                         p_rtlcn866), .datac (1'b1), .datad (nx_add_12_0_vcc_net
                         ), .cin (nx63795z4)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'h9600;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z6), .dataa (
                         b[9]), .datab (p_rtlcn826), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z8)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h69b2;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
endmodule


module gt_13_0 ( a, b, d ) ;

    input [12:0]a ;
    input [12:0]b ;
    output d ;

    wire nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, nx100z19, 
         nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, nx_gt_13_0_vcc_net;
    wire [26:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[12]), .datab (
                         a[12]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hb200;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_13_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[11]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[10]), .datab (
                         a[10]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z31)) ;
                         defparam ix100z52933.lut_mask = 16'h00d4;
                         
                         defparam ix100z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52934 (.cout (nx100z31), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z34)) ;
                         defparam ix100z52934.lut_mask = 16'h00d4;
                         
                         defparam ix100z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52935 (.cout (nx100z34), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         nx100z37)) ;
                         defparam ix100z52935.lut_mask = 16'h00d4;
                         
                         defparam ix100z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52936 (.cout (nx100z37), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_13_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52936.lut_mask = 16'h0022;
endmodule


module gt_14_0 ( a, b, d ) ;

    input [13:0]a ;
    input [13:0]b ;
    output d ;

    wire nx100z40, nx100z37, nx100z34, nx100z31, nx100z28, nx100z25, nx100z22, 
         nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
         nx_gt_14_0_vcc_net;
    wire [28:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[13]), .datab (
                         a[13]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hb200;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_14_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[12]), .datab (
                         a[12]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[11]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[10]), .datab (
                         a[10]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z31)) ;
                         defparam ix100z52933.lut_mask = 16'h00d4;
                         
                         defparam ix100z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52934 (.cout (nx100z31), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z34)) ;
                         defparam ix100z52934.lut_mask = 16'h00d4;
                         
                         defparam ix100z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52935 (.cout (nx100z34), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z37)) ;
                         defparam ix100z52935.lut_mask = 16'h00d4;
                         
                         defparam ix100z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52936 (.cout (nx100z37), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         nx100z40)) ;
                         defparam ix100z52936.lut_mask = 16'h00d4;
                         
                         defparam ix100z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52937 (.cout (nx100z40), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_14_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52937.lut_mask = 16'h0022;
endmodule


module sub_12_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;

    wire nx63795z33, nx63795z30, nx63795z27, nx63795z24, nx63795z21, nx63795z18, 
         nx63795z15, nx63795z12, nx63795z9, nx63795z6, nx63795z3, nx23445z2, 
         nx_sub_12_0_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .cout (nx23445z2), .dataa (
                         a[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z3)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'ha5fa;
                         
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
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
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


module memory ( i_valid, i_reset, i_pixel, i_clock, o_valid, o_mode, o_column, 
                o_row, o_image0_0_, o_image0_1_, o_image0_2_, o_image1_0_, 
                o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, o_image2_2_, 
                p_first_bubble, p_mem_data_7_, p_mem_data_6_, p_mem_data_5_, 
                p_mem_data_4_, p_mem_data_3_, p_mem_data_2_, p_mem_data_1_, 
                p_mem_data_0_, px1, px23, p_rtlc2n264 ) ;

    input i_valid ;
    input i_reset ;
    input [7:0]i_pixel ;
    input i_clock ;
    output o_valid ;
    output [1:0]o_mode ;
    output [7:0]o_column ;
    output [7:0]o_row ;
    output [7:0]o_image0_0_ ;
    output [7:0]o_image0_1_ ;
    output [7:0]o_image0_2_ ;
    output [7:0]o_image1_0_ ;
    output [7:0]o_image1_1_ ;
    output [7:0]o_image1_2_ ;
    output [7:0]o_image2_0_ ;
    output [7:0]o_image2_1_ ;
    output [7:0]o_image2_2_ ;
    input p_first_bubble ;
    input p_mem_data_7_ ;
    input p_mem_data_6_ ;
    input p_mem_data_5_ ;
    input p_mem_data_4_ ;
    input p_mem_data_3_ ;
    input p_mem_data_2_ ;
    input p_mem_data_1_ ;
    input p_mem_data_0_ ;
    output px1 ;
    output px23 ;
    output p_rtlc2n264 ;

    wire [7:0]o_column_rename1119;
    wire [2:0]mem_wrn;
    wire [2:0]mem_wrn_current;
    wire busySignal, busySignalDelayed;
    wire [7:1]column;
    wire [7:0]row;
    wire o_image1_1__7__rename1071, o_image1_1__6__rename1072, 
         o_image1_1__5__rename1073, o_image1_1__4__rename1074, 
         o_image1_1__3__rename1075, o_image1_1__2__rename1076, 
         o_image1_1__1__rename1077, o_image1_1__dup0_0_;
    wire [7:0]mem_q_0_;
    wire [7:0]mem_q_1_;
    wire [7:0]mem_q_2_;
    wire nx8852z1, not_first_bubble, nx15763z2, nx16760z1, nx60567z2, nx47386z2, 
         nx33254z1, nx57224z1, nx41103z2, nx41103z3, nx60567z1, b_1_, 
         b_1__dup_360, nx47386z1, nx5021z1, nx4024z1, nx3027z1, nx2030z1, 
         nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, nx56377z1, nx57374z1, 
         nx58371z1, nx59368z1, nx60365z1, nx61362z1, nx62359z1, nx60567z5, 
         nx60567z4, nx41103z1, nx47386z3, NOT_b_0_, NOT_b_0__dup_361, nx47386z4, 
         nx47386z5, nx47386z6, nx8852z2, nx60567z3, nx62359z2, nx61362z2, 
         nx60365z2, nx59368z2, nx58371z2, nx57374z2, nx56377z2, nx56377z3, 
         nx55380z2, nx55380z3, nx63578z2, nx64575z2, nx36z2, nx1033z2, nx2030z2, 
         nx3027z2, nx4024z2, nx4024z3, nx5021z2, nx5021z3, nx16760z2, nx39109z1, 
         nx15763z1;
    wire [513:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_row (.clock (i_clock), .q ({row[7],row[6],
                       row[5],row[4],row[3],row[2],row[1],row[0]}), .sclear (
                       nx8852z1), .p_i_valid (i_valid), .p_NOT_rtlc2n263 (
                       nx47386z3)) ;
    modgen_counter_8_1 modgen_counter_column (.clock (i_clock), .q ({column[7],
                       column[6],column[5],column[4],column[3],column[2],
                       column[1],o_column_rename1119[0]}), .clk_en (nx47386z1), 
                       .sclear (p_rtlc2n264), .cnt_en (p_first_bubble), .px1 (
                       px1), .px23 (px23)) ;
    ram_dq_8_0 u_mem1_mem (.wr_data1 ({p_mem_data_7_,p_mem_data_6_,p_mem_data_5_
               ,p_mem_data_4_,p_mem_data_3_,p_mem_data_2_,p_mem_data_1_,
               p_mem_data_0_}), .rd_data1 ({mem_q_0_[7],mem_q_0_[6],mem_q_0_[5],
               mem_q_0_[4],mem_q_0_[3],mem_q_0_[2],mem_q_0_[1],mem_q_0_[0]}), .addr1 (
               {column[7],column[6],column[5],column[4],column[3],column[2],
               column[1],o_column_rename1119[0]}), .wr_clk1 (i_clock), .wr_ena1 (
               mem_wrn[0])) ;
    ram_dq_8_1 u_mem2_mem (.wr_data1 ({p_mem_data_7_,p_mem_data_6_,p_mem_data_5_
               ,p_mem_data_4_,p_mem_data_3_,p_mem_data_2_,p_mem_data_1_,
               p_mem_data_0_}), .rd_data1 ({mem_q_1_[7],mem_q_1_[6],mem_q_1_[5],
               mem_q_1_[4],mem_q_1_[3],mem_q_1_[2],mem_q_1_[1],mem_q_1_[0]}), .addr1 (
               {column[7],column[6],column[5],column[4],column[3],column[2],
               column[1],o_column_rename1119[0]}), .wr_clk1 (i_clock), .wr_ena1 (
               mem_wrn[1])) ;
    ram_dq_8_2 u_mem3_mem (.wr_data1 ({p_mem_data_7_,p_mem_data_6_,p_mem_data_5_
               ,p_mem_data_4_,p_mem_data_3_,p_mem_data_2_,p_mem_data_1_,
               p_mem_data_0_}), .rd_data1 ({mem_q_2_[7],mem_q_2_[6],mem_q_2_[5],
               mem_q_2_[4],mem_q_2_[3],mem_q_2_[2],mem_q_2_[1],mem_q_2_[0]}), .addr1 (
               {column[7],column[6],column[5],column[4],column[3],column[2],
               column[1],o_column_rename1119[0]}), .wr_clk1 (i_clock), .wr_ena1 (
               mem_wrn[2])) ;
    assign o_mode[1] = ~i_reset ;
    assign not_first_bubble = ~p_first_bubble ;
    assign o_column[1] = ~column[1] ;
    cycloneii_lcell_ff reg_o_valid (.regout (o_valid), .datain (nx60567z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       not_first_bubble), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_7_ (.regout (o_row[7]), .datain (row[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_6_ (.regout (o_row[6]), .datain (row[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_5_ (.regout (o_row[5]), .datain (row[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_4_ (.regout (o_row[4]), .datain (row[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_3_ (.regout (o_row[3]), .datain (row[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_2_ (.regout (o_row[2]), .datain (row[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_1_ (.regout (o_row[1]), .datain (row[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_row_0_ (.regout (o_row[0]), .datain (row[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_wrn_current_2_ (.regout (mem_wrn_current[2]), .datain (
                       mem_wrn_current[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx41103z1), .aclr (1'b0), .sclr (nx41103z3), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_mem_wrn_current_1_ (.regout (mem_wrn_current[1]), .datain (
                       mem_wrn_current[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx41103z1), .aclr (1'b0), .sclr (nx41103z3), .sload (1'b0
                       )) ;
    assign nx39109z1 = 1 ;
    cycloneii_lcell_ff reg_mem_wrn_current_0_ (.regout (mem_wrn_current[0]), .datain (
                       mem_wrn_current[2]), .sdata (nx39109z1), .clk (i_clock), 
                       .ena (nx41103z1), .aclr (1'b0), .sclr (nx8852z1), .sload (
                       nx41103z2)) ;
    cycloneii_lcell_ff reg_mem_wrn_2_ (.regout (mem_wrn[2]), .datain (
                       mem_wrn_current[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (nx16760z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_wrn_1_ (.regout (mem_wrn[1]), .datain (
                       mem_wrn_current[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (nx16760z1), .sload (1'b0)) ;
    assign nx15763z1 = 1 ;
    cycloneii_lcell_ff reg_mem_wrn_0_ (.regout (mem_wrn[0]), .datain (
                       mem_wrn_current[0]), .sdata (nx15763z1), .clk (i_clock), 
                       .ena (1'b1), .aclr (1'b0), .sclr (nx47386z1), .sload (
                       nx15763z2)) ;
    cycloneii_lcell_ff reg_busySignalDelayed (.regout (busySignalDelayed), .datain (
                       busySignal), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_busySignal (.regout (busySignal), .datain (nx33254z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (nx47386z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_buffer2_2__7_ (.regout (o_image2_2_[7]), .datain (
                       mem_q_2_[7]), .sdata (p_mem_data_7_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__6_ (.regout (o_image2_2_[6]), .datain (
                       mem_q_2_[6]), .sdata (p_mem_data_6_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__5_ (.regout (o_image2_2_[5]), .datain (
                       mem_q_2_[5]), .sdata (p_mem_data_5_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__4_ (.regout (o_image2_2_[4]), .datain (
                       mem_q_2_[4]), .sdata (p_mem_data_4_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__3_ (.regout (o_image2_2_[3]), .datain (
                       mem_q_2_[3]), .sdata (p_mem_data_3_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__2_ (.regout (o_image2_2_[2]), .datain (
                       mem_q_2_[2]), .sdata (p_mem_data_2_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__1_ (.regout (o_image2_2_[1]), .datain (
                       mem_q_2_[1]), .sdata (p_mem_data_1_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__0_ (.regout (o_image2_2_[0]), .datain (
                       mem_q_2_[0]), .sdata (p_mem_data_0_), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_1__7_ (.regout (o_image2_1_[7]), .datain (
                       nx62359z1), .sdata (mem_q_1_[7]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__6_ (.regout (o_image2_1_[6]), .datain (
                       nx61362z1), .sdata (mem_q_1_[6]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__5_ (.regout (o_image2_1_[5]), .datain (
                       nx60365z1), .sdata (mem_q_1_[5]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__4_ (.regout (o_image2_1_[4]), .datain (
                       nx59368z1), .sdata (mem_q_1_[4]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__3_ (.regout (o_image2_1_[3]), .datain (
                       nx58371z1), .sdata (mem_q_1_[3]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__2_ (.regout (o_image2_1_[2]), .datain (
                       nx57374z1), .sdata (mem_q_1_[2]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__1_ (.regout (o_image2_1_[1]), .datain (
                       nx56377z1), .sdata (mem_q_1_[1]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_1__0_ (.regout (o_image2_1_[0]), .datain (
                       nx55380z1), .sdata (mem_q_1_[0]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_360)) ;
    cycloneii_lcell_ff reg_buffer2_0__7_ (.regout (o_image2_0_[7]), .datain (
                       nx63578z1), .sdata (mem_q_0_[7]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__6_ (.regout (o_image2_0_[6]), .datain (
                       nx64575z1), .sdata (mem_q_0_[6]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__5_ (.regout (o_image2_0_[5]), .datain (
                       nx36z1), .sdata (mem_q_0_[5]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__4_ (.regout (o_image2_0_[4]), .datain (
                       nx1033z1), .sdata (mem_q_0_[4]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__3_ (.regout (o_image2_0_[3]), .datain (
                       nx2030z1), .sdata (mem_q_0_[3]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__2_ (.regout (o_image2_0_[2]), .datain (
                       nx3027z1), .sdata (mem_q_0_[2]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__1_ (.regout (o_image2_0_[1]), .datain (
                       nx4024z1), .sdata (mem_q_0_[1]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer2_0__0_ (.regout (o_image2_0_[0]), .datain (
                       nx5021z1), .sdata (mem_q_0_[0]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__7_ (.regout (o_image1_2_[7]), .datain (
                       o_image2_2_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__6_ (.regout (o_image1_2_[6]), .datain (
                       o_image2_2_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__5_ (.regout (o_image1_2_[5]), .datain (
                       o_image2_2_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__4_ (.regout (o_image1_2_[4]), .datain (
                       o_image2_2_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__3_ (.regout (o_image1_2_[3]), .datain (
                       o_image2_2_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__2_ (.regout (o_image1_2_[2]), .datain (
                       o_image2_2_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__1_ (.regout (o_image1_2_[1]), .datain (
                       o_image2_2_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_2__0_ (.regout (o_image1_2_[0]), .datain (
                       o_image2_2_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__7_ (.regout (o_image1_1__7__rename1071), .datain (
                       o_image2_1_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__6_ (.regout (o_image1_1__6__rename1072), .datain (
                       o_image2_1_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__5_ (.regout (o_image1_1__5__rename1073), .datain (
                       o_image2_1_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__4_ (.regout (o_image1_1__4__rename1074), .datain (
                       o_image2_1_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__3_ (.regout (o_image1_1__3__rename1075), .datain (
                       o_image2_1_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__2_ (.regout (o_image1_1__2__rename1076), .datain (
                       o_image2_1_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__1_ (.regout (o_image1_1__1__rename1077), .datain (
                       o_image2_1_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__0_ (.regout (o_image1_1__dup0_0_), .datain (
                       o_image2_1_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__7_ (.regout (o_image1_0_[7]), .datain (
                       o_image2_0_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__6_ (.regout (o_image1_0_[6]), .datain (
                       o_image2_0_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__5_ (.regout (o_image1_0_[5]), .datain (
                       o_image2_0_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__4_ (.regout (o_image1_0_[4]), .datain (
                       o_image2_0_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__3_ (.regout (o_image1_0_[3]), .datain (
                       o_image2_0_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__2_ (.regout (o_image1_0_[2]), .datain (
                       o_image2_0_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__1_ (.regout (o_image1_0_[1]), .datain (
                       o_image2_0_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_0__0_ (.regout (o_image1_0_[0]), .datain (
                       o_image2_0_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__7_ (.regout (o_image0_2_[7]), .datain (
                       o_image1_2_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__6_ (.regout (o_image0_2_[6]), .datain (
                       o_image1_2_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__5_ (.regout (o_image0_2_[5]), .datain (
                       o_image1_2_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__4_ (.regout (o_image0_2_[4]), .datain (
                       o_image1_2_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__3_ (.regout (o_image0_2_[3]), .datain (
                       o_image1_2_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__2_ (.regout (o_image0_2_[2]), .datain (
                       o_image1_2_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__1_ (.regout (o_image0_2_[1]), .datain (
                       o_image1_2_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_2__0_ (.regout (o_image0_2_[0]), .datain (
                       o_image1_2_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__7_ (.regout (o_image0_1_[7]), .datain (
                       o_image1_1__7__rename1071), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__6_ (.regout (o_image0_1_[6]), .datain (
                       o_image1_1__6__rename1072), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__5_ (.regout (o_image0_1_[5]), .datain (
                       o_image1_1__5__rename1073), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__4_ (.regout (o_image0_1_[4]), .datain (
                       o_image1_1__4__rename1074), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__3_ (.regout (o_image0_1_[3]), .datain (
                       o_image1_1__3__rename1075), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__2_ (.regout (o_image0_1_[2]), .datain (
                       o_image1_1__2__rename1076), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__1_ (.regout (o_image0_1_[1]), .datain (
                       o_image1_1__1__rename1077), .sdata (1'b0), .clk (i_clock)
                       , .ena (p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__0_ (.regout (o_image0_1_[0]), .datain (
                       o_image1_1__dup0_0_), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__7_ (.regout (o_image0_0_[7]), .datain (
                       o_image1_0_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__6_ (.regout (o_image0_0_[6]), .datain (
                       o_image1_0_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__5_ (.regout (o_image0_0_[5]), .datain (
                       o_image1_0_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__4_ (.regout (o_image0_0_[4]), .datain (
                       o_image1_0_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__3_ (.regout (o_image0_0_[3]), .datain (
                       o_image1_0_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__2_ (.regout (o_image0_0_[2]), .datain (
                       o_image1_0_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__1_ (.regout (o_image0_0_[1]), .datain (
                       o_image1_0_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_0__0_ (.regout (o_image0_0_[0]), .datain (
                       o_image1_0_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_comb ix16760z52924 (.combout (nx16760z2), .dataa (
                         mem_wrn_current[2]), .datab (mem_wrn_current[1]), .datac (
                         mem_wrn_current[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16760z52924.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix5021z52925 (.combout (nx5021z3), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (mem_q_1_[0]), .cin (1'b0)) ;
                         
                         defparam ix5021z52925.lut_mask = 16'h4000;
    cycloneii_lcell_comb ix5021z52924 (.combout (nx5021z2), .dataa (
                         p_mem_data_0_), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z52924.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix4024z52925 (.combout (nx4024z3), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (mem_q_1_[1]), .cin (1'b0)) ;
                         
                         defparam ix4024z52925.lut_mask = 16'h4000;
    cycloneii_lcell_comb ix4024z52924 (.combout (nx4024z2), .dataa (
                         p_mem_data_1_), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z52924.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix3027z52924 (.combout (nx3027z2), .dataa (nx60567z2), 
                         .datab (mem_q_1_[2]), .datac (mem_q_2_[2]), .datad (
                         NOT_b_0_), .cin (1'b0)) ;
                         
                         defparam ix3027z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix2030z52924 (.combout (nx2030z2), .dataa (nx60567z2), 
                         .datab (mem_q_1_[3]), .datac (mem_q_2_[3]), .datad (
                         NOT_b_0_), .cin (1'b0)) ;
                         
                         defparam ix2030z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix1033z52924 (.combout (nx1033z2), .dataa (nx60567z2), 
                         .datab (mem_q_1_[4]), .datac (mem_q_2_[4]), .datad (
                         NOT_b_0_), .cin (1'b0)) ;
                         
                         defparam ix1033z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix36z52924 (.combout (nx36z2), .dataa (nx60567z2), .datab (
                         mem_q_1_[5]), .datac (mem_q_2_[5]), .datad (NOT_b_0_), 
                         .cin (1'b0)) ;
                         defparam ix36z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix64575z52924 (.combout (nx64575z2), .dataa (nx60567z2)
                         , .datab (mem_q_1_[6]), .datac (mem_q_2_[6]), .datad (
                         NOT_b_0_), .cin (1'b0)) ;
                         
                         defparam ix64575z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix63578z52925 (.combout (nx63578z2), .dataa (nx60567z2)
                         , .datab (mem_q_1_[7]), .datac (mem_q_2_[7]), .datad (
                         NOT_b_0_), .cin (1'b0)) ;
                         
                         defparam ix63578z52925.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix55380z52925 (.combout (nx55380z3), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (mem_q_0_[0]), .cin (1'b0)) ;
                         
                         defparam ix55380z52925.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix55380z52924 (.combout (nx55380z2), .dataa (
                         p_mem_data_0_), .datab (mem_wrn_current[1]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55380z52924.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix56377z52925 (.combout (nx56377z3), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (mem_q_0_[1]), .cin (1'b0)) ;
                         
                         defparam ix56377z52925.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix56377z52924 (.combout (nx56377z2), .dataa (
                         p_mem_data_1_), .datab (mem_wrn_current[1]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix56377z52924.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix57374z52924 (.combout (nx57374z2), .dataa (nx60567z2)
                         , .datab (mem_q_0_[2]), .datac (mem_q_2_[2]), .datad (
                         NOT_b_0__dup_361), .cin (1'b0)) ;
                         
                         defparam ix57374z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix58371z52924 (.combout (nx58371z2), .dataa (nx60567z2)
                         , .datab (mem_q_0_[3]), .datac (mem_q_2_[3]), .datad (
                         NOT_b_0__dup_361), .cin (1'b0)) ;
                         
                         defparam ix58371z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix59368z52924 (.combout (nx59368z2), .dataa (nx60567z2)
                         , .datab (mem_q_0_[4]), .datac (mem_q_2_[4]), .datad (
                         NOT_b_0__dup_361), .cin (1'b0)) ;
                         
                         defparam ix59368z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix60365z52924 (.combout (nx60365z2), .dataa (nx60567z2)
                         , .datab (mem_q_0_[5]), .datac (mem_q_2_[5]), .datad (
                         NOT_b_0__dup_361), .cin (1'b0)) ;
                         
                         defparam ix60365z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix61362z52924 (.combout (nx61362z2), .dataa (nx60567z2)
                         , .datab (mem_q_0_[6]), .datac (mem_q_2_[6]), .datad (
                         NOT_b_0__dup_361), .cin (1'b0)) ;
                         
                         defparam ix61362z52924.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix62359z52925 (.combout (nx62359z2), .dataa (nx60567z2)
                         , .datab (mem_q_0_[7]), .datac (mem_q_2_[7]), .datad (
                         NOT_b_0__dup_361), .cin (1'b0)) ;
                         
                         defparam ix62359z52925.lut_mask = 16'hf088;
    cycloneii_lcell_comb ix60567z52925 (.combout (nx60567z3), .dataa (row[4]), .datab (
                         row[3]), .datac (row[2]), .datad (row[1]), .cin (1'b0)
                         ) ;
                         defparam ix60567z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix8852z52924 (.combout (nx8852z2), .dataa (row[3]), .datab (
                         row[2]), .datac (row[1]), .datad (row[0]), .cin (1'b0)
                         ) ;
                         defparam ix8852z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix47386z52928 (.combout (nx47386z6), .dataa (row[7]), .datab (
                         row[6]), .datac (row[5]), .datad (row[4]), .cin (1'b0)
                         ) ;
                         defparam ix47386z52928.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix47386z52927 (.combout (nx47386z5), .dataa (column[4])
                         , .datab (column[3]), .datac (column[2]), .datad (
                         column[1]), .cin (1'b0)) ;
                         
                         defparam ix47386z52927.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix47386z52926 (.combout (nx47386z4), .dataa (
                         o_column_rename1119[0]), .datab (column[7]), .datac (
                         column[6]), .datad (column[5]), .cin (1'b0)) ;
                         
                         defparam ix47386z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix62359z52924 (.combout (NOT_b_0__dup_361), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52924.lut_mask = 16'hd5d5;
    cycloneii_lcell_comb ix63578z52924 (.combout (NOT_b_0_), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52924.lut_mask = 16'hb3b3;
    cycloneii_lcell_comb ix47386z52925 (.combout (nx47386z3), .dataa (
                         p_first_bubble), .datab (nx47386z4), .datac (nx47386z5)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z52925.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix41103z52923 (.combout (nx41103z1), .dataa (i_valid), 
                         .datab (nx8852z1), .datac (nx41103z2), .datad (
                         nx47386z3), .cin (1'b0)) ;
                         
                         defparam ix41103z52923.lut_mask = 16'hfcfd;
    cycloneii_lcell_comb ix60567z52926 (.combout (nx60567z4), .dataa (column[6])
                         , .datab (column[5]), .datac (column[4]), .datad (
                         nx60567z5), .cin (1'b0)) ;
                         
                         defparam ix60567z52926.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix60567z52927 (.combout (nx60567z5), .dataa (column[3])
                         , .datab (column[2]), .datac (column[1]), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix60567z52927.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix62359z52923 (.combout (nx62359z1), .dataa (
                         p_mem_data_7_), .datab (nx60567z2), .datac (
                         NOT_b_0__dup_361), .datad (nx62359z2), .cin (1'b0)) ;
                         
                         defparam ix62359z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix61362z52923 (.combout (nx61362z1), .dataa (
                         p_mem_data_6_), .datab (nx60567z2), .datac (
                         NOT_b_0__dup_361), .datad (nx61362z2), .cin (1'b0)) ;
                         
                         defparam ix61362z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix60365z52923 (.combout (nx60365z1), .dataa (
                         p_mem_data_5_), .datab (nx60567z2), .datac (
                         NOT_b_0__dup_361), .datad (nx60365z2), .cin (1'b0)) ;
                         
                         defparam ix60365z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix59368z52923 (.combout (nx59368z1), .dataa (
                         p_mem_data_4_), .datab (nx60567z2), .datac (
                         NOT_b_0__dup_361), .datad (nx59368z2), .cin (1'b0)) ;
                         
                         defparam ix59368z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix58371z52923 (.combout (nx58371z1), .dataa (
                         p_mem_data_3_), .datab (nx60567z2), .datac (
                         NOT_b_0__dup_361), .datad (nx58371z2), .cin (1'b0)) ;
                         
                         defparam ix58371z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix57374z52923 (.combout (nx57374z1), .dataa (
                         p_mem_data_2_), .datab (nx60567z2), .datac (
                         NOT_b_0__dup_361), .datad (nx57374z2), .cin (1'b0)) ;
                         
                         defparam ix57374z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix56377z52923 (.combout (nx56377z1), .dataa (
                         mem_q_2_[1]), .datab (NOT_b_0__dup_361), .datac (
                         nx56377z2), .datad (nx56377z3), .cin (1'b0)) ;
                         
                         defparam ix56377z52923.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix55380z52923 (.combout (nx55380z1), .dataa (
                         mem_q_2_[0]), .datab (NOT_b_0__dup_361), .datac (
                         nx55380z2), .datad (nx55380z3), .cin (1'b0)) ;
                         
                         defparam ix55380z52923.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix63578z52923 (.combout (nx63578z1), .dataa (
                         p_mem_data_7_), .datab (nx60567z2), .datac (NOT_b_0_), 
                         .datad (nx63578z2), .cin (1'b0)) ;
                         
                         defparam ix63578z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix64575z52923 (.combout (nx64575z1), .dataa (
                         p_mem_data_6_), .datab (nx60567z2), .datac (NOT_b_0_), 
                         .datad (nx64575z2), .cin (1'b0)) ;
                         
                         defparam ix64575z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix36z52923 (.combout (nx36z1), .dataa (p_mem_data_5_), 
                         .datab (nx60567z2), .datac (NOT_b_0_), .datad (nx36z2)
                         , .cin (1'b0)) ;
                         
                         defparam ix36z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix1033z52923 (.combout (nx1033z1), .dataa (
                         p_mem_data_4_), .datab (nx60567z2), .datac (NOT_b_0_), 
                         .datad (nx1033z2), .cin (1'b0)) ;
                         
                         defparam ix1033z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix2030z52923 (.combout (nx2030z1), .dataa (
                         p_mem_data_3_), .datab (nx60567z2), .datac (NOT_b_0_), 
                         .datad (nx2030z2), .cin (1'b0)) ;
                         
                         defparam ix2030z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix3027z52923 (.combout (nx3027z1), .dataa (
                         p_mem_data_2_), .datab (nx60567z2), .datac (NOT_b_0_), 
                         .datad (nx3027z2), .cin (1'b0)) ;
                         
                         defparam ix3027z52923.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix4024z52923 (.combout (nx4024z1), .dataa (mem_q_2_[1])
                         , .datab (NOT_b_0_), .datac (nx4024z2), .datad (
                         nx4024z3), .cin (1'b0)) ;
                         
                         defparam ix4024z52923.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix5021z52923 (.combout (nx5021z1), .dataa (mem_q_2_[0])
                         , .datab (NOT_b_0_), .datac (nx5021z2), .datad (
                         nx5021z3), .cin (1'b0)) ;
                         
                         defparam ix5021z52923.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix47386z52923 (.combout (nx47386z1), .dataa (i_valid), 
                         .datab (i_reset), .datac (nx47386z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47386z52923.lut_mask = 16'hfdfd;
    cycloneii_lcell_comb ix62359z52926 (.combout (b_1__dup_360), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52926.lut_mask = 16'h1515;
    cycloneii_lcell_comb ix63578z52926 (.combout (b_1_), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52926.lut_mask = 16'h1313;
    cycloneii_lcell_comb ix60567z52923 (.combout (nx60567z1), .dataa (o_valid), 
                         .datab (column[7]), .datac (nx60567z2), .datad (
                         nx60567z4), .cin (1'b0)) ;
                         
                         defparam ix60567z52923.lut_mask = 16'hfaea;
    cycloneii_lcell_comb ix41103z52925 (.combout (nx41103z3), .dataa (i_reset), 
                         .datab (nx47386z2), .datac (nx41103z2), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix41103z52925.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix41103z52924 (.combout (nx41103z2), .dataa (i_valid), 
                         .datab (mem_wrn_current[2]), .datac (mem_wrn_current[1]
                         ), .datad (mem_wrn_current[0]), .cin (1'b0)) ;
                         
                         defparam ix41103z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix57224z52923 (.combout (nx57224z1), .dataa (
                         mem_wrn_current[2]), .datab (nx60567z2), .datac (1'b1)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57224z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix33254z52923 (.combout (nx33254z1), .dataa (i_valid), 
                         .datab (busySignal), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33254z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix47386z52924 (.combout (nx47386z2), .dataa (nx47386z3)
                         , .datab (nx47386z6), .datac (nx8852z2), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix47386z52924.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix60567z52924 (.combout (nx60567z2), .dataa (row[7]), .datab (
                         row[6]), .datac (row[5]), .datad (nx60567z3), .cin (
                         1'b0)) ;
                         defparam ix60567z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix16760z52923 (.combout (nx16760z1), .dataa (i_valid), 
                         .datab (i_reset), .datac (nx47386z2), .datad (nx16760z2
                         ), .cin (1'b0)) ;
                         
                         defparam ix16760z52923.lut_mask = 16'hfffd;
    cycloneii_lcell_comb ix15763z52924 (.combout (nx15763z2), .dataa (i_reset), 
                         .datab (nx47386z2), .datac (nx41103z2), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix15763z52924.lut_mask = 16'h1010;
    cycloneii_lcell_comb ix47386z52929 (.combout (p_rtlc2n264), .dataa (i_reset)
                         , .datab (p_first_bubble), .datac (nx47386z4), .datad (
                         nx47386z5), .cin (1'b0)) ;
                         
                         defparam ix47386z52929.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix6651z52923 (.combout (o_column[2]), .dataa (column[2]
                         ), .datab (column[1]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix6651z52923.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix7648z52923 (.combout (o_column[3]), .dataa (column[3]
                         ), .datab (column[2]), .datac (column[1]), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix7648z52923.lut_mask = 16'ha9a9;
    cycloneii_lcell_comb ix8645z52923 (.combout (o_column[4]), .dataa (column[4]
                         ), .datab (column[3]), .datac (column[2]), .datad (
                         column[1]), .cin (1'b0)) ;
                         
                         defparam ix8645z52923.lut_mask = 16'haaa9;
    cycloneii_lcell_comb ix9642z52923 (.combout (o_column[5]), .dataa (column[5]
                         ), .datab (column[4]), .datac (nx60567z5), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix9642z52923.lut_mask = 16'ha9a9;
    cycloneii_lcell_comb ix10639z52923 (.combout (o_column[6]), .dataa (
                         column[6]), .datab (column[5]), .datac (column[4]), .datad (
                         nx60567z5), .cin (1'b0)) ;
                         
                         defparam ix10639z52923.lut_mask = 16'haaa9;
    cycloneii_lcell_comb ix11636z52923 (.combout (o_column[7]), .dataa (
                         column[7]), .datab (nx60567z4), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix11636z52923.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix15976z52923 (.combout (o_mode[0]), .dataa (i_valid), 
                         .datab (i_reset), .datac (busySignal), .datad (
                         busySignalDelayed), .cin (1'b0)) ;
                         
                         defparam ix15976z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix8852z52923 (.combout (nx8852z1), .dataa (i_reset), .datab (
                         nx8852z2), .datac (nx47386z6), .datad (nx47386z3), .cin (
                         1'b0)) ;
                         defparam ix8852z52923.lut_mask = 16'haaea;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename1021;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1021), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29483.width_a = 8;
               
               defparam ix64056z29483.widthad_a = 8;
               
               defparam ix64056z29483.numwords_a = 256;
               
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29483.address_aclr_a = "NONE";
               
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               
               defparam ix64056z29483.indata_aclr_a = "NONE";
               
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               
               defparam ix64056z29483.width_byteena_a = 1;
               
               defparam ix64056z29483.width_b = 8;
               
               defparam ix64056z29483.widthad_b = 8;
               
               defparam ix64056z29483.numwords_b = 256;
               
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29483.indata_aclr_b = "NONE";
               
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               
               defparam ix64056z29483.width_byteena_b = 1;
               
               defparam ix64056z29483.address_aclr_b = "NONE";
               
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29483.byte_size = 8;
               
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29483.ram_block_type = "AUTO";
               
               defparam ix64056z29483.init_file = "UNUSED";
               
               defparam ix64056z29483.init_file_layout = "UNUSED";
               
               defparam ix64056z29483.maximum_depth = 0;
               
               defparam ix64056z29483.intended_device_family = "Stratix";
               
               defparam ix64056z29483.lpm_hint = "UNUSED";
               
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign ena1_rename1021 = 1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename991;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename991), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29482.width_a = 8;
               
               defparam ix64056z29482.widthad_a = 8;
               
               defparam ix64056z29482.numwords_a = 256;
               
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29482.address_aclr_a = "NONE";
               
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               
               defparam ix64056z29482.indata_aclr_a = "NONE";
               
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               
               defparam ix64056z29482.width_byteena_a = 1;
               
               defparam ix64056z29482.width_b = 8;
               
               defparam ix64056z29482.widthad_b = 8;
               
               defparam ix64056z29482.numwords_b = 256;
               
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29482.indata_aclr_b = "NONE";
               
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               
               defparam ix64056z29482.width_byteena_b = 1;
               
               defparam ix64056z29482.address_aclr_b = "NONE";
               
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29482.byte_size = 8;
               
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29482.ram_block_type = "AUTO";
               
               defparam ix64056z29482.init_file = "UNUSED";
               
               defparam ix64056z29482.init_file_layout = "UNUSED";
               
               defparam ix64056z29482.maximum_depth = 0;
               
               defparam ix64056z29482.intended_device_family = "Stratix";
               
               defparam ix64056z29482.lpm_hint = "UNUSED";
               
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign ena1_rename991 = 1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename961;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename961), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29481.width_a = 8;
               
               defparam ix64056z29481.widthad_a = 8;
               
               defparam ix64056z29481.numwords_a = 256;
               
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29481.address_aclr_a = "NONE";
               
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               
               defparam ix64056z29481.indata_aclr_a = "NONE";
               
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               
               defparam ix64056z29481.width_byteena_a = 1;
               
               defparam ix64056z29481.width_b = 8;
               
               defparam ix64056z29481.widthad_b = 8;
               
               defparam ix64056z29481.numwords_b = 256;
               
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29481.indata_aclr_b = "NONE";
               
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               
               defparam ix64056z29481.width_byteena_b = 1;
               
               defparam ix64056z29481.address_aclr_b = "NONE";
               
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29481.byte_size = 8;
               
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29481.ram_block_type = "AUTO";
               
               defparam ix64056z29481.init_file = "UNUSED";
               
               defparam ix64056z29481.init_file_layout = "UNUSED";
               
               defparam ix64056z29481.maximum_depth = 0;
               
               defparam ix64056z29481.intended_device_family = "Stratix";
               
               defparam ix64056z29481.lpm_hint = "UNUSED";
               
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign ena1_rename961 = 1 ;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, px1, px23 ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    output px1 ;
    output px23 ;

    wire nx58250z14, nx52268z1, nx58250z12, nx53265z1, nx58250z10, nx54262z1, 
         nx58250z8, nx55259z1, nx58250z6, nx56256z1, nx58250z4, nx57253z1, 
         nx58250z2, nx58250z1, nx_modgen_counter_8_1_vcc_net;
    wire [44:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (px23), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (px1), .sdata (1'b0), .clk (
                       clock), .ena (px23), .aclr (1'b0), .sclr (sclear), .sload (
                       1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z10)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (px1), .cout (nx58250z14), .dataa (
                         q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (px23), .dataa (clk_en), .datab (
                         sclear), .datac (cnt_en), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'ha8a8;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_i_valid, p_NOT_rtlc2n263 ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    input p_i_valid ;
    input p_NOT_rtlc2n263 ;

    wire nx57253z3, nx51271z1, nx58250z14, nx52268z1, nx58250z12, nx53265z1, 
         nx58250z10, nx54262z1, nx58250z8, nx55259z1, nx58250z6, nx56256z1, 
         nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
         nx_modgen_counter_8_0_vcc_net;
    wire [44:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z10)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (sclear), .datab (
                         p_NOT_rtlc2n263), .datac (p_i_valid), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57253z52923.lut_mask = 16'habab;
endmodule

