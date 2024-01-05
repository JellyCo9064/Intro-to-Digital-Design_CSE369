module tug_of_war (
		output logic [9:0] LEDR
		,output logic [6:0] HEX0
		,input logic [9:0] SW
		,input logic [3:0] KEY
		,input logic CLOCK_50
	);
	
	logic l_out0, l_out1;
	logic r_out0, r_out1;
	logic reset_out0, reset_out1;
	
	dff_3 d0(.l_in(KEY[3]), .r_in(KEY[0]), .reset_in(SW[9]), .l_out(l_out0), .r_out(r_out0), .reset_out(reset_out0), .clk(CLOCK_50)); 
	dff_3 d1(.l_in(l_out0), .r_in(r_out0), .reset_in(reset_out0), .l_out(l_out1), .r_out(r_out1), .reset_out(reset_out1), .clk(CLOCK_50));
	
	logic left, right;
	
	user_input left_press  (.out(left),  .in(l_out1), .reset(reset_out1), .clk(CLOCK_50));
	user_input right_press (.out(right), .in(r_out1), .reset(reset_out1), .clk(CLOCK_50));
	
	logic game_over;
	
	normal_light l4(.light_on(LEDR[8]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(1'b0), .NR(LEDR[7]), .game_over);
	normal_light l3(.light_on(LEDR[7]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[8]), .NR(LEDR[6]), .game_over);
	normal_light l2(.light_on(LEDR[6]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[7]), .NR(LEDR[5]), .game_over);
	normal_light l1(.light_on(LEDR[5]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[6]), .NR(LEDR[4]), .game_over);

	center_light c0(.light_on(LEDR[4]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[5]), .NR(LEDR[3]), .game_over);

	normal_light r1(.light_on(LEDR[3]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[4]), .NR(LEDR[2]), .game_over);
	normal_light r2(.light_on(LEDR[2]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[3]), .NR(LEDR[1]), .game_over);
	normal_light r3(.light_on(LEDR[1]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[2]), .NR(LEDR[0]), .game_over);
	normal_light r4(.light_on(LEDR[0]), .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .NL(LEDR[1]), .NR(1'b0), .game_over);
	
	victory v0(.HEX0, .game_over, .clk(CLOCK_50), .reset(reset_out1), .L(left), .R(right), .L4(LEDR[8]), .R4(LEDR[0]));
	
endmodule  // tug_of_war