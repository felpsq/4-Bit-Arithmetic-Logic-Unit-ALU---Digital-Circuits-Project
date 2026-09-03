module flag_zero(R,Sinal_Led);

input [7:0]R;
output Sinal_Led;

nor(Sinal_Led,R[0],R[1],R[2],R[3],R[4],R[5],R[6],R[7]);

endmodule