module decrementer(

input clk,
input reset, 
input decrement,
input load,
input [3:0] initial_value,
output reg [3:0] count
);

reg enable;
reg [3:0] mux_out;

always @ (*)
enable = decrement | load ;

always @ (*)

	begin
	case(decrement)
	2'b0 : mux_out = initial_value;
	2'b1 : mux_out = count-1;
	endcase
	end


always @ (posedge clk)	
	begin
	if(reset)
	count <=  0;
	else if (enable)
	count <=  mux_out;
	end
	
endmodule