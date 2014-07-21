//
// Verilog description for cell kirsch, 
// Mon Jul 21 14:05:08 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, o_image0_0_, o_image0_1_, o_image0_2_, 
                o_image1_0_, o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, 
                o_image2_2_, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_valid, debug_num_0, debug_num_1, 
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
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
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

    wire o_valid_dup0;
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
         o_image2_2__dup0_0_, u_flow_p40;
    wire [1:0]u_flow_p5m;
    wire [3:0]u_flow_state;
    wire nx35265z1, nx30130z1, nx45613z1, nx34268z1, nx29133z1, nx44616z1, 
         nx33271z1, nx28136z1, nx43619z1, nx32274z1, nx27139z1, nx42622z1, 
         nx31277z1, nx26142z1, nx41625z1, nx30280z1, nx25145z1, nx40628z1, 
         nx29283z1, nx24148z1, nx39631z1, nx28286z1, nx23151z1, nx38634z1, 
         nx10063z1, nx4928z1, nx65329z1, nx9066z1, nx3931z1, nx64332z1, 
         nx61281z1, nx62278z1, i_clock_int, i_reset_int, i_valid_int;
    wire [7:0]i_pixel_int;
    wire [1:0]o_mode_dup0;
    wire debug_valid_dup0;
    wire [7:0]debug_num_0_dup0;
    wire [7:0]debug_num_1_dup0;
    wire [7:0]debug_num_2_dup0;
    wire [7:0]debug_num_3_dup0;
    wire [7:0]debug_num_4_dup0;
    wire [7:0]debug_num_5_dup0;
    wire [7:0]debug_num_6_dup0;
    wire [7:0]debug_num_7_dup0;
    wire [7:0]f_i_row;
    wire [1:0]f_i_mode;
    wire [2:2]debug_led_red_dup0;
    wire nx57127z1, nx36102z1, nx60284z1, nx64956z1, nx54514z1, first_bubble, 
         nx30938z1, nx31935z1, nx32932z1, nx33929z1, nx34926z1, nx35923z1, 
         nx36920z1, nx37917z1, nx36073z1, nx37070z1, nx38067z1, nx39064z1, 
         nx40061z1, nx41058z1, nx42055z1, nx43052z1, nx41208z1, nx42205z1, 
         nx43202z1, nx44199z1, nx45196z1, nx46193z1, nx47190z1, nx48187z1, 
         nx4207z1, nx3210z1, nx2213z1, nx1216z1, nx219z1, nx64758z1, nx63761z1, 
         nx62764z1, nx64608z1, nx63611z1, nx62614z1, nx61617z1, nx60620z1, 
         nx59623z1, nx58626z1, nx57629z1, nx59473z1, nx58476z1, nx57479z1, 
         nx56482z1, nx55485z1, nx54488z1, nx53491z1, nx52494z1, nx16335z1, 
         nx17332z1, nx18329z1, nx19326z1, nx20323z1, nx21320z1, nx22317z1, 
         nx23314z1, nx63959z1, NOT_f_state_3_, nx55511z1, NOT_u_flow_state_3_;
    wire [3970:0] xmplr_dummy ;




    memory u_memory (.i_valid (i_valid_int), .i_reset (i_reset_int), .i_pixel ({
           i_pixel_int[7],i_pixel_int[6],i_pixel_int[5],i_pixel_int[4],
           i_pixel_int[3],i_pixel_int[2],i_pixel_int[1],i_pixel_int[0]}), .i_clock (
           i_clock_int), .o_valid (m_o_valid), .o_mode ({m_o_mode[1],m_o_mode[0]
           }), .o_row ({m_o_row[7],m_o_row[6],m_o_row[5],m_o_row[4],m_o_row[3],
           m_o_row[2],m_o_row[1],m_o_row[0]}), .o_image0_0_ ({o_image0_dup0[7],
           o_image0_dup0[6],o_image0_dup0[5],o_image0_dup0[4],o_image0_dup0[3],
           o_image0_dup0[2],o_image0_dup0[1],o_image0_dup0[0]}), .o_image0_1_ ({
           o_image0_1__dup0_7_,o_image0_1__dup0_6_,o_image0_1__dup0_5_,
           o_image0_1__dup0_4_,o_image0_1__dup0_3_,o_image0_1__dup0_2_,
           o_image0_1__dup0_1_,o_image0_1__dup0_0_}), .o_image0_2_ ({
           o_image0_2__dup0_7_,o_image0_2__dup0_6_,o_image0_2__dup0_5_,
           o_image0_2__dup0_4_,o_image0_2__dup0_3_,o_image0_2__dup0_2_,
           o_image0_2__dup0_1_,o_image0_2__dup0_0_}), .o_image1_0_ ({
           o_image1_dup0[7],o_image1_dup0[6],o_image1_dup0[5],o_image1_dup0[4],
           o_image1_dup0[3],o_image1_dup0[2],o_image1_dup0[1],o_image1_dup0[0]})
           , .o_image1_1_ ({o_image1_1__dup0_7_,o_image1_1__dup0_6_,
           o_image1_1__dup0_5_,o_image1_1__dup0_4_,o_image1_1__dup0_3_,
           o_image1_1__dup0_2_,o_image1_1__dup0_1_,o_image1_1__dup0_0_}), .o_image1_2_ (
           {o_image1_2__dup0_7_,o_image1_2__dup0_6_,o_image1_2__dup0_5_,
           o_image1_2__dup0_4_,o_image1_2__dup0_3_,o_image1_2__dup0_2_,
           o_image1_2__dup0_1_,o_image1_2__dup0_0_}), .o_image2_0_ ({
           o_image2_dup0[7],o_image2_dup0[6],o_image2_dup0[5],o_image2_dup0[4],
           o_image2_dup0[3],o_image2_dup0[2],o_image2_dup0[1],o_image2_dup0[0]})
           , .o_image2_1_ ({o_image2_1__dup0_7_,o_image2_1__dup0_6_,
           o_image2_1__dup0_5_,o_image2_1__dup0_4_,o_image2_1__dup0_3_,
           o_image2_1__dup0_2_,o_image2_1__dup0_1_,o_image2_1__dup0_0_}), .o_image2_2_ (
           {o_image2_2__dup0_7_,o_image2_2__dup0_6_,o_image2_2__dup0_5_,
           o_image2_2__dup0_4_,o_image2_2__dup0_3_,o_image2_2__dup0_2_,
           o_image2_2__dup0_1_,o_image2_2__dup0_0_}), .p_first_bubble (
           first_bubble)) ;
    assign o_mode_dup0[1] = ~i_reset_int ;
    assign debug_led_red_dup0[2] = 0 ;
    assign f_state[0] = ~nx63959z1 ;
    assign NOT_f_state_3_ = ~f_state[3] ;
    assign u_flow_state[0] = ~nx55511z1 ;
    assign NOT_u_flow_state_3_ = ~u_flow_state[3] ;
    cycloneii_lcell_ff u_flow_reg_state_3_ (.regout (u_flow_state[3]), .datain (
                       u_flow_state[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx54514z1), .aclr (1'b0), .sclr (i_reset_int), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_flow_reg_state_2_ (.regout (u_flow_state[2]), .datain (
                       u_flow_state[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx54514z1), .aclr (1'b0), .sclr (i_reset_int), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_flow_reg_state_1_ (.regout (u_flow_state[1]), .datain (
                       u_flow_state[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx54514z1), .aclr (1'b0), .sclr (i_reset_int), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_flow_reg_state_0_ (.regout (nx55511z1), .datain (
                       NOT_u_flow_state_3_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (nx54514z1), .aclr (1'b0), .sclr (i_reset_int), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_flow_reg_o_valid (.regout (o_valid_dup0), .datain (
                       u_flow_state[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff u_flow_ix15_reg_p40 (.regout (u_flow_p40), .datain (
                       nx62278z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix15_reg_p30 (.regout (nx62278z1), .datain (
                       nx61281z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix15_reg_p20 (.regout (nx61281z1), .datain (
                       debug_valid_dup0), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p5m_1_ (.regout (u_flow_p5m[1]), .datain (
                       nx65329z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p5m_0_ (.regout (u_flow_p5m[0]), .datain (
                       nx64332z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p4m_1_ (.regout (nx65329z1), .datain (
                       nx4928z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p4m_0_ (.regout (nx64332z1), .datain (
                       nx3931z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p3m_1_ (.regout (nx4928z1), .datain (
                       nx10063z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p3m_0_ (.regout (nx3931z1), .datain (
                       nx9066z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p2m_1_ (.regout (nx10063z1), .datain (
                       f_i_mode[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix14_reg_p2m_0_ (.regout (nx9066z1), .datain (
                       f_i_mode[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_7_ (.regout (nx45613z1), .datain (
                       nx30130z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_6_ (.regout (nx44616z1), .datain (
                       nx29133z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_5_ (.regout (nx43619z1), .datain (
                       nx28136z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_4_ (.regout (nx42622z1), .datain (
                       nx27139z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_3_ (.regout (nx41625z1), .datain (
                       nx26142z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_2_ (.regout (nx40628z1), .datain (
                       nx25145z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_1_ (.regout (nx39631z1), .datain (
                       nx24148z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p4r_0_ (.regout (nx38634z1), .datain (
                       nx23151z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_7_ (.regout (nx30130z1), .datain (
                       nx35265z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_6_ (.regout (nx29133z1), .datain (
                       nx34268z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_5_ (.regout (nx28136z1), .datain (
                       nx33271z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_4_ (.regout (nx27139z1), .datain (
                       nx32274z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_3_ (.regout (nx26142z1), .datain (
                       nx31277z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_2_ (.regout (nx25145z1), .datain (
                       nx30280z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_1_ (.regout (nx24148z1), .datain (
                       nx29283z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p3r_0_ (.regout (nx23151z1), .datain (
                       nx28286z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_7_ (.regout (nx35265z1), .datain (
                       f_i_row[7]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_6_ (.regout (nx34268z1), .datain (
                       f_i_row[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_5_ (.regout (nx33271z1), .datain (
                       f_i_row[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_4_ (.regout (nx32274z1), .datain (
                       f_i_row[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_3_ (.regout (nx31277z1), .datain (
                       f_i_row[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_2_ (.regout (nx30280z1), .datain (
                       f_i_row[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_1_ (.regout (nx29283z1), .datain (
                       f_i_row[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_flow_ix13_reg_p2r_0_ (.regout (nx28286z1), .datain (
                       f_i_row[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
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
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__7_ (.regout (nx37917z1), .datain (
                       o_image2_2__dup0_7_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__6_ (.regout (nx36920z1), .datain (
                       o_image2_2__dup0_6_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__5_ (.regout (nx35923z1), .datain (
                       o_image2_2__dup0_5_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__4_ (.regout (nx34926z1), .datain (
                       o_image2_2__dup0_4_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__3_ (.regout (nx33929z1), .datain (
                       o_image2_2__dup0_3_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__2_ (.regout (nx32932z1), .datain (
                       o_image2_2__dup0_2_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__1_ (.regout (nx31935z1), .datain (
                       o_image2_2__dup0_1_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_2__0_ (.regout (nx30938z1), .datain (
                       o_image2_2__dup0_0_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__7_ (.regout (nx43052z1), .datain (
                       o_image2_1__dup0_7_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__6_ (.regout (nx42055z1), .datain (
                       o_image2_1__dup0_6_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__5_ (.regout (nx41058z1), .datain (
                       o_image2_1__dup0_5_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__4_ (.regout (nx40061z1), .datain (
                       o_image2_1__dup0_4_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__3_ (.regout (nx39064z1), .datain (
                       o_image2_1__dup0_3_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__2_ (.regout (nx38067z1), .datain (
                       o_image2_1__dup0_2_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__1_ (.regout (nx37070z1), .datain (
                       o_image2_1__dup0_1_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_1__0_ (.regout (nx36073z1), .datain (
                       o_image2_1__dup0_0_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__7_ (.regout (nx48187z1), .datain (
                       o_image2_dup0[7]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__6_ (.regout (nx47190z1), .datain (
                       o_image2_dup0[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__5_ (.regout (nx46193z1), .datain (
                       o_image2_dup0[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__4_ (.regout (nx45196z1), .datain (
                       o_image2_dup0[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__3_ (.regout (nx44199z1), .datain (
                       o_image2_dup0[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__2_ (.regout (nx43202z1), .datain (
                       o_image2_dup0[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__1_ (.regout (nx42205z1), .datain (
                       o_image2_dup0[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image1_obuf_0__0_ (.regout (nx41208z1), .datain (
                       o_image2_dup0[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__7_ (.regout (nx62764z1), .datain (
                       o_image1_2__dup0_7_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__6_ (.regout (nx63761z1), .datain (
                       o_image1_2__dup0_6_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__5_ (.regout (nx64758z1), .datain (
                       o_image1_2__dup0_5_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__4_ (.regout (nx219z1), .datain (
                       o_image1_2__dup0_4_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__3_ (.regout (nx1216z1), .datain (
                       o_image1_2__dup0_3_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__2_ (.regout (nx2213z1), .datain (
                       o_image1_2__dup0_2_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__1_ (.regout (nx3210z1), .datain (
                       o_image1_2__dup0_1_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_2__0_ (.regout (nx4207z1), .datain (
                       o_image1_2__dup0_0_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__7_ (.regout (nx57629z1), .datain (
                       o_image1_1__dup0_7_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__6_ (.regout (nx58626z1), .datain (
                       o_image1_1__dup0_6_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__5_ (.regout (nx59623z1), .datain (
                       o_image1_1__dup0_5_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__4_ (.regout (nx60620z1), .datain (
                       o_image1_1__dup0_4_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__3_ (.regout (nx61617z1), .datain (
                       o_image1_1__dup0_3_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__2_ (.regout (nx62614z1), .datain (
                       o_image1_1__dup0_2_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__1_ (.regout (nx63611z1), .datain (
                       o_image1_1__dup0_1_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_1__0_ (.regout (nx64608z1), .datain (
                       o_image1_1__dup0_0_), .sdata (1'b0), .clk (i_clock_int), 
                       .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__7_ (.regout (nx52494z1), .datain (
                       o_image1_dup0[7]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__6_ (.regout (nx53491z1), .datain (
                       o_image1_dup0[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__5_ (.regout (nx54488z1), .datain (
                       o_image1_dup0[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__4_ (.regout (nx55485z1), .datain (
                       o_image1_dup0[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__3_ (.regout (nx56482z1), .datain (
                       o_image1_dup0[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__2_ (.regout (nx57479z1), .datain (
                       o_image1_dup0[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__1_ (.regout (nx58476z1), .datain (
                       o_image1_dup0[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_image0_obuf_0__0_ (.regout (nx59473z1), .datain (
                       o_image1_dup0[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_valid_ibuf (.regout (first_bubble), .datain (
                       i_valid_int), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_t3_next_7_ (.regout (f_t3_next[7]), .datain (
                       f_i1_next[7]), .sdata (o_image1_dup0[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_6_ (.regout (f_t3_next[6]), .datain (
                       f_i1_next[6]), .sdata (o_image1_dup0[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_5_ (.regout (f_t3_next[5]), .datain (
                       f_i1_next[5]), .sdata (o_image1_dup0[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_4_ (.regout (f_t3_next[4]), .datain (
                       f_i1_next[4]), .sdata (o_image1_dup0[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_3_ (.regout (f_t3_next[3]), .datain (
                       f_i1_next[3]), .sdata (o_image1_dup0[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_2_ (.regout (f_t3_next[2]), .datain (
                       f_i1_next[2]), .sdata (o_image1_dup0[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_1_ (.regout (f_t3_next[1]), .datain (
                       f_i1_next[1]), .sdata (o_image1_dup0[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t3_next_0_ (.regout (f_t3_next[0]), .datain (
                       f_i1_next[0]), .sdata (o_image1_dup0[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_7_ (.regout (f_t2_next[7]), .datain (
                       f_t3_next[7]), .sdata (o_image0_dup0[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_6_ (.regout (f_t2_next[6]), .datain (
                       f_t3_next[6]), .sdata (o_image0_dup0[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_5_ (.regout (f_t2_next[5]), .datain (
                       f_t3_next[5]), .sdata (o_image0_dup0[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_4_ (.regout (f_t2_next[4]), .datain (
                       f_t3_next[4]), .sdata (o_image0_dup0[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_3_ (.regout (f_t2_next[3]), .datain (
                       f_t3_next[3]), .sdata (o_image0_dup0[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_2_ (.regout (f_t2_next[2]), .datain (
                       f_t3_next[2]), .sdata (o_image0_dup0[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_1_ (.regout (f_t2_next[1]), .datain (
                       f_t3_next[1]), .sdata (o_image0_dup0[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t2_next_0_ (.regout (f_t2_next[0]), .datain (
                       f_t3_next[0]), .sdata (o_image0_dup0[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_7_ (.regout (f_t1_next[7]), .datain (
                       f_t2_next[7]), .sdata (o_image0_1__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_6_ (.regout (f_t1_next[6]), .datain (
                       f_t2_next[6]), .sdata (o_image0_1__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_5_ (.regout (f_t1_next[5]), .datain (
                       f_t2_next[5]), .sdata (o_image0_1__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_4_ (.regout (f_t1_next[4]), .datain (
                       f_t2_next[4]), .sdata (o_image0_1__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_3_ (.regout (f_t1_next[3]), .datain (
                       f_t2_next[3]), .sdata (o_image0_1__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_2_ (.regout (f_t1_next[2]), .datain (
                       f_t2_next[2]), .sdata (o_image0_1__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_1_ (.regout (f_t1_next[1]), .datain (
                       f_t2_next[1]), .sdata (o_image0_1__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_t1_next_0_ (.regout (f_t1_next[0]), .datain (
                       f_t2_next[0]), .sdata (o_image0_1__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
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
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_6_ (.regout (f_i_row_next[6]), .datain (
                       m_o_row[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_5_ (.regout (f_i_row_next[5]), .datain (
                       m_o_row[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_4_ (.regout (f_i_row_next[4]), .datain (
                       m_o_row[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_3_ (.regout (f_i_row_next[3]), .datain (
                       m_o_row[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_2_ (.regout (f_i_row_next[2]), .datain (
                       m_o_row[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_1_ (.regout (f_i_row_next[1]), .datain (
                       m_o_row[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_0_ (.regout (f_i_row_next[0]), .datain (
                       m_o_row[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_mode_next_1_ (.regout (f_i_mode_next[1]), .datain (
                       m_o_mode[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_mode_next_0_ (.regout (f_i_mode_next[0]), .datain (
                       m_o_mode[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx36102z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i2_next_7_ (.regout (f_i2_next[7]), .datain (
                       f_t1_next[7]), .sdata (o_image0_2__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_6_ (.regout (f_i2_next[6]), .datain (
                       f_t1_next[6]), .sdata (o_image0_2__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_5_ (.regout (f_i2_next[5]), .datain (
                       f_t1_next[5]), .sdata (o_image0_2__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_4_ (.regout (f_i2_next[4]), .datain (
                       f_t1_next[4]), .sdata (o_image0_2__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_3_ (.regout (f_i2_next[3]), .datain (
                       f_t1_next[3]), .sdata (o_image0_2__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_2_ (.regout (f_i2_next[2]), .datain (
                       f_t1_next[2]), .sdata (o_image0_2__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_1_ (.regout (f_i2_next[1]), .datain (
                       f_t1_next[1]), .sdata (o_image0_2__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i2_next_0_ (.regout (f_i2_next[0]), .datain (
                       f_t1_next[0]), .sdata (o_image0_2__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_7_ (.regout (f_i1_next[7]), .datain (
                       f_b1_next[7]), .sdata (o_image2_dup0[7]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_6_ (.regout (f_i1_next[6]), .datain (
                       f_b1_next[6]), .sdata (o_image2_dup0[6]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_5_ (.regout (f_i1_next[5]), .datain (
                       f_b1_next[5]), .sdata (o_image2_dup0[5]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_4_ (.regout (f_i1_next[4]), .datain (
                       f_b1_next[4]), .sdata (o_image2_dup0[4]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_3_ (.regout (f_i1_next[3]), .datain (
                       f_b1_next[3]), .sdata (o_image2_dup0[3]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_2_ (.regout (f_i1_next[2]), .datain (
                       f_b1_next[2]), .sdata (o_image2_dup0[2]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_1_ (.regout (f_i1_next[1]), .datain (
                       f_b1_next[1]), .sdata (o_image2_dup0[1]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_i1_next_0_ (.regout (f_i1_next[0]), .datain (
                       f_b1_next[0]), .sdata (o_image2_dup0[0]), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_7_ (.regout (f_b3_next[7]), .datain (
                       f_i2_next[7]), .sdata (o_image1_2__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_6_ (.regout (f_b3_next[6]), .datain (
                       f_i2_next[6]), .sdata (o_image1_2__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_5_ (.regout (f_b3_next[5]), .datain (
                       f_i2_next[5]), .sdata (o_image1_2__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_4_ (.regout (f_b3_next[4]), .datain (
                       f_i2_next[4]), .sdata (o_image1_2__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_3_ (.regout (f_b3_next[3]), .datain (
                       f_i2_next[3]), .sdata (o_image1_2__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_2_ (.regout (f_b3_next[2]), .datain (
                       f_i2_next[2]), .sdata (o_image1_2__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_1_ (.regout (f_b3_next[1]), .datain (
                       f_i2_next[1]), .sdata (o_image1_2__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b3_next_0_ (.regout (f_b3_next[0]), .datain (
                       f_i2_next[0]), .sdata (o_image1_2__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_7_ (.regout (f_b2_next[7]), .datain (
                       f_b3_next[7]), .sdata (o_image2_2__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_6_ (.regout (f_b2_next[6]), .datain (
                       f_b3_next[6]), .sdata (o_image2_2__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_5_ (.regout (f_b2_next[5]), .datain (
                       f_b3_next[5]), .sdata (o_image2_2__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_4_ (.regout (f_b2_next[4]), .datain (
                       f_b3_next[4]), .sdata (o_image2_2__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_3_ (.regout (f_b2_next[3]), .datain (
                       f_b3_next[3]), .sdata (o_image2_2__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_2_ (.regout (f_b2_next[2]), .datain (
                       f_b3_next[2]), .sdata (o_image2_2__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_1_ (.regout (f_b2_next[1]), .datain (
                       f_b3_next[1]), .sdata (o_image2_2__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b2_next_0_ (.regout (f_b2_next[0]), .datain (
                       f_b3_next[0]), .sdata (o_image2_2__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_7_ (.regout (f_b1_next[7]), .datain (
                       f_b2_next[7]), .sdata (o_image2_1__dup0_7_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_6_ (.regout (f_b1_next[6]), .datain (
                       f_b2_next[6]), .sdata (o_image2_1__dup0_6_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_5_ (.regout (f_b1_next[5]), .datain (
                       f_b2_next[5]), .sdata (o_image2_1__dup0_5_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_4_ (.regout (f_b1_next[4]), .datain (
                       f_b2_next[4]), .sdata (o_image2_1__dup0_4_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_3_ (.regout (f_b1_next[3]), .datain (
                       f_b2_next[3]), .sdata (o_image2_1__dup0_3_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_2_ (.regout (f_b1_next[2]), .datain (
                       f_b2_next[2]), .sdata (o_image2_1__dup0_2_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_1_ (.regout (f_b1_next[1]), .datain (
                       f_b2_next[1]), .sdata (o_image2_1__dup0_1_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
    cycloneii_lcell_ff reg_f_b1_next_0_ (.regout (f_b1_next[0]), .datain (
                       f_b2_next[0]), .sdata (o_image2_1__dup0_0_), .clk (
                       i_clock_int), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (nx60284z1)) ;
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
    cycloneii_io o_image2_obuf_2__7_ (.padio (o_image2_2_[7]), .datain (
                 o_image2_2__dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__7_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__7_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__7_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__7_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__6_ (.padio (o_image2_2_[6]), .datain (
                 o_image2_2__dup0_6_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__6_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__6_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__6_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__6_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__5_ (.padio (o_image2_2_[5]), .datain (
                 o_image2_2__dup0_5_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__5_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__5_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__5_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__5_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__4_ (.padio (o_image2_2_[4]), .datain (
                 o_image2_2__dup0_4_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__4_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__4_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__4_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__4_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__3_ (.padio (o_image2_2_[3]), .datain (
                 o_image2_2__dup0_3_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__3_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__3_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__3_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__3_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__2_ (.padio (o_image2_2_[2]), .datain (
                 o_image2_2__dup0_2_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__2_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__2_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__2_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__2_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__1_ (.padio (o_image2_2_[1]), .datain (
                 o_image2_2__dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__1_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__1_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__1_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__1_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_2__0_ (.padio (o_image2_2_[0]), .datain (
                 o_image2_2__dup0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_2__0_.operation_mode = "output";
                 
                 defparam o_image2_obuf_2__0_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_2__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__0_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_2__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_2__0_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__7_ (.padio (o_image2_1_[7]), .datain (
                 o_image2_1__dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__7_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__7_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__7_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__7_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__6_ (.padio (o_image2_1_[6]), .datain (
                 o_image2_1__dup0_6_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__6_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__6_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__6_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__6_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__5_ (.padio (o_image2_1_[5]), .datain (
                 o_image2_1__dup0_5_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__5_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__5_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__5_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__5_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__4_ (.padio (o_image2_1_[4]), .datain (
                 o_image2_1__dup0_4_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__4_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__4_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__4_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__4_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__3_ (.padio (o_image2_1_[3]), .datain (
                 o_image2_1__dup0_3_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__3_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__3_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__3_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__3_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__2_ (.padio (o_image2_1_[2]), .datain (
                 o_image2_1__dup0_2_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__2_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__2_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__2_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__2_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__1_ (.padio (o_image2_1_[1]), .datain (
                 o_image2_1__dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__1_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__1_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__1_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__1_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_1__0_ (.padio (o_image2_1_[0]), .datain (
                 o_image2_1__dup0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_1__0_.operation_mode = "output";
                 
                 defparam o_image2_obuf_1__0_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_1__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__0_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_1__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_1__0_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__7_ (.padio (o_image2_0_[7]), .datain (
                 o_image2_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__7_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__7_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__7_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__7_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__6_ (.padio (o_image2_0_[6]), .datain (
                 o_image2_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__6_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__6_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__6_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__6_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__5_ (.padio (o_image2_0_[5]), .datain (
                 o_image2_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__5_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__5_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__5_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__5_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__4_ (.padio (o_image2_0_[4]), .datain (
                 o_image2_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__4_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__4_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__4_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__4_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__3_ (.padio (o_image2_0_[3]), .datain (
                 o_image2_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__3_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__3_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__3_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__3_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__2_ (.padio (o_image2_0_[2]), .datain (
                 o_image2_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__2_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__2_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__2_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__2_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__1_ (.padio (o_image2_0_[1]), .datain (
                 o_image2_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__1_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__1_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__1_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__1_.input_register_mode = "none";
    cycloneii_io o_image2_obuf_0__0_ (.padio (o_image2_0_[0]), .datain (
                 o_image2_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_image2_obuf_0__0_.operation_mode = "output";
                 
                 defparam o_image2_obuf_0__0_.output_register_mode = "none";
                 
                 defparam o_image2_obuf_0__0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__0_.oe_register_mode = "none";
                 
                 defparam o_image2_obuf_0__0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_image2_obuf_0__0_.input_register_mode = "none";
    cycloneii_io o_edge_obuf (.padio (o_edge), .datain (debug_led_red_dup0[2]), 
                 .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_edge_obuf.operation_mode = "output";
                 
                 defparam o_edge_obuf.output_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_edge_obuf.oe_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_edge_obuf.input_register_mode = "none";
    cycloneii_io o_dir_obuf_2_ (.padio (o_dir[2]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_dir_obuf_2_.operation_mode = "output";
                 defparam o_dir_obuf_2_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_output_clock_enable = "false";
                 defparam o_dir_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_oe_clock_enable = "false";
                 defparam o_dir_obuf_2_.input_register_mode = "none";
    cycloneii_io o_dir_obuf_1_ (.padio (o_dir[1]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_dir_obuf_1_.operation_mode = "output";
                 defparam o_dir_obuf_1_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_output_clock_enable = "false";
                 defparam o_dir_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_oe_clock_enable = "false";
                 defparam o_dir_obuf_1_.input_register_mode = "none";
    cycloneii_io o_dir_obuf_0_ (.padio (o_dir[0]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
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
    cycloneii_io ix52494z43919 (.padio (o_image0_0_[7]), .datain (nx52494z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix52494z43919.operation_mode = "output";
                 
                 defparam ix52494z43919.output_register_mode = "none";
                 
                 defparam ix52494z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix52494z43919.oe_register_mode = "none";
                 
                 defparam ix52494z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix52494z43919.input_register_mode = "none";
    cycloneii_io ix53491z43919 (.padio (o_image0_0_[6]), .datain (nx53491z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix53491z43919.operation_mode = "output";
                 
                 defparam ix53491z43919.output_register_mode = "none";
                 
                 defparam ix53491z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix53491z43919.oe_register_mode = "none";
                 
                 defparam ix53491z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix53491z43919.input_register_mode = "none";
    cycloneii_io ix54488z43919 (.padio (o_image0_0_[5]), .datain (nx54488z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix54488z43919.operation_mode = "output";
                 
                 defparam ix54488z43919.output_register_mode = "none";
                 
                 defparam ix54488z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix54488z43919.oe_register_mode = "none";
                 
                 defparam ix54488z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix54488z43919.input_register_mode = "none";
    cycloneii_io ix55485z43919 (.padio (o_image0_0_[4]), .datain (nx55485z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix55485z43919.operation_mode = "output";
                 
                 defparam ix55485z43919.output_register_mode = "none";
                 
                 defparam ix55485z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix55485z43919.oe_register_mode = "none";
                 
                 defparam ix55485z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix55485z43919.input_register_mode = "none";
    cycloneii_io ix56482z43919 (.padio (o_image0_0_[3]), .datain (nx56482z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix56482z43919.operation_mode = "output";
                 
                 defparam ix56482z43919.output_register_mode = "none";
                 
                 defparam ix56482z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix56482z43919.oe_register_mode = "none";
                 
                 defparam ix56482z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix56482z43919.input_register_mode = "none";
    cycloneii_io ix57479z43919 (.padio (o_image0_0_[2]), .datain (nx57479z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix57479z43919.operation_mode = "output";
                 
                 defparam ix57479z43919.output_register_mode = "none";
                 
                 defparam ix57479z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix57479z43919.oe_register_mode = "none";
                 
                 defparam ix57479z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix57479z43919.input_register_mode = "none";
    cycloneii_io ix58476z43919 (.padio (o_image0_0_[1]), .datain (nx58476z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix58476z43919.operation_mode = "output";
                 
                 defparam ix58476z43919.output_register_mode = "none";
                 
                 defparam ix58476z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix58476z43919.oe_register_mode = "none";
                 
                 defparam ix58476z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix58476z43919.input_register_mode = "none";
    cycloneii_io ix59473z43919 (.padio (o_image0_0_[0]), .datain (nx59473z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix59473z43919.operation_mode = "output";
                 
                 defparam ix59473z43919.output_register_mode = "none";
                 
                 defparam ix59473z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix59473z43919.oe_register_mode = "none";
                 
                 defparam ix59473z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix59473z43919.input_register_mode = "none";
    cycloneii_io ix57629z43919 (.padio (o_image0_1_[7]), .datain (nx57629z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix57629z43919.operation_mode = "output";
                 
                 defparam ix57629z43919.output_register_mode = "none";
                 
                 defparam ix57629z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix57629z43919.oe_register_mode = "none";
                 
                 defparam ix57629z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix57629z43919.input_register_mode = "none";
    cycloneii_io ix58626z43919 (.padio (o_image0_1_[6]), .datain (nx58626z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix58626z43919.operation_mode = "output";
                 
                 defparam ix58626z43919.output_register_mode = "none";
                 
                 defparam ix58626z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix58626z43919.oe_register_mode = "none";
                 
                 defparam ix58626z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix58626z43919.input_register_mode = "none";
    cycloneii_io ix59623z43919 (.padio (o_image0_1_[5]), .datain (nx59623z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix59623z43919.operation_mode = "output";
                 
                 defparam ix59623z43919.output_register_mode = "none";
                 
                 defparam ix59623z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix59623z43919.oe_register_mode = "none";
                 
                 defparam ix59623z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix59623z43919.input_register_mode = "none";
    cycloneii_io ix60620z43919 (.padio (o_image0_1_[4]), .datain (nx60620z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix60620z43919.operation_mode = "output";
                 
                 defparam ix60620z43919.output_register_mode = "none";
                 
                 defparam ix60620z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix60620z43919.oe_register_mode = "none";
                 
                 defparam ix60620z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix60620z43919.input_register_mode = "none";
    cycloneii_io ix61617z43919 (.padio (o_image0_1_[3]), .datain (nx61617z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix61617z43919.operation_mode = "output";
                 
                 defparam ix61617z43919.output_register_mode = "none";
                 
                 defparam ix61617z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix61617z43919.oe_register_mode = "none";
                 
                 defparam ix61617z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix61617z43919.input_register_mode = "none";
    cycloneii_io ix62614z43919 (.padio (o_image0_1_[2]), .datain (nx62614z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62614z43919.operation_mode = "output";
                 
                 defparam ix62614z43919.output_register_mode = "none";
                 
                 defparam ix62614z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62614z43919.oe_register_mode = "none";
                 
                 defparam ix62614z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62614z43919.input_register_mode = "none";
    cycloneii_io ix63611z43919 (.padio (o_image0_1_[1]), .datain (nx63611z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63611z43919.operation_mode = "output";
                 
                 defparam ix63611z43919.output_register_mode = "none";
                 
                 defparam ix63611z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63611z43919.oe_register_mode = "none";
                 
                 defparam ix63611z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63611z43919.input_register_mode = "none";
    cycloneii_io ix64608z43919 (.padio (o_image0_1_[0]), .datain (nx64608z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix64608z43919.operation_mode = "output";
                 
                 defparam ix64608z43919.output_register_mode = "none";
                 
                 defparam ix64608z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix64608z43919.oe_register_mode = "none";
                 
                 defparam ix64608z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix64608z43919.input_register_mode = "none";
    cycloneii_io ix62764z43919 (.padio (o_image0_2_[7]), .datain (nx62764z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62764z43919.operation_mode = "output";
                 
                 defparam ix62764z43919.output_register_mode = "none";
                 
                 defparam ix62764z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62764z43919.oe_register_mode = "none";
                 
                 defparam ix62764z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62764z43919.input_register_mode = "none";
    cycloneii_io ix63761z43919 (.padio (o_image0_2_[6]), .datain (nx63761z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63761z43919.operation_mode = "output";
                 
                 defparam ix63761z43919.output_register_mode = "none";
                 
                 defparam ix63761z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63761z43919.oe_register_mode = "none";
                 
                 defparam ix63761z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63761z43919.input_register_mode = "none";
    cycloneii_io ix64758z43919 (.padio (o_image0_2_[5]), .datain (nx64758z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix64758z43919.operation_mode = "output";
                 
                 defparam ix64758z43919.output_register_mode = "none";
                 
                 defparam ix64758z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix64758z43919.oe_register_mode = "none";
                 
                 defparam ix64758z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix64758z43919.input_register_mode = "none";
    cycloneii_io ix219z43919 (.padio (o_image0_2_[4]), .datain (nx219z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix219z43919.operation_mode = "output";
                 
                 defparam ix219z43919.output_register_mode = "none";
                 
                 defparam ix219z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix219z43919.oe_register_mode = "none";
                 
                 defparam ix219z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix219z43919.input_register_mode = "none";
    cycloneii_io ix1216z43919 (.padio (o_image0_2_[3]), .datain (nx1216z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix1216z43919.operation_mode = "output";
                 
                 defparam ix1216z43919.output_register_mode = "none";
                 
                 defparam ix1216z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix1216z43919.oe_register_mode = "none";
                 
                 defparam ix1216z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix1216z43919.input_register_mode = "none";
    cycloneii_io ix2213z43919 (.padio (o_image0_2_[2]), .datain (nx2213z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix2213z43919.operation_mode = "output";
                 
                 defparam ix2213z43919.output_register_mode = "none";
                 
                 defparam ix2213z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix2213z43919.oe_register_mode = "none";
                 
                 defparam ix2213z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix2213z43919.input_register_mode = "none";
    cycloneii_io ix3210z43919 (.padio (o_image0_2_[1]), .datain (nx3210z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix3210z43919.operation_mode = "output";
                 
                 defparam ix3210z43919.output_register_mode = "none";
                 
                 defparam ix3210z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix3210z43919.oe_register_mode = "none";
                 
                 defparam ix3210z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix3210z43919.input_register_mode = "none";
    cycloneii_io ix4207z43919 (.padio (o_image0_2_[0]), .datain (nx4207z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix4207z43919.operation_mode = "output";
                 
                 defparam ix4207z43919.output_register_mode = "none";
                 
                 defparam ix4207z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix4207z43919.oe_register_mode = "none";
                 
                 defparam ix4207z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix4207z43919.input_register_mode = "none";
    cycloneii_io ix48187z43919 (.padio (o_image1_0_[7]), .datain (nx48187z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix48187z43919.operation_mode = "output";
                 
                 defparam ix48187z43919.output_register_mode = "none";
                 
                 defparam ix48187z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix48187z43919.oe_register_mode = "none";
                 
                 defparam ix48187z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix48187z43919.input_register_mode = "none";
    cycloneii_io ix47190z43919 (.padio (o_image1_0_[6]), .datain (nx47190z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix47190z43919.operation_mode = "output";
                 
                 defparam ix47190z43919.output_register_mode = "none";
                 
                 defparam ix47190z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix47190z43919.oe_register_mode = "none";
                 
                 defparam ix47190z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix47190z43919.input_register_mode = "none";
    cycloneii_io ix46193z43919 (.padio (o_image1_0_[5]), .datain (nx46193z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix46193z43919.operation_mode = "output";
                 
                 defparam ix46193z43919.output_register_mode = "none";
                 
                 defparam ix46193z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix46193z43919.oe_register_mode = "none";
                 
                 defparam ix46193z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix46193z43919.input_register_mode = "none";
    cycloneii_io ix45196z43919 (.padio (o_image1_0_[4]), .datain (nx45196z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45196z43919.operation_mode = "output";
                 
                 defparam ix45196z43919.output_register_mode = "none";
                 
                 defparam ix45196z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45196z43919.oe_register_mode = "none";
                 
                 defparam ix45196z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45196z43919.input_register_mode = "none";
    cycloneii_io ix44199z43919 (.padio (o_image1_0_[3]), .datain (nx44199z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix44199z43919.operation_mode = "output";
                 
                 defparam ix44199z43919.output_register_mode = "none";
                 
                 defparam ix44199z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix44199z43919.oe_register_mode = "none";
                 
                 defparam ix44199z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix44199z43919.input_register_mode = "none";
    cycloneii_io ix43202z43919 (.padio (o_image1_0_[2]), .datain (nx43202z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix43202z43919.operation_mode = "output";
                 
                 defparam ix43202z43919.output_register_mode = "none";
                 
                 defparam ix43202z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix43202z43919.oe_register_mode = "none";
                 
                 defparam ix43202z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix43202z43919.input_register_mode = "none";
    cycloneii_io ix42205z43919 (.padio (o_image1_0_[1]), .datain (nx42205z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix42205z43919.operation_mode = "output";
                 
                 defparam ix42205z43919.output_register_mode = "none";
                 
                 defparam ix42205z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix42205z43919.oe_register_mode = "none";
                 
                 defparam ix42205z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix42205z43919.input_register_mode = "none";
    cycloneii_io ix41208z43919 (.padio (o_image1_0_[0]), .datain (nx41208z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix41208z43919.operation_mode = "output";
                 
                 defparam ix41208z43919.output_register_mode = "none";
                 
                 defparam ix41208z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix41208z43919.oe_register_mode = "none";
                 
                 defparam ix41208z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix41208z43919.input_register_mode = "none";
    cycloneii_io ix43052z43919 (.padio (o_image1_1_[7]), .datain (nx43052z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix43052z43919.operation_mode = "output";
                 
                 defparam ix43052z43919.output_register_mode = "none";
                 
                 defparam ix43052z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix43052z43919.oe_register_mode = "none";
                 
                 defparam ix43052z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix43052z43919.input_register_mode = "none";
    cycloneii_io ix42055z43919 (.padio (o_image1_1_[6]), .datain (nx42055z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix42055z43919.operation_mode = "output";
                 
                 defparam ix42055z43919.output_register_mode = "none";
                 
                 defparam ix42055z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix42055z43919.oe_register_mode = "none";
                 
                 defparam ix42055z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix42055z43919.input_register_mode = "none";
    cycloneii_io ix41058z43919 (.padio (o_image1_1_[5]), .datain (nx41058z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix41058z43919.operation_mode = "output";
                 
                 defparam ix41058z43919.output_register_mode = "none";
                 
                 defparam ix41058z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix41058z43919.oe_register_mode = "none";
                 
                 defparam ix41058z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix41058z43919.input_register_mode = "none";
    cycloneii_io ix40061z43919 (.padio (o_image1_1_[4]), .datain (nx40061z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix40061z43919.operation_mode = "output";
                 
                 defparam ix40061z43919.output_register_mode = "none";
                 
                 defparam ix40061z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix40061z43919.oe_register_mode = "none";
                 
                 defparam ix40061z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix40061z43919.input_register_mode = "none";
    cycloneii_io ix39064z43919 (.padio (o_image1_1_[3]), .datain (nx39064z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix39064z43919.operation_mode = "output";
                 
                 defparam ix39064z43919.output_register_mode = "none";
                 
                 defparam ix39064z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix39064z43919.oe_register_mode = "none";
                 
                 defparam ix39064z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix39064z43919.input_register_mode = "none";
    cycloneii_io ix38067z43919 (.padio (o_image1_1_[2]), .datain (nx38067z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix38067z43919.operation_mode = "output";
                 
                 defparam ix38067z43919.output_register_mode = "none";
                 
                 defparam ix38067z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix38067z43919.oe_register_mode = "none";
                 
                 defparam ix38067z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix38067z43919.input_register_mode = "none";
    cycloneii_io ix37070z43919 (.padio (o_image1_1_[1]), .datain (nx37070z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix37070z43919.operation_mode = "output";
                 
                 defparam ix37070z43919.output_register_mode = "none";
                 
                 defparam ix37070z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix37070z43919.oe_register_mode = "none";
                 
                 defparam ix37070z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix37070z43919.input_register_mode = "none";
    cycloneii_io ix36073z43919 (.padio (o_image1_1_[0]), .datain (nx36073z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix36073z43919.operation_mode = "output";
                 
                 defparam ix36073z43919.output_register_mode = "none";
                 
                 defparam ix36073z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix36073z43919.oe_register_mode = "none";
                 
                 defparam ix36073z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix36073z43919.input_register_mode = "none";
    cycloneii_io ix37917z43919 (.padio (o_image1_2_[7]), .datain (nx37917z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix37917z43919.operation_mode = "output";
                 
                 defparam ix37917z43919.output_register_mode = "none";
                 
                 defparam ix37917z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix37917z43919.oe_register_mode = "none";
                 
                 defparam ix37917z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix37917z43919.input_register_mode = "none";
    cycloneii_io ix36920z43919 (.padio (o_image1_2_[6]), .datain (nx36920z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix36920z43919.operation_mode = "output";
                 
                 defparam ix36920z43919.output_register_mode = "none";
                 
                 defparam ix36920z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix36920z43919.oe_register_mode = "none";
                 
                 defparam ix36920z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix36920z43919.input_register_mode = "none";
    cycloneii_io ix35923z43919 (.padio (o_image1_2_[5]), .datain (nx35923z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix35923z43919.operation_mode = "output";
                 
                 defparam ix35923z43919.output_register_mode = "none";
                 
                 defparam ix35923z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix35923z43919.oe_register_mode = "none";
                 
                 defparam ix35923z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix35923z43919.input_register_mode = "none";
    cycloneii_io ix34926z43919 (.padio (o_image1_2_[4]), .datain (nx34926z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix34926z43919.operation_mode = "output";
                 
                 defparam ix34926z43919.output_register_mode = "none";
                 
                 defparam ix34926z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix34926z43919.oe_register_mode = "none";
                 
                 defparam ix34926z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix34926z43919.input_register_mode = "none";
    cycloneii_io ix33929z43919 (.padio (o_image1_2_[3]), .datain (nx33929z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix33929z43919.operation_mode = "output";
                 
                 defparam ix33929z43919.output_register_mode = "none";
                 
                 defparam ix33929z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix33929z43919.oe_register_mode = "none";
                 
                 defparam ix33929z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix33929z43919.input_register_mode = "none";
    cycloneii_io ix32932z43919 (.padio (o_image1_2_[2]), .datain (nx32932z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix32932z43919.operation_mode = "output";
                 
                 defparam ix32932z43919.output_register_mode = "none";
                 
                 defparam ix32932z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix32932z43919.oe_register_mode = "none";
                 
                 defparam ix32932z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix32932z43919.input_register_mode = "none";
    cycloneii_io ix31935z43919 (.padio (o_image1_2_[1]), .datain (nx31935z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix31935z43919.operation_mode = "output";
                 
                 defparam ix31935z43919.output_register_mode = "none";
                 
                 defparam ix31935z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix31935z43919.oe_register_mode = "none";
                 
                 defparam ix31935z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix31935z43919.input_register_mode = "none";
    cycloneii_io ix30938z43919 (.padio (o_image1_2_[0]), .datain (nx30938z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix30938z43919.operation_mode = "output";
                 
                 defparam ix30938z43919.output_register_mode = "none";
                 
                 defparam ix30938z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix30938z43919.oe_register_mode = "none";
                 
                 defparam ix30938z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix30938z43919.input_register_mode = "none";
    cycloneii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_reset_ibuf.operation_mode = "input";
                 
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_reset_ibuf.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_7_ (.combout (i_pixel_int[7]), .padio (i_pixel[7])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_7_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_7_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_7_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_7_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_6_ (.combout (i_pixel_int[6]), .padio (i_pixel[6])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_6_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_6_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_6_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_6_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_5_ (.combout (i_pixel_int[5]), .padio (i_pixel[5])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_5_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_5_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_5_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_5_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_4_ (.combout (i_pixel_int[4]), .padio (i_pixel[4])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_4_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_4_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_4_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_4_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_3_ (.combout (i_pixel_int[3]), .padio (i_pixel[3])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_3_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_3_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_3_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_3_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_2_ (.combout (i_pixel_int[2]), .padio (i_pixel[2])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_2_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_2_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_2_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_2_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_1_ (.combout (i_pixel_int[1]), .padio (i_pixel[1])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_1_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_1_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_1_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_1_.input_register_mode = "none";
    cycloneii_io i_pixel_ibuf_0_ (.combout (i_pixel_int[0]), .padio (i_pixel[0])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_pixel_ibuf_0_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_0_.tie_off_output_clock_enable = "false";
                 defparam i_pixel_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_0_.tie_off_oe_clock_enable = "false";
                 defparam i_pixel_ibuf_0_.input_register_mode = "none";
    cycloneii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_clock_ibuf.operation_mode = "input";
                 
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_clock_ibuf.input_register_mode = "none";
    cycloneii_io debug_valid_obuf (.padio (debug_valid), .datain (
                 debug_valid_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam debug_valid_obuf.operation_mode = "output";
                 
                 defparam debug_valid_obuf.output_register_mode = "none";
                 
                 defparam debug_valid_obuf.tie_off_output_clock_enable = "false";
                 defparam debug_valid_obuf.oe_register_mode = "none";
                 
                 defparam debug_valid_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_valid_obuf.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_7_ (.padio (debug_num_8[7]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_7_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_7_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_7_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_7_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_6_ (.padio (debug_num_8[6]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_6_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_6_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_6_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_6_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_5_ (.padio (debug_num_8[5]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_5_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_5_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_5_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_5_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_4_ (.padio (debug_num_8[4]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_4_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_4_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_4_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_4_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_3_ (.padio (debug_num_8[3]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_3_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_3_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_3_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_3_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_2_ (.padio (debug_num_8[2]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_2_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_2_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_2_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_2_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_1_ (.padio (debug_num_8[1]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_1_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_1_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_1_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_1_.input_register_mode = "none";
    cycloneii_io debug_num_8_triBus11_0_ (.padio (debug_num_8[0]), .datain (
                 debug_led_red_dup0[2]), .oe (debug_led_red_dup0[2]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_8_triBus11_0_.operation_mode = "output";
                 
                 defparam debug_num_8_triBus11_0_.output_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_0_.oe_register_mode = "none";
                 
                 defparam debug_num_8_triBus11_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_8_triBus11_0_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_7_ (.padio (debug_num_7[7]), .datain (
                 debug_num_7_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_6_ (.padio (debug_num_7[6]), .datain (
                 debug_num_7_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_5_ (.padio (debug_num_7[5]), .datain (
                 debug_num_7_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_4_ (.padio (debug_num_7[4]), .datain (
                 debug_num_7_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_3_ (.padio (debug_num_7[3]), .datain (
                 debug_num_7_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_2_ (.padio (debug_num_7[2]), .datain (
                 debug_num_7_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_1_ (.padio (debug_num_7[1]), .datain (
                 debug_num_7_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_7_obuf_0_ (.padio (debug_num_7[0]), .datain (
                 debug_num_7_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_7_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_7_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_7_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_7_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_7_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_7_ (.padio (debug_num_6[7]), .datain (
                 debug_num_6_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_6_ (.padio (debug_num_6[6]), .datain (
                 debug_num_6_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_5_ (.padio (debug_num_6[5]), .datain (
                 debug_num_6_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_4_ (.padio (debug_num_6[4]), .datain (
                 debug_num_6_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_3_ (.padio (debug_num_6[3]), .datain (
                 debug_num_6_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_2_ (.padio (debug_num_6[2]), .datain (
                 debug_num_6_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_1_ (.padio (debug_num_6[1]), .datain (
                 debug_num_6_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_6_obuf_0_ (.padio (debug_num_6[0]), .datain (
                 debug_num_6_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_6_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_6_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_6_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_6_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_6_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_7_ (.padio (debug_num_5[7]), .datain (
                 debug_num_5_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_6_ (.padio (debug_num_5[6]), .datain (
                 debug_num_5_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_5_ (.padio (debug_num_5[5]), .datain (
                 debug_num_5_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_4_ (.padio (debug_num_5[4]), .datain (
                 debug_num_5_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_3_ (.padio (debug_num_5[3]), .datain (
                 debug_num_5_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_2_ (.padio (debug_num_5[2]), .datain (
                 debug_num_5_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_1_ (.padio (debug_num_5[1]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_0_ (.padio (debug_num_5[0]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_7_ (.padio (debug_num_4[7]), .datain (
                 debug_num_4_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_6_ (.padio (debug_num_4[6]), .datain (
                 debug_num_4_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_5_ (.padio (debug_num_4[5]), .datain (
                 debug_num_4_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_4_ (.padio (debug_num_4[4]), .datain (
                 debug_num_4_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_3_ (.padio (debug_num_4[3]), .datain (
                 debug_num_4_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_2_ (.padio (debug_num_4[2]), .datain (
                 debug_num_4_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_1_ (.padio (debug_num_4[1]), .datain (
                 debug_num_4_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_0_ (.padio (debug_num_4[0]), .datain (
                 debug_num_4_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_7_ (.padio (debug_num_3[7]), .datain (
                 debug_num_3_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_6_ (.padio (debug_num_3[6]), .datain (
                 debug_num_3_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_5_ (.padio (debug_num_3[5]), .datain (
                 debug_num_3_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_4_ (.padio (debug_num_3[4]), .datain (
                 debug_num_3_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_3_ (.padio (debug_num_3[3]), .datain (
                 debug_num_3_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_2_ (.padio (debug_num_3[2]), .datain (
                 debug_num_3_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_1_ (.padio (debug_num_3[1]), .datain (
                 debug_num_3_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_0_ (.padio (debug_num_3[0]), .datain (
                 debug_num_3_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_7_ (.padio (debug_num_2[7]), .datain (
                 debug_num_2_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_6_ (.padio (debug_num_2[6]), .datain (
                 debug_num_2_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_5_ (.padio (debug_num_2[5]), .datain (
                 debug_num_2_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_4_ (.padio (debug_num_2[4]), .datain (
                 debug_num_2_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_3_ (.padio (debug_num_2[3]), .datain (
                 debug_num_2_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_2_ (.padio (debug_num_2[2]), .datain (
                 debug_num_2_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_1_ (.padio (debug_num_2[1]), .datain (
                 debug_num_2_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_0_ (.padio (debug_num_2[0]), .datain (
                 debug_num_2_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_7_ (.padio (debug_num_1[7]), .datain (
                 debug_num_1_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_6_ (.padio (debug_num_1[6]), .datain (
                 debug_num_1_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_5_ (.padio (debug_num_1[5]), .datain (
                 debug_num_1_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_4_ (.padio (debug_num_1[4]), .datain (
                 debug_num_1_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_3_ (.padio (debug_num_1[3]), .datain (
                 debug_num_1_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_2_ (.padio (debug_num_1[2]), .datain (
                 debug_num_1_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_1_ (.padio (debug_num_1[1]), .datain (
                 debug_num_1_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_0_ (.padio (debug_num_1[0]), .datain (
                 debug_num_1_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_7_ (.padio (debug_num_0[7]), .datain (
                 debug_num_0_dup0[7]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_7_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_6_ (.padio (debug_num_0[6]), .datain (
                 debug_num_0_dup0[6]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_6_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_5_ (.padio (debug_num_0[5]), .datain (
                 debug_num_0_dup0[5]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_5_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_4_ (.padio (debug_num_0[4]), .datain (
                 debug_num_0_dup0[4]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_4_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_3_ (.padio (debug_num_0[3]), .datain (
                 debug_num_0_dup0[3]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_2_ (.padio (debug_num_0[2]), .datain (
                 debug_num_0_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_1_ (.padio (debug_num_0[1]), .datain (
                 debug_num_0_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_0_ (.padio (debug_num_0[0]), .datain (
                 debug_num_0_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_17_ (.padio (debug_led_red[17]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_17_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_led_red_dup0[2]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    cycloneii_lcell_comb ix54514z52924 (.combout (nx54514z1), .dataa (u_flow_p40
                         ), .datab (i_reset_int), .datac (1'b1), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix54514z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix64956z52924 (.combout (nx64956z1), .dataa (m_o_valid)
                         , .datab (nx60284z1), .datac (i_reset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64956z52924.lut_mask = 16'hfbfb;
    cycloneii_lcell_comb ix60284z52924 (.combout (nx60284z1), .dataa (f_state[3]
                         ), .datab (f_state[2]), .datac (f_state[1]), .datad (
                         nx63959z1), .cin (1'b0)) ;
                         
                         defparam ix60284z52924.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix36102z52923 (.combout (nx36102z1), .dataa (m_o_valid)
                         , .datab (nx60284z1), .datac (i_reset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36102z52923.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix57127z52923 (.combout (nx57127z1), .dataa (m_o_valid)
                         , .datab (nx60284z1), .datac (i_reset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix57127z52923.lut_mask = 16'h0b0b;
    cycloneii_lcell_comb ix14201z52923 (.combout (f_i_mode[0]), .dataa (
                         m_o_mode[0]), .datab (f_i_mode_next[0]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix14201z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix33421z52923 (.combout (f_i_row[0]), .dataa (
                         m_o_row[0]), .datab (f_i_row_next[0]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33421z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix34418z52923 (.combout (f_i_row[1]), .dataa (
                         m_o_row[1]), .datab (f_i_row_next[1]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix34418z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix35415z52923 (.combout (f_i_row[2]), .dataa (
                         m_o_row[2]), .datab (f_i_row_next[2]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix35415z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix36412z52923 (.combout (f_i_row[3]), .dataa (
                         m_o_row[3]), .datab (f_i_row_next[3]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36412z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix37409z52923 (.combout (f_i_row[4]), .dataa (
                         m_o_row[4]), .datab (f_i_row_next[4]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix37409z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38406z52923 (.combout (f_i_row[5]), .dataa (
                         m_o_row[5]), .datab (f_i_row_next[5]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38406z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix39403z52923 (.combout (f_i_row[6]), .dataa (
                         m_o_row[6]), .datab (f_i_row_next[6]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39403z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix40400z52923 (.combout (f_i_row[7]), .dataa (
                         m_o_row[7]), .datab (f_i_row_next[7]), .datac (
                         nx60284z1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40400z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix23512z52923 (.combout (debug_num_7_dup0[0]), .dataa (
                         f_i2_next[0]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix23512z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix24509z52923 (.combout (debug_num_7_dup0[1]), .dataa (
                         f_i2_next[1]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24509z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix25506z52923 (.combout (debug_num_7_dup0[2]), .dataa (
                         f_i2_next[2]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_2_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix25506z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix26503z52923 (.combout (debug_num_7_dup0[3]), .dataa (
                         f_i2_next[3]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_3_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix26503z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix27500z52923 (.combout (debug_num_7_dup0[4]), .dataa (
                         f_i2_next[4]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_4_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27500z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix28497z52923 (.combout (debug_num_7_dup0[5]), .dataa (
                         f_i2_next[5]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28497z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix29494z52923 (.combout (debug_num_7_dup0[6]), .dataa (
                         f_i2_next[6]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_6_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29494z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix30491z52923 (.combout (debug_num_7_dup0[7]), .dataa (
                         f_i2_next[7]), .datab (nx60284z1), .datac (
                         o_image1_2__dup0_7_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30491z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix759z52923 (.combout (debug_num_6_dup0[0]), .dataa (
                         f_i1_next[0]), .datab (nx60284z1), .datac (
                         o_image1_dup0[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix759z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix1756z52923 (.combout (debug_num_6_dup0[1]), .dataa (
                         f_i1_next[1]), .datab (nx60284z1), .datac (
                         o_image1_dup0[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1756z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix2753z52923 (.combout (debug_num_6_dup0[2]), .dataa (
                         f_i1_next[2]), .datab (nx60284z1), .datac (
                         o_image1_dup0[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2753z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix3750z52923 (.combout (debug_num_6_dup0[3]), .dataa (
                         f_i1_next[3]), .datab (nx60284z1), .datac (
                         o_image1_dup0[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix3750z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix4747z52923 (.combout (debug_num_6_dup0[4]), .dataa (
                         f_i1_next[4]), .datab (nx60284z1), .datac (
                         o_image1_dup0[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4747z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix5744z52923 (.combout (debug_num_6_dup0[5]), .dataa (
                         f_i1_next[5]), .datab (nx60284z1), .datac (
                         o_image1_dup0[5]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5744z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix6741z52923 (.combout (debug_num_6_dup0[6]), .dataa (
                         f_i1_next[6]), .datab (nx60284z1), .datac (
                         o_image1_dup0[6]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6741z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix7738z52923 (.combout (debug_num_6_dup0[7]), .dataa (
                         f_i1_next[7]), .datab (nx60284z1), .datac (
                         o_image1_dup0[7]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix7738z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix21994z52923 (.combout (debug_num_5_dup0[0]), .dataa (
                         f_b3_next[0]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix21994z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20997z52923 (.combout (debug_num_5_dup0[1]), .dataa (
                         f_b3_next[1]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20997z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20000z52923 (.combout (debug_num_5_dup0[2]), .dataa (
                         f_b3_next[2]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_2_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20000z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix19003z52923 (.combout (debug_num_5_dup0[3]), .dataa (
                         f_b3_next[3]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_3_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix19003z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix18006z52923 (.combout (debug_num_5_dup0[4]), .dataa (
                         f_b3_next[4]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_4_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix18006z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix17009z52923 (.combout (debug_num_5_dup0[5]), .dataa (
                         f_b3_next[5]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17009z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix16012z52923 (.combout (debug_num_5_dup0[6]), .dataa (
                         f_b3_next[6]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_6_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16012z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix15015z52923 (.combout (debug_num_5_dup0[7]), .dataa (
                         f_b3_next[7]), .datab (nx60284z1), .datac (
                         o_image2_2__dup0_7_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15015z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20789z52923 (.combout (debug_num_4_dup0[0]), .dataa (
                         f_b2_next[0]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20789z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix21786z52923 (.combout (debug_num_4_dup0[1]), .dataa (
                         f_b2_next[1]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix21786z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix22783z52923 (.combout (debug_num_4_dup0[2]), .dataa (
                         f_b2_next[2]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_2_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix22783z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix23780z52923 (.combout (debug_num_4_dup0[3]), .dataa (
                         f_b2_next[3]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_3_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix23780z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix24777z52923 (.combout (debug_num_4_dup0[4]), .dataa (
                         f_b2_next[4]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_4_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24777z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix25774z52923 (.combout (debug_num_4_dup0[5]), .dataa (
                         f_b2_next[5]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix25774z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix26771z52923 (.combout (debug_num_4_dup0[6]), .dataa (
                         f_b2_next[6]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_6_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix26771z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix27768z52923 (.combout (debug_num_4_dup0[7]), .dataa (
                         f_b2_next[7]), .datab (nx60284z1), .datac (
                         o_image2_1__dup0_7_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27768z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix1964z52923 (.combout (debug_num_3_dup0[0]), .dataa (
                         f_b1_next[0]), .datab (nx60284z1), .datac (
                         o_image2_dup0[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1964z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix967z52923 (.combout (debug_num_3_dup0[1]), .dataa (
                         f_b1_next[1]), .datab (nx60284z1), .datac (
                         o_image2_dup0[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix967z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix65506z52923 (.combout (debug_num_3_dup0[2]), .dataa (
                         f_b1_next[2]), .datab (nx60284z1), .datac (
                         o_image2_dup0[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix65506z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix64509z52923 (.combout (debug_num_3_dup0[3]), .dataa (
                         f_b1_next[3]), .datab (nx60284z1), .datac (
                         o_image2_dup0[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64509z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix63512z52923 (.combout (debug_num_3_dup0[4]), .dataa (
                         f_b1_next[4]), .datab (nx60284z1), .datac (
                         o_image2_dup0[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63512z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix62515z52923 (.combout (debug_num_3_dup0[5]), .dataa (
                         f_b1_next[5]), .datab (nx60284z1), .datac (
                         o_image2_dup0[5]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62515z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix61518z52923 (.combout (debug_num_3_dup0[6]), .dataa (
                         f_b1_next[6]), .datab (nx60284z1), .datac (
                         o_image2_dup0[6]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61518z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix60521z52923 (.combout (debug_num_3_dup0[7]), .dataa (
                         f_b1_next[7]), .datab (nx60284z1), .datac (
                         o_image2_dup0[7]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60521z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix40819z52923 (.combout (debug_num_2_dup0[0]), .dataa (
                         f_t3_next[0]), .datab (nx60284z1), .datac (
                         o_image0_dup0[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40819z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix41816z52923 (.combout (debug_num_2_dup0[1]), .dataa (
                         f_t3_next[1]), .datab (nx60284z1), .datac (
                         o_image0_dup0[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41816z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix42813z52923 (.combout (debug_num_2_dup0[2]), .dataa (
                         f_t3_next[2]), .datab (nx60284z1), .datac (
                         o_image0_dup0[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix42813z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix43810z52923 (.combout (debug_num_2_dup0[3]), .dataa (
                         f_t3_next[3]), .datab (nx60284z1), .datac (
                         o_image0_dup0[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix43810z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix44807z52923 (.combout (debug_num_2_dup0[4]), .dataa (
                         f_t3_next[4]), .datab (nx60284z1), .datac (
                         o_image0_dup0[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44807z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix45804z52923 (.combout (debug_num_2_dup0[5]), .dataa (
                         f_t3_next[5]), .datab (nx60284z1), .datac (
                         o_image0_dup0[5]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45804z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix46801z52923 (.combout (debug_num_2_dup0[6]), .dataa (
                         f_t3_next[6]), .datab (nx60284z1), .datac (
                         o_image0_dup0[6]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix46801z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix47798z52923 (.combout (debug_num_2_dup0[7]), .dataa (
                         f_t3_next[7]), .datab (nx60284z1), .datac (
                         o_image0_dup0[7]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47798z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix47470z52923 (.combout (debug_num_1_dup0[0]), .dataa (
                         f_t2_next[0]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47470z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix46473z52923 (.combout (debug_num_1_dup0[1]), .dataa (
                         f_t2_next[1]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix46473z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix45476z52923 (.combout (debug_num_1_dup0[2]), .dataa (
                         f_t2_next[2]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_2_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45476z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix44479z52923 (.combout (debug_num_1_dup0[3]), .dataa (
                         f_t2_next[3]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_3_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44479z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix43482z52923 (.combout (debug_num_1_dup0[4]), .dataa (
                         f_t2_next[4]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_4_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix43482z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix42485z52923 (.combout (debug_num_1_dup0[5]), .dataa (
                         f_t2_next[5]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix42485z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix41488z52923 (.combout (debug_num_1_dup0[6]), .dataa (
                         f_t2_next[6]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_6_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41488z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix40491z52923 (.combout (debug_num_1_dup0[7]), .dataa (
                         f_t2_next[7]), .datab (nx60284z1), .datac (
                         o_image0_1__dup0_7_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40491z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix60849z52923 (.combout (debug_num_0_dup0[0]), .dataa (
                         f_t1_next[0]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60849z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix61846z52923 (.combout (debug_num_0_dup0[1]), .dataa (
                         f_t1_next[1]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61846z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix62843z52923 (.combout (debug_num_0_dup0[2]), .dataa (
                         f_t1_next[2]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_2_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62843z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix63840z52923 (.combout (debug_num_0_dup0[3]), .dataa (
                         f_t1_next[3]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_3_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63840z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix64837z52923 (.combout (debug_num_0_dup0[4]), .dataa (
                         f_t1_next[4]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_4_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64837z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix298z52923 (.combout (debug_num_0_dup0[5]), .dataa (
                         f_t1_next[5]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix298z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix1295z52923 (.combout (debug_num_0_dup0[6]), .dataa (
                         f_t1_next[6]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_6_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1295z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix2292z52923 (.combout (debug_num_0_dup0[7]), .dataa (
                         f_t1_next[7]), .datab (nx60284z1), .datac (
                         o_image0_2__dup0_7_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2292z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix60284z52923 (.combout (debug_valid_dup0), .dataa (
                         m_o_valid), .datab (nx60284z1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix60284z52923.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix15198z52923 (.combout (f_i_mode[1]), .dataa (
                         nx60284z1), .datab (f_i_mode_next[1]), .datac (
                         i_reset_int), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15198z52923.lut_mask = 16'h4e4e;
    cycloneii_lcell_comb ix47893z52923 (.combout (o_mode_dup0[0]), .dataa (
                         i_reset_int), .datab (m_o_mode[0]), .datac (
                         u_flow_p5m[0]), .datad (u_flow_p5m[1]), .cin (1'b0)) ;
                         
                         defparam ix47893z52923.lut_mask = 16'hfeee;
endmodule


module memory ( i_valid, i_reset, i_pixel, i_clock, o_valid, o_mode, o_column, 
                o_row, o_image0_0_, o_image0_1_, o_image0_2_, o_image1_0_, 
                o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, o_image2_2_, 
                p_first_bubble ) ;

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

    wire [2:0]mem_wrn;
    wire [2:0]mem_wrn_current;
    wire busySignal, busySignalDelayed;
    wire [7:0]column;
    wire [7:0]row;
    wire [7:0]mem_q_0_;
    wire [7:0]mem_q_1_;
    wire [7:0]mem_q_2_;
    wire [7:0]rtlc0n0;
    wire nx8852z1, not_first_bubble, not_rtlc3_X_0_n252, nx47386z2, nx15763z2, 
         nx17757z1, buffer2_4n2ss1_1_, buffer2_4n2ss1_0_, nx60567z2, nx8852z2, 
         nx33254z1, nx57224z1, nx39109z3, nx40106z1, nx8852z3, nx60567z1, b_1_, 
         b_1__dup_354, nx47386z1, nx5021z1, nx4024z1, nx3027z1, nx2030z1, 
         nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, nx56377z1, nx57374z1, 
         nx58371z1, nx59368z1, nx60365z1, nx61362z1, nx62359z1, nx39109z2, 
         nx3027z2, nx2030z2, nx1033z2, nx36z2, nx64575z2, nx63578z2, nx55380z2, 
         nx8852z4, nx8852z6, nx8852z7, nx60567z3, nx55380z3, nx55380z4, 
         nx60567z4, nx60567z5, nx63578z4, nx62359z2, nx60567z6, nx17757z2, 
         nx8852z5, nx39109z1, nx15763z1, nx63578z3, nx64575z3, nx36z3, nx1033z3, 
         nx2030z3, nx3027z3, nx4024z2, nx5021z2;
    wire [554:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_row (.clock (i_clock), .q ({row[7],row[6],
                       row[5],row[4],row[3],row[2],row[1],row[0]}), .sclear (
                       nx8852z1), .cnt_en (not_rtlc3_X_0_n252), .p_i_reset (
                       i_reset), .p_rtlc6n55 (nx8852z2)) ;
    modgen_counter_8_1 modgen_counter_column (.clock (i_clock), .q ({column[7],
                       column[6],column[5],column[4],column[3],column[2],
                       column[1],column[0]}), .clk_en (nx47386z1), .sclear (
                       nx47386z2), .cnt_en (p_first_bubble)) ;
    ram_dq_8_0 u_mem1_mem (.wr_data1 (rtlc0n0), .rd_data1 ({mem_q_0_[7],
               mem_q_0_[6],mem_q_0_[5],mem_q_0_[4],mem_q_0_[3],mem_q_0_[2],
               mem_q_0_[1],mem_q_0_[0]}), .addr1 ({column[7],column[6],column[5]
               ,column[4],column[3],column[2],column[1],column[0]}), .wr_clk1 (
               i_clock), .wr_ena1 (mem_wrn[0])) ;
    ram_dq_8_1 u_mem2_mem (.wr_data1 (rtlc0n0), .rd_data1 ({mem_q_1_[7],
               mem_q_1_[6],mem_q_1_[5],mem_q_1_[4],mem_q_1_[3],mem_q_1_[2],
               mem_q_1_[1],mem_q_1_[0]}), .addr1 ({column[7],column[6],column[5]
               ,column[4],column[3],column[2],column[1],column[0]}), .wr_clk1 (
               i_clock), .wr_ena1 (mem_wrn[1])) ;
    ram_dq_8_2 u_mem3_mem (.wr_data1 (rtlc0n0), .rd_data1 ({mem_q_2_[7],
               mem_q_2_[6],mem_q_2_[5],mem_q_2_[4],mem_q_2_[3],mem_q_2_[2],
               mem_q_2_[1],mem_q_2_[0]}), .addr1 ({column[7],column[6],column[5]
               ,column[4],column[3],column[2],column[1],column[0]}), .wr_clk1 (
               i_clock), .wr_ena1 (mem_wrn[2])) ;
    assign o_mode[1] = ~i_reset ;
    assign not_first_bubble = ~p_first_bubble ;
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
                       nx39109z2), .aclr (1'b0), .sclr (nx40106z1), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_mem_wrn_current_1_ (.regout (mem_wrn_current[1]), .datain (
                       mem_wrn_current[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx39109z2), .aclr (1'b0), .sclr (nx40106z1), .sload (1'b0
                       )) ;
    assign nx39109z1 = 1 ;
    cycloneii_lcell_ff reg_mem_wrn_current_0_ (.regout (mem_wrn_current[0]), .datain (
                       mem_wrn_current[2]), .sdata (nx39109z1), .clk (i_clock), 
                       .ena (nx39109z2), .aclr (1'b0), .sclr (nx8852z1), .sload (
                       nx39109z3)) ;
    cycloneii_lcell_ff reg_mem_wrn_2_ (.regout (mem_wrn[2]), .datain (
                       mem_wrn_current[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (nx17757z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_wrn_1_ (.regout (mem_wrn[1]), .datain (
                       mem_wrn_current[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (nx17757z1), .sload (1'b0)) ;
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
                       ), .sclr (nx8852z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_buffer2_2__7_ (.regout (o_image2_2_[7]), .datain (
                       mem_q_2_[7]), .sdata (rtlc0n0[7]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__6_ (.regout (o_image2_2_[6]), .datain (
                       mem_q_2_[6]), .sdata (rtlc0n0[6]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__5_ (.regout (o_image2_2_[5]), .datain (
                       mem_q_2_[5]), .sdata (rtlc0n0[5]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__4_ (.regout (o_image2_2_[4]), .datain (
                       mem_q_2_[4]), .sdata (rtlc0n0[4]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__3_ (.regout (o_image2_2_[3]), .datain (
                       mem_q_2_[3]), .sdata (rtlc0n0[3]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__2_ (.regout (o_image2_2_[2]), .datain (
                       mem_q_2_[2]), .sdata (rtlc0n0[2]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__1_ (.regout (o_image2_2_[1]), .datain (
                       mem_q_2_[1]), .sdata (rtlc0n0[1]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__0_ (.regout (o_image2_2_[0]), .datain (
                       mem_q_2_[0]), .sdata (rtlc0n0[0]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_1__7_ (.regout (o_image2_1_[7]), .datain (
                       nx62359z1), .sdata (mem_q_1_[7]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__6_ (.regout (o_image2_1_[6]), .datain (
                       nx61362z1), .sdata (mem_q_1_[6]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__5_ (.regout (o_image2_1_[5]), .datain (
                       nx60365z1), .sdata (mem_q_1_[5]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__4_ (.regout (o_image2_1_[4]), .datain (
                       nx59368z1), .sdata (mem_q_1_[4]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__3_ (.regout (o_image2_1_[3]), .datain (
                       nx58371z1), .sdata (mem_q_1_[3]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__2_ (.regout (o_image2_1_[2]), .datain (
                       nx57374z1), .sdata (mem_q_1_[2]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__1_ (.regout (o_image2_1_[1]), .datain (
                       nx56377z1), .sdata (mem_q_1_[1]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
    cycloneii_lcell_ff reg_buffer2_1__0_ (.regout (o_image2_1_[0]), .datain (
                       nx55380z1), .sdata (mem_q_1_[0]), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_354)) ;
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
    cycloneii_lcell_ff reg_buffer1_1__7_ (.regout (o_image1_1_[7]), .datain (
                       o_image2_1_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__6_ (.regout (o_image1_1_[6]), .datain (
                       o_image2_1_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__5_ (.regout (o_image1_1_[5]), .datain (
                       o_image2_1_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__4_ (.regout (o_image1_1_[4]), .datain (
                       o_image2_1_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__3_ (.regout (o_image1_1_[3]), .datain (
                       o_image2_1_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__2_ (.regout (o_image1_1_[2]), .datain (
                       o_image2_1_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__1_ (.regout (o_image1_1_[1]), .datain (
                       o_image2_1_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer1_1__0_ (.regout (o_image1_1_[0]), .datain (
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
                       o_image1_1_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__6_ (.regout (o_image0_1_[6]), .datain (
                       o_image1_1_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__5_ (.regout (o_image0_1_[5]), .datain (
                       o_image1_1_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__4_ (.regout (o_image0_1_[4]), .datain (
                       o_image1_1_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__3_ (.regout (o_image0_1_[3]), .datain (
                       o_image1_1_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__2_ (.regout (o_image0_1_[2]), .datain (
                       o_image1_1_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__1_ (.regout (o_image0_1_[1]), .datain (
                       o_image1_1_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       p_first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_buffer0_1__0_ (.regout (o_image0_1_[0]), .datain (
                       o_image1_1_[0]), .sdata (1'b0), .clk (i_clock), .ena (
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
    cycloneii_lcell_comb ix8852z52927 (.combout (nx8852z5), .dataa (column[3]), 
                         .datab (column[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix8852z52927.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix17757z52924 (.combout (nx17757z2), .dataa (
                         mem_wrn_current[2]), .datab (mem_wrn_current[1]), .datac (
                         mem_wrn_current[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17757z52924.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix60567z52928 (.combout (nx60567z6), .dataa (column[3])
                         , .datab (column[2]), .datac (column[1]), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix60567z52928.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix62359z52924 (.combout (nx62359z2), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52924.lut_mask = 16'hd5d5;
    cycloneii_lcell_comb ix63578z52925 (.combout (nx63578z4), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52925.lut_mask = 16'hb3b3;
    cycloneii_lcell_comb ix60567z52927 (.combout (nx60567z5), .dataa (column[6])
                         , .datab (column[5]), .datac (column[4]), .datad (
                         nx60567z2), .cin (1'b0)) ;
                         
                         defparam ix60567z52927.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix60567z52926 (.combout (nx60567z4), .dataa (o_valid), 
                         .datab (column[7]), .datac (nx60567z2), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix60567z52926.lut_mask = 16'heaea;
    cycloneii_lcell_comb ix55380z52926 (.combout (nx55380z4), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (mem_q_1_[0]), .cin (1'b0)) ;
                         
                         defparam ix55380z52926.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix55380z52925 (.combout (nx55380z3), .dataa (
                         mem_wrn_current[1]), .datab (nx60567z2), .datac (
                         mem_q_2_[0]), .datad (rtlc0n0[0]), .cin (1'b0)) ;
                         
                         defparam ix55380z52925.lut_mask = 16'h7250;
    cycloneii_lcell_comb ix60567z52925 (.combout (nx60567z3), .dataa (row[4]), .datab (
                         row[3]), .datac (row[2]), .datad (row[1]), .cin (1'b0)
                         ) ;
                         defparam ix60567z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix8852z52929 (.combout (nx8852z7), .dataa (row[3]), .datab (
                         row[2]), .datac (row[1]), .datad (row[0]), .cin (1'b0)
                         ) ;
                         defparam ix8852z52929.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix8852z52928 (.combout (nx8852z6), .dataa (row[7]), .datab (
                         row[6]), .datac (row[5]), .datad (row[4]), .cin (1'b0)
                         ) ;
                         defparam ix8852z52928.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix8852z52926 (.combout (nx8852z4), .dataa (column[7]), 
                         .datab (column[6]), .datac (column[5]), .datad (
                         column[4]), .cin (1'b0)) ;
                         
                         defparam ix8852z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix55380z52924 (.combout (nx55380z2), .dataa (
                         mem_wrn_current[0]), .datab (nx60567z2), .datac (1'b1)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55380z52924.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix39109z52924 (.combout (nx39109z2), .dataa (i_reset), 
                         .datab (not_rtlc3_X_0_n252), .datac (nx8852z2), .datad (
                         nx39109z3), .cin (1'b0)) ;
                         
                         defparam ix39109z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix62359z52923 (.combout (nx62359z1), .dataa (
                         mem_q_2_[7]), .datab (nx63578z2), .datac (nx62359z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix61362z52923 (.combout (nx61362z1), .dataa (
                         mem_q_2_[6]), .datab (nx64575z2), .datac (nx62359z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61362z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix60365z52923 (.combout (nx60365z1), .dataa (
                         mem_q_2_[5]), .datab (nx36z2), .datac (nx62359z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix60365z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix59368z52923 (.combout (nx59368z1), .dataa (
                         mem_q_2_[4]), .datab (nx1033z2), .datac (nx62359z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix59368z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix58371z52923 (.combout (nx58371z1), .dataa (
                         mem_q_2_[3]), .datab (nx2030z2), .datac (nx62359z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix58371z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix57374z52923 (.combout (nx57374z1), .dataa (
                         mem_q_2_[2]), .datab (nx3027z2), .datac (nx62359z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix57374z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix56377z52923 (.combout (nx56377z1), .dataa (
                         buffer2_4n2ss1_1_), .datab (mem_q_2_[1]), .datac (
                         nx62359z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix56377z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix55380z52923 (.combout (nx55380z1), .dataa (
                         mem_q_2_[0]), .datab (nx55380z2), .datac (nx55380z3), .datad (
                         nx55380z4), .cin (1'b0)) ;
                         
                         defparam ix55380z52923.lut_mask = 16'hfff2;
    cycloneii_lcell_comb ix63578z52923 (.combout (nx63578z1), .dataa (
                         mem_q_2_[7]), .datab (nx63578z2), .datac (nx63578z4), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix64575z52923 (.combout (nx64575z1), .dataa (
                         mem_q_2_[6]), .datab (nx64575z2), .datac (nx63578z4), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix36z52923 (.combout (nx36z1), .dataa (mem_q_2_[5]), .datab (
                         nx36z2), .datac (nx63578z4), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix36z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix1033z52923 (.combout (nx1033z1), .dataa (mem_q_2_[4])
                         , .datab (nx1033z2), .datac (nx63578z4), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix1033z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix2030z52923 (.combout (nx2030z1), .dataa (mem_q_2_[3])
                         , .datab (nx2030z2), .datac (nx63578z4), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix2030z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix3027z52923 (.combout (nx3027z1), .dataa (mem_q_2_[2])
                         , .datab (nx3027z2), .datac (nx63578z4), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix3027z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix4024z52923 (.combout (nx4024z1), .dataa (
                         buffer2_4n2ss1_1_), .datab (mem_q_2_[1]), .datac (
                         nx63578z4), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix5021z52923 (.combout (nx5021z1), .dataa (
                         buffer2_4n2ss1_0_), .datab (mem_q_2_[0]), .datac (
                         nx63578z4), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix47386z52923 (.combout (nx47386z1), .dataa (i_valid), 
                         .datab (i_reset), .datac (nx8852z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47386z52923.lut_mask = 16'hfdfd;
    cycloneii_lcell_comb ix62359z52925 (.combout (b_1__dup_354), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52925.lut_mask = 16'h1515;
    cycloneii_lcell_comb ix63578z52926 (.combout (b_1_), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52926.lut_mask = 16'h1313;
    cycloneii_lcell_comb ix60567z52923 (.combout (nx60567z1), .dataa (nx60567z2)
                         , .datab (nx60567z4), .datac (nx60567z5), .datad (
                         nx60567z6), .cin (1'b0)) ;
                         
                         defparam ix60567z52923.lut_mask = 16'hfefc;
    cycloneii_lcell_comb ix8852z52925 (.combout (nx8852z3), .dataa (column[1]), 
                         .datab (column[0]), .datac (nx8852z4), .datad (nx8852z5
                         ), .cin (1'b0)) ;
                         
                         defparam ix8852z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix40106z52923 (.combout (nx40106z1), .dataa (i_reset), 
                         .datab (nx8852z2), .datac (nx39109z3), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40106z52923.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix39109z52925 (.combout (nx39109z3), .dataa (i_valid), 
                         .datab (mem_wrn_current[2]), .datac (mem_wrn_current[1]
                         ), .datad (mem_wrn_current[0]), .cin (1'b0)) ;
                         
                         defparam ix39109z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix57224z52923 (.combout (nx57224z1), .dataa (
                         mem_wrn_current[2]), .datab (nx60567z2), .datac (1'b1)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57224z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix33254z52923 (.combout (nx33254z1), .dataa (i_valid), 
                         .datab (busySignal), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33254z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix8852z52924 (.combout (nx8852z2), .dataa (
                         p_first_bubble), .datab (nx8852z3), .datac (nx8852z6), 
                         .datad (nx8852z7), .cin (1'b0)) ;
                         
                         defparam ix8852z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix60567z52924 (.combout (nx60567z2), .dataa (row[7]), .datab (
                         row[6]), .datac (row[5]), .datad (nx60567z3), .cin (
                         1'b0)) ;
                         defparam ix60567z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix17757z52923 (.combout (nx17757z1), .dataa (i_valid), 
                         .datab (i_reset), .datac (nx8852z2), .datad (nx17757z2)
                         , .cin (1'b0)) ;
                         
                         defparam ix17757z52923.lut_mask = 16'hfffd;
    cycloneii_lcell_comb ix15763z52924 (.combout (nx15763z2), .dataa (i_reset), 
                         .datab (nx8852z2), .datac (nx39109z3), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix15763z52924.lut_mask = 16'h1010;
    cycloneii_lcell_comb ix47386z52924 (.combout (nx47386z2), .dataa (i_reset), 
                         .datab (p_first_bubble), .datac (nx8852z3), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z52924.lut_mask = 16'heaea;
    cycloneii_lcell_comb ix8852z52930 (.combout (not_rtlc3_X_0_n252), .dataa (
                         i_valid), .datab (p_first_bubble), .datac (nx8852z3), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8852z52930.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix8852z52923 (.combout (nx8852z1), .dataa (i_reset), .datab (
                         nx8852z2), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix8852z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix36864z52930 (.combout (rtlc0n0[0]), .dataa (i_valid)
                         , .datab (i_pixel[0]), .datac (rtlc0n0[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52930.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52929 (.combout (rtlc0n0[1]), .dataa (i_valid)
                         , .datab (i_pixel[1]), .datac (rtlc0n0[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52929.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52928 (.combout (rtlc0n0[2]), .dataa (i_valid)
                         , .datab (i_pixel[2]), .datac (rtlc0n0[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52928.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52927 (.combout (rtlc0n0[3]), .dataa (i_valid)
                         , .datab (i_pixel[3]), .datac (rtlc0n0[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52927.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52926 (.combout (rtlc0n0[4]), .dataa (i_valid)
                         , .datab (i_pixel[4]), .datac (rtlc0n0[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52926.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52925 (.combout (rtlc0n0[5]), .dataa (i_valid)
                         , .datab (i_pixel[5]), .datac (rtlc0n0[5]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52925.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52924 (.combout (rtlc0n0[6]), .dataa (i_valid)
                         , .datab (i_pixel[6]), .datac (rtlc0n0[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36864z52923 (.combout (rtlc0n0[7]), .dataa (i_valid)
                         , .datab (i_pixel[7]), .datac (rtlc0n0[7]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix36864z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix15976z52923 (.combout (o_mode[0]), .dataa (i_valid), 
                         .datab (i_reset), .datac (busySignal), .datad (
                         busySignalDelayed), .cin (1'b0)) ;
                         
                         defparam ix15976z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix1364_repl0 (.combout (nx63578z3), .dataa (i_valid), .datab (
                         i_pixel[7]), .datac (rtlc0n0[7]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1364_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix63578z52924 (.combout (nx63578z2), .dataa (nx60567z2)
                         , .datab (mem_q_1_[7]), .datac (nx63578z3), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1362_repl0 (.combout (nx64575z3), .dataa (i_valid), .datab (
                         i_pixel[6]), .datac (rtlc0n0[6]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1362_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix64575z52924 (.combout (nx64575z2), .dataa (nx60567z2)
                         , .datab (mem_q_1_[6]), .datac (nx64575z3), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1360_repl0 (.combout (nx36z3), .dataa (i_valid), .datab (
                         i_pixel[5]), .datac (rtlc0n0[5]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1360_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix36z52924 (.combout (nx36z2), .dataa (nx60567z2), .datab (
                         mem_q_1_[5]), .datac (nx36z3), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix36z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1358_repl0 (.combout (nx1033z3), .dataa (i_valid), .datab (
                         i_pixel[4]), .datac (rtlc0n0[4]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1358_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1033z52924 (.combout (nx1033z2), .dataa (nx60567z2), 
                         .datab (mem_q_1_[4]), .datac (nx1033z3), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix1033z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1356_repl0 (.combout (nx2030z3), .dataa (i_valid), .datab (
                         i_pixel[3]), .datac (rtlc0n0[3]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1356_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix2030z52924 (.combout (nx2030z2), .dataa (nx60567z2), 
                         .datab (mem_q_1_[3]), .datac (nx2030z3), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix2030z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1354_repl0 (.combout (nx3027z3), .dataa (i_valid), .datab (
                         i_pixel[2]), .datac (rtlc0n0[2]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1354_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix3027z52924 (.combout (nx3027z2), .dataa (nx60567z2), 
                         .datab (mem_q_1_[2]), .datac (nx3027z3), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix3027z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1352_repl0 (.combout (nx4024z2), .dataa (i_valid), .datab (
                         i_pixel[1]), .datac (rtlc0n0[1]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1352_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix4024z52924 (.combout (buffer2_4n2ss1_1_), .dataa (
                         nx60567z2), .datab (mem_q_1_[1]), .datac (nx4024z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z52924.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix1350_repl0 (.combout (nx5021z2), .dataa (i_valid), .datab (
                         i_pixel[0]), .datac (rtlc0n0[0]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1350_repl0.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix5021z52924 (.combout (buffer2_4n2ss1_0_), .dataa (
                         nx60567z2), .datab (mem_q_1_[0]), .datac (nx5021z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z52924.lut_mask = 16'hd8d8;
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

    wire ena1_rename1058;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1058), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1058 = 1 ;
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

    wire ena1_rename1028;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1028), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1028 = 1 ;
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

    wire ena1_rename998;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename998), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename998 = 1 ;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

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

    wire nx57253z3, nx51271z1, nx58250z14, nx52268z1, nx58250z12, nx53265z1, 
         nx58250z10, nx54262z1, nx58250z8, nx55259z1, nx58250z6, nx56256z1, 
         nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
         nx_modgen_counter_8_1_vcc_net;
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
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (clk_en), .datab (
                         sclear), .datac (cnt_en), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'ha8a8;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_i_reset, p_rtlc6n55 ) ;

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
    input p_i_reset ;
    input p_rtlc6n55 ;

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
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (cnt_en), .datab (
                         p_rtlc6n55), .datac (p_i_reset), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57253z52923.lut_mask = 16'hfefe;
endmodule

