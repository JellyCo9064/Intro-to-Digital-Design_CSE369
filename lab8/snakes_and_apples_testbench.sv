module snakes_and_apples_testbench();
	logic [1:0] dir;
	logic [9:0]  SW;
	logic [15:0][15:0] GrnPixels, RedPixels;
	logic [7:0] snake_len;
	logic eating, clk, slow_edge, reset, game_over;
	
	snakes_and_apples dut (.dir, .game_over, .SW, .GrnPixels, .RedPixels, .eating, .clk, .slow_edge, .reset, .snake_len);
	 
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		slow_edge <= 1;
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0; dir <= 2'b11; RedPixels <= 256'b0; RedPixels[15] <= 16'b0000000000000001;
		
		for (i = 0; i < 12; i++) begin
			@(posedge clk);
		end
		
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); dir <= 2'b00;
		
		for (i = 0; i < 20; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); dir <= 2'b01;
		
		for (i = 0; i < 20; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); dir <= 2'b10;
		
		for (i = 0; i < 20; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end
	


endmodule  //snakes_and_apples_testbench