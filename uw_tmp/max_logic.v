//
// Verilog description for cell max, 
// Wed Jul 16 20:14:52 2014
//
// Precision RTL Synthesis, 2008a.47//


module max ( i_left, i_right, o_max, o_left_greater ) ;

    input [12:0]i_left ;
    input [12:0]i_right ;
    output [12:0]o_max ;
    output o_left_greater ;

    wire [12:0]i_left_int;
    wire [12:0]i_right_int;
    wire [12:0]o_max_dup0;
    wire o_left_greater_dup0, nx32374z2, nx32374z4, nx32374z5, nx32374z1, 
         nx32374z3;
    wire [1958:0] xmplr_dummy ;




    stratixii_io o_max_obuf_9_ (.padio (o_max[9]), .datain (o_max_dup0[9]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_9_.operation_mode = "output";
                 
                 defparam o_max_obuf_9_.output_register_mode = "none";
                 
                 defparam o_max_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_9_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_9_.input_register_mode = "none";
    stratixii_io o_max_obuf_8_ (.padio (o_max[8]), .datain (o_max_dup0[8]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_8_.operation_mode = "output";
                 
                 defparam o_max_obuf_8_.output_register_mode = "none";
                 
                 defparam o_max_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_8_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_8_.input_register_mode = "none";
    stratixii_io o_max_obuf_7_ (.padio (o_max[7]), .datain (o_max_dup0[7]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_7_.operation_mode = "output";
                 
                 defparam o_max_obuf_7_.output_register_mode = "none";
                 
                 defparam o_max_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_7_.input_register_mode = "none";
    stratixii_io o_max_obuf_6_ (.padio (o_max[6]), .datain (o_max_dup0[6]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_6_.operation_mode = "output";
                 
                 defparam o_max_obuf_6_.output_register_mode = "none";
                 
                 defparam o_max_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_6_.input_register_mode = "none";
    stratixii_io o_max_obuf_5_ (.padio (o_max[5]), .datain (o_max_dup0[5]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_5_.operation_mode = "output";
                 
                 defparam o_max_obuf_5_.output_register_mode = "none";
                 
                 defparam o_max_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_5_.input_register_mode = "none";
    stratixii_io o_max_obuf_4_ (.padio (o_max[4]), .datain (o_max_dup0[4]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_4_.operation_mode = "output";
                 
                 defparam o_max_obuf_4_.output_register_mode = "none";
                 
                 defparam o_max_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_4_.input_register_mode = "none";
    stratixii_io o_max_obuf_3_ (.padio (o_max[3]), .datain (o_max_dup0[3]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_3_.operation_mode = "output";
                 
                 defparam o_max_obuf_3_.output_register_mode = "none";
                 
                 defparam o_max_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_3_.input_register_mode = "none";
    stratixii_io o_max_obuf_2_ (.padio (o_max[2]), .datain (o_max_dup0[2]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_2_.operation_mode = "output";
                 
                 defparam o_max_obuf_2_.output_register_mode = "none";
                 
                 defparam o_max_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_2_.input_register_mode = "none";
    stratixii_io o_max_obuf_12_ (.padio (o_max[12]), .datain (o_max_dup0[12]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_12_.operation_mode = "output";
                 
                 defparam o_max_obuf_12_.output_register_mode = "none";
                 
                 defparam o_max_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_12_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_12_.input_register_mode = "none";
    stratixii_io o_max_obuf_11_ (.padio (o_max[11]), .datain (o_max_dup0[11]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_11_.operation_mode = "output";
                 
                 defparam o_max_obuf_11_.output_register_mode = "none";
                 
                 defparam o_max_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_11_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_11_.input_register_mode = "none";
    stratixii_io o_max_obuf_10_ (.padio (o_max[10]), .datain (o_max_dup0[10]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_10_.operation_mode = "output";
                 
                 defparam o_max_obuf_10_.output_register_mode = "none";
                 
                 defparam o_max_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_10_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_10_.input_register_mode = "none";
    stratixii_io o_max_obuf_1_ (.padio (o_max[1]), .datain (o_max_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_1_.operation_mode = "output";
                 
                 defparam o_max_obuf_1_.output_register_mode = "none";
                 
                 defparam o_max_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_1_.input_register_mode = "none";
    stratixii_io o_max_obuf_0_ (.padio (o_max[0]), .datain (o_max_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_max_obuf_0_.operation_mode = "output";
                 
                 defparam o_max_obuf_0_.output_register_mode = "none";
                 
                 defparam o_max_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_max_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_max_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_max_obuf_0_.input_register_mode = "none";
    stratixii_io o_left_greater_obuf (.padio (o_left_greater), .datain (
                 o_left_greater_dup0), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_left_greater_obuf.operation_mode = "output";
                 
                 defparam o_left_greater_obuf.output_register_mode = "none";
                 
                 defparam o_left_greater_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_left_greater_obuf.oe_register_mode = "none";
                 
                 defparam o_left_greater_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_left_greater_obuf.input_register_mode = "none";
    stratixii_lcell_comb ix32374z37205 (.combout (nx32374z3), .dataa (1'b1), .datab (
                         nx32374z4), .datac (i_right_int[5]), .datad (
                         i_right_int[6]), .datae (i_left_int[5]), .dataf (
                         i_left_int[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32374z37205.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix32374z37203 (.combout (nx32374z1), .dataa (1'b1), .datab (
                         nx32374z2), .datac (i_right_int[9]), .datad (
                         i_right_int[10]), .datae (i_left_int[9]), .dataf (
                         i_left_int[10]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32374z37203.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix32374z37207 (.combout (nx32374z5), .dataa (
                         i_right_int[0]), .datab (i_right_int[1]), .datac (
                         i_right_int[2]), .datad (i_left_int[0]), .datae (
                         i_left_int[1]), .dataf (i_left_int[2]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix32374z37207.lut_mask = 64'h7f3f1f0f07030100;
    stratixii_lcell_comb ix32374z37206 (.combout (nx32374z4), .dataa (1'b1), .datab (
                         nx32374z5), .datac (i_right_int[3]), .datad (
                         i_right_int[4]), .datae (i_left_int[3]), .dataf (
                         i_left_int[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32374z37206.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix32374z37204 (.combout (nx32374z2), .dataa (1'b1), .datab (
                         nx32374z3), .datac (i_right_int[7]), .datad (
                         i_right_int[8]), .datae (i_left_int[7]), .dataf (
                         i_left_int[8]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32374z37204.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix32374z37202 (.combout (o_left_greater_dup0), .dataa (
                         1'b1), .datab (nx32374z1), .datac (i_right_int[11]), .datad (
                         i_right_int[12]), .datae (i_left_int[11]), .dataf (
                         i_left_int[12]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32374z37202.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix18852z37201 (.combout (o_max_dup0[0]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[0])
                         , .datae (i_left_int[0]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix18852z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix17855z37201 (.combout (o_max_dup0[1]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[1])
                         , .datae (i_left_int[1]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17855z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix16858z37201 (.combout (o_max_dup0[2]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[2])
                         , .datae (i_left_int[2]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16858z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix15861z37201 (.combout (o_max_dup0[3]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[3])
                         , .datae (i_left_int[3]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix15861z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix14864z37201 (.combout (o_max_dup0[4]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[4])
                         , .datae (i_left_int[4]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix14864z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix13867z37201 (.combout (o_max_dup0[5]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[5])
                         , .datae (i_left_int[5]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix13867z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix12870z37201 (.combout (o_max_dup0[6]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[6])
                         , .datae (i_left_int[6]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix12870z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix11873z37201 (.combout (o_max_dup0[7]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[7])
                         , .datae (i_left_int[7]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix11873z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix10876z37201 (.combout (o_max_dup0[8]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[8])
                         , .datae (i_left_int[8]), .dataf (o_left_greater_dup0)
                         , .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix10876z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix9879z37201 (.combout (o_max_dup0[9]), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (i_right_int[9]), 
                         .datae (i_left_int[9]), .dataf (o_left_greater_dup0), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix9879z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix31377z37201 (.combout (o_max_dup0[10]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[10]
                         ), .datae (i_left_int[10]), .dataf (o_left_greater_dup0
                         ), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix31377z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix32374z37201 (.combout (o_max_dup0[11]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (i_right_int[11]
                         ), .datae (i_left_int[11]), .dataf (o_left_greater_dup0
                         ), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32374z37201.lut_mask = 64'hffff0000ff00ff00;
    stratixii_lcell_comb ix33371z37201 (.combout (o_max_dup0[12]), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_right_int[12]), .dataf (i_left_int[12]), .datag (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix33371z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_io i_right_ibuf_9_ (.combout (i_right_int[9]), .padio (i_right[9])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_9_.operation_mode = "input";
                 
                 defparam i_right_ibuf_9_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_9_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_9_.input_register_mode = "none";
    stratixii_io i_right_ibuf_8_ (.combout (i_right_int[8]), .padio (i_right[8])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_8_.operation_mode = "input";
                 
                 defparam i_right_ibuf_8_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_8_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_8_.input_register_mode = "none";
    stratixii_io i_right_ibuf_7_ (.combout (i_right_int[7]), .padio (i_right[7])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_7_.operation_mode = "input";
                 
                 defparam i_right_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_7_.input_register_mode = "none";
    stratixii_io i_right_ibuf_6_ (.combout (i_right_int[6]), .padio (i_right[6])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_6_.operation_mode = "input";
                 
                 defparam i_right_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_6_.input_register_mode = "none";
    stratixii_io i_right_ibuf_5_ (.combout (i_right_int[5]), .padio (i_right[5])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_5_.operation_mode = "input";
                 
                 defparam i_right_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_5_.input_register_mode = "none";
    stratixii_io i_right_ibuf_4_ (.combout (i_right_int[4]), .padio (i_right[4])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_4_.operation_mode = "input";
                 
                 defparam i_right_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_4_.input_register_mode = "none";
    stratixii_io i_right_ibuf_3_ (.combout (i_right_int[3]), .padio (i_right[3])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_3_.operation_mode = "input";
                 
                 defparam i_right_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_3_.input_register_mode = "none";
    stratixii_io i_right_ibuf_2_ (.combout (i_right_int[2]), .padio (i_right[2])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_2_.operation_mode = "input";
                 
                 defparam i_right_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_2_.input_register_mode = "none";
    stratixii_io i_right_ibuf_12_ (.combout (i_right_int[12]), .padio (
                 i_right[12]), .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_12_.operation_mode = "input";
                 
                 defparam i_right_ibuf_12_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_12_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_12_.input_register_mode = "none";
    stratixii_io i_right_ibuf_11_ (.combout (i_right_int[11]), .padio (
                 i_right[11]), .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_11_.operation_mode = "input";
                 
                 defparam i_right_ibuf_11_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_11_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_11_.input_register_mode = "none";
    stratixii_io i_right_ibuf_10_ (.combout (i_right_int[10]), .padio (
                 i_right[10]), .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_10_.operation_mode = "input";
                 
                 defparam i_right_ibuf_10_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_10_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_10_.input_register_mode = "none";
    stratixii_io i_right_ibuf_1_ (.combout (i_right_int[1]), .padio (i_right[1])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_1_.operation_mode = "input";
                 
                 defparam i_right_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_1_.input_register_mode = "none";
    stratixii_io i_right_ibuf_0_ (.combout (i_right_int[0]), .padio (i_right[0])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_right_ibuf_0_.operation_mode = "input";
                 
                 defparam i_right_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_right_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i_right_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_right_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_right_ibuf_0_.input_register_mode = "none";
    stratixii_io i_left_ibuf_9_ (.combout (i_left_int[9]), .padio (i_left[9]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_9_.operation_mode = "input";
                 defparam i_left_ibuf_9_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_9_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_9_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_9_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_9_.input_register_mode = "none";
    stratixii_io i_left_ibuf_8_ (.combout (i_left_int[8]), .padio (i_left[8]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_8_.operation_mode = "input";
                 defparam i_left_ibuf_8_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_8_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_8_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_8_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_8_.input_register_mode = "none";
    stratixii_io i_left_ibuf_7_ (.combout (i_left_int[7]), .padio (i_left[7]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_7_.operation_mode = "input";
                 defparam i_left_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_7_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_7_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_7_.input_register_mode = "none";
    stratixii_io i_left_ibuf_6_ (.combout (i_left_int[6]), .padio (i_left[6]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_6_.operation_mode = "input";
                 defparam i_left_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_6_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_6_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_6_.input_register_mode = "none";
    stratixii_io i_left_ibuf_5_ (.combout (i_left_int[5]), .padio (i_left[5]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_5_.operation_mode = "input";
                 defparam i_left_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_5_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_5_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_5_.input_register_mode = "none";
    stratixii_io i_left_ibuf_4_ (.combout (i_left_int[4]), .padio (i_left[4]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_4_.operation_mode = "input";
                 defparam i_left_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_4_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_4_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_4_.input_register_mode = "none";
    stratixii_io i_left_ibuf_3_ (.combout (i_left_int[3]), .padio (i_left[3]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_3_.operation_mode = "input";
                 defparam i_left_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_3_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_3_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_3_.input_register_mode = "none";
    stratixii_io i_left_ibuf_2_ (.combout (i_left_int[2]), .padio (i_left[2]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_2_.operation_mode = "input";
                 defparam i_left_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_2_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_2_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_2_.input_register_mode = "none";
    stratixii_io i_left_ibuf_12_ (.combout (i_left_int[12]), .padio (i_left[12])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_12_.operation_mode = "input";
                 
                 defparam i_left_ibuf_12_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_12_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_12_.input_register_mode = "none";
    stratixii_io i_left_ibuf_11_ (.combout (i_left_int[11]), .padio (i_left[11])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_11_.operation_mode = "input";
                 
                 defparam i_left_ibuf_11_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_11_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_11_.input_register_mode = "none";
    stratixii_io i_left_ibuf_10_ (.combout (i_left_int[10]), .padio (i_left[10])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_left_ibuf_10_.operation_mode = "input";
                 
                 defparam i_left_ibuf_10_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam i_left_ibuf_10_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_left_ibuf_10_.input_register_mode = "none";
    stratixii_io i_left_ibuf_1_ (.combout (i_left_int[1]), .padio (i_left[1]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_1_.operation_mode = "input";
                 defparam i_left_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_1_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_1_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_1_.input_register_mode = "none";
    stratixii_io i_left_ibuf_0_ (.combout (i_left_int[0]), .padio (i_left[0]), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_left_ibuf_0_.operation_mode = "input";
                 defparam i_left_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_left_ibuf_0_.tie_off_output_clock_enable = "false";
                 defparam i_left_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_left_ibuf_0_.tie_off_oe_clock_enable = "false";
                 defparam i_left_ibuf_0_.input_register_mode = "none";
endmodule

