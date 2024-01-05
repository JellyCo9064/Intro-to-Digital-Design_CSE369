module upc_desc (
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
	,input logic U, P, C
	);
	
	always_comb begin
		case ({U, P, C})
			// Potato Crown
			3'b000:
				begin
				// Light: 6543210
					HEX5 = ~7'b1110011;  // P
					HEX4 = ~7'b0111111;  // O
					HEX3 = ~7'b1111000;  // t
					HEX2 = ~7'b1110111;  // A
					HEX1 = ~7'b1111000;  // t
					HEX0 = ~7'b0111111;  // O
				end
			// Pig's Foot
			3'b001:
			   begin
				// Light: 6543210
					HEX5 = ~7'b0;        // X
					HEX4 = ~7'b0;        // X
					HEX3 = ~7'b1110001;  // F
					HEX2 = ~7'b0111111;  // O
					HEX1 = ~7'b0111111;  // O
					HEX0 = ~7'b1111000;  // t
				end
			// Rocket Launcher
			3'b011:
				begin
					// Light: 6543210
					HEX5 = ~7'b1000000;  // -
					HEX4 = ~7'b1000000;  // -
					HEX3 = ~7'b0111001;  // E
					HEX2 = ~7'b1001001;  // =
					HEX1 = ~7'b1001001;  // =
					HEX0 = ~7'b1110000;  // |-
				end
			// Pigman Sword
			3'b100:
				begin
					// Light: 6543210
					HEX5 = ~7'b0;
					HEX4 = ~7'b1111111;  // B
					HEX3 = ~7'b0111000;  // L
					HEX2 = ~7'b0111111;  // O
					HEX1 = ~7'b0111111;  // O
					HEX0 = ~7'b1011110;  // d
				end
			// Steering Wheel
			3'b101:
				begin
					// Light: 6543210
					HEX5 = ~7'b0;
					HEX4 = ~7'b1101101;  // S
					HEX3 = ~7'b1111000;  // t
					HEX2 = ~7'b1111001;  // E
					HEX1 = ~7'b1111001;  // E
					HEX0 = ~7'b0110011;  // r
				end
			// Techno Youtooz
			3'b110:
				begin
					// Light: 6543210
					HEX5 = ~7'b1111000;  // t
					HEX4 = ~7'b1111001;  // E
					HEX3 = ~7'b0111001;  // C
					HEX2 = ~7'b1110110;  // H
					HEX1 = ~7'b0110111;  // n
					HEX0 = ~7'b0111111;  // O
				end
			default:
				begin
					HEX5 = 7'bX;
					HEX4 = 7'bX;
					HEX3 = 7'bX;
					HEX2 = 7'bX;
					HEX1 = 7'bX;
					HEX0 = 7'bX;
				end
		endcase
				
  end
endmodule  // upc_desc

module upc_desc_testbench();

	logic [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0;
	logic U, P, C;
	
	upc_desc dut (.HEX5, .HEX4, .HEX3, .HEX2, .HEX1, .HEX0, .U, .P, .C);
	
	integer i;
	initial begin
		for (int i = 0; i < 8; i++) begin
			{U, P, C} = i; #10;
		end
	end
endmodule  //upc_desc_testbench