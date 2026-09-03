module xor_1bit(A, B, S);

input A, B;
output S;

xor Xor1(S, A, B);

endmodule