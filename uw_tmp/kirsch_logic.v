//
// Verilog description for cell kirsch, 
// Sun Jul 20 17:24:55 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, o_column, o_image0_0_, o_image0_1_, o_image0_2_, 
                o_image1_0_, o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, 
                o_image2_2_, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    output [7:0]o_column ;
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
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;

    wire o_valid_dup0;
    wire [1:0]o_mode_dup0;
    wire [7:0]o_row_dup0;
    wire [7:0]o_column_dup0;
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
    wire debug_num_5_dup0_1_;
    wire [17:17]debug_num_5_dup0;
    wire [6925:0] xmplr_dummy ;




    memory u_memory (.i_valid (i_valid_int), .i_reset (i_reset_int), .i_pixel ({
           i_pixel_int[7],i_pixel_int[6],i_pixel_int[5],i_pixel_int[4],
           i_pixel_int[3],i_pixel_int[2],i_pixel_int[1],i_pixel_int[0]}), .i_clock (
           i_clock_int), .o_valid (o_valid_dup0), .o_mode ({o_mode_dup0[1],
           o_mode_dup0[0]}), .o_column ({o_column_dup0[7],o_column_dup0[6],
           o_column_dup0[5],o_column_dup0[4],o_column_dup0[3],o_column_dup0[2],
           o_column_dup0[1],o_column_dup0[0]}), .o_row ({o_row_dup0[7],
           o_row_dup0[6],o_row_dup0[5],o_row_dup0[4],o_row_dup0[3],o_row_dup0[2]
           ,o_row_dup0[1],o_row_dup0[0]}), .o_image0_0_ ({o_image0_dup0[7],
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
           o_image2_2__dup0_1_,o_image2_2__dup0_0_})) ;
    assign debug_num_5_dup0_1_ = 1 ;
    assign debug_num_5_dup0[17] = 0 ;
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
    stratixii_io o_dir_triBus1_2_ (.padio (o_dir[2]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_triBus1_2_.operation_mode = "output";
                 
                 defparam o_dir_triBus1_2_.output_register_mode = "none";
                 
                 defparam o_dir_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_triBus1_2_.oe_register_mode = "none";
                 
                 defparam o_dir_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_triBus1_2_.input_register_mode = "none";
    stratixii_io o_dir_triBus1_1_ (.padio (o_dir[1]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_triBus1_1_.operation_mode = "output";
                 
                 defparam o_dir_triBus1_1_.output_register_mode = "none";
                 
                 defparam o_dir_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_triBus1_1_.oe_register_mode = "none";
                 
                 defparam o_dir_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_triBus1_1_.input_register_mode = "none";
    stratixii_io o_dir_triBus1_0_ (.padio (o_dir[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_triBus1_0_.operation_mode = "output";
                 
                 defparam o_dir_triBus1_0_.output_register_mode = "none";
                 
                 defparam o_dir_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_triBus1_0_.oe_register_mode = "none";
                 
                 defparam o_dir_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_triBus1_0_.input_register_mode = "none";
    stratixii_io o_column_obuf_7_ (.padio (o_column[7]), .datain (
                 o_column_dup0[7]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_7_.operation_mode = "output";
                 
                 defparam o_column_obuf_7_.output_register_mode = "none";
                 
                 defparam o_column_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_7_.input_register_mode = "none";
    stratixii_io o_column_obuf_6_ (.padio (o_column[6]), .datain (
                 o_column_dup0[6]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_6_.operation_mode = "output";
                 
                 defparam o_column_obuf_6_.output_register_mode = "none";
                 
                 defparam o_column_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_6_.input_register_mode = "none";
    stratixii_io o_column_obuf_5_ (.padio (o_column[5]), .datain (
                 o_column_dup0[5]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_5_.operation_mode = "output";
                 
                 defparam o_column_obuf_5_.output_register_mode = "none";
                 
                 defparam o_column_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_5_.input_register_mode = "none";
    stratixii_io o_column_obuf_4_ (.padio (o_column[4]), .datain (
                 o_column_dup0[4]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_4_.operation_mode = "output";
                 
                 defparam o_column_obuf_4_.output_register_mode = "none";
                 
                 defparam o_column_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_4_.input_register_mode = "none";
    stratixii_io o_column_obuf_3_ (.padio (o_column[3]), .datain (
                 o_column_dup0[3]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_3_.operation_mode = "output";
                 
                 defparam o_column_obuf_3_.output_register_mode = "none";
                 
                 defparam o_column_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_3_.input_register_mode = "none";
    stratixii_io o_column_obuf_2_ (.padio (o_column[2]), .datain (
                 o_column_dup0[2]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_2_.operation_mode = "output";
                 
                 defparam o_column_obuf_2_.output_register_mode = "none";
                 
                 defparam o_column_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_2_.input_register_mode = "none";
    stratixii_io o_column_obuf_1_ (.padio (o_column[1]), .datain (
                 o_column_dup0[1]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_1_.operation_mode = "output";
                 
                 defparam o_column_obuf_1_.output_register_mode = "none";
                 
                 defparam o_column_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_1_.input_register_mode = "none";
    stratixii_io o_column_obuf_0_ (.padio (o_column[0]), .datain (
                 o_column_dup0[0]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_column_obuf_0_.operation_mode = "output";
                 
                 defparam o_column_obuf_0_.output_register_mode = "none";
                 
                 defparam o_column_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_column_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_column_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_column_obuf_0_.input_register_mode = "none";
    stratixii_io ix45767z7237 (.padio (o_edge), .datain (debug_num_5_dup0[17]), 
                 .ddiodatain (1'b0), .oe (debug_num_5_dup0[17]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45767z7237.operation_mode = "output";
                 
                 defparam ix45767z7237.output_register_mode = "none";
                 
                 defparam ix45767z7237.tie_off_output_clock_enable = "false";
                 
                 defparam ix45767z7237.oe_register_mode = "none";
                 
                 defparam ix45767z7237.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45767z7237.input_register_mode = "none";
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
    stratixii_io debug_num_5_obuf_3_ (.padio (debug_num_5[3]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_5_obuf_2_ (.padio (debug_num_5[2]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_5_obuf_1_ (.padio (debug_num_5[1]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_5_obuf_0_ (.padio (debug_num_5[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_4_obuf_3_ (.padio (debug_num_4[3]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_4_obuf_2_ (.padio (debug_num_4[2]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_4_obuf_1_ (.padio (debug_num_4[1]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_4_obuf_0_ (.padio (debug_num_4[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_3_obuf_3_ (.padio (debug_num_3[3]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_3_obuf_2_ (.padio (debug_num_3[2]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_3_obuf_1_ (.padio (debug_num_3[1]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_3_obuf_0_ (.padio (debug_num_3[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_3_ (.padio (debug_num_2[3]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_2_ (.padio (debug_num_2[2]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_1_ (.padio (debug_num_2[1]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_2_obuf_0_ (.padio (debug_num_2[0]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_3_ (.padio (debug_num_1[3]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_2_ (.padio (debug_num_1[2]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_1_ (.padio (debug_num_1[1]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_1_obuf_0_ (.padio (debug_num_1[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_3_ (.padio (debug_num_0[3]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_2_ (.padio (debug_num_0[2]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_1_ (.padio (debug_num_0[1]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.input_register_mode = "none";
    stratixii_io debug_num_0_obuf_0_ (.padio (debug_num_0[0]), .datain (
                 debug_num_5_dup0_1_), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_17_ (.padio (debug_led_red[17]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_17_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    stratixii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    stratixii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
endmodule


module memory ( i_valid, i_reset, i_pixel, i_clock, o_valid, o_mode, o_column, 
                o_row, o_image0_0_, o_image0_1_, o_image0_2_, o_image1_0_, 
                o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, o_image2_2_
                 ) ;

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

    wire [2:0]mem_wrn;
    wire [2:0]mem_wrn_current;
    wire first_bubble, busySignal, busySignalDelayed;
    wire [7:0]column;
    wire [7:0]row;
    wire [7:0]rtlc0n0;
    wire [7:0]mem_q_0_;
    wire [7:0]mem_q_1_;
    wire [7:0]mem_q_2_;
    wire mem_wrn_current_3n4ss1_2_, mem_wrn_current_3n4ss1_1_, nx47386z4, 
         nx47386z1;
    wire [7:0]buffer2_4n2ss1;
    wire nx60567z3, nx57224z1, nx17757z1, nx16760z1, nx15763z1, nx33254z1, 
         nx60567z1, nx47386z2, nx39109z2, nx62359z1, nx61362z1, nx60365z1, 
         nx59368z1, nx58371z1, nx57374z1, nx56377z1, nx55380z1, nx63578z1, 
         nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, nx4024z1, nx5021z1, 
         nx39109z1, nx47386z5, nx60567z2, nx60567z4, nx47386z3, 
         first_bubble_repl, nx47386z6, nx8852z1;
    wire [877:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_row (.clock (i_clock), .q ({row[7],row[6],
                       row[5],row[4],row[3],row[2],row[1],row[0]}), .sclear (
                       nx47386z4), .p_i_valid (i_valid), .p_rtlc3n271 (nx47386z2
                       ), .p_rtlc3n121_repl (nx8852z1)) ;
    modgen_counter_8_1 modgen_counter_column (.clock (i_clock), .q ({column[7],
                       column[6],column[5],column[4],column[3],column[2],
                       column[1],column[0]}), .sclear (nx47386z1), .cnt_en (
                       first_bubble), .p_i_valid (i_valid), .p_rtlc3n121 (
                       nx47386z4), .p_rtlc3n272_repl (nx47386z6)) ;
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
    latch lat_ix36864z13 (.q (rtlc0n0[7]), .d (i_pixel[7]), .ena (i_valid)) ;
    latch lat_ix36864z14 (.q (rtlc0n0[6]), .d (i_pixel[6]), .ena (i_valid)) ;
    latch lat_ix36864z15 (.q (rtlc0n0[5]), .d (i_pixel[5]), .ena (i_valid)) ;
    latch lat_ix36864z16 (.q (rtlc0n0[4]), .d (i_pixel[4]), .ena (i_valid)) ;
    latch lat_ix36864z17 (.q (rtlc0n0[3]), .d (i_pixel[3]), .ena (i_valid)) ;
    latch lat_ix36864z18 (.q (rtlc0n0[2]), .d (i_pixel[2]), .ena (i_valid)) ;
    latch lat_ix36864z19 (.q (rtlc0n0[1]), .d (i_pixel[1]), .ena (i_valid)) ;
    latch lat_ix36864z20 (.q (rtlc0n0[0]), .d (i_pixel[0]), .ena (i_valid)) ;
    assign o_mode[1] = ~i_reset ;
    stratixii_lcell_ff reg_o_valid (.regout (o_valid), .datain (nx60567z1), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_7_ (.regout (o_row[7]), .datain (row[7]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_6_ (.regout (o_row[6]), .datain (row[6]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_5_ (.regout (o_row[5]), .datain (row[5]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_4_ (.regout (o_row[4]), .datain (row[4]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_3_ (.regout (o_row[3]), .datain (row[3]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_2_ (.regout (o_row[2]), .datain (row[2]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_1_ (.regout (o_row[1]), .datain (row[1]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_row_0_ (.regout (o_row[0]), .datain (row[0]), .adatasdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_7_ (.regout (o_column[7]), .datain (
                       column[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_6_ (.regout (o_column[6]), .datain (
                       column[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_5_ (.regout (o_column[5]), .datain (
                       column[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_4_ (.regout (o_column[4]), .datain (
                       column[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_3_ (.regout (o_column[3]), .datain (
                       column[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_2_ (.regout (o_column[2]), .datain (
                       column[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_1_ (.regout (o_column[1]), .datain (
                       column[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_o_column_0_ (.regout (o_column[0]), .datain (
                       column[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_2_ (.regout (mem_wrn_current[2]), .datain (
                       mem_wrn_current_3n4ss1_2_), .adatasdata (1'b0), .clk (
                       i_clock), .ena (nx39109z2), .aclr (1'b0), .sclr (nx8852z1
                       ), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_1_ (.regout (mem_wrn_current[1]), .datain (
                       mem_wrn_current_3n4ss1_1_), .adatasdata (1'b0), .clk (
                       i_clock), .ena (nx39109z2), .aclr (1'b0), .sclr (nx8852z1
                       ), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_0_ (.regout (mem_wrn_current[0]), .datain (
                       nx39109z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       nx39109z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_2_ (.regout (mem_wrn[2]), .datain (nx17757z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_1_ (.regout (mem_wrn[1]), .datain (nx16760z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_0_ (.regout (mem_wrn[0]), .datain (nx15763z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_first_bubble_repl (.regout (first_bubble_repl), .datain (
                       i_valid), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_first_bubble (.regout (first_bubble), .datain (
                       i_valid), .adatasdata (1'b0), .clk (i_clock), .ena (1'b1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_busySignalDelayed (.regout (busySignalDelayed), .datain (
                       busySignal), .adatasdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_busySignal (.regout (busySignal), .datain (nx33254z1)
                       , .adatasdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_buffer2_2__7_ (.regout (o_image2_2_[7]), .datain (
                       mem_q_2_[7]), .adatasdata (rtlc0n0[7]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__6_ (.regout (o_image2_2_[6]), .datain (
                       mem_q_2_[6]), .adatasdata (rtlc0n0[6]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__5_ (.regout (o_image2_2_[5]), .datain (
                       mem_q_2_[5]), .adatasdata (rtlc0n0[5]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__4_ (.regout (o_image2_2_[4]), .datain (
                       mem_q_2_[4]), .adatasdata (rtlc0n0[4]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__3_ (.regout (o_image2_2_[3]), .datain (
                       mem_q_2_[3]), .adatasdata (rtlc0n0[3]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__2_ (.regout (o_image2_2_[2]), .datain (
                       mem_q_2_[2]), .adatasdata (rtlc0n0[2]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__1_ (.regout (o_image2_2_[1]), .datain (
                       mem_q_2_[1]), .adatasdata (rtlc0n0[1]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_2__0_ (.regout (o_image2_2_[0]), .datain (
                       mem_q_2_[0]), .adatasdata (rtlc0n0[0]), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    stratixii_lcell_ff reg_buffer2_1__7_ (.regout (o_image2_1_[7]), .datain (
                       nx62359z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__6_ (.regout (o_image2_1_[6]), .datain (
                       nx61362z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__5_ (.regout (o_image2_1_[5]), .datain (
                       nx60365z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__4_ (.regout (o_image2_1_[4]), .datain (
                       nx59368z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__3_ (.regout (o_image2_1_[3]), .datain (
                       nx58371z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__2_ (.regout (o_image2_1_[2]), .datain (
                       nx57374z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__1_ (.regout (o_image2_1_[1]), .datain (
                       nx56377z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__0_ (.regout (o_image2_1_[0]), .datain (
                       nx55380z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__7_ (.regout (o_image2_0_[7]), .datain (
                       nx63578z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__6_ (.regout (o_image2_0_[6]), .datain (
                       nx64575z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__5_ (.regout (o_image2_0_[5]), .datain (
                       nx36z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__4_ (.regout (o_image2_0_[4]), .datain (
                       nx1033z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__3_ (.regout (o_image2_0_[3]), .datain (
                       nx2030z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__2_ (.regout (o_image2_0_[2]), .datain (
                       nx3027z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__1_ (.regout (o_image2_0_[1]), .datain (
                       nx4024z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__0_ (.regout (o_image2_0_[0]), .datain (
                       nx5021z1), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__7_ (.regout (o_image1_2_[7]), .datain (
                       o_image2_2_[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__6_ (.regout (o_image1_2_[6]), .datain (
                       o_image2_2_[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__5_ (.regout (o_image1_2_[5]), .datain (
                       o_image2_2_[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__4_ (.regout (o_image1_2_[4]), .datain (
                       o_image2_2_[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__3_ (.regout (o_image1_2_[3]), .datain (
                       o_image2_2_[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__2_ (.regout (o_image1_2_[2]), .datain (
                       o_image2_2_[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__1_ (.regout (o_image1_2_[1]), .datain (
                       o_image2_2_[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__0_ (.regout (o_image1_2_[0]), .datain (
                       o_image2_2_[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__7_ (.regout (o_image1_1_[7]), .datain (
                       o_image2_1_[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__6_ (.regout (o_image1_1_[6]), .datain (
                       o_image2_1_[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__5_ (.regout (o_image1_1_[5]), .datain (
                       o_image2_1_[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__4_ (.regout (o_image1_1_[4]), .datain (
                       o_image2_1_[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__3_ (.regout (o_image1_1_[3]), .datain (
                       o_image2_1_[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__2_ (.regout (o_image1_1_[2]), .datain (
                       o_image2_1_[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__1_ (.regout (o_image1_1_[1]), .datain (
                       o_image2_1_[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__0_ (.regout (o_image1_1_[0]), .datain (
                       o_image2_1_[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__7_ (.regout (o_image1_0_[7]), .datain (
                       o_image2_0_[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__6_ (.regout (o_image1_0_[6]), .datain (
                       o_image2_0_[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__5_ (.regout (o_image1_0_[5]), .datain (
                       o_image2_0_[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__4_ (.regout (o_image1_0_[4]), .datain (
                       o_image2_0_[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__3_ (.regout (o_image1_0_[3]), .datain (
                       o_image2_0_[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__2_ (.regout (o_image1_0_[2]), .datain (
                       o_image2_0_[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__1_ (.regout (o_image1_0_[1]), .datain (
                       o_image2_0_[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__0_ (.regout (o_image1_0_[0]), .datain (
                       o_image2_0_[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__7_ (.regout (o_image0_2_[7]), .datain (
                       o_image1_2_[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__6_ (.regout (o_image0_2_[6]), .datain (
                       o_image1_2_[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__5_ (.regout (o_image0_2_[5]), .datain (
                       o_image1_2_[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__4_ (.regout (o_image0_2_[4]), .datain (
                       o_image1_2_[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__3_ (.regout (o_image0_2_[3]), .datain (
                       o_image1_2_[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__2_ (.regout (o_image0_2_[2]), .datain (
                       o_image1_2_[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__1_ (.regout (o_image0_2_[1]), .datain (
                       o_image1_2_[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__0_ (.regout (o_image0_2_[0]), .datain (
                       o_image1_2_[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__7_ (.regout (o_image0_1_[7]), .datain (
                       o_image1_1_[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__6_ (.regout (o_image0_1_[6]), .datain (
                       o_image1_1_[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__5_ (.regout (o_image0_1_[5]), .datain (
                       o_image1_1_[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__4_ (.regout (o_image0_1_[4]), .datain (
                       o_image1_1_[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__3_ (.regout (o_image0_1_[3]), .datain (
                       o_image1_1_[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__2_ (.regout (o_image0_1_[2]), .datain (
                       o_image1_1_[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__1_ (.regout (o_image0_1_[1]), .datain (
                       o_image1_1_[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__0_ (.regout (o_image0_1_[0]), .datain (
                       o_image1_1_[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__7_ (.regout (o_image0_0_[7]), .datain (
                       o_image1_0_[7]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__6_ (.regout (o_image0_0_[6]), .datain (
                       o_image1_0_[6]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__5_ (.regout (o_image0_0_[5]), .datain (
                       o_image1_0_[5]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__4_ (.regout (o_image0_0_[4]), .datain (
                       o_image1_0_[4]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__3_ (.regout (o_image0_0_[3]), .datain (
                       o_image1_0_[3]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__2_ (.regout (o_image0_0_[2]), .datain (
                       o_image1_0_[2]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__1_ (.regout (o_image0_0_[1]), .datain (
                       o_image1_0_[1]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__0_ (.regout (o_image0_0_[0]), .datain (
                       o_image1_0_[0]), .adatasdata (1'b0), .clk (i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_comb ix47386z37203 (.combout (nx47386z3), .dataa (1'b1), .datab (
                         1'b1), .datac (column[4]), .datad (column[5]), .datae (
                         column[6]), .dataf (column[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix47386z37203.lut_mask = 64'hf000000000000000;
    stratixii_lcell_comb ix60567z37204 (.combout (nx60567z4), .dataa (1'b1), .datab (
                         1'b1), .datac (row[3]), .datad (row[4]), .datae (row[5]
                         ), .dataf (row[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z37204.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix60567z37202 (.combout (nx60567z2), .dataa (1'b1), .datab (
                         column[1]), .datac (column[2]), .datad (column[3]), .datae (
                         column[4]), .dataf (column[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix60567z37202.lut_mask = 64'hfffffffffffffffc;
    stratixii_lcell_comb ix47386z37205 (.combout (nx47386z5), .dataa (row[2]), .datab (
                         row[3]), .datac (row[4]), .datad (row[5]), .datae (
                         row[6]), .dataf (row[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z37205.lut_mask = 64'h8000000000000000;
    stratixii_lcell_comb ix39109z37201 (.combout (nx39109z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx47386z4), .datae (
                         mem_wrn_current[2]), .dataf (i_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix39109z37201.lut_mask = 64'h00ff00ff00ff0000;
    stratixii_lcell_comb ix5021z37201 (.combout (nx5021z1), .dataa (mem_q_2_[0])
                         , .datab (mem_q_0_[0]), .datac (nx60567z3), .datad (
                         buffer2_4n2ss1[0]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix4024z37201 (.combout (nx4024z1), .dataa (mem_q_2_[1])
                         , .datab (mem_q_0_[1]), .datac (nx60567z3), .datad (
                         buffer2_4n2ss1[1]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix3027z37201 (.combout (nx3027z1), .dataa (mem_q_2_[2])
                         , .datab (mem_q_0_[2]), .datac (nx60567z3), .datad (
                         buffer2_4n2ss1[2]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix3027z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix2030z37201 (.combout (nx2030z1), .dataa (mem_q_2_[3])
                         , .datab (mem_q_0_[3]), .datac (nx60567z3), .datad (
                         buffer2_4n2ss1[3]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2030z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix1033z37201 (.combout (nx1033z1), .dataa (mem_q_2_[4])
                         , .datab (mem_q_0_[4]), .datac (nx60567z3), .datad (
                         buffer2_4n2ss1[4]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1033z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix36z37201 (.combout (nx36z1), .dataa (mem_q_2_[5]), .datab (
                         mem_q_0_[5]), .datac (nx60567z3), .datad (
                         buffer2_4n2ss1[5]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix64575z37201 (.combout (nx64575z1), .dataa (
                         mem_q_2_[6]), .datab (mem_q_0_[6]), .datac (nx60567z3)
                         , .datad (buffer2_4n2ss1[6]), .datae (
                         mem_wrn_current[0]), .dataf (mem_wrn_current[1]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix63578z37201 (.combout (nx63578z1), .dataa (
                         mem_q_2_[7]), .datab (mem_q_0_[7]), .datac (nx60567z3)
                         , .datad (buffer2_4n2ss1[7]), .datae (
                         mem_wrn_current[0]), .dataf (mem_wrn_current[1]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z37201.lut_mask = 64'hafa0acacff00cccc;
    stratixii_lcell_comb ix55380z37201 (.combout (nx55380z1), .dataa (
                         mem_q_2_[0]), .datab (mem_q_1_[0]), .datac (nx60567z3)
                         , .datad (rtlc0n0[0]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55380z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix56377z37201 (.combout (nx56377z1), .dataa (
                         mem_q_2_[1]), .datab (mem_q_1_[1]), .datac (nx60567z3)
                         , .datad (rtlc0n0[1]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix56377z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix57374z37201 (.combout (nx57374z1), .dataa (
                         mem_q_2_[2]), .datab (mem_q_1_[2]), .datac (nx60567z3)
                         , .datad (rtlc0n0[2]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57374z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix58371z37201 (.combout (nx58371z1), .dataa (
                         mem_q_2_[3]), .datab (mem_q_1_[3]), .datac (nx60567z3)
                         , .datad (rtlc0n0[3]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58371z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix59368z37201 (.combout (nx59368z1), .dataa (
                         mem_q_2_[4]), .datab (mem_q_1_[4]), .datac (nx60567z3)
                         , .datad (rtlc0n0[4]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix59368z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix60365z37201 (.combout (nx60365z1), .dataa (
                         mem_q_2_[5]), .datab (mem_q_1_[5]), .datac (nx60567z3)
                         , .datad (rtlc0n0[5]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60365z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix61362z37201 (.combout (nx61362z1), .dataa (
                         mem_q_2_[6]), .datab (mem_q_1_[6]), .datac (nx60567z3)
                         , .datad (rtlc0n0[6]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61362z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix62359z37201 (.combout (nx62359z1), .dataa (
                         mem_q_2_[7]), .datab (mem_q_1_[7]), .datac (nx60567z3)
                         , .datad (rtlc0n0[7]), .datae (mem_wrn_current[0]), .dataf (
                         mem_wrn_current[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z37201.lut_mask = 64'hafa0cfc0acaccccc;
    stratixii_lcell_comb ix39109z37202 (.combout (nx39109z2), .dataa (nx47386z2)
                         , .datab (nx47386z4), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (mem_wrn_current[2]), .dataf (
                         i_valid), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39109z37202.lut_mask = 64'hcccccccfeeeeeeee;
    stratixii_lcell_comb ix47386z37202 (.combout (nx47386z2), .dataa (nx47386z3)
                         , .datab (column[0]), .datac (column[1]), .datad (
                         column[2]), .datae (column[3]), .dataf (first_bubble), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z37202.lut_mask = 64'h8000000000000000;
    stratixii_lcell_comb ix60567z37201 (.combout (nx60567z1), .dataa (nx60567z2)
                         , .datab (nx60567z3), .datac (column[6]), .datad (
                         column[7]), .datae (first_bubble), .dataf (o_valid), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z37201.lut_mask = 64'hffff0000ccc80000;
    stratixii_lcell_comb ix33254z37201 (.combout (nx33254z1), .dataa (nx47386z5)
                         , .datab (nx47386z2), .datac (row[0]), .datad (row[1])
                         , .datae (busySignal), .dataf (i_valid), .datag (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix33254z37201.lut_mask = 64'h7fff7fff7fff0000;
    stratixii_lcell_comb ix15763z37201 (.combout (nx15763z1), .dataa (1'b1), .datab (
                         nx47386z4), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (mem_wrn_current[2]), .dataf (
                         i_valid), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15763z37201.lut_mask = 64'h3030303300000000;
    stratixii_lcell_comb ix16760z37201 (.combout (nx16760z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx47386z4), .datae (
                         mem_wrn_current[1]), .dataf (i_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix16760z37201.lut_mask = 64'h00ff000000000000;
    stratixii_lcell_comb ix17757z37201 (.combout (nx17757z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx47386z4), .datae (
                         mem_wrn_current[2]), .dataf (i_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix17757z37201.lut_mask = 64'h00ff000000000000;
    stratixii_lcell_comb ix57224z37201 (.combout (nx57224z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx60567z3)
                         , .dataf (mem_wrn_current[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix57224z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix60567z37203 (.combout (nx60567z3), .dataa (1'b1), .datab (
                         1'b1), .datac (nx60567z4), .datad (row[1]), .datae (
                         row[2]), .dataf (row[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z37203.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix5021z37202 (.combout (buffer2_4n2ss1[0]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[0]), .datae (nx60567z3), .dataf (rtlc0n0[0]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix4024z37202 (.combout (buffer2_4n2ss1[1]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[1]), .datae (nx60567z3), .dataf (rtlc0n0[1]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix3027z37202 (.combout (buffer2_4n2ss1[2]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[2]), .datae (nx60567z3), .dataf (rtlc0n0[2]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix3027z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix2030z37202 (.combout (buffer2_4n2ss1[3]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[3]), .datae (nx60567z3), .dataf (rtlc0n0[3]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2030z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix1033z37202 (.combout (buffer2_4n2ss1[4]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[4]), .datae (nx60567z3), .dataf (rtlc0n0[4]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1033z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix36z37202 (.combout (buffer2_4n2ss1[5]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (mem_q_1_[5]), .datae (
                         nx60567z3), .dataf (rtlc0n0[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix36z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix64575z37202 (.combout (buffer2_4n2ss1[6]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[6]), .datae (nx60567z3), .dataf (rtlc0n0[6]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix63578z37202 (.combout (buffer2_4n2ss1[7]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_q_1_[7]), .datae (nx60567z3), .dataf (rtlc0n0[7]), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z37202.lut_mask = 64'hff00ffffff000000;
    stratixii_lcell_comb ix530_repl (.combout (nx47386z6), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx47386z2)
                         , .dataf (nx47386z4), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix530_repl.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix47386z37201 (.combout (nx47386z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx47386z2)
                         , .dataf (nx47386z4), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix528_repl (.combout (nx8852z1), .dataa (1'b1), .datab (
                         nx47386z5), .datac (nx47386z2), .datad (row[0]), .datae (
                         row[1]), .dataf (i_reset), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix528_repl.lut_mask = 64'hffffffffc0000000;
    stratixii_lcell_comb ix47386z37204 (.combout (nx47386z4), .dataa (1'b1), .datab (
                         nx47386z5), .datac (nx47386z2), .datad (row[0]), .datae (
                         row[1]), .dataf (i_reset), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix47386z37204.lut_mask = 64'hffffffffc0000000;
    stratixii_lcell_comb ix40106z37201 (.combout (mem_wrn_current_3n4ss1_1_), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         mem_wrn_current[0]), .dataf (i_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix40106z37201.lut_mask = 64'h00000000ffff0000;
    stratixii_lcell_comb ix41103z37201 (.combout (mem_wrn_current_3n4ss1_2_), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         mem_wrn_current[1]), .dataf (i_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix41103z37201.lut_mask = 64'h00000000ffff0000;
    stratixii_lcell_comb ix15976z37201 (.combout (o_mode[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (busySignalDelayed), .datad (busySignal)
                         , .datae (i_reset), .dataf (i_valid), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix15976z37201.lut_mask = 64'hfffffffffffffff0;
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

    wire ena1_rename963;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename963), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename963 = 1 ;
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

    wire ena1_rename933;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename933), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename933 = 1 ;
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

    wire ena1_rename903;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename903), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename903 = 1 ;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_i_valid, p_rtlc3n121, 
                            p_rtlc3n272_repl ) ;

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
    input p_rtlc3n121 ;
    input p_rtlc3n272_repl ;

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
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n272_repl), .sload (1'b0)) ;
    stratixii_lcell_comb ix57253z37201 (.combout (nx57253z3), .dataa (1'b1), .datab (
                         1'b1), .datac (p_i_valid), .datad (p_rtlc3n121), .datae (
                         sclear), .dataf (cnt_en), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z37201.lut_mask = 64'hff0fff0fff0f0000;
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
                            updn, cnt_en, p_i_valid, p_rtlc3n271, 
                            p_rtlc3n121_repl ) ;

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
    input p_rtlc3n271 ;
    input p_rtlc3n121_repl ;

    wire GND, nx57253z3, nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, 
         nx53265z1, nx52268z1, nx51271z1, nx58250z17, nx58250z15, nx58250z13, 
         nx58250z11, nx58250z9, nx58250z7, nx58250z5, nx58250z3, nx58250z2, 
         nx58250z18, nx58250z19;
    wire [114:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z18 = 1 ;
    assign nx58250z19 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       p_rtlc3n121_repl), .sload (1'b0)) ;
    stratixii_lcell_comb ix57253z37201 (.combout (nx57253z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (p_i_valid), .datae (
                         p_rtlc3n271), .dataf (sclear), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix57253z37201.lut_mask = 64'hffffffff00ff0000;
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

