module and_or_4bits(a,b,s,z);

	input [3:0]a,b;
	output [7:0] s,z;
	
	and_1bit _3(.a(a[3]),.b(b[3]),.s(s[3]));
	and_1bit _2(.a(a[2]),.b(b[2]),.s(s[2]));
	and_1bit _1(.a(a[1]),.b(b[1]),.s(s[1]));
	and_1bit _0(.a(a[0]),.b(b[0]),.s(s[0]));
	
	or_1bit o_3(.x(a[3]),.y(b[3]),.z(z[3]));
	or_1bit o_2(.x(a[2]),.y(b[2]),.z(z[2]));
	or_1bit o_1(.x(a[1]),.y(b[1]),.z(z[1]));
	or_1bit o_0(.x(a[0]),.y(b[0]),.z(z[0]));
	
endmodule