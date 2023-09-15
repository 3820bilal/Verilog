module tb_mux2to1;
parameter   WIDTH = 32;
reg 			     sel;
reg 	[WIDTH-1:0]	in0;
reg 	[WIDTH-1:0]	in1;
wire	[WIDTH-1:0]	out;


mux_2_to_1 DUT
(
.sel         (sel         ),
.in0         (in0         ),
.in1         (in1         ),
.out         (out         )
);

initial begin 
	
	#10;
	in0         = 0;
	in1         = 0;
	
	#5;
	sel = 0;
	in0 = 2'd2;
	in1 = 2'd1;
	
	#5;
	sel = 1;
	in0 = 2'd1;
	in1 = 3'd4;
	
	#5;
	sel = 0;
	in0 = 3'd7;
	in1 = 2'd3;
	
	#5;
	sel = 1;
	in0 = 2'd0;
	in1 = 3'd6;
	
	

	#30;
	$display("out=%d",out);

	#200 $finish;
end

endmodule