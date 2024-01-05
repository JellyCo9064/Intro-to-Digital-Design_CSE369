module lab3 (
    output logic LEDR[1:0]
	 ,input logic SW[3:0]
	 );
	 
	 // Connect LEDs and Switches to nordstrom circuit
	 nordstrom detector (.discounted(LEDR[0]), .stolen(LEDR[1]), .U(SW[0]), .P(SW[1]), .C(SW[2]), .M(SW[3]));
	 
endmodule  // lab3
	 
module lab3_testbench();
    logic LEDR[1:0];
    logic SW[3:0];
	 
    lab3 dut (.LEDR, .SW);
	 
	 // Test all 8 possible UPCs, marked/unmarked
    integer i;
    initial begin
        for(i = 0; i <16; i++) begin
            {SW[0], SW[1], SW[2], SW[3]} = i; #10;
        end
    end
endmodule  // lab3_testbench