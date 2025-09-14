`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// 
// Create Date:    
// Design Name:    ROUTER
// Module Name:     
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module SSA(in, out);

input [1:0] in;
output [3:0] out;

reg [3:0] out;

always @(in)
case (in)
	2'd0 : out = 4'd1;
	2'd1 : out = 4'd2;
	2'd2 : out = 4'd4;
	2'd3 : out = 4'd8;
	default : out = 4'd0;

endcase

endmodule



