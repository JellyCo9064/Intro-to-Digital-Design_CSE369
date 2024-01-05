module apple_generator_testbench();

	logic [15:0][15:0] RedPixels;
	logic [15:0][15:0] GrnPixels;
	logic [7:0] random;
	logic eating, clk, reset;
	
	apple_generator dut (.RedPixels, .GrnPixels, .random, .clk, .reset, .eating);
	lfsr_8 randomizer (.out(random), .clk, .reset);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD) clk <= ~clk;
	end
	
	initial begin
		
		integer i;
		
		@(posedge clk); reset <= 1; GrnPixels <= 256'b0; GrnPixels[0] <= 16'b1111111111111111;
		@(posedge clk); reset <= 0;
		
		for (i = 0; i < 3; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); GrnPixels[0] <= 16'b0;
		
		for (i = 0; i < 4; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); GrnPixels[0] <= 16'b1111111111111111; eating <= 1'b1;
		
		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); eating <= 1'b0;
		
		for (i = 0; i < 8; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end

endmodule  //apple_generator_testbench