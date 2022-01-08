module regran(clock,write_en,rst,datain,dataout,inc_en);
	
	input clock,write_en,inc_en,rst; 
	
	input [15:0] datain; 
	
	output reg [15:0] dataout=16'd0;
	
	always @(posedge clock) 
	
		begin 
	   //$display("[display] time=%0t rst=%0d",$time,rst);
		if (write_en == 1) 
			dataout <= datain; 
		if (inc_en == 1) 
			dataout <= dataout + 16'd1; 
//			$display("[display] time=%0t pc_out=%0d",$time,dataout);
      if(rst == 1) begin
		   dataout <= 16'd0;
			//$display("[display] time=%0t rst_out=%0d",$time,dataout);
			end
	end 

endmodule
