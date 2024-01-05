module nordstrom (
    output logic discounted, stolen
	 ,input logic U, P, C, M
	 );
	 
	 // Connect each circuit to output ports
	 assign discounted = (U & C) ^ P;
	
	 assign stolen = ~(P | M) & (~C | U);
	
endmodule  // nordstrom

module nordstrom_testbench();
    logic discounted, stolen;
	 logic U, P, C, M;
	 
	 nordstrom dut (.discounted, .stolen, .U, .P, .C, .M);
	 
	 // Run through all 16 possible inputs
	 integer i;
	 initial begin
	     for(i = 0; i <16; i++) begin
		      {U, P, C, M} = i; #10;
		  end
	 end
endmodule  // nordstrom_testbench
