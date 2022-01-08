module address_select(clock,in1 ,in2 ,in3 ,out_address_aa,out_address_ab,out_address_ad);

			input clock;
			input [15:0] in1;
			input [15:0] in2;
			input [15:0] in3;
			output[15:0] out_address_aa;
			output[15:0] out_address_ab;
			output[15:0] out_address_ad;
			
			integer number_1;
			integer number_2;
			integer number_3;
			reg [15:0] out_address_aa;
			reg [15:0] out_address_ab;
			reg [15:0] out_address_ad;
			
			always @(in1)
               number_1 = in1;
			always @(in2)
               number_2 = in2;
			always @(in3)
               number_3 = in3;
			
			always @(posedge clock)
			        begin
								  if (number_1 == 0 && number_2 == 0 && number_3 == 0)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd8;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 0 && number_2 == 1 && number_3 == 0)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd9;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 0 && number_2 == 2 && number_3 == 0)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd10;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 0 && number_2 == 3 && number_3 == 0)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd11;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 0 && number_2 == 0 && number_3 == 1)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd12;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 0 && number_2 == 1 && number_3 == 1)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd13;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 0 && number_2 == 2 && number_3 == 1)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd14;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 0 && number_2 == 3 && number_3 == 1)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd15;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 0 && number_2 == 0 && number_3 == 2)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd16;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 0 && number_2 == 1 && number_3 == 2)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd17;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 0 && number_2 == 2 && number_3 == 2)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd18;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 0 && number_2 == 3 && number_3 == 2)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd19;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 0 && number_2 == 0 && number_3 == 3)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd20;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 0 && number_2 == 1 && number_3 == 3)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd21;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 0 && number_2 == 2 && number_3 == 3)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd22;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 0 && number_2 == 3 && number_3 == 3)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd23;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 1 && number_2 == 0 && number_3 == 0)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd8;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 1 && number_2 == 1 && number_3 == 0)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd9;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 1 && number_2 == 2 && number_3 == 0)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd10;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 1 && number_2 == 3 && number_3 == 0)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd11;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 1 && number_2 == 0 && number_3 == 1)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd12;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 1 && number_2 == 1 && number_3 == 1)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd13;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 1 && number_2 == 2 && number_3 == 1)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd14;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 1 && number_2 == 3 && number_3 == 1)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd15;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 1 && number_2 == 0 && number_3 == 2)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd16;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 1 && number_2 == 1 && number_3 == 2)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd17;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 1 && number_2 == 2 && number_3 == 2)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd18;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 1 && number_2 == 3 && number_3 == 2)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd19;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 1 && number_2 == 0 && number_3 == 3)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd20;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 1 && number_2 == 1 && number_3 == 3)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd21;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 1 && number_2 == 2 && number_3 == 3)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd22;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 1 && number_2 == 3 && number_3 == 3)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd23;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 2 && number_2 == 0 && number_3 == 0)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd8;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 2 && number_2 == 1 && number_3 == 0)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd9;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 2 && number_2 == 2 && number_3 == 0)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd10;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 2 && number_2 == 3 && number_3 == 0)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd11;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 2 && number_2 == 0 && number_3 == 1)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd12;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 2 && number_2 == 1 && number_3 == 1)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd13;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 2 && number_2 == 2 && number_3 == 1)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd14;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 2 && number_2 == 3 && number_3 == 1)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd15;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 2 && number_2 == 0 && number_3 == 2)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd16;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 2 && number_2 == 1 && number_3 == 2)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd17;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 2 && number_2 == 2 && number_3 == 2)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd18;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 2 && number_2 == 3 && number_3 == 2)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd19;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 2 && number_2 == 0 && number_3 == 3)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd20;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 2 && number_2 == 1 && number_3 == 3)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd21;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 2 && number_2 == 2 && number_3 == 3)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd22;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 2 && number_2 == 3 && number_3 == 3)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd23;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 3 && number_2 == 0 && number_3 == 0)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd8;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 3 && number_2 == 1 && number_3 == 0)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd9;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 3 && number_2 == 2 && number_3 == 0)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd10;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 3 && number_2 == 3 && number_3 == 0)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd11;
													out_address_ad = 16'd24;
												end
								  else if (number_1 == 3 && number_2 == 0 && number_3 == 1)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd12;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 3 && number_2 == 1 && number_3 == 1)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd13;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 3 && number_2 == 2 && number_3 == 1)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd14;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 3 && number_2 == 3 && number_3 == 1)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd15;
													out_address_ad = 16'd25;
												end
								  else if (number_1 == 3 && number_2 == 0 && number_3 == 2)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd16;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 3 && number_2 == 1 && number_3 == 2)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd17;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 3 && number_2 == 2 && number_3 == 2)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd18;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 3 && number_2 == 3 && number_3 == 2)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd19;
													out_address_ad = 16'd26;
												end
								  else if (number_1 == 3 && number_2 == 0 && number_3 == 3)
											  begin
											      out_address_aa = 16'd3;
													out_address_ab = 16'd20;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 3 && number_2 == 1 && number_3 == 3)
											  begin
											      out_address_aa = 16'd4;
													out_address_ab = 16'd21;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 3 && number_2 == 2 && number_3 == 3)
											  begin
											      out_address_aa = 16'd5;
													out_address_ab = 16'd22;
													out_address_ad = 16'd27;
												end
								  else if (number_1 == 3 && number_2 == 3 && number_3 == 3)
											  begin
											      out_address_aa = 16'd6;
													out_address_ab = 16'd23;
													out_address_ad = 16'd27;
												end
					  end
endmodule
//module add_tb;
//
//    // Inputs
//    reg [7:0] in1;
//    reg [7:0] in2;
//	 reg [7:0] in3;
//    // Outputs
//    wire [7:0] out_address_aa;
//	 wire [7:0] out_address_ab;
//	 wire [7:0] out_address_ad;
//
//    // Instantiate the Unit Under Test (UUT)
//    address_select uut (
//        .in1(in1), 
//        .in2(in2), 
//		  .in3(in3),
//        .out_address_aa(out_address_aa),
//		  .out_address_ab(out_address_ab),
//		  .out_address_ad(out_address_ad)
//    );
//
//    initial begin
//        // Apply Inputs
//		  in1 = 8'd1;
//		  in2 = 8'd1;
//		  in3 = 8'd3;
//		  #100
//		  
//		  in1 = 8'd2;
//		  in2 = 8'd2;
//		  in3 = 8'd2;
//		  
//        
//    end
//      
//endmodule
