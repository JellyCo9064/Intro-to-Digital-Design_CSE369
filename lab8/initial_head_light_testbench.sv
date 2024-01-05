module initial_head_light_testbench ();

	logic green_light_on, head;
	logic left, up, right, down;
	logic [7:0] length;
	logic [1:0] dir;
	logic clk, reset;
	
	initial_head_light dut(.green_light_on, .head, .left, .up, .right, .down, .length, .dir, .clk, .reset);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		@(posedge clk); {left, up, right, down} <= 4'b0; dir <= 2'b00; length <= 8'b00000101;
		@(posedge clk); dir <= 2'b01;
		@(posedge clk); dir <= 2'b10;
		@(posedge clk); dir <= 2'b11;
		
		// Right light is HEAD, dir is to the left
		@(posedge clk); dir <= 2'b00; right <= 1;
		@(posedge clk); right <= 0;
		
		for (i = 0; i < 6; i++) begin
			@(posedge clk);
		end
		
		// Down light is HEAD, dir is up
		@(posedge clk); dir <= 2'b01; down <= 1;
		@(posedge clk); down <= 0;
		
		for (i = 0; i < 6; i++) begin
			@(posedge clk);
		end
		
		// Left light is HEAD, dir is right
		@(posedge clk); dir <= 2'b10; left <= 1;
		@(posedge clk); left <= 0;
		
		for (i = 0; i < 6; i++) begin
			@(posedge clk);
		end
		
		// Up light is HEAD, dir is down
		@(posedge clk); dir <= 2'b11; up <= 1; length <= 8'b00001010;
		@(posedge clk); up <= 0;
		
		for (i = 0; i < 6; i++) begin
			@(posedge clk);
		end
		
		// COLLISION
		@(posedge clk); dir <= 2'b00; right <= 1;
		@(posedge clk); right <= 0;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		$stop;
	end

endmodule  // initial_head_light_testbench