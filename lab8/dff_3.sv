module dff_3(
		output logic r_out, reset_out
		,input logic r_in, reset_in, clk
	);

	logic [1:0] buffer;
	
	always_comb begin
		buffer = {r_in, reset_in};
	end
	
	always_ff @(posedge clk) begin
		r_out <= buffer[1];
		reset_out <= buffer[0];
	end
	
endmodule  // dff_3