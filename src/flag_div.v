module flag_div(B, div_zero);
	input [3:0]B;
	output div_zero;
	
	nor _00(div_zero, B[0], B[1], B[2], B[3]);	
	
endmodule
	