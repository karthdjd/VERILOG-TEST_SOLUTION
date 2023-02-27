module mux(
	input a,
	input c,
	input sel
	output b);

assign b = sel ? a : c;

endmodule
