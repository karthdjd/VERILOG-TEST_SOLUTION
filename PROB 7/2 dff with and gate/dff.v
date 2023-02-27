module dff(
	input clock,
	input enable,
	input d,
	output reg q);

wire gclk;


assign gclk = clock && enable;
begin
  if(gclk)
    q<=d;
end

endmodule
