module direction_testbench();

	logic [1:0] dir;
	logic [3:0] key;
	logic clk, reset;
	
	logic left, up, right, down;
	
	assign left = key[3];
	assign up = key[2];
	assign right = key[1];
	assign down = key[0];
	
	direction dut (.dir, .left, .up, .right, .down, .clk, .reset);
	
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
	
		integer i;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		
		// DOWN
		for (i = 0; i < 16; i++) begin
			if (~(i[3] ^ i[1])) begin
				@(posedge clk); key <= i;
			end
		end
		
		@(posedge clk); key <= 4'b1x0x;
		
		// LEFT
		for (i = 0; i < 16; i++) begin
			if (~(i[2] ^ i[0])) begin
				@(posedge clk); key <= i;
			end
		end
		
		@(posedge clk); key <= 4'bx1x0;

		
		// UP
		for (i = 0; i < 16; i++) begin
			if (~(i[3] ^ i[1])) begin
				@(posedge clk); key <= i;
			end
		end
		
		@(posedge clk); key <= 4'b0x1x;
		
		// RIGHT
		for (i = 0; i < 16; i++) begin
			if (~(i[2] ^ i[0])) begin
				@(posedge clk); key <= i;
			end
		end
		
		@(posedge clk); key <= 4'bx0x1;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
	
		$stop;
	end

endmodule  // direction_testbench