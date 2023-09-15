module decoder4to2
(
input	[1:0] in,
output	[3:0] out
);

always@(*)
	case(in)
	2'b00 : out = 4'b0001;
	2'b01 : out = 4'b0010;
	2'b10 : out = 4'b0100;
	2'bxx : out = 4'b0000;
	endcase
endmodule