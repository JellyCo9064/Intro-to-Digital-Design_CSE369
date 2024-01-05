module lab5 #(
	parameter which_clock = 25
	)
	(
	output logic [9:0] LEDR
	,input logic [9:0] SW
	,input logic [4:0] KEY
	,input logic CLOCK_50
	);
	
	logic [31:0] clk;
	clock_divider cdiv(.clock(CLOCK_50), .divided_clocks(clk));
	
	seatac indicator(.pattern(LEDR[2:0]), .wind(SW[1:0]), .clk(clk[which_clock]), .reset(~KEY[0]));
	
endmodule  // lab5