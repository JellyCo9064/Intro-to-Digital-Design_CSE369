module lab8 (
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
	 
	 
	 /* Set up system base clock to 1526 Hz (50 MHz / 2**(14+1))
	    ===========================================================*/
	 logic [31:0] clk;
	 logic SYSTEM_CLOCK;
	 
	 clock_divider divider (.clock(CLOCK_50), .divided_clocks(clk));
	 
	 assign SYSTEM_CLOCK = clk[14]; // 1526 Hz clock signal	 
	 
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
	 
	 /* Standard LED Driver instantiation - set once and 'forget it'. 
	    See LEDDriver.sv for more info. Do not modify unless you know what you are doing! */
	 LEDDriver Driver (.CLK(SYSTEM_CLOCK), .RST, .EnableCount(1'b1), .RedPixels, .GrnPixels, .GPIO_1);
	 
	 logic eating, game_over;
	 logic [7:0] snake_len;
	 logic [1:0] dir;
	 
	 direction d (.dir, .left(KEY[3]), .up(KEY[2]), .right(KEY[0]), .down(KEY[1]), .clk(clk[0]), .reset(RST));
	 
	 logic slow_edge;
	 edge_detector det(.clk(clk[0]), .reset(RST), .i(clk[23]), .o(slow_edge));
	 
	 snakes_and_apples snake (.GrnPixels(GrnPixelsTemp), .RedPixels(RedPixelsTemp), .snake_len, .eating, .SW, .dir, .clk(clk[0]), .slow_edge(slow_edge), .reset(RST), .game_over);
	 
	 triple_seg7 hex_display (.HEX0, .HEX1, .HEX2, .number(snake_len));
	 	 
	 logic [7:0] random;
	 
	 lfsr_8 rand_gen (.out(random), .clk(clk[0]), .reset(RST));
	 
	 apple_generator gen (.RedPixels(RedPixelsTemp), .GrnPixels(GrnPixelsTemp), .eating, .random(random), .clk(clk[0]), .reset(RST));
	 
	 always_comb begin
		if (game_over) begin	
			RedPixels[0] =  16'b1000000000000000;
			RedPixels[1] =  16'b1000001000000000;
			RedPixels[2] =  16'b1000011100000000;
			RedPixels[3] =  16'b1110001000000000;
			RedPixels[4] =  16'b0000000000000000;
			RedPixels[5] =  16'b1000000000010000;
			RedPixels[6] =  16'b1000000000010010;
			RedPixels[7] =  16'b1110111001110111;
			RedPixels[8] =  16'b1010101001010010;
			RedPixels[9] =  16'b1110111101110000;
			RedPixels[10] = 16'b0000000000000000;
			RedPixels[11] = 16'b1110000001010000;
			RedPixels[12] = 16'b1010000011100000;
			RedPixels[13] = 16'b1110111001010111;
			RedPixels[14] = 16'b1100101001010101;
			RedPixels[15] = 16'b1010111101010111;
			
			GrnPixels[0] =  16'b1000000000000000;
			GrnPixels[1] =  16'b1000001000000000;
			GrnPixels[2] =  16'b1000011100000000;
			GrnPixels[3] =  16'b1110001000000000;
			GrnPixels[4] =  16'b0000000000000000;
			GrnPixels[5] =  16'b1000000000010000;
			GrnPixels[6] =  16'b1000000000010010;
			GrnPixels[7] =  16'b1110111001110111;
			GrnPixels[8] =  16'b1010101001010010;
			GrnPixels[9] =  16'b1110111101110000;
			GrnPixels[10] = 16'b0000000000000000;
			GrnPixels[11] = 16'b1110000001010000;
			GrnPixels[12] = 16'b1010000011100000;
			GrnPixels[13] = 16'b1110111001010111;
			GrnPixels[14] = 16'b1100101001010101;
			GrnPixels[15] = 16'b1010111101010111;
		end else begin
			RedPixels = RedPixelsTemp;
			GrnPixels = GrnPixelsTemp;
		end
	 end
	 
endmodule  // lab8

module edge_detector(
	input logic clk
   ,input logic reset
   ,input logic i
   ,output logic o
   );

  logic dff_r;
  always_ff @(posedge clk) begin
    if (reset) begin
      dff_r <= '0;
    end else begin
      dff_r <= i;
    end
  end
  
  assign o = ~dff_r & i;
  
endmodule  // edge_detector