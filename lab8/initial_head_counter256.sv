module initial_head_counter256(
	output logic [7:0] count
	,input logic [7:0] start_val
	,input logic enable, clk, reset
	);

	always_ff @(posedge clk) begin
		if (reset)
			count <= 8'b00000011;
		else if (enable)
			count <= start_val;
		else
			count <= count - 8'b00000001;
	end
	
endmodule  //initial_head_counter256