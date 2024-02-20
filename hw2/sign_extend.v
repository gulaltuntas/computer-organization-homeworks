module sign_extend(
output [31:0] sign_ext_imm,
input [15:0] imm);


	
	
	and o1(sign_ext_imm[31], 1'b1, 1'b0);
	and o2(sign_ext_imm[30], 1'b1, 1'b0);
	and o3(sign_ext_imm[29], 1'b1, 1'b0);
	and o4(sign_ext_imm[28], 1'b1, 1'b0);
	and o5(sign_ext_imm[27], 1'b1, 1'b0);
	and o6(sign_ext_imm[26], 1'b1, 1'b0);
	and o7(sign_ext_imm[25], 1'b1, 1'b0);
	and o8(sign_ext_imm[24], 1'b1, 1'b0);
	and o9(sign_ext_imm[23], 1'b1, 1'b0);
	and o10(sign_ext_imm[22], 1'b1, 1'b0);
	and o11(sign_ext_imm[21], 1'b1, 1'b0);
	and o12(sign_ext_imm[20], 1'b1, 1'b0);
	and o13(sign_ext_imm[19], 1'b1, 1'b0);
	and o14(sign_ext_imm[18], 1'b1, 1'b0);
	and o15(sign_ext_imm[17], 1'b1, 1'b0);
	and o16(sign_ext_imm[16], 1'b1, 1'b0);
	or o17(sign_ext_imm[15],imm[15], 0);
	or o18(sign_ext_imm[14],imm[14], 0);
	or o19(sign_ext_imm[13],imm[13], 0);
	or o20(sign_ext_imm[12],imm[12], 0);
	or o21(sign_ext_imm[11],imm[11], 0);
	or o22(sign_ext_imm[10],imm[10], 0);
	or o23(sign_ext_imm[9],imm[9], 0);
	or o24(sign_ext_imm[8],imm[8], 0);
	or o25(sign_ext_imm[7],imm[7], 0);
	or o26(sign_ext_imm[6],imm[6], 0);
	or o27(sign_ext_imm[5],imm[5], 0);
	or o28(sign_ext_imm[4],imm[4], 0);
	or o29(sign_ext_imm[3],imm[3], 0);
	or o30(sign_ext_imm[2],imm[2], 0);
	or o31(sign_ext_imm[1],imm[1], 0);
	or o32(sign_ext_imm[0],imm[0], 0);



endmodule
