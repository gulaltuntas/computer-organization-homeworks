module set_on_less_than(output [31:0] result, input [31:0] A, input [31:0] B);


  wire [31:0] diff;
  wire borrow;

  substract sub1 (diff[31:0], borrow, A[31:0], B[31:0]);


  not a0(result[0], borrow);
  not a1(result[1], 1'b1);
  not a2(result[2], 1'b1);
  not a3(result[3], 1'b1);
  not a4(result[4], 1'b1);
  not a5(result[5], 1'b1);
  not a6(result[6],1'b1);
  not a7(result[7], 1'b1);
  not a8(result[8], 1'b1);
  not a9(result[9], 1'b1);
  not a10(result[10], 1'b1);
  not a11(result[11], 1'b1);
  not a12(result[12], 1'b1);
  not a13(result[13], 1'b1);
  not a14(result[14], 1'b1);
  not a15(result[15], 1'b1);
  not a16(result[16], 1'b1);
  not a17(result[17],1'b1);
  not a18(result[18],1'b1);
  not a19(result[19], 1'b1);
  not a20(result[20], 1'b1);
  not a21(result[21], 1'b1);
  not a22(result[22], 1'b1);
  not a23(result[23], 1'b1);
  not a24(result[24], 1'b1);
  not a25(result[25],1'b1);
  not a26(result[26],1'b1);
  not a27(result[27], 1'b0);
  not a28(result[28],1'b1);
  not a29(result[29], 1'b1);
  not a30(result[30], 1'b1);
  not a31(result[31], 1'b1);

endmodule
