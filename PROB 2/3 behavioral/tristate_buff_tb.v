module tristate_buff_tb;
reg d,en;
wire y;

tristate_buff dut(.d(d),.y(y),.en(en));

initial begin
	
	#5 d=1;#5 en=1;
	#5 d=0;#5 en=1;
	#5 d=1;#5 en=0;
 #10 $display("d=%0b,en=%0b,y=%0b",d,en,y);
 end
 

endmodule
