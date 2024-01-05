module center_light (
	output logic light_on
	,input logic clk, reset
	,input logic L, R, NL, NR, game_over
	);
	
	logic ps, ns;
	
	always_comb begin
		
		if (ps & (L ^ R)) ns = 0;
		else if (~ps & ((NL & R & ~L) | (NR & L & ~R))) ns = 1;
		else ns = ps;
		
		light_on = ps;
	end
	
	always_ff @(posedge clk) begin
		if (reset | game_over) ps <= 1;
		else ps <= ns;
	end
	
endmodule  // center_light