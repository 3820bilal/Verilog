`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2023 07:53:05 AM
// Design Name: 
// Module Name: tb_pdecoder2to4
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


module tb_decoder2to4;
reg 	[1:0]	      in;
wire	[3:0]	      out;


decoder4to2 myinst
(
.in          (in          ),
.out         (out         )
);

initial begin 

    #5;
	in          = 2'b00;
	#5;
	in          = 2'b01;
	#5;
	in          = 2'b10;
	#5;
	in          = 2'b11;
	

	#5;
	$finish;
end


endmodule
