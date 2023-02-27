module dff_tb;







reg clock;



reg d;



reg enable;







wire q;







dff dut(.clock(clock),.d(d),.q(q),.enable(enable));











initial



begin



	clock= 0;



	enable=0;



	



	d = 1'b0;



	#20 d = 1'b1;



	#30 d = 1'b0;



	#20 d = 1'b1;



	$display("e=%0b, d=%0b",enable,d);



end







always #5 clock = ~clock;



always #4 enable = ~enable;







initial #100 $finish;







endmodule
