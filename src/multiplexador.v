module multiplexador(D, A, S, R);
	input D, A, S;
	output R;
	
	wire invS, and0, and1;
	
	not Inv0(invS, S);
	and And0(and0, invS, D);
	and And1(and1, S, A);
	or Or0(R, and0, and1);
	
endmodule 