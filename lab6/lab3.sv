module lab3 (
    output logic [1:0] LEDR
	 ,input logic [3:0] SW
	 );
	 
	 // Connect LEDs and Switches to nordstrom circuit
	 nordstrom detector (.discounted(LEDR[0]), .stolen(LEDR[1]), .U(SW[2]), .P(SW[1]), .C(SW[0]), .M(SW[3]));
	 
endmodule  // lab3
	 
module lab3_testbench();
    logic [1:0] LEDR;
    logic [3:0] SW;
	 
    lab3 dut (.LEDR, .SW);
	 
	 // Test all 8 possible UPCs, marked/unmarked
    integer i;
    initial begin
        for(i = 0; i <16; i++) begin
            SW[3:0] = i; #10;
        end
    end
endmodule  // lab3_testbench