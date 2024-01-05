module tug_of_war #(
	parameter which_clock = 15
	)
	(
		output logic [9:0] LEDR
		,output logic [6:0] HEX0, HEX3
		,input logic [9:0] SW
		,input logic [3:0] KEY
		,input logic CLOCK_50
	);
	
	logic r_out0, r_out1;
	logic reset_out0, reset_out1;
	
	logic [31:0] clk;
	clock_divider div(.clock(CLOCK_50), .divided_clocks(clk));	
	
	dff_3 d0(.r_in(~KEY[0]), .reset_in(SW[9]), .r_out(r_out0), .reset_out(reset_out0), .clk(clk[which_clock])); 
	dff_3 d1(.r_in(r_out0), .reset_in(reset_out0), .r_out(r_out1), .reset_out(reset_out1), .clk(clk[which_clock]));
	
	logic right;

	user_input right_press (.out(right), .in(r_out1), .reset(reset_out1), .clk(clk[which_clock]));
			
	logic [8:0] lfsr;
	lfsr_9 l9(.out(lfsr), .clk(clk[which_clock]), .reset(reset_out1));
	
	// If sum[9] = 1, sum >= 512
	logic [9:0] sum;
	adder10 add(.sum, .a({1'b0, lfsr}), .b({1'b0, SW[8:0]}));
	
	logic [1:0] winner;
	player_scores scores(.HEX0, .HEX3, .winner, .clk(clk[which_clock]), .reset(reset_out1));
	
	logic reset_playfield;
	
	assign reset_playfield = winner[0] | winner[1] | reset_out1;
	
	normal_light l4(.light_on(LEDR[8]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(1'b0), .NR(LEDR[7]));
	normal_light l3(.light_on(LEDR[7]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[8]), .NR(LEDR[6]));
	normal_light l2(.light_on(LEDR[6]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[7]), .NR(LEDR[5]));
	normal_light l1(.light_on(LEDR[5]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[6]), .NR(LEDR[4]));

	center_light c0(.light_on(LEDR[4]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[5]), .NR(LEDR[3]));

	normal_light r1(.light_on(LEDR[3]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[4]), .NR(LEDR[2]));
	normal_light r2(.light_on(LEDR[2]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[3]), .NR(LEDR[1]));
	normal_light r3(.light_on(LEDR[1]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[2]), .NR(LEDR[0]));
	normal_light r4(.light_on(LEDR[0]), .clk(clk[which_clock]), .reset(reset_playfield), .L(sum[9]), .R(right), .NL(LEDR[1]), .NR(1'b0));
	
	victory v0(.winner, .clk(clk[which_clock]), .reset(reset_out1), .L(sum[9]), .R(right), .L4(LEDR[8]), .R4(LEDR[0]));
	
endmodule  // tug_of_war