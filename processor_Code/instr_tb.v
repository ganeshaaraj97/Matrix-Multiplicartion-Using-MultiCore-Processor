module instr_tb();
	reg clock;
	reg [ 15: 0] addr_a;
	reg [ 15: 0] addr_b;
	reg [ 15: 0] addr_c;
	reg [ 15: 0] addr_d;
	wire [15:0] instr_out_a;
	wire [15:0] instr_out_b;
	wire [15:0] instr_out_c;
	wire [15:0] instr_out_d;
  
  instr_memory dut (.clock(clock), .addr_a(addr_a), .addr_b(addr_b), .addr_c(addr_c), .addr_d(addr_d), .instr_out_a(instr_out_a), .instr_out_b(instr_out_b), .instr_out_c(instr_out_c), .instr_out_d(instr_out_d));

  initial begin
  #50;
  clock = 1'd0; addr_a   = 16'd1; addr_b = 16'd5; addr_c = 16'd8; addr_d = 16'd9; #100;
  clock = 1'd1; addr_a   = 16'd1; addr_b = 16'd5; addr_c = 16'd8; addr_d = 16'd9; #100;
  clock = 1'd0; addr_a   = 16'd80; addr_b = 16'd81; addr_c = 16'd82; addr_d = 16'd83; #100;
  clock = 1'd1; addr_a   = 16'd80; addr_b = 16'd81; addr_c = 16'd82; addr_d = 16'd83; #100;
  

  
  end
  
  //always begin
    //#50;
	 //clock = ~clock;
  //end
  
endmodule