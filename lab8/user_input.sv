module user_input(
		output logic out
		,input logic in, clk, reset
	);
	
	typedef enum logic [1:0]
	{
		e_zero = 2'b00
		,e_one = 2'b01
		,e_hold = 2'b10
	} state_e;
	
	state_e state_n, state_r;
	
	always_comb begin
		state_n = state_r;
		
		case (state_r)
			e_zero: begin
				if (in) state_n = e_one;
				else state_n = e_zero;
			end
			e_one: begin
				if (in) state_n = e_hold;
				else state_n = e_zero;
			end
			e_hold: begin
				if (in) state_n = e_hold;
				else state_n = e_zero;
			end
			default: begin
				
			end
		endcase
		
		out = (state_r == e_one);
	end
	
	always_ff @(posedge clk) begin
		if (reset) state_r <= e_zero;
		else state_r <= state_n;
	end
	
endmodule  // user_input