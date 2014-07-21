//
// Verilog description for cell top_kirsch, 
// 07/21/14 02:37:47
//
// Precision RTL Synthesis, 2008a.47//


module top_kirsch ( nrst, clk, rxflex, txflex, o_sevenseg, o_mode, o_nrst, 
                    debug_key, debug_switch, debug_led_red, debug_led_grn, 
                    debug_sevenseg_0, debug_sevenseg_1, debug_sevenseg_2, 
                    debug_sevenseg_3, debug_sevenseg_4, debug_sevenseg_5 ) ;

    input nrst ;
    input clk ;
    input rxflex ;
    output txflex ;
    output [15:0]o_sevenseg ;
    output [1:0]o_mode ;
    output o_nrst ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [16:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_sevenseg_0 ;
    output [3:0]debug_sevenseg_1 ;
    output [3:0]debug_sevenseg_2 ;
    output [3:0]debug_sevenseg_3 ;
    output [3:0]debug_sevenseg_4 ;
    output [3:0]debug_sevenseg_5 ;

    wire kirschout, dir_2_, dir_0_, clk_int, rxflex_int;
    wire [16:16]debug_led_red_dup0;
    wire Rx_r, Tx_Reg_14n6ss1_0__dup_4, NOT_rtlcn2_dup_5, nx21351z1;
    wire [1312:0] xmplr_dummy ;




    uw_uart u_uw_uart (.clk (clk_int), .kirschout (kirschout), .kirschdir ({
            dir_2_,xmplr_dummy [0],dir_0_}), .rxflex (rxflex_int), .p_Rx_r (Rx_r
            ), .p_Tx_Reg_14n6ss1_0_ (Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (
            NOT_rtlcn2_dup_5)) ;
    kirsch u_kirsch (.i_clock (clk_int), .o_edge (kirschout), .o_dir ({dir_2_,
           xmplr_dummy [1],dir_0_})) ;
    assign debug_led_red_dup0[16] = 0 ;
    cycloneii_lcell_ff reg_out_txflex_obuf (.regout (nx21351z1), .datain (
                       Tx_Reg_14n6ss1_0__dup_4), .sdata (1'b0), .clk (clk_int), 
                       .ena (NOT_rtlcn2_dup_5), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_in_rxflex_ibuf (.regout (Rx_r), .datain (rxflex_int)
                       , .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io o_sevenseg_triBus1_9_ (.padio (o_sevenseg[9]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_9_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_9_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_9_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_9_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_9_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_8_ (.padio (o_sevenseg[8]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_8_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_8_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_8_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_8_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_8_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_7_ (.padio (o_sevenseg[7]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_7_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_7_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_7_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_7_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_6_ (.padio (o_sevenseg[6]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_6_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_6_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_6_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_6_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_5_ (.padio (o_sevenseg[5]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_5_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_5_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_5_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_5_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_4_ (.padio (o_sevenseg[4]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_4_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_4_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_4_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_4_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_3_ (.padio (o_sevenseg[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_3_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_3_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_3_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_3_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_2_ (.padio (o_sevenseg[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_2_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_2_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_2_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_2_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_15_ (.padio (o_sevenseg[15]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_15_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_15_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_15_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_15_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_14_ (.padio (o_sevenseg[14]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_14_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_14_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_14_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_14_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_14_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_13_ (.padio (o_sevenseg[13]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_13_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_13_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_13_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_13_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_13_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_12_ (.padio (o_sevenseg[12]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_12_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_12_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_12_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_12_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_12_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_11_ (.padio (o_sevenseg[11]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_11_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_11_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_11_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_11_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_11_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_10_ (.padio (o_sevenseg[10]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_10_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_10_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_10_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_10_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_10_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_1_ (.padio (o_sevenseg[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_1_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_1_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_1_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_1_.input_register_mode = "none";
    cycloneii_io o_sevenseg_triBus1_0_ (.padio (o_sevenseg[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_triBus1_0_.operation_mode = "output";
                 
                 defparam o_sevenseg_triBus1_0_.output_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_0_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_triBus1_0_.input_register_mode = "none";
    cycloneii_io o_mode_triBus2_1_ (.padio (o_mode[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_triBus2_1_.operation_mode = "output";
                 
                 defparam o_mode_triBus2_1_.output_register_mode = "none";
                 
                 defparam o_mode_triBus2_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_triBus2_1_.oe_register_mode = "none";
                 
                 defparam o_mode_triBus2_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_triBus2_1_.input_register_mode = "none";
    cycloneii_io o_mode_triBus2_0_ (.padio (o_mode[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_triBus2_0_.operation_mode = "output";
                 
                 defparam o_mode_triBus2_0_.output_register_mode = "none";
                 
                 defparam o_mode_triBus2_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_triBus2_0_.oe_register_mode = "none";
                 
                 defparam o_mode_triBus2_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_triBus2_0_.input_register_mode = "none";
    cycloneii_io ix35935z43919 (.combout (rxflex_int), .padio (rxflex), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix35935z43919.operation_mode = "input";
                 
                 defparam ix35935z43919.output_register_mode = "none";
                 
                 defparam ix35935z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix35935z43919.oe_register_mode = "none";
                 
                 defparam ix35935z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix35935z43919.input_register_mode = "none";
    cycloneii_io ix21351z43919 (.padio (txflex), .datain (nx21351z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21351z43919.operation_mode = "output";
                 
                 defparam ix21351z43919.output_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21351z43919.oe_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21351z43919.input_register_mode = "none";
    cycloneii_io ix61067z43919 (.padio (o_nrst), .datain (debug_led_red_dup0[16]
                 ), .oe (debug_led_red_dup0[16]), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam ix61067z43919.operation_mode = "output";
                 defparam ix61067z43919.output_register_mode = "none";
                 
                 defparam ix61067z43919.tie_off_output_clock_enable = "false";
                 defparam ix61067z43919.oe_register_mode = "none";
                 
                 defparam ix61067z43919.tie_off_oe_clock_enable = "false";
                 defparam ix61067z43919.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_triBus8_3_ (.padio (debug_sevenseg_5[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_5_triBus8_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_triBus8_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_triBus8_2_ (.padio (debug_sevenseg_5[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_5_triBus8_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_triBus8_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_triBus8_1_ (.padio (debug_sevenseg_5[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_5_triBus8_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_triBus8_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_triBus8_0_ (.padio (debug_sevenseg_5[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_5_triBus8_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_triBus8_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_triBus8_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_triBus8_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_triBus7_3_ (.padio (debug_sevenseg_4[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_4_triBus7_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_triBus7_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_triBus7_2_ (.padio (debug_sevenseg_4[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_4_triBus7_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_triBus7_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_triBus7_1_ (.padio (debug_sevenseg_4[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_4_triBus7_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_triBus7_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_triBus7_0_ (.padio (debug_sevenseg_4[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_4_triBus7_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_triBus7_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_triBus7_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_triBus7_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_triBus6_3_ (.padio (debug_sevenseg_3[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_3_triBus6_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_triBus6_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_triBus6_2_ (.padio (debug_sevenseg_3[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_3_triBus6_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_triBus6_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_triBus6_1_ (.padio (debug_sevenseg_3[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_3_triBus6_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_triBus6_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_triBus6_0_ (.padio (debug_sevenseg_3[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_3_triBus6_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_triBus6_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_triBus6_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_triBus5_3_ (.padio (debug_sevenseg_2[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_2_triBus5_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_triBus5_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_triBus5_2_ (.padio (debug_sevenseg_2[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_2_triBus5_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_triBus5_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_triBus5_1_ (.padio (debug_sevenseg_2[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_2_triBus5_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_triBus5_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_triBus5_0_ (.padio (debug_sevenseg_2[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_2_triBus5_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_triBus5_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_triBus5_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_triBus4_3_ (.padio (debug_sevenseg_1[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_1_triBus4_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_triBus4_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_triBus4_2_ (.padio (debug_sevenseg_1[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_1_triBus4_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_triBus4_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_triBus4_1_ (.padio (debug_sevenseg_1[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_1_triBus4_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_triBus4_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_triBus4_0_ (.padio (debug_sevenseg_1[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_1_triBus4_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_triBus4_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_triBus4_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_triBus3_3_ (.padio (debug_sevenseg_0[3]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_0_triBus3_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_triBus3_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_triBus3_2_ (.padio (debug_sevenseg_0[2]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_0_triBus3_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_triBus3_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_triBus3_1_ (.padio (debug_sevenseg_0[1]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_0_triBus3_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_triBus3_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_triBus3_0_ (.padio (debug_sevenseg_0[0]), .datain (
                 debug_led_red_dup0[16]), .oe (debug_led_red_dup0[16]), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_sevenseg_0_triBus3_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_triBus3_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_triBus3_0_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
endmodule


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, o_image0_0_, o_image0_1_, o_image0_2_, 
                o_image1_0_, o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, 
                o_image2_2_, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_valid, debug_num_0, debug_num_1, 
                debug_num_2, debug_num_3, debug_num_4, debug_num_5, debug_num_6, 
                debug_num_7, debug_num_8, p_rdata_7_, p_rdata_6_, p_rdata_5_, 
                p_rdata_4_, p_rdata_3_, p_rdata_2_, p_rdata_1_, p_rdata_0_ ) ;

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
    input p_rdata_7_ ;
    input p_rdata_6_ ;
    input p_rdata_5_ ;
    input p_rdata_4_ ;
    input p_rdata_3_ ;
    input p_rdata_2_ ;
    input p_rdata_1_ ;
    input p_rdata_0_ ;

    wire [7:0]f_t1_next;
    wire [7:0]f_t2_next;
    wire [7:0]f_t3_next;
    wire [7:0]f_b1_next;
    wire [7:0]f_b2_next;
    wire [7:0]f_b3_next;
    wire [7:0]f_i1_next;
    wire [7:0]f_i2_next;
    wire nx57127z2, debug_valid_rename1064, nx57127z1;
    wire [150:0] xmplr_dummy ;




    flow u_flow (.t1 ({f_t1_next[7],f_t1_next[6],f_t1_next[5],f_t1_next[4],
         f_t1_next[3],f_t1_next[2],f_t1_next[1],f_t1_next[0]}), .t2 ({
         f_t2_next[7],f_t2_next[6],f_t2_next[5],f_t2_next[4],f_t2_next[3],
         f_t2_next[2],f_t2_next[1],f_t2_next[0]}), .t3 ({f_t3_next[7],
         f_t3_next[6],f_t3_next[5],f_t3_next[4],f_t3_next[3],f_t3_next[2],
         f_t3_next[1],f_t3_next[0]}), .b1 ({f_b1_next[7],f_b1_next[6],
         f_b1_next[5],f_b1_next[4],f_b1_next[3],f_b1_next[2],f_b1_next[1],
         f_b1_next[0]}), .b2 ({f_b2_next[7],f_b2_next[6],f_b2_next[5],
         f_b2_next[4],f_b2_next[3],f_b2_next[2],f_b2_next[1],f_b2_next[0]}), .b3 (
         {f_b3_next[7],f_b3_next[6],f_b3_next[5],f_b3_next[4],f_b3_next[3],
         f_b3_next[2],f_b3_next[1],f_b3_next[0]}), .i1 ({f_i1_next[7],
         f_i1_next[6],f_i1_next[5],f_i1_next[4],f_i1_next[3],f_i1_next[2],
         f_i1_next[1],f_i1_next[0]}), .i2 ({f_i2_next[7],f_i2_next[6],
         f_i2_next[5],f_i2_next[4],f_i2_next[3],f_i2_next[2],f_i2_next[1],
         f_i2_next[0]}), .i_clock (i_clock), .i_valid (debug_valid_rename1064), 
         .o_dir ({o_dir[2],xmplr_dummy [0],o_dir[0]}), .o_edge (o_edge)) ;
    assign nx57127z2 = 0 ;
    assign debug_valid_rename1064 = 1 ;
    assign nx57127z1 = 0 ;
    cycloneii_lcell_ff reg_f_t3_next_7_ (.regout (f_t3_next[7]), .datain (
                       f_i1_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_6_ (.regout (f_t3_next[6]), .datain (
                       f_i1_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_5_ (.regout (f_t3_next[5]), .datain (
                       f_i1_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_4_ (.regout (f_t3_next[4]), .datain (
                       f_i1_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_3_ (.regout (f_t3_next[3]), .datain (
                       f_i1_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_2_ (.regout (f_t3_next[2]), .datain (
                       f_i1_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_1_ (.regout (f_t3_next[1]), .datain (
                       f_i1_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_0_ (.regout (f_t3_next[0]), .datain (
                       f_i1_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_7_ (.regout (f_t2_next[7]), .datain (
                       f_t3_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_6_ (.regout (f_t2_next[6]), .datain (
                       f_t3_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_5_ (.regout (f_t2_next[5]), .datain (
                       f_t3_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_4_ (.regout (f_t2_next[4]), .datain (
                       f_t3_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_3_ (.regout (f_t2_next[3]), .datain (
                       f_t3_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_2_ (.regout (f_t2_next[2]), .datain (
                       f_t3_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_1_ (.regout (f_t2_next[1]), .datain (
                       f_t3_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_0_ (.regout (f_t2_next[0]), .datain (
                       f_t3_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_7_ (.regout (f_t1_next[7]), .datain (
                       f_t2_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_6_ (.regout (f_t1_next[6]), .datain (
                       f_t2_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_5_ (.regout (f_t1_next[5]), .datain (
                       f_t2_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_4_ (.regout (f_t1_next[4]), .datain (
                       f_t2_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_3_ (.regout (f_t1_next[3]), .datain (
                       f_t2_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_2_ (.regout (f_t1_next[2]), .datain (
                       f_t2_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_1_ (.regout (f_t1_next[1]), .datain (
                       f_t2_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_0_ (.regout (f_t1_next[0]), .datain (
                       f_t2_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_7_ (.regout (f_i2_next[7]), .datain (
                       f_t1_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_6_ (.regout (f_i2_next[6]), .datain (
                       f_t1_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_5_ (.regout (f_i2_next[5]), .datain (
                       f_t1_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_4_ (.regout (f_i2_next[4]), .datain (
                       f_t1_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_3_ (.regout (f_i2_next[3]), .datain (
                       f_t1_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_2_ (.regout (f_i2_next[2]), .datain (
                       f_t1_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_1_ (.regout (f_i2_next[1]), .datain (
                       f_t1_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_0_ (.regout (f_i2_next[0]), .datain (
                       f_t1_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_7_ (.regout (f_i1_next[7]), .datain (
                       f_b1_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_6_ (.regout (f_i1_next[6]), .datain (
                       f_b1_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_5_ (.regout (f_i1_next[5]), .datain (
                       f_b1_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_4_ (.regout (f_i1_next[4]), .datain (
                       f_b1_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_3_ (.regout (f_i1_next[3]), .datain (
                       f_b1_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_2_ (.regout (f_i1_next[2]), .datain (
                       f_b1_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_1_ (.regout (f_i1_next[1]), .datain (
                       f_b1_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_0_ (.regout (f_i1_next[0]), .datain (
                       f_b1_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_7_ (.regout (f_b3_next[7]), .datain (
                       f_i2_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_6_ (.regout (f_b3_next[6]), .datain (
                       f_i2_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_5_ (.regout (f_b3_next[5]), .datain (
                       f_i2_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_4_ (.regout (f_b3_next[4]), .datain (
                       f_i2_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_3_ (.regout (f_b3_next[3]), .datain (
                       f_i2_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_2_ (.regout (f_b3_next[2]), .datain (
                       f_i2_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_1_ (.regout (f_b3_next[1]), .datain (
                       f_i2_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_0_ (.regout (f_b3_next[0]), .datain (
                       f_i2_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_7_ (.regout (f_b2_next[7]), .datain (
                       f_b3_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_6_ (.regout (f_b2_next[6]), .datain (
                       f_b3_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_5_ (.regout (f_b2_next[5]), .datain (
                       f_b3_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_4_ (.regout (f_b2_next[4]), .datain (
                       f_b3_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_3_ (.regout (f_b2_next[3]), .datain (
                       f_b3_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_2_ (.regout (f_b2_next[2]), .datain (
                       f_b3_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_1_ (.regout (f_b2_next[1]), .datain (
                       f_b3_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_0_ (.regout (f_b2_next[0]), .datain (
                       f_b3_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_7_ (.regout (f_b1_next[7]), .datain (
                       f_b2_next[7]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_6_ (.regout (f_b1_next[6]), .datain (
                       f_b2_next[6]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_5_ (.regout (f_b1_next[5]), .datain (
                       f_b2_next[5]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_4_ (.regout (f_b1_next[4]), .datain (
                       f_b2_next[4]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_3_ (.regout (f_b1_next[3]), .datain (
                       f_b2_next[3]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_2_ (.regout (f_b1_next[2]), .datain (
                       f_b2_next[2]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_1_ (.regout (f_b1_next[1]), .datain (
                       f_b2_next[1]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_0_ (.regout (f_b1_next[0]), .datain (
                       f_b2_next[0]), .sdata (nx57127z1), .clk (i_clock), .ena (
                       debug_valid_rename1064), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
endmodule


module flow ( t1, t2, t3, b1, b2, b3, i1, i2, i_clock, i_reset, i_valid, i_mode, 
              i_row, o_dir, o_edge, o_valid, o_mode, o_row ) ;

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

    wire [9:0]p11;
    wire [9:0]p12;
    wire [10:1]p13;
    wire [11:0]p21;
    wire [11:0]p22;
    wire [10:0]p23;
    wire [11:0]p31;
    wire [10:0]p32;
    wire p35, p41, p45;
    wire [11:0]p43;
    wire [11:0]p4s;
    wire max_fwd, prev_edge;
    wire [10:0]prev_max;
    wire [8:0]p11_0n0s2;
    wire [8:0]p12_0n0s2;
    wire [8:0]p13_0n0s2;
    wire nx27830z3, p21_3n0r3_9_, p21_3n0r3_8_, p21_3n0r3_7_, p21_3n0r3_6_, 
         p21_3n0r3_5_, p21_3n0r3_4_, p21_3n0r3_3_, p21_3n0r3_2_, p21_3n0r3_1_, 
         p21_3n0r3_0_;
    wire [11:2]p21_3n0r4;
    wire [11:1]rtlc3n189;
    wire p22_3n0r3_9_, p22_3n0r3_8_, p22_3n0r3_7_, p22_3n0r3_6_, p22_3n0r3_5_, 
         p22_3n0r3_4_, p22_3n0r3_3_, p22_3n0r3_2_, p22_3n0r3_1_, p22_3n0r3_0_;
    
    wire [11:2]p22_3n0r4;
    wire [11:1]rtlc3n195;
    wire nx25033z2, nx52975z2, nx47840z2, nx27830z2, nx26026z1, nx27830z1, 
         nx25033z1, o_mode_1__rename1048, nx27830z4, nx27830z5, nx27830z6, 
         nx27830z7, nx27830z8, nx27830z10, nx27830z11, nx26026z2, nx27830z9;
    wire [450:0] xmplr_dummy ;




    assign o_dir[2] = o_valid ;
    assign o_dir[1] = o_valid ;
    sub_12_0 p4s_sub12_0 (.a ({p31[11],p31[10],p31[9],p31[8],p31[7],p31[6],
             p31[5],p31[4],p31[3],p31[2],p31[1],p31[0]}), .b ({xmplr_dummy [0],
             p32[10],p32[9],p32[8],p32[7],p32[6],p32[5],p32[4],p32[3],p32[2],
             p32[1],p32[0]}), .d ({p4s[11],p4s[10],p4s[9],p4s[8],p4s[7],p4s[6],
             p4s[5],p4s[4],p4s[3],p4s[2],p4s[1],p4s[0]})) ;
    gt_12_0 ix27830z30871 (.a ({p43[11],p43[10],p43[9],p43[8],p43[7],p43[6],
            p43[5],p43[4],p43[3],p43[2],p43[1],p43[0]}), .b ({o_valid,
            prev_max[10],prev_max[9],prev_max[8],prev_max[7],prev_max[6],
            prev_max[5],prev_max[4],prev_max[3],prev_max[2],prev_max[1],
            prev_max[0]}), .d (nx27830z3)) ;
    gt_12_1 ix25033z30869 (.a ({p22[11],p22[10],p22[9],p22[8],p22[7],p22[6],
            p22[5],p22[4],p22[3],p22[2],p22[1],p22[0]}), .b ({p21[11],p21[10],
            p21[9],p21[8],p21[7],p21[6],p21[5],p21[4],p21[3],p21[2],p21[1],
            p21[0]}), .d (nx25033z2)) ;
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
    add_8_0 p11_add8_0i1 (.a ({t1[7],t1[6],t1[5],t1[4],t1[3],t1[2],t1[1],t1[0]})
            , .b ({t2[7],t2[6],t2[5],t2[4],t2[3],t2[2],t2[1],t2[0]}), .d ({
            p11_0n0s2[7],p11_0n0s2[6],p11_0n0s2[5],p11_0n0s2[4],p11_0n0s2[3],
            p11_0n0s2[2],p11_0n0s2[1],p11_0n0s2[0]}), .cout (p11_0n0s2[8])) ;
    add_9_0 p11_add9_1 (.a ({p11_0n0s2[8],p11_0n0s2[7],p11_0n0s2[6],p11_0n0s2[5]
            ,p11_0n0s2[4],p11_0n0s2[3],p11_0n0s2[2],p11_0n0s2[1],p11_0n0s2[0]})
            , .b ({xmplr_dummy [5],t3[7],t3[6],t3[5],t3[4],t3[3],t3[2],t3[1],
            t3[0]}), .d ({p11[8],p11[7],p11[6],p11[5],p11[4],p11[3],p11[2],
            p11[1],p11[0]}), .cout (p11[9])) ;
    add_8_1 p12_add8_0i2 (.a ({b1[7],b1[6],b1[5],b1[4],b1[3],b1[2],b1[1],b1[0]})
            , .b ({b2[7],b2[6],b2[5],b2[4],b2[3],b2[2],b2[1],b2[0]}), .d ({
            p12_0n0s2[7],p12_0n0s2[6],p12_0n0s2[5],p12_0n0s2[4],p12_0n0s2[3],
            p12_0n0s2[2],p12_0n0s2[1],p12_0n0s2[0]}), .cout (p12_0n0s2[8])) ;
    add_9_1 p12_add9_2 (.a ({p12_0n0s2[8],p12_0n0s2[7],p12_0n0s2[6],p12_0n0s2[5]
            ,p12_0n0s2[4],p12_0n0s2[3],p12_0n0s2[2],p12_0n0s2[1],p12_0n0s2[0]})
            , .b ({xmplr_dummy [6],b3[7],b3[6],b3[5],b3[4],b3[3],b3[2],b3[1],
            b3[0]}), .d ({p12[8],p12[7],p12[6],p12[5],p12[4],p12[3],p12[2],
            p12[1],p12[0]}), .cout (p12[9])) ;
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
    add_8_2 p13_add8_0i3 (.a ({i1[7],i1[6],i1[5],i1[4],i1[3],i1[2],i1[1],i1[0]})
            , .b ({i2[7],i2[6],i2[5],i2[4],i2[3],i2[2],i2[1],i2[0]}), .d ({
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
    assign nx25033z1 = ~nx25033z2 ;
    assign o_mode_1__rename1048 = 1 ;
    assign o_valid = 0 ;
    assign nx27830z1 = ~p45 ;
    cycloneii_lcell_ff reg_prev_max_9_ (.regout (prev_max[9]), .datain (p43[9])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_8_ (.regout (prev_max[8]), .datain (p43[8])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_7_ (.regout (prev_max[7]), .datain (p43[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_6_ (.regout (prev_max[6]), .datain (p43[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_5_ (.regout (prev_max[5]), .datain (p43[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_4_ (.regout (prev_max[4]), .datain (p43[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_3_ (.regout (prev_max[3]), .datain (p43[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_2_ (.regout (prev_max[2]), .datain (p43[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_10_ (.regout (prev_max[10]), .datain (
                       p43[10]), .sdata (1'b0), .clk (i_clock), .ena (nx27830z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_1_ (.regout (prev_max[1]), .datain (p43[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_max_0_ (.regout (prev_max[0]), .datain (p43[0])
                       , .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_prev_edge (.regout (prev_edge), .datain (p41), .sdata (
                       1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
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
                       p22[9]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_8_ (.regout (p31[8]), .datain (p21[8]), .sdata (
                       p22[8]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_7_ (.regout (p31[7]), .datain (p21[7]), .sdata (
                       p22[7]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_6_ (.regout (p31[6]), .datain (p21[6]), .sdata (
                       p22[6]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_5_ (.regout (p31[5]), .datain (p21[5]), .sdata (
                       p22[5]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_4_ (.regout (p31[4]), .datain (p21[4]), .sdata (
                       p22[4]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_3_ (.regout (p31[3]), .datain (p21[3]), .sdata (
                       p22[3]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_2_ (.regout (p31[2]), .datain (p21[2]), .sdata (
                       p22[2]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_11_ (.regout (p31[11]), .datain (p21[11]), .sdata (
                       p22[11]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_10_ (.regout (p31[10]), .datain (p21[10]), .sdata (
                       p22[10]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_1_ (.regout (p31[1]), .datain (p21[1]), .sdata (
                       p22[1]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
    cycloneii_lcell_ff reg_p31_0_ (.regout (p31[0]), .datain (p21[0]), .sdata (
                       p22[0]), .clk (i_clock), .ena (o_mode_1__rename1048), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx25033z2)) ;
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
    cycloneii_lcell_ff reg_p22_9_ (.regout (p22[9]), .datain (rtlc3n195[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_8_ (.regout (p22[8]), .datain (rtlc3n195[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_7_ (.regout (p22[7]), .datain (rtlc3n195[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_6_ (.regout (p22[6]), .datain (rtlc3n195[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_5_ (.regout (p22[5]), .datain (rtlc3n195[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_4_ (.regout (p22[4]), .datain (rtlc3n195[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_3_ (.regout (p22[3]), .datain (rtlc3n195[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_2_ (.regout (p22[2]), .datain (rtlc3n195[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_11_ (.regout (p22[11]), .datain (rtlc3n195[11]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_10_ (.regout (p22[10]), .datain (rtlc3n195[10]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_1_ (.regout (p22[1]), .datain (rtlc3n195[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p22_0_ (.regout (p22[0]), .datain (p22_3n0r3_0_), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_9_ (.regout (p21[9]), .datain (rtlc3n189[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_8_ (.regout (p21[8]), .datain (rtlc3n189[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_7_ (.regout (p21[7]), .datain (rtlc3n189[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_6_ (.regout (p21[6]), .datain (rtlc3n189[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_5_ (.regout (p21[5]), .datain (rtlc3n189[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_4_ (.regout (p21[4]), .datain (rtlc3n189[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_3_ (.regout (p21[3]), .datain (rtlc3n189[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_2_ (.regout (p21[2]), .datain (rtlc3n189[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_11_ (.regout (p21[11]), .datain (rtlc3n189[11]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_10_ (.regout (p21[10]), .datain (rtlc3n189[10]), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_1_ (.regout (p21[1]), .datain (rtlc3n189[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_p21_0_ (.regout (p21[0]), .datain (p21_3n0r3_0_), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_edge (.regout (o_edge), .datain (prev_edge), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_fwd (.regout (max_fwd), .datain (p45), .sdata (
                       1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max_dir_0_ (.regout (o_dir[0]), .datain (nx27830z1), 
                       .sdata (1'b0), .clk (i_clock), .ena (nx27830z2), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix27830z52931 (.combout (nx27830z9), .dataa (p45), .datab (
                         max_fwd), .datac (nx27830z10), .datad (nx27830z11), .cin (
                         1'b0)) ;
                         defparam ix27830z52931.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix26026z52924 (.combout (nx26026z2), .dataa (p4s[11]), 
                         .datab (p4s[9]), .datac (p4s[8]), .datad (p4s[7]), .cin (
                         1'b0)) ;
                         defparam ix26026z52924.lut_mask = 16'h5444;
    cycloneii_lcell_comb ix27830z52933 (.combout (nx27830z11), .dataa (p43[1]), 
                         .datab (p43[0]), .datac (prev_max[1]), .datad (
                         prev_max[0]), .cin (1'b0)) ;
                         
                         defparam ix27830z52933.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix27830z52932 (.combout (nx27830z10), .dataa (p43[3]), 
                         .datab (p43[2]), .datac (prev_max[3]), .datad (
                         prev_max[2]), .cin (1'b0)) ;
                         
                         defparam ix27830z52932.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix27830z52930 (.combout (nx27830z8), .dataa (p43[5]), .datab (
                         p43[4]), .datac (prev_max[5]), .datad (prev_max[4]), .cin (
                         1'b0)) ;
                         defparam ix27830z52930.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix27830z52929 (.combout (nx27830z7), .dataa (p43[7]), .datab (
                         p43[6]), .datac (prev_max[7]), .datad (prev_max[6]), .cin (
                         1'b0)) ;
                         defparam ix27830z52929.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix27830z52928 (.combout (nx27830z6), .dataa (p43[9]), .datab (
                         p43[8]), .datac (prev_max[9]), .datad (prev_max[8]), .cin (
                         1'b0)) ;
                         defparam ix27830z52928.lut_mask = 16'h7bde;
    cycloneii_lcell_comb ix27830z52927 (.combout (nx27830z5), .dataa (p43[11]), 
                         .datab (p43[10]), .datac (prev_max[10]), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix27830z52927.lut_mask = 16'hbebe;
    cycloneii_lcell_comb ix27830z52926 (.combout (nx27830z4), .dataa (nx27830z5)
                         , .datab (nx27830z6), .datac (nx27830z7), .datad (
                         nx27830z8), .cin (1'b0)) ;
                         
                         defparam ix27830z52926.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix26026z52923 (.combout (nx26026z1), .dataa (p4s[11]), 
                         .datab (p4s[10]), .datac (nx26026z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26026z52923.lut_mask = 16'hf4f4;
    cycloneii_lcell_comb ix27830z52924 (.combout (nx27830z2), .dataa (nx27830z3)
                         , .datab (nx27830z4), .datac (nx27830z9), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix27830z52924.lut_mask = 16'hbaba;
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


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex, p_Rx_r, p_Tx_Reg_14n6ss1_0_, 
                 p_NOT_rtlcn2, p_rdata_7_, p_rdata_6_, p_rdata_5_, p_rdata_4_, 
                 p_rdata_3_, p_rdata_2_, p_rdata_1_, p_rdata_0_ ) ;

    input clk ;
    input rst ;
    input kirschout ;
    input [2:0]kirschdir ;
    input o_valid ;
    input [1:0]i_mode ;
    output [7:0]datain ;
    output o_pixavail ;
    input rxflex ;
    output txflex ;
    input p_Rx_r ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    output p_rdata_7_ ;
    output p_rdata_6_ ;
    output p_rdata_5_ ;
    output p_rdata_4_ ;
    output p_rdata_3_ ;
    output p_rdata_2_ ;
    output p_rdata_1_ ;
    output p_rdata_0_ ;

    wire rxerr, rxrdy, sdout_2_, sdout_1_, sdout_0_, state, dsend, mdata_3_, 
         mdata_1_, mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, nx33354z1, nx39480z2, nx43853z1, nx36748z2, nx39480z1, 
         nx58116z1, nx36748z3, nx18433z1, nx39480z6, nx39480z3, nx39480z4, 
         nx39480z5, nx39480z7, not_o_valid, nx36748z1, nx34754z1, nx33757z1;
    wire [114:0] xmplr_dummy ;




    UARTS i_uarts (.CLK (clk), .Din ({not_o_valid,xmplr_dummy [0],
          xmplr_dummy [1],xmplr_dummy [2],sdout_2_,sdout_2_,sdout_1_,sdout_0_})
          , .LD (ld_sdout), .Rx (rxflex), .RxErr (rxerr), .RxRDY (rxrdy), .p_Rx_r (
          p_Rx_r), .p_Tx_Reg_14n6ss1_0_ (p_Tx_Reg_14n6ss1_0_), .p_NOT_rtlcn2 (
          p_NOT_rtlcn2)) ;
    modgen_counter_16_0 modgen_counter_waitcount (.clock (clk), .q ({
                        waitcount[15],waitcount[14],waitcount[13],waitcount[12],
                        waitcount[11],waitcount[10],waitcount[9],waitcount[8],
                        waitcount[7],waitcount[6],waitcount[5],waitcount[4],
                        waitcount[3],waitcount[2],waitcount[1],waitcount[0]}), .clk_en (
                        nx33354z1), .sclear (nx39480z2)) ;
    assign not_o_valid = 1 ;
    cycloneii_lcell_ff reg_state (.regout (state), .datain (nx43853z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_2_ (.regout (sdout_2_), .datain (mdata_3_), .sdata (
                       1'b0), .clk (clk), .ena (nx43853z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_1_ (.regout (sdout_1_), .datain (mdata_1_), .sdata (
                       1'b0), .clk (clk), .ena (nx43853z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_0_ (.regout (sdout_0_), .datain (mdata_0_), .sdata (
                       1'b0), .clk (clk), .ena (nx43853z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    assign nx36748z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_3_ (.regout (mdata_3_), .datain (kirschdir[2])
                       , .sdata (nx36748z1), .clk (clk), .ena (nx36748z2), .aclr (
                       1'b0), .sclr (nx36748z3), .sload (not_o_valid)) ;
    assign nx34754z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_1_ (.regout (mdata_1_), .datain (kirschdir[0])
                       , .sdata (nx34754z1), .clk (clk), .ena (nx36748z2), .aclr (
                       1'b0), .sclr (nx36748z3), .sload (not_o_valid)) ;
    assign nx33757z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_0_ (.regout (mdata_0_), .datain (kirschout), .sdata (
                       nx33757z1), .clk (clk), .ena (nx36748z2), .aclr (1'b0), .sclr (
                       nx36748z3), .sload (not_o_valid)) ;
    cycloneii_lcell_ff reg_ld_sdout (.regout (ld_sdout), .datain (nx18433z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dsend (.regout (dsend), .datain (nx36748z2), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_charavail (.regout (o_pixavail), .datain (nx58116z1)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_ack (.regout (ack), .datain (nx39480z1), .sdata (1'b0
                       ), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_comb ix39480z52929 (.combout (nx39480z7), .dataa (
                         waitcount[11]), .datab (waitcount[10]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39480z52929.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix39480z52927 (.combout (nx39480z5), .dataa (
                         waitcount[9]), .datab (waitcount[8]), .datac (nx39480z6
                         ), .datad (nx39480z7), .cin (1'b0)) ;
                         
                         defparam ix39480z52927.lut_mask = 16'h1000;
    cycloneii_lcell_comb ix39480z52926 (.combout (nx39480z4), .dataa (
                         waitcount[3]), .datab (waitcount[2]), .datac (
                         waitcount[1]), .datad (waitcount[0]), .cin (1'b0)) ;
                         
                         defparam ix39480z52926.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix39480z52925 (.combout (nx39480z3), .dataa (
                         waitcount[7]), .datab (waitcount[6]), .datac (
                         waitcount[5]), .datad (waitcount[4]), .cin (1'b0)) ;
                         
                         defparam ix39480z52925.lut_mask = 16'h0040;
    cycloneii_lcell_comb ix39480z52928 (.combout (nx39480z6), .dataa (
                         waitcount[15]), .datab (waitcount[14]), .datac (
                         waitcount[13]), .datad (waitcount[12]), .cin (1'b0)) ;
                         
                         defparam ix39480z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix18433z52923 (.combout (nx18433z1), .dataa (state), .datab (
                         dsend), .datac (ld_sdout), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix18433z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix36748z52925 (.combout (nx36748z3), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix36748z52925.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix58116z52923 (.combout (nx58116z1), .dataa (o_pixavail
                         ), .datab (rxrdy), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix58116z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52923 (.combout (nx39480z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (nx39480z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix39480z52923.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix36748z52924 (.combout (nx36748z2), .dataa (o_pixavail
                         ), .datab (rxerr), .datac (ack), .datad (nx39480z2), .cin (
                         1'b0)) ;
                         defparam ix36748z52924.lut_mask = 16'hfe04;
    cycloneii_lcell_comb ix43853z52923 (.combout (nx43853z1), .dataa (state), .datab (
                         dsend), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix43853z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52924 (.combout (nx39480z2), .dataa (nx39480z3)
                         , .datab (nx39480z4), .datac (nx39480z5), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix39480z52924.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix33354z52923 (.combout (nx33354z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52923.lut_mask = 16'heeee;
endmodule


module modgen_counter_16_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx22081z30, nx52268z1, nx22081z28, nx53265z1, nx22081z26, 
         nx54262z1, nx22081z24, nx55259z1, nx22081z22, nx56256z1, nx22081z20, 
         nx57253z1, nx22081z18, nx58250z1, nx22081z16, nx59247z1, nx22081z14, 
         nx60244z1, nx22081z12, nx17096z1, nx22081z10, nx18093z1, nx22081z8, 
         nx19090z1, nx22081z6, nx20087z1, nx22081z4, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [81:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z4)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z6)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z8)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z10)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z26)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z28)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z12)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z28)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z30)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z14)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z16)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z18)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z18)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z20)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z20)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z22)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z22)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z24)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z24)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z26)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z30)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY, 
               p_Rx_r, p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2 ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;
    input p_Rx_r ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;

    wire [7:1]Tx_Reg;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire [1:0]TxFSM;
    wire RxFSM_6_, RxFSM_5_, RxFSM_3_, RxFSM_2_, RxFSM_1_, RxFSM_0_, nx65151z1, 
         nx50920z2, nx34606z1, not_rtlc17_X_0_n360, nx15541z1, nx13547z1, 
         nx14544z1, nx16538z1, nx11553z1, nx34394z1, not_Rx_r, nx32400z1, 
         nx13547z2, nx43465z1, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
         nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
         nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z2, 
         nx65151z2, nx65151z3, nx32400z2, nx32400z3, nx32400z4, nx15541z2, 
         nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, Tx_Reg_14n6ss1_8_;
    wire [247:0] xmplr_dummy ;




    modgen_counter_11_0 modgen_counter_RxDiv (.clock (CLK), .q ({RxDiv[10],
                        RxDiv[9],RxDiv[8],RxDiv[7],RxDiv[6],RxDiv[5],RxDiv[4],
                        RxDiv[3],RxDiv[2],RxDiv[1],RxDiv[0]}), .sclear (
                        nx65151z1)) ;
    modgen_counter_12_0 modgen_counter_TxDiv (.clock (CLK), .q ({TxDiv[11],
                        TxDiv[10],TxDiv[9],TxDiv[8],TxDiv[7],TxDiv[6],TxDiv[5],
                        TxDiv[4],TxDiv[3],TxDiv[2],TxDiv[1],TxDiv[0]}), .sclear (
                        nx32400z1)) ;
    assign not_Rx_r = ~p_Rx_r ;
    assign Tx_Reg_14n6ss1_8_ = 1 ;
    cycloneii_lcell_ff reg_Tx_Reg_7_ (.regout (Tx_Reg[7]), .datain (Din[7]), .sdata (
                       Tx_Reg_14n6ss1_8_), .clk (CLK), .ena (nx34606z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_Tx_Reg_6_ (.regout (Tx_Reg[6]), .datain (Din[7]), .sdata (
                       Tx_Reg[7]), .clk (CLK), .ena (nx34606z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_Tx_Reg_5_ (.regout (Tx_Reg[5]), .datain (Din[7]), .sdata (
                       Tx_Reg[6]), .clk (CLK), .ena (nx34606z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_Tx_Reg_4_ (.regout (Tx_Reg[4]), .datain (Din[3]), .sdata (
                       Tx_Reg[5]), .clk (CLK), .ena (nx34606z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_Tx_Reg_3_ (.regout (Tx_Reg[3]), .datain (Din[2]), .sdata (
                       Tx_Reg[4]), .clk (CLK), .ena (nx34606z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_Tx_Reg_2_ (.regout (Tx_Reg[2]), .datain (Din[1]), .sdata (
                       Tx_Reg[3]), .clk (CLK), .ena (nx34606z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_Tx_Reg_1_ (.regout (Tx_Reg[1]), .datain (Din[0]), .sdata (
                       Tx_Reg[2]), .clk (CLK), .ena (nx34606z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (TxFSM[1])) ;
    cycloneii_lcell_ff reg_TxFSM_1_ (.regout (TxFSM[1]), .datain (nx5605z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_0_ (.regout (TxFSM[0]), .datain (nx4608z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopTx (.regout (TopTx), .datain (nx32400z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopRx (.regout (TopRx), .datain (nx34394z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxRDYi (.regout (RxRDY), .datain (nx43465z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_6_ (.regout (RxFSM_6_), .datain (RxFSM_1_), .sdata (
                       RxFSM_5_), .clk (CLK), .ena (nx15541z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (not_Rx_r)) ;
    cycloneii_lcell_ff reg_RxFSM_5_ (.regout (RxFSM_5_), .datain (nx11553z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_3_ (.regout (RxFSM_3_), .datain (nx13547z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_2_ (.regout (RxFSM_2_), .datain (nx14544z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_1_ (.regout (RxFSM_1_), .datain (RxFSM_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_0_ (.regout (RxFSM_0_), .datain (nx16538z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxErr (.regout (RxErr), .datain (nx15376z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_3_ (.regout (TxBitCnt[3]), 
                       .datain (nx51917z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_2_ (.regout (TxBitCnt[2]), 
                       .datain (nx50920z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_1_ (.regout (TxBitCnt[1]), 
                       .datain (nx49923z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_0_ (.regout (TxBitCnt[0]), 
                       .datain (nx48926z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_3_ (.regout (RxBitCnt[3]), 
                       .datain (nx8373z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_2_ (.regout (RxBitCnt[2]), 
                       .datain (nx9370z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_1_ (.regout (RxBitCnt[1]), 
                       .datain (nx10367z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_0_ (.regout (RxBitCnt[0]), 
                       .datain (nx11364z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix8373z52924 (.combout (not_rtlc17_X_0_n360), .dataa (
                         TopRx), .datab (RxFSM_3_), .datac (RxFSM_0_), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8373z52924.lut_mask = 16'hb8b8;
    cycloneii_lcell_comb ix34606z52924 (.combout (nx34606z1), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix34606z52924.lut_mask = 16'h00ca;
    cycloneii_lcell_comb ix50920z52924 (.combout (nx50920z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix61140z52923 (.combout (p_Tx_Reg_14n6ss1_0_), .dataa (
                         Tx_Reg[1]), .datab (TxFSM[1]), .datac (TxFSM[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61140z52923.lut_mask = 16'h0b0b;
    cycloneii_lcell_comb ix65151z52923 (.combout (nx65151z1), .dataa (RxFSM_0_)
                         , .datab (nx34394z2), .datac (nx65151z2), .datad (
                         nx65151z3), .cin (1'b0)) ;
                         
                         defparam ix65151z52923.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix15541z52925 (.combout (nx15541z3), .dataa (Rx), .datab (
                         RxFSM_6_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15541z52925.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix8373z52925 (.combout (nx8373z2), .dataa (RxBitCnt[3])
                         , .datab (RxBitCnt[2]), .datac (RxBitCnt[1]), .datad (
                         RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix8373z52925.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix51917z52926 (.combout (nx51917z4), .dataa (
                         TxBitCnt[3]), .datab (TxBitCnt[2]), .datac (nx50920z2)
                         , .datad (nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix51917z52926.lut_mask = 16'hf0f1;
    cycloneii_lcell_comb ix4608z52925 (.combout (nx4608z3), .dataa (TxBitCnt[3])
                         , .datab (TxBitCnt[2]), .datac (TxBitCnt[1]), .datad (
                         TxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix4608z52925.lut_mask = 16'hfeff;
    cycloneii_lcell_comb ix4608z52924 (.combout (nx4608z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix4608z52924.lut_mask = 16'h3335;
    cycloneii_lcell_comb ix15541z52924 (.combout (nx15541z2), .dataa (Rx), .datab (
                         TopRx), .datac (RxFSM_6_), .datad (RxFSM_0_), .cin (
                         1'b0)) ;
                         defparam ix15541z52924.lut_mask = 16'h00ac;
    cycloneii_lcell_comb ix32400z52926 (.combout (nx32400z4), .dataa (TxDiv[3])
                         , .datab (TxDiv[2]), .datac (TxDiv[1]), .datad (
                         TxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix32400z52926.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix32400z52925 (.combout (nx32400z3), .dataa (TxDiv[7])
                         , .datab (TxDiv[6]), .datac (TxDiv[5]), .datad (
                         TxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix32400z52925.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix32400z52924 (.combout (nx32400z2), .dataa (TxDiv[11])
                         , .datab (TxDiv[10]), .datac (TxDiv[9]), .datad (
                         TxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix32400z52924.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix65151z52925 (.combout (nx65151z3), .dataa (RxDiv[2])
                         , .datab (RxDiv[1]), .datac (RxDiv[0]), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix65151z52925.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix65151z52924 (.combout (nx65151z2), .dataa (RxDiv[6])
                         , .datab (RxDiv[5]), .datac (RxDiv[4]), .datad (
                         RxDiv[3]), .cin (1'b0)) ;
                         
                         defparam ix65151z52924.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix34394z52924 (.combout (nx34394z2), .dataa (RxDiv[10])
                         , .datab (RxDiv[9]), .datac (RxDiv[8]), .datad (
                         RxDiv[7]), .cin (1'b0)) ;
                         
                         defparam ix34394z52924.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix15376z52923 (.combout (nx15376z1), .dataa (RxErr), .datab (
                         RxRDY), .datac (RxFSM_6_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15376z52923.lut_mask = 16'hf2f2;
    cycloneii_lcell_comb ix11364z52923 (.combout (nx11364z1), .dataa (TopRx), .datab (
                         RxBitCnt[0]), .datac (RxFSM_3_), .datad (RxFSM_0_), .cin (
                         1'b0)) ;
                         defparam ix11364z52923.lut_mask = 16'h406c;
    cycloneii_lcell_comb ix10367z52923 (.combout (nx10367z1), .dataa (
                         RxBitCnt[1]), .datab (RxBitCnt[0]), .datac (RxFSM_0_), 
                         .datad (not_rtlc17_X_0_n360), .cin (1'b0)) ;
                         
                         defparam ix10367z52923.lut_mask = 16'h06aa;
    cycloneii_lcell_comb ix9370z52923 (.combout (nx9370z1), .dataa (RxBitCnt[2])
                         , .datab (RxFSM_0_), .datac (not_rtlc17_X_0_n360), .datad (
                         nx9370z2), .cin (1'b0)) ;
                         
                         defparam ix9370z52923.lut_mask = 16'h1a2a;
    cycloneii_lcell_comb ix8373z52923 (.combout (nx8373z1), .dataa (RxBitCnt[3])
                         , .datab (RxFSM_0_), .datac (not_rtlc17_X_0_n360), .datad (
                         nx8373z2), .cin (1'b0)) ;
                         
                         defparam ix8373z52923.lut_mask = 16'h3a0a;
    cycloneii_lcell_comb ix48926z52923 (.combout (nx48926z1), .dataa (TopTx), .datab (
                         TxBitCnt[0]), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix48926z52923.lut_mask = 16'hce6c;
    cycloneii_lcell_comb ix49923z52923 (.combout (nx49923z1), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (nx50920z2)
                         , .datad (nx51917z2), .cin (1'b0)) ;
                         
                         defparam ix49923z52923.lut_mask = 16'h09aa;
    cycloneii_lcell_comb ix50920z52923 (.combout (nx50920z1), .dataa (
                         TxBitCnt[2]), .datab (nx50920z2), .datac (nx51917z2), .datad (
                         nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix50920z52923.lut_mask = 16'h2a1a;
    cycloneii_lcell_comb ix51917z52923 (.combout (nx51917z1), .dataa (
                         TxBitCnt[3]), .datab (nx51917z2), .datac (nx51917z3), .datad (
                         nx51917z4), .cin (1'b0)) ;
                         
                         defparam ix51917z52923.lut_mask = 16'heea2;
    cycloneii_lcell_comb ix61812z52923 (.combout (p_NOT_rtlcn2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix61812z52923.lut_mask = 16'h0cca;
    cycloneii_lcell_comb ix9370z52924 (.combout (nx9370z2), .dataa (RxBitCnt[1])
                         , .datab (RxBitCnt[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix9370z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix51917z52925 (.combout (nx51917z3), .dataa (
                         TxBitCnt[2]), .datab (TxBitCnt[1]), .datac (TxBitCnt[0]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51917z52925.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix50920z52925 (.combout (nx50920z3), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix51917z52924 (.combout (nx51917z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (TxFSM[0]), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix51917z52924.lut_mask = 16'h2828;
    cycloneii_lcell_comb ix4608z52923 (.combout (nx4608z1), .dataa (TxFSM[1]), .datab (
                         TxFSM[0]), .datac (nx4608z2), .datad (nx4608z3), .cin (
                         1'b0)) ;
                         defparam ix4608z52923.lut_mask = 16'hc1c3;
    cycloneii_lcell_comb ix43465z52923 (.combout (nx43465z1), .dataa (TopRx), .datab (
                         p_Rx_r), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix43465z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix13547z52924 (.combout (nx13547z2), .dataa (
                         RxBitCnt[3]), .datab (RxBitCnt[2]), .datac (RxBitCnt[1]
                         ), .datad (RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix13547z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52923 (.combout (nx32400z1), .dataa (nx32400z2)
                         , .datab (nx32400z3), .datac (nx32400z4), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix32400z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix34394z52923 (.combout (nx34394z1), .dataa (RxFSM_0_)
                         , .datab (nx34394z2), .datac (nx65151z2), .datad (
                         nx65151z3), .cin (1'b0)) ;
                         
                         defparam ix34394z52923.lut_mask = 16'h4000;
    cycloneii_lcell_comb ix11553z52923 (.combout (nx11553z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11553z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix16538z52923 (.combout (nx16538z1), .dataa (p_Rx_r), .datab (
                         RxFSM_6_), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix16538z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix14544z52923 (.combout (nx14544z1), .dataa (p_Rx_r), .datab (
                         RxFSM_3_), .datac (RxFSM_1_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix14544z52923.lut_mask = 16'hdcdc;
    cycloneii_lcell_comb ix13547z52923 (.combout (nx13547z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix13547z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix15541z52923 (.combout (nx15541z1), .dataa (p_Rx_r), .datab (
                         RxFSM_0_), .datac (nx15541z2), .datad (nx15541z3), .cin (
                         1'b0)) ;
                         defparam ix15541z52923.lut_mask = 16'hf4f0;
    cycloneii_lcell_comb ix5605z52923 (.combout (nx5605z1), .dataa (TxFSM[0]), .datab (
                         TxFSM[1]), .datac (TopTx), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix5605z52923.lut_mask = 16'h6c6c;
endmodule


module modgen_counter_12_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
         nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
         nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
         nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
         nx_modgen_counter_12_0_vcc_net;
    wire [73:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix18093z52933 (.combout (nx53265z1), .cout (nx18093z18)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z20)) ;
                         
                         defparam ix18093z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52933.sum_lutc_input = "cin";
    assign nx_modgen_counter_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix18093z52923 (.combout (nx18093z1), .dataa (q[11]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z2)) ;
                         
                         defparam ix18093z52923.lut_mask = 16'h5a00;
                         
                         defparam ix18093z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52925 (.combout (nx17096z1), .cout (nx18093z2)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z4)) ;
                         
                         defparam ix18093z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52926 (.combout (nx60244z1), .cout (nx18093z4)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z6)) ;
                         
                         defparam ix18093z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52927 (.combout (nx59247z1), .cout (nx18093z6)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z8)) ;
                         
                         defparam ix18093z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52928 (.combout (nx58250z1), .cout (nx18093z8)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z10)) ;
                         
                         defparam ix18093z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52934 (.combout (nx52268z1), .cout (nx18093z20)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z22)) ;
                         
                         defparam ix18093z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52929 (.combout (nx57253z1), .cout (nx18093z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z12)) ;
                         
                         defparam ix18093z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52930 (.combout (nx56256z1), .cout (nx18093z12)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z14)) ;
                         
                         defparam ix18093z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52931 (.combout (nx55259z1), .cout (nx18093z14)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z16)) ;
                         
                         defparam ix18093z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52932 (.combout (nx54262z1), .cout (nx18093z16)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z18)) ;
                         
                         defparam ix18093z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52935 (.combout (nx51271z1), .cout (nx18093z22)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix18093z52935.lut_mask = 16'h55aa;
endmodule


module modgen_counter_11_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, 
         nx54262z1, nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, 
         nx57253z1, nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, 
         nx60244z1, nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net;
    wire [67:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix17096z52932 (.combout (nx53265z1), .cout (nx17096z16)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z18)) ;
                         
                         defparam ix17096z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52932.sum_lutc_input = "cin";
    assign nx_modgen_counter_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix17096z52923 (.combout (nx17096z1), .dataa (q[10]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z2)) ;
                         
                         defparam ix17096z52923.lut_mask = 16'h5a00;
                         
                         defparam ix17096z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52925 (.combout (nx60244z1), .cout (nx17096z2)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z4)) ;
                         
                         defparam ix17096z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52926 (.combout (nx59247z1), .cout (nx17096z4)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z6)) ;
                         
                         defparam ix17096z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52927 (.combout (nx58250z1), .cout (nx17096z6)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z8)) ;
                         
                         defparam ix17096z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52933 (.combout (nx52268z1), .cout (nx17096z18)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z20)) ;
                         
                         defparam ix17096z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52928 (.combout (nx57253z1), .cout (nx17096z8)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z10)) ;
                         
                         defparam ix17096z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52929 (.combout (nx56256z1), .cout (nx17096z10)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z12)) ;
                         
                         defparam ix17096z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52930 (.combout (nx55259z1), .cout (nx17096z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z14)) ;
                         
                         defparam ix17096z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52931 (.combout (nx54262z1), .cout (nx17096z14)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z16)) ;
                         
                         defparam ix17096z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52934 (.combout (nx51271z1), .cout (nx17096z20)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix17096z52934.lut_mask = 16'h55aa;
endmodule

