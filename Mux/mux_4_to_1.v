module mux_4_to_1
#(
	parameter   WIDTH = 32,
	parameter	width2 = 2
	
)

(
input      [WIDTH-1:0]		data0,
input      [WIDTH-1:0]		data1,
input      [WIDTH-1:0]		data2,
input      [WIDTH-1:0]		data3,
input      [width2-1:0]		sel,
output reg [WIDTH-1:0]		data_out
);


always@*
	begin
		case(sel)
			2'b00 : data_out = data0;
			2'b01 : data_out = data1;
			2'b10 : data_out = data2;
			2'b11 : data_out = data3;
		endcase
	end	
endmodule