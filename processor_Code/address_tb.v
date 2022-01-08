module address_tb;

    // Inputs
	 reg clock;
    reg [15:0] in1;
    reg [15:0] in2;
	 reg [15:0] in3;
    // Outputs
    wire [15:0] out_address_aa;
	 wire [15:0] out_address_ab;
	 wire [15:0] out_address_ad;

    // Instantiate the Unit Under Test (UUT)
    address_select uut (
	     .clock(clock),
        .in1(in1), 
        .in2(in2), 
		  .in3(in3),
        .out_address_aa(out_address_aa),
		  .out_address_ab(out_address_ab),
		  .out_address_ad(out_address_ad)
    );

    initial begin
        // Apply Inputs
		  #50
		  clock = 1'd0;
		  in1 = 16'd1;
		  in2 = 16'd1;
		  in3 = 16'd3;
		  #100;
		  
		  clock = 1'd1;
		  in1 = 16'd1;
		  in2 = 16'd1;
		  in3 = 16'd3;
		  #100;
		  
		  clock = 1'd0;
		  in1 = 16'd2;
		  in2 = 16'd2;
		  in3 = 16'd2;#100;
		  
		  clock = 1'd1;
		  in1 = 16'd2;
		  in2 = 16'd2;
		  in3 = 16'd2;#100;
		  
		  clock = 1'd0;
		  in1 = 16'd3;
		  in2 = 16'd2;
		  in3 = 16'd3;#100;
		  
		  clock = 1'd1;
		  in1 = 16'd3;
		  in2 = 16'd2;
		  in3 = 16'd3;#100;
		  
        
    end
      
endmodule
