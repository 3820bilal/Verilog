module tb_decrementer;
reg 			clk;
reg 			reset;
reg 			decrement;
reg 			load;
reg		[3:0]	initial_value;
wire 	[3:0]	count;

decrementer decrementer_inst(

.clk				(clk),
.reset				(reset),
.initial_value		(initial_value),
.decrement			(decrement),
.load				(load),
.count				(count)
      
);


initial
	begin
	clk = 0;
	forever
	#5 clk = ~clk;
	end
	
		initial
		begin
		$dumpfile("waveform.vcd");
		$dumpvars(1,tb_decrementer);
		
				decrement = 0;
				reset = 0;
				load = 0;
				
			@(posedge clk)
				reset <= #1 1;
			@(posedge clk)
				reset <= #1 0;
			
			@(posedge clk);
				decrement = 0;
				load = 1;
			#1 initial_value = 2'd3;
			
			repeat(3) @ (posedge clk);
			
				decrement = 1;
			@(posedge clk);
				decrement = 0;
				
				repeat(20) @ (posedge clk);
				$finish;
		
		end
	endmodule