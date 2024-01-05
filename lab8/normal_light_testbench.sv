module normal_light_testbench ();
	logic light_on;
	logic clk, reset;
	logic L, R, NL, NR;
	
	normal_light dut(.light_on, .clk, .reset, .L, .R, .NL, .NR);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		@(posedge clk); reset <= 1; {L, R, NL, NR} <= 4'b0;
		@(posedge clk); reset <= 0;
		
		// Start in OFF state, try all self-transitions
		@(posedge clk); NL <= 0; NR <= 0; L <= 0; R <= 0;
		@(posedge clk); L <= 1;
		@(posedge clk); R <= 1;
		@(posedge clk); L <= 0;
		
		@(posedge clk); NL <= 1; L <= 0; R <= 0;
		@(posedge clk); L <= 1;
		@(posedge clk); R <= 1;
		
		@(posedge clk); NL <= 0; NR <= 1; L <= 0; R <= 0;
		@(posedge clk); R <= 1;
		@(posedge clk); L <= 1;
		

		// Test OFF->ON transition (L and NR)
		@(posedge clk); L <= 1; R <= 0; NL <= 0; NR <= 1;
		
		// In ON state, try all self-transitions
		@(posedge clk); NL <= 0; NR <= 0; L <= 0; R <= 0;
		@(posedge clk); L <= 1; R <= 1;
		
		// Test ON->OFF transition (L and ~NL)
		@(posedge clk); L <= 1; R <= 0; NL <= 0; NR <= 0;
		
		// Test OFF->ON transition (R and NL)
		@(posedge clk); L <= 0; R <= 1; NL <= 1; NR <= 0;
		
		// Test ON->OFF transition (R and ~NR)
		@(posedge clk); NL <= 0;
		
		// Go back to ON state
		@(posedge clk); L <= 1; R <= 0; NL <= 0; NR <= 1;
		
		// Test reset
		@(posedge clk); reset <= 1;
		
		@(posedge clk); reset <= 0;
		
		@(posedge clk); L <= 1; R <= 0; NL <= 0; NR <= 0;
		@(posedge clk); L <= 0; R <= 1;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		
		$stop;
	end
	
endmodule  // normal_light_testbench