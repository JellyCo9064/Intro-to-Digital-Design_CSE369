module dff_3_testbench();
	
	logic r_in, reset_in, r_out, reset_out, clk;
	
	dff_3 dut (.r_in, .reset_in, .r_out, .reset_out, .clk);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		
		integer i;
		for (i = 0; i < 4; i++) begin
			@(posedge clk); {r_in, reset_in} = i;
		end
		
		$stop;
	end
	
endmodule  // dff_3_testbench