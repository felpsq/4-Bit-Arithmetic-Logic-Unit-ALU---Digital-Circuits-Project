module main(S, Su, M, D, A, O, X, Chaves, Saida);
	
    input [7:0]S, Su, M, D, A, O, X;

    input [2:0]Chaves;

    output [7:0]Saida;

    //module Mux(S, Sub, M, D, A, O, X, S2, S1, S0, R);

    Mux _0(.S(S[0]), .Sub(Su[0]), .M(M[0]), .D(D[0]), .A(A[0]), .O(O[0]), .X(X[0]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[0]));

    Mux _1(.S(S[1]), .Sub(Su[1]), .M(M[1]), .D(D[1]), .A(A[1]), .O(O[1]), .X(X[1]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[1]));

    Mux _2(.S(S[2]), .Sub(Su[2]), .M(M[2]), .D(D[2]), .A(A[2]), .O(O[2]), .X(X[2]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[2]));

    Mux _3(.S(S[3]), .Sub(Su[3]), .M(M[3]), .D(D[3]), .A(A[3]), .O(O[3]), .X(X[3]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[3]));

    Mux _4(.S(S[4]), .Sub(Su[4]), .M(M[4]), .D(D[4]), .A(A[4]), .O(O[4]), .X(X[4]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[4]));

    Mux _5(.S(S[5]), .Sub(Su[5]), .M(M[5]), .D(D[5]), .A(A[5]), .O(O[5]), .X(X[5]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[5]));

    Mux _6(.S(S[6]), .Sub(Su[6]), .M(M[6]), .D(D[6]), .A(A[6]), .O(O[6]), .X(X[6]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[6]));

    Mux _7(.S(S[7]), .Sub(Su[7]), .M(M[7]), .D(D[7]), .A(A[7]), .O(O[7]), .X(X[7]), .S2(Chaves[2]), .S1(Chaves[1]), .S0(Chaves[0]), .R(Saida[7]));

    

endmodule