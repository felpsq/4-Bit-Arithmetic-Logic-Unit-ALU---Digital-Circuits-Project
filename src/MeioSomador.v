
module MeioSomador(A, B, S, Co);
input A, B;
output S, Co;

xor Xor1(S, A, B);
and And1(Co, A, B);

endmodule