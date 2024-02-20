module control_unit(
output regDst,
output branch,
output memRead,
output memWrite,
output [2:0] ALUop, 
output ALUsrc,
output regWrite,
output jump,
output byteOperations,
output move, 
input [5:0] opcode);

	wire addi, subi, andi, ori,lw, sw, lb, sb, slti, beq, bnq;
	wire r_type, i_type, j_type;


	wire [5:0] opcode_not;

	not not5(opcode_not[5], opcode[5]);
	not not4(opcode_not[4], opcode[4]);
	not not3(opcode_not[3], opcode[3]);
	not not2(opcode_not[2], opcode[2]);
	not not1(opcode_not[1], opcode[1]);
	not not0(opcode_not[0], opcode[0]); 

	and is_r (r_type, opcode_not[5], opcode_not[4], opcode_not[3], opcode_not[2], opcode_not[1], opcode_not[0]);

	and is_addi (addi, opcode_not[5], opcode_not[4], opcode_not[3], opcode_not[2], opcode[1], opcode_not[0]);
	
	and is_subi (subi, opcode_not[5], opcode_not[4], opcode_not[3], opcode_not[2], opcode_not[1], opcode[0]);
	
	and is_andi (andi, opcode_not[5], opcode_not[4], opcode_not[3], opcode[2], opcode_not[1], opcode_not[0]);
	
	and is_ori (ori, opcode_not[5], opcode_not[4], opcode_not[3], opcode[2], opcode_not[1], opcode[0]);
	
	and is_lw (lw, opcode_not[5], opcode_not[4], opcode[3], opcode_not[2], opcode_not[1], opcode_not[0]);
	
	and is_sw (sw, opcode_not[5], opcode[4], opcode_not[3], opcode_not[2], opcode_not[1], opcode_not[0]);
	
	and is_lb (lb, opcode_not[5], opcode_not[4], opcode[3], opcode_not[2], opcode_not[1], opcode[0]);
	
	and is_sb (sb, opcode_not[5], opcode[4], opcode_not[3], opcode_not[2], opcode_not[1], opcode[0]);
	
	and is_slti (slti, opcode_not[5], opcode_not[4], opcode_not[3], opcode[2], opcode[1], opcode[0]);
	
	and is_beq (beq, opcode[5], opcode_not[4], opcode_not[3], opcode_not[2], opcode[1], opcode[0]);
	
	and is_bnq (bnq, opcode[5], opcode_not[4], opcode_not[3], opcode[2], opcode[1], opcode[0]);

	or is_i(i_type, addi, subi, andi, ori, lw, sw,lb, sb, slti, beq, bnq, 1'b0);


and is_move(move, opcode[5], opcode_not[4], opcode_not[3], opcode_not[2], opcode[1], opcode_not[0]);

and is_regDst(regDst, r_type, 1'b1);
or is_branch(branch, bnq, beq,1'b0);
or is_mem_read(memRead, lw, lb, 1'b0);
or is_mem_write(memWrite, sw, sb, 1'b0);
and is_alu_src(ALUsrc, i_type, 1'b1);
or is_reg_write(regWrite, r_type, i_type, 1'b0);
// and is_jump(jump, j_type, 1'b1);

or is_byteOperations(byteOperations, sb,lb, 1'b0);

or ALUop2(ALUop[2], slti, addi, lb, sb,lw, sw, r_type, subi, beq, bnq, 1'b0);
or ALUop1(ALUop[1], subi, beq, bnq, r_type, 1'b0);
or ALUop0(ALUop[0], ori, addi, lb, sb, lw, sw, r_type, 1'b0);
 
endmodule
