module counter(
	output logic [2:0] count
	,input logic win, clk, reset
	);

	always_ff @(posedge clk) begin
		if (reset)
			count <= 3'b0;
		else if (win)
			count <= count + 3'b001;
	end
	
endmodule  //counter