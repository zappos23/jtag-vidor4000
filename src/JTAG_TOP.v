
module JTAG_TOP (
	input iCLK_MAIN
);


JTAG_Interface JTAG_Interface_inst (
	.iCLK(iCLK_MAIN),
	.iREAD_0(),
	.iREAD_1(),
	.iREAD_2(),
	.iREAD_3(),
	.iREAD_4(),
	.iREAD_5(),
	.iREAD_6(),
	.iREAD_7(),
	.iREAD_8(),
	.iREAD_9(),
	.iREAD_A(),
	.iREAD_B(),
	.iREAD_C(),
	.iREAD_D(),
	.iREAD_E(),
	.oWrite_0(),
	.oWrite_1(),
	.oWrite_2(),
	.oWrite_3(),
	.oWrite_4(),
	.oWrite_5(),
	.oWrite_6(),
	.oWrite_7(),
	.oWrite_8(),
	.oWrite_9(),
	.oWrite_A(),
	.oWrite_B(),
	.oWrite_C(),
	.oWrite_D(),
	.oWrite_E(),
);

endmodule
