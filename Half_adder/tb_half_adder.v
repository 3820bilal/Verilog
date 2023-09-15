`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 05:36:05 AM
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder;
reg		a;
reg		b;
wire	s;
wire	c;

half_adder inst
(
.a		(a),
.b		(b),
.s		(s),
.c		(c)
);

initial
begin
#15 a = 0; b = 0;
#15 a = 0; b = 1;
#15 a = 1; b = 0;
#15 a = 1; b = 1;

#30;

#15 a = 0; b = 0;
#15 a = 0; b = 1;
#15 a = 1; b = 0;
#15 a = 1; b = 1;

end

initial $monitor("sum is %d and carry is %d",s,c);

initial #100 $finish;

endmodule
