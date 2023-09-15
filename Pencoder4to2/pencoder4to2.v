`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2023 07:21:46 AM
// Design Name: 
// Module Name: pencoder4to2
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


module pencoder4to2
(
input		[3:0]	in,
output reg	[1:0]	out
);

always@(*)
	casez(in)
		4'b0001 : out = 2'b00;
		4'b001? : out = 2'b01;
		4'b01?0 : out = 2'b10;
		4'b1?00 : out = 2'b11;
	endcase

endmodule
