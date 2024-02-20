module less_than(output [31:0] result, input [31:0] A, input [31:0] B);


  wire [31:0] diff;
  wire borrow;
  wire temp;

  substract sub1 (diff[31:0], borrow, A[31:0], B[31:0]);

  not not1(temp, diff[31]);
  
  and a0(result[0], 1'b1, temp);
  and a1(result[1], 1'b0, temp);
  and a2(result[2], 1'b0, temp);
  and a3(result[3], 1'b0, temp);
  and a4(result[4], 1'b0, temp);
  and a5(result[5], 1'b0, temp);
  and a6(result[6],1'b0, temp);
  and a7(result[7], 1'b0, temp);
  and a8(result[8], 1'b0, temp);
  and a9(result[9], 1'b0, temp);
  and a10(result[10], 1'b0, temp);
  and a11(result[11], 1'b0, temp);
  and a12(result[12], 1'b0, temp);
  and a13(result[13], 1'b0, temp);
  and a14(result[14], 1'b0, temp);
  and a15(result[15], 1'b0, temp);
  and a16(result[16], 1'b0, temp);
  and a17(result[17],1'b0, temp);
  and a18(result[18],1'b0, temp);
  and a19(result[19], 1'b0, temp);
  and a20(result[20], 1'b0, temp);
  and a21(result[21], 1'b0, temp);
  and a22(result[22], 1'b0, temp);
  and a23(result[23], 1'b0, temp);
  and a24(result[24], 1'b0, temp);
  and a25(result[25],1'b0,temp );
  and a26(result[26],1'b0, temp);
  and a27(result[27], 1'b0,temp);
  and a28(result[28],1'b0, temp);
  and a29(result[29], 1'b0, temp);
  and a30(result[30], 1'b0, temp);
  and a31(result[31], 1'b0, temp);

endmodule
