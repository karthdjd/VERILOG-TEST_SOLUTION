module dff (input d,  
              input reset,  
              input clock,  
              output reg q);  
  
  always @ (posedge clock or negedge reset)  
    if (reset)  
          q <= 1'b0;  
       else  
          q <= d;  
endmodule  
