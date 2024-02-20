module mux32bit (input[31:0] andResult, orResult, xorResult, norResult, sltResult, addResult, subResult, modResult,
input[2:0] opCode,
output[31:0] result);

multiplexer_8to1 m0(andResult[0], orResult[0], xorResult[0], norResult[0], sltResult[0], addResult[0], subResult[0], modResult[0], opCode[0], opCode[1], opCode[2], result[0]);
multiplexer_8to1 m1(andResult[1], orResult[1], xorResult[1], norResult[1], sltResult[1], addResult[1], subResult[1], modResult[1], opCode[0], opCode[1], opCode[2], result[1]);
multiplexer_8to1 m2(andResult[2], orResult[2], xorResult[2], norResult[2], sltResult[2], addResult[2], subResult[2], modResult[2], opCode[0], opCode[1], opCode[2], result[2]);
multiplexer_8to1 m3(andResult[3], orResult[3], xorResult[3], norResult[3], sltResult[3], addResult[3], subResult[3], modResult[3], opCode[0], opCode[1], opCode[2], result[3]);
multiplexer_8to1 m4(andResult[4], orResult[4], xorResult[4], norResult[4], sltResult[4], addResult[4], subResult[4], modResult[4], opCode[0], opCode[1], opCode[2], result[4]);
multiplexer_8to1 m5(andResult[5], orResult[5], xorResult[5], norResult[5], sltResult[5], addResult[5], subResult[5], modResult[5], opCode[0], opCode[1], opCode[2], result[5]);
multiplexer_8to1 m6(andResult[6], orResult[6], xorResult[6], norResult[6], sltResult[6], addResult[6], subResult[6], modResult[6], opCode[0], opCode[1], opCode[2], result[6]);
multiplexer_8to1 m7(andResult[7], orResult[7], xorResult[7], norResult[7], sltResult[7], addResult[7], subResult[7], modResult[7], opCode[0], opCode[1], opCode[2], result[7]);
multiplexer_8to1 m8(andResult[8], orResult[8], xorResult[8], norResult[8], sltResult[8], addResult[8], subResult[8], modResult[8], opCode[0], opCode[1], opCode[2], result[8]);
multiplexer_8to1 m9(andResult[9], orResult[9], xorResult[9], norResult[9], sltResult[9], addResult[9], subResult[9], modResult[9], opCode[0], opCode[1], opCode[2], result[9]);
multiplexer_8to1 m10(andResult[10], orResult[10], xorResult[10], norResult[10], sltResult[10], addResult[10], subResult[10], modResult[10], opCode[0], opCode[1], opCode[2], result[10]);
multiplexer_8to1 m11(andResult[11], orResult[11], xorResult[11], norResult[11], sltResult[11], addResult[11], subResult[11], modResult[11], opCode[0], opCode[1], opCode[2], result[11]);
multiplexer_8to1 m12(andResult[12], orResult[12], xorResult[12], norResult[12], sltResult[12], addResult[12], subResult[12], modResult[12], opCode[0], opCode[1], opCode[2], result[12]);
multiplexer_8to1 m13(andResult[13], orResult[13], xorResult[13], norResult[13], sltResult[13], addResult[13], subResult[13], modResult[13], opCode[0], opCode[1], opCode[2], result[13]);
multiplexer_8to1 m14(andResult[14], orResult[14], xorResult[14], norResult[14], sltResult[14], addResult[14], subResult[14], modResult[14], opCode[0], opCode[1], opCode[2], result[14]);
multiplexer_8to1 m15(andResult[15], orResult[15], xorResult[15], norResult[15], sltResult[15], addResult[15], subResult[15], modResult[15], opCode[0], opCode[1], opCode[2], result[15]);
multiplexer_8to1 m16(andResult[16], orResult[16], xorResult[16], norResult[16], sltResult[16], addResult[16], subResult[16], modResult[16], opCode[0], opCode[1], opCode[2], result[16]);
multiplexer_8to1 m17(andResult[17], orResult[17], xorResult[17], norResult[17], sltResult[17], addResult[17], subResult[17], modResult[17], opCode[0], opCode[1], opCode[2], result[17]);
multiplexer_8to1 m18(andResult[18], orResult[18], xorResult[18], norResult[18], sltResult[18], addResult[18], subResult[18], modResult[18], opCode[0], opCode[1], opCode[2], result[18]);
multiplexer_8to1 m19(andResult[19], orResult[19], xorResult[19], norResult[19], sltResult[19], addResult[19], subResult[19], modResult[19], opCode[0], opCode[1], opCode[2], result[19]);
multiplexer_8to1 m20(andResult[20], orResult[20], andResult[20], norResult[20], sltResult[20], addResult[20], subResult[20], modResult[20], opCode[0], opCode[1], opCode[2], result[20]);
multiplexer_8to1 m21(andResult[21], orResult[21], xorResult[21], norResult[21], sltResult[21], addResult[21], subResult[21], modResult[21], opCode[0], opCode[1], opCode[2], result[21]);
multiplexer_8to1 m22(andResult[22], orResult[22], xorResult[22], norResult[22], sltResult[22], addResult[22], subResult[22], modResult[22], opCode[0], opCode[1], opCode[2], result[22]);
multiplexer_8to1 m23(andResult[23], orResult[23], xorResult[23], norResult[23], sltResult[23], addResult[23], subResult[23], modResult[23], opCode[0], opCode[1], opCode[2], result[23]);
multiplexer_8to1 m24(andResult[24], orResult[24], xorResult[24], norResult[24], sltResult[24], addResult[24], subResult[24], modResult[24], opCode[0], opCode[1], opCode[2], result[24]);
multiplexer_8to1 m25(andResult[25], orResult[25], xorResult[25], norResult[25], sltResult[25], addResult[25], subResult[25], modResult[25], opCode[0], opCode[1], opCode[2], result[25]);
multiplexer_8to1 m26(andResult[26], orResult[26], xorResult[26], norResult[26], sltResult[26], addResult[26], subResult[26], modResult[26], opCode[0], opCode[1], opCode[2], result[26]);
multiplexer_8to1 m27(andResult[27], orResult[27], xorResult[27], norResult[27], sltResult[27], addResult[27], subResult[27], modResult[27], opCode[0], opCode[1], opCode[2], result[27]);
multiplexer_8to1 m28(andResult[28], orResult[28], xorResult[28], norResult[28], sltResult[28], addResult[28], subResult[28], modResult[28], opCode[0], opCode[1], opCode[2], result[28]);
multiplexer_8to1 m29(andResult[29], orResult[29], xorResult[29], norResult[29], sltResult[29], addResult[29], subResult[29], modResult[29], opCode[0], opCode[1], opCode[2], result[29]);
multiplexer_8to1 m30(andResult[30], orResult[30], xorResult[30], norResult[30], sltResult[30], addResult[30], subResult[30], modResult[30], opCode[0], opCode[1], opCode[2], result[30]);
multiplexer_8to1 m31(andResult[31], orResult[31], xorResult[31], norResult[31], sltResult[31], addResult[31], subResult[31], modResult[31], opCode[0], opCode[1], opCode[2], result[31]);


endmodule
