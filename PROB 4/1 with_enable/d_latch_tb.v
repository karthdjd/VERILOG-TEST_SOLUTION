module d_latch_tb;
reg d,e;
wire q;
d_latch dut(.d(d),.e(e),.q(q));
  // can also write- d_latch dut(.*)
initial begin
	
	#5 d=1;#4 e=1;
	#10 d=0;#8 e=1;
	#5 d=1;#4 e=1;
 #10 $display("d=%0b,e=%0b ,q=%0b",d,e,q);
 end
 endmodule
