module tug_of_war_testbench();
	logic [9:0] LEDR;
	logic [6:0] HEX0, HEX3;
	logic [9:0] SW;
	logic [3:0] KEY;
	logic clk;
	
	tug_of_war_test dut(.LEDR, .HEX0, .HEX3, .SW, .KEY, .CLOCK_50(clk));
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		
		integer i, j;
		
		@(posedge clk); SW[9] <= 1;
		@(posedge clk);
		@(posedge clk); 
		@(posedge clk);
		@(posedge clk); SW[9] <= 0; SW[8:0] <= 9'b0;

		
		// Move all the way right
		for (i = 0; i < 4; i++) begin
			@(posedge clk); KEY[0] <= 1;
			@(posedge clk); KEY[0] <= 0;
		end
		
		// Move left (lfsr output)
		for (i = 0; i < 16; i++) begin
			@(posedge clk); SW[8:0] <= 9'b111111111;
		end
		
		// Player 1 wins
		SW[8:0] <= 9'b0;
		for (i = 0; i < 10; i++) begin
			@(posedge clk); KEY[0] <= 1;
			@(posedge clk); KEY[0] <= 0;
		end
		
		@(posedge clk) SW[9] <= 1;
		@(posedge clk) SW[9] <= 0;
		
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end
		
		
endmodule  // tug_of_war_testbench