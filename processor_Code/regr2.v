module regr2(clock,write_en,rst,dm_mem_wr_en,datain,dataout,dm_mem_out); 
	input clock,write_en,dm_mem_wr_en,rst; 
	input [15:0] datain; 
	output reg [15:0] dataout = 16'd0;
	output reg [15:0] dm_mem_out;	
	always @(posedge clock) 
	begin 
	if (write_en == 1)begin
		dataout <= datain; 
	end
	if (dm_mem_wr_en == 1)begin
		dm_mem_out <= datain; 
	end
	if (rst == 1)begin
	    dataout <= 16'd0;
		 $display("[display] time=%0t rst_out=%0d",$time,dataout);
	end
	end

		
endmodule
