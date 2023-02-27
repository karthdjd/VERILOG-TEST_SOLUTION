module dff(
	input d,
	input clock,
	output q);

reg q;

  always @(posedge clock)
begin
	q <= d;
end

endmodule
