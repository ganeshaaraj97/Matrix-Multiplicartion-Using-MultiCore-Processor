module alu_tb();
  reg clock;
  reg [2:0] alu_op;
  reg [15:0] in1;
  reg [15:0] in2;
  wire [15:0] alu_out;
  wire [15:0] z;
  
  alu dut (.clock(clock), .in1(in1), .in2(in2), .alu_op(alu_op), .alu_out(alu_out), .z(z));

  initial begin
  #50;
  clock = 1'd0; alu_op   = 3'd2; in1 = 16'd3; in2 = 16'd6; #100;
  clock = 1'd0; alu_op   = 3'd3; in1 = 16'd7; in2 = 16'd10; #100;
  clock = 1'd0; alu_op   = 3'd1; in1 = 16'd4; in2 = 16'd6; #100;
  clock = 1'd0; alu_op   = 3'd2; in1 = 16'd102; in2 = 16'd24; #100;
  clock = 1'd0; alu_op   = 3'd3; in1 = 16'd253; in2 = 16'd254; #100;
  clock = 1'd0; alu_op   = 3'd1; in1 = 16'd255; in2 = 16'd255; #100;
  
  end
  
  always begin
    #50;
	 clock = ~clock;
  end
  
endmodule
