module datamemory(clock,datain_a,data_write_en_a,data_addr_a,datain_b,data_write_en_b,data_addr_b,datain_c,data_write_en_c,data_addr_c,datain_d,data_write_en_d,data_addr_d,dataout_a,dataout_b,dataout_c,dataout_d); 
 
	input clock;  	
	input data_write_en_a; 
	input [15:0] data_addr_a;
	input [15:0] datain_a;
	
   input data_write_en_b; 
	input [15:0] data_addr_b;
	input [15:0] datain_b;
	
   input data_write_en_c; 
	input [15:0] data_addr_c;
	input [15:0] datain_c;
	
   input data_write_en_d; 
	input [15:0] data_addr_d;
	input [15:0] datain_d;
	
	output reg [15:0] dataout_a;
	output reg [15:0] dataout_b;
	output reg [15:0] dataout_c;
	output reg [15:0] dataout_d;
	
	reg [7:0] ram_in_1[0:15];
	reg [7:0] ram_in_2[0:15];
	reg [15:0] ram_A[0:100];
	reg [15:0] ram_B[0:100];
	reg [15:0] ram_C[0:100];
	reg [15:0] ram_D[0:100];
	
	//reg [15:0] ram [0:65535];
	
	integer i;
	integer k;
	integer f;
	
	initial 
	begin
	   //f = $fopen("C:/Users/PC/Desktop/98_07_20_device_analysis/Matrix_final.txt","w");
		$readmemb("C:/Users/PC/Desktop/98_07_20_device_analysis/Matrix_A.txt", ram_in_1);
		$readmemb("C:/Users/PC/Desktop/98_07_20_device_analysis/Matrix_B.txt", ram_in_2);
		
		ram_A[0] = 16'd4;
		ram_B[0] = 16'd4;
		ram_C[0] = 16'd4;
		ram_D[0] = 16'd4;
		ram_A[1] = 16'd4;
		ram_B[1] = 16'd4;
		ram_C[1] = 16'd4;
		ram_D[1] = 16'd4;
		ram_A[2] = 16'd4;
		ram_B[2] = 16'd4;
		ram_C[2] = 16'd4;
		ram_D[2] = 16'd4;
		
		for(k=0; k<4; k=k+1)
			begin
				ram_A[3+k]=ram_in_1[0+k];
				ram_B[3+k]=ram_in_1[4+k];
				ram_C[3+k]=ram_in_1[8+k];
				ram_D[3+k]=ram_in_1[12+k];
			end
		
		for(i=0; i<16; i=i+1)
			begin
				ram_A[8+i]=ram_in_2[i];
				ram_B[8+i]=ram_in_2[i];
				ram_C[8+i]=ram_in_2[i];
				ram_D[8+i]=ram_in_2[i];
			end
		
	end

	always @(posedge clock) 
 		begin
			if (data_write_en_a == 1)begin
				ram_A[data_addr_a] <= datain_a[15:0];
			   //$display("data_writee_out=%b",datain_a[15:0]);	
			end
 	 	 	else begin
				dataout_a <= ram_A[data_addr_a];
			end
		end
	always @(posedge clock) 
		begin
			if (data_write_en_b == 1)begin
				ram_B[data_addr_b] <= datain_b[15:0]; 
				//$display("b=%b",datain_b[15:0]);
			end
			else begin
				dataout_b <= ram_B[data_addr_b];
			end
		end
	always @(posedge clock) 
		begin
			if (data_write_en_c == 1)begin
				ram_C[data_addr_c] <= datain_c[15:0]; 
				//$display("c=%b",datain_c[15:0]);
			end
			else begin
				dataout_c <= ram_C[data_addr_c];
			end
		end
	always @(posedge clock) 
		begin
			if (data_write_en_d == 1)begin
				ram_D[data_addr_d] <= datain_d[15:0]; 
			end
			else begin
				dataout_d <= ram_D[data_addr_d];
				//$display("d=%b",datain_d[15:0]);
			end
		end
endmodule

