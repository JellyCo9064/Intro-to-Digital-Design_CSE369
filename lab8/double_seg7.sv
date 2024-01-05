module double_seg7 (
    output logic [6:0] HEX0, HEX1
	 ,input logic [7:0] SW
	 );
	 
	 // Connect digit 0 (SW 3-0) to HEX 0 display
	 seg7 d0 (.leds(HEX0), .bcd(SW[3:0]));
	 
	 // Connect digit 1 (SW 7-4) to HEX 1 display
	 seg7 d1 (.leds(HEX1), .bcd(SW[7:4]));
	 
endmodule  // double_seg7

module double_seg7_testbench();

    logic [6:0] HEX0, HEX1;
	logic [7:0] SW;
	 
	double_seg7 dut (.HEX0, .HEX1, .SW);
	 
	 integer d1, d0;
	 initial begin
	     for (d1 = 0; d1 < 10; d1++) begin
		    for (d0 = 0; d0 < 10; d0++) begin
				SW[7:4] = d1;
				SW[3:0] = d0;
				#10;
			end
		end
	 end
endmodule  // double_seg7_testbench