module shift_left(
output reg [31:0] shifted_address,
input [31:0] address);



and shift31(shifted_address[31], address[30], 1'b1);
and shift30(shifted_address[30], address[29], 1'b1);
and shift29(shifted_address[29], address[28], 1'b1);
and shift28(shifted_address[28], address[27], 1'b1);
and shift27(shifted_address[27], address[26], 1'b1);
and shift26(shifted_address[26], address[25], 1'b1);
and shift25(shifted_address[25], address[24], 1'b1);
and shift24(shifted_address[24], address[23], 1'b1);
and shift23(shifted_address[23], address[22], 1'b1);
and shift22(shifted_address[22], address[21], 1'b1);
and shift21(shifted_address[21], address[20], 1'b1);
and shift20(shifted_address[20], address[19], 1'b1);
and shift19(shifted_address[19], address[18], 1'b1);
and shift18(shifted_address[18], address[17], 1'b1);
and shift17(shifted_address[17], address[16], 1'b1);
and shift16(shifted_address[16], address[15], 1'b1);
and shift15(shifted_address[15], address[14], 1'b1);
and shift14(shifted_address[14], address[13], 1'b1);
and shift13(shifted_address[13], address[12], 1'b1);
and shift12(shifted_address[12], address[11], 1'b1);
and shift11(shifted_address[11], address[10], 1'b1);
and shift10(shifted_address[10], address[9], 1'b1);
and shift9(shifted_address[9], address[8], 1'b1);
and shift8(shifted_address[8], address[7], 1'b1);
and shift7(shifted_address[7], address[6], 1'b1);
and shift6(shifted_address[6], address[5], 1'b1);
and shift5(shifted_address[5], address[4], 1'b1);
and shift4(shifted_address[4], address[3], 1'b1);
and shift3(shifted_address[3], address[2], 1'b1);
and shift2(shifted_address[2], address[1], 1'b1);
and shift1(shifted_address[1], address[0], 1'b1);
and shift0(shifted_address[0], 1'b0, 1'b1);








endmodule
