module cla_full_adder_32bit (
output [31:0] sum, 
output c_out, 
input [31:0] a, 
input [31:0] b, 
input cin);

	wire c0, c1, c2, c3, c4, c5, c6;
	
	
	cla_full_adder_4bit fa1 (sum[3:0], c0, a[3:0], b[3:0], cin);
	cla_full_adder_4bit fa2 (sum[7:4], c1, a[7:4], b[7:4], c0);
	cla_full_adder_4bit fa3 (sum[11:8], c2, a[11:8], b[11:8], c1);
	cla_full_adder_4bit fa4 (sum[15:12], c3, a[15:12], b[15:12], c2);
	cla_full_adder_4bit fa5 (sum[19:16], c4, a[19:16], b[19:16], c3);
	cla_full_adder_4bit fa6 (sum[23:20], c5, a[23:20], b[23:20], c4);
	cla_full_adder_4bit fa7 (sum[27:24], c6, a[27:24], b[27:24], c5);
	cla_full_adder_4bit fa8 (sum[31:28], c_out, a[31:28], b[31:28], c6);


endmodule
