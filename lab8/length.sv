module length (
	output logic [7:0] snake_length
	,input logic inc
	,input logic clk, slow_edge, reset
	);
	
	always_ff @(posedge clk) begin
		if (reset)
			snake_length <= 8'b00000011;
		else begin
			if (slow_edge) begin
				if (inc)
					snake_length <= snake_length + 8'b00000001;
				else
					snake_length <= snake_length;
			end else
				snake_length <= snake_length;
		end
	end
	
endmodule  // length