module d_latch(
	input d,
	input e,
	output q);

reg q;

always @(d or e or q)
// also can write -always @(*)
begin
	if (e)
		q <= d;
end

endmodule
