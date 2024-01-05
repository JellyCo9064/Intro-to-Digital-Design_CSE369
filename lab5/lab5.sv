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
	
// divided_clocks[0] = 25MHz, [1] = 12.5Mhz, ... [23] = 3Hz, [24] = 1.5Hz, [25] = 0.75Hz, ...
// HARDWARE ONLY - not to be used in simulation
module clock_divider (
  input   logic        clock
  ,output logic [31:0] divided_clocks
  );

  initial begin
    divided_clocks = '0;
  end

  always_ff @(posedge clock) begin
    divided_clocks <= divided_clocks + 'd1;
  end

endmodule  // clock_divider