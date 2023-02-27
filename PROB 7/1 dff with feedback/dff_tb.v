module dff_tb;



reg clock;

reg d;

reg e;



wire q;



dff dut(.clock(clock),.d(d),.q(q),.e(e));





initial

begin

	clock= 0;

	e=0;

	

	d = 1'b0;

	#20 d = 1'b1;

	#30 d = 1'b0;

	#20 d = 1'b1;

	$display("e=%0b, d=%0b",e,d);

end



always #5 clock = ~clock;

always #4 e = ~e;



initial #100 $finish;



endmodule
