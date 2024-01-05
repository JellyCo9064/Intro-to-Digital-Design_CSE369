module lab8_test (
    output logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
	 ,output logic [9:0]  LEDR
    ,input  logic [3:0]  KEY
    ,input  logic [9:0]  SW
    ,output logic [35:0] GPIO_1
    ,input logic CLOCK_50
	 );

	 // Turn off HEX displays
    assign HEX3 = '1;
    assign HEX4 = '1;
    assign HEX5 = '1;
	 
	 /* If you notice flickering, set SYSTEM_CLOCK faster.
	    However, this may reduce the brightness of the LED board. */
	
	 
	 /* Set up LED board driver
	    ================================================================== */
	 logic [15:0][15:0]RedPixels; // 16 x 16 array representing red LEDs
    logic [15:0][15:0]GrnPixels; // 16 x 16 array representing green LEDs
	 logic [15:0][15:0]RedPixelsTemp;
    logic [15:0][15:0]GrnPixelsTemp;
	 logic RST;                   // reset - toggle this on startup
	 
	 assign RST = SW[9];
	 
	 logic eating, game_over;
	 logic [7:0] snake_len;
	 logic [1:0] dir;
	 
	 direction d (.dir, .left(KEY[3]), .up(KEY[1]), .right(KEY[0]), .down(KEY[2]), .clk(CLOCK_50), .reset(RST));
	 
	 snakes_and_apples snake (.GrnPixels(GrnPixelsTemp), .RedPixels(RedPixelsTemp), .snake_len, .eating, .SW, .dir, .clk(CLOCK_50), .reset(RST), .game_over);
	 
	 triple_seg7 hex_display (.HEX0, .HEX1, .HEX2, .number(snake_len));
	 	 
	 logic [7:0] random;
	 
	 lfsr_8 rand_gen (.out(random), .clk(CLOCK_50), .reset(RST));
	 
	 apple_generator gen (.RedPixels(RedPixelsTemp), .GrnPixels(GrnPixelsTemp), .eating, .random(random), .clk(CLOCK_50), .reset(RST));
	 
	 always_comb begin
		if (game_over) begin
			RedPixels = ~256'b0;
			GrnPixels = ~256'b0;
		end else begin
			RedPixels = RedPixelsTemp;
			GrnPixels = GrnPixelsTemp;
		end
	 end
	 
endmodule  // lab8