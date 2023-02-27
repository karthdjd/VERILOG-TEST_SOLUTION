module mux(
	input a,
	input c,
	input sel,
	output b);

reg b;

always @(*)
initial begin
	if(sel)
		 b = a;
     else
		 b = c;
	end

endmodule
