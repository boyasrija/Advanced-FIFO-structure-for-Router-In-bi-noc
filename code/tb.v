
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

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
module tb;

	// Inputs
	reg CNFG;
	reg RES;
	reg LOAD;
	reg CS;
	reg [7:0] port_A;
	reg [7:0] port_B;
	reg [7:0] port_C;
	reg [7:0] port_D;
	reg [1:0] In_add;
	reg [1:0] out_add;
	reg en_A;
	reg en_B;
	reg en_C;
	reg en_D;

	// Outputs
	wire [7:0] port_Ao;
	wire [7:0] port_Bo;
	wire [7:0] port_Co;
	wire [7:0] port_Do;

	// Instantiate the Unit Under Test (UUT)
	NOC uut (
		.CNFG(CNFG), 
		.RES(RES), 
		.LOAD(LOAD), 
		.CS(CS), 
		.port_A(port_A), 
		.port_B(port_B), 
		.port_C(port_C), 
		.port_D(port_D), 
		.In_add(In_add), 
		.out_add(out_add), 
		.en_A(en_A), 
		.en_B(en_B), 
		.en_C(en_C), 
		.en_D(en_D), 
		.port_Ao(port_Ao), 
		.port_Bo(port_Bo), 
		.port_Co(port_Co), 
		.port_Do(port_Do)
	);

	initial begin
		CNFG = 0;
		RES = 0;#10;
		CNFG = 0;
		RES = 1;
		LOAD = 0;
		CS = 1;
		port_A = 0;
		port_B = 0;
		port_C = 0;
		port_D = 0;
		In_add = 0;
		out_add = 0;
		en_A = 0;
		en_B = 0;
		en_C = 0;
		en_D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		CNFG = 1;
		RES = 0;
		LOAD = 1;
		CS = 1;
		port_A = 15;
		port_B = 55;
		port_C = 59;
		port_D = 35;
		In_add = 1;
		out_add = 2;
		en_A = 0;
		en_B = 0;
		en_C = 1;
		en_D = 0;
		
		#100;
        
		port_A = 15;
        port_B = 55;
        port_C = 59;
        port_D = 35;
		In_add  = 2;
		out_add = 2;
		en_A = 1;
		en_B = 1;
		en_C = 1;
		en_D = 1;
		#100;
		In_add = 2;
		out_add = 1;
			en_A = 1;
		en_B = 1;
		en_C = 1;
		en_D = 1;
		#100;
                In_add = 1;
                out_add = 3;
                    en_A = 1;
                en_B = 1;
                en_C = 1;
                en_D = 1;
		#100;
                                In_add = 0;
                                out_add = 2;
                                    en_A = 1;
                                en_B = 1;
                                en_C = 1;
                                en_D = 1;
                                #100;
                                                                In_add = 3;
                                                                out_add = 1;
                                                                    en_A = 1;
                                                                en_B = 1;
                                                                en_C = 1;
                                                                en_D = 1;
                                                                #100;
                                                                                                                                In_add = 3;
                                                                                                                                out_add = 0;
                                                                                                                                    en_A = 1;
                                                                                                                                en_B = 1;
                                                                                                                                en_C = 1;
                                                                                                                                en_D = 1;
                                                                                                                                #100;
                                                                                                                                                                                                In_add = 0;
                                                                                                                                                                                                out_add = 2;
                                                                                                                                                                                                    en_A = 1;
                                                                                                                                                                                                en_B = 1;
                                                                                                                                                                                                en_C = 1;
                                                                                                                                                                                                en_D = 1;
	end
      
endmodule

