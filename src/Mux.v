module Mux(S, Sub, M, D, A, O, X, S2, S1, S0, R);

input S, Sub, M, D, A, O, X;

input S2, S1, S0;

output R;

    

wire nS2, nS1, nS0;

    

    wire [7:0]fio;

    

    not Not0(nS2, S2);

    not Not1(nS1, S1);

    not Not2(nS0, S0);

    

    // Chaves da Soma: 0 0 0

    and And0(fio[0], nS2, nS1, nS0, S);

    

    // Chaves da Soma: 0 0 1

    and And1(fio[1], nS2, nS1, S0, S);

    

    // Chaves da Subtração 0 1 0

    and And2(fio[2], nS2, S1, nS0, Sub);

    

    // Chaves da Multiplicação  0 1 1

    and And3(fio[3], nS2, S1, S0, M);

    

    // Chaves da Xor 1 0 0

    and And4(fio[4], S2, nS1, nS0, X);

    

    // Chaves And 1 0 1

    and And5(fio[5], S2, nS1, S0, A);

    

    // Chaves Or 1 1 0

    and And6(fio[6], S2, S1, nS0, O);

    

    // Chaves Divisao 1 1 1

    and And7(fio[7], S2, S1, S0, D);

    

    // Saída

    or Or0(R, fio[0], fio[1], fio[2], fio[3], fio[4], fio[5], fio[6], fio[7]);

    

endmodule

