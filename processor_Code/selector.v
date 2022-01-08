module selector(
			input clock,
			input [ 1: 0] status, 
			input [ 15: 0] r2_out_a,
			input dm_en_a,
			input [ 15: 0] ar_out_a,
			input [ 15: 0] r2_out_b,
			input dm_en_b,
			input [ 15: 0] ar_out_b,
			input [ 15: 0] r2_out_c,
			input dm_en_c,
			input [ 15: 0] ar_out_c,
			input [ 15: 0] r2_out_d,
			input dm_en_d,
			input [ 15: 0] ar_out_d,
			output reg [ 15: 0] datain_a, 
			output reg data_write_en_a,
			output reg [ 15: 0] data_addr_a, 
			output reg [ 15: 0] datain_b, 
			output reg data_write_en_b,
			output reg [ 15: 0] data_addr_b,
			output reg [ 15: 0] datain_c, 
			output reg data_write_en_c,
			output reg [ 15: 0] data_addr_c,
			output reg [ 15: 0] datain_d, 
			output reg data_write_en_d,
			output reg [ 15: 0] data_addr_d);
			
			always @(posedge clock)
			case (status)
			
			2'b01: begin // processing
			datain_a <= r2_out_a;
			data_write_en_a <=dm_en_a;
			data_addr_a <= ar_out_a;
			datain_b <= r2_out_b;
			data_write_en_b <=dm_en_b;
			data_addr_b <= ar_out_b;
			datain_c <= r2_out_c;
			data_write_en_c <=dm_en_c;
			data_addr_c <= ar_out_c;
			datain_d <= r2_out_d;
			data_write_en_d <=dm_en_d;
			data_addr_d <= ar_out_d;
			end
			
			endcase
endmodule


		