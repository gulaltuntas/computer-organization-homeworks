module mips(input clk);
	
	
	/* EVERY INSTRUCTION IS HERE EXCEPT JUMP INSTRUCTIONS. OTHER THAN JUMPS, THIS PROJECT CAN HANDLE
	OTHER INSTRUCTIONS LIKE IT'S STATED IN THE HOMEWORK (HOPEFULLY) */
	
	
	wire [31:0] instruction;
	wire [5:0] opcode, functioncode, not_opcode;
	wire [4:0] rs, rt, rd, shamt;
	wire [17:0] address;
	wire [15:0] immediate_value;
	wire [31:0] sign_ext_imm;
	wire [2:0] ALUop;
	wire regDst, branch, memRead, memWrite, ALUsrc, regWrite, jump, byteOperations, move; 
	wire [4:0] writeRegister;
	wire [31:0] read_data1, read_data2, read_data_temp, write_data;
	wire [2:0] alu_ctr;
	wire [31:0] alu_result;
	wire zero_bit, notzerobit;
	wire cout;
	wire [31:0] pc_sum, pc_sum2;
	wire [31:0] alu_src1, alu_src2;
	reg [31:0] pc;
	wire [31:0] new_pc;
	wire [31:0] move_result;
	wire bne;
	wire [31:0] sb_data, sb_or_read_data2, lb_data, lb_or_read_data;
	wire or_branch, zerobne, aa;
	
	initial begin
	pc = 32'b0;
	end
	
	instruction_block i1(instruction, pc);


	 /*** DIVIDE THE INSTRUCTIONS ***/
	
	// opcode
	or o1(opcode[5], instruction[31], 0);  
	or o2(opcode[4], instruction[30], 0);	
	or o3(opcode[3], instruction[29], 0);	
	or o4(opcode[2], instruction[28], 0);	
	or o5(opcode[1], instruction[27], 0);	
	or o6(opcode[0], instruction[26], 0);
	
	// rs
	or o7(rs[4], instruction[25], 0); 
	or o8(rs[3], instruction[24], 0);	
	or o9(rs[2], instruction[23], 0);	
	or o10(rs[1], instruction[22], 0);	
	or o11(rs[0], instruction[21], 0);
	
	
	// rt
	or o12(rt[4], instruction[20], 0); 
	or o13(rt[3], instruction[19], 0);	
	or o14(rt[2], instruction[18], 0);
	or o15(rt[1], instruction[17], 0);	
	or o16(rt[0], instruction[16], 0);
	
	// rd
	or o17(rd[4], instruction[15], 0); 
	or o18(rd[3], instruction[14], 0);	
	or o19(rd[2], instruction[13], 0);	
	or o20(rd[1], instruction[12], 0);	
	or o21(rd[0], instruction[11], 0);	
	
	// shamt
	or o22(shamt[4], instruction[10], 0); 
	or o23(shamt[3], instruction[9], 0);	
	or o24(shamt[2], instruction[8], 0);	
	or o25(shamt[1], instruction[7], 0);	
	or o26(shamt[0], instruction[6], 0);	
	
	// func
	or o27(functioncode[5], instruction[5], 0); 
	or o28(functioncode[4], instruction[4], 0);	
	or o29(functioncode[3], instruction[3], 0);	
	or o30(functioncode[2], instruction[2], 0);	
	or o31(functioncode[1], instruction[1], 0);
	or o32(functioncode[0], instruction[0], 0);
	
	// immediate
	or o47(immediate_value[15], instruction[15]); 
	or o48(immediate_value[14], instruction[14]);	
	or o33(immediate_value[13], instruction[13]);	
	or o34(immediate_value[12], instruction[12]);
	or o35(immediate_value[11], instruction[11]);	
	or o36(immediate_value[10], instruction[10]);
	or o37(immediate_value[9], instruction[9]); 
	or o38(immediate_value[8], instruction[8]);	
	or o39(immediate_value[7], instruction[7]);	
	or o40(immediate_value[6], instruction[6]);
	or o41(immediate_value[5], instruction[5]);	
	or o42(immediate_value[4], instruction[4]);
	or o43(immediate_value[3], instruction[3]); 
	or o44(immediate_value[2], instruction[2]);	
	or o45(immediate_value[1], instruction[1]);	
	or o46(immediate_value[0], instruction[0]);
	
		
	not n1(not_opcode[0], opcode[0]);
	not n2(not_opcode[1], opcode[1]);
	not n3(not_opcode[2], opcode[2]);
	not n4(not_opcode[3], opcode[3]);
	not n5(not_opcode[4], opcode[4]);
	not n6(not_opcode[5], opcode[5]);
	
	
	and is_bne(bne, opcode[5], not_opcode[4], not_opcode[3], opcode[2], opcode[1], opcode[0]);
	
	sign_extend se(sign_ext_imm, immediate_value);
	
	control_unit ctrl(regDst, branch, memRead, memWrite, ALUop, ALUsrc, regWrite, jump, byteOperations, move, opcode);
	
	mux2bit m1(writeRegister[4], rt[4], rd[4], regDst);
	mux2bit m2(writeRegister[3], rt[3], rd[3], regDst);
	mux2bit m3(writeRegister[2], rt[2], rd[2], regDst);
	mux2bit m4(writeRegister[1], rt[1], rd[1], regDst);
	mux2bit m5(writeRegister[0], rt[0], rd[0], regDst);

	register_block registerblck(read_data1, read_data2, move_result, rs, rt, writeRegister, regWrite);
	
	mux32x1 m6(alu_src2, read_data2, sign_ext_imm, ALUsrc); // mux before alu to check if it's i or normal

	alu_control alu_ctrl(alu_ctr, functioncode, ALUop);	
	
	alu alu32(alu_result, zero_bit, read_data1, alu_src2, alu_ctr);

	and a1 (address[17], alu_result[17], 1'b1);
	and a2 (address[16], alu_result[16], 1'b1);
	and a3 (address[15], alu_result[15], 1'b1);
	and a4 (address[14], alu_result[14], 1'b1);
	and a5 (address[13], alu_result[13], 1'b1);
	and a6 (address[12], alu_result[12], 1'b1);
	and a7 (address[11], alu_result[11], 1'b1);
	and a8 (address[10], alu_result[10], 1'b1);
	and a9 (address[9], alu_result[9], 1'b1);
	and a10 (address[8], alu_result[8], 1'b1);
	and a11 (address[7], alu_result[7], 1'b1);
	and a12 (address[6], alu_result[6], 1'b1);
	and a13 (address[5], alu_result[5], 1'b1);
	and a14 (address[4], alu_result[4], 1'b1);
	and a15 (address[3], alu_result[3], 1'b1);
	and a16 (address[2], alu_result[2], 1'b1);
	and a17 (address[1], alu_result[1], 1'b1);
	and a18 (address[0], alu_result[0], 1'b1);
	
	
	assign sb_data[7:0] = read_data2[7:0];
	assign sb_data[31:8] = 24'b0;
	mux32x1 m8 (sb_or_read_data2, read_data2, sb_data, byteOperations);

	memory_block mb(read_data_temp, byteOperations, address, sb_or_read_data2, memRead, memWrite);

	assign lb_data[7:0] = read_data_temp[7:0];
	assign lb_data[31:8] = 24'b0;

	mux32x1 m9(lb_or_read_data, read_data_temp, lb_data, byteOperations);

	mux32x1 m10(mux_result, alu_result, lb_or_read_data, memRead);
	
	adder32bit adder1(pc_sum, cout, 32'b1, pc, 1'b0);
	adder32bit adder2(pc_sum2, cout, sign_ext_imm, pc_sum, 1'b0);
	
	and andddd(aa, zero_bit, branch);
	not not22(notzerobit, zero_bit);
	
	and anddd(zerobne, bne, notzerobit);
	or orb(or_branch, zerobne, aa);
	
	mux32x1 m11 (new_pc, pc_sum, pc_sum2, or_branch);
	
	mux32x1 m12 (move_result, read_data1, mux_result, move);
	
	
	always @(posedge clk) begin
	 pc = new_pc;
	 end
	
	
endmodule
