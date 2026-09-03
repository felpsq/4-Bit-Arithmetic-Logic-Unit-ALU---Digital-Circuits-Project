module subtrator(A, B, Bin,Sub,Bout);

	input A,B,Bin;
	output Sub,Bout;
	wire w0,w1,w2,w3,w4;
	
	//Lógica da subtração
	xor x1 (w0,A,B);
	xor x2 (Sub,w0,Bin);
	//Lógica do Borrow Out
	not n1 (w1, A);
	not n2 (w2, w0);
	and a1 (w3,w1,B);
	and a2 (w4,w2,Bin);
	or o (Bout,w3,w4);
	
endmodule