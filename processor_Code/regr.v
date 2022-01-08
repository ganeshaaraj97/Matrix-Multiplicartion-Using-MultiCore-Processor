module regr(clock,write_en,datain,dataout); 
	input clock,write_en; 
	input [15:0] datain; 
	output reg [15:0] dataout; 
	//assign write_en = 1;
	always @(posedge clock) 
	begin 
	if (write_en == 1) 
		dataout <= datain; 
		//$display("[display] time=%0t ar_out=%0d",$time,dataout);
	end 
endmodule
