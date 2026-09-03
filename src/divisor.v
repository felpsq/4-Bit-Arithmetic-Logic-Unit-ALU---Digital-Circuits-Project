module divisor(A, B, Bin, Q, fdiv);

input [3:0]A, B;
input Bin;
output [7:0]Q;
output fdiv;
wire [9:0]dif;
wire [12:0]Bout;
wire [5:0]sinal;


subtrator _0s1(A[3], B[0], Bin, dif[0], Bout[0]);
multiplexador m1(dif[0], A[3], Bout[1], sinal[0]);

or Or1(Bout[1], Bout[0], B[1], B[2], B[3]);

not _0n(Q[3], Bout[1]);


subtrator _1s1(A[2],B[0],Bin, dif[1],Bout[2]);
multiplexador _1m1(dif[1],A[2],Bout[4],sinal[1]);

subtrator _1s2(sinal[0],B[1], Bout[2],dif[2],Bout[3]);
multiplexador _1m2(dif[2],sinal[0], Bout[4], sinal[2]);

or Or2(Bout[4], Bout[3], B[2], B[3]);

not _1n(Q[2],Bout[4]);


subtrator _2s1(A[1], B[0], Bin, dif[3], Bout[5]);
multiplexador _2m1(dif[3], A[1], Bout[8], sinal[3]);

subtrator _2s2(sinal[1], B[1], Bout[5], dif[4], Bout[6]);
multiplexador _2m2(dif[4], sinal[1], Bout[8], sinal[4]);

subtrator _2s3(sinal[2], B[2], Bout[6], dif[5], Bout[7]);
multiplexador _2m3(dif[5], sinal[2], Bout[8], sinal[5]);

or Or3(Bout[8], Bout[7], B[3]);


not _2n(Q[1], Bout[8]);


subtrator _3s1(A[0], B[0], Bin, dif[6], Bout[9]);

subtrator _3s2(sinal[3], B[1], Bout[9], dif[7], Bout[10]);

subtrator _3s3(sinal[4], B[2], Bout[10], dif[8], Bout[11]);

subtrator _3s4(sinal[5], B[3], Bout[11], dif[9], Bout[12]);

not _3n(Q[0], Bout[12]);

flag_div _00(B, fdiv);

endmodule