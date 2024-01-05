module seatac(
	output logic [2:0] pattern
	,input logic [1:0] wind
	,input logic clk, reset
	);
	
	typedef enum logic [2:0]
	{
		e_left = 3'b100
		,e_middle = 3'b010
		,e_right = 3'b001
		,e_outside = 3'b101
	} state_e;
	
	state_e state_r, state_n;
	
	always_comb begin
		state_n = state_r;
		
		case (wind)
			2'b00: begin
				if (state_r == e_outside)    state_n = e_middle;
				else                         state_n = e_outside;
			end
			2'b01: begin
				if      (state_r == e_left)  state_n = e_right;
				else if (state_r == e_right) state_n = e_middle;
				else                         state_n = e_left;
			end
			2'b10: begin
				if      (state_r == e_left)  state_n = e_middle;
				else if (state_r == e_right) state_n = e_left;
				else                         state_n = e_right;
			end
			default: begin
				state_n = state_e'('x);
			end
		endcase
		
		pattern = state_r;
	end
	
	always_ff @(posedge clk) begin
		if (reset) begin
			state_r <= e_middle;
		end else begin
			state_r <= state_n;
		end
	end
	
endmodule  // seatac
