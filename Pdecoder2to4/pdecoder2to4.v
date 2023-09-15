`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2023 07:45:47 AM
// Design Name: 
// Module Name: pdecoder2to4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pdecoder2to4
(
input		[1:0]	in,
output	reg	[3:0]	out
    );
	
always@(*)
	casez(in)
		2'b00 : out = 4'b0001;
		2'b01 : out = 4'b0010;
		2'b10 : out = 4'b0100;
		2'b1? : out = 4'b1000;
	endcase
endmodule
