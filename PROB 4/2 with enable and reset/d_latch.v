module d_latch(
	input d,
	input reset,
	input e,
	output q);

reg q;

always @(*)
begin
	if(reset && e)
		q <=d;
	else 
		q <= 0;
end

endmodule
