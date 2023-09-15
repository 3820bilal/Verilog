module demux1to2
#(
	parameter WIDTH		= 4
	
)
(
	input		[WIDTH-1:0]	data_in,
	input					sel,
	output reg	[WIDTH-1:0]	data_out0,
	output reg	[WIDTH-1:0]	data_out1
);

always@(*)
	case(sel)
		1'b0: begin
			data_out0 = data_in;
			data_out1 = 0;
		end
		1'b1: begin
			data_out0 = 0;
			data_out1 = data_in;
		end
		default: begin
			data_out0 = 0;
			data_out1 = 0;
		end
	endcase
endmodule