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

module MPiSLIP_Arbiter(conf_en, load_en, in_add, inadd, out_sel, tristate, reset);

input [1:0] in_add;
input conf_en, load_en, out_sel, tristate, reset;
output [2:0] inadd;

reg [2:0] load_inadd_reg;
reg [2:0] inadd;

wire load_enable;
wire tristate_enable;

assign load_enable = load_en & out_sel;
assign tristate_enable = tristate & out_sel;


always @(*)
begin
	if (reset)
		load_inadd_reg[2:0] = 3'b0;
	else if(load_enable)
	begin
		load_inadd_reg[2:1] = in_add;
		load_inadd_reg[0] = out_sel;
	end
end

always @(*)
begin
	if (reset)
		inadd = 3'b0;
	else if(conf_en)
		inadd = load_inadd_reg;
end

endmodule


//////////////////////////////////////////////////////////////////////////////////

module PVSA(conf_en, load_en, in_add, inadd, out_sel, tristate, reset);

input [1:0] in_add;
input conf_en, load_en, out_sel, tristate, reset;
output [2:0] inadd;

reg [2:0] load_inadd_reg;
reg [2:0] inadd;

wire load_enable;
wire tristate_enable;

assign load_enable = load_en & out_sel;
assign tristate_enable = tristate & out_sel;


always @(*)
begin
	if (reset)
		load_inadd_reg[2:0] = 3'b0;
	else if(load_enable)
	begin
		load_inadd_reg[2:1] = in_add;
		load_inadd_reg[0] = out_sel;
	end
end

always @(*)
begin
	if (reset)
		inadd = 3'b0;
	else if(conf_en)
		inadd = load_inadd_reg;
end

endmodule


//////////////////////////////////////////////////////////////////////////////////

module LBRC(conf_en, load_en, in_add, inadd, out_sel, tristate, reset);

input [1:0] in_add;
input conf_en, load_en, out_sel, tristate, reset;
output [2:0] inadd;

reg [2:0] load_inadd_reg;
reg [2:0] inadd;

wire load_enable;
wire tristate_enable;

assign load_enable = load_en & out_sel;
assign tristate_enable = tristate & out_sel;


always @(*)
begin
	if (reset)
		load_inadd_reg[2:0] = 3'b0;
	else if(load_enable)
	begin
		load_inadd_reg[2:1] = in_add;
		load_inadd_reg[0] = out_sel;
	end
end

always @(*)
begin
	if (reset)
		inadd = 3'b0;
	else if(conf_en)
		inadd = load_inadd_reg;
end

endmodule
//////////////////////////////////////////////////////////////////////////////////

module in_out_unit(conf_en, load_en, in_add, inadd, out_sel, tristate, reset);

input [1:0] in_add;
input conf_en, load_en, out_sel, tristate, reset;
output [2:0] inadd;

reg [2:0] load_inadd_reg;
reg [2:0] inadd;

wire load_enable;
wire tristate_enable;

assign load_enable = load_en & out_sel;
assign tristate_enable = tristate & out_sel;


always @(*)
begin
	if (reset)
		load_inadd_reg[2:0] = 3'b0;
	else if(load_enable)
	begin
		load_inadd_reg[2:1] = in_add;
		load_inadd_reg[0] = out_sel;
	end
end

always @(*)
begin
	if (reset)
		inadd = 3'b0;
	else if(conf_en)
		inadd = load_inadd_reg;
end

endmodule
