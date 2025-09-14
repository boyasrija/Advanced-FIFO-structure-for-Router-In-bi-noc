`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

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


module crossbar_switch (port_A, port_B, port_C, port_D, sel_A, sel_B, sel_C, sel_D, en_A, en_B, en_C, en_D,port_Ao, port_Bo, port_Co, port_Do);

input [7:0] port_A, port_B, port_C, port_D;
input [1:0] sel_A, sel_B, sel_C, sel_D;
input en_A, en_B, en_C, en_D;
output [7:0] port_Ao, port_Bo, port_Co, port_Do;



switch_vc output_0 (.in0(port_A), .in1(port_B), .in2(port_C), .in3(port_D), .sel(sel_A), .oe(en_A), .out(port_Ao));

switch_vc output_1 (.in0(port_A), .in1(port_B), .in2(port_C), .in3(port_D), .sel(sel_B), .oe(en_B), .out(port_Bo));

switch_vc output_2 (.in0(port_A), .in1(port_B), .in2(port_C), .in3(port_D), .sel(sel_C), .oe(en_C), .out(port_Co));

switch_vc output_3 (.in0(port_A), .in1(port_B), .in2(port_C), .in3(port_D), .sel(sel_D), .oe(en_D), .out(port_Do));

endmodule



