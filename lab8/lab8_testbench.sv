module lab8_testbench ();

	logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	logic [9:0]  LEDR;
	logic [3:0]  KEY;
	logic [9:0]  SW;
	logic [35:0] GPIO_1;
	logic clk;
	
	lab8_test dut (.HEX0, .HEX1, .HEX2, .HEX3, .HEX4, .HEX5, .LEDR, .KEY, .SW, .GPIO_1, .CLOCK_50(clk));
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD / 2) clk <= ~clk;
	end
	
	initial begin
		integer i;
		
		@(posedge clk) SW[9] <= 1;
		@(posedge clk) SW[9] <= 0;
		
		for (i = 0; i < 10; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); KEY <= 4'b1000;
		
		for (i = 0; i < 6; i++) begin
			@(posedge clk);
		end
		
		KEY <= 4'b0010;
		
		for (i = 0; i < 16; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk); KEY <= 4'b1000;
		@(posedge clk); KEY <= 4'b0100;
		@(posedge clk); KEY <= 4'b0001;
		
		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end
		
		@(posedge clk) SW[9] <= 1;
		@(posedge clk) SW[9] <= 0;
		
		for (i = 0; i < 5; i++) begin
			@(posedge clk);
		end
		
		$stop;
	end


endmodule  // lab8_testbench