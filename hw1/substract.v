module substract(output [31:0] diff, 
output borrow, 
input [31:0] a, 
input [31:0] b);

	wire [31:0] k;

	not not1 (k[0], b[0]);
	not not2 (k[1], b[1]);
	not not3 (k[2], b[2]);
	not not4 (k[3], b[3]);
	not not5 (k[4], b[4]);
	not not6 (k[5], b[5]);
	not not7 (k[6], b[6]);
	not not8 (k[7], b[7]);
	not not9 (k[8], b[8]);
	not not10 (k[9], b[9]);
	not not11 (k[10], b[10]);
	not not12 (k[11], b[11]);
	not not13 (k[12], b[12]);
	not not14 (k[13], b[13]);
	not not15 (k[14], b[14]);
	not not16 (k[15], b[15]);
	not not17 (k[16], b[16]);
	not not18 (k[17], b[17]);
	not not19 (k[18], b[18]);
	not not20 (k[19], b[19]);
	not not21 (k[20], b[20]);
	not not22 (k[21], b[21]);
	not not23 (k[22], b[22]);
	not not24 (k[23], b[23]);
	not not25 (k[24], b[24]);
	not not26 (k[25], b[25]);
	not not27 (k[26], b[26]);
	not not28 (k[27], b[27]);
	not not29 (k[28], b[28]);
	not not30 (k[29], b[29]);
	not not31 (k[30], b[30]);
	not not32 (k[31], b[31]);
	

	cla_full_adder_32bit sub_op (diff[31:0], borrow, a[31:0], k[31:0], 1'b1);





endmodule
