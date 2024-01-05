module check_eating_light (
	output logic eating
	,input logic apple
	,input logic left, up, right, down
	,input logic [1:0] dir
	);
	
	logic e;
	
	always_comb begin
		
		if (apple) begin
			case(dir)
				// LEFT
				2'b00: begin
					eating = right;
				end
				
				// UP
				2'b01: begin
					eating = down;
				end
				
				// RIGHT
				2'b10: begin
					eating = left;
				end
				
				// DOWN
				2'b11: begin
					eating = up;
				end
				
			endcase
		end else begin
			eating = 1'b0;
		end
		
	end

	
endmodule  // check_eating_light