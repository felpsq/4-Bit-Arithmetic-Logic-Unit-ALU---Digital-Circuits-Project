module Multiplicador(
		input [3:0]A, 
		input [3:0]B, 
		output [7:0]S);

wire [14:0]fio;
wire [10:0]Carry;
wire [7:0]Soma;

and And0(S[0], A[0], B[0]);
and And1(fio[0], A[1], B[0]);
and And2(fio[1], A[2], B[0]);
and And3(fio[2], A[3], B[0]);

and And4(fio[3], A[0], B[1]);
and And5(fio[4], A[1], B[1]);
and And6(fio[5], A[2], B[1]);
and And7(fio[6], A[3], B[1]);

and And8(fio[7], A[0], B[2]);
and And9(fio[8], A[1], B[2]);
and And10(fio[9], A[2], B[2]);
and And11(fio[10], A[3], B[2]);

and And12(fio[11], A[0], B[3]);
and And13(fio[12], A[1], B[3]);
and And14(fio[13], A[2], B[3]);
and And15(fio[14], A[3], B[3]);

MeioSomador s1(fio[0], fio[3], S[1], Carry[0]);

Somador s2(fio[1], fio[4], Carry[0], Soma[0], Carry[1]);
MeioSomador s3(fio[7], Soma[0], S[2], Carry[2]);

Somador s4(fio[2], fio[5], Carry[1], Soma[1], Carry[3]);
Somador s5(fio[8], Soma[1], Carry[2], Soma[2], Carry[4]);
MeioSomador s6(fio[11], Soma[2], S[3], Carry[5]);

Somador s7(fio[6], fio[9], Carry[3], Soma[3], Carry[6]);
Somador s8(fio[12], Soma[3], Carry[4], Soma[4], Carry[7]);
MeioSomador s9(Carry[5], Soma[4], S[4], Carry[8]);

Somador s10(fio[10], fio[13], Carry[6], Soma[5], Carry[9]);
Somador s11(Soma[5], Carry[7], Carry[8], S[5], Carry[10]);

Somador s12(fio[14], Carry[10], Carry[9], S[6], S[7]);

endmodule




