module ultimate(clock,start_process);

				wire [ 15: 0] dm_out_a;
				wire [ 15: 0] dm_out_b;
				wire [ 15: 0] dm_out_c;
				wire [ 15: 0] dm_out_d;
				
				wire [ 15: 0] im_out_a;
				wire [ 15: 0] im_out_b;
				wire [ 15: 0] im_out_c;
				wire [ 15: 0] im_out_d;
				
				wire [ 15: 0] r2_out_a;
				wire [ 15: 0] r2_out_b;
				wire [ 15: 0] r2_out_c;
				wire [ 15: 0] r2_out_d;
				
				wire dm_en_a;
				wire dm_en_b;
				wire dm_en_c;
				wire dm_en_d;
				
				wire end_process_a;
				wire end_process_b;
				wire end_process_c;
				wire end_process_d;
				
				wire [ 15: 0] ar_out_a;
				wire [ 15: 0] ar_out_b;
				wire [ 15: 0] ar_out_c;
				wire [ 15: 0] ar_out_d;
				
				wire [ 15: 0] pc_out_a;
				wire [ 15: 0] pc_out_b;
				wire [ 15: 0] pc_out_c;
				wire [ 15: 0] pc_out_d;

				wire end_process;

				wire [ 1: 0] status_a;
				wire [ 1: 0] status_b;
				wire [ 1: 0] status_c;
				wire [ 1: 0] status_d;
				
				input wire start_process;
				input wire clock;
				//output [ 15: 0] dm_out_a;
				//wire clock;
				reg begin_process;
				
				wire [ 15: 0] datain_a;
				wire data_write_en_a;
				wire [ 15: 0] data_addr_a;
				
				wire [ 15: 0] datain_b;
				wire data_write_en_b;
				wire [ 15: 0] data_addr_b;
				
				wire [ 15: 0] datain_c;
				wire data_write_en_c;
				wire [ 15: 0] data_addr_c;
				
				wire [ 15: 0] datain_d;
				wire data_write_en_d;
				wire [ 15: 0] data_addr_d;
				
				wire [ 15: 0] instr_addr_a;
				wire [ 15: 0] instr_addr_b;
				wire [ 15: 0] instr_addr_c;
				wire [ 15: 0] instr_addr_d;
				
				//reg [ 9: 0] process_switch_buffer = 10'd0;
				
				always @(posedge clock) begin
				

							if (start_process == 1) begin
							//process_switch_buffer <= process_switch_buffer;
							begin_process <=1;
							end
				         else begin
							//process_switch_buffer <= process_switch_buffer + 10'd1;
							begin_process <=0;
							end
//				end
//				else begin
//				process_switch_buffer <= 10'd0;
//				begin_process <= 0;
//				
//				end
				end
				//bus+out not needed
				
				// selector not needed
				
				instr_memory instr_memory1(. clock(clock),. addr_a(pc_out_a),. addr_b(pc_out_b),. addr_c(pc_out_c),. addr_d(pc_out_d),. instr_out_a(instr_addr_a),. instr_out_b(instr_addr_b),. instr_out_c(instr_addr_c),. instr_out_d(instr_addr_d));
				
				maincontroller maincontroller1(. clock(clock),. begin_process(begin_process),. end_process(end_process_a),. status(status_a));
				
				maincontroller maincontroller2(. clock(clock),. begin_process(begin_process),. end_process(end_process_b),. status(status_b));
				
				maincontroller maincontroller3(. clock(clock),. begin_process(begin_process),. end_process(end_process_c),. status(status_c));
				
				maincontroller maincontroller4(. clock(clock),. begin_process(begin_process),. end_process(end_process_d),. status(status_d));
				
				//selector(. clock(clock),. status(status),. r2_out_a(r2_out_a),. dm_en_a(dm_en_a),. ar_out_a(ar_out_a),. datain_a(datain_a),. data_write_en_a(data_write_en_a),. data_addr_a(data_addr_a),. r2_out_b(r2_out_b),. dm_en_b(dm_en_b),. ar_out_b(ar_out_b),. datain_b(datain_b),. data_write_en_b(data_write_en_b),. data_addr_b(data_addr_b),. r2_out_c(r2_out_c),. dm_en_c(dm_en_c),. ar_out_c(ar_out_c),. datain_c(datain_c),. data_write_en_c(data_write_en_c),. data_addr_c(data_addr_c),. r2_out_d(r2_out_d),. dm_en_d(dm_en_d),. ar_out_d(ar_out_d),. datain_d(datain_d),. data_write_en_d(data_write_en_d),. data_addr_d(data_addr_d));
				
				datamemory datamemory1(. clock(clock),. datain_a(r2_out_a),. data_write_en_a(dm_en_a),. data_addr_a(ar_out_a),. datain_b(r2_out_b),. data_write_en_b(dm_en_b),. data_addr_b(ar_out_b),. datain_c(r2_out_c),. data_write_en_c(dm_en_c),. data_addr_c(ar_out_c),. datain_d(r2_out_d),. data_write_en_d(dm_en_d),. data_addr_d(ar_out_d),. dataout_a(dm_out_a),. dataout_b(dm_out_b),. dataout_c(dm_out_c),. dataout_d(dm_out_d));
				
				processor_a processora1 (. clock(clock),. dm_out(dm_out_a),. im_out(instr_addr_a),. dm_en(dm_en_a),. pc_out(pc_out_a),. ar_out(ar_out_a),. status(status_a),. r2_out(r2_out_a),. end_process(end_process_a));
				
				processor_b processorb1 (. clock(clock),. dm_out(dm_out_b),. im_out(instr_addr_b),. dm_en(dm_en_b),. pc_out(pc_out_b),. ar_out(ar_out_b),. status(status_b),. r2_out(r2_out_b),. end_process(end_process_b));
				
				processor_c processorc1 (. clock(clock),. dm_out(dm_out_c),. im_out(instr_addr_c),. dm_en(dm_en_c),. pc_out(pc_out_c),. ar_out(ar_out_c),. status(status_c),. r2_out(r2_out_c),. end_process(end_process_c));
				
				processor_d processord1 (. clock(clock),. dm_out(dm_out_d),. im_out(instr_addr_d),. dm_en(dm_en_d),. pc_out(pc_out_d),. ar_out(ar_out_d),. status(status_d),. r2_out(r2_out_d),. end_process(end_process_d));
				
endmodule
				
				
				