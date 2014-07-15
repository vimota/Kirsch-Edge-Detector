//
// Verilog description for cell max, 
// Tue Jul 15 18:51:12 2014
//
// Precision RTL Synthesis, 2008a.47//


module max ( i_left, i_right, o_left_greater ) ;

    input [12:0]i_left ;
    input [12:0]i_right ;
    output o_left_greater ;

    wire o_left_greater_dup0;
    wire [12:0]i_left_int;
    wire [12:0]i_right_int;
    wire [431:0] xmplr_dummy ;




    gt_13_0 ix45699z19900 (.a ({i_left_int[12],i_left_int[11],i_left_int[10],
            i_left_int[9],i_left_int[8],i_left_int[7],i_left_int[6],
            i_left_int[5],i_left_int[4],i_left_int[3],i_left_int[2],
            i_left_int[1],i_left_int[0]}), .b ({i_right_int[12],i_right_int[11],
            i_right_int[10],i_right_int[9],i_right_int[8],i_right_int[7],
            i_right_int[6],i_right_int[5],i_right_int[4],i_right_int[3],
            i_right_int[2],i_right_int[1],i_right_int[0]}), .d (
            o_left_greater_dup0)) ;
    cycloneii_io o_left_greater_obuf (.padio (o_left_greater), .datain (
                 o_left_greater_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_left_greater_obuf.operation_mode = "output";
                 
                 defparam o_left_greater_obuf.output_register_mode = "none";
                 
                 defparam o_left_greater_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_left_greater_obuf.oe_register_mode = "none";
                 
                 defparam o_left_greater_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_left_greater_obuf.input_register_mode = "none";
    cycloneii_io i_right_ibuf_9_ (.combout (i_right_int[9]), .padio (i_right[9])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_9_.operation_mode = "input";
                 
                 defparam i_right_ibuf_9_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_9_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_9_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_9_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_9_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_8_ (.combout (i_right_int[8]), .padio (i_right[8])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_8_.operation_mode = "input";
                 
                 defparam i_right_ibuf_8_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_8_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_8_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_8_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_8_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_7_ (.combout (i_right_int[7]), .padio (i_right[7])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_7_.operation_mode = "input";
                 
                 defparam i_right_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_7_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_7_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_7_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_6_ (.combout (i_right_int[6]), .padio (i_right[6])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_6_.operation_mode = "input";
                 
                 defparam i_right_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_6_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_6_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_6_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_5_ (.combout (i_right_int[5]), .padio (i_right[5])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_5_.operation_mode = "input";
                 
                 defparam i_right_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_5_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_5_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_5_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_4_ (.combout (i_right_int[4]), .padio (i_right[4])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_4_.operation_mode = "input";
                 
                 defparam i_right_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_4_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_4_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_4_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_3_ (.combout (i_right_int[3]), .padio (i_right[3])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_3_.operation_mode = "input";
                 
                 defparam i_right_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_3_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_3_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_3_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_2_ (.combout (i_right_int[2]), .padio (i_right[2])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_2_.operation_mode = "input";
                 
                 defparam i_right_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_2_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_2_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_2_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_12_ (.combout (i_right_int[12]), .padio (
                 i_right[12]), .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_12_.operation_mode = "input";
                 
                 defparam i_right_ibuf_12_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_12_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_12_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_12_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_11_ (.combout (i_right_int[11]), .padio (
                 i_right[11]), .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_11_.operation_mode = "input";
                 
                 defparam i_right_ibuf_11_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_11_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_11_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_11_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_10_ (.combout (i_right_int[10]), .padio (
                 i_right[10]), .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_10_.operation_mode = "input";
                 
                 defparam i_right_ibuf_10_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_10_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_10_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_10_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_1_ (.combout (i_right_int[1]), .padio (i_right[1])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_1_.operation_mode = "input";
                 
                 defparam i_right_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_1_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_1_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_1_.input_register_mode = "none";
    cycloneii_io i_right_ibuf_0_ (.combout (i_right_int[0]), .padio (i_right[0])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_right_ibuf_0_.operation_mode = "input";
                 
                 defparam i_right_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_0_.tie_off_output_clock_enable = "false";
                 defparam i_right_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_0_.tie_off_oe_clock_enable = "false";
                 defparam i_right_ibuf_0_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_9_ (.combout (i_left_int[9]), .padio (i_left[9]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_9_.operation_mode = "input";
                 
                 defparam i_left_ibuf_9_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_9_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_9_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_8_ (.combout (i_left_int[8]), .padio (i_left[8]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_8_.operation_mode = "input";
                 
                 defparam i_left_ibuf_8_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_8_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_8_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_7_ (.combout (i_left_int[7]), .padio (i_left[7]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_7_.operation_mode = "input";
                 
                 defparam i_left_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_7_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_6_ (.combout (i_left_int[6]), .padio (i_left[6]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_6_.operation_mode = "input";
                 
                 defparam i_left_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_6_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_5_ (.combout (i_left_int[5]), .padio (i_left[5]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_5_.operation_mode = "input";
                 
                 defparam i_left_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_5_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_4_ (.combout (i_left_int[4]), .padio (i_left[4]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_4_.operation_mode = "input";
                 
                 defparam i_left_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_4_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_3_ (.combout (i_left_int[3]), .padio (i_left[3]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_3_.operation_mode = "input";
                 
                 defparam i_left_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_3_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_2_ (.combout (i_left_int[2]), .padio (i_left[2]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_2_.operation_mode = "input";
                 
                 defparam i_left_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_2_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_12_ (.combout (i_left_int[12]), .padio (i_left[12])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_12_.operation_mode = "input";
                 
                 defparam i_left_ibuf_12_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_12_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_12_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_12_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_12_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_11_ (.combout (i_left_int[11]), .padio (i_left[11])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_11_.operation_mode = "input";
                 
                 defparam i_left_ibuf_11_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_11_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_11_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_11_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_11_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_10_ (.combout (i_left_int[10]), .padio (i_left[10])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_10_.operation_mode = "input";
                 
                 defparam i_left_ibuf_10_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_10_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_10_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_10_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_10_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_1_ (.combout (i_left_int[1]), .padio (i_left[1]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_1_.operation_mode = "input";
                 
                 defparam i_left_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_1_.input_register_mode = "none";
    cycloneii_io i_left_ibuf_0_ (.combout (i_left_int[0]), .padio (i_left[0]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_0_.operation_mode = "input";
                 
                 defparam i_left_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_0_.input_register_mode = "none";
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
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
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

