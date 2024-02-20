module mux2bit(output Y, input D0, D1, S);


	wire T1, T2, Sbar;

	and (T1, D1, S);
	and (T2, D0, Sbar);
	not (Sbar, S);
	or (Y, T1, T2);




endmodule

