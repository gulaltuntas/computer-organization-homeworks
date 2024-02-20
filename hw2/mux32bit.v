module mux32bit (input[31:0] and_result,or_result,xor_result,nor_result,slt_result,add_result,sub_result,
input[2:0] op_code,
output[31:0] out);

mux8x1 m0(and_result[0], or_result[0], xor_result[0], nor_result[0], slt_result[0], add_result[0], sub_result[0], op_code[0], op_code[1], op_code[2], out[0]);
mux8x1 m1(and_result[1], or_result[1], xor_result[1], nor_result[1], slt_result[1], add_result[1], sub_result[1], op_code[0], op_code[1], op_code[2], out[1]);
mux8x1 m2(and_result[2], or_result[2], xor_result[2], nor_result[2], slt_result[2], add_result[2], sub_result[2], op_code[0], op_code[1], op_code[2], out[2]);
mux8x1 m3(and_result[3], or_result[3], xor_result[3], nor_result[3], slt_result[3], add_result[3], sub_result[3], op_code[0], op_code[1], op_code[2], out[3]);
mux8x1 m4(and_result[4], or_result[4], xor_result[4], nor_result[4], slt_result[4], add_result[4], sub_result[4], op_code[0], op_code[1], op_code[2], out[4]);
mux8x1 m5(and_result[5], or_result[5], xor_result[5], nor_result[5], slt_result[5], add_result[5], sub_result[5], op_code[0], op_code[1], op_code[2], out[5]);
mux8x1 m6(and_result[6], or_result[6], xor_result[6], nor_result[6], slt_result[6], add_result[6], sub_result[6], op_code[0], op_code[1], op_code[2], out[6]);
mux8x1 m7(and_result[7], or_result[7], xor_result[7], nor_result[7], slt_result[7], add_result[7], sub_result[7], op_code[0], op_code[1], op_code[2], out[7]);
mux8x1 m8(and_result[8], or_result[8], xor_result[8], nor_result[8], slt_result[8], add_result[8], sub_result[8], op_code[0], op_code[1], op_code[2], out[8]);
mux8x1 m9(and_result[9], or_result[9], xor_result[9], nor_result[9], slt_result[9], add_result[9], sub_result[9], op_code[0], op_code[1], op_code[2], out[9]);
mux8x1 m10(and_result[10], or_result[10], xor_result[10], nor_result[10], slt_result[10], add_result[10], sub_result[10], op_code[0], op_code[1], op_code[2], out[10]);
mux8x1 m11(and_result[11], or_result[11], xor_result[11], nor_result[11], slt_result[11], add_result[11], sub_result[11], op_code[0], op_code[1], op_code[2], out[11]);
mux8x1 m12(and_result[12], or_result[12], xor_result[12], nor_result[12], slt_result[12], add_result[12], sub_result[12], op_code[0], op_code[1], op_code[2], out[12]);
mux8x1 m13(and_result[13], or_result[13], xor_result[13], nor_result[13], slt_result[13], add_result[13], sub_result[13], op_code[0], op_code[1], op_code[2], out[13]);
mux8x1 m14(and_result[14], or_result[14], xor_result[14], nor_result[14], slt_result[14], add_result[14], sub_result[14], op_code[0], op_code[1], op_code[2], out[14]);
mux8x1 m15(and_result[15], or_result[15], xor_result[15], nor_result[15], slt_result[15], add_result[15], sub_result[15], op_code[0], op_code[1], op_code[2], out[15]);
mux8x1 m16(and_result[16], or_result[16], xor_result[16], nor_result[16], slt_result[16], add_result[16], sub_result[16], op_code[0], op_code[1], op_code[2], out[16]);
mux8x1 m17(and_result[17], or_result[17], xor_result[17], nor_result[17], slt_result[17], add_result[17], sub_result[17], op_code[0], op_code[1], op_code[2], out[17]);
mux8x1 m18(and_result[18], or_result[18], xor_result[18], nor_result[18], slt_result[18], add_result[18], sub_result[18], op_code[0], op_code[1], op_code[2], out[18]);
mux8x1 m19(and_result[19], or_result[19], xor_result[19], nor_result[19], slt_result[19], add_result[19], sub_result[19], op_code[0], op_code[1], op_code[2], out[19]);
mux8x1 m20(and_result[20], or_result[20], xor_result[20], nor_result[20], slt_result[20], add_result[20], sub_result[20], op_code[0], op_code[1], op_code[2], out[20]);
mux8x1 m21(and_result[21], or_result[21], xor_result[21], nor_result[21], slt_result[21], add_result[21], sub_result[21], op_code[0], op_code[1], op_code[2], out[21]);
mux8x1 m22(and_result[22], or_result[22], xor_result[22], nor_result[22], slt_result[22], add_result[22], sub_result[22], op_code[0], op_code[1], op_code[2], out[22]);
mux8x1 m23(and_result[23], or_result[23], xor_result[23], nor_result[23], slt_result[23], add_result[23], sub_result[23], op_code[0], op_code[1], op_code[2], out[23]);
mux8x1 m24(and_result[24], or_result[24], xor_result[24], nor_result[24], slt_result[24], add_result[24], sub_result[24], op_code[0], op_code[1], op_code[2], out[24]);
mux8x1 m25(and_result[25], or_result[25], xor_result[25], nor_result[25], slt_result[25], add_result[25], sub_result[25], op_code[0], op_code[1], op_code[2], out[25]);
mux8x1 m26(and_result[26], or_result[26], xor_result[26], nor_result[26], slt_result[26], add_result[26], sub_result[26], op_code[0], op_code[1], op_code[2], out[26]);
mux8x1 m27(and_result[27], or_result[27], xor_result[27], nor_result[27], slt_result[27], add_result[27], sub_result[27], op_code[0], op_code[1], op_code[2], out[27]);
mux8x1 m28(and_result[28], or_result[28], xor_result[28], nor_result[28], slt_result[28], add_result[28], sub_result[28], op_code[0], op_code[1], op_code[2], out[28]);
mux8x1 m29(and_result[29], or_result[29], xor_result[29], nor_result[29], slt_result[29], add_result[29], sub_result[29], op_code[0], op_code[1], op_code[2], out[29]);
mux8x1 m30(and_result[30], or_result[30], xor_result[30], nor_result[30], slt_result[30], add_result[30], sub_result[30], op_code[0], op_code[1], op_code[2], out[30]);
mux8x1 m31(and_result[31], or_result[31], xor_result[31], nor_result[31], slt_result[31], add_result[31], sub_result[31], op_code[0], op_code[1], op_code[2], out[31]);


endmodule