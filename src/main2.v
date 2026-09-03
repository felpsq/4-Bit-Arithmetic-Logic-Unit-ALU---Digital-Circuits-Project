module main2(A, B, Selecao, Cin,fzero, fdiv, flag_bout,flag_cout, na,nb,nc,nd,ne,nf,ng,nh,ni,nj,nk,nl,nm,nn);

input [3:0]A, B;
input [2:0]Selecao;
input Cin;
output na,nb,nc,nd,ne,nf,ng,nh,ni,nj,nk,nl,nm,nn;
output fzero, fdiv, flag_bout, flag_cout;
wire [7:0]Soma, Sub, Multi, Div, And, Or, Xor, Resu;
wire _0b;
somador4bits _soma(A, B, Cin, Soma);

subtrator4bits _sub(A, B, Cin, Sub);

Multiplicador _M(A, B, Multi);

divisor _D(A, B, Cin, Div, _0b);

and_or_4bits _AO(A, B, And, Or);

xor_4bits _x(A, B, Xor);

main _mux(Soma, Sub, Multi, Div, And, Or, Xor, Selecao, Resu);
flag_zero _flagzero(Resu,fzero);

//Flags
and flag_div(fdiv, Selecao[0], Selecao[1],Selecao[2], _0b);
cout_bout cb(Selecao[0],Selecao[1],Selecao[2],Sub[4],Soma[4],flag_bout,flag_cout);

display _display(Resu[5], Resu[4], Resu[3], Resu[2], Resu[1], Resu[0], na,nb,nc,nd,ne,nf,ng,nh,ni,nj,nk,nl,nm,nn);  

endmodule




