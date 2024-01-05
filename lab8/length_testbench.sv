module length_testbench ();

	logic [7:0] snake_length;
	logic inc;
	logic clk, slow_edge, reset;

	length dut (.snake_length, .inc, .clk, .slow_edge, .reset);

	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD) clk <= ~clk;
	end

	initial begin

		integer i;
	
		@(posedge clk); reset <= 1; slow_edge <= 1;
		@(posedge clk); reset <= 0;

		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end

		@(posedge clk); inc <= 1;
		@(posedge clk); inc <= 0;

		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); inc <= 1;
		@(posedge clk); inc <= 0;

		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); inc <= 1;
		for (i = 0; i < 253; i++) begin
			@(posedge clk);
		end

		for (i = 0; i < 64; i++) begin
			@(posedge clk);
		end
		$stop;
	end

endmodule  // length_testbench