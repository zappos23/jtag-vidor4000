// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
// CREATED		"Sat Mar 13 10:45:04 2021"

module JTAG_Interface(
	iCLK,
	iREAD_0,
	iREAD_1,
	iREAD_2,
	iREAD_3,
	iREAD_4,
	iREAD_5,
	iREAD_6,
	iREAD_7,
	iREAD_8,
	iREAD_9,
	iREAD_A,
	iREAD_B,
	iREAD_C,
	iREAD_D,
	iREAD_E,
	oWRITE_0,
	oWRITE_1,
	oWRITE_2,
	oWRITE_3,
	oWRITE_4,
	oWRITE_5,
	oWRITE_6,
	oWRITE_7,
	oWRITE_8,
	oWRITE_9,
	oWRITE_A,
	oWRITE_B,
	oWRITE_C,
	oWRITE_D,
	oWRITE_E
);


input wire	iCLK;
input wire	[31:0] iREAD_0;
input wire	[31:0] iREAD_1;
input wire	[31:0] iREAD_2;
input wire	[31:0] iREAD_3;
input wire	[31:0] iREAD_4;
input wire	[31:0] iREAD_5;
input wire	[31:0] iREAD_6;
input wire	[31:0] iREAD_7;
input wire	[31:0] iREAD_8;
input wire	[31:0] iREAD_9;
input wire	[31:0] iREAD_A;
input wire	[31:0] iREAD_B;
input wire	[31:0] iREAD_C;
input wire	[31:0] iREAD_D;
input wire	[31:0] iREAD_E;
output wire	[31:0] oWRITE_0;
output wire	[31:0] oWRITE_1;
output wire	[31:0] oWRITE_2;
output wire	[31:0] oWRITE_3;
output wire	[31:0] oWRITE_4;
output wire	[31:0] oWRITE_5;
output wire	[31:0] oWRITE_6;
output wire	[31:0] oWRITE_7;
output wire	[31:0] oWRITE_8;
output wire	[31:0] oWRITE_9;
output wire	[31:0] oWRITE_A;
output wire	[31:0] oWRITE_B;
output wire	[31:0] oWRITE_C;
output wire	[31:0] oWRITE_D;
output wire	[31:0] oWRITE_E;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	[8:0] SYNTHESIZED_WIRE_12;





JTAG	b2v_inst(
	.tdo(SYNTHESIZED_WIRE_0),
	
	.tdi(SYNTHESIZED_WIRE_2),
	.virtual_state_cdr(SYNTHESIZED_WIRE_4),
	.virtual_state_sdr(SYNTHESIZED_WIRE_3),
	
	
	
	.virtual_state_udr(SYNTHESIZED_WIRE_5),
	
	
	.tck(SYNTHESIZED_WIRE_1),
	.ir_in(SYNTHESIZED_WIRE_12));


JTAG_Synchronizer	b2v_inst24(
	.iMAIN_CLK(iCLK),
	.iTCK(SYNTHESIZED_WIRE_1),
	.iTDI(SYNTHESIZED_WIRE_2),
	.iSTATE_SDR(SYNTHESIZED_WIRE_3),
	.iSTATE_CDR(SYNTHESIZED_WIRE_4),
	.iSTATE_UDR(SYNTHESIZED_WIRE_5),
	.iTDO(SYNTHESIZED_WIRE_6),
	.oTCK(SYNTHESIZED_WIRE_7),
	.oTDI(SYNTHESIZED_WIRE_8),
	.oSTATE_SDR(SYNTHESIZED_WIRE_9),
	.oSTATE_CDR(SYNTHESIZED_WIRE_10),
	.oSTATE_UDR(SYNTHESIZED_WIRE_11),
	.oTDO(SYNTHESIZED_WIRE_0));


JTAG_Memory	b2v_inst26(
	.iTCK(SYNTHESIZED_WIRE_7),
	.iTDI(SYNTHESIZED_WIRE_8),
	.iSTATE_SDR(SYNTHESIZED_WIRE_9),
	.iSTATE_CDR(SYNTHESIZED_WIRE_10),
	.iSTATE_UDR(SYNTHESIZED_WIRE_11),
	.iADDRESS(SYNTHESIZED_WIRE_12),
	.iREAD_0(iREAD_0),
	.iREAD_1(iREAD_1),
	.iREAD_2(iREAD_2),
	.iREAD_3(iREAD_3),
	.iREAD_4(iREAD_4),
	.iREAD_5(iREAD_5),
	.iREAD_6(iREAD_6),
	.iREAD_7(iREAD_7),
	.iREAD_8(iREAD_8),
	.iREAD_9(iREAD_9),
	.iREAD_A(iREAD_A),
	.iREAD_B(iREAD_B),
	.iREAD_C(iREAD_C),
	.iREAD_D(iREAD_D),
	.iREAD_E(iREAD_E),
	.oTDO(SYNTHESIZED_WIRE_6),
	.oWRITE_0(oWRITE_0),
	.oWRITE_1(oWRITE_1),
	.oWRITE_2(oWRITE_2),
	.oWRITE_3(oWRITE_3),
	.oWRITE_4(oWRITE_4),
	.oWRITE_5(oWRITE_5),
	.oWRITE_6(oWRITE_6),
	.oWRITE_7(oWRITE_7),
	.oWRITE_8(oWRITE_8),
	.oWRITE_9(oWRITE_9),
	.oWRITE_A(oWRITE_A),
	.oWRITE_B(oWRITE_B),
	.oWRITE_C(oWRITE_C),
	.oWRITE_D(oWRITE_D),
	.oWRITE_E(oWRITE_E));


endmodule
