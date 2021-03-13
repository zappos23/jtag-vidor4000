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
// CREATED		"Sat Mar 13 10:46:38 2021"

module JTAG_Synchronizer(
	iMAIN_CLK,
	iTCK,
	iTDI,
	iSTATE_SDR,
	iTDO,
	iSTATE_CDR,
	iSTATE_UDR,
	oTDO,
	oTCK,
	oTDI,
	oSTATE_SDR,
	oSTATE_CDR,
	oSTATE_UDR
);


input wire	iMAIN_CLK;
input wire	iTCK;
input wire	iTDI;
input wire	iSTATE_SDR;
input wire	iTDO;
input wire	iSTATE_CDR;
input wire	iSTATE_UDR;
output reg	oTDO;
output wire	oTCK;
output wire	oTDI;
output wire	oSTATE_SDR;
output wire	oSTATE_CDR;
output wire	oSTATE_UDR;

wire	SYNTHESIZED_WIRE_0;





Synchronizer	b2v_inst(
	.iCLK(iMAIN_CLK),
	.iSIGNAL(iTCK),
	.oSYNCHRONIZED(SYNTHESIZED_WIRE_0));


Synchronizer	b2v_inst2(
	.iCLK(iMAIN_CLK),
	.iSIGNAL(iTDI),
	.oSYNCHRONIZED(oTDI));


Synchronizer	b2v_inst3(
	.iCLK(iMAIN_CLK),
	.iSIGNAL(iSTATE_SDR),
	.oSYNCHRONIZED(oSTATE_SDR));


always@(posedge iTCK)
begin
	begin
	oTDO <= iTDO;
	end
end


Synchronizer	b2v_inst5(
	.iCLK(iMAIN_CLK),
	.iSIGNAL(SYNTHESIZED_WIRE_0),
	.oSYNCHRONIZED(oTCK));


Synchronizer	b2v_inst6(
	.iCLK(iMAIN_CLK),
	.iSIGNAL(iSTATE_CDR),
	.oSYNCHRONIZED(oSTATE_CDR));


Synchronizer	b2v_inst7(
	.iCLK(iMAIN_CLK),
	.iSIGNAL(iSTATE_UDR),
	.oSYNCHRONIZED(oSTATE_UDR));


endmodule
