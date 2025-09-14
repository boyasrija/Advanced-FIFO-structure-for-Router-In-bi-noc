`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		
// Engineer: 		
// 
// Create Date:   
// Design Name:    
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
module NOC( CNFG, RES, LOAD, CS, port_A, port_B, port_C,
			port_D, In_add, out_add, en_A, en_B, en_C, en_D,port_Ao, port_Bo, port_Co, port_Do);

input	CNFG, en_A, en_B, en_C, en_D;
input	RES;
input	LOAD;
input	CS;
input	[7:0] port_A, port_B, port_C, port_D;
input	[1:0] In_add;
input	[1:0] out_add;
output [7:0] port_Ao, port_Bo, port_Co, port_Do;

wire	[3:0] dec_add;
wire	[2:0] control_A, control_B, control_C, control_D;
wire	conf_en, load_en, reset, reset_inv;
wire	[1:0] In_add_reg;

assign conf_en = (CNFG & CS);
assign load_en = (LOAD & CS);
assign reset = RES & CS;

SSA	b2v_inst(.in(out_add),.out(dec_add));

MPiSLIP_Arbiter	b2v_inst0(.conf_en(conf_en),.load_en(load_en),.out_sel(dec_add[0]),.in_add(In_add),.inadd(control_A),.tristate(en_A),.reset(reset));

PVSA	b2v_inst1(.conf_en(conf_en),.load_en(load_en),.out_sel(dec_add[1]),.in_add(In_add),.inadd(control_B),.tristate(en_B),.reset(reset));

LBRC  	b2v_inst2(.conf_en(conf_en),.load_en(load_en),.out_sel(dec_add[2]),.in_add(In_add),.inadd(control_C),.tristate(en_C),.reset(reset));

in_out_unit	b2v_inst3(.conf_en(conf_en),.load_en(load_en),.out_sel(dec_add[3]),.in_add(In_add),.inadd(control_D),.tristate(en_D),.reset(reset));

crossbar_switch b2v_matrix2(port_A, port_B, port_C, port_D, control_A[2:1], control_B[2:1], control_C[2:1], control_D[2:1], 
									control_A[0], control_B[0], control_C[0], control_D[0],port_Ao, port_Bo, port_Co, port_Do);

endmodule
