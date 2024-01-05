module victory (
		output logic [6:0] HEX0
		,output logic game_over
		,input logic clk, reset
		,input logic L, R, L4, R4
	);
	
	typedef enum logic [1:0]
	{
		e_active = 2'b00
		,e_left = 2'b01
		,e_right = 2'b10
	} state_e;

	
	state_e state_n, state_r;
	
	always_comb begin
		state_n = state_r;
		
		case (state_r)
			e_active: begin
				if (L & ~R & L4) begin
					state_n = e_left;
				end else if (~L & R & R4) begin
					state_n = e_right;
				end
				HEX0 = ~7'b0;
			end
			e_left: begin
				state_n = state_r;
				HEX0 = ~7'b1011011;
			end
			e_right: begin
				state_n = state_r;
				HEX0 = ~7'b0000110;
			end
			default: begin
				state_n = state_e'('x);
			end
		endcase
		
		game_over = (state_r != e_active);
		
	end
	
	always_ff @(posedge clk) begin
		if (reset) begin
			state_r <= e_active;
		end
		else begin
			state_r <= state_n;
		end
	end
	
endmodule  // victory