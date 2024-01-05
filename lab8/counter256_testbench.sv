module counter256_testbench ();

	logic [7:0] count, start_val;
	logic inc, enable, clk, slow_edge, reset;
	logic [1:0] init_val;
	
	counter256 dut (.count, .start_val, .inc, .enable, .clk, .slow_edge, .reset, .init_val);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		@(posedge clk); reset <= 1; init_val = 2'b01; start_val = 8'b00000101; slow_edge <= 1; inc <= 0;
		@(posedge clk); reset <= 0;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		@(posedge clk); enable <= 1;
		@(posedge clk); enable <= 0;
		
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); start_val = 8'b00001011;
		
		@(posedge clk); enable <= 1;
		@(posedge clk); enable <= 0;
		
		for (i = 0; i < 8; i++) begin
			@(posedge clk);
		end

		@(posedge clk); inc <= 1;
		@(posedge clk); inc <= 0;

		for (i = 0; i < 64; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end

endmodule  // counter256_testbench