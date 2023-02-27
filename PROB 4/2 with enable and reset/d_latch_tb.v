module d_latch_tb;

   reg d;
   reg e;
   reg reset;
  
   
   d_latch  dut ( .d (d),
                  .e (e),
                  .reset (reset),
                  .q (q));
  // can also write d_latch dut(.*)
  initial begin
      d = 0;
      e = 0;
      reset = 0;
     #10 reset = 1;
      
         #4 d =1;
	 #10 d=0;
	 #5 d=1;
	 $monitor ("%0t en=%0b d=%0b q=%0b", $time, e, d, q);

      end
  always #5 e=~e;
      endmodule  
