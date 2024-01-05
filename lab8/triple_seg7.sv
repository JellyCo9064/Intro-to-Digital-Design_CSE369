module triple_seg7 (
	output logic [6:0] HEX0, HEX1, HEX2
	,input logic [7:0] number
	);
	
	always_comb begin
		case (number)
			8'b11: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b1000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b1001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b1010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b1011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b1100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end
			8'b1101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b1110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b1111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10000: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10001: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10010: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10011: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10100: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10101: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10110: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000000;
			end
			8'b10111: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11000: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11001: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11010: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11011: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11100: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11101: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11110: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b11111: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b100000: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000000;
			end
			8'b100001: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b100010: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b100011: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b100100: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b100101: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b100110: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b100111: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b101000: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b101001: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b101010: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000000;
			end
			8'b101011: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b101100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b101101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b101110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b101111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b110000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b110001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b110010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b110011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b110100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000000;
			end
			8'b110101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b110110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b110111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111000: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111001: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111010: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111011: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111100: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111101: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111110: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000000;
			end
			8'b111111: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000000: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000001: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000010: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000011: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000100: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000101: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000110: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1000111: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1001000: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000000;
			end
			8'b1001001: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1001010: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1001011: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1001100: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1001101: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1001110: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1001111: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1010000: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1010001: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1010010: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000000;
			end
			8'b1010011: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1010100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1010101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1010110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1010111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1011000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1011001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1011010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1011011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1011100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000000;
			end
			8'b1011101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1011110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1011111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100000: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100001: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100010: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100011: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100100: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100101: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100110: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000000;
			end
			8'b1100111: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101000: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101001: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101010: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101011: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101100: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101101: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101110: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1101111: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1110000: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b0000110;
			end
			8'b1110001: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1110010: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1110011: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1110100: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1110101: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1110110: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1110111: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1111000: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1111001: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1111010: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b0000110;
			end
			8'b1111011: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b1111100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b1111101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b1111110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b1111111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b10000000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b10000001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b10000010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b10000011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b10000100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b0000110;
			end
			8'b10000101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10000110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10000111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001000: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001001: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001010: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001011: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001100: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001101: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001110: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b0000110;
			end
			8'b10001111: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010000: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010001: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010010: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010011: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010100: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010101: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010110: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10010111: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10011000: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b0000110;
			end
			8'b10011001: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10011010: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10011011: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10011100: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10011101: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10011110: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10011111: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10100000: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10100001: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10100010: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b0000110;
			end
			8'b10100011: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10100100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10100101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10100110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10100111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10101000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10101001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10101010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10101011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10101100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1111101;
				HEX2 = ~7'b0000110;
			end
			8'b10101101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10101110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10101111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110000: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110001: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110010: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110011: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110100: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110101: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110110: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0000111;
				HEX2 = ~7'b0000110;
			end
			8'b10110111: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111000: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111001: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111010: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111011: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111100: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111101: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111110: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b10111111: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b11000000: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1111111;
				HEX2 = ~7'b0000110;
			end
			8'b11000001: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11000010: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11000011: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11000100: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11000101: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11000110: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11000111: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11001000: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11001001: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11001010: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1101111;
				HEX2 = ~7'b0000110;
			end
			8'b11001011: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11001100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11001101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11001110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11001111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11010000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11010001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11010010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11010011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11010100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0111111;
				HEX2 = ~7'b1011011;
			end
			8'b11010101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11010110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11010111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011000: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011001: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011010: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011011: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011100: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011101: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011110: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b0000110;
				HEX2 = ~7'b1011011;
			end
			8'b11011111: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100000: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100001: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100010: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100011: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100100: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100101: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100110: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11100111: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11101000: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1011011;
				HEX2 = ~7'b1011011;
			end
			8'b11101001: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11101010: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11101011: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11101100: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11101101: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11101110: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11101111: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11110000: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11110001: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11110010: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1001111;
				HEX2 = ~7'b1011011;
			end
			8'b11110011: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11110100: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11110101: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11110110: begin
				HEX0 = ~7'b1001111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11110111: begin
				HEX0 = ~7'b1100110;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11111000: begin
				HEX0 = ~7'b1101101;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11111001: begin
				HEX0 = ~7'b1111101;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11111010: begin
				HEX0 = ~7'b0000111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11111011: begin
				HEX0 = ~7'b1111111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11111100: begin
				HEX0 = ~7'b1101111;
				HEX1 = ~7'b1100110;
				HEX2 = ~7'b1011011;
			end
			8'b11111101: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b1011011;
			end
			8'b11111110: begin
				HEX0 = ~7'b0000110;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b1011011;
			end
			8'b11111111: begin
				HEX0 = ~7'b1011011;
				HEX1 = ~7'b1101101;
				HEX2 = ~7'b1011011;
			end
			default: begin
				HEX0 = ~7'b0111111;
				HEX1 = ~7'b0000000;
				HEX2 = ~7'b0000000;
			end

		endcase
		
	end
	
endmodule  // triple_seg7