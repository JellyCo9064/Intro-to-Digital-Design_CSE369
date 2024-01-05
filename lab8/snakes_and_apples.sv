module snakes_and_apples #(
		parameter WIDTH = 16
	)
	(
    output logic [WIDTH-1:0][WIDTH-1:0] GrnPixels
	 ,output logic eating, game_over
	 ,output logic [7:0] snake_len
	 ,input logic [WIDTH-1:0][WIDTH-1:0] RedPixels
    ,input logic [1:0] dir
	 ,input logic [9:0] SW
    ,input logic clk, slow_edge, reset
	 );
	 
	 logic [WIDTH-1:0][WIDTH-1:0] head_grid, cell_grid;
	 
	 assign eating = (cell_grid != 256'b0);

	 length len (.snake_length(snake_len), .inc(eating), .clk, .slow_edge, .reset);
	 
	 logic [WIDTH-1:0][WIDTH-1:0] game_over_grid;
	 
	 // Snake Lights
	 
	 // Initial Lights
	 // TAIL
	 grid_light tail (.green_light_on(GrnPixels[0][0]), .head(head_grid[0][0]), .eating, .left(head_grid[0][WIDTH-1]), .up(head_grid[WIDTH-1][0]), .right(head_grid[0][1]), .down(head_grid[1][0]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b01), .game_over_out(game_over_grid[0][0]), .game_over_in(game_over));
	 // THORAX
	 grid_light thorax (.green_light_on(GrnPixels[1][0]), .head(head_grid[1][0]), .eating, .left(head_grid[1][WIDTH-1]), .up(head_grid[0][0]), .right(head_grid[1][1]), .down(head_grid[2][0]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b10), .game_over_out(game_over_grid[1][0]), .game_over_in(game_over));
	 // HEAD
	 grid_light head (.green_light_on(GrnPixels[2][0]), .head(head_grid[2][0]), .eating, .left(head_grid[2][WIDTH-1]), .up(head_grid[1][0]), .right(head_grid[2][1]), .down(head_grid[3][0]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b11), .game_over_out(game_over_grid[2][0]), .game_over_in(game_over));
	 
	 // Corners
	 grid_light top_right (.green_light_on(GrnPixels[0][WIDTH-1]), .head(head_grid[0][WIDTH-1]), .eating, .left(head_grid[0][WIDTH-2]), .up(head_grid[WIDTH-1][WIDTH-1]), .right(head_grid[0][0]), .down(head_grid[1][WIDTH-1]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[0][WIDTH-1]), .game_over_in(game_over));
	 
	 grid_light bot_right (.green_light_on(GrnPixels[WIDTH-1][WIDTH-1]), .head(head_grid[WIDTH-1][WIDTH-1]), .eating, .left(head_grid[WIDTH-1][WIDTH-2]), .up(head_grid[WIDTH-2][WIDTH-1]), .right(head_grid[WIDTH-1][0]), .down(head_grid[0][WIDTH-1]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[WIDTH-1][WIDTH-1]), .game_over_in(game_over));
	 
	 grid_light bot_left (.green_light_on(GrnPixels[WIDTH-1][0]), .head(head_grid[WIDTH-1][0]), .eating, .left(head_grid[WIDTH-1][WIDTH-1]), .up(head_grid[WIDTH-2][0]), .right(head_grid[WIDTH-1][1]), .down(head_grid[0][0]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[WIDTH-1][0]), .game_over_in(game_over));
	 
	 // Vertical Bars
	 genvar i;
	 genvar j;

	 generate
		for (i = 1; i < WIDTH-1; i++) begin : vertical_bars
			if (i != 1 & i != 2) begin
				grid_light left_col (.green_light_on(GrnPixels[i][0]), .head(head_grid[i][0]), .eating, .left(head_grid[i][WIDTH-1]), .up(head_grid[i-1][0]), .right(head_grid[i][1]), .down(head_grid[i+1][0]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[i][0]), .game_over_in(game_over));
			end
			grid_light right_col (.green_light_on(GrnPixels[i][WIDTH-1]), .head(head_grid[i][WIDTH-1]), .eating, .left(head_grid[i][WIDTH-2]), .up(head_grid[i-1][WIDTH-1]), .right(head_grid[i][0]), .down(head_grid[i+1][WIDTH-1]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[i][WIDTH-1]), .game_over_in(game_over));
		end
	 endgenerate
	 
	 // Horizontal Bars
	 generate
		for (j = 1; j < WIDTH-1; j++) begin : horizontal_bars
			grid_light top_row (.green_light_on(GrnPixels[0][j]), .head(head_grid[0][j]), .eating, .left(head_grid[0][j-1]), .up(head_grid[WIDTH-1][j]), .right(head_grid[0][j+1]), .down(head_grid[1][j]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[0][j]), .game_over_in(game_over));
			grid_light bot_row (.green_light_on(GrnPixels[WIDTH-1][j]), .head(head_grid[WIDTH-1][j]), .eating, .left(head_grid[WIDTH-1][j-1]), .up(head_grid[WIDTH-2][j]), .right(head_grid[WIDTH-1][j+1]), .down(head_grid[0][j]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[WIDTH-1][j]), .game_over_in(game_over));
		end
	 endgenerate
	 
	 // Center Grid
	 generate
		for (i = 1; i < WIDTH-1; i++) begin : center_grid_row
			for (j = 1; j < WIDTH-1; j++) begin: center_grid_col
				grid_light light (.green_light_on(GrnPixels[i][j]), .head(head_grid[i][j]), .eating, .left(head_grid[i][j-1]), .up(head_grid[i-1][j]), .right(head_grid[i][j+1]), .down(head_grid[i+1][j]), .length(snake_len), .dir(dir), .clk(clk), .slow_edge(slow_edge), .reset, .light_type(2'b00), .game_over_out(game_over_grid[i][j]), .game_over_in(game_over));
			end
		end
	 endgenerate
	 
	 
	 
	 
	 // Apple Checker
	 
	 // Corners
	 check_eating_light tl (.eating(cell_grid[0][0]), .apple(RedPixels[0][0]), .left(head_grid[0][15]), .up(head_grid[15][0]), .right(head_grid[0][1]), .down(head_grid[1][0]), .dir(dir));
	 check_eating_light tr (.eating(cell_grid[0][15]), .apple(RedPixels[0][15]), .left(head_grid[0][14]), .up(head_grid[15][15]), .right(head_grid[0][0]), .down(head_grid[1][15]), .dir(dir));
	 check_eating_light bl (.eating(cell_grid[15][0]), .apple(RedPixels[15][0]), .left(head_grid[15][15]), .up(head_grid[14][0]), .right(head_grid[15][1]), .down(head_grid[0][0]), .dir(dir));
	 check_eating_light br (.eating(cell_grid[15][15]), .apple(RedPixels[15][15]), .left(head_grid[15][14]), .up(head_grid[14][15]), .right(head_grid[15][0]), .down(head_grid[0][15]), .dir(dir));
	 
	 // Vertical Bars
	 generate
		for (i = 1; i < 15; i++) begin : vertical_cell
			check_eating_light left_col (.eating(cell_grid[i][0]), .apple(RedPixels[i][0]), .left(head_grid[i][15]), .up(head_grid[i-1][0]), .right(head_grid[i][1]), .down(head_grid[i+1][0]), .dir(dir));
			check_eating_light right_col (.eating(cell_grid[i][15]), .apple(RedPixels[i][15]), .left(head_grid[i][14]), .up(head_grid[i-1][15]), .right(head_grid[i][0]), .down(head_grid[i+1][15]), .dir(dir));
		end
	 endgenerate
	 
	 // Horizontal Bars
	 generate
		for (j = 1; j < 15; j++) begin : horizontal_cell
			check_eating_light left_col (.eating(cell_grid[0][j]), .apple(RedPixels[0][j]), .left(head_grid[0][j-1]), .up(head_grid[15][j-1]), .right(head_grid[0][j+1]), .down(head_grid[1][j]), .dir(dir));
			check_eating_light right_col (.eating(cell_grid[15][j]), .apple(RedPixels[15][j]), .left(head_grid[15][j-1]), .up(head_grid[14][j]), .right(head_grid[15][j+1]), .down(head_grid[0][j]), .dir(dir));
		end
	 endgenerate
	 
	 // Center Grid
	 generate
		for (i = 1; i < WIDTH-1; i++) begin : center_cell_row
			for (j = 1; j < WIDTH-1; j++) begin: center_cell_col
				check_eating_light right_col (.eating(cell_grid[i][j]), .apple(RedPixels[i][j]), .left(head_grid[i][j-1]), .up(head_grid[i-1][j]), .right(head_grid[i][j+1]), .down(head_grid[i+1][j]), .dir(dir));
			end
		end
	 endgenerate
	 
	 always_ff @(posedge clk) begin
		if (reset)
			game_over <= 0;
		else begin
			if (slow_edge) begin
				if (game_over_grid == 256'b0)
					game_over <= 0;
				else
					game_over <= 1;
			end else
				game_over <= game_over;
		end
	 end
	 
endmodule  // snakes_and_apples
