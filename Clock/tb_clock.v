module tb_clock;
	reg clk,reset;
	
	wire [5:0] count_sec,count_min,count_hrs;
	
	`define p_clk @(posedge clk)
	
	clock uut(
	.clk				(clk		),
	.reset				(reset		),
	.count_sec			(count_sec	),
	.count_min			(count_min	),
	.count_hrs			(count_hrs	)
	);

	initial begin
	clk =0 ;
	forever
	#5 clk =~clk;
	end


	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(3,tb_clock);

		reset = 0;
		
		`p_clk reset <= #1 1;
		`p_clk reset <= #1 0;

		repeat (7200) `p_clk; 
		
		$display("count_sec : %0d",count_sec);
		$display("count_min : %0d",count_min);
		$display("count_hrs : %0d",count_hrs);
		repeat (10) `p_clk
		
		$finish; 
	end
endmodule