module dff (input d,  
              input reset,  
              input clock,  
              output reg q);  
  
  always @ (posedge clock or negedge reset)  
    if (!reset)  
          q <= d;  
       else  
          q <= 0;  
endmodule  
