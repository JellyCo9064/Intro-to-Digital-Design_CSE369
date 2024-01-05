module check_conflict (
	output logic conflict, apple_active
	,input logic [15:0][15:0] red
	,input logic [15:0][15:0] grn
	,input logic clk, reset
	);
	
	logic c, a;
	
	always_comb begin
		c = (red & grn) != 0;
		
		a = (red != 0);					
	end
	
	always_ff @(posedge clk) begin
		if (reset) begin
			conflict <= 0;
			apple_active <= 0;
		end else begin
			conflict <= c;
			apple_active <= a;
		end
	end
	
endmodule  // check_conflict