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
//


module switch_vc (in0, in1, in2, in3, sel, oe, out);

input [7:0] in0, in1, in2, in3;
input [1:0] sel;
input oe;
output [7:0] out;

reg [7:0] mux_out;

always @(in0 or in1 or in2 or in3 or sel)
begin
	case (sel)
	2'b00: mux_out = in0;
	2'b01: mux_out = in1;
	2'b10: mux_out = in2;
	2'b11: mux_out = in3;
	default: mux_out = 8'bxxxxxxxx;
	endcase
end
										
assign out = oe ? mux_out : 8'bzzzzzzzz;
	
endmodule
