module dff_3_testbench();
	
	logic l_in, r_in, reset_in, l_out, r_out, reset_out, clk;
	
	dff_3 dut (.l_in, .r_in, .reset_in, .l_out, .r_out, .reset_out, .clk);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		
		integer i;
		for (i = 0; i < 8; i++) begin
			@(posedge clk); {l_in, r_in, reset_in} = i;
		end
		
		$stop;
	end
	
endmodule  // dff_3_testbench