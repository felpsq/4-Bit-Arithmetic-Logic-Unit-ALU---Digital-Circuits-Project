module subtrator4bits (A,B,Bin,Sub);

	input [3:0]A,B;
	input Bin;
	output [7:0]Sub;
	wire f1,f2,f3;
	
	subtrator _0 (.A(A[0]), .B(B[0]), .Bin(Bin),.Sub(Sub[0]),.Bout(f1));
	subtrator _1 (.A(A[1]), .B(B[1]), .Bin(f1),.Sub(Sub[1]),.Bout(f2));
	subtrator _2 (.A(A[2]), .B(B[2]), .Bin(f2),.Sub(Sub[2]),.Bout(f3));
	subtrator _3 (.A(A[3]), .B(B[3]), .Bin(f3),.Sub(Sub[3]),.Bout(Sub[4]));
	
		
endmodule