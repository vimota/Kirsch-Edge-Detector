//
// Verilog description for cell top_kirsch, 
// Tue Jul 22 01:38:15 2014
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

    wire [1:0]o_mode_dup0;
    wire pixavail;
    wire [7:0]pixel;
    wire o_valid, kirschout;
    wire [2:0]dir;
    wire [7:0]rowcount;
    wire nrst_int, clk_int, rxflex_int, o_nrst_dup0;
    wire [16:16]debug_led_red_dup0;
    wire o_sevenseg_dup0_7_, nx59584z1, nx60581z1, nx61578z1, nx63572z1, 
         nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, nx58587z1, 
         nx62575z1, nx30z1, nx1027z1, nx28674z1, Tx_Reg_14n6ss1_0__dup_4, 
         NOT_rtlcn2_dup_5, nx41851z1, nx42848z1, nx43845z1, nx44842z1, nx45839z1, 
         nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, nx63537z1, 
         nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2;
    wire [1363:0] xmplr_dummy ;




    uw_uart u_uw_uart (.clk (clk_int), .rst (o_nrst_dup0), .kirschout (kirschout
            ), .kirschdir ({dir[2],dir[1],dir[0]}), .o_valid (o_valid), .i_mode (
            {xmplr_dummy [0],o_mode_dup0[0]}), .datain ({pixel[7],pixel[6],
            pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],pixel[0]}), .o_pixavail (
            pixavail), .rxflex (rxflex_int), .p_Tx_Reg_14n6ss1_0_ (
            Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (NOT_rtlcn2_dup_5), .p_nrst_int (
            nrst_int)) ;
    kirsch u_kirsch (.i_clock (clk_int), .i_reset (o_nrst_dup0), .i_valid (
           pixavail), .i_pixel ({pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],
           pixel[2],pixel[1],pixel[0]}), .o_valid (o_valid), .o_edge (kirschout)
           , .o_dir ({dir[2],dir[1],dir[0]}), .o_mode ({o_mode_dup0[1],
           o_mode_dup0[0]}), .o_row ({rowcount[7],rowcount[6],rowcount[5],
           rowcount[4],rowcount[3],rowcount[2],rowcount[1],rowcount[0]}), .p_nrst_int (
           nrst_int)) ;
    assign o_nrst_dup0 = ~nrst_int ;
    assign debug_led_red_dup0[16] = 0 ;
    assign o_sevenseg_dup0_7_ = 1 ;
    assign nx21351z1 = ~nx21351z2 ;
    cycloneii_io rxflex_ibuf (.combout (rxflex_int), .padio (rxflex), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam rxflex_ibuf.operation_mode = "input";
                 
                 defparam rxflex_ibuf.output_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam rxflex_ibuf.oe_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam rxflex_ibuf.input_register_mode = "none";
    cycloneii_lcell_ff reg_out_txflex_obuf (.regout (nx21351z2), .datain (
                       Tx_Reg_14n6ss1_0__dup_4), .sdata (1'b0), .clk (clk_int), 
                       .ena (NOT_rtlcn2_dup_5), .aclr (o_nrst_dup0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_ (.regout (nx50824z1), .datain (
                       nx1027z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_ (.regout (nx49827z1), .datain (
                       nx30z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_ (.regout (nx47833z1), .datain (
                       nx63572z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_ (.regout (nx46836z1), .datain (
                       nx62575z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_ (.regout (nx45839z1), .datain (
                       nx61578z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_ (.regout (nx44842z1), .datain (
                       nx60581z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_ (.regout (nx43845z1), .datain (
                       nx59584z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_ (.regout (nx992z1), .datain (
                       nx29671z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_ (.regout (nx65531z1), .datain (
                       nx28674z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_ (.regout (nx64534z1), .datain (
                       nx27677z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_ (.regout (nx63537z1), .datain (
                       nx26680z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_ (.regout (nx62540z1), .datain (
                       nx25683z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_ (.regout (nx42848z1), .datain (
                       nx58587z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_ (.regout (nx41851z1), .datain (
                       nx57590z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io o_sevenseg_obuf_7_ (.padio (o_sevenseg[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_sevenseg_obuf_7_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_7_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_output_clock_enable = "false";
                 defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_15_ (.padio (o_sevenseg[15]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_sevenseg_obuf_15_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_15_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.input_register_mode = "none";
    cycloneii_io o_nrst_obuf (.padio (o_nrst), .datain (o_nrst_dup0), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_nrst_obuf.operation_mode = "output";
                 
                 defparam o_nrst_obuf.output_register_mode = "none";
                 
                 defparam o_nrst_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_nrst_obuf.oe_register_mode = "none";
                 
                 defparam o_nrst_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_nrst_obuf.input_register_mode = "none";
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
    cycloneii_io nrst_ibuf (.combout (nrst_int), .padio (nrst), .datain (1'b0), 
                 .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam nrst_ibuf.operation_mode = "input";
                 
                 defparam nrst_ibuf.output_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam nrst_ibuf.oe_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam nrst_ibuf.input_register_mode = "none";
    cycloneii_io ix21351z43919 (.padio (txflex), .datain (nx21351z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21351z43919.operation_mode = "output";
                 
                 defparam ix21351z43919.output_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21351z43919.oe_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21351z43919.input_register_mode = "none";
    cycloneii_io ix992z43919 (.padio (o_sevenseg[14]), .datain (nx992z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix992z43919.operation_mode = "output";
                 
                 defparam ix992z43919.output_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix992z43919.oe_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix992z43919.input_register_mode = "none";
    cycloneii_io ix65531z43919 (.padio (o_sevenseg[13]), .datain (nx65531z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix65531z43919.operation_mode = "output";
                 
                 defparam ix65531z43919.output_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix65531z43919.oe_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix65531z43919.input_register_mode = "none";
    cycloneii_io ix64534z43919 (.padio (o_sevenseg[12]), .datain (nx64534z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix64534z43919.operation_mode = "output";
                 
                 defparam ix64534z43919.output_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix64534z43919.oe_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix64534z43919.input_register_mode = "none";
    cycloneii_io ix63537z43919 (.padio (o_sevenseg[11]), .datain (nx63537z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63537z43919.operation_mode = "output";
                 
                 defparam ix63537z43919.output_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63537z43919.oe_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63537z43919.input_register_mode = "none";
    cycloneii_io ix62540z43919 (.padio (o_sevenseg[10]), .datain (nx62540z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62540z43919.operation_mode = "output";
                 
                 defparam ix62540z43919.output_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62540z43919.oe_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62540z43919.input_register_mode = "none";
    cycloneii_io ix50824z43919 (.padio (o_sevenseg[9]), .datain (nx50824z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix50824z43919.operation_mode = "output";
                 
                 defparam ix50824z43919.output_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix50824z43919.oe_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix50824z43919.input_register_mode = "none";
    cycloneii_io ix49827z43919 (.padio (o_sevenseg[8]), .datain (nx49827z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix49827z43919.operation_mode = "output";
                 
                 defparam ix49827z43919.output_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix49827z43919.oe_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix49827z43919.input_register_mode = "none";
    cycloneii_io ix47833z43919 (.padio (o_sevenseg[6]), .datain (nx47833z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix47833z43919.operation_mode = "output";
                 
                 defparam ix47833z43919.output_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix47833z43919.oe_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix47833z43919.input_register_mode = "none";
    cycloneii_io ix46836z43919 (.padio (o_sevenseg[5]), .datain (nx46836z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix46836z43919.operation_mode = "output";
                 
                 defparam ix46836z43919.output_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix46836z43919.oe_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix46836z43919.input_register_mode = "none";
    cycloneii_io ix45839z43919 (.padio (o_sevenseg[4]), .datain (nx45839z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45839z43919.operation_mode = "output";
                 
                 defparam ix45839z43919.output_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45839z43919.oe_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45839z43919.input_register_mode = "none";
    cycloneii_io ix44842z43919 (.padio (o_sevenseg[3]), .datain (nx44842z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix44842z43919.operation_mode = "output";
                 
                 defparam ix44842z43919.output_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix44842z43919.oe_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix44842z43919.input_register_mode = "none";
    cycloneii_io ix43845z43919 (.padio (o_sevenseg[2]), .datain (nx43845z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix43845z43919.operation_mode = "output";
                 
                 defparam ix43845z43919.output_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix43845z43919.oe_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix43845z43919.input_register_mode = "none";
    cycloneii_io ix42848z43919 (.padio (o_sevenseg[1]), .datain (nx42848z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix42848z43919.operation_mode = "output";
                 
                 defparam ix42848z43919.output_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix42848z43919.oe_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix42848z43919.input_register_mode = "none";
    cycloneii_io ix41851z43919 (.padio (o_sevenseg[0]), .datain (nx41851z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix41851z43919.operation_mode = "output";
                 
                 defparam ix41851z43919.output_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix41851z43919.oe_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix41851z43919.input_register_mode = "none";
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
    cycloneii_lcell_comb ix28674z52923 (.combout (nx28674z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix28674z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix1027z52923 (.combout (nx1027z1), .dataa (rowcount[7])
                         , .datab (rowcount[6]), .datac (rowcount[5]), .datad (
                         rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix1027z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix30z52923 (.combout (nx30z1), .dataa (rowcount[7]), .datab (
                         rowcount[6]), .datac (rowcount[5]), .datad (rowcount[4]
                         ), .cin (1'b0)) ;
                         
                         defparam ix30z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix62575z52923 (.combout (nx62575z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix62575z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix58587z52923 (.combout (nx58587z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix58587z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix57590z52923 (.combout (nx57590z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix57590z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix29671z52923 (.combout (nx29671z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix29671z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix27677z52923 (.combout (nx27677z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix27677z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix26680z52923 (.combout (nx26680z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix26680z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix25683z52923 (.combout (nx25683z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix25683z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix63572z52923 (.combout (nx63572z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix63572z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix61578z52923 (.combout (nx61578z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix61578z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix60581z52923 (.combout (nx60581z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix60581z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix59584z52923 (.combout (nx59584z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix59584z52923.lut_mask = 16'h5704;
endmodule


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, o_image0_0_, o_image0_1_, o_image0_2_, 
                o_image1_0_, o_image1_1_, o_image1_2_, o_image2_0_, o_image2_1_, 
                o_image2_2_, debug_key, debug_switch, debug_column, 
                debug_led_red, debug_led_grn, debug_num_0, debug_num_1, 
                debug_num_2, debug_num_3, debug_num_4, debug_num_5, debug_num_6, 
                debug_num_7, debug_num_8, px304, p_m_o_mode_0_, p_nrst_int ) ;

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
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;
    output [3:0]debug_num_6 ;
    output [3:0]debug_num_7 ;
    output [3:0]debug_num_8 ;
    output px304 ;
    output p_m_o_mode_0_ ;
    input p_nrst_int ;

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
    wire o_image0_0__7__rename1642, o_image0_0__6__rename1643, 
         o_image0_0__5__rename1644, o_image0_0__4__rename1645, 
         o_image0_0__3__rename1646, o_image0_0__2__rename1647, 
         o_image0_0__1__rename1648, o_image0_0__0__rename1649, 
         o_image0_1__7__rename1650, o_image0_1__6__rename1651, 
         o_image0_1__5__rename1652, o_image0_1__4__rename1653, 
         o_image0_1__3__rename1654, o_image0_1__2__rename1655, 
         o_image0_1__1__rename1656, o_image0_1__0__rename1657, 
         o_image0_2__7__rename1658, o_image0_2__6__rename1659, 
         o_image0_2__5__rename1660, o_image0_2__4__rename1661, 
         o_image0_2__3__rename1662, o_image0_2__2__rename1663, 
         o_image0_2__1__rename1664, o_image0_2__0__rename1665, 
         o_image1_0__7__rename1666, o_image1_0__6__rename1667, 
         o_image1_0__5__rename1668, o_image1_0__4__rename1669, 
         o_image1_0__3__rename1670, o_image1_0__2__rename1671, 
         o_image1_0__1__rename1672, o_image1_0__0__rename1673, 
         o_image1_2__7__rename1674, o_image1_2__6__rename1675, 
         o_image1_2__5__rename1676, o_image1_2__4__rename1677, 
         o_image1_2__3__rename1678, o_image1_2__2__rename1679, 
         o_image1_2__1__rename1680, o_image1_2__0__rename1681, 
         o_image2_0__7__rename1682, o_image2_0__6__rename1683, 
         o_image2_0__5__rename1684, o_image2_0__4__rename1685, 
         o_image2_0__3__rename1686, o_image2_0__2__rename1687, 
         o_image2_0__1__rename1688, o_image2_0__0__rename1689, 
         o_image2_1__7__rename1690, o_image2_1__6__rename1691, 
         o_image2_1__5__rename1692, o_image2_1__4__rename1693, 
         o_image2_1__3__rename1694, o_image2_1__2__rename1695, 
         o_image2_1__1__rename1696, o_image2_1__0__rename1697, 
         o_image2_2__7__rename1698, o_image2_2__6__rename1699, 
         o_image2_2__5__rename1700, o_image2_2__4__rename1701, 
         o_image2_2__3__rename1702, o_image2_2__2__rename1703, 
         o_image2_2__1__rename1704, o_image2_2__0__rename1705;
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
    wire nx20836z1, nx57127z1, nx35105z1, nx57127z2, nx64956z1, p5m_1__dup_10, 
         p5m_0__dup_14, nx63959z1, NOT_f_state_3_;
    wire [437:0] xmplr_dummy ;




    assign o_mode[1] = p_nrst_int ;
    memory u_memory (.i_valid (i_valid), .i_pixel ({i_pixel[7],i_pixel[6],
           i_pixel[5],i_pixel[4],i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), 
           .i_clock (i_clock), .o_valid (m_o_valid), .o_mode ({m_o_mode[1],
           m_o_mode[0]}), .o_row ({m_o_row[7],m_o_row[6],m_o_row[5],m_o_row[4],
           m_o_row[3],m_o_row[2],m_o_row[1],m_o_row[0]}), .o_image0_0_ ({
           o_image0_0__7__rename1642,o_image0_0__6__rename1643,
           o_image0_0__5__rename1644,o_image0_0__4__rename1645,
           o_image0_0__3__rename1646,o_image0_0__2__rename1647,
           o_image0_0__1__rename1648,o_image0_0__0__rename1649}), .o_image0_1_ (
           {o_image0_1__7__rename1650,o_image0_1__6__rename1651,
           o_image0_1__5__rename1652,o_image0_1__4__rename1653,
           o_image0_1__3__rename1654,o_image0_1__2__rename1655,
           o_image0_1__1__rename1656,o_image0_1__0__rename1657}), .o_image0_2_ (
           {o_image0_2__7__rename1658,o_image0_2__6__rename1659,
           o_image0_2__5__rename1660,o_image0_2__4__rename1661,
           o_image0_2__3__rename1662,o_image0_2__2__rename1663,
           o_image0_2__1__rename1664,o_image0_2__0__rename1665}), .o_image1_0_ (
           {o_image1_0__7__rename1666,o_image1_0__6__rename1667,
           o_image1_0__5__rename1668,o_image1_0__4__rename1669,
           o_image1_0__3__rename1670,o_image1_0__2__rename1671,
           o_image1_0__1__rename1672,o_image1_0__0__rename1673}), .o_image1_2_ (
           {o_image1_2__7__rename1674,o_image1_2__6__rename1675,
           o_image1_2__5__rename1676,o_image1_2__4__rename1677,
           o_image1_2__3__rename1678,o_image1_2__2__rename1679,
           o_image1_2__1__rename1680,o_image1_2__0__rename1681}), .o_image2_0_ (
           {o_image2_0__7__rename1682,o_image2_0__6__rename1683,
           o_image2_0__5__rename1684,o_image2_0__4__rename1685,
           o_image2_0__3__rename1686,o_image2_0__2__rename1687,
           o_image2_0__1__rename1688,o_image2_0__0__rename1689}), .o_image2_1_ (
           {o_image2_1__7__rename1690,o_image2_1__6__rename1691,
           o_image2_1__5__rename1692,o_image2_1__4__rename1693,
           o_image2_1__3__rename1694,o_image2_1__2__rename1695,
           o_image2_1__1__rename1696,o_image2_1__0__rename1697}), .o_image2_2_ (
           {o_image2_2__7__rename1698,o_image2_2__6__rename1699,
           o_image2_2__5__rename1700,o_image2_2__4__rename1701,
           o_image2_2__3__rename1702,o_image2_2__2__rename1703,
           o_image2_2__1__rename1704,o_image2_2__0__rename1705}), .p_nrst_int_dup_22 (
           p_nrst_int)) ;
    flow u_flow (.t1 ({f_t1[7],f_t1[6],f_t1[5],f_t1[4],f_t1[3],f_t1[2],f_t1[1],
         f_t1[0]}), .t2 ({f_t2[7],f_t2[6],f_t2[5],f_t2[4],f_t2[3],f_t2[2],
         f_t2[1],f_t2[0]}), .t3 ({f_t3[7],f_t3[6],f_t3[5],f_t3[4],f_t3[3],
         f_t3[2],f_t3[1],f_t3[0]}), .b1 ({f_b1[7],f_b1[6],f_b1[5],f_b1[4],
         f_b1[3],f_b1[2],f_b1[1],f_b1[0]}), .b2 ({f_b2[7],f_b2[6],f_b2[5],
         f_b2[4],f_b2[3],f_b2[2],f_b2[1],f_b2[0]}), .b3 ({f_b3[7],f_b3[6],
         f_b3[5],f_b3[4],f_b3[3],f_b3[2],f_b3[1],f_b3[0]}), .i1 ({f_i1[7],
         f_i1[6],f_i1[5],f_i1[4],f_i1[3],f_i1[2],f_i1[1],f_i1[0]}), .i2 ({
         f_i2[7],f_i2[6],f_i2[5],f_i2[4],f_i2[3],f_i2[2],f_i2[1],f_i2[0]}), .i_clock (
         i_clock), .i_reset (i_reset), .i_valid (nx20836z1), .i_mode ({
         f_i_mode[1],f_i_mode[0]}), .i_row ({f_i_row[7],f_i_row[6],f_i_row[5],
         f_i_row[4],f_i_row[3],f_i_row[2],f_i_row[1],f_i_row[0]}), .o_dir ({
         o_dir[2],o_dir[1],o_dir[0]}), .o_edge (o_edge), .o_valid (o_valid), .o_row (
         {o_row[7],o_row[6],o_row[5],o_row[4],o_row[3],o_row[2],o_row[1],
         o_row[0]}), .p_p5m_1_ (p5m_1__dup_10), .p_p5m_0_ (p5m_0__dup_14), .p_nrst_int_dup_22 (
         p_nrst_int)) ;
    assign f_state[0] = ~nx63959z1 ;
    assign NOT_f_state_3_ = ~f_state[3] ;
    cycloneii_lcell_ff reg_f_t3_next_7_ (.regout (f_t3_next[7]), .datain (
                       f_i1_next[7]), .sdata (o_image1_0__7__rename1666), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_6_ (.regout (f_t3_next[6]), .datain (
                       f_i1_next[6]), .sdata (o_image1_0__6__rename1667), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_5_ (.regout (f_t3_next[5]), .datain (
                       f_i1_next[5]), .sdata (o_image1_0__5__rename1668), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_4_ (.regout (f_t3_next[4]), .datain (
                       f_i1_next[4]), .sdata (o_image1_0__4__rename1669), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_3_ (.regout (f_t3_next[3]), .datain (
                       f_i1_next[3]), .sdata (o_image1_0__3__rename1670), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_2_ (.regout (f_t3_next[2]), .datain (
                       f_i1_next[2]), .sdata (o_image1_0__2__rename1671), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_1_ (.regout (f_t3_next[1]), .datain (
                       f_i1_next[1]), .sdata (o_image1_0__1__rename1672), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t3_next_0_ (.regout (f_t3_next[0]), .datain (
                       f_i1_next[0]), .sdata (o_image1_0__0__rename1673), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_7_ (.regout (f_t2_next[7]), .datain (
                       f_t3_next[7]), .sdata (o_image0_0__7__rename1642), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_6_ (.regout (f_t2_next[6]), .datain (
                       f_t3_next[6]), .sdata (o_image0_0__6__rename1643), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_5_ (.regout (f_t2_next[5]), .datain (
                       f_t3_next[5]), .sdata (o_image0_0__5__rename1644), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_4_ (.regout (f_t2_next[4]), .datain (
                       f_t3_next[4]), .sdata (o_image0_0__4__rename1645), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_3_ (.regout (f_t2_next[3]), .datain (
                       f_t3_next[3]), .sdata (o_image0_0__3__rename1646), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_2_ (.regout (f_t2_next[2]), .datain (
                       f_t3_next[2]), .sdata (o_image0_0__2__rename1647), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_1_ (.regout (f_t2_next[1]), .datain (
                       f_t3_next[1]), .sdata (o_image0_0__1__rename1648), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t2_next_0_ (.regout (f_t2_next[0]), .datain (
                       f_t3_next[0]), .sdata (o_image0_0__0__rename1649), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_7_ (.regout (f_t1_next[7]), .datain (
                       f_t2_next[7]), .sdata (o_image0_1__7__rename1650), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_6_ (.regout (f_t1_next[6]), .datain (
                       f_t2_next[6]), .sdata (o_image0_1__6__rename1651), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_5_ (.regout (f_t1_next[5]), .datain (
                       f_t2_next[5]), .sdata (o_image0_1__5__rename1652), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_4_ (.regout (f_t1_next[4]), .datain (
                       f_t2_next[4]), .sdata (o_image0_1__4__rename1653), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_3_ (.regout (f_t1_next[3]), .datain (
                       f_t2_next[3]), .sdata (o_image0_1__3__rename1654), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_2_ (.regout (f_t1_next[2]), .datain (
                       f_t2_next[2]), .sdata (o_image0_1__2__rename1655), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_1_ (.regout (f_t1_next[1]), .datain (
                       f_t2_next[1]), .sdata (o_image0_1__1__rename1656), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_t1_next_0_ (.regout (f_t1_next[0]), .datain (
                       f_t2_next[0]), .sdata (o_image0_1__0__rename1657), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_state_3_ (.regout (f_state[3]), .datain (f_state[2]
                       ), .sdata (1'b0), .clk (i_clock), .ena (nx64956z1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_state_2_ (.regout (f_state[2]), .datain (f_state[1]
                       ), .sdata (1'b0), .clk (i_clock), .ena (nx64956z1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_state_1_ (.regout (f_state[1]), .datain (f_state[0]
                       ), .sdata (1'b0), .clk (i_clock), .ena (nx64956z1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_state_0_ (.regout (nx63959z1), .datain (
                       NOT_f_state_3_), .sdata (1'b0), .clk (i_clock), .ena (
                       nx64956z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_f_i_row_next_7_ (.regout (f_i_row_next[7]), .datain (
                       m_o_row[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_6_ (.regout (f_i_row_next[6]), .datain (
                       m_o_row[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_5_ (.regout (f_i_row_next[5]), .datain (
                       m_o_row[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_4_ (.regout (f_i_row_next[4]), .datain (
                       m_o_row[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_3_ (.regout (f_i_row_next[3]), .datain (
                       m_o_row[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_2_ (.regout (f_i_row_next[2]), .datain (
                       m_o_row[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_1_ (.regout (f_i_row_next[1]), .datain (
                       m_o_row[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_row_next_0_ (.regout (f_i_row_next[0]), .datain (
                       m_o_row[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_mode_next_1_ (.regout (f_i_mode_next[1]), .datain (
                       m_o_mode[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i_mode_next_0_ (.regout (f_i_mode_next[0]), .datain (
                       m_o_mode[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx35105z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_i2_next_7_ (.regout (f_i2_next[7]), .datain (
                       f_t1_next[7]), .sdata (o_image0_2__7__rename1658), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_6_ (.regout (f_i2_next[6]), .datain (
                       f_t1_next[6]), .sdata (o_image0_2__6__rename1659), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_5_ (.regout (f_i2_next[5]), .datain (
                       f_t1_next[5]), .sdata (o_image0_2__5__rename1660), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_4_ (.regout (f_i2_next[4]), .datain (
                       f_t1_next[4]), .sdata (o_image0_2__4__rename1661), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_3_ (.regout (f_i2_next[3]), .datain (
                       f_t1_next[3]), .sdata (o_image0_2__3__rename1662), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_2_ (.regout (f_i2_next[2]), .datain (
                       f_t1_next[2]), .sdata (o_image0_2__2__rename1663), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_1_ (.regout (f_i2_next[1]), .datain (
                       f_t1_next[1]), .sdata (o_image0_2__1__rename1664), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i2_next_0_ (.regout (f_i2_next[0]), .datain (
                       f_t1_next[0]), .sdata (o_image0_2__0__rename1665), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_7_ (.regout (f_i1_next[7]), .datain (
                       f_b1_next[7]), .sdata (o_image2_0__7__rename1682), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_6_ (.regout (f_i1_next[6]), .datain (
                       f_b1_next[6]), .sdata (o_image2_0__6__rename1683), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_5_ (.regout (f_i1_next[5]), .datain (
                       f_b1_next[5]), .sdata (o_image2_0__5__rename1684), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_4_ (.regout (f_i1_next[4]), .datain (
                       f_b1_next[4]), .sdata (o_image2_0__4__rename1685), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_3_ (.regout (f_i1_next[3]), .datain (
                       f_b1_next[3]), .sdata (o_image2_0__3__rename1686), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_2_ (.regout (f_i1_next[2]), .datain (
                       f_b1_next[2]), .sdata (o_image2_0__2__rename1687), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_1_ (.regout (f_i1_next[1]), .datain (
                       f_b1_next[1]), .sdata (o_image2_0__1__rename1688), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_i1_next_0_ (.regout (f_i1_next[0]), .datain (
                       f_b1_next[0]), .sdata (o_image2_0__0__rename1689), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_7_ (.regout (f_b3_next[7]), .datain (
                       f_i2_next[7]), .sdata (o_image1_2__7__rename1674), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_6_ (.regout (f_b3_next[6]), .datain (
                       f_i2_next[6]), .sdata (o_image1_2__6__rename1675), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_5_ (.regout (f_b3_next[5]), .datain (
                       f_i2_next[5]), .sdata (o_image1_2__5__rename1676), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_4_ (.regout (f_b3_next[4]), .datain (
                       f_i2_next[4]), .sdata (o_image1_2__4__rename1677), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_3_ (.regout (f_b3_next[3]), .datain (
                       f_i2_next[3]), .sdata (o_image1_2__3__rename1678), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_2_ (.regout (f_b3_next[2]), .datain (
                       f_i2_next[2]), .sdata (o_image1_2__2__rename1679), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_1_ (.regout (f_b3_next[1]), .datain (
                       f_i2_next[1]), .sdata (o_image1_2__1__rename1680), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b3_next_0_ (.regout (f_b3_next[0]), .datain (
                       f_i2_next[0]), .sdata (o_image1_2__0__rename1681), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_7_ (.regout (f_b2_next[7]), .datain (
                       f_b3_next[7]), .sdata (o_image2_2__7__rename1698), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_6_ (.regout (f_b2_next[6]), .datain (
                       f_b3_next[6]), .sdata (o_image2_2__6__rename1699), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_5_ (.regout (f_b2_next[5]), .datain (
                       f_b3_next[5]), .sdata (o_image2_2__5__rename1700), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_4_ (.regout (f_b2_next[4]), .datain (
                       f_b3_next[4]), .sdata (o_image2_2__4__rename1701), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_3_ (.regout (f_b2_next[3]), .datain (
                       f_b3_next[3]), .sdata (o_image2_2__3__rename1702), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_2_ (.regout (f_b2_next[2]), .datain (
                       f_b3_next[2]), .sdata (o_image2_2__2__rename1703), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_1_ (.regout (f_b2_next[1]), .datain (
                       f_b3_next[1]), .sdata (o_image2_2__1__rename1704), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b2_next_0_ (.regout (f_b2_next[0]), .datain (
                       f_b3_next[0]), .sdata (o_image2_2__0__rename1705), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_7_ (.regout (f_b1_next[7]), .datain (
                       f_b2_next[7]), .sdata (o_image2_1__7__rename1690), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_6_ (.regout (f_b1_next[6]), .datain (
                       f_b2_next[6]), .sdata (o_image2_1__6__rename1691), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_5_ (.regout (f_b1_next[5]), .datain (
                       f_b2_next[5]), .sdata (o_image2_1__5__rename1692), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_4_ (.regout (f_b1_next[4]), .datain (
                       f_b2_next[4]), .sdata (o_image2_1__4__rename1693), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_3_ (.regout (f_b1_next[3]), .datain (
                       f_b2_next[3]), .sdata (o_image2_1__3__rename1694), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_2_ (.regout (f_b1_next[2]), .datain (
                       f_b2_next[2]), .sdata (o_image2_1__2__rename1695), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_1_ (.regout (f_b1_next[1]), .datain (
                       f_b2_next[1]), .sdata (o_image2_1__1__rename1696), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_ff reg_f_b1_next_0_ (.regout (f_b1_next[0]), .datain (
                       f_b2_next[0]), .sdata (o_image2_1__0__rename1697), .clk (
                       i_clock), .ena (nx57127z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57127z2)) ;
    cycloneii_lcell_comb ix20836z52988 (.combout (f_i_mode[1]), .dataa (
                         f_i_mode_next[1]), .datab (nx57127z2), .datac (
                         p_nrst_int), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52988.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix64956z52924 (.combout (nx64956z1), .dataa (nx57127z2)
                         , .datab (m_o_valid), .datac (p_nrst_int), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix64956z52924.lut_mask = 16'hdfdf;
    cycloneii_lcell_comb ix57127z52924 (.combout (nx57127z2), .dataa (f_state[3]
                         ), .datab (f_state[2]), .datac (f_state[1]), .datad (
                         nx63959z1), .cin (1'b0)) ;
                         
                         defparam ix57127z52924.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix20836z52987 (.combout (nx20836z1), .dataa (m_o_valid)
                         , .datab (nx57127z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix20836z52987.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix20836z52989 (.combout (f_i_mode[0]), .dataa (
                         m_o_mode[0]), .datab (f_i_mode_next[0]), .datac (
                         nx57127z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20836z52989.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix35105z52923 (.combout (nx35105z1), .dataa (nx57127z2)
                         , .datab (m_o_valid), .datac (p_nrst_int), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix35105z52923.lut_mask = 16'h8080;
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
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__0__rename1681), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52986.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52985 (.combout (f_i2[1]), .dataa (f_i2_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__1__rename1680), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52985.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52984 (.combout (f_i2[2]), .dataa (f_i2_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__2__rename1679), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52984.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52983 (.combout (f_i2[3]), .dataa (f_i2_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__3__rename1678), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52983.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52982 (.combout (f_i2[4]), .dataa (f_i2_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__4__rename1677), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52982.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52981 (.combout (f_i2[5]), .dataa (f_i2_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__5__rename1676), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52981.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52980 (.combout (f_i2[6]), .dataa (f_i2_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__6__rename1675), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52980.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52979 (.combout (f_i2[7]), .dataa (f_i2_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image1_2__7__rename1674), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52979.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52978 (.combout (f_i1[0]), .dataa (f_i1_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__0__rename1673), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52978.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52977 (.combout (f_i1[1]), .dataa (f_i1_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__1__rename1672), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52977.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52976 (.combout (f_i1[2]), .dataa (f_i1_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__2__rename1671), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52976.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52975 (.combout (f_i1[3]), .dataa (f_i1_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__3__rename1670), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52975.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52974 (.combout (f_i1[4]), .dataa (f_i1_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__4__rename1669), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52974.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52973 (.combout (f_i1[5]), .dataa (f_i1_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__5__rename1668), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52973.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52972 (.combout (f_i1[6]), .dataa (f_i1_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__6__rename1667), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52972.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52971 (.combout (f_i1[7]), .dataa (f_i1_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image1_0__7__rename1666), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52971.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52970 (.combout (f_b3[0]), .dataa (f_b3_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__0__rename1705), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52970.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52969 (.combout (f_b3[1]), .dataa (f_b3_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__1__rename1704), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52969.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52968 (.combout (f_b3[2]), .dataa (f_b3_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__2__rename1703), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52968.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52967 (.combout (f_b3[3]), .dataa (f_b3_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__3__rename1702), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52967.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52966 (.combout (f_b3[4]), .dataa (f_b3_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__4__rename1701), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52966.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52965 (.combout (f_b3[5]), .dataa (f_b3_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__5__rename1700), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52965.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix57127z52923 (.combout (nx57127z1), .dataa (nx57127z2)
                         , .datab (m_o_valid), .datac (p_nrst_int), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix57127z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix20836z52964 (.combout (f_b3[6]), .dataa (f_b3_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__6__rename1699), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52964.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52963 (.combout (f_b3[7]), .dataa (f_b3_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image2_2__7__rename1698), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52963.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52962 (.combout (f_b2[0]), .dataa (f_b2_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__0__rename1697), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52962.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52961 (.combout (f_b2[1]), .dataa (f_b2_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__1__rename1696), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52961.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52960 (.combout (f_b2[2]), .dataa (f_b2_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__2__rename1695), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52960.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52959 (.combout (f_b2[3]), .dataa (f_b2_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__3__rename1694), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52959.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52958 (.combout (f_b2[4]), .dataa (f_b2_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__4__rename1693), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52958.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52957 (.combout (f_b2[5]), .dataa (f_b2_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__5__rename1692), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52957.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52956 (.combout (f_b2[6]), .dataa (f_b2_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__6__rename1691), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52956.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52955 (.combout (f_b2[7]), .dataa (f_b2_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image2_1__7__rename1690), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52955.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52954 (.combout (f_b1[0]), .dataa (f_b1_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__0__rename1689), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52954.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52953 (.combout (f_b1[1]), .dataa (f_b1_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__1__rename1688), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52953.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52952 (.combout (f_b1[2]), .dataa (f_b1_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__2__rename1687), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52952.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52951 (.combout (f_b1[3]), .dataa (f_b1_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__3__rename1686), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52951.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52950 (.combout (f_b1[4]), .dataa (f_b1_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__4__rename1685), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52950.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52949 (.combout (f_b1[5]), .dataa (f_b1_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__5__rename1684), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52949.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52948 (.combout (f_b1[6]), .dataa (f_b1_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__6__rename1683), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52948.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52947 (.combout (f_b1[7]), .dataa (f_b1_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image2_0__7__rename1682), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52947.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52946 (.combout (f_t3[0]), .dataa (f_t3_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__0__rename1649), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52946.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52945 (.combout (f_t3[1]), .dataa (f_t3_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__1__rename1648), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52945.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52944 (.combout (f_t3[2]), .dataa (f_t3_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__2__rename1647), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52944.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52943 (.combout (f_t3[3]), .dataa (f_t3_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__3__rename1646), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52943.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52942 (.combout (f_t3[4]), .dataa (f_t3_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__4__rename1645), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52942.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52941 (.combout (f_t3[5]), .dataa (f_t3_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__5__rename1644), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52941.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52940 (.combout (f_t3[6]), .dataa (f_t3_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__6__rename1643), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52940.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52939 (.combout (f_t3[7]), .dataa (f_t3_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image0_0__7__rename1642), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52939.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52938 (.combout (f_t2[0]), .dataa (f_t2_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__0__rename1657), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52938.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52937 (.combout (f_t2[1]), .dataa (f_t2_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__1__rename1656), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52937.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52936 (.combout (f_t2[2]), .dataa (f_t2_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__2__rename1655), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52936.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52935 (.combout (f_t2[3]), .dataa (f_t2_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__3__rename1654), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52935.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52934 (.combout (f_t2[4]), .dataa (f_t2_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__4__rename1653), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52934.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52933 (.combout (f_t2[5]), .dataa (f_t2_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__5__rename1652), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52933.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52932 (.combout (f_t2[6]), .dataa (f_t2_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__6__rename1651), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52932.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52931 (.combout (f_t2[7]), .dataa (f_t2_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image0_1__7__rename1650), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52931.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52930 (.combout (f_t1[0]), .dataa (f_t1_next[0]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__0__rename1665), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52930.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52929 (.combout (f_t1[1]), .dataa (f_t1_next[1]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__1__rename1664), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52929.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52928 (.combout (f_t1[2]), .dataa (f_t1_next[2]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__2__rename1663), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52928.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52927 (.combout (f_t1[3]), .dataa (f_t1_next[3]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__3__rename1662), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52927.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52926 (.combout (f_t1[4]), .dataa (f_t1_next[4]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__4__rename1661), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52926.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52925 (.combout (f_t1[5]), .dataa (f_t1_next[5]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__5__rename1660), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52925.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52924 (.combout (f_t1[6]), .dataa (f_t1_next[6]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__6__rename1659), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix20836z52923 (.combout (f_t1[7]), .dataa (f_t1_next[7]
                         ), .datab (nx57127z2), .datac (
                         o_image0_2__7__rename1658), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20836z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix15976z52923 (.combout (o_mode[0]), .dataa (
                         p5m_1__dup_10), .datab (p5m_0__dup_14), .datac (
                         m_o_mode[0]), .datad (p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix15976z52923.lut_mask = 16'hf8ff;
endmodule


module flow ( t1, t2, t3, b1, b2, b3, i1, i2, i_clock, i_reset, i_valid, i_mode, 
              i_row, o_dir, o_edge, o_valid, o_mode, o_row, p_p5m_1_, p_p5m_0_, 
              p_nrst_int_dup_22 ) ;

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
    output p_p5m_1_ ;
    output p_p5m_0_ ;
    input p_nrst_int_dup_22 ;

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
         nx20946z1, nx26081z1, nx16808z1, nx21943z1, nx27078z1, nx17805z1, 
         nx22940z1, nx28075z1, nx18802z1, nx23937z1, nx29072z1, nx19799z1, 
         nx24934z1, nx30069z1, nx20796z1, nx25931z1, nx31066z1, nx21793z1, 
         nx26928z1, nx32063z1, nx22790z1, nx27925z1, nx33060z1, nx41013z1, 
         nx46148z1, nx14253z1, nx42010z1, nx47145z1, nx13256z1, nx47310z2, 
         nx26026z1, nx5049z1, nx30752z1, nx27830z1, nx25033z1, PWR, nx47310z5, 
         nx47310z1, nx29521z1, nx25836z1, nx26833z1, nx26833z2, nx26026z2, 
         nx25836z2, nx47310z6, nx47310z7, nx47310z8, nx47310z9, nx47310z10, 
         nx47310z11, nx47310z12, nx25836z3, nx26026z4, nx26833z3, nx47310z4, 
         nx28524z1, NOT_state_3_;
    wire [764:0] xmplr_dummy ;




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
    cycloneii_lcell_ff ix258_reg_p5r_7_ (.regout (o_row[7]), .datain (nx26081z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_6_ (.regout (o_row[6]), .datain (nx27078z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_5_ (.regout (o_row[5]), .datain (nx28075z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_4_ (.regout (o_row[4]), .datain (nx29072z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_3_ (.regout (o_row[3]), .datain (nx30069z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_2_ (.regout (o_row[2]), .datain (nx31066z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_1_ (.regout (o_row[1]), .datain (nx32063z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p5r_0_ (.regout (o_row[0]), .datain (nx33060z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_7_ (.regout (nx26081z1), .datain (nx20946z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_6_ (.regout (nx27078z1), .datain (nx21943z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_5_ (.regout (nx28075z1), .datain (nx22940z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_4_ (.regout (nx29072z1), .datain (nx23937z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_3_ (.regout (nx30069z1), .datain (nx24934z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_2_ (.regout (nx31066z1), .datain (nx25931z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_1_ (.regout (nx32063z1), .datain (nx26928z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix258_reg_p4r_0_ (.regout (nx33060z1), .datain (nx27925z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
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
    cycloneii_lcell_comb ix5049z52923 (.combout (nx5049z1), .dataa (state[3]), .datab (
                         p40), .datac (p_nrst_int_dup_22), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix5049z52923.lut_mask = 16'hbfbf;
    cycloneii_lcell_comb ix47310z52923 (.combout (nx47310z1), .dataa (nx47310z2)
                         , .datab (state[3]), .datac (p40), .datad (
                         p_nrst_int_dup_22), .cin (1'b0)) ;
                         
                         defparam ix47310z52923.lut_mask = 16'hefff;
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
    cycloneii_lcell_comb ix29521z52924 (.combout (nx29521z1), .dataa (p40), .datab (
                         p_nrst_int_dup_22), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix29521z52924.lut_mask = 16'hbbbb;
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
                p_nrst_int_dup_22 ) ;

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
    input p_nrst_int_dup_22 ;

    wire o_column_0__rename1423;
    wire [7:0]mem_data;
    wire [2:0]mem_wrn;
    wire [2:0]mem_wrn_current;
    wire first_bubble, busySignal, busySignalDelayed;
    wire [7:1]column;
    wire [7:0]row;
    wire o_image1_1__7__rename1464, o_image1_1__6__rename1465, 
         o_image1_1__5__rename1466, o_image1_1__4__rename1467, 
         o_image1_1__3__rename1468, o_image1_1__2__rename1469, 
         o_image1_1__1__rename1470, o_image1_1__dup0_0_;
    wire [7:0]mem_q_0_;
    wire [7:0]mem_q_1_;
    wire [7:0]mem_q_2_;
    wire nx8852z1, not_first_bubble, not_rtlc2_X_0_n244, nx47386z2, nx15763z2, 
         nx17757z1, nx60567z2, nx8852z2, nx33254z1, nx57224z1, nx39109z5, 
         nx40106z1, nx15763z3, nx8852z3, nx60567z1, b_0_, b_1_, b_0__dup_353, 
         b_1__dup_352, nx47386z1, nx5021z1, nx4024z1, nx3027z1, nx2030z1, 
         nx1033z1, nx36z1, nx64575z1, nx63578z1, nx55380z1, nx56377z1, nx57374z1, 
         nx58371z1, nx59368z1, nx60365z1, nx61362z1, nx62359z1, nx39109z2, 
         nx8852z4, nx8852z6, nx8852z7, nx60567z3, nx60567z4, nx60567z5, 
         nx62359z2, nx61362z2, nx60365z2, nx59368z2, nx58371z2, nx57374z2, 
         nx56377z2, nx55380z2, nx63578z2, nx64575z2, nx36z2, nx1033z2, nx2030z2, 
         nx3027z2, nx4024z2, nx5021z2, nx60567z6, nx39109z3, nx8852z5, nx39109z4, 
         nx39109z1, nx15763z1;
    wire [572:0] xmplr_dummy ;




    assign o_mode[1] = p_nrst_int_dup_22 ;
    modgen_counter_8_0 modgen_counter_row (.clock (i_clock), .q ({row[7],row[6],
                       row[5],row[4],row[3],row[2],row[1],row[0]}), .sclear (
                       nx8852z1), .cnt_en (not_rtlc2_X_0_n244), .p_rtlc5n55 (
                       nx8852z2), .p_nrst_int_dup_22 (p_nrst_int_dup_22)) ;
    modgen_counter_8_1 modgen_counter_column (.clock (i_clock), .q ({column[7],
                       column[6],column[5],column[4],column[3],column[2],
                       column[1],o_column_0__rename1423}), .clk_en (nx47386z1), 
                       .sclear (nx47386z2), .cnt_en (first_bubble)) ;
    ram_dq_8_0 u_mem1_mem (.wr_data1 ({mem_data[7],mem_data[6],mem_data[5],
               mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]}), .rd_data1 (
               {mem_q_0_[7],mem_q_0_[6],mem_q_0_[5],mem_q_0_[4],mem_q_0_[3],
               mem_q_0_[2],mem_q_0_[1],mem_q_0_[0]}), .addr1 ({column[7],
               column[6],column[5],column[4],column[3],column[2],column[1],
               o_column_0__rename1423}), .wr_clk1 (i_clock), .wr_ena1 (
               mem_wrn[0])) ;
    ram_dq_8_1 u_mem2_mem (.wr_data1 ({mem_data[7],mem_data[6],mem_data[5],
               mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]}), .rd_data1 (
               {mem_q_1_[7],mem_q_1_[6],mem_q_1_[5],mem_q_1_[4],mem_q_1_[3],
               mem_q_1_[2],mem_q_1_[1],mem_q_1_[0]}), .addr1 ({column[7],
               column[6],column[5],column[4],column[3],column[2],column[1],
               o_column_0__rename1423}), .wr_clk1 (i_clock), .wr_ena1 (
               mem_wrn[1])) ;
    ram_dq_8_2 u_mem3_mem (.wr_data1 ({mem_data[7],mem_data[6],mem_data[5],
               mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]}), .rd_data1 (
               {mem_q_2_[7],mem_q_2_[6],mem_q_2_[5],mem_q_2_[4],mem_q_2_[3],
               mem_q_2_[2],mem_q_2_[1],mem_q_2_[0]}), .addr1 ({column[7],
               column[6],column[5],column[4],column[3],column[2],column[1],
               o_column_0__rename1423}), .wr_clk1 (i_clock), .wr_ena1 (
               mem_wrn[2])) ;
    assign not_first_bubble = ~first_bubble ;
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
                       nx39109z5)) ;
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
    cycloneii_lcell_ff reg_mem_data_7_ (.regout (mem_data[7]), .datain (
                       i_pixel[7]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_6_ (.regout (mem_data[6]), .datain (
                       i_pixel[6]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_5_ (.regout (mem_data[5]), .datain (
                       i_pixel[5]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_4_ (.regout (mem_data[4]), .datain (
                       i_pixel[4]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_3_ (.regout (mem_data[3]), .datain (
                       i_pixel[3]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_2_ (.regout (mem_data[2]), .datain (
                       i_pixel[2]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_1_ (.regout (mem_data[1]), .datain (
                       i_pixel[1]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mem_data_0_ (.regout (mem_data[0]), .datain (
                       i_pixel[0]), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_first_bubble (.regout (first_bubble), .datain (
                       i_valid), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_busySignalDelayed (.regout (busySignalDelayed), .datain (
                       busySignal), .sdata (1'b0), .clk (i_clock), .ena (1'b1), 
                       .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_busySignal (.regout (busySignal), .datain (nx33254z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (nx8852z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_buffer2_2__7_ (.regout (o_image2_2_[7]), .datain (
                       mem_q_2_[7]), .sdata (mem_data[7]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__6_ (.regout (o_image2_2_[6]), .datain (
                       mem_q_2_[6]), .sdata (mem_data[6]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__5_ (.regout (o_image2_2_[5]), .datain (
                       mem_q_2_[5]), .sdata (mem_data[5]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__4_ (.regout (o_image2_2_[4]), .datain (
                       mem_q_2_[4]), .sdata (mem_data[4]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__3_ (.regout (o_image2_2_[3]), .datain (
                       mem_q_2_[3]), .sdata (mem_data[3]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__2_ (.regout (o_image2_2_[2]), .datain (
                       mem_q_2_[2]), .sdata (mem_data[2]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__1_ (.regout (o_image2_2_[1]), .datain (
                       mem_q_2_[1]), .sdata (mem_data[1]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_2__0_ (.regout (o_image2_2_[0]), .datain (
                       mem_q_2_[0]), .sdata (mem_data[0]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx57224z1)) ;
    cycloneii_lcell_ff reg_buffer2_1__7_ (.regout (o_image2_1_[7]), .datain (
                       nx62359z1), .sdata (mem_q_1_[7]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__6_ (.regout (o_image2_1_[6]), .datain (
                       nx61362z1), .sdata (mem_q_1_[6]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__5_ (.regout (o_image2_1_[5]), .datain (
                       nx60365z1), .sdata (mem_q_1_[5]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__4_ (.regout (o_image2_1_[4]), .datain (
                       nx59368z1), .sdata (mem_q_1_[4]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__3_ (.regout (o_image2_1_[3]), .datain (
                       nx58371z1), .sdata (mem_q_1_[3]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__2_ (.regout (o_image2_1_[2]), .datain (
                       nx57374z1), .sdata (mem_q_1_[2]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__1_ (.regout (o_image2_1_[1]), .datain (
                       nx56377z1), .sdata (mem_q_1_[1]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_1__0_ (.regout (o_image2_1_[0]), .datain (
                       nx55380z1), .sdata (mem_q_1_[0]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       b_1__dup_352)) ;
    cycloneii_lcell_ff reg_buffer2_0__7_ (.regout (o_image2_0_[7]), .datain (
                       nx63578z1), .sdata (mem_q_0_[7]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__6_ (.regout (o_image2_0_[6]), .datain (
                       nx64575z1), .sdata (mem_q_0_[6]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__5_ (.regout (o_image2_0_[5]), .datain (
                       nx36z1), .sdata (mem_q_0_[5]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__4_ (.regout (o_image2_0_[4]), .datain (
                       nx1033z1), .sdata (mem_q_0_[4]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__3_ (.regout (o_image2_0_[3]), .datain (
                       nx2030z1), .sdata (mem_q_0_[3]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__2_ (.regout (o_image2_0_[2]), .datain (
                       nx3027z1), .sdata (mem_q_0_[2]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__1_ (.regout (o_image2_0_[1]), .datain (
                       nx4024z1), .sdata (mem_q_0_[1]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer2_0__0_ (.regout (o_image2_0_[0]), .datain (
                       nx5021z1), .sdata (mem_q_0_[0]), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (b_1_)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__7_ (.regout (o_image1_2_[7]), .datain (
                       o_image2_2_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__6_ (.regout (o_image1_2_[6]), .datain (
                       o_image2_2_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__5_ (.regout (o_image1_2_[5]), .datain (
                       o_image2_2_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__4_ (.regout (o_image1_2_[4]), .datain (
                       o_image2_2_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__3_ (.regout (o_image1_2_[3]), .datain (
                       o_image2_2_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__2_ (.regout (o_image1_2_[2]), .datain (
                       o_image2_2_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__1_ (.regout (o_image1_2_[1]), .datain (
                       o_image2_2_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_2__0_ (.regout (o_image1_2_[0]), .datain (
                       o_image2_2_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__7_ (.regout (o_image1_1__7__rename1464), .datain (
                       o_image2_1_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__6_ (.regout (o_image1_1__6__rename1465), .datain (
                       o_image2_1_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__5_ (.regout (o_image1_1__5__rename1466), .datain (
                       o_image2_1_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__4_ (.regout (o_image1_1__4__rename1467), .datain (
                       o_image2_1_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__3_ (.regout (o_image1_1__3__rename1468), .datain (
                       o_image2_1_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__2_ (.regout (o_image1_1__2__rename1469), .datain (
                       o_image2_1_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__1_ (.regout (o_image1_1__1__rename1470), .datain (
                       o_image2_1_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_1__0_ (.regout (o_image1_1__dup0_0_), .datain (
                       o_image2_1_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__7_ (.regout (o_image1_0_[7]), .datain (
                       o_image2_0_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__6_ (.regout (o_image1_0_[6]), .datain (
                       o_image2_0_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__5_ (.regout (o_image1_0_[5]), .datain (
                       o_image2_0_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__4_ (.regout (o_image1_0_[4]), .datain (
                       o_image2_0_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__3_ (.regout (o_image1_0_[3]), .datain (
                       o_image2_0_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__2_ (.regout (o_image1_0_[2]), .datain (
                       o_image2_0_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__1_ (.regout (o_image1_0_[1]), .datain (
                       o_image2_0_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer1_0__0_ (.regout (o_image1_0_[0]), .datain (
                       o_image2_0_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__7_ (.regout (o_image0_2_[7]), .datain (
                       o_image1_2_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__6_ (.regout (o_image0_2_[6]), .datain (
                       o_image1_2_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__5_ (.regout (o_image0_2_[5]), .datain (
                       o_image1_2_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__4_ (.regout (o_image0_2_[4]), .datain (
                       o_image1_2_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__3_ (.regout (o_image0_2_[3]), .datain (
                       o_image1_2_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__2_ (.regout (o_image0_2_[2]), .datain (
                       o_image1_2_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__1_ (.regout (o_image0_2_[1]), .datain (
                       o_image1_2_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_2__0_ (.regout (o_image0_2_[0]), .datain (
                       o_image1_2_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_1__7_ (.regout (o_image0_1_[7]), .datain (
                       o_image1_1__7__rename1464), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__6_ (.regout (o_image0_1_[6]), .datain (
                       o_image1_1__6__rename1465), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__5_ (.regout (o_image0_1_[5]), .datain (
                       o_image1_1__5__rename1466), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__4_ (.regout (o_image0_1_[4]), .datain (
                       o_image1_1__4__rename1467), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__3_ (.regout (o_image0_1_[3]), .datain (
                       o_image1_1__3__rename1468), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__2_ (.regout (o_image0_1_[2]), .datain (
                       o_image1_1__2__rename1469), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__1_ (.regout (o_image0_1_[1]), .datain (
                       o_image1_1__1__rename1470), .sdata (1'b0), .clk (i_clock)
                       , .ena (first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_buffer0_1__0_ (.regout (o_image0_1_[0]), .datain (
                       o_image1_1__dup0_0_), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__7_ (.regout (o_image0_0_[7]), .datain (
                       o_image1_0_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__6_ (.regout (o_image0_0_[6]), .datain (
                       o_image1_0_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__5_ (.regout (o_image0_0_[5]), .datain (
                       o_image1_0_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__4_ (.regout (o_image0_0_[4]), .datain (
                       o_image1_0_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__3_ (.regout (o_image0_0_[3]), .datain (
                       o_image1_0_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__2_ (.regout (o_image0_0_[2]), .datain (
                       o_image1_0_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__1_ (.regout (o_image0_0_[1]), .datain (
                       o_image1_0_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_buffer0_0__0_ (.regout (o_image0_0_[0]), .datain (
                       o_image1_0_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       first_bubble), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_comb ix39109z52926 (.combout (nx39109z4), .dataa (i_valid), 
                         .datab (mem_wrn_current[2]), .datac (mem_wrn_current[1]
                         ), .datad (mem_wrn_current[0]), .cin (1'b0)) ;
                         
                         defparam ix39109z52926.lut_mask = 16'h5557;
    cycloneii_lcell_comb ix8852z52927 (.combout (nx8852z5), .dataa (column[4]), 
                         .datab (column[3]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix8852z52927.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix39109z52925 (.combout (nx39109z3), .dataa (i_valid), 
                         .datab (first_bubble), .datac (nx8852z3), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix39109z52925.lut_mask = 16'h1515;
    cycloneii_lcell_comb ix60567z52928 (.combout (nx60567z6), .dataa (column[3])
                         , .datab (column[2]), .datac (column[1]), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix60567z52928.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix5021z52924 (.combout (nx5021z2), .dataa (mem_data[0])
                         , .datab (nx60567z2), .datac (mem_q_1_[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix5021z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix4024z52924 (.combout (nx4024z2), .dataa (mem_data[1])
                         , .datab (nx60567z2), .datac (mem_q_1_[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix4024z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix3027z52924 (.combout (nx3027z2), .dataa (mem_data[2])
                         , .datab (nx60567z2), .datac (mem_q_1_[2]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3027z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix2030z52924 (.combout (nx2030z2), .dataa (mem_data[3])
                         , .datab (nx60567z2), .datac (mem_q_1_[3]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix2030z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix1033z52924 (.combout (nx1033z2), .dataa (mem_data[4])
                         , .datab (nx60567z2), .datac (mem_q_1_[4]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix1033z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix36z52924 (.combout (nx36z2), .dataa (mem_data[5]), .datab (
                         nx60567z2), .datac (mem_q_1_[5]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix36z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix64575z52924 (.combout (nx64575z2), .dataa (
                         mem_data[6]), .datab (nx60567z2), .datac (mem_q_1_[6])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix63578z52925 (.combout (nx63578z2), .dataa (
                         mem_data[7]), .datab (nx60567z2), .datac (mem_q_1_[7])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52925.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix55380z52924 (.combout (nx55380z2), .dataa (
                         mem_data[0]), .datab (nx60567z2), .datac (mem_q_0_[0])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55380z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix56377z52924 (.combout (nx56377z2), .dataa (
                         mem_data[1]), .datab (nx60567z2), .datac (mem_q_0_[1])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix56377z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix57374z52924 (.combout (nx57374z2), .dataa (
                         mem_data[2]), .datab (nx60567z2), .datac (mem_q_0_[2])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57374z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix58371z52924 (.combout (nx58371z2), .dataa (
                         mem_data[3]), .datab (nx60567z2), .datac (mem_q_0_[3])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58371z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix59368z52924 (.combout (nx59368z2), .dataa (
                         mem_data[4]), .datab (nx60567z2), .datac (mem_q_0_[4])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix59368z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix60365z52924 (.combout (nx60365z2), .dataa (
                         mem_data[5]), .datab (nx60567z2), .datac (mem_q_0_[5])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60365z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix61362z52924 (.combout (nx61362z2), .dataa (
                         mem_data[6]), .datab (nx60567z2), .datac (mem_q_0_[6])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61362z52924.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix62359z52925 (.combout (nx62359z2), .dataa (
                         mem_data[7]), .datab (nx60567z2), .datac (mem_q_0_[7])
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52925.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix60567z52927 (.combout (nx60567z5), .dataa (column[6])
                         , .datab (column[5]), .datac (column[4]), .datad (
                         nx60567z2), .cin (1'b0)) ;
                         
                         defparam ix60567z52927.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix60567z52926 (.combout (nx60567z4), .dataa (o_valid), 
                         .datab (column[7]), .datac (nx60567z2), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix60567z52926.lut_mask = 16'heaea;
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
    cycloneii_lcell_comb ix8852z52926 (.combout (nx8852z4), .dataa (
                         o_column_0__rename1423), .datab (column[7]), .datac (
                         column[6]), .datad (column[5]), .cin (1'b0)) ;
                         
                         defparam ix8852z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix62359z52923 (.combout (nx62359z1), .dataa (
                         mem_q_2_[7]), .datab (b_0__dup_353), .datac (nx62359z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix61362z52923 (.combout (nx61362z1), .dataa (
                         mem_q_2_[6]), .datab (b_0__dup_353), .datac (nx61362z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61362z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix60365z52923 (.combout (nx60365z1), .dataa (
                         mem_q_2_[5]), .datab (b_0__dup_353), .datac (nx60365z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60365z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix59368z52923 (.combout (nx59368z1), .dataa (
                         mem_q_2_[4]), .datab (b_0__dup_353), .datac (nx59368z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix59368z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix58371z52923 (.combout (nx58371z1), .dataa (
                         mem_q_2_[3]), .datab (b_0__dup_353), .datac (nx58371z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58371z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix57374z52923 (.combout (nx57374z1), .dataa (
                         mem_q_2_[2]), .datab (b_0__dup_353), .datac (nx57374z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57374z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix56377z52923 (.combout (nx56377z1), .dataa (
                         mem_q_2_[1]), .datab (b_0__dup_353), .datac (nx56377z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix56377z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix55380z52923 (.combout (nx55380z1), .dataa (
                         mem_q_2_[0]), .datab (b_0__dup_353), .datac (nx55380z2)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55380z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix63578z52923 (.combout (nx63578z1), .dataa (
                         mem_q_2_[7]), .datab (b_0_), .datac (nx63578z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix64575z52923 (.combout (nx64575z1), .dataa (
                         mem_q_2_[6]), .datab (b_0_), .datac (nx64575z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64575z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix36z52923 (.combout (nx36z1), .dataa (mem_q_2_[5]), .datab (
                         b_0_), .datac (nx36z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix1033z52923 (.combout (nx1033z1), .dataa (mem_q_2_[4])
                         , .datab (b_0_), .datac (nx1033z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix1033z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix2030z52923 (.combout (nx2030z1), .dataa (mem_q_2_[3])
                         , .datab (b_0_), .datac (nx2030z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix2030z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix3027z52923 (.combout (nx3027z1), .dataa (mem_q_2_[2])
                         , .datab (b_0_), .datac (nx3027z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix3027z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix4024z52923 (.combout (nx4024z1), .dataa (mem_q_2_[1])
                         , .datab (b_0_), .datac (nx4024z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix4024z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix5021z52923 (.combout (nx5021z1), .dataa (mem_q_2_[0])
                         , .datab (b_0_), .datac (nx5021z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix5021z52923.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix62359z52926 (.combout (b_1__dup_352), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52926.lut_mask = 16'h1515;
    cycloneii_lcell_comb ix62359z52924 (.combout (b_0__dup_353), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62359z52924.lut_mask = 16'h2a2a;
    cycloneii_lcell_comb ix63578z52926 (.combout (b_1_), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52926.lut_mask = 16'h1313;
    cycloneii_lcell_comb ix63578z52924 (.combout (b_0_), .dataa (
                         mem_wrn_current[1]), .datab (mem_wrn_current[0]), .datac (
                         nx60567z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63578z52924.lut_mask = 16'h4c4c;
    cycloneii_lcell_comb ix60567z52923 (.combout (nx60567z1), .dataa (nx60567z2)
                         , .datab (nx60567z4), .datac (nx60567z5), .datad (
                         nx60567z6), .cin (1'b0)) ;
                         
                         defparam ix60567z52923.lut_mask = 16'hfefc;
    cycloneii_lcell_comb ix8852z52925 (.combout (nx8852z3), .dataa (column[2]), 
                         .datab (column[1]), .datac (nx8852z4), .datad (nx8852z5
                         ), .cin (1'b0)) ;
                         
                         defparam ix8852z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix15763z52925 (.combout (nx15763z3), .dataa (
                         mem_wrn_current[2]), .datab (mem_wrn_current[1]), .datac (
                         mem_wrn_current[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15763z52925.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix40106z52923 (.combout (nx40106z1), .dataa (i_valid), 
                         .datab (nx8852z1), .datac (nx39109z3), .datad (
                         nx39109z4), .cin (1'b0)) ;
                         
                         defparam ix40106z52923.lut_mask = 16'hcecc;
    cycloneii_lcell_comb ix57224z52923 (.combout (nx57224z1), .dataa (
                         mem_wrn_current[2]), .datab (nx60567z2), .datac (1'b1)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57224z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix33254z52923 (.combout (nx33254z1), .dataa (i_valid), 
                         .datab (busySignal), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33254z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix8852z52924 (.combout (nx8852z2), .dataa (first_bubble
                         ), .datab (nx8852z3), .datac (nx8852z6), .datad (
                         nx8852z7), .cin (1'b0)) ;
                         
                         defparam ix8852z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix60567z52924 (.combout (nx60567z2), .dataa (row[7]), .datab (
                         row[6]), .datac (row[5]), .datad (nx60567z3), .cin (
                         1'b0)) ;
                         defparam ix60567z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix8852z52930 (.combout (not_rtlc2_X_0_n244), .dataa (
                         i_valid), .datab (first_bubble), .datac (nx8852z3), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8852z52930.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix39109z52924 (.combout (nx39109z2), .dataa (nx8852z2)
                         , .datab (nx39109z3), .datac (nx39109z4), .datad (
                         p_nrst_int_dup_22), .cin (1'b0)) ;
                         
                         defparam ix39109z52924.lut_mask = 16'hbaff;
    cycloneii_lcell_comb ix47386z52923 (.combout (nx47386z1), .dataa (nx8852z2)
                         , .datab (i_valid), .datac (p_nrst_int_dup_22), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix47386z52923.lut_mask = 16'hbfbf;
    cycloneii_lcell_comb ix17757z52923 (.combout (nx17757z1), .dataa (nx8852z2)
                         , .datab (nx39109z4), .datac (p_nrst_int_dup_22), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix17757z52923.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix15763z52924 (.combout (nx15763z2), .dataa (nx15763z3)
                         , .datab (nx8852z2), .datac (i_valid), .datad (
                         p_nrst_int_dup_22), .cin (1'b0)) ;
                         
                         defparam ix15763z52924.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix8852z52923 (.combout (nx8852z1), .dataa (nx8852z2), .datab (
                         p_nrst_int_dup_22), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix8852z52923.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix15976z52923 (.combout (o_mode[0]), .dataa (
                         busySignalDelayed), .datab (busySignal), .datac (
                         i_valid), .datad (p_nrst_int_dup_22), .cin (1'b0)) ;
                         
                         defparam ix15976z52923.lut_mask = 16'hfeff;
    cycloneii_lcell_comb ix39109z52927 (.combout (nx39109z5), .dataa (
                         mem_wrn_current[0]), .datab (mem_wrn_current[1]), .datac (
                         mem_wrn_current[2]), .datad (i_valid), .cin (1'b0)) ;
                         
                         defparam ix39109z52927.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix47386z52924 (.combout (nx47386z2), .dataa (nx8852z2)
                         , .datab (first_bubble), .datac (nx8852z3), .datad (
                         p_nrst_int_dup_22), .cin (1'b0)) ;
                         
                         defparam ix47386z52924.lut_mask = 16'heaff;
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

    wire ena1_rename1408;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1408), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1408 = 1 ;
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

    wire ena1_rename1378;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1378), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1378 = 1 ;
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

    wire ena1_rename1348;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename1348), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename1348 = 1 ;
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
                            updn, cnt_en, p_i_reset, p_rtlc5n55, 
                            p_nrst_int_dup_22 ) ;

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
    input p_rtlc5n55 ;
    input p_nrst_int_dup_22 ;

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
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (p_rtlc5n55
                         ), .datab (cnt_en), .datac (p_nrst_int_dup_22), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'hefef;
endmodule


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex, p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, 
                 px304, p_m_o_mode_0_, p_nrst_int ) ;

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
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input px304 ;
    input p_m_o_mode_0_ ;
    input p_nrst_int ;

    wire [7:0]sdin;
    wire rxerr, rxrdy, sdout_7_, sdout_5_, sdout_3_, sdout_2_, sdout_1_, 
         sdout_0_;
    wire [7:0]rdata;
    wire state, dsend, mdata_7_, mdata_5_, mdata_3_, mdata_2_, mdata_1_, 
         mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, rawrx, mdata_7n5ss1_6_, mdata_7n5ss1_4_, nx40736z1, nx33354z2, 
         nx40736z2, nx38868z1, nx46385z1, nx39480z1, not_o_valid, nx33354z1, 
         nx58116z1, nx38742z1, nx18433z1, nx39480z2, nx39480z6, nx39480z3, 
         nx39480z4, nx40736z3, nx39480z5, nx39480z7, nx36748z1, nx35751z1, 
         nx34754z1, nx33757z1;
    wire [190:0] xmplr_dummy ;




    UARTS i_uarts (.CLK (clk), .RST (rst), .Din ({sdout_7_,xmplr_dummy [0],
          sdout_5_,xmplr_dummy [1],sdout_3_,sdout_2_,sdout_1_,sdout_0_}), .LD (
          ld_sdout), .Rx (rawrx), .Dout ({sdin[7],sdin[6],sdin[5],sdin[4],
          sdin[3],sdin[2],sdin[1],sdin[0]}), .RxErr (rxerr), .RxRDY (rxrdy), .p_Tx_Reg_14n6ss1_0_ (
          p_Tx_Reg_14n6ss1_0_), .p_NOT_rtlcn2 (p_NOT_rtlcn2), .p_rxflex (rxflex)
          , .p_nrst_int_dup_19 (p_nrst_int)) ;
    modgen_counter_16_0 modgen_counter_waitcount (.clock (clk), .q ({
                        waitcount[15],waitcount[14],waitcount[13],waitcount[12],
                        waitcount[11],waitcount[10],waitcount[9],waitcount[8],
                        waitcount[7],waitcount[6],waitcount[5],waitcount[4],
                        waitcount[3],waitcount[2],waitcount[1],waitcount[0]}), .clk_en (
                        nx33354z1), .sclear (nx33354z2)) ;
    assign not_o_valid = ~o_valid ;
    cycloneii_lcell_ff reg_state (.regout (state), .datain (nx38868z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_7_ (.regout (sdout_7_), .datain (mdata_7_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_5_ (.regout (sdout_5_), .datain (mdata_5_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_3_ (.regout (sdout_3_), .datain (mdata_3_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_2_ (.regout (sdout_2_), .datain (mdata_2_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_1_ (.regout (sdout_1_), .datain (mdata_1_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_0_ (.regout (sdout_0_), .datain (mdata_0_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_7_ (.regout (rdata[7]), .datain (sdin[7]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_6_ (.regout (rdata[6]), .datain (sdin[6]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_5_ (.regout (rdata[5]), .datain (sdin[5]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_4_ (.regout (rdata[4]), .datain (sdin[4]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_3_ (.regout (rdata[3]), .datain (sdin[3]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_2_ (.regout (rdata[2]), .datain (sdin[2]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_1_ (.regout (rdata[1]), .datain (sdin[1]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_0_ (.regout (rdata[0]), .datain (sdin[0]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_7_ (.regout (mdata_7_), .datain (
                       mdata_7n5ss1_6_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_5_ (.regout (mdata_5_), .datain (
                       mdata_7n5ss1_4_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    assign nx36748z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_3_ (.regout (mdata_3_), .datain (kirschdir[2])
                       , .sdata (nx36748z1), .clk (clk), .ena (nx40736z2), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx35751z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_2_ (.regout (mdata_2_), .datain (kirschdir[1])
                       , .sdata (nx35751z1), .clk (clk), .ena (nx40736z2), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx34754z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_1_ (.regout (mdata_1_), .datain (kirschdir[0])
                       , .sdata (nx34754z1), .clk (clk), .ena (nx40736z2), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx33757z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_0_ (.regout (mdata_0_), .datain (kirschout), .sdata (
                       nx33757z1), .clk (clk), .ena (nx40736z2), .aclr (1'b0), .sclr (
                       nx38742z1), .sload (not_o_valid)) ;
    cycloneii_lcell_ff reg_ld_sdout (.regout (ld_sdout), .datain (nx18433z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dsend (.regout (dsend), .datain (nx46385z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (rst)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_charavail (.regout (o_pixavail), .datain (nx58116z1)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_ack (.regout (ack), .datain (nx39480z1), .sdata (1'b0
                       ), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (rst), .sload (
                       1'b0)) ;
    cycloneii_lcell_comb ix46385z52923 (.combout (nx46385z1), .dataa (nx39480z2)
                         , .datab (nx40736z1), .datac (rxerr), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix46385z52923.lut_mask = 16'hb8ff;
    cycloneii_lcell_comb ix38742z52924 (.combout (nx38742z1), .dataa (i_mode[0])
                         , .datab (o_pixavail), .datac (ack), .datad (p_nrst_int
                         ), .cin (1'b0)) ;
                         
                         defparam ix38742z52924.lut_mask = 16'h03ab;
    cycloneii_lcell_comb ix40736z52925 (.combout (nx40736z2), .dataa (nx40736z3)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40736z52925.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix33354z52923 (.combout (nx33354z1), .dataa (ack), .datab (
                         o_pixavail), .datac (p_nrst_int), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52923.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix33354z52924 (.combout (nx33354z2), .dataa (nx39480z2)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52924.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix15671z52923 (.combout (rawrx), .dataa (rxflex), .datab (
                         p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15671z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix39480z52929 (.combout (nx39480z7), .dataa (
                         waitcount[11]), .datab (waitcount[10]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39480z52929.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix39480z52927 (.combout (nx39480z5), .dataa (
                         waitcount[9]), .datab (waitcount[8]), .datac (nx39480z6
                         ), .datad (nx39480z7), .cin (1'b0)) ;
                         
                         defparam ix39480z52927.lut_mask = 16'h1000;
    cycloneii_lcell_comb ix40736z52926 (.combout (nx40736z3), .dataa (o_pixavail
                         ), .datab (rxerr), .datac (ack), .datad (nx39480z2), .cin (
                         1'b0)) ;
                         defparam ix40736z52926.lut_mask = 16'hfe04;
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
    cycloneii_lcell_comb ix39480z52924 (.combout (nx39480z2), .dataa (o_valid), 
                         .datab (nx39480z3), .datac (nx39480z4), .datad (
                         nx39480z5), .cin (1'b0)) ;
                         
                         defparam ix39480z52924.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix18433z52923 (.combout (nx18433z1), .dataa (state), .datab (
                         dsend), .datac (ld_sdout), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix18433z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix58116z52923 (.combout (nx58116z1), .dataa (o_pixavail
                         ), .datab (rxrdy), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix58116z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52923 (.combout (nx39480z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (nx39480z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix39480z52923.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix38868z52923 (.combout (nx38868z1), .dataa (state), .datab (
                         dsend), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38868z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix40736z52924 (.combout (nx40736z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40736z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix38742z52923 (.combout (mdata_7n5ss1_4_), .dataa (
                         o_valid), .datab (nx38742z1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38742z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix40426z52923 (.combout (datain[0]), .dataa (o_pixavail
                         ), .datab (rdata[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40426z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix41423z52923 (.combout (datain[1]), .dataa (o_pixavail
                         ), .datab (rdata[1]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix41423z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix42420z52923 (.combout (datain[2]), .dataa (o_pixavail
                         ), .datab (rdata[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix42420z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix43417z52923 (.combout (datain[3]), .dataa (o_pixavail
                         ), .datab (rdata[3]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix43417z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix44414z52923 (.combout (datain[4]), .dataa (o_pixavail
                         ), .datab (rdata[4]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44414z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix45411z52923 (.combout (datain[5]), .dataa (o_pixavail
                         ), .datab (rdata[5]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix45411z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix46408z52923 (.combout (datain[6]), .dataa (o_pixavail
                         ), .datab (rdata[6]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46408z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix47405z52923 (.combout (datain[7]), .dataa (o_pixavail
                         ), .datab (rdata[7]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47405z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix40736z52923 (.combout (mdata_7n5ss1_6_), .dataa (
                         o_valid), .datab (i_mode[0]), .datac (nx40736z1), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix40736z52923.lut_mask = 16'h5f13;
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
               p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_rxflex, p_nrst_int_dup_19
                ) ;

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
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_rxflex ;
    input p_nrst_int_dup_19 ;

    wire [7:0]Rx_Reg;
    wire TxDivisor_5_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire Rx_r;
    wire [1:0]TxFSM;
    wire RxFSM_6_, RxFSM_5_, RxFSM_3_, RxFSM_2_, RxFSM_1_, RxFSM_0_, nx65151z1, 
         nx50920z2, nx35603z1, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, 
         nx13547z1, nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, 
         nx13547z2, nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
         nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
         nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, 
         nx34394z5, nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, 
         nx32400z2, nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, 
         nx15541z2, nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, 
         nx32400z8, nx32400z9, not_Rx_r, NOT_Rx, nx34606z1, 
         NOT_Tx_Reg_14n6ss1_8_, nx33609z1, NOT_Tx_Reg_14n6ss1_7_, nx32612z1, 
         NOT_Tx_Reg_14n6ss1_6_, nx31615z1, NOT_Tx_Reg_14n6ss1_5_, nx30618z1, 
         NOT_Tx_Reg_14n6ss1_4_, nx29621z1, NOT_Tx_Reg_14n6ss1_3_, nx28624z1, 
         NOT_Tx_Reg_14n6ss1_2_, nx61140z1, NOT_Tx_Reg_14n6ss1_1_, nx34394z2, 
         nx16538z1;
    wire [348:0] xmplr_dummy ;




    modgen_counter_11_0 modgen_counter_RxDiv (.clock (CLK), .q ({RxDiv[10],
                        RxDiv[9],RxDiv[8],RxDiv[7],RxDiv[6],RxDiv[5],RxDiv[4],
                        RxDiv[3],RxDiv[2],RxDiv[1],RxDiv[0]}), .aclear (RST), .sclear (
                        nx65151z1)) ;
    modgen_counter_12_0 modgen_counter_TxDiv (.clock (CLK), .q ({TxDiv[11],
                        TxDiv[10],TxDiv[9],TxDiv[8],TxDiv[7],TxDiv[6],TxDiv[5],
                        TxDiv[4],TxDiv[3],TxDiv[2],TxDiv[1],TxDiv[0]}), .aclear (
                        RST), .sclear (nx32400z1)) ;
    assign PWR = 1 ;
    assign Rx_r = ~not_Rx_r ;
    assign RxFSM_0_ = ~nx34394z2 ;
    cycloneii_lcell_ff reg_Tx_Reg_8_ (.regout (nx34606z1), .datain (
                       NOT_Tx_Reg_14n6ss1_8_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_7_ (.regout (nx33609z1), .datain (
                       NOT_Tx_Reg_14n6ss1_7_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_6_ (.regout (nx32612z1), .datain (
                       NOT_Tx_Reg_14n6ss1_6_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_5_ (.regout (nx31615z1), .datain (
                       NOT_Tx_Reg_14n6ss1_5_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_4_ (.regout (nx30618z1), .datain (
                       NOT_Tx_Reg_14n6ss1_4_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_3_ (.regout (nx29621z1), .datain (
                       NOT_Tx_Reg_14n6ss1_3_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_2_ (.regout (nx28624z1), .datain (
                       NOT_Tx_Reg_14n6ss1_2_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_1_ (.regout (nx61140z1), .datain (
                       NOT_Tx_Reg_14n6ss1_1_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_1_ (.regout (TxFSM[1]), .datain (nx5605z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_0_ (.regout (TxFSM[0]), .datain (nx4608z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxDivisor_5_ (.regout (TxDivisor_5_), .datain (PWR), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopTx (.regout (TopTx), .datain (nx32400z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopRx (.regout (TopRx), .datain (nx34394z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_r (.regout (not_Rx_r), .datain (NOT_Rx), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_7_ (.regout (Rx_Reg[7]), .datain (Rx_r), .sdata (
                       1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_6_ (.regout (Rx_Reg[6]), .datain (Rx_Reg[7]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_5_ (.regout (Rx_Reg[5]), .datain (Rx_Reg[6]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_4_ (.regout (Rx_Reg[4]), .datain (Rx_Reg[5]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_3_ (.regout (Rx_Reg[3]), .datain (Rx_Reg[4]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_2_ (.regout (Rx_Reg[2]), .datain (Rx_Reg[3]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_1_ (.regout (Rx_Reg[1]), .datain (Rx_Reg[2]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_0_ (.regout (Rx_Reg[0]), .datain (Rx_Reg[1]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxRDYi (.regout (RxRDY), .datain (nx30017z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_6_ (.regout (RxFSM_6_), .datain (RxFSM_1_), .sdata (
                       RxFSM_5_), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (not_Rx_r)) ;
    cycloneii_lcell_ff reg_RxFSM_5_ (.regout (RxFSM_5_), .datain (nx11553z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_3_ (.regout (RxFSM_3_), .datain (nx13547z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_2_ (.regout (RxFSM_2_), .datain (nx14544z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_1_ (.regout (RxFSM_1_), .datain (RxFSM_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_0_ (.regout (nx34394z2), .datain (nx16538z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxErr (.regout (RxErr), .datain (nx15376z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_7_ (.regout (Dout[7]), .datain (Rx_Reg[7]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_6_ (.regout (Dout[6]), .datain (Rx_Reg[6]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_5_ (.regout (Dout[5]), .datain (Rx_Reg[5]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_4_ (.regout (Dout[4]), .datain (Rx_Reg[4]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_3_ (.regout (Dout[3]), .datain (Rx_Reg[3]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_2_ (.regout (Dout[2]), .datain (Rx_Reg[2]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_1_ (.regout (Dout[1]), .datain (Rx_Reg[1]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_0_ (.regout (Dout[0]), .datain (Rx_Reg[0]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_3_ (.regout (TxBitCnt[3]), 
                       .datain (nx51917z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_2_ (.regout (TxBitCnt[2]), 
                       .datain (nx50920z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_1_ (.regout (TxBitCnt[1]), 
                       .datain (nx49923z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_0_ (.regout (TxBitCnt[0]), 
                       .datain (nx48926z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_3_ (.regout (RxBitCnt[3]), 
                       .datain (nx8373z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_2_ (.regout (RxBitCnt[2]), 
                       .datain (nx9370z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_1_ (.regout (RxBitCnt[1]), 
                       .datain (nx10367z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_0_ (.regout (RxBitCnt[0]), 
                       .datain (nx11364z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix50920z52924 (.combout (nx50920z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix61140z52923 (.combout (p_Tx_Reg_14n6ss1_0_), .dataa (
                         nx61140z1), .datab (TxFSM[1]), .datac (TxFSM[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61140z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix28624z52923 (.combout (NOT_Tx_Reg_14n6ss1_1_), .dataa (
                         Din[0]), .datab (nx28624z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix29621z52923 (.combout (NOT_Tx_Reg_14n6ss1_2_), .dataa (
                         Din[1]), .datab (nx29621z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix30618z52923 (.combout (NOT_Tx_Reg_14n6ss1_3_), .dataa (
                         Din[2]), .datab (nx30618z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix31615z52923 (.combout (NOT_Tx_Reg_14n6ss1_4_), .dataa (
                         Din[3]), .datab (nx31615z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix31615z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix32612z52923 (.combout (NOT_Tx_Reg_14n6ss1_5_), .dataa (
                         Din[5]), .datab (nx32612z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix32612z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix33609z52923 (.combout (NOT_Tx_Reg_14n6ss1_6_), .dataa (
                         Din[5]), .datab (nx33609z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix33609z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix34606z52923 (.combout (NOT_Tx_Reg_14n6ss1_7_), .dataa (
                         Din[7]), .datab (nx34606z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix34606z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix35603z52923 (.combout (NOT_Tx_Reg_14n6ss1_8_), .dataa (
                         Din[7]), .datab (TxFSM[1]), .datac (1'b1), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix35603z52923.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix65151z52923 (.combout (nx65151z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix65151z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix32400z52931 (.combout (nx32400z9), .dataa (TxDiv[10])
                         , .datab (TxDiv[9]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32400z52931.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix32400z52930 (.combout (nx32400z8), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[0]), .datad (
                         nx32400z9), .cin (1'b0)) ;
                         
                         defparam ix32400z52930.lut_mask = 16'h0100;
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
    cycloneii_lcell_comb ix15541z52925 (.combout (nx15541z2), .dataa (Rx), .datab (
                         TopRx), .datac (RxFSM_6_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix15541z52925.lut_mask = 16'hac00;
    cycloneii_lcell_comb ix32400z52929 (.combout (nx32400z7), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52927 (.combout (nx32400z5), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52927.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52928 (.combout (nx32400z6), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix15541z52926 (.combout (nx15541z3), .dataa (p_rxflex)
                         , .datab (RxFSM_6_), .datac (p_nrst_int_dup_19), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix15541z52926.lut_mask = 16'hb3b3;
    cycloneii_lcell_comb ix32400z52926 (.combout (nx32400z4), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52926.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix32400z52925 (.combout (nx32400z3), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[10]), 
                         .datad (TxDiv[9]), .cin (1'b0)) ;
                         
                         defparam ix32400z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52924 (.combout (nx32400z2), .dataa (TxDiv[0])
                         , .datab (nx32400z3), .datac (nx32400z4), .datad (
                         nx32400z5), .cin (1'b0)) ;
                         
                         defparam ix32400z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix34394z52929 (.combout (nx34394z8), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52931 (.combout (nx34394z10), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52931.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix34394z52928 (.combout (nx34394z7), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52930 (.combout (nx34394z9), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52930.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix34394z52927 (.combout (nx34394z6), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52927.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52926 (.combout (nx34394z5), .dataa (nx34394z6)
                         , .datab (nx34394z7), .datac (nx34394z8), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix34394z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix34394z52925 (.combout (nx34394z4), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix15376z52923 (.combout (nx15376z1), .dataa (RxErr), .datab (
                         RxRDY), .datac (RxFSM_6_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15376z52923.lut_mask = 16'hf2f2;
    cycloneii_lcell_comb ix11364z52923 (.combout (nx11364z1), .dataa (TopRx), .datab (
                         RxBitCnt[0]), .datac (RxFSM_3_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix11364z52923.lut_mask = 16'h6c40;
    cycloneii_lcell_comb ix10367z52923 (.combout (nx10367z1), .dataa (
                         RxBitCnt[1]), .datab (RxBitCnt[0]), .datac (nx34394z2)
                         , .datad (not_rtlc17_X_0_n360), .cin (1'b0)) ;
                         
                         defparam ix10367z52923.lut_mask = 16'h60aa;
    cycloneii_lcell_comb ix9370z52923 (.combout (nx9370z1), .dataa (RxBitCnt[2])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx9370z2), .cin (1'b0)) ;
                         
                         defparam ix9370z52923.lut_mask = 16'h4a8a;
    cycloneii_lcell_comb ix8373z52923 (.combout (nx8373z1), .dataa (RxBitCnt[3])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx8373z2), .cin (1'b0)) ;
                         
                         defparam ix8373z52923.lut_mask = 16'hca0a;
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
    cycloneii_lcell_comb ix30017z52923 (.combout (nx30017z1), .dataa (TopRx), .datab (
                         not_Rx_r), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix30017z52923.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix13547z52924 (.combout (nx13547z2), .dataa (
                         RxBitCnt[3]), .datab (RxBitCnt[2]), .datac (RxBitCnt[1]
                         ), .datad (RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix13547z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52923 (.combout (nx32400z1), .dataa (nx32400z2)
                         , .datab (nx32400z6), .datac (nx32400z7), .datad (
                         nx32400z8), .cin (1'b0)) ;
                         
                         defparam ix32400z52923.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix34394z52924 (.combout (nx34394z3), .dataa (nx34394z4)
                         , .datab (nx34394z5), .datac (nx34394z9), .datad (
                         nx34394z10), .cin (1'b0)) ;
                         
                         defparam ix34394z52924.lut_mask = 16'heccc;
    cycloneii_lcell_comb ix34394z52923 (.combout (nx34394z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix34394z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix11553z52923 (.combout (nx11553z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11553z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix16538z52923 (.combout (nx16538z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_6_), .datac (RxFSM_5_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix16538z52923.lut_mask = 16'h2323;
    cycloneii_lcell_comb ix14544z52923 (.combout (nx14544z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_3_), .datac (RxFSM_1_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix14544z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix13547z52923 (.combout (nx13547z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix13547z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix15541z52924 (.combout (nx15541z1), .dataa (not_Rx_r)
                         , .datab (nx34394z2), .datac (nx15541z2), .datad (
                         nx15541z3), .cin (1'b0)) ;
                         
                         defparam ix15541z52924.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix54636z52924 (.combout (nx54636z1), .dataa (TopRx), .datab (
                         RxFSM_3_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54636z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix8373z52924 (.combout (not_rtlc17_X_0_n360), .dataa (
                         TopRx), .datab (RxFSM_3_), .datac (nx34394z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8373z52924.lut_mask = 16'h8b8b;
    cycloneii_lcell_comb ix35603z52924 (.combout (nx35603z1), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix35603z52924.lut_mask = 16'h00ca;
    cycloneii_lcell_comb ix5605z52923 (.combout (nx5605z1), .dataa (TxFSM[0]), .datab (
                         TxFSM[1]), .datac (TopTx), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix5605z52923.lut_mask = 16'h6c6c;
    cycloneii_lcell_comb ix57064z52923 (.combout (NOT_Rx), .dataa (p_rxflex), .datab (
                         p_nrst_int_dup_19), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57064z52923.lut_mask = 16'h7777;
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
    wire [61:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
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
    wire [56:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
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

