module ultimate_tb();
	reg clock;
	reg start_process;
	integer k;
   //wire dm_out_a;
  
   ultimate dut (.clock(clock), .start_process(start_process));
	
//initial begin
//#50;
//clock = 1'd0; start_process =1'd0;#50;
//clock = 1'd1; start_process =1'd0;#50;
//clock = 1'd0; start_process =1'd1;#50;
//clock = 1'd1; start_process =1'd1;#50;
//clock = 1'd0; start_process =1'd1;#50;
//clock = 1'd1; start_process =1'd1;#50;
//clock = 1'd0; start_process =1'd1;#50;


initial begin 
clock = 0; 
start_process=1;																		 

for (k=0; k<4000; k=k+1) 
    begin
       #50  clock =  ! clock; 
    end
end



endmodule 