module alu(clock,in1,in2,alu_op,alu_out,z); 
   input clock; 
	//input write_en;
   input [15:0] in1; 
   input [15:0] in2; 
   input [2:0] alu_op; 
   output reg [15:0] alu_out;
   output reg [15:0] z; 	

   always @(posedge clock) 
      begin

		if (alu_op == 3'd2) begin
		        alu_out <= in1 + in2;
//				  $display("[display] time=%0t in1_out_add=%0d ",$time,in1);
//			     $display("[display] time=%0t in2_out_add=%0d",$time,in2);
//			     $display("[display] time=%0t alu_out_add=%0d",$time,alu_out);
			     //end 

		end else if (alu_op == 3'd3) begin
	           alu_out <= in2 - in1; 
//				  $display("[display] time=%0t in1_out_sub=%0d ",$time,in1);
//			     $display("[display] time=%0t in2_out_sub=%0d",$time,in2);
//			     $display("[display] time=%0t alu_out_sub=%0d",$time,alu_out);
				  //end
				  
		end else if (alu_op == 3'd1) begin
		        alu_out <= in1 * in2;
//				  $display("[display] time=%0t in1_out_mul=%0d ",$time,in1);
//			     $display("[display] time=%0t in2_out_mul=%0d",$time,in2);
//			     $display("[display] time=%0t alu_out_mul=%0d",$time,alu_out);
				  //end
		end else begin
		        alu_out <=alu_out;
		end
				  
      if (alu_out == 0) begin
		         //display("[display] time=%0t alu_out=%0d ",$time,alu_out);
               z <= 0; 
		end else begin
               z <= 1; 
		end

	 end 
	 
	 
endmodule


//module alu_tb();
//  reg clock;
//  reg [2:0] alu_op;
//  reg [15:0] in1;
//  reg [15:0] in2;
//  wire [15:0] alu_out;
//  wire [15:0] z;
//  
//  alu dut (.clock(clock), .in1(in1), .in2(in2), .alu_op(alu_op), .alu_out(alu_out), .z(z));
//
//  initial begin
//  #50;
//  clock = 1'd0; alu_op   = 3'd1; in1 = 16'd3; in2 = 16'd6; #100;
//  clock = 1'd0; alu_op   = 3'd2; in1 = 16'd10; in2 = 16'd7; #100;
//  clock = 1'd0; alu_op   = 3'd3; in1 = 16'd4; in2 = 16'd6; #100;
//  clock = 1'd0; alu_op   = 3'd1; in1 = 16'd102; in2 = 16'd24; #100;
//  clock = 1'd0; alu_op   = 3'd2; in1 = 16'd254; in2 = 16'd253; #100;
//  clock = 1'd0; alu_op   = 3'd3; in1 = 16'd255; in2 = 16'd255; #100;
//  
//  end
//  
//  always begin
//    #50;
//	 clock = ~clock;
//  end
//  
//endmodule
