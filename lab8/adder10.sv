module adder10 (
	output logic [9:0] sum
	,input logic [9:0] a, b
	);
	
	logic [9:0] carry_out;
	
	full_adder d0 (.a(a[0]), .b(b[0]), .carry_in(1'b0), .sum(sum[0]), .carry_out(carry_out[0]));
	full_adder d1 (.a(a[1]), .b(b[1]), .carry_in(carry_out[0]), .sum(sum[1]), .carry_out(carry_out[1]));
	full_adder d2 (.a(a[2]), .b(b[2]), .carry_in(carry_out[1]), .sum(sum[2]), .carry_out(carry_out[2]));
	full_adder d3 (.a(a[3]), .b(b[3]), .carry_in(carry_out[2]), .sum(sum[3]), .carry_out(carry_out[3]));
	full_adder d4 (.a(a[4]), .b(b[4]), .carry_in(carry_out[3]), .sum(sum[4]), .carry_out(carry_out[4]));

	full_adder d5 (.a(a[5]), .b(b[5]), .carry_in(carry_out[4]), .sum(sum[5]), .carry_out(carry_out[5]));
	full_adder d6 (.a(a[6]), .b(b[6]), .carry_in(carry_out[5]), .sum(sum[6]), .carry_out(carry_out[6]));
	full_adder d7 (.a(a[7]), .b(b[7]), .carry_in(carry_out[6]), .sum(sum[7]), .carry_out(carry_out[7]));
	full_adder d8 (.a(a[8]), .b(b[8]), .carry_in(carry_out[7]), .sum(sum[8]), .carry_out(carry_out[8]));
	full_adder d9 (.a(a[9]), .b(b[9]), .carry_in(carry_out[8]), .sum(sum[9]), .carry_out(carry_out[9]));
	
	
endmodule  // adder10

module adder10_testbench();

	logic [9:0] sum;
	logic [9:0] a, b;
	
	adder10 dut (.sum, .a, .b);
	
	initial begin

		a = 420; b = 0; #10;
		
		a = 64; b = 447; #10;
		
		a = 0; b = 0; #10;
		
		a = 1023; b = 15; #10;
		
		a = 511; b = 13; #10;
		
		a = -512; b = -500; #10;
		
	end

endmodule  //adder10_testbench