module tb_mux4to1;

parameter   WIDTH = 32;
parameter	width2 = 2;

reg 	[WIDTH-1:0]	data0;
reg 	[WIDTH-1:0]	data1;
reg 	[WIDTH-1:0]	data2;
reg 	[WIDTH-1:0]	data3;
reg 	[width2-1:0]	sel;
wire	[WIDTH-1:0]	data_out;


mux_4_to_1 DUT
(
.data0       (data0       ),
.data1       (data1       ),
.data2       (data2       ),
.data3       (data3       ),
.sel         (sel         ),
.data_out    (data_out    )
);

initial begin 
	
	//initialize all inputs with 0
	
	#10;
	data0       = 0;
	data1       = 0;
	data2       = 0;
	data3       = 0;
	
	
	
	#10;
	data0       = 3'd7;
	data1       = 3'd4;
	data2       = 3'd3;
	data3       = 4'd8;
	sel         = 2'd0;
	
	
	#10;
	data0       = 3'd7;
	data1       = 3'd4;
	data2       = 3'd3;
	data3       = 4'd8;
	sel         = 2'd1;
	
	
	#10;
	data0       = 3'd7;
	data1       = 3'd4;
	data2       = 3'd3;
	data3       = 4'd8;
	sel         = 2'd2;
	
	
	#10;
	data0       = 3'd7;
	data1       = 3'd4;
	data2       = 3'd3;
	data3       = 4'd8;
	sel         = 2'd3;
	
	

	#30;
	$display("data_out=%d",data_out);

	#200 $finish;
end

endmodule