module tug_of_war_testbench();
	logic [9:0] LEDR;
	logic [6:0] HEX0;
	logic [9:0] SW;
	logic [3:0] KEY;
	logic clk;
	
	tug_of_war dut(.LEDR, .HEX0, .SW, .KEY, .CLOCK_50(clk));
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		
		integer i;
		
		@(posedge clk); SW[9] <= 1;
		@(posedge clk); SW[9] <= 0;
		
		// Move all the way left
		for (i = 0; i < 4; i++) begin
			@(posedge clk); KEY[3] <= 1;
			@(posedge clk); KEY[3] <= 0;
		end

		
		// Move all the way right
		for (i = 0; i < 8; i++) begin
			@(posedge clk); KEY[0] <= 1;
			@(posedge clk); KEY[0] <= 0;
		end
		
		// Player 2 win
		@(posedge clk); KEY[0] <= 1;
		@(posedge clk); KEY[0] <= 0;
		
		// Test other input
		@(posedge clk); KEY[0] <= 0; KEY[3] <= 0;
		@(posedge clk); KEY[0] <= 1;
		@(posedge clk); KEY[3] <= 1;
		@(posedge clk); KEY[0] <= 0;
		
		// Reset
		@(posedge clk); SW[9] <= 1;
		@(posedge clk); SW[9] <= 0;
		
		// Player 1 win		
		for (i = 0; i < 5; i++) begin
			@(posedge clk); KEY[3] <= 1;
			@(posedge clk); KEY[3] <= 0;
		end
		
		// Test other input
		@(posedge clk); KEY[0] <= 0; KEY[3] <= 0;
		@(posedge clk); KEY[0] <= 1;
		@(posedge clk); KEY[3] <= 1;
		@(posedge clk); KEY[0] <= 0;
		
		// Reset
		@(posedge clk); KEY[3] <= 0; SW[9] <= 1;
		@(posedge clk); SW[9] <= 0;
		
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end
		
		
endmodule  // tug_of_war_testbench