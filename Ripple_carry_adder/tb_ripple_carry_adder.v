`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 11:20:16 AM
// Design Name: 
// Module Name: tb_ripple_carry_adder
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


module tb_ripple_carry_adder;
reg		a0;
reg		b0;
reg		a1;
reg		b1;
reg		carry0;
wire	carry2;
wire	sum0;
wire	sum1;


ripple_carry_adder inst
(
.a0         (a0			),
.b0         (b0         ),
.a1         (a1         ),
.b1         (b1         ),
.carry0     (carry0     ),
.carry2     (carry2     ),
.sum0       (sum0       ),
.sum1		(sum1       )
);

initial
begin
	#10		a0 = 0; b0 = 0; a1 = 0; b1 =0; carry0 = 0;
	#10		a0 = 0; b0 = 0; a1 = 0; b1 =1; carry0 = 0;
	#10		a0 = 0; b0 = 0; a1 = 1; b1 =0; carry0 = 0;
	#10		a0 = 0; b0 = 0; a1 = 1; b1 =1; carry0 = 0;
	#10		a0 = 0; b0 = 1; a1 = 0; b1 =0; carry0 = 0;
	#10		a0 = 0; b0 = 1; a1 = 0; b1 =1; carry0 = 0;
end

initial $monitor("%d %d %d",sum0, sum1, carry2);


initial	#100 $finish;




endmodule