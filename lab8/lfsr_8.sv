module lfsr_8 (
	output logic [7:0] out
	,input logic clk, reset
	);
	
	always_ff @(posedge clk) begin
		if (reset)
			out <= 8'b11001111;
		else
			out <= {out[6:0], ~(out[7] ^ out[5] ^ out[4] ^ out[3])};
	end
	
endmodule  //lfsr_8