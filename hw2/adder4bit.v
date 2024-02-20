module adder4bit (
output [3:0] sum,
output c_out,
input [3:0] a,
input [3:0] b,
input c_in);


	wire p0, p1, p2, p3;
	wire g0, g1, g2, g3;
	wire c1, c2, c3, c4;
	wire x1, x2, x3, x4;
	wire y1, y2, y3, z0, z1, z2;
	wire temp1, temp2, temp3, temp4, temp5;
	

	xor xor0 (p0, a[0], b[0]);
	xor xor1 (p1, a[1], b[1]);
	xor xor2 (p2, a[2], b[2]);
	xor xor3 (p3, a[3], b[3]);

	and and0 (g0, a[0], b[0]);
	and and1 (g1, a[1], b[1]);
	and and2 (g2, a[2], b[2]);
	and and3 (g3, a[3], b[3]);

	assign c0 = c_in;
	// or or0 (c_in, c0, 0);
	
	and and4 (x1, p0, c_in); // p0 & c_in
	and and5 (x2, p1, x1); // p1 & p0 & c_in
	and and6 (x3, p2, x2); // p2 & p1 & p0 & c_in
	and and7 (x4, p3, x3); // p3 & p2 & p1 & p0 & c_in
	
	and and8 (y1, p1, g0); // p1 & g0 
	and and9 (y2, p2, y1); // p2 & p1 & g0
	and and10 (y3, p3, y2); // p3 & p2 & p1 & g0
	
	and and11 (z0, p2, g1); // p2 & g1
	and and12 (z1, p3, z0); // p3 & p2 & g1
	and and13 (z2, p3, p2); // p3 & g2 
	
	// c1 = g0 | ( p0 & c_in)
	or or1 (c1, g0, x1); 
	
	// c2 = g1 | (p1 & g0)| (p1 & p0 &c_in)
	or or2 (temp, y1, x2);
	or or3 (c2, g1, temp);
	
	// c3 = g2 |(p2 & g1)| (p2 & p1 & g0) | (p2 & p1 & p0 & c_in),
	or or4 (temp1, y2, x3);
	or or5 (temp2, temp1, z0);
	or or6 (c3, g2, temp2);
	
	// c4 = g3 |(p3 & g2)|(p3 & p2 & g1)|(p3 & p2 & p1 & g0)|(p3 & p2 & p1 & p0 & c_in);
	or or7 (temp3, y3, x4);
	or or8 (temp4, z1, temp3);
	or or9 (temp5, z2, temp4);
	or or10 (c4, g3, temp5);
	
	xor xor4 (sum[0], p0, c0);
	xor xor5 (sum[1], p1, c1);
	xor xor6 (sum[2], p2, c2);
	xor xor7 (sum[3], p3, c3);
	// assign c_out = c4;
	or or11 (c_out, c4, 0);

	


endmodule
