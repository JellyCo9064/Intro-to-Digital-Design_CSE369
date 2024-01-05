module victory (
		output logic [1:0] winner
		,input logic clk, reset
		,input logic L, R, L4, R4
	);
	
	logic [1:0] status;
	
	always_comb begin
		if (L & ~R & L4)
			status = 2'b10;
		else if (~L & R & R4)
			status = 2'b01;
		else
			status = 2'b0;
	end
	
	always_ff @(posedge clk) begin
		if (reset)
			winner <= 2'b0;
		else
			winner <= status;
	end
	
endmodule  // victory