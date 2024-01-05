module counter_testbench();

	logic [2:0] count;
	logic win, reset, clk;
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	counter dut(.count, .win, .reset, .clk);
	
	initial begin
		integer i;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		
		for (i = 0; i < 9; i++) begin
			@(posedge clk); win <= 1;
		end
		
		for (i = 0; i < 3; i++) begin
			@(posedge clk); win <= 0;
		end
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		@(posedge clk);
		
		$stop;
	end

endmodule  //counter_testbench