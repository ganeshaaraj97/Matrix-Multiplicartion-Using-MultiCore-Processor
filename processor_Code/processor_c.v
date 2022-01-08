module processor_c(clock, status,dm_out, im_out,dm_en, pc_out, ar_out,end_process,r2_out);
		input clock;
		input [ 1: 0] status;
		input [ 15: 0] dm_out;
		input [ 15: 0] im_out;
		//output [ 15: 0] bus_out;
		output reg dm_en;
		output [ 15: 0] pc_out;
		output [ 15: 0] ar_out;
		output  end_process;
		output [ 15: 0] r2_out;
		//output [ 15: 0] ir_out;
		wire mem_write;
		wire [ 2: 0] alu_op;
		wire [ 15:0 ] bus_out;
		wire [ 15:0] alu_out;
		//wire [ 15:0] ar_out;
		wire [ 15:0] r2_out;
		wire [ 15:0] r2_bus_out;
		wire [ 15:0] pc_out;
		wire [ 15: 0] ir_out;
		//wire [ 15: 0] ir_out_2;
		wire [ 15: 0] am_out;
		wire [ 15: 0] an_out;
		wire [ 15: 0] bn_out;
		wire [ 15: 0] arp_out;
		wire [ 15: 0] acp_out;
		wire [ 15: 0] bcp_out;
		wire [ 15: 0] aa_out;
		wire [ 15: 0] ab_out;
		wire [ 15: 0] ad_out;
		wire [ 15: 0] out_aa_out;
		wire [ 15: 0] out_ab_out;
		wire [ 15: 0] out_ad_out;
		wire [ 15: 0] alu_ac_out;
		wire [ 15: 0] r1_out;
		wire [ 15: 0] ac_out;
		wire [ 15: 0] write_en;
		wire [ 3: 0] read_en;
		wire [ 2: 0] rst;
		wire [ 15: 0] inc_en;
		wire [ 15: 0] z ;
		regr ar(. clock(clock),. write_en(write_en[0] ),. datain(bus_out),. dataout(ar_out)) ;
		
		regr2 r2(. clock(clock),. write_en(write_en[1] ),. rst(rst[1]),. datain(bus_out),. dataout(r2_bus_out),. dm_mem_out(r2_out),. dm_mem_wr_en(mem_write)) ;
		
		regrinc pc(. clock(clock),. write_en(write_en[2] ),. datain(bus_out),. dataout(pc_out),. inc_en(inc_en[2])) ;
		
		regr ir(. clock(clock),. write_en(write_en[3] ),. datain(bus_out),. dataout(ir_out)) ;
		
		regrinc am(. clock(clock),. write_en(write_en[4] ),. datain(bus_out),. dataout(am_out),. inc_en(inc_en[4])) ;
		
		regran an(. clock(clock),. write_en(write_en[5] ),. rst(rst[0]),. datain(bus_out),. dataout(an_out),. inc_en(inc_en[5])) ;
		
		regrinc bn(. clock(clock),. write_en(write_en[6] ),. datain(bus_out),. dataout(bn_out),. inc_en(inc_en[6])) ;
		
		regr arp(. clock(clock),. write_en(write_en[7] ),. datain(bus_out),. dataout(arp_out)) ;
		
		regr acp(. clock(clock),. write_en(write_en[8] ),. datain(bus_out),. dataout(acp_out)) ;
		
		regr bcp(. clock(clock),. write_en(write_en[9] ),. datain(bus_out),. dataout(bcp_out)) ;
		
//		regr aa(. clock(clock),. datain(out_aa_out),. dataout(aa_out)) ;
//		
//		regr ab(. clock(clock),. datain(out_ab_out),. dataout(ab_out)) ;
//		
//		regr ad(. clock(clock),. datain(out_ad_out),. dataout(ad_out)) ;
		
		regr r1(. clock(clock),. write_en(write_en[10] ),. datain(bus_out),. dataout(r1_out)) ;
		
		bus bus1(. aa(out_aa_out) ,. r2(r2_bus_out),. ir(ir_out),. ab(out_ab_out),. am(am_out),. an(an_out),. bn(bn_out),. arp(arp_out),. acp(acp_out),. bcp(bcp_out),. ac(ac_out),. ad(out_ad_out),. dm(dm_out),. im(im_out),. read_en(read_en),. clock(clock),. busout(bus_out)) ;
		
		regir ac(. clock(clock),. write_en(write_en[11] ),.alu_to_ac(write_en[12]),. datain(bus_out),. datain_alu(alu_out),. dataout(ac_out),. alu_data(alu_ac_out));
		
		alu alu1(. clock(clock),. in1(r1_out) ,. in2(ac_out),. alu_op(alu_op),. alu_out(alu_out),. z(z) ) ;
		
		control_c control_c1(. clock(clock),
		. z(z),
		. status(status),
		. instruction(ir_out),
		. alu_op(alu_op),
		. rst(rst),
		. write_en(write_en),
		. read_en(read_en),
		. inc_en(inc_en),
		. mem_wr(mem_write),
		. end_process(end_process));
		
		address_select address_select_a (. clock(clock),. in1(am_out) ,. in2(an_out),. in3(bn_out),. out_address_aa(out_aa_out),. out_address_ab(out_ab_out),. out_address_ad(out_ad_out) );
		
		always @ (posedge clock)
					if (status == 2'b01) begin
							dm_en <= write_en[13] ;
							//im_en <= write_en[13] ;
					end
endmodule
