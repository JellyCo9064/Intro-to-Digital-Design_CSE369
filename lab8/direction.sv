module direction (
	output logic [1:0] dir
	,input logic left, up, right, down
	,input logic clk, reset
	);
	
	typedef enum logic [1:0]
	{
		e_left = 2'b00
		,e_up = 2'b01
		,e_right = 2'b10
		,e_down = 2'b11
	} state_e;
	
	
	state_e state_n, state_r;
	
	always_comb begin
	
		case (state_r)
			
			e_left: begin
				if (up & ~down)
					state_n = e_up;
				else if (~up & down)
					state_n = e_down;
				else
					state_n = e_left;
			end
			e_up: begin
				if (left & ~right)
					state_n = e_left;
				else if (~left & right)
					state_n = e_right;
				else
					state_n = e_up;
			end
			e_right: begin
				if (up & ~down)
					state_n = e_up;
				else if (~up & down)
					state_n = e_down;
				else
					state_n = e_right;
			end
			e_down: begin
				if (left & ~right)
					state_n = e_left;
				else if (~left & right)
					state_n = e_right;
				else
					state_n = e_down;
			end
			
		endcase
	
		dir = state_n;
	end
	
	always_ff @(posedge clk) begin
		if (reset)
			state_r <= e_down;
		else
			state_r <= state_n;
	end

endmodule  // direction