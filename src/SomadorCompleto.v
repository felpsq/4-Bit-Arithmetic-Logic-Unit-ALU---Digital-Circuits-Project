module Somador(A, B, Ci, S, Co);
input A, B, Ci;
output S, Co;
wire fio1, fio2, fio3, fio4;

xor Xor1(fio1, A, B);
xor Xor2(S, fio1, Ci);
and And1(fio3, Ci, fio1);
and And2(fio4, A, B);
or or1(Co, fio3, fio4);

endmodule