module full_adder (
	output logic sum, carry_out
	,input logic a, b, carry_in
	);
	
	assign sum = a ^ b ^ carry_in;
	assign carry_out = a & b | a & carry_in | b & carry_in;
	
endmodule  //full_adder