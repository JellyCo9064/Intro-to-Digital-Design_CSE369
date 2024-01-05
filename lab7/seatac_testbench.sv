module seatac_testbench();
	logic [1:0] wind;
	logic clk, reset;
	logic [2:0] pattern;
	
	seatac dut (.wind, .clk, .reset, .pattern);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
						wind <= 2'b10; // M - 10 > R
		@(posedge clk); wind <= 2'b10; // R - 10 > L
		@(posedge clk); wind <= 2'b10; // L - 10 > M
		
		@(posedge clk); wind <= 2'b01; // M - 01 > L
		@(posedge clk); wind <= 2'b01; // L - 01 > R
		@(posedge clk); wind <= 2'b01; // R - 01 > M
		
		@(posedge clk); wind <= 2'b00; // M - 00 > O
		
		@(posedge clk); wind <= 2'b01; // O - 01 > L
		@(posedge clk); wind <= 2'b00; // L - 00 > O
		
		@(posedge clk); wind <= 2'b10; // O - 10 > R
		@(posedge clk); wind <= 2'b00; // M - 00 > O
		
		@(posedge clk); wind <= 2'b00; // O - 00 > M
		@(posedge clk); reset <= 1;
		@(posedge clk);
		$stop;
	end
	
endmodule  // seatac_testbench