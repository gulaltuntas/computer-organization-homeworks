module mux32x1(output [31:0] out, input [31:0] in1, in2, input ALUsrc);


	mux2bit m1(out[31], in1[31], in2[31], ALUsrc);
	mux2bit m2(out[30], in1[30], in2[30], ALUsrc);
	mux2bit m3(out[29], in1[29], in2[29], ALUsrc);
	mux2bit m4(out[28], in1[28], in2[28], ALUsrc);
	mux2bit m5(out[27], in1[27], in2[27], ALUsrc);
	mux2bit m6(out[26], in1[26], in2[26], ALUsrc);
	mux2bit m7(out[25], in1[25], in2[25], ALUsrc);
	mux2bit m8(out[24], in1[24], in2[24], ALUsrc);
	mux2bit m9(out[23], in1[23], in2[23], ALUsrc);
	mux2bit m10(out[22], in1[22], in2[22], ALUsrc);
	mux2bit m11(out[21], in1[21], in2[21], ALUsrc);
	mux2bit m12(out[20], in1[20], in2[20], ALUsrc);
	mux2bit m13(out[19], in1[19], in2[19], ALUsrc);
	mux2bit m14(out[18], in1[18], in2[18], ALUsrc);
	mux2bit m15(out[17], in1[17], in2[17], ALUsrc);
	mux2bit m16(out[16], in1[16], in2[16], ALUsrc);
	mux2bit m17(out[15], in1[15], in2[15], ALUsrc);
	mux2bit m18(out[14], in1[14], in2[14], ALUsrc);
	mux2bit m19(out[13], in1[13], in2[13], ALUsrc);
	mux2bit m20(out[12], in1[12], in2[12], ALUsrc);
	mux2bit m21(out[11], in1[11], in2[11], ALUsrc);
	mux2bit m22(out[10], in1[10], in2[10], ALUsrc);
	mux2bit m23(out[9], in1[9], in2[9], ALUsrc);
	mux2bit m24(out[8], in1[8], in2[8], ALUsrc);
	mux2bit m25(out[7], in1[7], in2[7], ALUsrc);
	mux2bit m26(out[6], in1[6], in2[6], ALUsrc);
	mux2bit m27(out[5], in1[5], in2[5], ALUsrc);
	mux2bit m28(out[4], in1[4], in2[4], ALUsrc);
	mux2bit m29(out[3], in1[3], in2[3], ALUsrc);
	mux2bit m30(out[2], in1[2], in2[2], ALUsrc);
	mux2bit m31(out[1], in1[1], in2[1], ALUsrc);
	mux2bit m32(out[0], in1[0], in2[0], ALUsrc);










endmodule
