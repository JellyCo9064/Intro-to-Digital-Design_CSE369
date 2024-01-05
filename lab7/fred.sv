module fred (
	output logic [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0
	,output logic [1:0] LEDR
	,input logic [3:0] SW
	);
	
	// Connect UPC signals to HEX display
	upc_desc description (.HEX5, .HEX4, .HEX3, .HEX2, .HEX1, .HEX0, .U(SW[2]), .P(SW[1]), .C(SW[0]));
	
	// Connect Nordstrom detector
	lab3 detector (.LEDR, .SW);
	
endmodule  // fred

module fred_testbench();

	logic [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0;
	logic [1:0] LEDR;
	logic [3:0] SW;
	
	fred dut (.HEX5, .HEX4, .HEX3, .HEX2, .HEX1, .HEX0, .LEDR, .SW);
	
	integer i;
	initial begin
		for(i = 0; i < 16; i++) begin
			{SW[2], SW[1], SW[0], SW[3]} = i; #10;
		end
	end

endmodule  // fred_testbench
