module xor_4bits(A, B, S);

input [3:0]A, B;
output [7:0]S;

xor_1bit _0(A[0], B[0], S[0]);
xor_1bit _01(A[1], B[1], S[1]);
xor_1bit _02(A[2], B[2], S[2]);
xor_1bit _03(A[3], B[3], S[3]);

endmodule