module regir(clock,write_en,alu_to_ac,datain,datain_alu,dataout,alu_data);
	
	input clock,write_en,alu_to_ac; 
	
	input [15:0] datain; 
	input [15:0] datain_alu;
	
	output reg [15:0] dataout;
	
	output reg [15:0] alu_data;
	always @(posedge clock) 
	
		begin  	
		if (write_en == 1) 
			dataout <= datain;
			//alu_data <= datain;
			//$display("[display] time=%0t AC_out=%0d ",$time,dataout);
			//$display("[display] time=%0t alu_out=%0d ",$time,alu_data);
		if (alu_to_ac == 1) 
			dataout <= datain_alu;
			//alu_data <= datain;
			//$display("[display] time=%0t AC(al)_out=%0d ",$time,dataout);
			///$display("[display] time=%0t alu_out=%0d ",$time,alu_data);

	   end 
endmodule
