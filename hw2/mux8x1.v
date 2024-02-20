/*module mux8x1 (input D0, D1, D2, D3, D4, S0, S1, S2, output out);


	wire T0, T1, T2;
	wire k0, k1, k2, k3, k4, k5, k6, k7, k8, k9;
	wire temp0, temp1, temp2, temp3, temp4;
	wire a, b, my2, mine;


	not not1(T0, S0); // T0 = !S0
	not not2(T1, S1);	// T1 = !S1
	not not3(T2, S2);	// T2 = !S2


	and and1(k0, D0, T0);
	and and2 (k1, T1, T2);
	and and3 (temp0, k0, k1);
	
	and and4 (k2, D2, S0);
	and and5 (k3, T1, T2);
	and and6(temp1, k2, k3);

	and and7 (k4, D1, T0);
	and and8 (k5, S1, T2);
	and and9 (temp2, k4, k5);

	and and10 (k6, D3, S0);
	and and11 (k7, S1, T2);
	and and12 (temp3, k6, k7);

	and and13 (k8, D4, T0);
	and and14 (k9, T1, S2);
	and and15 (temp4, k8, k9);
	
	
	// temp0 temp1 temp2 temp3 temp4
	
	or or1 (a,temp0, temp1);
	or or2 (b, temp2, temp3);
	or or5 (mine, a, b);
	or or7 (out, mine, temp4);


endmodule  

*/

module mux8x1(input D0, D1, D2, D3, D4, D5, D6, S0, S1, S2, output out);

wire t0,t1,t2;
wire [15:0] d;
wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
wire or_temp1,or_temp2,or_temp3,or_temp4,or_temp5,or_temp6,or_temp7,or_temp8;

not not1(t0,S0);
not not2(t1,S1);
not not3(t2,S2);

and and0(d[0],D0,t0);
and and1(d[1],t1,t2);
and and2(temp1,d[0],d[1]);

and and3(d[2],D1,S0);
and and4(d[3],t1,t2);
and and5(temp2,d[2],d[3]);

and and6(d[4],D2,t0);
and and7(d[5],S1,t2);
and and8(temp3,d[4],d[5]);

and and9(d[6],D3,S0);
and and10(d[7],S1,t2);
and and11(temp4,d[6],d[7]);

and and12(d[8],D4,t0);
and and13(d[9],t1,S2);
and and14(temp5,d[8],d[9]);

and and15(d[10],D5,S0);
and and16(d[11],t1,S2);
and and17(temp6,d[10],d[11]);

and and18(d[12],D6,t0);
and and19(d[13],S1,S2);
and and20(temp7,d[12],d[13]);

and and21(d[14],D7,S0);
and and22(d[15],S1,S2);
and and23(temp8,d[14],d[15]);

or or1(or_temp1,temp1,temp2);
or or2(or_temp2,temp3,temp4);
or or3(or_temp3,temp5,temp6);
or or4(or_temp4,temp7,temp8);
or or5(or_temp5,or_temp1,or_temp2);
or or6(or_temp6,or_temp3,or_temp4);
or or7(out,or_temp5,or_temp6); 

endmodule

