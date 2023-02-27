module dff(
	input d,
	input clock,
	output reg q);

  always @(negedge clock)
begin
	q <= d;
end

endmodule
