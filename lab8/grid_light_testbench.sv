module grid_light_testbench ();

	logic green_light_on, head, eating;
	logic left, up, right, down;
	logic [7:0] length;
	logic [1:0] dir;
	logic clk, slow_edge, reset;
	logic [1:0] light_type;
	logic game_over_in, game_over_out;
	
	grid_light dut(.green_light_on, .head, .eating, .left, .up, .right, .down, .length, .dir, .clk, .slow_edge, .reset, .light_type, .game_over_in, .game_over_out);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		// Initial HEAD
		@(posedge clk); reset <= 1; light_type <= 2'b11; eating <= 0; game_over_in <= 0; dir <= 2'b11; slow_edge <= 1;
		@(posedge clk); reset <= 0;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		// Initial THORAX
		@(posedge clk); reset <= 1; light_type <= 2'b10;
		@(posedge clk); reset <= 0;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		// Initial TAIL
		@(posedge clk); reset <= 1; light_type <= 2'b01;
		@(posedge clk); reset <= 0;
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		// Initial OFF
		@(posedge clk); reset <= 1; light_type <= 2'b00;
		@(posedge clk); reset <= 0;
		
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
		@(posedge clk); dir <= 2'b11; up <= 1;
		@(posedge clk); up <= 0;
		
		for (i = 0; i < 6; i++) begin
			@(posedge clk);
		end
		
		// COLLISION
		@(posedge clk); dir <= 2'b00; right <= 1;
		@(posedge clk); right <= 0;
		
		@(posedge clk); light_type <= 2'b00;
		@(posedge clk); length <= 8'b00000101;
		
		@(posedge clk); dir <= 2'b00; right <= 1;
		@(posedge clk); right <= 0;
		
		for (i = 0; i < 4; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); eating <= 1;
		
		@(posedge clk); eating <= 0;
		
		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); dir <= 2'b00; right <= 1;
		@(posedge clk); right <= 0;
		
		for (i = 0; i < 3; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); eating <= 1;
		
		@(posedge clk); eating <= 0;
		
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); game_over_in <= 1;
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end

endmodule  // grid_light_testbench