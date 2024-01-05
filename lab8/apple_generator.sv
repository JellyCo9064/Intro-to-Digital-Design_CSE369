module apple_generator(
	output logic [15:0][15:0] RedPixels
	,input logic [15:0][15:0] GrnPixels
	,input logic eating
	,input logic [7:0] random
	,input logic clk, reset
	);
	
	logic [15:0][15:0] red;
	
	logic [3:0] rand_row;
	logic [3:0] rand_col;
	
	assign rand_row = random[7:4];
	assign rand_col = random[3:0];
	
	logic[15:0] row_lights;
	col_select col (.row_lights, .rand_col);
	
	logic apple_active, conflict;
	check_conflict chk (.apple_active, .conflict, .red(red), .grn(GrnPixels), .clk, .reset);
	
	typedef enum logic [1:0]
	{
		e_active = 2'b11
		,e_hold = 2'b01
		,e_empty = 2'b00
	} state_e;
	
	state_e state_n, state_r;
	
	always_comb begin
	
		if (state_r == e_active & eating)
			state_n = e_hold;
		else if (state_r == e_hold & ~eating)
			state_n = e_empty;
		else if (state_r == e_empty)
			state_n = e_active;
		else
			state_n = state_r;
		
		if (state_r == e_hold) begin
			red = RedPixels;
		end else if (state_r == e_empty) begin
			red = 256'b0;
		end else if (conflict | ~apple_active) begin
			red = 256'b0;
			
			case (rand_row)
			
				4'b0000: begin
					red[0] = row_lights;
				end
				4'b0001: begin			
					red[1] = row_lights;			
				end
				4'b0010: begin
					red[2] = row_lights;			
				end
				4'b0011: begin
					red[3] = row_lights;			
				end
				4'b0100: begin
					red[4] = row_lights;		
				end
				4'b0101: begin
					red[5] = row_lights;			
				end
				4'b0110: begin
					red[6] = row_lights;			
				end		
				4'b0111: begin
					red[7] = row_lights;				
				end
				4'b1000: begin
					red[8] = row_lights;			
				end
				4'b1001: begin
					red[9] = row_lights;			
				end
				4'b1010: begin
					red[10] = row_lights;			
				end
				4'b1011: begin
					red[11] = row_lights;			
				end
				4'b1100: begin
					red[12] = row_lights;			
				end
				4'b1101: begin
					red[13] = row_lights;			
				end
				4'b1110: begin
					red[14] = row_lights;		
				end
				4'b1111: begin
					red[15] = row_lights;			
				end
		
			endcase
				
		end else begin
			red = RedPixels;
		end
		
	end
	
	always_ff @(posedge clk) begin
		if (reset) begin
			RedPixels <= 256'b0;
			state_r <= e_empty;
		end else begin
			RedPixels <= red;
			state_r <= state_n;
		end
	end
	

endmodule  // apple_generator