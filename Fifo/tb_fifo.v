module tb_fifo;
reg 		clk;
reg 		reset;
reg 		push;
reg 		pop;
reg [31:0] 	data_in;
wire [31:0]	data_out;
wire  		fifo_empty;
wire 		fifo_full;

fifo fifo_inst
(
.clk			(clk		),
.reset			(reset		),
.data_in		(data_in	),
.push			(push		),
.pop			(pop		),
.data_out		(data_out	),
.fifo_empty		(fifo_empty	),
.fifo_full		(fifo_full	)
);

initial
	begin
		clk	=	0;
	forever
		#5 clk = ~clk;
end

initial
begin
	reset = 0;
	pop = 0;
	push = 0;
	data_in = 0;
	
	@(posedge clk)
		reset <=  1;
	@(posedge clk)
		reset <=  0;
	repeat(5)@(posedge clk);

	@(posedge clk)
		push =   1;
		data_in = 50;
		#10 push =  0;
		
	@(posedge clk)
		push =   1;
		data_in = 70;
//	@(posedge clk);
		#10 push =  0;
		
	repeat(2)@(posedge clk);
	
	@(posedge clk)
		push =   1;
		data_in = 90;
//	@(posedge clk);
		#10 push =  0;
		
	
	@(posedge clk)
		#1 pop =  1;
//	@(posedge clk);
		#10 pop =  0;
		
		
	@(posedge clk)
		push =   1;
		data_in = 20;
//	@(posedge clk)
		#10 push =  0;
	
	
	repeat(2)@(posedge clk);
	@(posedge clk)
		pop =  1;
//	@(posedge clk)
    #10		pop =  0;
	
	
	@(posedge clk)
		pop =  1;
//	@(posedge clk)
		#10		pop =  0;
	
    $display("data_out is: %d ", data_out);
    repeat (5) @(posedge clk);
	$finish;
end
endmodule 