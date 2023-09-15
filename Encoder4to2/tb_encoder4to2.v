`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2023 10:29:57 PM
// Design Name: 
// Module Name: tb_encoder4to2
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


module tb_encoder4to2;
reg 	[3:0]	      in;
wire	[1:0]	      out;


encoder4to2 myinst
(
.in          (in          ),
.out         (out         )
);

initial begin 
	
	#5;
	in = 4'b0001;
	
	#5;
	in = 4'b0010;
	
	#5;
	in = 4'b0011;
	
	#5;
	in = 4'b0100;
	#10;
	$finish;
end

endmodule
