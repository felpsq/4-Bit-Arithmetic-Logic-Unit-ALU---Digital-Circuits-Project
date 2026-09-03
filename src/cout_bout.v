module cout_bout(S0,S1,S2,B,C,flag_bout,flag_cout);
input S0, S1,S2,B,C;
output flag_bout,flag_cout;
wire nS0,nS1,nS2;

//Cout
not _2(nS2,S2);
not _1 (nS1,S1);
and _a0(flag_cout,nS2,nS1,C);

//Bout

not _0 (nS0,S0);
and b0(flag_bout,nS0,S1,nS2,B);

endmodule