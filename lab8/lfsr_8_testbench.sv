module lfsr_8_testbench();

	logic [7:0] out;
	logic clk, reset;
	
	lfsr_8 dut (.out, .clk, .reset);
	
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
			if (out == 8'b11001111) begin
				for (i = 0; i < 30; i++) begin
					@(posedge clk);
				end
				$stop;
			end
		end
		
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		
		$stop;
	end

endmodule  //lfsr_9_testbench