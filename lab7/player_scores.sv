module player_scores(
	output logic [6:0] HEX0, HEX3
	,input logic [1:0] winner
	,input logic clk, reset
	);
	
	logic [2:0] p1_score, p2_score;
	
	counter p1(.count(p1_score), .win(winner[0]), .clk, .reset);
	counter p2(.count(p2_score), .win(winner[1]), .clk, .reset);
	
	double_seg7 scores(.HEX0(HEX0), .HEX1(HEX3), .SW({1'b0, p2_score, 1'b0, p1_score}));
	
endmodule  //player_scores