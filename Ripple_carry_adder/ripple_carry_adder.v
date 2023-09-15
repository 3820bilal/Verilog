`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 10:39:11 AM
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder
(
input          a0,
input          b0,
input          a1,
input          b1,
input          carry0,
output         carry2,
output         sum0,
output         sum1
);

wire carry1;

full_adder inst
(
.x                   (carry0),
.y                   (a0),
.z                   (b0),
.sum                 (sum0),
.carry               (carry1)
);



full_adder inst1
(
.x                   (carry1),
.y                   (a1),
.z                   (b1),
.sum                 (sum1),
.carry               (carry2)
);
endmodule
