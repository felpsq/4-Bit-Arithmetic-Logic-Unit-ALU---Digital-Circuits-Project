module somador4bits (A,B,CIN,SUM);

//Somador Completo com 2 variáveis de entrada com 4 bits cada e uma Saída Sum.

		//Declaração de entradas e saídas e seus tamanhos em bits
		
		input [3:0]A,B;
		input CIN;
		
		output [7:0] SUM;
		
		wire f1,f2,f3;
		
		//Funcionamento dos Somadores em Cascata: Mapeamento hierárquico dos bits.
		Somador _0(.A(A[0]),.B(B[0]),.Ci(CIN), .S(SUM[0]), .Co(f1));
		Somador _1 (.A(A[1]),.B(B[1]),.Ci(f1),.S(SUM[1]), .Co(f2));
		Somador _2 (.A(A[2]),.B(B[2]), .Ci(f2),.S(SUM[2]),.Co(f3));
		Somador _3 (.A(A[3]), .B(B[3]),.Ci(f3),.S(SUM[3]),.Co(SUM[4]));
		
		
		
endmodule