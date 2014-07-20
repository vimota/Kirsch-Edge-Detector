//
// Verilog description for cell kirsch, 
// Sat Jul 19 23:39:12 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, o_pixel, o_column, o_image0_0_, o_image0_1_, 
                o_image0_2_, o_image1_0_, o_image1_1_, o_image1_2_, o_image2_0_, 
                o_image2_1_, o_image2_2_, debug_key, debug_switch, debug_led_red, 
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
    output [7:0]o_pixel ;
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
         o_image2_2__dup0_0_, i_clock_int, i_valid_int;
    wire [7:0]i_pixel_int;
    wire debug_num_5_dup0_1_;
    wire [17:17]debug_num_5_dup0;
    wire [7229:0] xmplr_dummy ;




    memory_notri u_memory (.p_o_image0_9_7 ({o_image0_dup0[0],o_image0_dup0[7]})
                 , .p_o_image0_9_1 ({o_image0_dup0[1]}), .p_o_image0_9_2 ({
                 o_image0_dup0[2]}), .p_o_image0_9_3 ({o_image0_dup0[3]}), .p_o_image0_9_4 (
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
                 o_image2_2__dup0_5_}), .p_o_image2_6 ({o_image2_2__dup0_6_}), .p_i_pixel (
                 {i_pixel_int[7],i_pixel_int[6],i_pixel_int[5],i_pixel_int[4],
                 i_pixel_int[3],i_pixel_int[2],i_pixel_int[1],i_pixel_int[0]}), 
                 .p_o_row ({o_row_dup0[7],o_row_dup0[6],o_row_dup0[5],
                 o_row_dup0[4],o_row_dup0[3],o_row_dup0[2],o_row_dup0[1],
                 o_row_dup0[0]}), .p_i_valid_rtlc_32_or_1 ({i_valid_int}), .p_i_clock (
                 i_clock_int), .p_o_column ({o_column_dup0[7],o_column_dup0[6],
                 o_column_dup0[5],o_column_dup0[4],o_column_dup0[3],
                 o_column_dup0[2],o_column_dup0[1],o_column_dup0[0]})) ;
    assign debug_num_5_dup0_1_ = 1 ;
    assign debug_num_5_dup0[17] = 0 ;
    stratixii_io u_memory_o_pixel_triBus1_7_ (.padio (o_pixel[7]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_7_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_7_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_7_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_7_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_7_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_6_ (.padio (o_pixel[6]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_6_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_6_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_6_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_6_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_6_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_5_ (.padio (o_pixel[5]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_5_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_5_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_5_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_5_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_4_ (.padio (o_pixel[4]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_4_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_4_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_4_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_4_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_3_ (.padio (o_pixel[3]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_3_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_3_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_3_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_3_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_2_ (.padio (o_pixel[2]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_2_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_2_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_2_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_2_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_1_ (.padio (o_pixel[1]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_1_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_1_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_1_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_1_.input_register_mode = "none";
    stratixii_io u_memory_o_pixel_triBus1_0_ (.padio (o_pixel[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam u_memory_o_pixel_triBus1_0_.operation_mode = "output";
                 
                 defparam u_memory_o_pixel_triBus1_0_.output_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_0_.oe_register_mode = "none";
                 
                 defparam u_memory_o_pixel_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_memory_o_pixel_triBus1_0_.input_register_mode = "none";
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
    stratixii_io o_mode_triBus2_1_ (.padio (o_mode[1]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_triBus2_1_.operation_mode = "output";
                 
                 defparam o_mode_triBus2_1_.output_register_mode = "none";
                 
                 defparam o_mode_triBus2_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_triBus2_1_.oe_register_mode = "none";
                 
                 defparam o_mode_triBus2_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_triBus2_1_.input_register_mode = "none";
    stratixii_io o_mode_triBus2_0_ (.padio (o_mode[0]), .datain (
                 debug_num_5_dup0[17]), .ddiodatain (1'b0), .oe (
                 debug_num_5_dup0[17]), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_triBus2_0_.operation_mode = "output";
                 
                 defparam o_mode_triBus2_0_.output_register_mode = "none";
                 
                 defparam o_mode_triBus2_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_triBus2_0_.oe_register_mode = "none";
                 
                 defparam o_mode_triBus2_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_triBus2_0_.input_register_mode = "none";
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
    stratixii_io ix51998z7237 (.padio (o_valid), .datain (debug_num_5_dup0[17])
                 , .ddiodatain (1'b0), .oe (debug_num_5_dup0[17]), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam ix51998z7237.operation_mode = "output";
                 
                 defparam ix51998z7237.output_register_mode = "none";
                 
                 defparam ix51998z7237.tie_off_output_clock_enable = "false";
                 
                 defparam ix51998z7237.oe_register_mode = "none";
                 
                 defparam ix51998z7237.tie_off_oe_clock_enable = "false";
                 
                 defparam ix51998z7237.input_register_mode = "none";
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


module memory_notri ( p_o_image0_9_7, p_o_image0_9_1, p_o_image0_9_2, 
                      p_o_image0_9_3, p_o_image0_9_4, p_o_image0_9_5, 
                      p_o_image0_9_6, p_o_image0_8_7, p_o_image0_8_1, 
                      p_o_image0_8_2, p_o_image0_8_3, p_o_image0_8_4, 
                      p_o_image0_8_5, p_o_image0_8_6, p_o_image0_7, p_o_image0_1, 
                      p_o_image0_2, p_o_image0_3, p_o_image0_4, p_o_image0_5, 
                      p_o_image0_6, p_o_image1_9_7, p_o_image1_9_1, 
                      p_o_image1_9_2, p_o_image1_9_3, p_o_image1_9_4, 
                      p_o_image1_9_5, p_o_image1_9_6, p_o_image1_8_7, 
                      p_o_image1_8_1, p_o_image1_8_2, p_o_image1_8_3, 
                      p_o_image1_8_4, p_o_image1_8_5, p_o_image1_8_6, 
                      p_o_image1_7, p_o_image1_1, p_o_image1_2, p_o_image1_3, 
                      p_o_image1_4, p_o_image1_5, p_o_image1_6, p_o_image2_9_7, 
                      p_o_image2_9_1, p_o_image2_9_2, p_o_image2_9_3, 
                      p_o_image2_9_4, p_o_image2_9_5, p_o_image2_9_6, 
                      p_o_image2_8_7, p_o_image2_8_1, p_o_image2_8_2, 
                      p_o_image2_8_3, p_o_image2_8_4, p_o_image2_8_5, 
                      p_o_image2_8_6, p_o_image2_7, p_o_image2_1, p_o_image2_2, 
                      p_o_image2_3, p_o_image2_4, p_o_image2_5, p_o_image2_6, 
                      p_i_pixel, p_o_row, p_i_valid_rtlc_32_or_1, p_i_clock, 
                      p_o_column ) ;

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
    input [7:0]p_i_pixel ;
    output [7:0]p_o_row ;
    input [2:2]p_i_valid_rtlc_32_or_1 ;
    input p_i_clock ;
    output [7:0]p_o_column ;

    wire first_bubble;
    wire [2:0]mem_wrn_current;
    wire mem_q_2__0_, mem_q_2__1_, mem_q_2__2_, mem_q_2__3_, mem_q_2__4_, 
         mem_q_2__5_, mem_q_2__6_, mem_q_2__7_;
    wire [2:0]mem_wrn;
    wire mem_q_1__0_, mem_q_1__1_, mem_q_1__2_, mem_q_1__3_, mem_q_1__4_, 
         mem_q_1__5_, mem_q_1__6_, mem_q_1__7_, mem_q_0__0_, mem_q_0__1_, 
         mem_q_0__2_, mem_q_0__3_, mem_q_0__4_, mem_q_0__5_, mem_q_0__6_, 
         mem_q_0__7_;
    wire [7:0]mem_data;
    wire nx15763z1, nx16760z1, nx17757z1, mem_wrn_current_0n4ss1_0_, nx50245z1;
    
    wire [7:0]buffer2_1n1ss1;
    wire nx5021z2, nx40106z3, nx40106z2, nx45024z1, nx40106z1, nx62359z1, 
         nx61362z1, nx60365z1, nx59368z1, nx58371z1, nx57374z1, nx56377z1, 
         nx55380z1, nx63578z1, nx64575z1, nx36z1, nx1033z1, nx2030z1, nx3027z1, 
         nx4024z1, nx5021z1, nx5021z3, nx43683z1, first_bubble_repl, 
         not_rtlc0n196_repl, nx45024z2;
    wire [761:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_o_row (.clock (p_i_clock), .q ({p_o_row[7]
                       ,p_o_row[6],p_o_row[5],p_o_row[4],p_o_row[3],p_o_row[2],
                       p_o_row[1],p_o_row[0]}), .p_not_rtlc0n196_repl (
                       not_rtlc0n196_repl)) ;
    modgen_counter_8_1 modgen_counter_o_column (.clock (p_i_clock), .q ({
                       p_o_column[7],p_o_column[6],p_o_column[5],p_o_column[4],
                       p_o_column[3],p_o_column[2],p_o_column[1],p_o_column[0]})
                       , .clk_en (nx45024z1), .p_rtlcs0_repl (nx45024z2)) ;
    ram_dq_8_0 u_mem1_mem (.wr_data1 ({mem_data[7],mem_data[6],mem_data[5],
               mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]}), .rd_data1 (
               {mem_q_0__7_,mem_q_0__6_,mem_q_0__5_,mem_q_0__4_,mem_q_0__3_,
               mem_q_0__2_,mem_q_0__1_,mem_q_0__0_}), .addr1 ({p_o_column[7],
               p_o_column[6],p_o_column[5],p_o_column[4],p_o_column[3],
               p_o_column[2],p_o_column[1],p_o_column[0]}), .wr_clk1 (p_i_clock)
               , .wr_ena1 (mem_wrn[0])) ;
    ram_dq_8_1 u_mem2_mem (.wr_data1 ({mem_data[7],mem_data[6],mem_data[5],
               mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]}), .rd_data1 (
               {mem_q_1__7_,mem_q_1__6_,mem_q_1__5_,mem_q_1__4_,mem_q_1__3_,
               mem_q_1__2_,mem_q_1__1_,mem_q_1__0_}), .addr1 ({p_o_column[7],
               p_o_column[6],p_o_column[5],p_o_column[4],p_o_column[3],
               p_o_column[2],p_o_column[1],p_o_column[0]}), .wr_clk1 (p_i_clock)
               , .wr_ena1 (mem_wrn[1])) ;
    ram_dq_8_2 u_mem3_mem (.wr_data1 ({mem_data[7],mem_data[6],mem_data[5],
               mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]}), .rd_data1 (
               {mem_q_2__7_,mem_q_2__6_,mem_q_2__5_,mem_q_2__4_,mem_q_2__3_,
               mem_q_2__2_,mem_q_2__1_,mem_q_2__0_}), .addr1 ({p_o_column[7],
               p_o_column[6],p_o_column[5],p_o_column[4],p_o_column[3],
               p_o_column[2],p_o_column[1],p_o_column[0]}), .wr_clk1 (p_i_clock)
               , .wr_ena1 (mem_wrn[2])) ;
    stratixii_lcell_ff reg_mem_wrn_current_2_ (.regout (mem_wrn_current[2]), .datain (
                       mem_wrn_current[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (nx40106z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_1_ (.regout (mem_wrn_current[1]), .datain (
                       mem_wrn_current[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (nx40106z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_current_0_ (.regout (mem_wrn_current[0]), .datain (
                       mem_wrn_current_0n4ss1_0_), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (nx40106z1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_2_ (.regout (mem_wrn[2]), .datain (nx17757z1)
                       , .adatasdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_1_ (.regout (mem_wrn[1]), .datain (nx16760z1)
                       , .adatasdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_wrn_0_ (.regout (mem_wrn[0]), .datain (nx15763z1)
                       , .adatasdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_mem_data_7_ (.regout (mem_data[7]), .datain (
                       p_i_pixel[7]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_6_ (.regout (mem_data[6]), .datain (
                       p_i_pixel[6]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_5_ (.regout (mem_data[5]), .datain (
                       p_i_pixel[5]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_4_ (.regout (mem_data[4]), .datain (
                       p_i_pixel[4]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_3_ (.regout (mem_data[3]), .datain (
                       p_i_pixel[3]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_2_ (.regout (mem_data[2]), .datain (
                       p_i_pixel[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_1_ (.regout (mem_data[1]), .datain (
                       p_i_pixel[1]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_mem_data_0_ (.regout (mem_data[0]), .datain (
                       p_i_pixel[0]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_32_or_1[2]), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_first_bubble_repl (.regout (first_bubble_repl), .datain (
                       p_i_valid_rtlc_32_or_1[2]), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_first_bubble (.regout (first_bubble), .datain (
                       p_i_valid_rtlc_32_or_1[2]), .adatasdata (1'b0), .clk (
                       p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_2__7_ (.regout (p_o_image2_7[1]), .datain (
                       mem_q_2__7_), .adatasdata (mem_data[7]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__6_ (.regout (p_o_image2_6[2]), .datain (
                       mem_q_2__6_), .adatasdata (mem_data[6]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__5_ (.regout (p_o_image2_5[2]), .datain (
                       mem_q_2__5_), .adatasdata (mem_data[5]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__4_ (.regout (p_o_image2_4[2]), .datain (
                       mem_q_2__4_), .adatasdata (mem_data[4]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__3_ (.regout (p_o_image2_3[2]), .datain (
                       mem_q_2__3_), .adatasdata (mem_data[3]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__2_ (.regout (p_o_image2_2[2]), .datain (
                       mem_q_2__2_), .adatasdata (mem_data[2]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__1_ (.regout (p_o_image2_1[2]), .datain (
                       mem_q_2__1_), .adatasdata (mem_data[1]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_2__0_ (.regout (p_o_image2_7[2]), .datain (
                       mem_q_2__0_), .adatasdata (mem_data[0]), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx50245z1)) ;
    stratixii_lcell_ff reg_buffer2_1__7_ (.regout (p_o_image2_8_7[0]), .datain (
                       nx62359z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__6_ (.regout (p_o_image2_8_6[1]), .datain (
                       nx61362z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__5_ (.regout (p_o_image2_8_5[1]), .datain (
                       nx60365z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__4_ (.regout (p_o_image2_8_4[1]), .datain (
                       nx59368z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__3_ (.regout (p_o_image2_8_3[1]), .datain (
                       nx58371z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__2_ (.regout (p_o_image2_8_2[1]), .datain (
                       nx57374z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__1_ (.regout (p_o_image2_8_1[1]), .datain (
                       nx56377z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_1__0_ (.regout (p_o_image2_8_7[1]), .datain (
                       nx55380z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__7_ (.regout (p_o_image2_9_7[0]), .datain (
                       nx63578z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__6_ (.regout (p_o_image2_9_6[0]), .datain (
                       nx64575z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__5_ (.regout (p_o_image2_9_5[0]), .datain (
                       nx36z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__4_ (.regout (p_o_image2_9_4[0]), .datain (
                       nx1033z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__3_ (.regout (p_o_image2_9_3[0]), .datain (
                       nx2030z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__2_ (.regout (p_o_image2_9_2[0]), .datain (
                       nx3027z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__1_ (.regout (p_o_image2_9_1[0]), .datain (
                       nx4024z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer2_0__0_ (.regout (p_o_image2_9_7[1]), .datain (
                       nx5021z1), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__7_ (.regout (p_o_image1_7[1]), .datain (
                       p_o_image2_7[1]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__6_ (.regout (p_o_image1_6[2]), .datain (
                       p_o_image2_6[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__5_ (.regout (p_o_image1_5[2]), .datain (
                       p_o_image2_5[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__4_ (.regout (p_o_image1_4[2]), .datain (
                       p_o_image2_4[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__3_ (.regout (p_o_image1_3[2]), .datain (
                       p_o_image2_3[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__2_ (.regout (p_o_image1_2[2]), .datain (
                       p_o_image2_2[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__1_ (.regout (p_o_image1_1[2]), .datain (
                       p_o_image2_1[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_2__0_ (.regout (p_o_image1_7[2]), .datain (
                       p_o_image2_7[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__7_ (.regout (p_o_image1_8_7[0]), .datain (
                       p_o_image2_8_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__6_ (.regout (p_o_image1_8_6[1]), .datain (
                       p_o_image2_8_6[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__5_ (.regout (p_o_image1_8_5[1]), .datain (
                       p_o_image2_8_5[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__4_ (.regout (p_o_image1_8_4[1]), .datain (
                       p_o_image2_8_4[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__3_ (.regout (p_o_image1_8_3[1]), .datain (
                       p_o_image2_8_3[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__2_ (.regout (p_o_image1_8_2[1]), .datain (
                       p_o_image2_8_2[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__1_ (.regout (p_o_image1_8_1[1]), .datain (
                       p_o_image2_8_1[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_1__0_ (.regout (p_o_image1_8_7[1]), .datain (
                       p_o_image2_8_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__7_ (.regout (p_o_image1_9_7[0]), .datain (
                       p_o_image2_9_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__6_ (.regout (p_o_image1_9_6[0]), .datain (
                       p_o_image2_9_6[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__5_ (.regout (p_o_image1_9_5[0]), .datain (
                       p_o_image2_9_5[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__4_ (.regout (p_o_image1_9_4[0]), .datain (
                       p_o_image2_9_4[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__3_ (.regout (p_o_image1_9_3[0]), .datain (
                       p_o_image2_9_3[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__2_ (.regout (p_o_image1_9_2[0]), .datain (
                       p_o_image2_9_2[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__1_ (.regout (p_o_image1_9_1[0]), .datain (
                       p_o_image2_9_1[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer1_0__0_ (.regout (p_o_image1_9_7[1]), .datain (
                       p_o_image2_9_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__7_ (.regout (p_o_image0_7[1]), .datain (
                       p_o_image1_7[1]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__6_ (.regout (p_o_image0_6[2]), .datain (
                       p_o_image1_6[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__5_ (.regout (p_o_image0_5[2]), .datain (
                       p_o_image1_5[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__4_ (.regout (p_o_image0_4[2]), .datain (
                       p_o_image1_4[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__3_ (.regout (p_o_image0_3[2]), .datain (
                       p_o_image1_3[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__2_ (.regout (p_o_image0_2[2]), .datain (
                       p_o_image1_2[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__1_ (.regout (p_o_image0_1[2]), .datain (
                       p_o_image1_1[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_2__0_ (.regout (p_o_image0_7[2]), .datain (
                       p_o_image1_7[2]), .adatasdata (1'b0), .clk (p_i_clock), .ena (
                       first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__7_ (.regout (p_o_image0_8_7[0]), .datain (
                       p_o_image1_8_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__6_ (.regout (p_o_image0_8_6[1]), .datain (
                       p_o_image1_8_6[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__5_ (.regout (p_o_image0_8_5[1]), .datain (
                       p_o_image1_8_5[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__4_ (.regout (p_o_image0_8_4[1]), .datain (
                       p_o_image1_8_4[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__3_ (.regout (p_o_image0_8_3[1]), .datain (
                       p_o_image1_8_3[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__2_ (.regout (p_o_image0_8_2[1]), .datain (
                       p_o_image1_8_2[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__1_ (.regout (p_o_image0_8_1[1]), .datain (
                       p_o_image1_8_1[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_1__0_ (.regout (p_o_image0_8_7[1]), .datain (
                       p_o_image1_8_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__7_ (.regout (p_o_image0_9_7[0]), .datain (
                       p_o_image1_9_7[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__6_ (.regout (p_o_image0_9_6[0]), .datain (
                       p_o_image1_9_6[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__5_ (.regout (p_o_image0_9_5[0]), .datain (
                       p_o_image1_9_5[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__4_ (.regout (p_o_image0_9_4[0]), .datain (
                       p_o_image1_9_4[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__3_ (.regout (p_o_image0_9_3[0]), .datain (
                       p_o_image1_9_3[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__2_ (.regout (p_o_image0_9_2[0]), .datain (
                       p_o_image1_9_2[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__1_ (.regout (p_o_image0_9_1[0]), .datain (
                       p_o_image1_9_1[0]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_buffer0_0__0_ (.regout (p_o_image0_9_7[1]), .datain (
                       p_o_image1_9_7[1]), .adatasdata (1'b0), .clk (p_i_clock)
                       , .ena (first_bubble_repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_comb ix43683z37201 (.combout (nx43683z1), .dataa (1'b1), .datab (
                         1'b1), .datac (p_o_column[3]), .datad (p_o_column[2]), 
                         .datae (p_o_column[1]), .dataf (p_o_column[0]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix43683z37201.lut_mask = 64'hf000000000000000;
    stratixii_lcell_comb ix5021z37203 (.combout (nx5021z3), .dataa (1'b1), .datab (
                         1'b1), .datac (p_o_row[3]), .datad (p_o_row[4]), .datae (
                         p_o_row[5]), .dataf (p_o_row[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix5021z37203.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix5021z37201 (.combout (nx5021z1), .dataa (mem_q_0__0_)
                         , .datab (mem_q_2__0_), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (nx5021z2), .dataf (
                         buffer2_1n1ss1[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix4024z37201 (.combout (nx4024z1), .dataa (mem_q_0__1_)
                         , .datab (mem_q_2__1_), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (nx5021z2), .dataf (
                         buffer2_1n1ss1[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix3027z37201 (.combout (nx3027z1), .dataa (mem_q_0__2_)
                         , .datab (mem_q_2__2_), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (nx5021z2), .dataf (
                         buffer2_1n1ss1[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix3027z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix2030z37201 (.combout (nx2030z1), .dataa (mem_q_0__3_)
                         , .datab (mem_q_2__3_), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (nx5021z2), .dataf (
                         buffer2_1n1ss1[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2030z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix1033z37201 (.combout (nx1033z1), .dataa (mem_q_0__4_)
                         , .datab (mem_q_2__4_), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (nx5021z2), .dataf (
                         buffer2_1n1ss1[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1033z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix36z37201 (.combout (nx36z1), .dataa (mem_q_0__5_), .datab (
                         mem_q_2__5_), .datac (mem_wrn_current[0]), .datad (
                         mem_wrn_current[1]), .datae (nx5021z2), .dataf (
                         buffer2_1n1ss1[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix64575z37201 (.combout (nx64575z1), .dataa (
                         mem_q_0__6_), .datab (mem_q_2__6_), .datac (
                         mem_wrn_current[0]), .datad (mem_wrn_current[1]), .datae (
                         nx5021z2), .dataf (buffer2_1n1ss1[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix64575z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix63578z37201 (.combout (nx63578z1), .dataa (
                         mem_q_0__7_), .datab (mem_q_2__7_), .datac (
                         mem_wrn_current[0]), .datad (mem_wrn_current[1]), .datae (
                         nx5021z2), .dataf (buffer2_1n1ss1[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix63578z37201.lut_mask = 64'hccfafafacc0a0a0a;
    stratixii_lcell_comb ix55380z37201 (.combout (nx55380z1), .dataa (
                         mem_data[0]), .datab (mem_q_1__0_), .datac (mem_q_2__0_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix55380z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix56377z37201 (.combout (nx56377z1), .dataa (
                         mem_data[1]), .datab (mem_q_1__1_), .datac (mem_q_2__1_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix56377z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix57374z37201 (.combout (nx57374z1), .dataa (
                         mem_data[2]), .datab (mem_q_1__2_), .datac (mem_q_2__2_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix57374z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix58371z37201 (.combout (nx58371z1), .dataa (
                         mem_data[3]), .datab (mem_q_1__3_), .datac (mem_q_2__3_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix58371z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix59368z37201 (.combout (nx59368z1), .dataa (
                         mem_data[4]), .datab (mem_q_1__4_), .datac (mem_q_2__4_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix59368z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix60365z37201 (.combout (nx60365z1), .dataa (
                         mem_data[5]), .datab (mem_q_1__5_), .datac (mem_q_2__5_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix60365z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix61362z37201 (.combout (nx61362z1), .dataa (
                         mem_data[6]), .datab (mem_q_1__6_), .datac (mem_q_2__6_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix61362z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix62359z37201 (.combout (nx62359z1), .dataa (
                         mem_data[7]), .datab (mem_q_1__7_), .datac (mem_q_2__7_
                         ), .datad (mem_wrn_current[0]), .datae (
                         mem_wrn_current[1]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix62359z37201.lut_mask = 64'hf0ccf0ccaaaacccc;
    stratixii_lcell_comb ix40106z37201 (.combout (nx40106z1), .dataa (1'b1), .datab (
                         p_i_valid_rtlc_32_or_1[2]), .datac (nx40106z2), .datad (
                         mem_wrn_current[0]), .datae (mem_wrn_current[1]), .dataf (
                         mem_wrn_current[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40106z37201.lut_mask = 64'hf0f0f0f0f0f0f0fc;
    stratixii_lcell_comb ix45024z37201 (.combout (nx45024z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         p_i_valid_rtlc_32_or_1[2]), .dataf (first_bubble), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix45024z37201.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix414_repl (.combout (not_rtlc0n196_repl), .dataa (1'b1
                         ), .datab (1'b1), .datac (1'b1), .datad (
                         p_i_valid_rtlc_32_or_1[2]), .datae (nx40106z3), .dataf (
                         first_bubble), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix414_repl.lut_mask = 64'h00ff000000000000;
    stratixii_lcell_comb ix40106z37202 (.combout (nx40106z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (p_i_valid_rtlc_32_or_1[2]
                         ), .datae (nx40106z3), .dataf (first_bubble), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix40106z37202.lut_mask = 64'h00ff000000000000;
    stratixii_lcell_comb ix413_repl (.combout (nx45024z2), .dataa (1'b1), .datab (
                         nx43683z1), .datac (p_o_column[7]), .datad (
                         p_o_column[6]), .datae (p_o_column[5]), .dataf (
                         p_o_column[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix413_repl.lut_mask = 64'hc000000000000000;
    stratixii_lcell_comb ix40106z37203 (.combout (nx40106z3), .dataa (1'b1), .datab (
                         nx43683z1), .datac (p_o_column[7]), .datad (
                         p_o_column[6]), .datae (p_o_column[5]), .dataf (
                         p_o_column[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40106z37203.lut_mask = 64'hc000000000000000;
    stratixii_lcell_comb ix5021z37202 (.combout (nx5021z2), .dataa (1'b1), .datab (
                         1'b1), .datac (nx5021z3), .datad (p_o_row[1]), .datae (
                         p_o_row[2]), .dataf (p_o_row[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix5021z37202.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix5021z37204 (.combout (buffer2_1n1ss1[0]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[0]), .datae (mem_q_1__0_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z37204.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix4024z37202 (.combout (buffer2_1n1ss1[1]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[1]), .datae (mem_q_1__1_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix3027z37202 (.combout (buffer2_1n1ss1[2]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[2]), .datae (mem_q_1__2_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix3027z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix2030z37202 (.combout (buffer2_1n1ss1[3]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[3]), .datae (mem_q_1__3_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2030z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix1033z37202 (.combout (buffer2_1n1ss1[4]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[4]), .datae (mem_q_1__4_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1033z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix36z37202 (.combout (buffer2_1n1ss1[5]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (mem_data[5]), .datae (
                         mem_q_1__5_), .dataf (nx5021z2), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix36z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix64575z37202 (.combout (buffer2_1n1ss1[6]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[6]), .datae (mem_q_1__6_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix63578z37202 (.combout (buffer2_1n1ss1[7]), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         mem_data[7]), .datae (mem_q_1__7_), .dataf (nx5021z2), 
                         .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z37202.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix50245z37201 (.combout (nx50245z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         mem_wrn_current[2]), .dataf (nx5021z2), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix50245z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix39109z37201 (.combout (mem_wrn_current_0n4ss1_0_), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         p_i_valid_rtlc_32_or_1[2]), .dataf (mem_wrn_current[2])
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39109z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix17757z37201 (.combout (nx17757z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         p_i_valid_rtlc_32_or_1[2]), .dataf (mem_wrn_current[2])
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17757z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix16760z37201 (.combout (nx16760z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         p_i_valid_rtlc_32_or_1[2]), .dataf (mem_wrn_current[1])
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16760z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix15763z37201 (.combout (nx15763z1), .dataa (1'b1), .datab (
                         1'b1), .datac (p_i_valid_rtlc_32_or_1[2]), .datad (
                         mem_wrn_current[0]), .datae (mem_wrn_current[1]), .dataf (
                         mem_wrn_current[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15763z37201.lut_mask = 64'hf000f000f000f0f0;
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

    wire ena1_rename864;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename864), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename864 = 1 ;
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

    wire ena1_rename834;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename834), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename834 = 1 ;
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

    wire ena1_rename804;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename804), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename804 = 1 ;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_rtlcs0_repl ) ;

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
    input p_rtlcs0_repl ;

    wire GND, nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, nx53265z1, 
         nx52268z1, nx51271z1, nx58250z17, nx58250z15, nx58250z13, nx58250z11, 
         nx58250z9, nx58250z7, nx58250z5, nx58250z3, nx58250z2, nx58250z18, 
         nx58250z19;
    wire [105:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z18 = 1 ;
    assign nx58250z19 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       p_rtlcs0_repl), .sload (1'b0)) ;
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
                            updn, cnt_en, p_not_rtlc0n196_repl ) ;

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
    input p_not_rtlc0n196_repl ;

    wire nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, nx53265z1, 
         nx52268z1, nx51271z1, nx58250z10, nx58250z9, nx58250z8, nx58250z7, 
         nx58250z6, nx58250z5, nx58250z4, nx58250z3, nx58250z2, GND, nx58250z11, 
         nx58250z12;
    wire [113:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z11 = 1 ;
    assign nx58250z12 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (p_not_rtlc0n196_repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_comb ix58250z37201 (.sumout (nx58250z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (q[7]), .datae (1'b1), .dataf (
                         nx58250z2), .datag (1'b1), .cin (nx58250z3)) ;
                         
                         defparam ix58250z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37202 (.sumout (nx57253z1), .cout (nx58250z3), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[6]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z4)) ;
                         
                         defparam ix58250z37202.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37203 (.sumout (nx56256z1), .cout (nx58250z4), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[5]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z5)) ;
                         
                         defparam ix58250z37203.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37204 (.sumout (nx55259z1), .cout (nx58250z5), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[4]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z6)) ;
                         
                         defparam ix58250z37204.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37205 (.sumout (nx54262z1), .cout (nx58250z6), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[3]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z7)) ;
                         
                         defparam ix58250z37205.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37206 (.sumout (nx53265z1), .cout (nx58250z7), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[2]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z8)) ;
                         
                         defparam ix58250z37206.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37207 (.sumout (nx52268z1), .cout (nx58250z8), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[1]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z9)) ;
                         
                         defparam ix58250z37207.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37209 (.cout (nx58250z10), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx58250z11), .datae (1'b1
                         ), .dataf (nx58250z12), .datag (1'b1), .cin (GND)) ;
                         
                         defparam ix58250z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37208 (.sumout (nx51271z1), .cout (nx58250z9), 
                         .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         q[0]), .datae (1'b1), .dataf (nx58250z2), .datag (1'b1)
                         , .cin (nx58250z10)) ;
                         
                         defparam ix58250z37208.lut_mask = 64'h000000ff0000ff00;
endmodule

