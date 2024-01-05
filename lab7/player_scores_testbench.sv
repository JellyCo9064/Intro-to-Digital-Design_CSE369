module player_scores_testbench();

	logic [6:0] HEX0, HEX3;
	logic [1:0] winner;
	logic clk, reset;
	
	player_scores dut(.HEX0, .HEX3, .winner, .clk, .reset);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	initial begin
		@(posedge clk) reset <= 1;
		@(posedge clk) reset <= 0;
		
		for (i = 0; i < 7; i++) begin
			@(posedge clk); winner <= 2'b01;
			@(posedge clk); winner <= 2'b10;
		end
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		@(posedge clk);
		
		$stop;
	end

endmodule  //player_scores_testbench