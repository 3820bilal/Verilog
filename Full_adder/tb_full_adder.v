`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 06:16:42 AM
// Design Name: 
// Module Name: tb_full_adder
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
reg		x;
reg		y;
reg     z;
wire	sum;
wire	carry;

full_adder inst
(
.x		    (x),
.y		    (y),
.z		    (z),
.sum		(sum),
.carry      (carry)
);

initial
begin
#15 x = 0; y = 0; z = 0;
#15 x = 0; y = 1; z = 1;
#15 x = 1; y = 0; z = 1;
#15 x = 1; y = 1; z = 0;
#15 x = 1; y = 1; z = 1;



end

initial $monitor("sum is %d and carry is %d",sum,carry);

initial #100 $finish;

endmodule

