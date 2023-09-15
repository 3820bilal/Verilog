module tb_demux1to2;
parameter WIDTH		= 4;
reg 	[WIDTH-1:0]	data_in;
reg 			     sel;
wire	[WIDTH-1:0]	data_out1;
wire	[WIDTH-1:0]	data_out0;


demux1to2 DUT
(
.data_in     (data_in     ),
.sel         (sel         ),
.data_out0   (data_out0   ),
.data_out1   (data_out1   )
);

initial begin 
    
    #10;
    data_in = 0;
    
    #10;
	data_in     = 3'd1;
	sel         = 0;
	
	#10;
	data_in     = 3'd1;
	sel         = 1;
	
	

	#30;
	$display("data_out0=%d,data_out1=%d,",data_out0,data_out1);

	#200 $finish;
end
endmodule