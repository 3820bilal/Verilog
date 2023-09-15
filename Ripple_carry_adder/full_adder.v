`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 10:53:30 AM
// Design Name: 
// Module Name: full_adder
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



module full_adder
(
	input 		x,
	input 		y,
	input 		z,
	output  	sum,
	output  	carry
);

wire sm;
wire cr;
wire crm;

half_adder inst1
(
.a		(x),
.b		(y),
.s		(sm),
.c		(cr)
);



half_adder inst2
(
.a		(sm),
.b		(z),
.s		(sum),
.c		(crm)
);

assign carry = cr | crm;


endmodule

