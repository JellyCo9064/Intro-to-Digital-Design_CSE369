module lfsr_9_testbench();

	logic [8:0] out;
	logic clk, reset;
	
	lfsr_9 dut (.out, .clk, .reset);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;
		@(posedge clk);
		for (i = 2; i < 1000; i++) begin
			@(posedge clk);
			if (out == 9'b0) begin
				$stop;
			end
		end
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		$stop;
	end

endmodule  //lfsr_9_testbench