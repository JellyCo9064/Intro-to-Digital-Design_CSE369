module victory_testbench ();
	logic [1:0] winner;
	logic clk, reset;
	logic L, R, L4, R4;
	
	victory dut(.winner, .clk, .reset, .L, .R, .L4, .R4);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		
		// Test non-victory scenarios
		// Outside lights not on
		@(posedge clk); L <= 0; R <= 0; L4 <= 0; R4 <= 0;
		@(posedge clk); L <= 1;
		@(posedge clk); R <= 1;
		@(posedge clk); R <= 0;
		
		// Left-most light on
		@(posedge clk); L <= 0; R <= 0; L4 <= 1;
		@(posedge clk); R <= 1;
		@(posedge clk); L <= 1;
		
		// Right-most light on
		@(posedge clk); L <= 0; R <= 0; L4 <= 0; R4 <= 1;
		@(posedge clk); L <= 1;
		@(posedge clk); R <= 1;
		
		// Left victory
		@(posedge clk); L <= 1; R <= 0; L4 <= 1; R4 <= 0;
		
		// Right victory
		@(posedge clk); L <= 0; R <= 1; L4 <= 0; R4 <= 1;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		@(posedge clk);
		
		$stop;
	end
	
endmodule  // victory_testbench