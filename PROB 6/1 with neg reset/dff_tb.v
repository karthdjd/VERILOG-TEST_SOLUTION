module dff_tb;  
    reg clock;  
    reg d;  
    reg reset;  
     
  output q;
  
    dff  dff0( .d(d),  
                .reset (reset),  
                .clock (clock),  
                .q (q));  
  
   
   
 
   
    initial begin  
        clock = 0; 
      reset=0;
      #5 reset=1;
        d = 1;  
        reset = 0;  
  
        #15 d = 0;  
        #10 reset = 1;  
   #5 d=1;
end 
  always #10 clock = ~clock;  
endmodule  
