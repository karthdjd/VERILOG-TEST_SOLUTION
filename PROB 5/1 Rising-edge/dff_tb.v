module dff_tb;  
    reg clock;  
    reg d;  
   output q;
 dff dut( .d(d),   
                .clock (clock),  
                .q (q));  
 
 initial begin  
        clock = 1;  
        d = 1;  
       #15 d = 0;  
       #30 d=1;
       #45 d=0;
        #100 $finish;
	$display ("%0t, d=%0b q=%0b", $time, d, q);
    end  
  always #10 clock = clock; 
endmodule  
