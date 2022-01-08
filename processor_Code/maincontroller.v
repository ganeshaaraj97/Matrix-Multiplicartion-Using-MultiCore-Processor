module maincontroller(

				input clock,
				input begin_process,
				input end_process,
				output reg [1:0] status);
				
				reg [ 1: 0] present = 2'b01;
				reg [ 1: 0] next = 2'b01;
				parameter
				process = 2'b01,
				alldone = 2'b11;
				
				always @(posedge clock)
				present <= next;
				
				always @(present or begin_process or end_process)
				
				case(present)
				
							process: begin
							
							status <= 2'b01;
							
							if (end_process)
							
							next<=alldone;
							
							else
							
							next<=process;
							
							$display("status=%b",status);
							
							end
							
							alldone: begin
							
							status <= 2'b11;
							
							//$display("status=%b",status);

							next<=alldone;
							
							end
							
							endcase
endmodule
