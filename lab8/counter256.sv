module counter256(
	output logic [7:0] count
	,input logic [7:0] start_val
	,input logic inc, enable, clk, slow_edge, reset
	,input logic [1:0] init_val
	);

	always_ff @(posedge clk) begin
		if (reset)
			count <= {6'b0, init_val};
		else begin
			if (slow_edge) begin
				if (enable & ~inc)
					count <= start_val;
				else if (enable)
					count <= start_val + 8'b00000001;
				else if (inc)
					count <= count;
				else
					count <= count - 8'b00000001;
			end else
				count <= count;
		end
		
	end
	
endmodule  //counter256