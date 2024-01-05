module dff_3(
		output logic l_out, r_out, reset_out
		,input logic l_in, r_in, reset_in, clk
	);
	
	logic [2:0] buffer;
	
	always_comb begin
		l_out = buffer[0];
		r_out = buffer[1];
		reset_out = buffer[2];
	end
	
	always_ff @(posedge clk) begin
		buffer <= {reset_in, r_in, l_in};
	end
	
endmodule  // dff_3