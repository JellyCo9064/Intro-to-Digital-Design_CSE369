module grid_light (
	output logic green_light_on, head, game_over_out
	,input logic eating, game_over_in
	,input logic left, up, right, down
	,input logic [7:0] length
	,input logic [1:0] dir
	,input logic clk, slow_edge, reset
	,input logic [1:0] light_type
	);
	
	typedef enum logic [2:0]
	{
		e_off = 3'b000
		,e_head = 3'b100
		// ,e_apple = 3'b001
		,e_countdown = 3'b010
		,e_collision = 3'b111
	} state_e;
	
	state_e state_n, state_r;
	
	logic [7:0] count;
	counter256 counter (.count, .start_val(length), .inc(eating), .enable(state_n == e_head), .clk, .slow_edge, .reset, .init_val(light_type));
	
	always_comb begin
	
		green_light_on = (state_r == e_head | state_r == e_countdown);
		head = (state_r == e_head);
	
		if (state_r == e_head) begin
			// HEAD -> COUNTDOWN
			state_n = e_countdown;
		end else if (state_r == e_countdown & count == 8'b00000001 & ~eating) begin
			// COUNTDOWN -> OFF
			state_n = e_off;
		end else begin
			// COUNTDOWN
			state_n = state_r;
		end
		
		// OFF -> HEAD or
		// COUNTDOWN -> COLLISION
		case(dir)
			// LEFT
			2'b00: begin
				if (right) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
			// UP
			2'b01: begin
				if (down) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
			// RIGHT
			2'b10: begin
				if (left) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
			// DOWN
			2'b11: begin
				if (up) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
		endcase
		
		if (game_over_in)
			state_n = e_collision;
		else
			state_n = state_n;
			
		game_over_out = (state_n == e_collision);
		
	end
	
	always_ff @(posedge clk) begin
		if (reset) begin
			if (light_type == 2'b00)
				state_r <= e_off;
			else if (light_type == 2'b11)
				state_r <= e_head;
			else
				state_r <= e_countdown;
		end else begin
			if (slow_edge)
				state_r <= state_n;
			else
				state_r <= state_r;
		end
	end
	
endmodule  // grid_light