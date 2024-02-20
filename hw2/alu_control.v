module alu_control(
output [2:0] alu_ctr,
input [5:0] function_code,
input [2:0] ALUop);


	wire [2:0] ALUop_not;
	wire [5:0] func_not;
	wire rAnd, rAdd, rSub, rOr, rSlt;
	wire addi, andi, subi, ori, beg, bne, slti, lw, sw, lb, sb;

	wire rType, not_rType;
	
	// take not of alu_op
	not alu_op_not0(ALUop_not[0], ALUop[0]);
	not alu_op_not1(ALUop_not[1], ALUop[1]);
	not alu_op_not2(ALUop_not[2], ALUop[2]);


	// take not of function code
	not func_not0(func_not[0], function_code[0]);
	not func_not1(func_not[1], function_code[1]);
	not func_not2(func_not[2], function_code[2]);
	not func_not3(func_not[3], function_code[3]);
	not func_not4(func_not[4], function_code[4]);
	not func_not5(func_not[5], function_code[5]);

	
	// rType -> ALUop = 111
	and isrType(rType, ALUop[2], ALUop[1], ALUop[0]);
	not notrType (not_rType, rType);

	
	/* determine R-type instructions */
	
	// r_and -> Func = 000100
	and is_r_and(rAnd, rType, func_not[5], func_not[4], func_not[3], function_code[2], func_not[1], func_not[0]);

	// r_add -> Func = 000010
	and is_r_add(rAdd, rType, func_not[5], func_not[4], func_not[3], func_not[2], function_code[1], func_not[0]);

	// r_sub -> Func = 000011
	and is_r_sub(rSub, rType, func_not[5], func_not[4], func_not[3], func_not[2], function_code[1], function_code[0]);

	// r_or -> Func = 000101
	and is_r_or(rOr, rType, func_not[5], func_not[4], func_not[3], function_code[2], func_not[1], function_code[0]);

	// r_slt -> Func = 000111
	and is_r_slt (rSlt, rType, func_not[5], func_not[4], func_not[3], function_code[2], function_code[1], function_code[0]);
	
	

	/* determine I-type instructions */
	
	// andi -> ALUop = 000
	and is_andi(andi, not_rType, ALUop_not[2], ALUop_not[1], ALUop_not[0]);

	// ori -> ALUop = 001
	and is_ori(ori, not_rType, ALUop_not[2], ALUop_not[1], ALUop[0]);

	// slti  -> ALUop = 100
	and is_slti(slti, not_rType, ALUop[2], ALUop_not[1], ALUop_not[0]);

	
	/* determine addi, lb, sb, lw, sw */
	
	// addi -> ALUop = 101
	and is_addi(addi, not_rType, ALUop[2], ALUop_not[1], ALUop[0]);

	// lw -> ALUop = 101 and sw -> ALUop = 101
	and is_lw(lw, not_rType, ALUop[2], ALUop_not[1], ALUop[0]);
	and is_sw(sw, lw, 1'b1);
	
	
	// ADD LB AND SB HERE //
	and is_lb(lb, not_rType, ALUop[2], ALUop_not[1], ALUop[0]);
	and is_sb(sb, not_rType, ALUop[2], ALUop_not[1], ALUop[0]);
	
	// subi -> ALUop = 110 
	and is_subi(subi, not_rType, ALUop[2], ALUop[1], ALUop_not[0]);
	
	// bne || beq -> ALUop = 110
	and is_beq(beq, not_rType, ALUop[2], ALUop[1], ALUop_not[0]);
	and is_bne(bne, beq, 1'b1);



	// assign alu_output


// ALUop[2] is true when slti, addi, lb, sb, lw, sw, subi, beq, bne
or alu_ctr2(alu_ctr[2], slti, rSub, rAdd, addi, lw, sw, lb, sb, subi, rSlt, beq, bne, 1'b0);

// ALUop[1] is true when subi, beq, bne is true
or alu_ctr1(alu_ctr[1], subi, rSub, beq, bne, 1'b0);

// ALUop[0] is true when ori, addi, lb, sb, lw, sb is true 
or alu_ctr0(alu_ctr[0], ori, rOr, rAdd, addi, lw, sw, lb, sb, 1'b0);


	
	
	
	
endmodule
