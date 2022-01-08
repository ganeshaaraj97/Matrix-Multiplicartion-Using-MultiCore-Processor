module processor_a_tb();
      reg clock;
		reg [ 1: 0] status;
		reg [ 15: 0] dm_out;
		reg [ 15: 0] im_out;
		//output [ 15: 0] bus_out;
		wire dm_en;
		wire [ 15: 0] pc_out;
		wire [ 15: 0] ar_out;
		wire  end_process;
		wire [ 15: 0] r2_out;
		//wire [ 15: 0] ir_out;
 

		processor_a dut (.clock(clock), .status(status), .dm_out(dm_out), .im_out(im_out),.dm_en(dm_en), .pc_out(pc_out), .ar_out(ar_out), .end_process(end_process), .r2_out(r2_out));
      
		
  initial begin
  #500;
  clock = 1'd0; status =2'd0 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd0 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4132; #500;
  
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4103; #500;
  
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd0; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;
  clock = 1'd1; status =2'd1 ; dm_out = 16'd0; im_out = 16'd4101; #500;


																																																			
  
  end
  
  
//  always begin
//    #50;
//	 clock = ~clock;
//  end
  
 endmodule