module display(A,B,C,D,E,F, na,nb,nc,nd,ne,nf,ng,nh,ni,nj,nk,nl,nm,nn);

input A,B,C,D,E,F;
output na,nb,nc,nd,ne,nf,ng,nh,ni,nj,nk,nl,nm,nn;

wire a,b,c,d,e,f,g,h,i,j,k,l,m,n;


wire nA,nB,nC,nD,nE,nF;
wire f00,f01,f02,f03,f04,f05,f06,f07,f08,f09,f010,f011,f012,f013,f014;
wire f10, f11,f12,f13,f14,f15,f16,f17,f18,f19,f110,f111,f112,f113,f114,f115,f116,f117,f118;
wire f20,f21,f22,f23,f24,f25,f26,f27,f28;
wire f30, f31, f32, f33, f34, f35, f36, f37, f38, f39, f310, f311, f312, f313, f314, f315, f316, f317, f318, f319;
wire f40, f41, f42, f43, f44, f45, f46, f47, f48;
wire f50, f51, f52, f53, f54, f55, f56, f57, f58, f59, f510, f511, f512, f513, f514, f515;
wire f60,f61,f62,f63,f64,f65,f66,f67,f68,f69,f610,f611,f612,f613;
wire f70, f71, f72, f73;
wire f80, f81, f82, f83, f84;
wire f90, f91, f92, f93;
wire f100, f101, f102, f103;
wire f1100, f1101, f1102, f1103;
wire f120, f121;
wire f130, f131;

not _0 (nA,A);
not _1 (nB,B);
not _2 (nC,C);
not _3 (nD,D);
not _4 (nE,E);
not _5 (nF,F);


//Segmento A (0) do display:
//y = B'DF + AC'E' + ACE + A'B'D'F' + B'C'EF + B'C'DE + C'DEF + A'B'CE'

//+ A'CE'F + BC'D'F' + A'BD'F + BD'E'F + A'BEF' + BDE'F' + AD'E'F'

and _00 (f00,nB,D,F);
and _01 (f01, A,nC,nE);
and _02 (f02,A,C,E);
and _03 (f03,nA,nB,nD,nF);
and _04 (f04,nB,nC,E,F);
and _05 (f05,nB,nC,D,E);
and _06 (f06,nC,D,E,F);
and _07 (f07,nA,nB,C,nE);
and _08 (f08,nA,C,nE,F);
and _09 (f09,B,nC,nD,nF);
and _010 (f010,nA,B,nD,F);
and _011 (f011,B,nD,nE,F);
and _012 (f012,nA,B,E,nF);
and _013 (f013,B,D,nE,nF);
and _014 (f014,A,nD,nE,nF);

or _O00(a,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09,f010,f011,f012,f013,f014);

not _M00(na,a);

//Segmento B (1) do display:
//y = A'B'D' + A'BD + BDE' + BDF' + A'B'E'F' + A'C'D'E + A'D'EF + A'B'CE' + A'B'CF'
//+ A'CE'F' + B'CE'F' + BC'D'F + AC'D'E' + AC'E'F + AD'E'F + AC'EF' + AD'EF' + ACEF + B'C'DEF

and _10 (f10, nA,nB,nD);
and _11 (f11,nA,B,D);
and _12 (f12,B,D,nE);
and _13 (f13,B,D,nF);
and _14 (f14,nA,nB,nE,nF);
and _15 (f15,nA,nC,nD,E);
and _16 (f16,nA,nB,C,nE);
and _17 (f17,nA,nB,C,nF);
and _18 (f18,nA,nD,E,F);
and _19 (f19,nA,C,nE,nF);
and _110 (f110, nB,C,nE,nF);
and _111 (f111,B,nC,nD,F);
and _112 (f112,A,nC,nD,nE);
and _113 (f113,A,nC,nE,F);
and _114 (f114,A,nD,nE,F);
and _115 (f115,A,nC,E,nF);
and _116 (f116,A,nD,E,nF);
and _117 (f117,A,C,E,F);
and _118 (f118,nB,nC,D,E,F);

or _O10 (b,f10, f11,f12,f13,f14,f15,f16,f17,f18,f19,f110,f111,f112,f113,f114,f115,f116,f117,f118);
not _N10(nb,b);

//Segmento C (2) do display:
//y = F + BD' + A'C'E' + B'C'D + CD'E' + A'CE + BCE' + AC'E + AB'D

and _20 (f20,F);
and _21 (f21,B,nD);
and _22 (f22,nA,nC,nE);
and _23 (f23,nB,nC,D);
and _24 (f24,C,nD,nE);
and _25 (f25,nA,C,E);
and _26 (f26,B,C,nE);
and _27 (f27,A,nC,E);
and _28 (f28,A,nB,D);

or _O20(c,f20,f21,f22,f23,f24,f25,f26,f27,f28);
not _N20(nc,c);

//Segmento D (3) do display:
//y = A'B'D'F' + A'C'D'E + A'B'CE' + A'CE'F + BC'D'F' + A'BEF' + BDE'F' + AC'D'E' +
//AC'E'F' + AD'E'F' + ACD'E + ACEF' + ABC'E' + ABCE + A'B'DE'F + B'C'DEF' +
//A'B'CDF + B'CDE'F + BC'DEF + AB'C'EF

and _30 (f30, nA, nB, nD, nF);
and _31 (f31, nA, nC, nD, E);
and _32 (f32, nA, nB, C, nE);
and _33 (f33, nA, C, nE, F);
and _34 (f34, B, nC, nD, nF);
and _35 (f35, nA, B, E, nF);
and _36 (f36, B, D, nE, nF);
and _37 (f37, A, nC, nD, nE);
and _38 (f38, A, nC, nE, nF);
and _39 (f39, A, nD, nE, nF);
and _310 (f310, A, C, nD, E);
and _311 (f311, A, C, E, nF);
and _312 (f312, A, B, nC, nE);
and _313 (f313, A, B, C, E);
and _314 (f314, nA, nB, D, nE, F);
and _315 (f315, nB, nC, D, E, nF);
and _316 (f316, nA, nB, C, D, F);
and _317 (f317, nB, C, D, nE, F);
and _318 (f318, B, nC, D, E, F);
and _319 (f319, A, nB, nC, E, F);

or _O30 (d, f30, f31, f32, f33, f34, f35, f36, f37, f38, f39, f310, f311, f312, f313, f314, f315, f316, f317, f318, f319);
not _N30(nd,d);

//Segmento E (4) do display:
//y = A'B'D'F' + BC'D'F' + A'BEF' + BDE'F' + AC'E'F' + AD'E'F' + ACEF' + B'C'DEF' +
//A'B'CE'F'

and _40 (f40, nA, nB, nD, nF);
and _41 (f41, B, nC, nD, nF);
and _42 (f42, nA, B, E, nF);
and _43 (f43, B, D, nE, nF);
and _44 (f44, A, nC, nE, nF);
and _45 (f45, A, nD, nE, nF);
and _46 (f46, A, C, E, nF);
and _47 (f47, nB, nC, D, E, nF);
and _48 (f48, nA, nB, C, nE, nF);

or _O40 (e, f40, f41, f42, f43, f44, f45, f46, f47, f48);

not _N40 (ne, e);


//Segmento F (5) do display:
//y = BD'F' + A'CD'E' + B'C'DF' + B'DEF' + A'CEF' + A'C'E'F' + AC'DE + A'BCE' + ACE'F'
//+ AB'C'E + A'BC'D'E + A'B'CDE + ABCD'E + A'B'C'DE' + AB'CDE' + ABC'D'E'

and _50 (f50, B, nD, nF);
and _51 (f51, nA, C, nD, nE);
and _52 (f52, nB, nC, D, nF);
and _53 (f53, nB, D, E, nF);
and _54 (f54, nA, C, E, nF);
and _55 (f55, nA, nC, nE, nF);
and _56 (f56, A, nC, D, E);
and _57 (f57, nA, B, C, nE);
and _58 (f58, A, C, nE, nF);
and _59 (f59, A, nB, nC, E);
and _510 (f510, nA, B, nC, nD, E);
and _511 (f511, nA, nB, C, D, E);
and _512 (f512, A, B, C, nD, E);
and _513 (f513, nA, nB, nC, D, nE);
and _514 (f514, A, nB, C, D, nE);
and _515 (f515, A, B, nC, nD, nE);

or _O50 (f, f50, f51, f52, f53, f54, f55, f56, f57, f58, f59, f510, f511, f512, f513, f514, f515);

not _N50 (nf, f);

//Segmento G (6) do display:
//y = B'DF' + A'CE' + A'C'D'E + A'B'DE' + A'B'CD + B'CDE' + A'BD'F' + BD'E'F' 
//+ A'BC'E + AB'C'D' + AB'C'E + ACD'E + ABC'E' + ABDE

and _60(f60,nB,D,nF);
and _61(f61,nA,C,nE);
and _62(f62,nA,nC,nD,E);
and _63(f63,nA,nB,D,nE);
and _64(f64,nA,nB,C,D);
and _65(f65,nB,C,D,nE);
and _66(f66,nA,B,nD,nF);
and _67(f67,B,nD,nE,nF);
and _68(f68,nA,B,nC,E);
and _69(f69,A,nB,nC,nD);
and _610(f610,A,nB,nC,E);
and _611(f611,A,C,nD,E);
and _612(f612,A,B,nC,nE);
and _613(f613,A,B,D,E);

or _O60(g,f60,f61,f62,f63,f64,f65,f66,f67,f68,f69,f610,f611,f612,f613);
not _N60(ng,g);

// Segmento h
and _h0(f70, B, D);
and _h1(f71, B, C);
and _h2(f72,A, nB, nC);
and _h3(f73, A, nC, E);

or or_h(h, f70, f71, f72, f73);

not _h(nh, h);

// Segmento i
and _i0(f80, nA, B);
and _i1(f81, A, nB);
and _i2(f82, nA, C, E);
and _i3(f83, nA, C, D);
and _i4(f84, B, nC, nD, nE);

or or_i(i, f80, f81, f82, f83, f84);

not _i(ni, i);

// Segmento j
and _j0(f90, nB, C, E);
and _j1(f91, nB, C, D);
and _j2(f92, C, D, E);
and _j3(f93, B, nC, nD);

or or_j(j, A, f90, f91, f92, f93);

not _j(nj, j);

// Segmento k
and _k0(f100, B, D);
and _k1(f101,  B, C);
and _k2(f102, A, nB, nC);
and _k3(f103, A, nC, E);

or or_k(k, f100, f101, f102, f103);

not _k(nk, k);

// Segmento l
and _l0(f1100, nA, B, nC, D);
and _l1(f1101, nA, B, D, nE);
and _l2(f1102, nA, B, C, nD);
and _l3(f1103, A, B, C, D);

or or_l(l, f1100, f1101, f1102, f1103);

not _l(nl, l);


//Segmento M (12) do display:
//y = AC + AB

and _120 (f120, A, C);
and _121 (f121, A, B);

or _O120 (m, f120, f121);

not _N120 (nm, m);


// Segmento N
and n0(f130, B, D);
and n1(f131, B, C);

or n_(n, A, f130, f131);

not _n(nn, n);

endmodule





