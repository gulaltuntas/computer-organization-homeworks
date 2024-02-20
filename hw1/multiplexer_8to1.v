module multiplexer_8to1(input D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output out);


// wire d1, d2, d3, d4, d5, d6, d7;

	wire T0, T1, T2;
	wire k0, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15;
	wire temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	wire my0, my1, my2, my3, mine, mine2;


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
	
	and and16 (k10, D5, S0);
	and and17 (k11, S2, T1);
	and and18 (temp5, k10, k11);

	and and19 (k12, D6, T0);
	and and20 (k13, S1, S2);
	and and21 (temp6, k12, k13);
	
	and and22 (k14, D7, S0);
	and and23 (k15, S1, S2);
	and and24 (temp7, k14, k15);
	
	// temp0 temp1 temp2 temp3 temp4 temp5 temp6 temp7
	
	or or1 (my0,temp0, temp1);
	or or2 (my1, temp2, temp3);
	or or3 (my2, temp4, temp5);
	or or4 (my3, temp6, temp7);
	or or5 (mine, my0, my1);
	or or6 (mine2, my2, my3);
	or or7 (out, mine, mine2);


endmodule  





