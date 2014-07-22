//
// Verilog description for cell kirsch, 
// Tue Jul 22 01:30:19 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, o_image0_0_, o_image0_1_, o_image0_2_, 
                o_image1_0_, o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, 
                o_image2_2_, debug_key, debug_switch, debug_column, 
                debug_led_red, debug_led_grn, debug_valid, debug_num_0, 
                debug_num_1, debug_num_2, debug_num_3, debug_num_4, debug_num_5, 
                debug_num_6, debug_num_7, debug_num_8 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
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
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [7:0]debug_column ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output debug_valid ;
    output [2:0]debug_num_0 ;
    output [2:0]debug_num_1 ;
    output [7:0]debug_num_2 ;
    output [12:0]debug_num_3 ;
    output [12:0]debug_num_4 ;
    output [13:0]debug_num_5 ;
    output debug_num_6 ;
    output debug_num_7 ;
    output debug_num_8 ;

    wire o_valid_dup0, o_edge_dup0;
    wire [2:0]o_dir_dup0;
    wire [7:0]o_row_dup0;
    wire [7:0]debug_column_dup0;
    wire debug_valid_dup0;
    wire [2:0]debug_num_0_dup0;
    wire [2:0]debug_num_1_dup0;
    wire [7:0]debug_num_2_dup0;
    wire [3:0]f_state;
    wire [0:0]m_o_mode;
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
    wire [1:0]f_o_mode;
    wire [1:0]f_i_mode_next;
    wire [7:0]o_image0_dup0;
    wire o_image0_1__dup0_7_, o_image0_1__dup0_6_, o_image0_1__dup0_5_, 
         o_image0_1__dup0_4_, o_image0_1__dup0_3_, o_image0_1__dup0_2_, 
         o_image0_1__dup0_1_, o_image0_1__dup0_0_, o_image0_2__dup0_7_, 
         o_image0_2__dup0_6_, o_image0_2__dup0_5_, o_image0_2__dup0_4_, 
         o_image0_2__dup0_3_, o_image0_2__dup0_2_, o_image0_2__dup0_1_, 
         o_image0_2__dup0_0_;
    wire [7:0]o_image1_dup0;
    wire o_image1_1__dup0_7_, o_image1_1__dup0_6_, o_image1_1__dup0_5_, 
         o_image1_1__dup0_4_, o_image1_1__dup0_3_, o_image1_1__dup0_2_, 
         o_image1_1__dup0_1_, o_image1_1__dup0_0_, o_image1_2__dup0_7_, 
         o_image1_2__dup0_6_, o_image1_2__dup0_5_, o_image1_2__dup0_4_, 
         o_image1_2__dup0_3_, o_image1_2__dup0_2_, o_image1_2__dup0_1_, 
         o_image1_2__dup0_0_;
    wire [7:0]o_image2_dup0;
    wire o_image2_1__dup0_7_, o_image2_1__dup0_6_, o_image2_1__dup0_5_, 
         o_image2_1__dup0_4_, o_image2_1__dup0_3_, o_image2_1__dup0_2_, 
         o_image2_1__dup0_1_, o_image2_1__dup0_0_, o_image2_2__dup0_7_, 
         o_image2_2__dup0_6_, o_image2_2__dup0_5_, o_image2_2__dup0_4_, 
         o_image2_2__dup0_3_, o_image2_2__dup0_2_, o_image2_2__dup0_1_, 
         o_image2_2__dup0_0_, i_clock_int, i_reset_int, i_valid_int;
    wire [7:0]i_pixel_int;
    wire [1:0]o_mode_dup0;
    wire [7:0]f_t1;
    wire [7:0]f_t2;
    wire [7:0]f_t3;
    wire [7:0]f_b1;
    wire [7:0]f_b2;
    wire [7:0]f_b3;
    wire f_i2_6_, f_i2_4_, f_i2_2_, f_i2_0_;
    wire [7:0]f_i_row;
    wire [1:0]f_i_mode;
    wire [17:17]debug_led_red_dup0;
    wire nx24031z1, nx57127z1, nx15183z1, nx15183z2, nx61965z1, nx62962z1, 
         nx63959z1, nx64956z1, ix300_ix290_nx7_repl0, ix300_ix291_nx7_repl0, 
         ix300_ix292_nx7_repl0, ix300_ix293_nx7_repl0, ix300_ix294_nx7_repl0, 
         ix300_ix295_nx7_repl0, ix300_ix296_nx7_repl0, ix300_ix297_nx7_repl0, 
         ix301_ix298_nx7_repl0, ix301_ix299_nx7_repl0, p20_repl0, nx57127z2;
    wire [9409:0] xmplr_dummy ;




    flow u_flow (.t1 ({f_t1[7],f_t1[6],f_t1[5],f_t1[4],f_t1[3],f_t1[2],f_t1[1],
         f_t1[0]}), .t2 ({f_t2[7],f_t2[6],f_t2[5],f_t2[4],f_t2[3],f_t2[2],
         f_t2[1],f_t2[0]}), .t3 ({f_t3[7],f_t3[6],f_t3[5],f_t3[4],f_t3[3],
         f_t3[2],f_t3[1],f_t3[0]}), .b1 ({f_b1[7],f_b1[6],f_b1[5],f_b1[4],
         f_b1[3],f_b1[2],f_b1[1],f_b1[0]}), .b2 ({f_b2[7],f_b2[6],f_b2[5],
         f_b2[4],f_b2[3],f_b2[2],f_b2[1],f_b2[0]}), .b3 ({f_b3[7],f_b3[6],
         f_b3[5],f_b3[4],f_b3[3],f_b3[2],f_b3[1],f_b3[0]}), .i2 ({
         xmplr_dummy [0],f_i2_6_,xmplr_dummy [1],f_i2_4_,xmplr_dummy [2],f_i2_2_
         ,xmplr_dummy [3],f_i2_0_}), .i_clock (i_clock_int), .i_reset (
         i_reset_int), .o_dir ({o_dir_dup0[2],o_dir_dup0[1],o_dir_dup0[0]}), .o_edge (
         o_edge_dup0), .o_valid (o_valid_dup0), .o_mode ({f_o_mode[1],
         f_o_mode[0]}), .o_row ({o_row_dup0[7],o_row_dup0[6],o_row_dup0[5],
         o_row_dup0[4],o_row_dup0[3],o_row_dup0[2],o_row_dup0[1],o_row_dup0[0]})
         , .p_f_i1_next_7_ (f_i1_next[7]), .p_rtlcs0 (nx15183z2), .p_o_image1_0__dup0_7_ (
         o_image1_dup0[7]), .p_f_i1_next_6_ (f_i1_next[6]), .p_o_image1_0__dup0_6_ (
         o_image1_dup0[6]), .p_f_i1_next_5_ (f_i1_next[5]), .p_o_image1_0__dup0_5_ (
         o_image1_dup0[5]), .p_f_i1_next_4_ (f_i1_next[4]), .p_o_image1_0__dup0_4_ (
         o_image1_dup0[4]), .p_f_i1_next_3_ (f_i1_next[3]), .p_o_image1_0__dup0_3_ (
         o_image1_dup0[3]), .p_f_i1_next_2_ (f_i1_next[2]), .p_o_image1_0__dup0_2_ (
         o_image1_dup0[2]), .p_f_i1_next_1_ (f_i1_next[1]), .p_o_image1_0__dup0_1_ (
         o_image1_dup0[1]), .p_f_i1_next_0_ (f_i1_next[0]), .p_o_image1_0__dup0_0_ (
         o_image1_dup0[0]), .p_f_i2_next_7_ (f_i2_next[7]), .p_o_image1_2__dup0_7_ (
         o_image1_2__dup0_7_), .p_f_i2_next_5_ (f_i2_next[5]), .p_o_image1_2__dup0_5_ (
         o_image1_2__dup0_5_), .p_f_i2_next_3_ (f_i2_next[3]), .p_o_image1_2__dup0_3_ (
         o_image1_2__dup0_3_), .p_f_i2_next_1_ (f_i2_next[1]), .p_o_image1_2__dup0_1_ (
         o_image1_2__dup0_1_), .p_ix300_ix290_nx7_repl0 (ix300_ix290_nx7_repl0)
         , .p_ix300_ix291_nx7_repl0 (ix300_ix291_nx7_repl0), .p_ix300_ix292_nx7_repl0 (
         ix300_ix292_nx7_repl0), .p_ix300_ix293_nx7_repl0 (ix300_ix293_nx7_repl0
         ), .p_ix300_ix294_nx7_repl0 (ix300_ix294_nx7_repl0), .p_ix300_ix295_nx7_repl0 (
         ix300_ix295_nx7_repl0), .p_ix300_ix296_nx7_repl0 (ix300_ix296_nx7_repl0
         ), .p_ix300_ix297_nx7_repl0 (ix300_ix297_nx7_repl0), .p_ix301_ix298_nx7_repl0 (
         ix301_ix298_nx7_repl0), .p_ix301_ix299_nx7_repl0 (ix301_ix299_nx7_repl0
         ), .p_p20_repl0 (p20_repl0)) ;
    memory_notri u_memory (.p_i_pixel ({i_pixel_int[7],i_pixel_int[6],
                 i_pixel_int[5],i_pixel_int[4],i_pixel_int[3],i_pixel_int[2],
                 i_pixel_int[1],i_pixel_int[0]}), .p_o_row ({m_o_row[7],
                 m_o_row[6],m_o_row[5],m_o_row[4],m_o_row[3],m_o_row[2],
                 m_o_row[1],m_o_row[0]}), .p_o_image0_9_7 ({o_image0_dup0[0],
                 o_image0_dup0[7]}), .p_o_image0_9_1 ({o_image0_dup0[1]}), .p_o_image0_9_2 (
                 {o_image0_dup0[2]}), .p_o_image0_9_3 ({o_image0_dup0[3]}), .p_o_image0_9_4 (
                 {o_image0_dup0[4]}), .p_o_image0_9_5 ({o_image0_dup0[5]}), .p_o_image0_9_6 (
                 {o_image0_dup0[6]}), .p_o_image0_8_7 ({o_image0_1__dup0_0_,
                 o_image0_1__dup0_7_}), .p_o_image0_8_1 ({o_image0_1__dup0_1_})
                 , .p_o_image0_8_2 ({o_image0_1__dup0_2_}), .p_o_image0_8_3 ({
                 o_image0_1__dup0_3_}), .p_o_image0_8_4 ({o_image0_1__dup0_4_})
                 , .p_o_image0_8_5 ({o_image0_1__dup0_5_}), .p_o_image0_8_6 ({
                 o_image0_1__dup0_6_}), .p_o_image0_7 ({o_image0_2__dup0_0_,
                 o_image0_2__dup0_7_}), .p_o_image0_1 ({o_image0_2__dup0_1_}), .p_o_image0_2 (
                 {o_image0_2__dup0_2_}), .p_o_image0_3 ({o_image0_2__dup0_3_}), 
                 .p_o_image0_4 ({o_image0_2__dup0_4_}), .p_o_image0_5 ({
                 o_image0_2__dup0_5_}), .p_o_image0_6 ({o_image0_2__dup0_6_}), .p_o_image1_9_7 (
                 {o_image1_dup0[0],o_image1_dup0[7]}), .p_o_image1_9_1 ({
                 o_image1_dup0[1]}), .p_o_image1_9_2 ({o_image1_dup0[2]}), .p_o_image1_9_3 (
                 {o_image1_dup0[3]}), .p_o_image1_9_4 ({o_image1_dup0[4]}), .p_o_image1_9_5 (
                 {o_image1_dup0[5]}), .p_o_image1_9_6 ({o_image1_dup0[6]}), .p_o_image1_8_7 (
                 {o_image1_1__dup0_0_,o_image1_1__dup0_7_}), .p_o_image1_8_1 ({
                 o_image1_1__dup0_1_}), .p_o_image1_8_2 ({o_image1_1__dup0_2_})
                 , .p_o_image1_8_3 ({o_image1_1__dup0_3_}), .p_o_image1_8_4 ({
                 o_image1_1__dup0_4_}), .p_o_image1_8_5 ({o_image1_1__dup0_5_})
                 , .p_o_image1_8_6 ({o_image1_1__dup0_6_}), .p_o_image1_7 ({
                 o_image1_2__dup0_0_,o_image1_2__dup0_7_}), .p_o_image1_1 ({
                 o_image1_2__dup0_1_}), .p_o_image1_2 ({o_image1_2__dup0_2_}), .p_o_image1_3 (
                 {o_image1_2__dup0_3_}), .p_o_image1_4 ({o_image1_2__dup0_4_}), 
                 .p_o_image1_5 ({o_image1_2__dup0_5_}), .p_o_image1_6 ({
                 o_image1_2__dup0_6_}), .p_o_image2_9_7 ({o_image2_dup0[0],
                 o_image2_dup0[7]}), .p_o_image2_9_1 ({o_image2_dup0[1]}), .p_o_image2_9_2 (
                 {o_image2_dup0[2]}), .p_o_image2_9_3 ({o_image2_dup0[3]}), .p_o_image2_9_4 (
                 {o_image2_dup0[4]}), .p_o_image2_9_5 ({o_image2_dup0[5]}), .p_o_image2_9_6 (
                 {o_image2_dup0[6]}), .p_o_image2_8_7 ({o_image2_1__dup0_0_,
                 o_image2_1__dup0_7_}), .p_o_image2_8_1 ({o_image2_1__dup0_1_})
                 , .p_o_image2_8_2 ({o_image2_1__dup0_2_}), .p_o_image2_8_3 ({
                 o_image2_1__dup0_3_}), .p_o_image2_8_4 ({o_image2_1__dup0_4_})
                 , .p_o_image2_8_5 ({o_image2_1__dup0_5_}), .p_o_image2_8_6 ({
                 o_image2_1__dup0_6_}), .p_o_image2_7 ({o_image2_2__dup0_0_,
                 o_image2_2__dup0_7_}), .p_o_image2_1 ({o_image2_2__dup0_1_}), .p_o_image2_2 (
                 {o_image2_2__dup0_2_}), .p_o_image2_3 ({o_image2_2__dup0_3_}), 
                 .p_o_image2_4 ({o_image2_2__dup0_4_}), .p_o_image2_5 ({
                 o_image2_2__dup0_5_}), .p_o_image2_6 ({o_image2_2__dup0_6_}), .p_o_valid (
                 m_o_valid), .p_o_column ({debug_column_dup0[7],
                 debug_column_dup0[6],debug_column_dup0[5],debug_column_dup0[4],
                 debug_column_dup0[3],debug_column_dup0[2],debug_column_dup0[1],
                 debug_column_dup0[0]}), .p_debug_num_1 ({debug_num_1_dup0[2],
                 debug_num_1_dup0[1],debug_num_1_dup0[0]}), .p_o_mode ({
                 xmplr_dummy [4],m_o_mode[0]}), .p_debug_valid_rtlc2_100_and_2 (
                 {debug_valid_dup0}), .p_i_valid_rtlc2_54_or_1 ({i_valid_int}), 
                 .p_i_reset (i_reset_int), .p_debug_num_0 ({debug_num_0_dup0[2],
                 debug_num_0_dup0[1],debug_num_0_dup0[0]}), .p_debug_num_2 ({
                 debug_num_2_dup0[7],debug_num_2_dup0[6],debug_num_2_dup0[5],
                 debug_num_2_dup0[4],debug_num_2_dup0[3],debug_num_2_dup0[2],
                 debug_num_2_dup0[1],debug_num_2_dup0[0]}), .p_i_clock (
                 i_clock_int), .p_debug_led_red_dup0_17_ (debug_led_red_dup0[17]
                 ), .p_rtlc13n197 (nx15183z1), .p_f_i_mode_next_1__repl0 (
                 f_i_mode_next[1]), .p_f_i_mode_next_0__repl0 (f_i_mode_next[0])
                 ) ;
    assign o_mode_dup0[1] = ~i_reset_int ;
    assign debug_led_red_dup0[17] = 0 ;
    stratixii_io u_memory_ix1311z7237 (.padio (debug_num_8), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_ix1311z7237.operation_mode = "output";
                 
                 defparam u_memory_ix1311z7237.output_register_mode = "none";
                 
                 defparam u_memory_ix1311z7237.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_ix1311z7237.oe_register_mode = "none";
                 
                 defparam u_memory_ix1311z7237.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_ix1311z7237.input_register_mode = "none";
    stratixii_io u_memory_ix1312z7237 (.padio (debug_num_7), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_ix1312z7237.operation_mode = "output";
                 
                 defparam u_memory_ix1312z7237.output_register_mode = "none";
                 
                 defparam u_memory_ix1312z7237.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_ix1312z7237.oe_register_mode = "none";
                 
                 defparam u_memory_ix1312z7237.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_ix1312z7237.input_register_mode = "none";
    stratixii_io u_memory_ix1313z7237 (.padio (debug_num_6), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_ix1313z7237.operation_mode = "output";
                 
                 defparam u_memory_ix1313z7237.output_register_mode = "none";
                 
                 defparam u_memory_ix1313z7237.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_ix1313z7237.oe_register_mode = "none";
                 
                 defparam u_memory_ix1313z7237.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_ix1313z7237.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_9_ (.padio (debug_num_5[9]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_9_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_9_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_9_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_9_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_9_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_8_ (.padio (debug_num_5[8]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_8_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_8_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_8_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_8_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_8_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_7_ (.padio (debug_num_5[7]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_7_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_7_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_7_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_7_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_7_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_6_ (.padio (debug_num_5[6]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_6_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_6_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_6_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_6_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_6_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_5_ (.padio (debug_num_5[5]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_5_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_5_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_5_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_5_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_4_ (.padio (debug_num_5[4]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_4_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_4_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_4_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_4_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_3_ (.padio (debug_num_5[3]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_3_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_3_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_3_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_3_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_2_ (.padio (debug_num_5[2]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_2_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_2_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_2_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_2_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_13_ (.padio (debug_num_5[13]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_13_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_13_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_13_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_13_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_13_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_12_ (.padio (debug_num_5[12]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_12_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_12_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_12_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_12_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_12_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_11_ (.padio (debug_num_5[11]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_11_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_11_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_11_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_11_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_11_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_10_ (.padio (debug_num_5[10]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_10_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_10_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_10_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_10_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_10_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_1_ (.padio (debug_num_5[1]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_1_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_1_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_1_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_1_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_5_triBus6_0_ (.padio (debug_num_5[0]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_5_triBus6_0_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_5_triBus6_0_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_0_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_5_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_5_triBus6_0_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_9_ (.padio (debug_num_4[9]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_9_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_9_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_9_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_9_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_9_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_8_ (.padio (debug_num_4[8]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_8_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_8_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_8_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_8_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_8_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_7_ (.padio (debug_num_4[7]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_7_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_7_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_7_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_7_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_7_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_6_ (.padio (debug_num_4[6]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_6_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_6_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_6_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_6_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_6_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_5_ (.padio (debug_num_4[5]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_5_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_5_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_5_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_5_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_4_ (.padio (debug_num_4[4]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_4_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_4_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_4_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_4_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_3_ (.padio (debug_num_4[3]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_3_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_3_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_3_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_3_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_2_ (.padio (debug_num_4[2]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_2_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_2_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_2_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_2_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_12_ (.padio (debug_num_4[12]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_12_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_12_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_12_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_12_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_12_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_11_ (.padio (debug_num_4[11]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_11_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_11_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_11_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_11_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_11_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_10_ (.padio (debug_num_4[10]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_10_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_10_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_10_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_10_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_10_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_1_ (.padio (debug_num_4[1]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_1_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_1_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_1_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_1_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_4_triBus5_0_ (.padio (debug_num_4[0]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_4_triBus5_0_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_4_triBus5_0_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_0_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_4_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_4_triBus5_0_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_9_ (.padio (debug_num_3[9]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_9_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_9_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_9_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_9_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_9_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_8_ (.padio (debug_num_3[8]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_8_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_8_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_8_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_8_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_8_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_7_ (.padio (debug_num_3[7]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_7_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_7_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_7_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_7_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_7_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_6_ (.padio (debug_num_3[6]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_6_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_6_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_6_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_6_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_6_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_5_ (.padio (debug_num_3[5]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_5_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_5_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_5_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_5_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_4_ (.padio (debug_num_3[4]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_4_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_4_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_4_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_4_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_3_ (.padio (debug_num_3[3]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_3_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_3_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_3_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_3_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_2_ (.padio (debug_num_3[2]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_2_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_2_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_2_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_2_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_12_ (.padio (debug_num_3[12]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_12_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_12_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_12_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_12_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_12_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_11_ (.padio (debug_num_3[11]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_11_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_11_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_11_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_11_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_11_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_10_ (.padio (debug_num_3[10]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_10_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_10_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_10_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_10_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_10_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_1_ (.padio (debug_num_3[1]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_1_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_1_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_1_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_1_.input_register_mode = "none";
    stratixii_io u_memory_debug_num_3_triBus4_0_ (.padio (debug_num_3[0]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_led_red_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_debug_num_3_triBus4_0_.operation_mode = "output";
                 
                 defparam u_memory_debug_num_3_triBus4_0_.output_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_0_.oe_register_mode = "none";
                 
                 defparam u_memory_debug_num_3_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_debug_num_3_triBus4_0_.input_register_mode = "none";
    stratixii_lcell_ff reg_p20 (.regout (p20_repl0), .datain (nx24031z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_t3_next_7_ (.regout (f_t3_next[7]), .datain (
                       f_i1_next[7]), .adatasdata (o_image1_dup0[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_6_ (.regout (f_t3_next[6]), .datain (
                       f_i1_next[6]), .adatasdata (o_image1_dup0[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_5_ (.regout (f_t3_next[5]), .datain (
                       f_i1_next[5]), .adatasdata (o_image1_dup0[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_4_ (.regout (f_t3_next[4]), .datain (
                       f_i1_next[4]), .adatasdata (o_image1_dup0[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_3_ (.regout (f_t3_next[3]), .datain (
                       f_i1_next[3]), .adatasdata (o_image1_dup0[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_2_ (.regout (f_t3_next[2]), .datain (
                       f_i1_next[2]), .adatasdata (o_image1_dup0[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_1_ (.regout (f_t3_next[1]), .datain (
                       f_i1_next[1]), .adatasdata (o_image1_dup0[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t3_next_0_ (.regout (f_t3_next[0]), .datain (
                       f_i1_next[0]), .adatasdata (o_image1_dup0[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_7_ (.regout (f_t2_next[7]), .datain (
                       f_t3_next[7]), .adatasdata (o_image0_dup0[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_6_ (.regout (f_t2_next[6]), .datain (
                       f_t3_next[6]), .adatasdata (o_image0_dup0[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_5_ (.regout (f_t2_next[5]), .datain (
                       f_t3_next[5]), .adatasdata (o_image0_dup0[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_4_ (.regout (f_t2_next[4]), .datain (
                       f_t3_next[4]), .adatasdata (o_image0_dup0[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_3_ (.regout (f_t2_next[3]), .datain (
                       f_t3_next[3]), .adatasdata (o_image0_dup0[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_2_ (.regout (f_t2_next[2]), .datain (
                       f_t3_next[2]), .adatasdata (o_image0_dup0[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_1_ (.regout (f_t2_next[1]), .datain (
                       f_t3_next[1]), .adatasdata (o_image0_dup0[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t2_next_0_ (.regout (f_t2_next[0]), .datain (
                       f_t3_next[0]), .adatasdata (o_image0_dup0[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_7_ (.regout (f_t1_next[7]), .datain (
                       f_t2_next[7]), .adatasdata (o_image0_1__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_6_ (.regout (f_t1_next[6]), .datain (
                       f_t2_next[6]), .adatasdata (o_image0_1__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_5_ (.regout (f_t1_next[5]), .datain (
                       f_t2_next[5]), .adatasdata (o_image0_1__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_4_ (.regout (f_t1_next[4]), .datain (
                       f_t2_next[4]), .adatasdata (o_image0_1__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_3_ (.regout (f_t1_next[3]), .datain (
                       f_t2_next[3]), .adatasdata (o_image0_1__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_2_ (.regout (f_t1_next[2]), .datain (
                       f_t2_next[2]), .adatasdata (o_image0_1__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_1_ (.regout (f_t1_next[1]), .datain (
                       f_t2_next[1]), .adatasdata (o_image0_1__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_t1_next_0_ (.regout (f_t1_next[0]), .datain (
                       f_t2_next[0]), .adatasdata (o_image0_1__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_state_3_ (.regout (f_state[3]), .datain (nx61965z1)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_state_2_ (.regout (f_state[2]), .datain (nx62962z1)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_state_1_ (.regout (f_state[1]), .datain (nx63959z1)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_state_0_ (.regout (f_state[0]), .datain (nx64956z1)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_7_ (.regout (f_i_row_next[7]), .datain (
                       m_o_row[7]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_6_ (.regout (f_i_row_next[6]), .datain (
                       m_o_row[6]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_5_ (.regout (f_i_row_next[5]), .datain (
                       m_o_row[5]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_4_ (.regout (f_i_row_next[4]), .datain (
                       m_o_row[4]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_3_ (.regout (f_i_row_next[3]), .datain (
                       m_o_row[3]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_2_ (.regout (f_i_row_next[2]), .datain (
                       m_o_row[2]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_1_ (.regout (f_i_row_next[1]), .datain (
                       m_o_row[1]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_row_next_0_ (.regout (f_i_row_next[0]), .datain (
                       m_o_row[0]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx15183z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i2_next_7_ (.regout (f_i2_next[7]), .datain (
                       f_t1_next[7]), .adatasdata (o_image0_2__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_6_ (.regout (f_i2_next[6]), .datain (
                       f_t1_next[6]), .adatasdata (o_image0_2__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_5_ (.regout (f_i2_next[5]), .datain (
                       f_t1_next[5]), .adatasdata (o_image0_2__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_4_ (.regout (f_i2_next[4]), .datain (
                       f_t1_next[4]), .adatasdata (o_image0_2__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_3_ (.regout (f_i2_next[3]), .datain (
                       f_t1_next[3]), .adatasdata (o_image0_2__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_2_ (.regout (f_i2_next[2]), .datain (
                       f_t1_next[2]), .adatasdata (o_image0_2__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_1_ (.regout (f_i2_next[1]), .datain (
                       f_t1_next[1]), .adatasdata (o_image0_2__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i2_next_0_ (.regout (f_i2_next[0]), .datain (
                       f_t1_next[0]), .adatasdata (o_image0_2__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_7_ (.regout (f_i1_next[7]), .datain (
                       f_b1_next[7]), .adatasdata (o_image2_dup0[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_6_ (.regout (f_i1_next[6]), .datain (
                       f_b1_next[6]), .adatasdata (o_image2_dup0[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_5_ (.regout (f_i1_next[5]), .datain (
                       f_b1_next[5]), .adatasdata (o_image2_dup0[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_4_ (.regout (f_i1_next[4]), .datain (
                       f_b1_next[4]), .adatasdata (o_image2_dup0[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_3_ (.regout (f_i1_next[3]), .datain (
                       f_b1_next[3]), .adatasdata (o_image2_dup0[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_2_ (.regout (f_i1_next[2]), .datain (
                       f_b1_next[2]), .adatasdata (o_image2_dup0[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_1_ (.regout (f_i1_next[1]), .datain (
                       f_b1_next[1]), .adatasdata (o_image2_dup0[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_i1_next_0_ (.regout (f_i1_next[0]), .datain (
                       f_b1_next[0]), .adatasdata (o_image2_dup0[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_7_ (.regout (f_b3_next[7]), .datain (
                       f_i2_next[7]), .adatasdata (o_image1_2__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_6_ (.regout (f_b3_next[6]), .datain (
                       f_i2_next[6]), .adatasdata (o_image1_2__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_5_ (.regout (f_b3_next[5]), .datain (
                       f_i2_next[5]), .adatasdata (o_image1_2__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_4_ (.regout (f_b3_next[4]), .datain (
                       f_i2_next[4]), .adatasdata (o_image1_2__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_3_ (.regout (f_b3_next[3]), .datain (
                       f_i2_next[3]), .adatasdata (o_image1_2__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_2_ (.regout (f_b3_next[2]), .datain (
                       f_i2_next[2]), .adatasdata (o_image1_2__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_1_ (.regout (f_b3_next[1]), .datain (
                       f_i2_next[1]), .adatasdata (o_image1_2__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b3_next_0_ (.regout (f_b3_next[0]), .datain (
                       f_i2_next[0]), .adatasdata (o_image1_2__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_7_ (.regout (f_b2_next[7]), .datain (
                       f_b3_next[7]), .adatasdata (o_image2_2__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_6_ (.regout (f_b2_next[6]), .datain (
                       f_b3_next[6]), .adatasdata (o_image2_2__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_5_ (.regout (f_b2_next[5]), .datain (
                       f_b3_next[5]), .adatasdata (o_image2_2__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_4_ (.regout (f_b2_next[4]), .datain (
                       f_b3_next[4]), .adatasdata (o_image2_2__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_3_ (.regout (f_b2_next[3]), .datain (
                       f_b3_next[3]), .adatasdata (o_image2_2__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_2_ (.regout (f_b2_next[2]), .datain (
                       f_b3_next[2]), .adatasdata (o_image2_2__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_1_ (.regout (f_b2_next[1]), .datain (
                       f_b3_next[1]), .adatasdata (o_image2_2__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b2_next_0_ (.regout (f_b2_next[0]), .datain (
                       f_b3_next[0]), .adatasdata (o_image2_2__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_7_ (.regout (f_b1_next[7]), .datain (
                       f_b2_next[7]), .adatasdata (o_image2_1__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_6_ (.regout (f_b1_next[6]), .datain (
                       f_b2_next[6]), .adatasdata (o_image2_1__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_5_ (.regout (f_b1_next[5]), .datain (
                       f_b2_next[5]), .adatasdata (o_image2_1__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_4_ (.regout (f_b1_next[4]), .datain (
                       f_b2_next[4]), .adatasdata (o_image2_1__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_3_ (.regout (f_b1_next[3]), .datain (
                       f_b2_next[3]), .adatasdata (o_image2_1__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_2_ (.regout (f_b1_next[2]), .datain (
                       f_b2_next[2]), .adatasdata (o_image2_1__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_1_ (.regout (f_b1_next[1]), .datain (
                       f_b2_next[1]), .adatasdata (o_image2_1__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_lcell_ff reg_f_b1_next_0_ (.regout (f_b1_next[0]), .datain (
                       f_b2_next[0]), .adatasdata (o_image2_1__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx57127z2)) ;
    stratixii_io o_valid_obuf (.padio (o_valid), .datain (o_valid_dup0), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_valid_obuf.operation_mode = "output";
                 
                 defparam o_valid_obuf.output_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_valid_obuf.oe_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_valid_obuf.input_register_mode = "none";
    stratixii_io o_row_obuf_7_ (.padio (o_row[7]), .datain (o_row_dup0[7]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_7_.operation_mode = "output";
                 
                 defparam o_row_obuf_7_.output_register_mode = "none";
                 
                 defparam o_row_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_7_.input_register_mode = "none";
    stratixii_io o_row_obuf_6_ (.padio (o_row[6]), .datain (o_row_dup0[6]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_6_.operation_mode = "output";
                 
                 defparam o_row_obuf_6_.output_register_mode = "none";
                 
                 defparam o_row_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_6_.input_register_mode = "none";
    stratixii_io o_row_obuf_5_ (.padio (o_row[5]), .datain (o_row_dup0[5]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_5_.operation_mode = "output";
                 
                 defparam o_row_obuf_5_.output_register_mode = "none";
                 
                 defparam o_row_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_5_.input_register_mode = "none";
    stratixii_io o_row_obuf_4_ (.padio (o_row[4]), .datain (o_row_dup0[4]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_4_.operation_mode = "output";
                 
                 defparam o_row_obuf_4_.output_register_mode = "none";
                 
                 defparam o_row_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_4_.input_register_mode = "none";
    stratixii_io o_row_obuf_3_ (.padio (o_row[3]), .datain (o_row_dup0[3]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_3_.operation_mode = "output";
                 
                 defparam o_row_obuf_3_.output_register_mode = "none";
                 
                 defparam o_row_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_3_.input_register_mode = "none";
    stratixii_io o_row_obuf_2_ (.padio (o_row[2]), .datain (o_row_dup0[2]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_2_.operation_mode = "output";
                 
                 defparam o_row_obuf_2_.output_register_mode = "none";
                 
                 defparam o_row_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_2_.input_register_mode = "none";
    stratixii_io o_row_obuf_1_ (.padio (o_row[1]), .datain (o_row_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_1_.operation_mode = "output";
                 
                 defparam o_row_obuf_1_.output_register_mode = "none";
                 
                 defparam o_row_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_1_.input_register_mode = "none";
    stratixii_io o_row_obuf_0_ (.padio (o_row[0]), .datain (o_row_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_0_.operation_mode = "output";
                 
                 defparam o_row_obuf_0_.output_register_mode = "none";
                 
                 defparam o_row_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_0_.input_register_mode = "none";
    stratixii_io o_mode_obuf_1_ (.padio (o_mode[1]), .datain (o_mode_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_1_.operation_mode = "output";
                 
                 defparam o_mode_obuf_1_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.input_register_mode = "none";
    stratixii_io o_mode_obuf_0_ (.padio (o_mode[0]), .datain (o_mode_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_0_.operation_mode = "output";
                 
                 defparam o_mode_obuf_0_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__7_ (.padio (o_image2_2_[7]), .datain (
                 o_image2_2__dup0_7_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__7_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__7_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__7_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__7_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__6_ (.padio (o_image2_2_[6]), .datain (
                 o_image2_2__dup0_6_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__6_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__6_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__6_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__6_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__5_ (.padio (o_image2_2_[5]), .datain (
                 o_image2_2__dup0_5_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__5_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__5_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__5_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__5_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__4_ (.padio (o_image2_2_[4]), .datain (
                 o_image2_2__dup0_4_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__4_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__4_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__4_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__4_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__3_ (.padio (o_image2_2_[3]), .datain (
                 o_image2_2__dup0_3_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__3_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__3_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__3_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__3_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__2_ (.padio (o_image2_2_[2]), .datain (
                 o_image2_2__dup0_2_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__2_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__2_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__2_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__2_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__1_ (.padio (o_image2_2_[1]), .datain (
                 o_image2_2__dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__1_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__1_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__1_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__1_.input_register_mode = "none";
    stratixii_io o_image2_obuf_2__0_ (.padio (o_image2_2_[0]), .datain (
                 o_image2_2__dup0_0_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_2__0_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__0_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__0_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__0_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__7_ (.padio (o_image2_1_[7]), .datain (
                 o_image2_1__dup0_7_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__7_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__7_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__7_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__7_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__6_ (.padio (o_image2_1_[6]), .datain (
                 o_image2_1__dup0_6_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__6_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__6_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__6_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__6_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__5_ (.padio (o_image2_1_[5]), .datain (
                 o_image2_1__dup0_5_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__5_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__5_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__5_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__5_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__4_ (.padio (o_image2_1_[4]), .datain (
                 o_image2_1__dup0_4_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__4_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__4_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__4_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__4_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__3_ (.padio (o_image2_1_[3]), .datain (
                 o_image2_1__dup0_3_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__3_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__3_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__3_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__3_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__2_ (.padio (o_image2_1_[2]), .datain (
                 o_image2_1__dup0_2_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__2_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__2_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__2_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__2_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__1_ (.padio (o_image2_1_[1]), .datain (
                 o_image2_1__dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__1_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__1_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__1_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__1_.input_register_mode = "none";
    stratixii_io o_image2_obuf_1__0_ (.padio (o_image2_1_[0]), .datain (
                 o_image2_1__dup0_0_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_1__0_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__0_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__0_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__0_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__7_ (.padio (o_image2_0_[7]), .datain (
                 o_image2_dup0[7]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__7_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__7_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__7_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__7_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__6_ (.padio (o_image2_0_[6]), .datain (
                 o_image2_dup0[6]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__6_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__6_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__6_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__6_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__5_ (.padio (o_image2_0_[5]), .datain (
                 o_image2_dup0[5]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__5_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__5_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__5_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__5_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__4_ (.padio (o_image2_0_[4]), .datain (
                 o_image2_dup0[4]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__4_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__4_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__4_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__4_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__3_ (.padio (o_image2_0_[3]), .datain (
                 o_image2_dup0[3]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__3_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__3_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__3_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__3_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__2_ (.padio (o_image2_0_[2]), .datain (
                 o_image2_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__2_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__2_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__2_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__2_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__1_ (.padio (o_image2_0_[1]), .datain (
                 o_image2_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__1_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__1_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__1_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__1_.input_register_mode = "none";
    stratixii_io o_image2_obuf_0__0_ (.padio (o_image2_0_[0]), .datain (
                 o_image2_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image2_obuf_0__0_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__0_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__0_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__0_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__7_ (.padio (o_image1_2_[7]), .datain (
                 o_image1_2__dup0_7_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__7_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__7_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__7_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__7_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__6_ (.padio (o_image1_2_[6]), .datain (
                 o_image1_2__dup0_6_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__6_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__6_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__6_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__6_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__5_ (.padio (o_image1_2_[5]), .datain (
                 o_image1_2__dup0_5_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__5_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__5_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__5_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__5_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__4_ (.padio (o_image1_2_[4]), .datain (
                 o_image1_2__dup0_4_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__4_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__4_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__4_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__4_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__3_ (.padio (o_image1_2_[3]), .datain (
                 o_image1_2__dup0_3_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__3_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__3_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__3_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__3_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__2_ (.padio (o_image1_2_[2]), .datain (
                 o_image1_2__dup0_2_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__2_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__2_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__2_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__2_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__1_ (.padio (o_image1_2_[1]), .datain (
                 o_image1_2__dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__1_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__1_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__1_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__1_.input_register_mode = "none";
    stratixii_io o_image1_obuf_2__0_ (.padio (o_image1_2_[0]), .datain (
                 o_image1_2__dup0_0_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_2__0_.operation_mode = "output";
                 
                 defparam o_image1_obuf_2__0_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_2__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__0_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_2__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_2__0_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__7_ (.padio (o_image1_1_[7]), .datain (
                 o_image1_1__dup0_7_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__7_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__7_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__7_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__7_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__6_ (.padio (o_image1_1_[6]), .datain (
                 o_image1_1__dup0_6_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__6_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__6_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__6_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__6_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__5_ (.padio (o_image1_1_[5]), .datain (
                 o_image1_1__dup0_5_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__5_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__5_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__5_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__5_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__4_ (.padio (o_image1_1_[4]), .datain (
                 o_image1_1__dup0_4_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__4_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__4_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__4_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__4_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__3_ (.padio (o_image1_1_[3]), .datain (
                 o_image1_1__dup0_3_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__3_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__3_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__3_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__3_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__2_ (.padio (o_image1_1_[2]), .datain (
                 o_image1_1__dup0_2_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__2_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__2_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__2_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__2_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__1_ (.padio (o_image1_1_[1]), .datain (
                 o_image1_1__dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__1_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__1_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__1_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__1_.input_register_mode = "none";
    stratixii_io o_image1_obuf_1__0_ (.padio (o_image1_1_[0]), .datain (
                 o_image1_1__dup0_0_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_1__0_.operation_mode = "output";
                 
                 defparam o_image1_obuf_1__0_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_1__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__0_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_1__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_1__0_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__7_ (.padio (o_image1_0_[7]), .datain (
                 o_image1_dup0[7]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__7_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__7_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__7_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__7_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__6_ (.padio (o_image1_0_[6]), .datain (
                 o_image1_dup0[6]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__6_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__6_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__6_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__6_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__5_ (.padio (o_image1_0_[5]), .datain (
                 o_image1_dup0[5]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__5_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__5_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__5_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__5_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__4_ (.padio (o_image1_0_[4]), .datain (
                 o_image1_dup0[4]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__4_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__4_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__4_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__4_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__3_ (.padio (o_image1_0_[3]), .datain (
                 o_image1_dup0[3]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__3_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__3_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__3_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__3_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__2_ (.padio (o_image1_0_[2]), .datain (
                 o_image1_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__2_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__2_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__2_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__2_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__1_ (.padio (o_image1_0_[1]), .datain (
                 o_image1_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__1_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__1_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__1_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__1_.input_register_mode = "none";
    stratixii_io o_image1_obuf_0__0_ (.padio (o_image1_0_[0]), .datain (
                 o_image1_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image1_obuf_0__0_.operation_mode = "output";
                 
                 defparam o_image1_obuf_0__0_.output_register_mode = "none";
                 
                 defparam o_image1_obuf_0__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__0_.oe_register_mode = "none";
                 
                 defparam o_image1_obuf_0__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image1_obuf_0__0_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__7_ (.padio (o_image0_2_[7]), .datain (
                 o_image0_2__dup0_7_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__7_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__7_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__7_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__7_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__6_ (.padio (o_image0_2_[6]), .datain (
                 o_image0_2__dup0_6_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__6_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__6_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__6_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__6_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__5_ (.padio (o_image0_2_[5]), .datain (
                 o_image0_2__dup0_5_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__5_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__5_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__5_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__5_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__4_ (.padio (o_image0_2_[4]), .datain (
                 o_image0_2__dup0_4_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__4_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__4_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__4_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__4_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__3_ (.padio (o_image0_2_[3]), .datain (
                 o_image0_2__dup0_3_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__3_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__3_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__3_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__3_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__2_ (.padio (o_image0_2_[2]), .datain (
                 o_image0_2__dup0_2_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__2_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__2_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__2_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__2_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__1_ (.padio (o_image0_2_[1]), .datain (
                 o_image0_2__dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__1_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__1_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__1_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__1_.input_register_mode = "none";
    stratixii_io o_image0_obuf_2__0_ (.padio (o_image0_2_[0]), .datain (
                 o_image0_2__dup0_0_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_2__0_.operation_mode = "output";
                 
                 defparam o_image0_obuf_2__0_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_2__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__0_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_2__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_2__0_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__7_ (.padio (o_image0_1_[7]), .datain (
                 o_image0_1__dup0_7_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__7_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__7_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__7_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__7_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__6_ (.padio (o_image0_1_[6]), .datain (
                 o_image0_1__dup0_6_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__6_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__6_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__6_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__6_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__5_ (.padio (o_image0_1_[5]), .datain (
                 o_image0_1__dup0_5_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__5_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__5_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__5_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__5_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__4_ (.padio (o_image0_1_[4]), .datain (
                 o_image0_1__dup0_4_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__4_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__4_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__4_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__4_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__3_ (.padio (o_image0_1_[3]), .datain (
                 o_image0_1__dup0_3_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__3_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__3_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__3_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__3_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__2_ (.padio (o_image0_1_[2]), .datain (
                 o_image0_1__dup0_2_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__2_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__2_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__2_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__2_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__1_ (.padio (o_image0_1_[1]), .datain (
                 o_image0_1__dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__1_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__1_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__1_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__1_.input_register_mode = "none";
    stratixii_io o_image0_obuf_1__0_ (.padio (o_image0_1_[0]), .datain (
                 o_image0_1__dup0_0_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_1__0_.operation_mode = "output";
                 
                 defparam o_image0_obuf_1__0_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_1__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__0_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_1__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_1__0_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__7_ (.padio (o_image0_0_[7]), .datain (
                 o_image0_dup0[7]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__7_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__7_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__7_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__7_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__6_ (.padio (o_image0_0_[6]), .datain (
                 o_image0_dup0[6]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__6_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__6_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__6_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__6_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__5_ (.padio (o_image0_0_[5]), .datain (
                 o_image0_dup0[5]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__5_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__5_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__5_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__5_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__4_ (.padio (o_image0_0_[4]), .datain (
                 o_image0_dup0[4]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__4_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__4_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__4_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__4_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__3_ (.padio (o_image0_0_[3]), .datain (
                 o_image0_dup0[3]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__3_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__3_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__3_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__3_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__2_ (.padio (o_image0_0_[2]), .datain (
                 o_image0_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__2_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__2_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__2_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__2_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__1_ (.padio (o_image0_0_[1]), .datain (
                 o_image0_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__1_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__1_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__1_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__1_.input_register_mode = "none";
    stratixii_io o_image0_obuf_0__0_ (.padio (o_image0_0_[0]), .datain (
                 o_image0_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_image0_obuf_0__0_.operation_mode = "output";
                 
                 defparam o_image0_obuf_0__0_.output_register_mode = "none";
                 
                 defparam o_image0_obuf_0__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__0_.oe_register_mode = "none";
                 
                 defparam o_image0_obuf_0__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image0_obuf_0__0_.input_register_mode = "none";
    stratixii_io o_edge_obuf (.padio (o_edge), .datain (o_edge_dup0), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_edge_obuf.operation_mode = "output";
                 
                 defparam o_edge_obuf.output_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_edge_obuf.oe_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_edge_obuf.input_register_mode = "none";
    stratixii_io o_dir_obuf_2_ (.padio (o_dir[2]), .datain (o_dir_dup0[2]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_2_.operation_mode = "output";
                 
                 defparam o_dir_obuf_2_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.input_register_mode = "none";
    stratixii_io o_dir_obuf_1_ (.padio (o_dir[1]), .datain (o_dir_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_1_.operation_mode = "output";
                 
                 defparam o_dir_obuf_1_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.input_register_mode = "none";
    stratixii_io o_dir_obuf_0_ (.padio (o_dir[0]), .datain (o_dir_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_0_.operation_mode = "output";
                 
                 defparam o_dir_obuf_0_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.input_register_mode = "none";
    stratixii_lcell_comb ix64956z37201 (.combout (nx64956z1), .dataa (1'b1), .datab (
                         1'b1), .datac (i_reset_int), .datad (nx15183z2), .datae (
                         m_o_valid), .dataf (f_state[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix64956z37201.lut_mask = 64'hfffffffff0f0fff0;
    stratixii_lcell_comb ix63959z37201 (.combout (nx63959z1), .dataa (1'b1), .datab (
                         1'b1), .datac (i_reset_int), .datad (nx15183z2), .datae (
                         m_o_valid), .dataf (f_state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix63959z37201.lut_mask = 64'h0f0f000f00000000;
    stratixii_lcell_comb ix62962z37201 (.combout (nx62962z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_reset_int), .dataf (f_state[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix62962z37201.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix61965z37201 (.combout (nx61965z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_reset_int), .dataf (f_state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix61965z37201.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix395_repl (.combout (nx57127z2), .dataa (1'b1), .datab (
                         1'b1), .datac (f_state[0]), .datad (f_state[1]), .datae (
                         f_state[2]), .dataf (f_state[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix395_repl.lut_mask = 64'h00000000000000f0;
    stratixii_lcell_comb ix15183z37202 (.combout (nx15183z2), .dataa (1'b1), .datab (
                         1'b1), .datac (f_state[0]), .datad (f_state[1]), .datae (
                         f_state[2]), .dataf (f_state[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix15183z37202.lut_mask = 64'h00000000000000f0;
    stratixii_lcell_comb ix15183z37201 (.combout (nx15183z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (i_reset_int), .datae (
                         nx15183z2), .dataf (m_o_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix15183z37201.lut_mask = 64'h00ff000000000000;
    stratixii_lcell_comb ix57127z37201 (.combout (nx57127z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (i_reset_int), .datae (
                         nx15183z2), .dataf (m_o_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix57127z37201.lut_mask = 64'h00ff00ff000000ff;
    stratixii_lcell_comb ix24031z37201 (.combout (nx24031z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx15183z2)
                         , .dataf (m_o_valid), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24031z37201.lut_mask = 64'hffffffff0000ffff;
    stratixii_lcell_comb ix43539z37201 (.combout (f_i_mode[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_mode_next[0]), .dataf (m_o_mode[0]), .datag (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix43539z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix24319z37201 (.combout (f_i_row[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[0]), .dataf (m_o_row[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix24319z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix23322z37201 (.combout (f_i_row[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[1]), .dataf (m_o_row[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix23322z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix22325z37201 (.combout (f_i_row[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[2]), .dataf (m_o_row[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix22325z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix21328z37201 (.combout (f_i_row[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[3]), .dataf (m_o_row[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix21328z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix20331z37201 (.combout (f_i_row[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[4]), .dataf (m_o_row[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20331z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix19334z37201 (.combout (f_i_row[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[5]), .dataf (m_o_row[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix19334z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix18337z37201 (.combout (f_i_row[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[6]), .dataf (m_o_row[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix18337z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix17340z37201 (.combout (f_i_row[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx15183z2), .datae (
                         f_i_row_next[7]), .dataf (m_o_row[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix17340z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix20836z37252 (.combout (f_i2_0_), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image1_2__dup0_0_), .datae (
                         nx15183z2), .dataf (f_i2_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37252.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37251 (.combout (f_i2_2_), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image1_2__dup0_2_), .datae (
                         nx15183z2), .dataf (f_i2_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37251.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37250 (.combout (f_i2_4_), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image1_2__dup0_4_), .datae (
                         nx15183z2), .dataf (f_i2_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37250.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37249 (.combout (f_i2_6_), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image1_2__dup0_6_), .datae (
                         nx15183z2), .dataf (f_i2_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37249.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37248 (.combout (f_b3[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_0_), .datae (
                         nx15183z2), .dataf (f_b3_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37248.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37247 (.combout (f_b3[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_1_), .datae (
                         nx15183z2), .dataf (f_b3_next[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37247.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37246 (.combout (f_b3[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_2_), .datae (
                         nx15183z2), .dataf (f_b3_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37246.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37245 (.combout (f_b3[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_3_), .datae (
                         nx15183z2), .dataf (f_b3_next[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37245.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37244 (.combout (f_b3[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_4_), .datae (
                         nx15183z2), .dataf (f_b3_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37244.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37243 (.combout (f_b3[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_5_), .datae (
                         nx15183z2), .dataf (f_b3_next[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37243.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37242 (.combout (f_b3[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_6_), .datae (
                         nx15183z2), .dataf (f_b3_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37242.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37241 (.combout (f_b3[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_2__dup0_7_), .datae (
                         nx15183z2), .dataf (f_b3_next[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37241.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37240 (.combout (f_b2[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_0_), .datae (
                         nx15183z2), .dataf (f_b2_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37240.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37239 (.combout (f_b2[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_1_), .datae (
                         nx15183z2), .dataf (f_b2_next[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37239.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37238 (.combout (f_b2[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_2_), .datae (
                         nx15183z2), .dataf (f_b2_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37238.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37237 (.combout (f_b2[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_3_), .datae (
                         nx15183z2), .dataf (f_b2_next[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37237.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37236 (.combout (f_b2[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_4_), .datae (
                         nx15183z2), .dataf (f_b2_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37236.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37235 (.combout (f_b2[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_5_), .datae (
                         nx15183z2), .dataf (f_b2_next[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37235.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37234 (.combout (f_b2[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_6_), .datae (
                         nx15183z2), .dataf (f_b2_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37234.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37233 (.combout (f_b2[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_1__dup0_7_), .datae (
                         nx15183z2), .dataf (f_b2_next[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37233.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37232 (.combout (f_b1[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[0]), .datae (
                         nx15183z2), .dataf (f_b1_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37232.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37231 (.combout (f_b1[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[1]), .datae (
                         nx15183z2), .dataf (f_b1_next[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37231.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37230 (.combout (f_b1[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[2]), .datae (
                         nx15183z2), .dataf (f_b1_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37230.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37229 (.combout (f_b1[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[3]), .datae (
                         nx15183z2), .dataf (f_b1_next[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37229.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37228 (.combout (f_b1[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[4]), .datae (
                         nx15183z2), .dataf (f_b1_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37228.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37227 (.combout (f_b1[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[5]), .datae (
                         nx15183z2), .dataf (f_b1_next[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37227.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37226 (.combout (f_b1[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[6]), .datae (
                         nx15183z2), .dataf (f_b1_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37226.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37225 (.combout (f_b1[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image2_dup0[7]), .datae (
                         nx15183z2), .dataf (f_b1_next[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37225.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37224 (.combout (f_t3[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[0]), .datae (
                         nx15183z2), .dataf (f_t3_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37224.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37223 (.combout (f_t3[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[1]), .datae (
                         nx15183z2), .dataf (f_t3_next[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37223.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37222 (.combout (f_t3[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[2]), .datae (
                         nx15183z2), .dataf (f_t3_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37222.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37221 (.combout (f_t3[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[3]), .datae (
                         nx15183z2), .dataf (f_t3_next[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37221.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37220 (.combout (f_t3[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[4]), .datae (
                         nx15183z2), .dataf (f_t3_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37220.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37219 (.combout (f_t3[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[5]), .datae (
                         nx15183z2), .dataf (f_t3_next[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37219.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37218 (.combout (f_t3[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[6]), .datae (
                         nx15183z2), .dataf (f_t3_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37218.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37217 (.combout (f_t3[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_dup0[7]), .datae (
                         nx15183z2), .dataf (f_t3_next[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37217.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37216 (.combout (f_t2[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_0_), .datae (
                         nx15183z2), .dataf (f_t2_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37216.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37215 (.combout (f_t2[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_1_), .datae (
                         nx15183z2), .dataf (f_t2_next[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37215.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37214 (.combout (f_t2[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_2_), .datae (
                         nx15183z2), .dataf (f_t2_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37214.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37213 (.combout (f_t2[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_3_), .datae (
                         nx15183z2), .dataf (f_t2_next[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37213.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37212 (.combout (f_t2[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_4_), .datae (
                         nx15183z2), .dataf (f_t2_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37212.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37211 (.combout (f_t2[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_5_), .datae (
                         nx15183z2), .dataf (f_t2_next[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37211.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37210 (.combout (f_t2[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_6_), .datae (
                         nx15183z2), .dataf (f_t2_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37210.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37209 (.combout (f_t2[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_1__dup0_7_), .datae (
                         nx15183z2), .dataf (f_t2_next[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37209.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37208 (.combout (f_t1[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_0_), .datae (
                         nx15183z2), .dataf (f_t1_next[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37208.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37207 (.combout (f_t1[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_1_), .datae (
                         nx15183z2), .dataf (f_t1_next[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37207.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37206 (.combout (f_t1[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_2_), .datae (
                         nx15183z2), .dataf (f_t1_next[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37206.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37205 (.combout (f_t1[3]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_3_), .datae (
                         nx15183z2), .dataf (f_t1_next[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37205.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37204 (.combout (f_t1[4]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_4_), .datae (
                         nx15183z2), .dataf (f_t1_next[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37204.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37203 (.combout (f_t1[5]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_5_), .datae (
                         nx15183z2), .dataf (f_t1_next[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37203.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37202 (.combout (f_t1[6]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_6_), .datae (
                         nx15183z2), .dataf (f_t1_next[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix20836z37201 (.combout (f_t1[7]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_image0_2__dup0_7_), .datae (
                         nx15183z2), .dataf (f_t1_next[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20836z37201.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix47893z37201 (.combout (o_mode_dup0[0]), .dataa (1'b1)
                         , .datab (1'b1), .datac (i_reset_int), .datad (
                         f_o_mode[0]), .datae (f_o_mode[1]), .dataf (m_o_mode[0]
                         ), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47893z37201.lut_mask = 64'hfffffffffff0f0f0;
    stratixii_lcell_ff ix301_reg_p2m_1_ (.regout (ix301_ix298_nx7_repl0), .datain (
                       f_i_mode[1]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix301_reg_p2m_0_ (.regout (ix301_ix299_nx7_repl0), .datain (
                       f_i_mode[0]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_7_ (.regout (ix300_ix290_nx7_repl0), .datain (
                       f_i_row[7]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_6_ (.regout (ix300_ix291_nx7_repl0), .datain (
                       f_i_row[6]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_5_ (.regout (ix300_ix292_nx7_repl0), .datain (
                       f_i_row[5]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_4_ (.regout (ix300_ix293_nx7_repl0), .datain (
                       f_i_row[4]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_3_ (.regout (ix300_ix294_nx7_repl0), .datain (
                       f_i_row[3]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_2_ (.regout (ix300_ix295_nx7_repl0), .datain (
                       f_i_row[2]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_1_ (.regout (ix300_ix296_nx7_repl0), .datain (
                       f_i_row[1]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p2r_0_ (.regout (ix300_ix297_nx7_repl0), .datain (
                       f_i_row[0]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_comb ix42542z37201 (.combout (f_i_mode[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (i_reset_int), .datae (
                         f_i_mode_next[1]), .dataf (nx15183z2), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix42542z37201.lut_mask = 64'h00ff00ffffff0000;
    stratixii_io i_valid_ibuf (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_valid_ibuf.operation_mode = "input";
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_valid_ibuf.input_register_mode = "none";
    stratixii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_reset_ibuf.operation_mode = "input";
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_reset_ibuf.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_7_ (.combout (i_pixel_int[7]), .padio (i_pixel[7])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_7_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_7_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_6_ (.combout (i_pixel_int[6]), .padio (i_pixel[6])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_6_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_6_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_5_ (.combout (i_pixel_int[5]), .padio (i_pixel[5])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_5_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_5_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_4_ (.combout (i_pixel_int[4]), .padio (i_pixel[4])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_4_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_4_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_3_ (.combout (i_pixel_int[3]), .padio (i_pixel[3])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_3_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_3_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_2_ (.combout (i_pixel_int[2]), .padio (i_pixel[2])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_2_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_2_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_1_ (.combout (i_pixel_int[1]), .padio (i_pixel[1])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_1_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_1_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_0_ (.combout (i_pixel_int[0]), .padio (i_pixel[0])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_0_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_0_.input_register_mode = "none";
    stratixii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_clock_ibuf.operation_mode = "input";
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_clock_ibuf.input_register_mode = "none";
    stratixii_io debug_valid_obuf (.padio (debug_valid), .datain (
                 debug_valid_dup0), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_valid_obuf.operation_mode = "output";
                 
                 defparam debug_valid_obuf.output_register_mode = "none";
                 
                 defparam debug_valid_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam debug_valid_obuf.oe_register_mode = "none";
                 
                 defparam debug_valid_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_valid_obuf.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_7_ (.padio (debug_num_2[7]), .datain (
                 debug_num_2_dup0[7]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_7_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_6_ (.padio (debug_num_2[6]), .datain (
                 debug_num_2_dup0[6]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_6_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_5_ (.padio (debug_num_2[5]), .datain (
                 debug_num_2_dup0[5]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_5_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_4_ (.padio (debug_num_2[4]), .datain (
                 debug_num_2_dup0[4]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_4_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_3_ (.padio (debug_num_2[3]), .datain (
                 debug_num_2_dup0[3]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_2_ (.padio (debug_num_2[2]), .datain (
                 debug_num_2_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_1_ (.padio (debug_num_2[1]), .datain (
                 debug_num_2_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_0_ (.padio (debug_num_2[0]), .datain (
                 debug_num_2_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_2_ (.padio (debug_num_1[2]), .datain (
                 debug_num_1_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_1_ (.padio (debug_num_1[1]), .datain (
                 debug_num_1_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_0_ (.padio (debug_num_1[0]), .datain (
                 debug_num_1_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_2_ (.padio (debug_num_0[2]), .datain (
                 debug_num_0_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_1_ (.padio (debug_num_0[1]), .datain (
                 debug_num_0_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_0_ (.padio (debug_num_0[0]), .datain (
                 debug_num_0_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_17_ (.padio (debug_led_red[17]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_17_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_led_red_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    stratixii_io debug_column_obuf_7_ (.padio (debug_column[7]), .datain (
                 debug_column_dup0[7]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_7_.operation_mode = "output";
                 
                 defparam debug_column_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_7_.input_register_mode = "none";
    stratixii_io debug_column_obuf_6_ (.padio (debug_column[6]), .datain (
                 debug_column_dup0[6]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_6_.operation_mode = "output";
                 
                 defparam debug_column_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_6_.input_register_mode = "none";
    stratixii_io debug_column_obuf_5_ (.padio (debug_column[5]), .datain (
                 debug_column_dup0[5]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_5_.operation_mode = "output";
                 
                 defparam debug_column_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_5_.input_register_mode = "none";
    stratixii_io debug_column_obuf_4_ (.padio (debug_column[4]), .datain (
                 debug_column_dup0[4]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_4_.operation_mode = "output";
                 
                 defparam debug_column_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_4_.input_register_mode = "none";
    stratixii_io debug_column_obuf_3_ (.padio (debug_column[3]), .datain (
                 debug_column_dup0[3]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_3_.operation_mode = "output";
                 
                 defparam debug_column_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_3_.input_register_mode = "none";
    stratixii_io debug_column_obuf_2_ (.padio (debug_column[2]), .datain (
                 debug_column_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_2_.operation_mode = "output";
                 
                 defparam debug_column_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_2_.input_register_mode = "none";
    stratixii_io debug_column_obuf_1_ (.padio (debug_column[1]), .datain (
                 debug_column_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_1_.operation_mode = "output";
                 
                 defparam debug_column_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_1_.input_register_mode = "none";
    stratixii_io debug_column_obuf_0_ (.padio (debug_column[0]), .datain (
                 debug_column_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_column_obuf_0_.operation_mode = "output";
                 
                 defparam debug_column_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_column_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_column_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_column_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_column_obuf_0_.input_register_mode = "none";
endmodule


module memory_notri ( p_i_pixel, p_o_row, p_o_image0_9_7, p_o_image0_9_1, 
                      p_o_image0_9_2, p_o_image0_9_3, p_o_image0_9_4, 
                      p_o_image0_9_5, p_o_image0_9_6, p_o_image0_8_7, 
                      p_o_image0_8_1, p_o_image0_8_2, p_o_image0_8_3, 
                      p_o_image0_8_4, p_o_image0_8_5, p_o_image0_8_6, 
                      p_o_image0_7, p_o_image0_1, p_o_image0_2, p_o_image0_3, 
                      p_o_image0_4, p_o_image0_5, p_o_image0_6, p_o_image1_9_7, 
                      p_o_image1_9_1, p_o_image1_9_2, p_o_image1_9_3, 
                      p_o_image1_9_4, p_o_image1_9_5, p_o_image1_9_6, 
                      p_o_image1_8_7, p_o_image1_8_1, p_o_image1_8_2, 
                      p_o_image1_8_3, p_o_image1_8_4, p_o_image1_8_5, 
                      p_o_image1_8_6, p_o_image1_7, p_o_image1_1, p_o_image1_2, 
                      p_o_image1_3, p_o_image1_4, p_o_image1_5, p_o_image1_6, 
                      p_o_image2_9_7, p_o_image2_9_1, p_o_image2_9_2, 
                      p_o_image2_9_3, p_o_image2_9_4, p_o_image2_9_5, 
                      p_o_image2_9_6, p_o_image2_8_7, p_o_image2_8_1, 
                      p_o_image2_8_2, p_o_image2_8_3, p_o_image2_8_4, 
                      p_o_image2_8_5, p_o_image2_8_6, p_o_image2_7, p_o_image2_1, 
                      p_o_image2_2, p_o_image2_3, p_o_image2_4, p_o_image2_5, 
                      p_o_image2_6, p_o_valid, p_o_column, p_debug_num_1, 
                      p_o_mode, p_debug_valid_rtlc2_100_and_2, 
                      p_i_valid_rtlc2_54_or_1, p_i_reset, p_debug_num_0, 
                      p_debug_num_2, p_i_clock, p_debug_led_red_dup0_17_, 
                      p_rtlc13n197, p_f_i_mode_next_1__repl0, 
                      p_f_i_mode_next_0__repl0 ) ;

    input [7:0]p_i_pixel ;
    output [7:0]p_o_row ;
    output [1:0]p_o_image0_9_7 ;
    output [0:0]p_o_image0_9_1 ;
    output [0:0]p_o_image0_9_2 ;
    output [0:0]p_o_image0_9_3 ;
    output [0:0]p_o_image0_9_4 ;
    output [0:0]p_o_image0_9_5 ;
    output [0:0]p_o_image0_9_6 ;
    output [1:0]p_o_image0_8_7 ;
    output [1:1]p_o_image0_8_1 ;
    output [1:1]p_o_image0_8_2 ;
    output [1:1]p_o_image0_8_3 ;
    output [1:1]p_o_image0_8_4 ;
    output [1:1]p_o_image0_8_5 ;
    output [1:1]p_o_image0_8_6 ;
    output [2:1]p_o_image0_7 ;
    output [2:2]p_o_image0_1 ;
    output [2:2]p_o_image0_2 ;
    output [2:2]p_o_image0_3 ;
    output [2:2]p_o_image0_4 ;
    output [2:2]p_o_image0_5 ;
    output [2:2]p_o_image0_6 ;
    output [1:0]p_o_image1_9_7 ;
    output [0:0]p_o_image1_9_1 ;
    output [0:0]p_o_image1_9_2 ;
    output [0:0]p_o_image1_9_3 ;
    output [0:0]p_o_image1_9_4 ;
    output [0:0]p_o_image1_9_5 ;
    output [0:0]p_o_image1_9_6 ;
    output [1:0]p_o_image1_8_7 ;
    output [1:1]p_o_image1_8_1 ;
    output [1:1]p_o_image1_8_2 ;
    output [1:1]p_o_image1_8_3 ;
    output [1:1]p_o_image1_8_4 ;
    output [1:1]p_o_image1_8_5 ;
    output [1:1]p_o_image1_8_6 ;
    output [2:1]p_o_image1_7 ;
    output [2:2]p_o_image1_1 ;
    output [2:2]p_o_image1_2 ;
    output [2:2]p_o_image1_3 ;
    output [2:2]p_o_image1_4 ;
    output [2:2]p_o_image1_5 ;
    output [2:2]p_o_image1_6 ;
    output [1:0]p_o_image2_9_7 ;
    output [0:0]p_o_image2_9_1 ;
    output [0:0]p_o_image2_9_2 ;
    output [0:0]p_o_image2_9_3 ;
    output [0:0]p_o_image2_9_4 ;
    output [0:0]p_o_image2_9_5 ;
    output [0:0]p_o_image2_9_6 ;
    output [1:0]p_o_image2_8_7 ;
    output [1:1]p_o_image2_8_1 ;
    output [1:1]p_o_image2_8_2 ;
    output [1:1]p_o_image2_8_3 ;
    output [1:1]p_o_image2_8_4 ;
    output [1:1]p_o_image2_8_5 ;
    output [1:1]p_o_image2_8_6 ;
    output [2:1]p_o_image2_7 ;
    output [2:2]p_o_image2_1 ;
    output [2:2]p_o_image2_2 ;
    output [2:2]p_o_image2_3 ;
    output [2:2]p_o_image2_4 ;
    output [2:2]p_o_image2_5 ;
    output [2:2]p_o_image2_6 ;
    output p_o_valid ;
    output [7:0]p_o_column ;
    output [2:0]p_debug_num_1 ;
    output [1:0]p_o_mode ;
    output [2:2]p_debug_valid_rtlc2_100_and_2 ;
    input [2:2]p_i_valid_rtlc2_54_or_1 ;
    input p_i_reset ;
    output [2:0]p_debug_num_0 ;
    output [7:0]p_debug_num_2 ;
    input p_i_clock ;
    input p_debug_led_red_dup0_17_ ;
    input p_rtlc13n197 ;
    output p_f_i_mode_next_1__repl0 ;
    output p_f_i_mode_next_0__repl0 ;

    wire [7:0]row;
    wire busySignalDelayed, busySignal, mem_q_2__0_, mem_q_2__1_, mem_q_2__2_, 
         mem_q_2__3_, mem_q_2__4_, mem_q_2__5_, mem_q_2__6_, mem_q_2__7_, 
         mem_q_1__0_, mem_q_1__1_, mem_q_1__2_, mem_q_1__3_, mem_q_1__4_, 
         mem_q_1__5_, mem_q_1__6_, mem_q_1__7_, mem_q_0__0_, mem_q_0__1_, 
         mem_q_0__2_, mem_q_0__3_, mem_q_0__4_, mem_q_0__5_, mem_q_0__6_, 
         mem_q_0__7_;
    wire [7:1]column;
    wire nx60567z1, nx33254z1, nx15763z1, nx16760z1, nx17757z1, nx50245z1, 
         not_rtlc2_X_0_n244, nx47386z1, nx8852z1, nx40106z2, nx62359z1, 
         nx61362z1, nx60365z1, nx59368z1, nx58371z1, nx57374z1, nx56377z1, 
         nx55380z1, nx63578z1, nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, 
         nx4024z1, nx5021z1, nx41103z1, nx40106z1, nx39109z1, nx60567z3, 
         nx5021z2, nx8852z4, nx60567z2, nx47289z1, nx5021z3, nx8852z3, nx8852z2, 
         nx8852z5, p_debug_valid_repl, nx47386z2, nx8852z6;
    wire [884:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_row (.clock (p_i_clock), .q ({row[7],
                       row[6],row[5],row[4],row[3],row[2],row[1],row[0]}), .sclear (
                       nx8852z1), .cnt_en (not_rtlc2_X_0_n244), .p_rtlc2n120_repl (
                       nx8852z6)) ;
    modgen_counter_8_1 modgen_counter_column (.clock (p_i_clock), .q ({column[7]
                       ,column[6],column[5],column[4],column[3],column[2],
                       column[1],p_o_column[0]}), .sclear (nx47386z1), .cnt_en (
                       p_debug_valid_rtlc2_100_and_2[2]), .p_rtlc2n120 (nx8852z1
                       ), .p_p_i_valid (p_i_valid_rtlc2_54_or_1[2]), .p_rtlc2n264_repl (
                       nx47386z2)) ;
    ram_dq_8_0 u_mem1_mem (.wr_data1 ({p_debug_num_2[7],p_debug_num_2[6],
               p_debug_num_2[5],p_debug_num_2[4],p_debug_num_2[3],
               p_debug_num_2[2],p_debug_num_2[1],p_debug_num_2[0]}), .rd_data1 (
               {mem_q_0__7_,mem_q_0__6_,mem_q_0__5_,mem_q_0__4_,mem_q_0__3_,
               mem_q_0__2_,mem_q_0__1_,mem_q_0__0_}), .addr1 ({column[7],
               column[6],column[5],column[4],column[3],column[2],column[1],
               p_o_column[0]}), .wr_clk1 (p_i_clock), .wr_ena1 (p_debug_num_0[0]
               )) ;
    ram_dq_8_1 u_mem2_mem (.wr_data1 ({p_debug_num_2[7],p_debug_num_2[6],
               p_debug_num_2[5],p_debug_num_2[4],p_debug_num_2[3],
               p_debug_num_2[2],p_debug_num_2[1],p_debug_num_2[0]}), .rd_data1 (
               {mem_q_1__7_,mem_q_1__6_,mem_q_1__5_,mem_q_1__4_,mem_q_1__3_,
               mem_q_1__2_,mem_q_1__1_,mem_q_1__0_}), .addr1 ({column[7],
               column[6],column[5],column[4],column[3],column[2],column[1],
               p_o_column[0]}), .wr_clk1 (p_i_clock), .wr_ena1 (p_debug_num_0[1]
               )) ;
    ram_dq_8_2 u_mem3_mem (.wr_data1 ({p_debug_num_2[7],p_debug_num_2[6],
               p_debug_num_2[5],p_debug_num_2[4],p_debug_num_2[3],
               p_debug_num_2[2],p_debug_num_2[1],p_debug_num_2[0]}), .rd_data1 (
               {mem_q_2__7_,mem_q_2__6_,mem_q_2__5_,mem_q_2__4_,mem_q_2__3_,
               mem_q_2__2_,mem_q_2__1_,mem_q_2__0_}), .addr1 ({column[7],
               column[6],column[5],column[4],column[3],column[2],column[1],
               p_o_column[0]}), .wr_clk1 (p_i_clock), .wr_ena1 (p_debug_num_0[2]
               )) ;
    assign p_o_mode[1] = ~p_i_reset ;
    assign p_o_column[1] = ~column[1] ;
    stratixii_lcell_ff reg_o_valid (.regout (p_o_valid), .datain (nx60567z1), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_7_ (.regout (p_o_row[7]), .datain (row[7]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_6_ (.regout (p_o_row[6]), .datain (row[6]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_5_ (.regout (p_o_row[5]), .datain (row[5]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_4_ (.regout (p_o_row[4]), .datain (row[4]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_3_ (.regout (p_o_row[3]), .datain (row[3]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_2_ (.regout (p_o_row[2]), .datain (row[2]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_1_ (.regout (p_o_row[1]), .datain (row[1]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_0_ (.regout (p_o_row[0]), .datain (row[0]), .adatasdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_2_ (.regout (p_debug_num_1[2]), .datain (
                       nx41103z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       nx40106z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_1_ (.regout (p_debug_num_1[1]), .datain (
                       nx40106z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       nx40106z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_0_ (.regout (p_debug_num_1[0]), .datain (
                       nx39109z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       nx40106z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_2_ (.regout (p_debug_num_0[2]), .datain (
                       nx17757z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_1_ (.regout (p_debug_num_0[1]), .datain (
                       nx16760z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_0_ (.regout (p_debug_num_0[0]), .datain (
                       nx15763z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_7_ (.regout (p_debug_num_2[7]), .datain (
                       p_i_pixel[7]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_6_ (.regout (p_debug_num_2[6]), .datain (
                       p_i_pixel[6]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_5_ (.regout (p_debug_num_2[5]), .datain (
                       p_i_pixel[5]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_4_ (.regout (p_debug_num_2[4]), .datain (
                       p_i_pixel[4]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_3_ (.regout (p_debug_num_2[3]), .datain (
                       p_i_pixel[3]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_2_ (.regout (p_debug_num_2[2]), .datain (
                       p_i_pixel[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_1_ (.regout (p_debug_num_2[1]), .datain (
                       p_i_pixel[1]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_0_ (.regout (p_debug_num_2[0]), .datain (
                       p_i_pixel[0]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_first_bubble_repl (.regout (p_debug_valid_repl), .datain (
                       p_i_valid_rtlc2_54_or_1[2]), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_first_bubble (.regout (
                       p_debug_valid_rtlc2_100_and_2[2]), .datain (
                       p_i_valid_rtlc2_54_or_1[2]), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_f_i_mode_next_1_ (.regout (p_f_i_mode_next_1__repl0)
                       , .datain (p_o_mode[1]), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (p_rtlc13n197), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_i_mode_next_0_ (.regout (p_f_i_mode_next_0__repl0)
                       , .datain (p_o_mode[0]), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (p_rtlc13n197), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_busySignalDelayed (.regout (busySignalDelayed), .datain (
                       busySignal), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_busySignal (.regout (busySignal), .datain (nx33254z1)
                       , .adatasdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer2_2__7_ (.regout (p_o_image2_7[1]), .datain (
                       mem_q_2__7_), .adatasdata (p_debug_num_2[7]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__6_ (.regout (p_o_image2_6[2]), .datain (
                       mem_q_2__6_), .adatasdata (p_debug_num_2[6]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__5_ (.regout (p_o_image2_5[2]), .datain (
                       mem_q_2__5_), .adatasdata (p_debug_num_2[5]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__4_ (.regout (p_o_image2_4[2]), .datain (
                       mem_q_2__4_), .adatasdata (p_debug_num_2[4]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__3_ (.regout (p_o_image2_3[2]), .datain (
                       mem_q_2__3_), .adatasdata (p_debug_num_2[3]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__2_ (.regout (p_o_image2_2[2]), .datain (
                       mem_q_2__2_), .adatasdata (p_debug_num_2[2]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__1_ (.regout (p_o_image2_1[2]), .datain (
                       mem_q_2__1_), .adatasdata (p_debug_num_2[1]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__0_ (.regout (p_o_image2_7[2]), .datain (
                       mem_q_2__0_), .adatasdata (p_debug_num_2[0]), .clk (
                       p_i_clock), .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_1__7_ (.regout (p_o_image2_8_7[0]), .datain (
                       nx62359z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__6_ (.regout (p_o_image2_8_6[1]), .datain (
                       nx61362z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__5_ (.regout (p_o_image2_8_5[1]), .datain (
                       nx60365z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__4_ (.regout (p_o_image2_8_4[1]), .datain (
                       nx59368z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__3_ (.regout (p_o_image2_8_3[1]), .datain (
                       nx58371z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__2_ (.regout (p_o_image2_8_2[1]), .datain (
                       nx57374z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__1_ (.regout (p_o_image2_8_1[1]), .datain (
                       nx56377z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__0_ (.regout (p_o_image2_8_7[1]), .datain (
                       nx55380z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__7_ (.regout (p_o_image2_9_7[0]), .datain (
                       nx63578z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__6_ (.regout (p_o_image2_9_6[0]), .datain (
                       nx64575z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__5_ (.regout (p_o_image2_9_5[0]), .datain (
                       nx36z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__4_ (.regout (p_o_image2_9_4[0]), .datain (
                       nx1033z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__3_ (.regout (p_o_image2_9_3[0]), .datain (
                       nx2030z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__2_ (.regout (p_o_image2_9_2[0]), .datain (
                       nx3027z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__1_ (.regout (p_o_image2_9_1[0]), .datain (
                       nx4024z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__0_ (.regout (p_o_image2_9_7[1]), .datain (
                       nx5021z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__7_ (.regout (p_o_image1_7[1]), .datain (
                       p_o_image2_7[1]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__6_ (.regout (p_o_image1_6[2]), .datain (
                       p_o_image2_6[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__5_ (.regout (p_o_image1_5[2]), .datain (
                       p_o_image2_5[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__4_ (.regout (p_o_image1_4[2]), .datain (
                       p_o_image2_4[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__3_ (.regout (p_o_image1_3[2]), .datain (
                       p_o_image2_3[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__2_ (.regout (p_o_image1_2[2]), .datain (
                       p_o_image2_2[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__1_ (.regout (p_o_image1_1[2]), .datain (
                       p_o_image2_1[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__0_ (.regout (p_o_image1_7[2]), .datain (
                       p_o_image2_7[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__7_ (.regout (p_o_image1_8_7[0]), .datain (
                       p_o_image2_8_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__6_ (.regout (p_o_image1_8_6[1]), .datain (
                       p_o_image2_8_6[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__5_ (.regout (p_o_image1_8_5[1]), .datain (
                       p_o_image2_8_5[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__4_ (.regout (p_o_image1_8_4[1]), .datain (
                       p_o_image2_8_4[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__3_ (.regout (p_o_image1_8_3[1]), .datain (
                       p_o_image2_8_3[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__2_ (.regout (p_o_image1_8_2[1]), .datain (
                       p_o_image2_8_2[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__1_ (.regout (p_o_image1_8_1[1]), .datain (
                       p_o_image2_8_1[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__0_ (.regout (p_o_image1_8_7[1]), .datain (
                       p_o_image2_8_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__7_ (.regout (p_o_image1_9_7[0]), .datain (
                       p_o_image2_9_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__6_ (.regout (p_o_image1_9_6[0]), .datain (
                       p_o_image2_9_6[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__5_ (.regout (p_o_image1_9_5[0]), .datain (
                       p_o_image2_9_5[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__4_ (.regout (p_o_image1_9_4[0]), .datain (
                       p_o_image2_9_4[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__3_ (.regout (p_o_image1_9_3[0]), .datain (
                       p_o_image2_9_3[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__2_ (.regout (p_o_image1_9_2[0]), .datain (
                       p_o_image2_9_2[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__1_ (.regout (p_o_image1_9_1[0]), .datain (
                       p_o_image2_9_1[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__0_ (.regout (p_o_image1_9_7[1]), .datain (
                       p_o_image2_9_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__7_ (.regout (p_o_image0_7[1]), .datain (
                       p_o_image1_7[1]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__6_ (.regout (p_o_image0_6[2]), .datain (
                       p_o_image1_6[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__5_ (.regout (p_o_image0_5[2]), .datain (
                       p_o_image1_5[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__4_ (.regout (p_o_image0_4[2]), .datain (
                       p_o_image1_4[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__3_ (.regout (p_o_image0_3[2]), .datain (
                       p_o_image1_3[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__2_ (.regout (p_o_image0_2[2]), .datain (
                       p_o_image1_2[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__1_ (.regout (p_o_image0_1[2]), .datain (
                       p_o_image1_1[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__0_ (.regout (p_o_image0_7[2]), .datain (
                       p_o_image1_7[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__7_ (.regout (p_o_image0_8_7[0]), .datain (
                       p_o_image1_8_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__6_ (.regout (p_o_image0_8_6[1]), .datain (
                       p_o_image1_8_6[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__5_ (.regout (p_o_image0_8_5[1]), .datain (
                       p_o_image1_8_5[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__4_ (.regout (p_o_image0_8_4[1]), .datain (
                       p_o_image1_8_4[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__3_ (.regout (p_o_image0_8_3[1]), .datain (
                       p_o_image1_8_3[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__2_ (.regout (p_o_image0_8_2[1]), .datain (
                       p_o_image1_8_2[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__1_ (.regout (p_o_image0_8_1[1]), .datain (
                       p_o_image1_8_1[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__0_ (.regout (p_o_image0_8_7[1]), .datain (
                       p_o_image1_8_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__7_ (.regout (p_o_image0_9_7[0]), .datain (
                       p_o_image1_9_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__6_ (.regout (p_o_image0_9_6[0]), .datain (
                       p_o_image1_9_6[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__5_ (.regout (p_o_image0_9_5[0]), .datain (
                       p_o_image1_9_5[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__4_ (.regout (p_o_image0_9_4[0]), .datain (
                       p_o_image1_9_4[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__3_ (.regout (p_o_image0_9_3[0]), .datain (
                       p_o_image1_9_3[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__2_ (.regout (p_o_image0_9_2[0]), .datain (
                       p_o_image1_9_2[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__1_ (.regout (p_o_image0_9_1[0]), .datain (
                       p_o_image1_9_1[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__0_ (.regout (p_o_image0_9_7[1]), .datain (
                       p_o_image1_9_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (p_debug_valid_repl), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    stratixii_lcell_comb ix8852z37205 (.combout (nx8852z5), .dataa (1'b1), .datab (
                         column[7]), .datac (column[2]), .datad (column[1]), .datae (
                         p_o_column[0]), .dataf (
                         p_debug_valid_rtlc2_100_and_2[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix8852z37205.lut_mask = 64'hc000000000000000;
    stratixii_lcell_comb ix8852z37202 (.combout (nx8852z2), .dataa (1'b1), .datab (
                         1'b1), .datac (row[1]), .datad (row[2]), .datae (row[3]
                         ), .dataf (row[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix8852z37202.lut_mask = 64'hf000000000000000;
    stratixii_lcell_comb ix8852z37203 (.combout (nx8852z3), .dataa (1'b1), .datab (
                         1'b1), .datac (row[5]), .datad (row[6]), .datae (row[7]
                         ), .dataf (row[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix8852z37203.lut_mask = 64'hf000000000000000;
    stratixii_lcell_comb ix5021z37203 (.combout (nx5021z3), .dataa (1'b1), .datab (
                         1'b1), .datac (row[4]), .datad (row[5]), .datae (row[6]
                         ), .dataf (row[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z37203.lut_mask = 64'h000000000000000f;
    stratixii_lcell_comb ix47289z37202 (.combout (nx47289z1), .dataa (1'b1), .datab (
                         1'b1), .datac (column[4]), .datad (column[3]), .datae (
                         column[2]), .dataf (column[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix47289z37202.lut_mask = 64'h000000000000000f;
    stratixii_lcell_comb ix60567z37202 (.combout (nx60567z2), .dataa (nx60567z3)
                         , .datab (column[7]), .datac (column[6]), .datad (
                         column[5]), .datae (column[4]), .dataf (column[3]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z37202.lut_mask = 64'hfffffffffffffffe;
    stratixii_lcell_comb ix8852z37204 (.combout (nx8852z4), .dataa (1'b1), .datab (
                         nx8852z5), .datac (column[6]), .datad (column[5]), .datae (
                         column[4]), .dataf (column[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix8852z37204.lut_mask = 64'hc000000000000000;
    stratixii_lcell_comb ix5021z37202 (.combout (nx5021z2), .dataa (1'b1), .datab (
                         1'b1), .datac (nx5021z3), .datad (row[1]), .datae (
                         row[2]), .dataf (row[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z37202.lut_mask = 64'h00000000000000f0;
    stratixii_lcell_comb ix60567z37203 (.combout (nx60567z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (column[2])
                         , .dataf (column[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z37203.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix39109z37201 (.combout (nx39109z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (
                         p_i_valid_rtlc2_54_or_1[2]), .datae (nx8852z1), .dataf (
                         p_debug_num_1[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39109z37201.lut_mask = 64'h0000ffff0000ff00;
    stratixii_lcell_comb ix40106z37201 (.combout (nx40106z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (
                         p_i_valid_rtlc2_54_or_1[2]), .datae (nx8852z1), .dataf (
                         p_debug_num_1[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40106z37201.lut_mask = 64'h000000ff00000000;
    stratixii_lcell_comb ix41103z37201 (.combout (nx41103z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (
                         p_i_valid_rtlc2_54_or_1[2]), .datae (nx8852z1), .dataf (
                         p_debug_num_1[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41103z37201.lut_mask = 64'h000000ff00000000;
    stratixii_lcell_comb ix5021z37201 (.combout (nx5021z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__0_), .datac (
                         mem_q_1__0_), .datad (p_debug_num_2[0]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__0_), .cin (1'b0)) ;
                         
                         defparam ix5021z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix5021z37201.extended_lut = "on";
    stratixii_lcell_comb ix4024z37201 (.combout (nx4024z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__1_), .datac (
                         mem_q_1__1_), .datad (p_debug_num_2[1]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__1_), .cin (1'b0)) ;
                         
                         defparam ix4024z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix4024z37201.extended_lut = "on";
    stratixii_lcell_comb ix3027z37201 (.combout (nx3027z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__2_), .datac (
                         mem_q_1__2_), .datad (p_debug_num_2[2]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__2_), .cin (1'b0)) ;
                         
                         defparam ix3027z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix3027z37201.extended_lut = "on";
    stratixii_lcell_comb ix2030z37201 (.combout (nx2030z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__3_), .datac (
                         mem_q_1__3_), .datad (p_debug_num_2[3]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__3_), .cin (1'b0)) ;
                         
                         defparam ix2030z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix2030z37201.extended_lut = "on";
    stratixii_lcell_comb ix1033z37201 (.combout (nx1033z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__4_), .datac (
                         mem_q_1__4_), .datad (p_debug_num_2[4]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__4_), .cin (1'b0)) ;
                         
                         defparam ix1033z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix1033z37201.extended_lut = "on";
    stratixii_lcell_comb ix36z37201 (.combout (nx36z1), .dataa (p_debug_num_1[0]
                         ), .datab (mem_q_0__5_), .datac (mem_q_1__5_), .datad (
                         p_debug_num_2[5]), .datae (p_debug_num_1[1]), .dataf (
                         nx5021z2), .datag (mem_q_2__5_), .cin (1'b0)) ;
                         
                         defparam ix36z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix36z37201.extended_lut = "on";
    stratixii_lcell_comb ix64575z37201 (.combout (nx64575z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__6_), .datac (
                         mem_q_1__6_), .datad (p_debug_num_2[6]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__6_), .cin (1'b0)) ;
                         
                         defparam ix64575z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix64575z37201.extended_lut = "on";
    stratixii_lcell_comb ix63578z37201 (.combout (nx63578z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_0__7_), .datac (
                         mem_q_1__7_), .datad (p_debug_num_2[7]), .datae (
                         p_debug_num_1[1]), .dataf (nx5021z2), .datag (
                         mem_q_2__7_), .cin (1'b0)) ;
                         
                         defparam ix63578z37201.lut_mask = 64'hee44ee44f0f0e4e4;
                         
                         defparam ix63578z37201.extended_lut = "on";
    stratixii_lcell_comb ix55380z37201 (.combout (nx55380z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__0_), .datac (
                         mem_q_1__0_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__0_), .datag (
                         p_debug_num_2[0]), .cin (1'b0)) ;
                         
                         defparam ix55380z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix55380z37201.extended_lut = "on";
    stratixii_lcell_comb ix56377z37201 (.combout (nx56377z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__1_), .datac (
                         mem_q_1__1_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__1_), .datag (
                         p_debug_num_2[1]), .cin (1'b0)) ;
                         
                         defparam ix56377z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix56377z37201.extended_lut = "on";
    stratixii_lcell_comb ix57374z37201 (.combout (nx57374z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__2_), .datac (
                         mem_q_1__2_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__2_), .datag (
                         p_debug_num_2[2]), .cin (1'b0)) ;
                         
                         defparam ix57374z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix57374z37201.extended_lut = "on";
    stratixii_lcell_comb ix58371z37201 (.combout (nx58371z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__3_), .datac (
                         mem_q_1__3_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__3_), .datag (
                         p_debug_num_2[3]), .cin (1'b0)) ;
                         
                         defparam ix58371z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix58371z37201.extended_lut = "on";
    stratixii_lcell_comb ix59368z37201 (.combout (nx59368z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__4_), .datac (
                         mem_q_1__4_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__4_), .datag (
                         p_debug_num_2[4]), .cin (1'b0)) ;
                         
                         defparam ix59368z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix59368z37201.extended_lut = "on";
    stratixii_lcell_comb ix60365z37201 (.combout (nx60365z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__5_), .datac (
                         mem_q_1__5_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__5_), .datag (
                         p_debug_num_2[5]), .cin (1'b0)) ;
                         
                         defparam ix60365z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix60365z37201.extended_lut = "on";
    stratixii_lcell_comb ix61362z37201 (.combout (nx61362z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__6_), .datac (
                         mem_q_1__6_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__6_), .datag (
                         p_debug_num_2[6]), .cin (1'b0)) ;
                         
                         defparam ix61362z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix61362z37201.extended_lut = "on";
    stratixii_lcell_comb ix62359z37201 (.combout (nx62359z1), .dataa (
                         p_debug_num_1[0]), .datab (mem_q_2__7_), .datac (
                         mem_q_1__7_), .datad (nx5021z2), .datae (
                         p_debug_num_1[1]), .dataf (mem_q_0__7_), .datag (
                         p_debug_num_2[7]), .cin (1'b0)) ;
                         
                         defparam ix62359z37201.lut_mask = 64'hf0ddf0d8f088f0d8;
                         
                         defparam ix62359z37201.extended_lut = "on";
    stratixii_lcell_comb ix40106z37202 (.combout (nx40106z2), .dataa (
                         p_i_valid_rtlc2_54_or_1[2]), .datab (nx8852z1), .datac (
                         not_rtlc2_X_0_n244), .datad (p_debug_num_1[0]), .datae (
                         p_debug_num_1[1]), .dataf (p_debug_num_1[2]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix40106z37202.lut_mask = 64'hfcfcfcfcfcfcfcfe;
    stratixii_lcell_comb ix64269z37201 (.combout (p_o_mode[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (p_i_reset), .datad (busySignal), .datae (
                         busySignalDelayed), .dataf (p_i_valid_rtlc2_54_or_1[2])
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64269z37201.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix165_repl (.combout (nx8852z6), .dataa (1'b1), .datab (
                         1'b1), .datac (nx8852z2), .datad (nx8852z3), .datae (
                         nx8852z4), .dataf (p_i_reset), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix165_repl.lut_mask = 64'hfffffffff0000000;
    stratixii_lcell_comb ix8852z37201 (.combout (nx8852z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx8852z2), .datad (nx8852z3), .datae (
                         nx8852z4), .dataf (p_i_reset), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix8852z37201.lut_mask = 64'hfffffffff0000000;
    stratixii_lcell_comb ix163_repl (.combout (nx47386z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx8852z4)
                         , .dataf (p_i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix163_repl.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix47386z37201 (.combout (nx47386z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx8852z4)
                         , .dataf (p_i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix8852z37206 (.combout (not_rtlc2_X_0_n244), .dataa (
                         nx8852z5), .datab (column[6]), .datac (column[5]), .datad (
                         column[4]), .datae (column[3]), .dataf (
                         p_i_valid_rtlc2_54_or_1[2]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix8852z37206.lut_mask = 64'h0000000080000000;
    stratixii_lcell_comb ix50245z37201 (.combout (nx50245z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx5021z2)
                         , .dataf (p_debug_num_1[2]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix50245z37201.lut_mask = 64'hffffffff0000ffff;
    stratixii_lcell_comb ix47289z37201 (.combout (p_o_column[7]), .dataa (1'b1)
                         , .datab (1'b1), .datac (nx47289z1), .datad (column[7])
                         , .datae (column[6]), .dataf (column[5]), .datag (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix47289z37201.lut_mask = 64'hff00ff00ff000ff0;
    stratixii_lcell_comb ix48286z37201 (.combout (p_o_column[6]), .dataa (
                         column[6]), .datab (column[5]), .datac (column[4]), .datad (
                         column[3]), .datae (column[2]), .dataf (column[1]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix48286z37201.lut_mask = 64'haaaaaaaaaaaaaaa9;
    stratixii_lcell_comb ix49283z37201 (.combout (p_o_column[5]), .dataa (1'b1)
                         , .datab (column[5]), .datac (column[4]), .datad (
                         column[3]), .datae (column[2]), .dataf (column[1]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix49283z37201.lut_mask = 64'hccccccccccccccc3;
    stratixii_lcell_comb ix50280z37201 (.combout (p_o_column[4]), .dataa (1'b1)
                         , .datab (1'b1), .datac (column[4]), .datad (column[3])
                         , .datae (column[2]), .dataf (column[1]), .datag (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix50280z37201.lut_mask = 64'hf0f0f0f0f0f0f00f;
    stratixii_lcell_comb ix51277z37201 (.combout (p_o_column[3]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (column[3]), .datae (
                         column[2]), .dataf (column[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51277z37201.lut_mask = 64'hff00ff00ff0000ff;
    stratixii_lcell_comb ix52274z37201 (.combout (p_o_column[2]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         column[2]), .dataf (column[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix52274z37201.lut_mask = 64'hffff00000000ffff;
    stratixii_lcell_comb ix17757z37201 (.combout (nx17757z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (
                         p_i_valid_rtlc2_54_or_1[2]), .datae (nx8852z1), .dataf (
                         p_debug_num_1[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17757z37201.lut_mask = 64'h0000ff0000000000;
    stratixii_lcell_comb ix16760z37201 (.combout (nx16760z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (
                         p_i_valid_rtlc2_54_or_1[2]), .datae (nx8852z1), .dataf (
                         p_debug_num_1[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16760z37201.lut_mask = 64'h0000ff0000000000;
    stratixii_lcell_comb ix15763z37201 (.combout (nx15763z1), .dataa (1'b1), .datab (
                         p_i_valid_rtlc2_54_or_1[2]), .datac (nx8852z1), .datad (
                         p_debug_num_1[0]), .datae (p_debug_num_1[1]), .dataf (
                         p_debug_num_1[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15763z37201.lut_mask = 64'h0c000c000c000c0c;
    stratixii_lcell_comb ix33254z37201 (.combout (nx33254z1), .dataa (1'b1), .datab (
                         nx8852z2), .datac (nx8852z3), .datad (nx8852z4), .datae (
                         busySignal), .dataf (p_i_valid_rtlc2_54_or_1[2]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix33254z37201.lut_mask = 64'h3fff3fff3fff0000;
    stratixii_lcell_comb ix60567z37201 (.combout (nx60567z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx60567z2), .datad (nx5021z2), .datae (
                         p_debug_valid_rtlc2_100_and_2[2]), .dataf (p_o_valid), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z37201.lut_mask = 64'hffff000000f00000;
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

    wire ena1_rename1417;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1417), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1417 = 1 ;
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

    wire ena1_rename1387;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1387), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1387 = 1 ;
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

    wire ena1_rename1357;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1357), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1357 = 1 ;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_rtlc2n120, p_p_i_valid, 
                            p_rtlc2n264_repl ) ;

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
    input p_rtlc2n120 ;
    input p_p_i_valid ;
    input p_rtlc2n264_repl ;

    wire GND, nx57253z3, nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, 
         nx53265z1, nx52268z1, nx51271z1, nx58250z17, nx58250z15, nx58250z13, 
         nx58250z11, nx58250z9, nx58250z7, nx58250z5, nx58250z3, nx58250z2, 
         nx58250z18, nx58250z19;
    wire [113:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z18 = 1 ;
    assign nx58250z19 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n264_repl), .sload (1'b0)) ;
    stratixii_lcell_comb ix57253z37201 (.combout (nx57253z3), .dataa (1'b1), .datab (
                         1'b1), .datac (p_rtlc2n120), .datad (p_p_i_valid), .datae (
                         sclear), .dataf (cnt_en), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z37201.lut_mask = 64'hf0fff0fff0ff0000;
    stratixii_lcell_comb ix58250z37202 (.sumout (nx57253z1), .cout (nx58250z3), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[6]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z5)) ;
                         
                         defparam ix58250z37202.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37203 (.sumout (nx56256z1), .cout (nx58250z5), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[5]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z7)) ;
                         
                         defparam ix58250z37203.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37204 (.sumout (nx55259z1), .cout (nx58250z7), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[4]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z9)) ;
                         
                         defparam ix58250z37204.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37205 (.sumout (nx54262z1), .cout (nx58250z9), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[3]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z11)) ;
                         
                         defparam ix58250z37205.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37206 (.sumout (nx53265z1), .cout (nx58250z11)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[2]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z13)) ;
                         
                         defparam ix58250z37206.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37207 (.sumout (nx52268z1), .cout (nx58250z13)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[1]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z15)) ;
                         
                         defparam ix58250z37207.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37209 (.cout (nx58250z17), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx58250z18), .datae (1'b1
                         ), .dataf (nx58250z19), .datag (1'b1), .cin (GND)) ;
                         
                         defparam ix58250z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37208 (.sumout (nx51271z1), .cout (nx58250z15)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         q[0]), .datae (1'b1), .dataf (nx58250z2), .datag (1'b1)
                         , .cin (nx58250z17)) ;
                         
                         defparam ix58250z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37201 (.sumout (nx58250z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (q[7]), .datae (1'b1), .dataf (
                         nx58250z2), .datag (1'b1), .cin (nx58250z3)) ;
                         
                         defparam ix58250z37201.lut_mask = 64'h000000ff0000ff00;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_rtlc2n120_repl ) ;

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
    input p_rtlc2n120_repl ;

    wire GND, nx57253z3, nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, 
         nx53265z1, nx52268z1, nx51271z1, nx58250z17, nx58250z15, nx58250z13, 
         nx58250z11, nx58250z9, nx58250z7, nx58250z5, nx58250z3, nx58250z2, 
         nx58250z18, nx58250z19;
    wire [115:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z18 = 1 ;
    assign nx58250z19 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc2n120_repl), .sload (1'b0)) ;
    stratixii_lcell_comb ix57253z37201 (.combout (nx57253z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (sclear), .dataf (
                         cnt_en), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix58250z37202 (.sumout (nx57253z1), .cout (nx58250z3), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[6]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z5)) ;
                         
                         defparam ix58250z37202.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37203 (.sumout (nx56256z1), .cout (nx58250z5), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[5]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z7)) ;
                         
                         defparam ix58250z37203.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37204 (.sumout (nx55259z1), .cout (nx58250z7), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[4]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z9)) ;
                         
                         defparam ix58250z37204.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37205 (.sumout (nx54262z1), .cout (nx58250z9), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[3]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z11)) ;
                         
                         defparam ix58250z37205.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37206 (.sumout (nx53265z1), .cout (nx58250z11)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[2]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z13)) ;
                         
                         defparam ix58250z37206.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37207 (.sumout (nx52268z1), .cout (nx58250z13)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[1]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z15)) ;
                         
                         defparam ix58250z37207.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37209 (.cout (nx58250z17), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx58250z18), .datae (1'b1
                         ), .dataf (nx58250z19), .datag (1'b1), .cin (GND)) ;
                         
                         defparam ix58250z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37208 (.sumout (nx51271z1), .cout (nx58250z15)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         q[0]), .datae (1'b1), .dataf (nx58250z2), .datag (1'b1)
                         , .cin (nx58250z17)) ;
                         
                         defparam ix58250z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37201 (.sumout (nx58250z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (q[7]), .datae (1'b1), .dataf (
                         nx58250z2), .datag (1'b1), .cin (nx58250z3)) ;
                         
                         defparam ix58250z37201.lut_mask = 64'h000000ff0000ff00;
endmodule


module flow ( t1, t2, t3, b1, b2, b3, i1, i2, i_clock, i_reset, i_valid, i_mode, 
              i_row, o_dir, o_edge, o_valid, o_mode, o_row, p_f_i1_next_7_, 
              p_rtlcs0, p_o_image1_0__dup0_7_, p_f_i1_next_6_, 
              p_o_image1_0__dup0_6_, p_f_i1_next_5_, p_o_image1_0__dup0_5_, 
              p_f_i1_next_4_, p_o_image1_0__dup0_4_, p_f_i1_next_3_, 
              p_o_image1_0__dup0_3_, p_f_i1_next_2_, p_o_image1_0__dup0_2_, 
              p_f_i1_next_1_, p_o_image1_0__dup0_1_, p_f_i1_next_0_, 
              p_o_image1_0__dup0_0_, p_f_i2_next_7_, p_o_image1_2__dup0_7_, 
              p_f_i2_next_5_, p_o_image1_2__dup0_5_, p_f_i2_next_3_, 
              p_o_image1_2__dup0_3_, p_f_i2_next_1_, p_o_image1_2__dup0_1_, GND, 
              p_ix300_ix290_nx7_repl0, p_ix300_ix291_nx7_repl0, 
              p_ix300_ix292_nx7_repl0, p_ix300_ix293_nx7_repl0, 
              p_ix300_ix294_nx7_repl0, p_ix300_ix295_nx7_repl0, 
              p_ix300_ix296_nx7_repl0, p_ix300_ix297_nx7_repl0, 
              p_ix301_ix298_nx7_repl0, p_ix301_ix299_nx7_repl0, p_p20_repl0 ) ;

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
    input p_f_i1_next_7_ ;
    input p_rtlcs0 ;
    input p_o_image1_0__dup0_7_ ;
    input p_f_i1_next_6_ ;
    input p_o_image1_0__dup0_6_ ;
    input p_f_i1_next_5_ ;
    input p_o_image1_0__dup0_5_ ;
    input p_f_i1_next_4_ ;
    input p_o_image1_0__dup0_4_ ;
    input p_f_i1_next_3_ ;
    input p_o_image1_0__dup0_3_ ;
    input p_f_i1_next_2_ ;
    input p_o_image1_0__dup0_2_ ;
    input p_f_i1_next_1_ ;
    input p_o_image1_0__dup0_1_ ;
    input p_f_i1_next_0_ ;
    input p_o_image1_0__dup0_0_ ;
    input p_f_i2_next_7_ ;
    input p_o_image1_2__dup0_7_ ;
    input p_f_i2_next_5_ ;
    input p_o_image1_2__dup0_5_ ;
    input p_f_i2_next_3_ ;
    input p_o_image1_2__dup0_3_ ;
    input p_f_i2_next_1_ ;
    input p_o_image1_2__dup0_1_ ;
    output GND ;
    input p_ix300_ix290_nx7_repl0 ;
    input p_ix300_ix291_nx7_repl0 ;
    input p_ix300_ix292_nx7_repl0 ;
    input p_ix300_ix293_nx7_repl0 ;
    input p_ix300_ix294_nx7_repl0 ;
    input p_ix300_ix295_nx7_repl0 ;
    input p_ix300_ix296_nx7_repl0 ;
    input p_ix300_ix297_nx7_repl0 ;
    input p_ix301_ix298_nx7_repl0 ;
    input p_ix301_ix299_nx7_repl0 ;
    input p_p20_repl0 ;

    wire [9:0]p11;
    wire [9:0]p12;
    wire [10:1]p13;
    wire [12:0]p21;
    wire [12:0]p22;
    wire [10:0]p23;
    wire [12:0]p31;
    wire [10:0]p32;
    wire p35, p30, p41, p45, p40;
    wire [13:0]p43;
    wire [13:0]p4s;
    wire [1:0]p5m;
    wire max_fwd, prev_edge;
    wire [13:0]prev_max;
    wire [2:0]max_dir;
    wire [3:0]state;
    wire [8:0]p13_0n0s2;
    wire p21_4n0r3_9_, p21_4n0r3_8_, p21_4n0r3_7_, p21_4n0r3_6_, p21_4n0r3_5_, 
         p21_4n0r3_4_, p21_4n0r3_3_, p21_4n0r3_2_, p21_4n0r3_1_, p21_4n0r3_0_;
    
    wire [11:2]p21_4n0r4;
    wire [12:1]p21_4n0r2;
    wire p22_4n0r3_9_, p22_4n0r3_8_, p22_4n0r3_7_, p22_4n0r3_6_, p22_4n0r3_5_, 
         p22_4n0r3_4_, p22_4n0r3_3_, p22_4n0r3_2_, p22_4n0r3_1_, p22_4n0r3_0_;
    
    wire [11:2]p22_4n0r4;
    wire [12:1]p22_4n0r2;
    wire nx10171z1, nx10171z2, nx6401z1, nx6401z2, nx28128z1, nx27610z1, 
         nx32745z1, nx28607z1, nx33742z1, nx29604z1, nx34739z1, nx30601z1, 
         nx35736z1, nx31598z1, nx36733z1, nx32595z1, nx37730z1, nx33592z1, 
         nx38727z1, nx34589z1, nx39724z1, nx12724z1, nx7589z1, nx11727z1, 
         nx6592z1, PWR, nx25836z2, nx45188z2, nx26026z1, nx60988z2, nx30752z1, 
         nx27830z1, nx29521z2, nx60988z1, nx29521z1, nx25836z1, nx26833z1, 
         nx46185z1, nx45188z1, nx44191z1, nx49569z1, nx50566z1, nx51563z1, 
         nx52560z1, nx53557z1, nx54554z1, nx55551z1, nx56548z1, nx57545z1, 
         nx58542z1, nx25836z13, nx25836z11, nx25836z9, nx25836z8, nx45188z4, 
         nx45188z6, nx45188z7, nx25836z3, nx45188z3, nx25836z4, nx25836z5, 
         nx25836z6, nx25836z7, nx45188z5, nx26026z2, nx25836z10, nx25836z14, 
         nx25836z15, nx25836z12, nx27830z2;
    wire [1227:0] xmplr_dummy ;




    sub_10_0 p21_sub10_4i1 (.a ({p11[9],p11[8],p11[7],p11[6],p11[5],p11[4],
             p11[3],p11[2],p11[1],p11[0]}), .b ({p12[9],p12[8],p12[7],p12[6],
             p12[5],p12[4],p12[3],p12[2],p12[1],p12[0]}), .d ({p21_4n0r3_9_,
             p21_4n0r3_8_,p21_4n0r3_7_,p21_4n0r3_6_,p21_4n0r3_5_,p21_4n0r3_4_,
             p21_4n0r3_3_,p21_4n0r3_2_,p21_4n0r3_1_,p21_4n0r3_0_}), .cout (
             nx10171z1)) ;
    add_12_0 p21_add12_4i3 (.a ({xmplr_dummy [0],xmplr_dummy [1],xmplr_dummy [2]
             ,p21_4n0r3_9_,p21_4n0r3_8_,p21_4n0r3_7_,p21_4n0r3_6_,p21_4n0r3_5_,
             p21_4n0r3_4_,p21_4n0r3_3_,p21_4n0r3_2_,p21_4n0r3_1_}), .b ({
             xmplr_dummy [3],p21_4n0r4[11],p21_4n0r4[10],p21_4n0r4[9],
             p21_4n0r4[8],p21_4n0r4[7],p21_4n0r4[6],p21_4n0r4[5],p21_4n0r4[4],
             p21_4n0r4[3],p21_4n0r4[2],p12[0]}), .d ({p21_4n0r2[12],
             p21_4n0r2[11],p21_4n0r2[10],p21_4n0r2[9],p21_4n0r2[8],p21_4n0r2[7],
             p21_4n0r2[6],p21_4n0r2[5],p21_4n0r2[4],p21_4n0r2[3],p21_4n0r2[2],
             p21_4n0r2[1]}), .p_rtlcn1459 (nx10171z1), .p_rtlcn1499 (nx10171z2)
             ) ;
    sub_10_1 p22_sub10_4i4 (.a ({p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],
             p12[3],p12[2],p12[1],p12[0]}), .b ({p11[9],p11[8],p11[7],p11[6],
             p11[5],p11[4],p11[3],p11[2],p11[1],p11[0]}), .d ({p22_4n0r3_9_,
             p22_4n0r3_8_,p22_4n0r3_7_,p22_4n0r3_6_,p22_4n0r3_5_,p22_4n0r3_4_,
             p22_4n0r3_3_,p22_4n0r3_2_,p22_4n0r3_1_,p22_4n0r3_0_}), .cout (
             nx6401z1)) ;
    add_12_1 p22_add12_4i6 (.a ({xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6]
             ,p22_4n0r3_9_,p22_4n0r3_8_,p22_4n0r3_7_,p22_4n0r3_6_,p22_4n0r3_5_,
             p22_4n0r3_4_,p22_4n0r3_3_,p22_4n0r3_2_,p22_4n0r3_1_}), .b ({
             xmplr_dummy [7],p22_4n0r4[11],p22_4n0r4[10],p22_4n0r4[9],
             p22_4n0r4[8],p22_4n0r4[7],p22_4n0r4[6],p22_4n0r4[5],p22_4n0r4[4],
             p22_4n0r4[3],p22_4n0r4[2],p11[0]}), .d ({p22_4n0r2[12],
             p22_4n0r2[11],p22_4n0r2[10],p22_4n0r2[9],p22_4n0r2[8],p22_4n0r2[7],
             p22_4n0r2[6],p22_4n0r2[5],p22_4n0r2[4],p22_4n0r2[3],p22_4n0r2[2],
             p22_4n0r2[1]}), .p_rtlcn1556 (nx6401z1), .p_rtlcn1596 (nx6401z2)) ;
    add_8_0 p13_add8_0i3 (.b ({xmplr_dummy [8],i2[6],xmplr_dummy [9],i2[4],
            xmplr_dummy [10],i2[2],xmplr_dummy [11],i2[0]}), .d ({p13_0n0s2[7],
            p13_0n0s2[6],p13_0n0s2[5],p13_0n0s2[4],p13_0n0s2[3],p13_0n0s2[2],
            p13_0n0s2[1],p13_0n0s2[0]}), .cout (p13_0n0s2[8]), .p_f_i1_next_7_ (
            p_f_i1_next_7_), .p_rtlcs0 (p_rtlcs0), .p_o_image1_0__dup0_7_ (
            p_o_image1_0__dup0_7_), .p_f_i1_next_6_ (p_f_i1_next_6_), .p_o_image1_0__dup0_6_ (
            p_o_image1_0__dup0_6_), .p_f_i1_next_5_ (p_f_i1_next_5_), .p_o_image1_0__dup0_5_ (
            p_o_image1_0__dup0_5_), .p_f_i1_next_4_ (p_f_i1_next_4_), .p_o_image1_0__dup0_4_ (
            p_o_image1_0__dup0_4_), .p_f_i1_next_3_ (p_f_i1_next_3_), .p_o_image1_0__dup0_3_ (
            p_o_image1_0__dup0_3_), .p_f_i1_next_2_ (p_f_i1_next_2_), .p_o_image1_0__dup0_2_ (
            p_o_image1_0__dup0_2_), .p_f_i1_next_1_ (p_f_i1_next_1_), .p_o_image1_0__dup0_1_ (
            p_o_image1_0__dup0_1_), .p_f_i1_next_0_ (p_f_i1_next_0_), .p_o_image1_0__dup0_0_ (
            p_o_image1_0__dup0_0_), .p_f_i2_next_7_ (p_f_i2_next_7_), .p_o_image1_2__dup0_7_ (
            p_o_image1_2__dup0_7_), .p_f_i2_next_5_ (p_f_i2_next_5_), .p_o_image1_2__dup0_5_ (
            p_o_image1_2__dup0_5_), .p_f_i2_next_3_ (p_f_i2_next_3_), .p_o_image1_2__dup0_3_ (
            p_o_image1_2__dup0_3_), .p_f_i2_next_1_ (p_f_i2_next_1_), .p_o_image1_2__dup0_1_ (
            p_o_image1_2__dup0_1_)) ;
    add_9_0 p13_add9_2 (.a ({xmplr_dummy [12],p13_0n0s2[8],p13_0n0s2[7],
            p13_0n0s2[6],p13_0n0s2[5],p13_0n0s2[4],p13_0n0s2[3],p13_0n0s2[2],
            p13_0n0s2[1]}), .b ({xmplr_dummy [13],xmplr_dummy [14],
            xmplr_dummy [15],xmplr_dummy [16],xmplr_dummy [17],xmplr_dummy [18],
            xmplr_dummy [19],xmplr_dummy [20],p13_0n0s2[0]}), .d ({p13[9],p13[8]
            ,p13[7],p13[6],p13[5],p13[4],p13[3],p13[2],p13[1]}), .cout (p13[10])
            ) ;
    sub_12_0 p4s_sub12_3 (.a ({p31[11],p31[10],p31[9],p31[8],p31[7],p31[6],
             p31[5],p31[4],p31[3],p31[2],p31[1],p31[0]}), .b ({xmplr_dummy [21],
             p32[10],p32[9],p32[8],p32[7],p32[6],p32[5],p32[4],p32[3],p32[2],
             p32[1],p32[0]}), .d ({p4s[11],p4s[10],p4s[9],p4s[8],p4s[7],p4s[6],
             p4s[5],p4s[4],p4s[3],p4s[2],p4s[1],p4s[0]}), .cout (nx28128z1)) ;
    modgen_adderblock_3_0 modgen_adderblock (.a0 ({b1[7],b1[6],b1[5],b1[4],b1[3]
                          ,b1[2],b1[1],b1[0]}), .a1 ({b2[7],b2[6],b2[5],b2[4],
                          b2[3],b2[2],b2[1],b2[0]}), .a2 ({xmplr_dummy [22],
                          b3[7],b3[6],b3[5],b3[4],b3[3],b3[2],b3[1],b3[0]}), .d (
                          {p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],p12[3],
                          p12[2],p12[1],p12[0]})) ;
    modgen_adderblock_3_1 modgen_adderblock_dup_0 (.a0 ({t1[7],t1[6],t1[5],t1[4]
                          ,t1[3],t1[2],t1[1],t1[0]}), .a1 ({t2[7],t2[6],t2[5],
                          t2[4],t2[3],t2[2],t2[1],t2[0]}), .a2 ({
                          xmplr_dummy [23],t3[7],t3[6],t3[5],t3[4],t3[3],t3[2],
                          t3[1],t3[0]}), .d ({p11[9],p11[8],p11[7],p11[6],p11[5]
                          ,p11[4],p11[3],p11[2],p11[1],p11[0]})) ;
    sub_10_2 p21_sub11_4i2 (.a ({p11[9],p11[8],p11[7],p11[6],p11[5],p11[4],
             p11[3],p11[2],p11[1],p11[0]}), .b ({xmplr_dummy [24],p12[9],p12[8],
             p12[7],p12[6],p12[5],p12[4],p12[3],p12[2],p12[1]}), .d ({
             p21_4n0r4[11],p21_4n0r4[10],p21_4n0r4[9],p21_4n0r4[8],p21_4n0r4[7],
             p21_4n0r4[6],p21_4n0r4[5],p21_4n0r4[4],p21_4n0r4[3],p21_4n0r4[2]})
             , .cout (nx10171z2), .p_p12_0_ (p12[0])) ;
    sub_10_3 p22_sub11_4i5 (.a ({p12[9],p12[8],p12[7],p12[6],p12[5],p12[4],
             p12[3],p12[2],p12[1],p12[0]}), .b ({xmplr_dummy [25],p11[9],p11[8],
             p11[7],p11[6],p11[5],p11[4],p11[3],p11[2],p11[1]}), .d ({
             p22_4n0r4[11],p22_4n0r4[10],p22_4n0r4[9],p22_4n0r4[8],p22_4n0r4[7],
             p22_4n0r4[6],p22_4n0r4[5],p22_4n0r4[4],p22_4n0r4[3],p22_4n0r4[2]})
             , .cout (nx6401z2), .p_p11_0_ (p11[0])) ;
    assign PWR = 1 ;
    stratixii_lcell_ff reg_tmp_o_edge (.regout (o_edge), .datain (prev_edge), .adatasdata (
                       p41), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx30752z1)) ;
    stratixii_lcell_ff reg_state_3_ (.regout (state[3]), .datain (state[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (nx29521z2), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_2_ (.regout (state[2]), .datain (state[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (nx29521z2), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_1_ (.regout (state[1]), .datain (state[0]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (nx29521z2), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_0_ (.regout (state[0]), .datain (nx29521z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (nx29521z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_9_ (.regout (prev_max[9]), .datain (p43[9])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_8_ (.regout (prev_max[8]), .datain (p43[8])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_7_ (.regout (prev_max[7]), .datain (p43[7])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_6_ (.regout (prev_max[6]), .datain (p43[6])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_5_ (.regout (prev_max[5]), .datain (p43[5])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_4_ (.regout (prev_max[4]), .datain (p43[4])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_3_ (.regout (prev_max[3]), .datain (p43[3])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_2_ (.regout (prev_max[2]), .datain (p43[2])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_13_ (.regout (prev_max[13]), .datain (
                       p43[13]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       nx60988z1), .aclr (1'b0), .sclr (nx60988z2), .sload (1'b0
                       )) ;
    stratixii_lcell_ff reg_prev_max_12_ (.regout (prev_max[12]), .datain (
                       p43[12]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       nx60988z1), .aclr (1'b0), .sclr (nx60988z2), .sload (1'b0
                       )) ;
    stratixii_lcell_ff reg_prev_max_11_ (.regout (prev_max[11]), .datain (
                       p43[11]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       nx60988z1), .aclr (1'b0), .sclr (nx60988z2), .sload (1'b0
                       )) ;
    stratixii_lcell_ff reg_prev_max_10_ (.regout (prev_max[10]), .datain (
                       p43[10]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       nx60988z1), .aclr (1'b0), .sclr (nx60988z2), .sload (1'b0
                       )) ;
    stratixii_lcell_ff reg_prev_max_1_ (.regout (prev_max[1]), .datain (p43[1])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_max_0_ (.regout (prev_max[0]), .datain (p43[0])
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (
                       1'b0), .sclr (nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_prev_edge (.regout (prev_edge), .datain (p41), .adatasdata (
                       1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (1'b0), .sclr (
                       nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p45 (.regout (p45), .datain (p35), .adatasdata (1'b0)
                       , .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_9_ (.regout (p43[9]), .datain (p4s[9]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_8_ (.regout (p43[8]), .datain (p4s[8]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_7_ (.regout (p43[7]), .datain (p4s[7]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_6_ (.regout (p43[6]), .datain (p4s[6]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_5_ (.regout (p43[5]), .datain (p4s[5]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_4_ (.regout (p43[4]), .datain (p4s[4]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_3_ (.regout (p43[3]), .datain (p4s[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_2_ (.regout (p43[2]), .datain (p4s[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_13_ (.regout (p43[13]), .datain (p4s[13]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_12_ (.regout (p43[12]), .datain (p4s[12]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_11_ (.regout (p43[11]), .datain (p4s[11]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_10_ (.regout (p43[10]), .datain (p4s[10]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_1_ (.regout (p43[1]), .datain (p4s[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p43_0_ (.regout (p43[0]), .datain (p4s[0]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p41 (.regout (p41), .datain (nx26026z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p40 (.regout (p40), .datain (p30), .adatasdata (1'b0)
                       , .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    stratixii_lcell_ff reg_p35 (.regout (p35), .datain (nx45188z2), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_9_ (.regout (p32[9]), .datain (p23[9]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_8_ (.regout (p32[8]), .datain (p23[8]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_7_ (.regout (p32[7]), .datain (p23[7]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_6_ (.regout (p32[6]), .datain (p23[6]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_5_ (.regout (p32[5]), .datain (p23[5]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_4_ (.regout (p32[4]), .datain (p23[4]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_3_ (.regout (p32[3]), .datain (p23[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_2_ (.regout (p32[2]), .datain (p23[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_10_ (.regout (p32[10]), .datain (p23[10]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_1_ (.regout (p32[1]), .datain (p23[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p32_0_ (.regout (p32[0]), .datain (p23[0]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_9_ (.regout (p31[9]), .datain (nx49569z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_8_ (.regout (p31[8]), .datain (nx50566z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_7_ (.regout (p31[7]), .datain (nx51563z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_6_ (.regout (p31[6]), .datain (nx52560z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_5_ (.regout (p31[5]), .datain (nx53557z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_4_ (.regout (p31[4]), .datain (nx54554z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_3_ (.regout (p31[3]), .datain (nx55551z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_2_ (.regout (p31[2]), .datain (nx56548z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_12_ (.regout (p31[12]), .datain (nx46185z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_11_ (.regout (p31[11]), .datain (nx45188z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_10_ (.regout (p31[10]), .datain (nx44191z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_1_ (.regout (p31[1]), .datain (nx57545z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p31_0_ (.regout (p31[0]), .datain (nx58542z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p30 (.regout (p30), .datain (p_p20_repl0), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_9_ (.regout (p23[9]), .datain (p13[9]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_8_ (.regout (p23[8]), .datain (p13[8]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_7_ (.regout (p23[7]), .datain (p13[7]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_6_ (.regout (p23[6]), .datain (p13[6]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_5_ (.regout (p23[5]), .datain (p13[5]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_4_ (.regout (p23[4]), .datain (p13[4]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_3_ (.regout (p23[3]), .datain (p13[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_2_ (.regout (p23[2]), .datain (p13[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_10_ (.regout (p23[10]), .datain (p13[10]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_1_ (.regout (p23[1]), .datain (p13[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p23_0_ (.regout (p23[0]), .datain (p13_0n0s2[0]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_9_ (.regout (p22[9]), .datain (p22_4n0r2[9]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_8_ (.regout (p22[8]), .datain (p22_4n0r2[8]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_7_ (.regout (p22[7]), .datain (p22_4n0r2[7]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_6_ (.regout (p22[6]), .datain (p22_4n0r2[6]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_5_ (.regout (p22[5]), .datain (p22_4n0r2[5]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_4_ (.regout (p22[4]), .datain (p22_4n0r2[4]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_3_ (.regout (p22[3]), .datain (p22_4n0r2[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_2_ (.regout (p22[2]), .datain (p22_4n0r2[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_12_ (.regout (p22[12]), .datain (p22_4n0r2[12]), 
                       .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_11_ (.regout (p22[11]), .datain (p22_4n0r2[11]), 
                       .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_10_ (.regout (p22[10]), .datain (p22_4n0r2[10]), 
                       .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_1_ (.regout (p22[1]), .datain (p22_4n0r2[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p22_0_ (.regout (p22[0]), .datain (p22_4n0r3_0_), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_9_ (.regout (p21[9]), .datain (p21_4n0r2[9]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_8_ (.regout (p21[8]), .datain (p21_4n0r2[8]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_7_ (.regout (p21[7]), .datain (p21_4n0r2[7]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_6_ (.regout (p21[6]), .datain (p21_4n0r2[6]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_5_ (.regout (p21[5]), .datain (p21_4n0r2[5]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_4_ (.regout (p21[4]), .datain (p21_4n0r2[4]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_3_ (.regout (p21[3]), .datain (p21_4n0r2[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_2_ (.regout (p21[2]), .datain (p21_4n0r2[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_12_ (.regout (p21[12]), .datain (p21_4n0r2[12]), 
                       .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_11_ (.regout (p21[11]), .datain (p21_4n0r2[11]), 
                       .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_10_ (.regout (p21[10]), .datain (p21_4n0r2[10]), 
                       .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_1_ (.regout (p21[1]), .datain (p21_4n0r2[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_p21_0_ (.regout (p21[0]), .datain (p21_4n0r3_0_), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_valid (.regout (o_valid), .datain (state[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    stratixii_lcell_ff reg_max_fwd (.regout (max_fwd), .datain (p45), .adatasdata (
                       1'b0), .clk (i_clock), .ena (nx60988z1), .aclr (1'b0), .sclr (
                       nx60988z2), .sload (1'b0)) ;
    stratixii_lcell_ff reg_max_dir_2_ (.regout (max_dir[2]), .datain (nx25836z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_max_dir_1_ (.regout (max_dir[1]), .datain (nx26833z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_max_dir_0_ (.regout (max_dir[0]), .datain (nx27830z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_comb ix25836z37212 (.combout (nx25836z12), .dataa (
                         prev_max[0]), .datab (prev_max[4]), .datac (prev_max[5]
                         ), .datad (p43[0]), .datae (p43[4]), .dataf (p43[5]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix25836z37212.lut_mask = 64'h7fbfdfeff7fbfdfe;
    stratixii_lcell_comb ix25836z37215 (.combout (nx25836z15), .dataa (1'b1), .datab (
                         1'b1), .datac (prev_max[8]), .datad (prev_max[9]), .datae (
                         p43[8]), .dataf (p43[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix25836z37215.lut_mask = 64'h0ffff0ffff0ffff0;
    stratixii_lcell_comb ix25836z37214 (.combout (nx25836z14), .dataa (1'b1), .datab (
                         nx25836z15), .datac (prev_max[10]), .datad (
                         prev_max[11]), .datae (p43[10]), .dataf (p43[11]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix25836z37214.lut_mask = 64'hcffffcffffcffffc;
    stratixii_lcell_comb ix25836z37210 (.combout (nx25836z10), .dataa (
                         prev_max[6]), .datab (prev_max[7]), .datac (max_fwd), .datad (
                         p43[6]), .datae (p43[7]), .dataf (p45), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix25836z37210.lut_mask = 64'h0804020100000000;
    stratixii_lcell_comb ix26026z37202 (.combout (nx26026z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28128z1), .datae (p30)
                         , .dataf (p31[12]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix26026z37202.lut_mask = 64'h00000000ff000000;
    stratixii_lcell_comb ix45188z37205 (.combout (nx45188z5), .dataa (1'b1), .datab (
                         nx45188z6), .datac (p22[5]), .datad (p22[6]), .datae (
                         p21[5]), .dataf (p21[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45188z37205.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix25836z37207 (.combout (nx25836z7), .dataa (1'b1), .datab (
                         nx25836z8), .datac (prev_max[3]), .datad (prev_max[4])
                         , .datae (p43[3]), .dataf (p43[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37207.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix25836z37206 (.combout (nx25836z6), .dataa (1'b1), .datab (
                         nx25836z7), .datac (prev_max[5]), .datad (prev_max[6])
                         , .datae (p43[5]), .dataf (p43[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37206.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix25836z37205 (.combout (nx25836z5), .dataa (1'b1), .datab (
                         nx25836z6), .datac (prev_max[7]), .datad (prev_max[8])
                         , .datae (p43[7]), .dataf (p43[8]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37205.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix25836z37204 (.combout (nx25836z4), .dataa (1'b1), .datab (
                         nx25836z5), .datac (prev_max[9]), .datad (prev_max[10])
                         , .datae (p43[9]), .dataf (p43[10]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37204.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix45188z37203 (.combout (nx45188z3), .dataa (1'b1), .datab (
                         nx45188z4), .datac (p22[9]), .datad (p22[10]), .datae (
                         p21[9]), .dataf (p21[10]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix45188z37203.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix25836z37203 (.combout (nx25836z3), .dataa (1'b1), .datab (
                         nx25836z4), .datac (prev_max[11]), .datad (prev_max[12]
                         ), .datae (p43[11]), .dataf (p43[12]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37203.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix45188z37207 (.combout (nx45188z7), .dataa (p22[0]), .datab (
                         p22[1]), .datac (p22[2]), .datad (p21[0]), .datae (
                         p21[1]), .dataf (p21[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45188z37207.lut_mask = 64'h0080c0e0f0f8fcfe;
    stratixii_lcell_comb ix45188z37206 (.combout (nx45188z6), .dataa (1'b1), .datab (
                         nx45188z7), .datac (p22[3]), .datad (p22[4]), .datae (
                         p21[3]), .dataf (p21[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45188z37206.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix45188z37204 (.combout (nx45188z4), .dataa (1'b1), .datab (
                         nx45188z5), .datac (p22[7]), .datad (p22[8]), .datae (
                         p21[7]), .dataf (p21[8]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45188z37204.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix25836z37208 (.combout (nx25836z8), .dataa (
                         prev_max[0]), .datab (prev_max[1]), .datac (prev_max[2]
                         ), .datad (p43[0]), .datae (p43[1]), .dataf (p43[2]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix25836z37208.lut_mask = 64'h7f3f1f0f07030100;
    stratixii_lcell_comb ix25836z37209 (.combout (nx25836z9), .dataa (1'b1), .datab (
                         nx25836z10), .datac (nx25836z11), .datad (nx25836z13), 
                         .datae (prev_max[1]), .dataf (p43[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37209.lut_mask = 64'h000c00000000000c;
    stratixii_lcell_comb ix25836z37211 (.combout (nx25836z11), .dataa (1'b1), .datab (
                         nx25836z12), .datac (prev_max[2]), .datad (prev_max[3])
                         , .datae (p43[2]), .dataf (p43[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37211.lut_mask = 64'hcffffcffffcffffc;
    stratixii_lcell_comb ix25836z37213 (.combout (nx25836z13), .dataa (1'b1), .datab (
                         nx25836z14), .datac (prev_max[12]), .datad (
                         prev_max[13]), .datae (p43[12]), .dataf (p43[13]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix25836z37213.lut_mask = 64'hcffffcffffcffffc;
    stratixii_lcell_comb ix58542z37201 (.combout (nx58542z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[0]), .dataf (p21[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58542z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix57545z37201 (.combout (nx57545z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[1]), .dataf (p21[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57545z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix56548z37201 (.combout (nx56548z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[2]), .dataf (p21[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix56548z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix55551z37201 (.combout (nx55551z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[3]), .dataf (p21[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55551z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix54554z37201 (.combout (nx54554z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[4]), .dataf (p21[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54554z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix53557z37201 (.combout (nx53557z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[5]), .dataf (p21[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix53557z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix52560z37201 (.combout (nx52560z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[6]), .dataf (p21[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix52560z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix51563z37201 (.combout (nx51563z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[7]), .dataf (p21[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51563z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix50566z37201 (.combout (nx50566z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[8]), .dataf (p21[8]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50566z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix49569z37201 (.combout (nx49569z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[9]), .dataf (p21[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49569z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix44191z37201 (.combout (nx44191z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[10]), .dataf (p21[10]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix44191z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix45188z37201 (.combout (nx45188z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[11]), .dataf (p21[11]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix45188z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix46185z37201 (.combout (nx46185z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx45188z2), .datae (
                         p22[12]), .dataf (p21[12]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix46185z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix26833z37201 (.combout (nx26833z1), .dataa (nx25836z2)
                         , .datab (state[0]), .datac (state[1]), .datad (
                         state[2]), .datae (state[3]), .dataf (max_dir[1]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix26833z37201.lut_mask = 64'h5757575702020200;
    stratixii_lcell_comb ix25836z37201 (.combout (nx25836z1), .dataa (nx25836z2)
                         , .datab (state[0]), .datac (state[1]), .datad (
                         state[2]), .datae (state[3]), .dataf (max_dir[2]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix25836z37201.lut_mask = 64'h7577757720222020;
    stratixii_lcell_comb ix29521z37201 (.combout (nx29521z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (state[3])
                         , .dataf (i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29521z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix60988z37201 (.combout (nx60988z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx25836z2), .datad (state[3]), .datae (
                         p40), .dataf (i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60988z37201.lut_mask = 64'hfffffffffff0ffff;
    stratixii_lcell_comb ix29521z37202 (.combout (nx29521z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (p40), .dataf (
                         i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29521z37202.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix27830z37201 (.combout (nx27830z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (state[0])
                         , .dataf (p45), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27830z37201.lut_mask = 64'hffff00000000ffff;
    stratixii_lcell_comb ix30752z37201 (.combout (nx30752z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx25836z2)
                         , .dataf (state[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30752z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix60988z37202 (.combout (nx60988z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (state[3]), .datae (p40), 
                         .dataf (i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60988z37202.lut_mask = 64'hffffffffff00ffff;
    stratixii_lcell_comb ix26026z37201 (.combout (nx26026z1), .dataa (nx26026z2)
                         , .datab (p4s[7]), .datac (p4s[8]), .datad (p4s[9]), .datae (
                         p4s[10]), .dataf (p4s[11]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix26026z37201.lut_mask = 64'haaaaaaaaaaaaaa80;
    stratixii_lcell_comb ix45188z37202 (.combout (nx45188z2), .dataa (1'b1), .datab (
                         nx45188z3), .datac (p22[11]), .datad (p22[12]), .datae (
                         p21[11]), .dataf (p21[12]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix45188z37202.lut_mask = 64'h3f000300ff3fff03;
    stratixii_lcell_comb ix677_repl (.combout (nx27830z2), .dataa (1'b1), .datab (
                         1'b1), .datac (nx25836z3), .datad (nx25836z9), .datae (
                         prev_max[13]), .dataf (p43[13]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix677_repl.lut_mask = 64'hfff0ff00fffffff0;
    stratixii_lcell_comb ix25836z37202 (.combout (nx25836z2), .dataa (1'b1), .datab (
                         1'b1), .datac (nx25836z3), .datad (nx25836z9), .datae (
                         prev_max[13]), .dataf (p43[13]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25836z37202.lut_mask = 64'hfff0ff00fffffff0;
    stratixii_lcell_comb ix28128z37201 (.combout (p4s[12]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx28128z1)
                         , .dataf (p31[12]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28128z37201.lut_mask = 64'hffff00000000ffff;
    stratixii_lcell_comb ix29125z37201 (.combout (p4s[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx28128z1)
                         , .dataf (p31[12]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29125z37201.lut_mask = 64'hffffffff0000ffff;
    stratixii_lcell_comb ix15976z37201 (.combout (o_mode[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (p5m[0]), .dataf (
                         i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15976z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix16973z37201 (.combout (o_mode[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (p5m[1]), .dataf (
                         i_reset), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16973z37201.lut_mask = 64'h00000000ffff0000;
    stratixii_lcell_comb ix63886z37201 (.combout (o_dir[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (max_dir[0]
                         ), .dataf (o_edge), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63886z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix62889z37201 (.combout (o_dir[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (max_dir[1]
                         ), .dataf (o_edge), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62889z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix61892z37201 (.combout (o_dir[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (max_dir[2]
                         ), .dataf (o_edge), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61892z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_ff ix301_reg_p5m_1_ (.regout (p5m[1]), .datain (nx7589z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix301_reg_p5m_0_ (.regout (p5m[0]), .datain (nx6592z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix301_reg_p4m_1_ (.regout (nx7589z1), .datain (nx12724z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix301_reg_p4m_0_ (.regout (nx6592z1), .datain (nx11727z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix301_reg_p3m_1_ (.regout (nx12724z1), .datain (
                       p_ix301_ix298_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix301_reg_p3m_0_ (.regout (nx11727z1), .datain (
                       p_ix301_ix299_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_7_ (.regout (o_row[7]), .datain (nx32745z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_6_ (.regout (o_row[6]), .datain (nx33742z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_5_ (.regout (o_row[5]), .datain (nx34739z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_4_ (.regout (o_row[4]), .datain (nx35736z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_3_ (.regout (o_row[3]), .datain (nx36733z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_2_ (.regout (o_row[2]), .datain (nx37730z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_1_ (.regout (o_row[1]), .datain (nx38727z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p5r_0_ (.regout (o_row[0]), .datain (nx39724z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_7_ (.regout (nx32745z1), .datain (nx27610z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_6_ (.regout (nx33742z1), .datain (nx28607z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_5_ (.regout (nx34739z1), .datain (nx29604z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_4_ (.regout (nx35736z1), .datain (nx30601z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_3_ (.regout (nx36733z1), .datain (nx31598z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_2_ (.regout (nx37730z1), .datain (nx32595z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_1_ (.regout (nx38727z1), .datain (nx33592z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p4r_0_ (.regout (nx39724z1), .datain (nx34589z1
                       ), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_7_ (.regout (nx27610z1), .datain (
                       p_ix300_ix290_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_6_ (.regout (nx28607z1), .datain (
                       p_ix300_ix291_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_5_ (.regout (nx29604z1), .datain (
                       p_ix300_ix292_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_4_ (.regout (nx30601z1), .datain (
                       p_ix300_ix293_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_3_ (.regout (nx31598z1), .datain (
                       p_ix300_ix294_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_2_ (.regout (nx32595z1), .datain (
                       p_ix300_ix295_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_1_ (.regout (nx33592z1), .datain (
                       p_ix300_ix296_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff ix300_reg_p3r_0_ (.regout (nx34589z1), .datain (
                       p_ix300_ix297_nx7_repl0), .adatasdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
endmodule


module sub_10_3 ( cin, a, b, d, cout, p_p11_0_ ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;
    input p_p11_0_ ;

    wire nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
         nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
         nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
         nx43230z4, nx43230z2, nx9356z1, nx9356z2;
    wire [68:0] xmplr_dummy ;




    assign nx11426z3 = 0 ;
    assign nx43230z2 = ~a[9] ;
    stratixii_lcell_comb ix97_dup_0 (.sumout (d[3]), .cout (nx41091z3), .shareout (
                         nx41091z4), .dataa (1'b1), .datab (1'b1), .datac (b[3])
                         , .datad (a[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx15260z3), .sharein (nx15260z4)) ;
                         
                         defparam ix97_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix97_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix86_dup_0 (.sumout (d[2]), .cout (nx15260z3), .shareout (
                         nx15260z4), .dataa (1'b1), .datab (1'b1), .datac (b[2])
                         , .datad (a[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37326z3), .sharein (nx37326z4)) ;
                         
                         defparam ix86_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix86_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix75_dup_0 (.sumout (d[1]), .cout (nx37326z3), .shareout (
                         nx37326z4), .dataa (1'b1), .datab (1'b1), .datac (b[1])
                         , .datad (a[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41160z3), .sharein (nx41160z4)) ;
                         
                         defparam ix75_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix75_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix64_dup_0 (.sumout (d[0]), .cout (nx41160z3), .shareout (
                         nx41160z4), .dataa (1'b1), .datab (b[0]), .datac (
                         p_p11_0_), .datad (a[0]), .datae (1'b1), .dataf (1'b1)
                         , .datag (1'b1), .cin (nx11426z3), .sharein (nx11426z3)
                         ) ;
                         
                         defparam ix64_dup_0.lut_mask = 64'h00003f030000c33c;
                         defparam ix64_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix174_dup_0 (.sumout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx9356z1), .sharein (
                         nx9356z2)) ;
                         
                         defparam ix174_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix174_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix163_dup_0 (.sumout (d[9]), .cout (nx9356z1), .shareout (
                         nx9356z2), .dataa (1'b1), .datab (1'b1), .datac (a[9])
                         , .datad (nx43230z2), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx43230z3), .sharein (nx43230z4)) ;
                         
                         defparam ix163_dup_0.lut_mask = 64'h0000f0f00000ff00;
                         
                         defparam ix163_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix152_dup_0 (.sumout (d[8]), .cout (nx43230z3), .shareout (
                         nx43230z4), .dataa (1'b1), .datab (1'b1), .datac (b[8])
                         , .datad (a[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35256z3), .sharein (nx35256z4)) ;
                         
                         defparam ix152_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix152_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix141_dup_0 (.sumout (d[7]), .cout (nx35256z3), .shareout (
                         nx35256z4), .dataa (1'b1), .datab (1'b1), .datac (b[7])
                         , .datad (a[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx17330z3), .sharein (nx17330z4)) ;
                         
                         defparam ix141_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix141_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix130_dup_0 (.sumout (d[6]), .cout (nx17330z3), .shareout (
                         nx17330z4), .dataa (1'b1), .datab (1'b1), .datac (b[6])
                         , .datad (a[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx61156z3), .sharein (nx61156z4)) ;
                         
                         defparam ix130_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix130_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix119_dup_0 (.sumout (d[5]), .cout (nx61156z3), .shareout (
                         nx61156z4), .dataa (1'b1), .datab (1'b1), .datac (b[5])
                         , .datad (a[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37395z3), .sharein (nx37395z4)) ;
                         
                         defparam ix119_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix119_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix108_dup_0 (.sumout (d[4]), .cout (nx37395z3), .shareout (
                         nx37395z4), .dataa (1'b1), .datab (1'b1), .datac (b[4])
                         , .datad (a[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41091z3), .sharein (nx41091z4)) ;
                         
                         defparam ix108_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix108_dup_0.shared_arith = "on";
endmodule


module sub_10_2 ( cin, a, b, d, cout, p_p12_0_ ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;
    input p_p12_0_ ;

    wire nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
         nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
         nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
         nx43230z4, nx43230z2, nx9356z1, nx9356z2;
    wire [68:0] xmplr_dummy ;




    assign nx11426z3 = 0 ;
    assign nx43230z2 = ~a[9] ;
    stratixii_lcell_comb ix97_dup_0 (.sumout (d[3]), .cout (nx41091z3), .shareout (
                         nx41091z4), .dataa (1'b1), .datab (1'b1), .datac (b[3])
                         , .datad (a[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx15260z3), .sharein (nx15260z4)) ;
                         
                         defparam ix97_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix97_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix86_dup_0 (.sumout (d[2]), .cout (nx15260z3), .shareout (
                         nx15260z4), .dataa (1'b1), .datab (1'b1), .datac (b[2])
                         , .datad (a[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37326z3), .sharein (nx37326z4)) ;
                         
                         defparam ix86_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix86_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix75_dup_0 (.sumout (d[1]), .cout (nx37326z3), .shareout (
                         nx37326z4), .dataa (1'b1), .datab (1'b1), .datac (b[1])
                         , .datad (a[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41160z3), .sharein (nx41160z4)) ;
                         
                         defparam ix75_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix75_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix64_dup_0 (.sumout (d[0]), .cout (nx41160z3), .shareout (
                         nx41160z4), .dataa (1'b1), .datab (b[0]), .datac (
                         p_p12_0_), .datad (a[0]), .datae (1'b1), .dataf (1'b1)
                         , .datag (1'b1), .cin (nx11426z3), .sharein (nx11426z3)
                         ) ;
                         
                         defparam ix64_dup_0.lut_mask = 64'h00003f030000c33c;
                         defparam ix64_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix174_dup_0 (.sumout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx9356z1), .sharein (
                         nx9356z2)) ;
                         
                         defparam ix174_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix174_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix163_dup_0 (.sumout (d[9]), .cout (nx9356z1), .shareout (
                         nx9356z2), .dataa (1'b1), .datab (1'b1), .datac (a[9])
                         , .datad (nx43230z2), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx43230z3), .sharein (nx43230z4)) ;
                         
                         defparam ix163_dup_0.lut_mask = 64'h0000f0f00000ff00;
                         
                         defparam ix163_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix152_dup_0 (.sumout (d[8]), .cout (nx43230z3), .shareout (
                         nx43230z4), .dataa (1'b1), .datab (1'b1), .datac (b[8])
                         , .datad (a[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35256z3), .sharein (nx35256z4)) ;
                         
                         defparam ix152_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix152_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix141_dup_0 (.sumout (d[7]), .cout (nx35256z3), .shareout (
                         nx35256z4), .dataa (1'b1), .datab (1'b1), .datac (b[7])
                         , .datad (a[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx17330z3), .sharein (nx17330z4)) ;
                         
                         defparam ix141_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix141_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix130_dup_0 (.sumout (d[6]), .cout (nx17330z3), .shareout (
                         nx17330z4), .dataa (1'b1), .datab (1'b1), .datac (b[6])
                         , .datad (a[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx61156z3), .sharein (nx61156z4)) ;
                         
                         defparam ix130_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix130_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix119_dup_0 (.sumout (d[5]), .cout (nx61156z3), .shareout (
                         nx61156z4), .dataa (1'b1), .datab (1'b1), .datac (b[5])
                         , .datad (a[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37395z3), .sharein (nx37395z4)) ;
                         
                         defparam ix119_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix119_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix108_dup_0 (.sumout (d[4]), .cout (nx37395z3), .shareout (
                         nx37395z4), .dataa (1'b1), .datab (1'b1), .datac (b[4])
                         , .datad (a[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41091z3), .sharein (nx41091z4)) ;
                         
                         defparam ix108_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix108_dup_0.shared_arith = "on";
endmodule


module modgen_adderblock_3_1 ( a0, a1, a2, d ) ;

    input [7:0]a0 ;
    input [7:0]a1 ;
    input [8:0]a2 ;
    output [9:0]d ;

    wire nx35620z1, nx42866z1, nx42866z2, nx9720z1, nx9720z2, nx3230z1, nx3230z2, 
         nx49356z1, nx49356z2, nx29130z1, nx29130z2, nx23456z1, nx23456z2, 
         nx55030z1, nx55030z2, nx48770z1, nx48770z2, nx3816z1, nx3816z2;
    wire [57:0] xmplr_dummy ;




    assign nx35620z1 = 0 ;
    stratixii_lcell_comb ix99_dup_0 (.sumout (d[7]), .cout (nx48770z1), .shareout (
                         nx48770z2), .dataa (1'b1), .datab (a0[7]), .datac (
                         a2[7]), .datad (a1[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx55030z1), .sharein (nx55030z2)) ;
                         
                         defparam ix99_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix99_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix88_dup_0 (.sumout (d[6]), .cout (nx55030z1), .shareout (
                         nx55030z2), .dataa (1'b1), .datab (a0[6]), .datac (
                         a2[6]), .datad (a1[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx23456z1), .sharein (nx23456z2)) ;
                         
                         defparam ix88_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix88_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix77_dup_0 (.sumout (d[5]), .cout (nx23456z1), .shareout (
                         nx23456z2), .dataa (1'b1), .datab (a0[5]), .datac (
                         a2[5]), .datad (a1[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx29130z1), .sharein (nx29130z2)) ;
                         
                         defparam ix77_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix77_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix66_dup_0 (.sumout (d[4]), .cout (nx29130z1), .shareout (
                         nx29130z2), .dataa (1'b1), .datab (a0[4]), .datac (
                         a2[4]), .datad (a1[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx49356z1), .sharein (nx49356z2)) ;
                         
                         defparam ix66_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix66_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix55_dup_0 (.sumout (d[3]), .cout (nx49356z1), .shareout (
                         nx49356z2), .dataa (1'b1), .datab (a0[3]), .datac (
                         a2[3]), .datad (a1[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx3230z1), .sharein (nx3230z2)) ;
                         
                         defparam ix55_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix55_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix44_dup_0 (.sumout (d[2]), .cout (nx3230z1), .shareout (
                         nx3230z2), .dataa (1'b1), .datab (a0[2]), .datac (a2[2]
                         ), .datad (a1[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx9720z1), .sharein (nx9720z2)) ;
                         
                         defparam ix44_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix44_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix33_dup_0 (.sumout (d[1]), .cout (nx9720z1), .shareout (
                         nx9720z2), .dataa (1'b1), .datab (a0[1]), .datac (a2[1]
                         ), .datad (a1[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx42866z1), .sharein (nx42866z2)) ;
                         
                         defparam ix33_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix33_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix22_dup_0 (.sumout (d[0]), .cout (nx42866z1), .shareout (
                         nx42866z2), .dataa (1'b1), .datab (a0[0]), .datac (
                         a2[0]), .datad (a1[0]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35620z1), .sharein (nx35620z1)) ;
                         
                         defparam ix22_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix22_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix121_dup_0 (.sumout (d[9]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx3816z1), .sharein (
                         nx3816z2)) ;
                         
                         defparam ix121_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix121_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix110_dup_0 (.sumout (d[8]), .cout (nx3816z1), .shareout (
                         nx3816z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (1'b1), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx48770z1), .sharein (nx48770z2)) ;
                         
                         defparam ix110_dup_0.lut_mask = 64'h0000000000000000;
                         
                         defparam ix110_dup_0.shared_arith = "on";
endmodule


module modgen_adderblock_3_0 ( a0, a1, a2, d ) ;

    input [7:0]a0 ;
    input [7:0]a1 ;
    input [8:0]a2 ;
    output [9:0]d ;

    wire nx35620z1, nx42866z1, nx42866z2, nx9720z1, nx9720z2, nx3230z1, nx3230z2, 
         nx49356z1, nx49356z2, nx29130z1, nx29130z2, nx23456z1, nx23456z2, 
         nx55030z1, nx55030z2, nx48770z1, nx48770z2, nx3816z1, nx3816z2;
    wire [57:0] xmplr_dummy ;




    assign nx35620z1 = 0 ;
    stratixii_lcell_comb ix99_dup_0 (.sumout (d[7]), .cout (nx48770z1), .shareout (
                         nx48770z2), .dataa (1'b1), .datab (a0[7]), .datac (
                         a2[7]), .datad (a1[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx55030z1), .sharein (nx55030z2)) ;
                         
                         defparam ix99_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix99_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix88_dup_0 (.sumout (d[6]), .cout (nx55030z1), .shareout (
                         nx55030z2), .dataa (1'b1), .datab (a0[6]), .datac (
                         a2[6]), .datad (a1[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx23456z1), .sharein (nx23456z2)) ;
                         
                         defparam ix88_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix88_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix77_dup_0 (.sumout (d[5]), .cout (nx23456z1), .shareout (
                         nx23456z2), .dataa (1'b1), .datab (a0[5]), .datac (
                         a2[5]), .datad (a1[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx29130z1), .sharein (nx29130z2)) ;
                         
                         defparam ix77_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix77_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix66_dup_0 (.sumout (d[4]), .cout (nx29130z1), .shareout (
                         nx29130z2), .dataa (1'b1), .datab (a0[4]), .datac (
                         a2[4]), .datad (a1[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx49356z1), .sharein (nx49356z2)) ;
                         
                         defparam ix66_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix66_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix55_dup_0 (.sumout (d[3]), .cout (nx49356z1), .shareout (
                         nx49356z2), .dataa (1'b1), .datab (a0[3]), .datac (
                         a2[3]), .datad (a1[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx3230z1), .sharein (nx3230z2)) ;
                         
                         defparam ix55_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix55_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix44_dup_0 (.sumout (d[2]), .cout (nx3230z1), .shareout (
                         nx3230z2), .dataa (1'b1), .datab (a0[2]), .datac (a2[2]
                         ), .datad (a1[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx9720z1), .sharein (nx9720z2)) ;
                         
                         defparam ix44_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix44_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix33_dup_0 (.sumout (d[1]), .cout (nx9720z1), .shareout (
                         nx9720z2), .dataa (1'b1), .datab (a0[1]), .datac (a2[1]
                         ), .datad (a1[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx42866z1), .sharein (nx42866z2)) ;
                         
                         defparam ix33_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix33_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix22_dup_0 (.sumout (d[0]), .cout (nx42866z1), .shareout (
                         nx42866z2), .dataa (1'b1), .datab (a0[0]), .datac (
                         a2[0]), .datad (a1[0]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35620z1), .sharein (nx35620z1)) ;
                         
                         defparam ix22_dup_0.lut_mask = 64'h0000fcc00000c33c;
                         
                         defparam ix22_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix121_dup_0 (.sumout (d[9]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx3816z1), .sharein (
                         nx3816z2)) ;
                         
                         defparam ix121_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix121_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix110_dup_0 (.sumout (d[8]), .cout (nx3816z1), .shareout (
                         nx3816z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (1'b1), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx48770z1), .sharein (nx48770z2)) ;
                         
                         defparam ix110_dup_0.lut_mask = 64'h0000000000000000;
                         
                         defparam ix110_dup_0.shared_arith = "on";
endmodule


module sub_12_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;

    wire nx19622z3, nx32964z3, nx32964z4, nx45522z3, nx45522z4, nx19691z3, 
         nx19691z4, nx32641z3, nx32641z4, nx19945z3, nx19945z4, nx58541z3, 
         nx58541z4, nx25526z3, nx25526z4, nx27060z3, nx27060z4, nx51426z3, 
         nx51426z4, nx64376z3, nx64376z4, nx53746z3, nx53746z4, nx53746z2, 
         nx58237z1, nx58237z2;
    wire [81:0] xmplr_dummy ;




    assign nx19622z3 = 0 ;
    assign nx53746z2 = ~a[11] ;
    stratixii_lcell_comb ix95_dup_0 (.sumout (d[2]), .cout (nx19691z3), .shareout (
                         nx19691z4), .dataa (1'b1), .datab (1'b1), .datac (b[2])
                         , .datad (a[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx45522z3), .sharein (nx45522z4)) ;
                         
                         defparam ix95_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix95_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix84_dup_0 (.sumout (d[1]), .cout (nx45522z3), .shareout (
                         nx45522z4), .dataa (1'b1), .datab (1'b1), .datac (b[1])
                         , .datad (a[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx32964z3), .sharein (nx32964z4)) ;
                         
                         defparam ix84_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix84_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix73_dup_0 (.sumout (d[0]), .cout (nx32964z3), .shareout (
                         nx32964z4), .dataa (1'b1), .datab (1'b1), .datac (b[0])
                         , .datad (a[0]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx19622z3), .sharein (nx19622z3)) ;
                         
                         defparam ix73_dup_0.lut_mask = 64'h0000ff0f00000ff0;
                         
                         defparam ix73_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix205_dup_0 (.sumout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx58237z1), .sharein (
                         nx58237z2)) ;
                         
                         defparam ix205_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix205_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix194_dup_0 (.sumout (d[11]), .cout (nx58237z1), .shareout (
                         nx58237z2), .dataa (1'b1), .datab (1'b1), .datac (a[11]
                         ), .datad (nx53746z2), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx53746z3), .sharein (nx53746z4)) ;
                         
                         defparam ix194_dup_0.lut_mask = 64'h0000f0f00000ff00;
                         
                         defparam ix194_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix183_dup_0 (.sumout (d[10]), .cout (nx53746z3), .shareout (
                         nx53746z4), .dataa (1'b1), .datab (1'b1), .datac (b[10]
                         ), .datad (a[10]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx64376z3), .sharein (nx64376z4)) ;
                         
                         defparam ix183_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix183_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix172_dup_0 (.sumout (d[9]), .cout (nx64376z3), .shareout (
                         nx64376z4), .dataa (1'b1), .datab (1'b1), .datac (b[9])
                         , .datad (a[9]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx51426z3), .sharein (nx51426z4)) ;
                         
                         defparam ix172_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix172_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix161_dup_0 (.sumout (d[8]), .cout (nx51426z3), .shareout (
                         nx51426z4), .dataa (1'b1), .datab (1'b1), .datac (b[8])
                         , .datad (a[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx27060z3), .sharein (nx27060z4)) ;
                         
                         defparam ix161_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix161_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix150_dup_0 (.sumout (d[7]), .cout (nx27060z3), .shareout (
                         nx27060z4), .dataa (1'b1), .datab (1'b1), .datac (b[7])
                         , .datad (a[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx25526z3), .sharein (nx25526z4)) ;
                         
                         defparam ix150_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix150_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix139_dup_0 (.sumout (d[6]), .cout (nx25526z3), .shareout (
                         nx25526z4), .dataa (1'b1), .datab (1'b1), .datac (b[6])
                         , .datad (a[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx58541z3), .sharein (nx58541z4)) ;
                         
                         defparam ix139_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix139_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix128_dup_0 (.sumout (d[5]), .cout (nx58541z3), .shareout (
                         nx58541z4), .dataa (1'b1), .datab (1'b1), .datac (b[5])
                         , .datad (a[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx19945z3), .sharein (nx19945z4)) ;
                         
                         defparam ix128_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix128_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix117_dup_0 (.sumout (d[4]), .cout (nx19945z3), .shareout (
                         nx19945z4), .dataa (1'b1), .datab (1'b1), .datac (b[4])
                         , .datad (a[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx32641z3), .sharein (nx32641z4)) ;
                         
                         defparam ix117_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix117_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix106_dup_0 (.sumout (d[3]), .cout (nx32641z3), .shareout (
                         nx32641z4), .dataa (1'b1), .datab (1'b1), .datac (b[3])
                         , .datad (a[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx19691z3), .sharein (nx19691z4)) ;
                         
                         defparam ix106_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix106_dup_0.shared_arith = "on";
endmodule


module add_9_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z20, nx45949z18, nx45949z16, nx45949z14, nx45949z12, nx45949z10, 
         nx45949z8, nx45949z6, nx45949z4, nx45949z2, nx34639z2, nx34639z1;
    wire [81:0] xmplr_dummy ;




    assign nx45949z20 = 0 ;
    assign nx45949z2 = 0 ;
    assign nx34639z1 = 0 ;
    stratixii_lcell_comb ix45949z37203 (.sumout (d[7]), .cout (nx45949z4), .dataa (
                         a[6]), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx45949z6)
                         ) ;
                         
                         defparam ix45949z37203.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix45949z37204 (.sumout (d[6]), .cout (nx45949z6), .dataa (
                         a[6]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[5]), .datag (1'b1), .cin (nx45949z8)
                         ) ;
                         
                         defparam ix45949z37204.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix45949z37205 (.sumout (d[5]), .cout (nx45949z8), .dataa (
                         a[4]), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx45949z10)
                         ) ;
                         
                         defparam ix45949z37205.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix45949z37206 (.sumout (d[4]), .cout (nx45949z10), .dataa (
                         a[4]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[3]), .datag (1'b1), .cin (nx45949z12)
                         ) ;
                         
                         defparam ix45949z37206.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix45949z37207 (.sumout (d[3]), .cout (nx45949z12), .dataa (
                         a[2]), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx45949z14)
                         ) ;
                         
                         defparam ix45949z37207.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix45949z37208 (.sumout (d[2]), .cout (nx45949z14), .dataa (
                         a[2]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[1]), .datag (1'b1), .cin (nx45949z16)
                         ) ;
                         
                         defparam ix45949z37208.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix45949z37209 (.sumout (d[1]), .cout (nx45949z16), .dataa (
                         a[0]), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx45949z18)
                         ) ;
                         
                         defparam ix45949z37209.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix45949z37210 (.sumout (d[0]), .cout (nx45949z18), .dataa (
                         a[0]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx45949z20)
                         ) ;
                         
                         defparam ix45949z37210.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix101_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx34639z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx34639z2)) ;
                         
                         defparam ix101_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix45949z37201 (.sumout (d[8]), .cout (nx34639z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx45949z2)
                         , .datae (1'b1), .dataf (a[7]), .datag (1'b1), .cin (
                         nx45949z4)) ;
                         
                         defparam ix45949z37201.lut_mask = 64'h000000ff0000ff00;
endmodule


module add_8_0 ( cin, a, b, d, cout, p_f_i1_next_7_, p_rtlcs0, 
                 p_o_image1_0__dup0_7_, p_f_i1_next_6_, p_o_image1_0__dup0_6_, 
                 p_f_i1_next_5_, p_o_image1_0__dup0_5_, p_f_i1_next_4_, 
                 p_o_image1_0__dup0_4_, p_f_i1_next_3_, p_o_image1_0__dup0_3_, 
                 p_f_i1_next_2_, p_o_image1_0__dup0_2_, p_f_i1_next_1_, 
                 p_o_image1_0__dup0_1_, p_f_i1_next_0_, p_o_image1_0__dup0_0_, 
                 p_f_i2_next_7_, p_o_image1_2__dup0_7_, p_f_i2_next_5_, 
                 p_o_image1_2__dup0_5_, p_f_i2_next_3_, p_o_image1_2__dup0_3_, 
                 p_f_i2_next_1_, p_o_image1_2__dup0_1_ ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;
    input p_f_i1_next_7_ ;
    input p_rtlcs0 ;
    input p_o_image1_0__dup0_7_ ;
    input p_f_i1_next_6_ ;
    input p_o_image1_0__dup0_6_ ;
    input p_f_i1_next_5_ ;
    input p_o_image1_0__dup0_5_ ;
    input p_f_i1_next_4_ ;
    input p_o_image1_0__dup0_4_ ;
    input p_f_i1_next_3_ ;
    input p_o_image1_0__dup0_3_ ;
    input p_f_i1_next_2_ ;
    input p_o_image1_0__dup0_2_ ;
    input p_f_i1_next_1_ ;
    input p_o_image1_0__dup0_1_ ;
    input p_f_i1_next_0_ ;
    input p_o_image1_0__dup0_0_ ;
    input p_f_i2_next_7_ ;
    input p_o_image1_2__dup0_7_ ;
    input p_f_i2_next_5_ ;
    input p_o_image1_2__dup0_5_ ;
    input p_f_i2_next_3_ ;
    input p_o_image1_2__dup0_3_ ;
    input p_f_i2_next_1_ ;
    input p_o_image1_2__dup0_1_ ;

    wire nx44952z14, nx44952z12, nx44952z11, nx44952z9, nx44952z8, nx44952z6, 
         nx44952z5, nx44952z3, nx25450z2, nx25450z1;
    wire [53:0] xmplr_dummy ;




    assign nx44952z14 = 0 ;
    assign nx25450z1 = 0 ;
    stratixii_lcell_comb ix98_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx25450z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx25450z2)) ;
                         
                         defparam ix98_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix44952z37201 (.sumout (d[7]), .cout (nx25450z2), .dataa (
                         p_rtlcs0), .datab (p_f_i2_next_7_), .datac (
                         p_f_i1_next_7_), .datad (p_o_image1_0__dup0_7_), .datae (
                         1'b1), .dataf (p_o_image1_2__dup0_7_), .datag (1'b1), .cin (
                         nx44952z3)) ;
                         
                         defparam ix44952z37201.lut_mask = 64'h000011bb0000fa50;
    stratixii_lcell_comb ix44952z37202 (.sumout (d[6]), .cout (nx44952z3), .dataa (
                         p_rtlcs0), .datab (1'b1), .datac (p_f_i1_next_6_), .datad (
                         p_o_image1_0__dup0_6_), .datae (1'b1), .dataf (b[6]), .datag (
                         1'b1), .cin (nx44952z5)) ;
                         
                         defparam ix44952z37202.lut_mask = 64'h000000ff0000fa50;
    stratixii_lcell_comb ix44952z37203 (.sumout (d[5]), .cout (nx44952z5), .dataa (
                         p_rtlcs0), .datab (p_f_i2_next_5_), .datac (
                         p_f_i1_next_5_), .datad (p_o_image1_0__dup0_5_), .datae (
                         1'b1), .dataf (p_o_image1_2__dup0_5_), .datag (1'b1), .cin (
                         nx44952z6)) ;
                         
                         defparam ix44952z37203.lut_mask = 64'h000011bb0000fa50;
    stratixii_lcell_comb ix44952z37204 (.sumout (d[4]), .cout (nx44952z6), .dataa (
                         p_rtlcs0), .datab (1'b1), .datac (p_f_i1_next_4_), .datad (
                         p_o_image1_0__dup0_4_), .datae (1'b1), .dataf (b[4]), .datag (
                         1'b1), .cin (nx44952z8)) ;
                         
                         defparam ix44952z37204.lut_mask = 64'h000000ff0000fa50;
    stratixii_lcell_comb ix44952z37205 (.sumout (d[3]), .cout (nx44952z8), .dataa (
                         p_rtlcs0), .datab (p_f_i2_next_3_), .datac (
                         p_f_i1_next_3_), .datad (p_o_image1_0__dup0_3_), .datae (
                         1'b1), .dataf (p_o_image1_2__dup0_3_), .datag (1'b1), .cin (
                         nx44952z9)) ;
                         
                         defparam ix44952z37205.lut_mask = 64'h000011bb0000fa50;
    stratixii_lcell_comb ix44952z37206 (.sumout (d[2]), .cout (nx44952z9), .dataa (
                         p_rtlcs0), .datab (1'b1), .datac (p_f_i1_next_2_), .datad (
                         p_o_image1_0__dup0_2_), .datae (1'b1), .dataf (b[2]), .datag (
                         1'b1), .cin (nx44952z11)) ;
                         
                         defparam ix44952z37206.lut_mask = 64'h000000ff0000fa50;
    stratixii_lcell_comb ix44952z37207 (.sumout (d[1]), .cout (nx44952z11), .dataa (
                         p_rtlcs0), .datab (p_f_i2_next_1_), .datac (
                         p_f_i1_next_1_), .datad (p_o_image1_0__dup0_1_), .datae (
                         1'b1), .dataf (p_o_image1_2__dup0_1_), .datag (1'b1), .cin (
                         nx44952z12)) ;
                         
                         defparam ix44952z37207.lut_mask = 64'h000011bb0000fa50;
    stratixii_lcell_comb ix44952z37208 (.sumout (d[0]), .cout (nx44952z12), .dataa (
                         p_rtlcs0), .datab (1'b1), .datac (p_f_i1_next_0_), .datad (
                         p_o_image1_0__dup0_0_), .datae (1'b1), .dataf (b[0]), .datag (
                         1'b1), .cin (nx44952z14)) ;
                         
                         defparam ix44952z37208.lut_mask = 64'h000000ff0000fa50;
endmodule


module add_12_1 ( cin, a, b, d, cout, p_rtlcn1556, p_rtlcn1596 ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_rtlcn1556 ;
    input p_rtlcn1596 ;

    wire nx63795z39, nx63795z36, nx63795z33, nx63795z30, nx63795z27, nx63795z24, 
         nx63795z21, nx63795z18, nx63795z15, nx63795z12, nx63795z10, nx63795z9, 
         nx63795z7, nx63795z6, nx63795z2, nx63795z4;
    wire [96:0] xmplr_dummy ;




    assign nx63795z39 = 0 ;
    assign nx63795z10 = ~p_rtlcn1556 ;
    assign nx63795z7 = ~p_rtlcn1556 ;
    assign nx63795z2 = ~p_rtlcn1556 ;
    assign nx63795z4 = ~p_rtlcn1596 ;
    stratixii_lcell_comb ix63795z37211 (.sumout (d[5]), .cout (nx63795z21), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx63795z24)
                         ) ;
                         
                         defparam ix63795z37211.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37212 (.sumout (d[4]), .cout (nx63795z24), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx63795z27)
                         ) ;
                         
                         defparam ix63795z37212.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37213 (.sumout (d[3]), .cout (nx63795z27), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx63795z30)
                         ) ;
                         
                         defparam ix63795z37213.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37214 (.sumout (d[2]), .cout (nx63795z30), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx63795z33)
                         ) ;
                         
                         defparam ix63795z37214.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37215 (.sumout (d[1]), .cout (nx63795z33), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx63795z36)
                         ) ;
                         
                         defparam ix63795z37215.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37216 (.sumout (d[0]), .cout (nx63795z36), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx63795z39)
                         ) ;
                         
                         defparam ix63795z37216.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37201 (.sumout (d[11]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx63795z2), .datae (1'b1)
                         , .dataf (nx63795z4), .datag (1'b1), .cin (nx63795z6)
                         ) ;
                         
                         defparam ix63795z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37204 (.sumout (d[10]), .cout (nx63795z6), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx63795z7)
                         , .datae (1'b1), .dataf (b[10]), .datag (1'b1), .cin (
                         nx63795z9)) ;
                         
                         defparam ix63795z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37206 (.sumout (d[9]), .cout (nx63795z9), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx63795z10
                         ), .datae (1'b1), .dataf (b[9]), .datag (1'b1), .cin (
                         nx63795z12)) ;
                         
                         defparam ix63795z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37208 (.sumout (d[8]), .cout (nx63795z12), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (b[8]), .datag (1'b1), .cin (nx63795z15)
                         ) ;
                         
                         defparam ix63795z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37209 (.sumout (d[7]), .cout (nx63795z15), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx63795z18)
                         ) ;
                         
                         defparam ix63795z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37210 (.sumout (d[6]), .cout (nx63795z18), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx63795z21)
                         ) ;
                         
                         defparam ix63795z37210.lut_mask = 64'h000000ff0000ff00;
endmodule


module sub_10_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
         nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
         nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
         nx43230z4, nx9356z1, nx9356z2;
    wire [69:0] xmplr_dummy ;




    assign nx11426z3 = 0 ;
    stratixii_lcell_comb ix97_dup_0 (.sumout (d[3]), .cout (nx41091z3), .shareout (
                         nx41091z4), .dataa (1'b1), .datab (1'b1), .datac (b[3])
                         , .datad (a[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx15260z3), .sharein (nx15260z4)) ;
                         
                         defparam ix97_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix97_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix86_dup_0 (.sumout (d[2]), .cout (nx15260z3), .shareout (
                         nx15260z4), .dataa (1'b1), .datab (1'b1), .datac (b[2])
                         , .datad (a[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37326z3), .sharein (nx37326z4)) ;
                         
                         defparam ix86_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix86_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix75_dup_0 (.sumout (d[1]), .cout (nx37326z3), .shareout (
                         nx37326z4), .dataa (1'b1), .datab (1'b1), .datac (b[1])
                         , .datad (a[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41160z3), .sharein (nx41160z4)) ;
                         
                         defparam ix75_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix75_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix64_dup_0 (.sumout (d[0]), .cout (nx41160z3), .shareout (
                         nx41160z4), .dataa (1'b1), .datab (1'b1), .datac (b[0])
                         , .datad (a[0]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx11426z3), .sharein (nx11426z3)) ;
                         
                         defparam ix64_dup_0.lut_mask = 64'h0000ff0f00000ff0;
                         
                         defparam ix64_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix174_dup_0 (.sumout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx9356z1), .sharein (
                         nx9356z2)) ;
                         
                         defparam ix174_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix174_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix163_dup_0 (.sumout (d[9]), .cout (nx9356z1), .shareout (
                         nx9356z2), .dataa (1'b1), .datab (1'b1), .datac (b[9])
                         , .datad (a[9]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx43230z3), .sharein (nx43230z4)) ;
                         
                         defparam ix163_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix163_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix152_dup_0 (.sumout (d[8]), .cout (nx43230z3), .shareout (
                         nx43230z4), .dataa (1'b1), .datab (1'b1), .datac (b[8])
                         , .datad (a[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35256z3), .sharein (nx35256z4)) ;
                         
                         defparam ix152_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix152_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix141_dup_0 (.sumout (d[7]), .cout (nx35256z3), .shareout (
                         nx35256z4), .dataa (1'b1), .datab (1'b1), .datac (b[7])
                         , .datad (a[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx17330z3), .sharein (nx17330z4)) ;
                         
                         defparam ix141_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix141_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix130_dup_0 (.sumout (d[6]), .cout (nx17330z3), .shareout (
                         nx17330z4), .dataa (1'b1), .datab (1'b1), .datac (b[6])
                         , .datad (a[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx61156z3), .sharein (nx61156z4)) ;
                         
                         defparam ix130_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix130_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix119_dup_0 (.sumout (d[5]), .cout (nx61156z3), .shareout (
                         nx61156z4), .dataa (1'b1), .datab (1'b1), .datac (b[5])
                         , .datad (a[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37395z3), .sharein (nx37395z4)) ;
                         
                         defparam ix119_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix119_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix108_dup_0 (.sumout (d[4]), .cout (nx37395z3), .shareout (
                         nx37395z4), .dataa (1'b1), .datab (1'b1), .datac (b[4])
                         , .datad (a[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41091z3), .sharein (nx41091z4)) ;
                         
                         defparam ix108_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix108_dup_0.shared_arith = "on";
endmodule


module add_12_0 ( cin, a, b, d, cout, p_rtlcn1459, p_rtlcn1499 ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_rtlcn1459 ;
    input p_rtlcn1499 ;

    wire nx63795z39, nx63795z36, nx63795z33, nx63795z30, nx63795z27, nx63795z24, 
         nx63795z21, nx63795z18, nx63795z15, nx63795z12, nx63795z10, nx63795z9, 
         nx63795z7, nx63795z6, nx63795z2, nx63795z4;
    wire [96:0] xmplr_dummy ;




    assign nx63795z39 = 0 ;
    assign nx63795z10 = ~p_rtlcn1459 ;
    assign nx63795z7 = ~p_rtlcn1459 ;
    assign nx63795z2 = ~p_rtlcn1459 ;
    assign nx63795z4 = ~p_rtlcn1499 ;
    stratixii_lcell_comb ix63795z37211 (.sumout (d[5]), .cout (nx63795z21), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx63795z24)
                         ) ;
                         
                         defparam ix63795z37211.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37212 (.sumout (d[4]), .cout (nx63795z24), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx63795z27)
                         ) ;
                         
                         defparam ix63795z37212.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37213 (.sumout (d[3]), .cout (nx63795z27), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx63795z30)
                         ) ;
                         
                         defparam ix63795z37213.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37214 (.sumout (d[2]), .cout (nx63795z30), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx63795z33)
                         ) ;
                         
                         defparam ix63795z37214.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37215 (.sumout (d[1]), .cout (nx63795z33), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx63795z36)
                         ) ;
                         
                         defparam ix63795z37215.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37216 (.sumout (d[0]), .cout (nx63795z36), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx63795z39)
                         ) ;
                         
                         defparam ix63795z37216.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37201 (.sumout (d[11]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx63795z2), .datae (1'b1)
                         , .dataf (nx63795z4), .datag (1'b1), .cin (nx63795z6)
                         ) ;
                         
                         defparam ix63795z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37204 (.sumout (d[10]), .cout (nx63795z6), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx63795z7)
                         , .datae (1'b1), .dataf (b[10]), .datag (1'b1), .cin (
                         nx63795z9)) ;
                         
                         defparam ix63795z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37206 (.sumout (d[9]), .cout (nx63795z9), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx63795z10
                         ), .datae (1'b1), .dataf (b[9]), .datag (1'b1), .cin (
                         nx63795z12)) ;
                         
                         defparam ix63795z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37208 (.sumout (d[8]), .cout (nx63795z12), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (b[8]), .datag (1'b1), .cin (nx63795z15)
                         ) ;
                         
                         defparam ix63795z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37209 (.sumout (d[7]), .cout (nx63795z15), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx63795z18)
                         ) ;
                         
                         defparam ix63795z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix63795z37210 (.sumout (d[6]), .cout (nx63795z18), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx63795z21)
                         ) ;
                         
                         defparam ix63795z37210.lut_mask = 64'h000000ff0000ff00;
endmodule


module sub_10_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx11426z3, nx41160z3, nx41160z4, nx37326z3, nx37326z4, nx15260z3, 
         nx15260z4, nx41091z3, nx41091z4, nx37395z3, nx37395z4, nx61156z3, 
         nx61156z4, nx17330z3, nx17330z4, nx35256z3, nx35256z4, nx43230z3, 
         nx43230z4, nx9356z1, nx9356z2;
    wire [69:0] xmplr_dummy ;




    assign nx11426z3 = 0 ;
    stratixii_lcell_comb ix97_dup_0 (.sumout (d[3]), .cout (nx41091z3), .shareout (
                         nx41091z4), .dataa (1'b1), .datab (1'b1), .datac (b[3])
                         , .datad (a[3]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx15260z3), .sharein (nx15260z4)) ;
                         
                         defparam ix97_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix97_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix86_dup_0 (.sumout (d[2]), .cout (nx15260z3), .shareout (
                         nx15260z4), .dataa (1'b1), .datab (1'b1), .datac (b[2])
                         , .datad (a[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37326z3), .sharein (nx37326z4)) ;
                         
                         defparam ix86_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix86_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix75_dup_0 (.sumout (d[1]), .cout (nx37326z3), .shareout (
                         nx37326z4), .dataa (1'b1), .datab (1'b1), .datac (b[1])
                         , .datad (a[1]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41160z3), .sharein (nx41160z4)) ;
                         
                         defparam ix75_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix75_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix64_dup_0 (.sumout (d[0]), .cout (nx41160z3), .shareout (
                         nx41160z4), .dataa (1'b1), .datab (1'b1), .datac (b[0])
                         , .datad (a[0]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx11426z3), .sharein (nx11426z3)) ;
                         
                         defparam ix64_dup_0.lut_mask = 64'h0000ff0f00000ff0;
                         
                         defparam ix64_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix174_dup_0 (.sumout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx9356z1), .sharein (
                         nx9356z2)) ;
                         
                         defparam ix174_dup_0.lut_mask = 64'h0000000000000000;
                         defparam ix174_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix163_dup_0 (.sumout (d[9]), .cout (nx9356z1), .shareout (
                         nx9356z2), .dataa (1'b1), .datab (1'b1), .datac (b[9])
                         , .datad (a[9]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx43230z3), .sharein (nx43230z4)) ;
                         
                         defparam ix163_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix163_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix152_dup_0 (.sumout (d[8]), .cout (nx43230z3), .shareout (
                         nx43230z4), .dataa (1'b1), .datab (1'b1), .datac (b[8])
                         , .datad (a[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35256z3), .sharein (nx35256z4)) ;
                         
                         defparam ix152_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix152_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix141_dup_0 (.sumout (d[7]), .cout (nx35256z3), .shareout (
                         nx35256z4), .dataa (1'b1), .datab (1'b1), .datac (b[7])
                         , .datad (a[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx17330z3), .sharein (nx17330z4)) ;
                         
                         defparam ix141_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix141_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix130_dup_0 (.sumout (d[6]), .cout (nx17330z3), .shareout (
                         nx17330z4), .dataa (1'b1), .datab (1'b1), .datac (b[6])
                         , .datad (a[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx61156z3), .sharein (nx61156z4)) ;
                         
                         defparam ix130_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix130_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix119_dup_0 (.sumout (d[5]), .cout (nx61156z3), .shareout (
                         nx61156z4), .dataa (1'b1), .datab (1'b1), .datac (b[5])
                         , .datad (a[5]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37395z3), .sharein (nx37395z4)) ;
                         
                         defparam ix119_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix119_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix108_dup_0 (.sumout (d[4]), .cout (nx37395z3), .shareout (
                         nx37395z4), .dataa (1'b1), .datab (1'b1), .datac (b[4])
                         , .datad (a[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx41091z3), .sharein (nx41091z4)) ;
                         
                         defparam ix108_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix108_dup_0.shared_arith = "on";
endmodule

