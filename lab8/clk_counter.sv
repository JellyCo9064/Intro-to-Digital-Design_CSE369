module clk_counter (
	output logic clk_out
	,input logic clk_in, reset
	);
	
	logic [31:0] count;
	
	assign clk_out = count[24];
	
	always_ff @(posedge clk_in) begin
		if (reset)
			count <= 32'b0;
		else
			count <= count + 1;
	end
	
endmodule  // clk_counter