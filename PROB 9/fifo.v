module fifo(

  input clk, rst,

  input w_en, r_en,

  input [31:0] data_in,

  output reg [31:0] data_out,

  output full, empty

);

  assign full = ({~w_ptr[9],w_ptr[8:0]}  == r_ptr[8:0] ? 1 : 0 );

 assign empty = (w_ptr == r_ptr) ? 1 : 0;

 

  reg [9:0] w_ptr, r_ptr;

  reg [31:0] fifo[1024];

  

  

  always@(posedge clk) begin

    if(!rst) begin

      w_ptr <= 0; r_ptr <= 0;

      data_out <= 0;

    end

  end

  

  

  always@(posedge clk) begin

    if(w_en & !full)begin

      fifo[w_ptr] <= data_in;

      w_ptr <= w_ptr + 1;

    end

  end

  

  

  always@(posedge clk) begin

    if(r_en & !empty) begin

      data_out <= fifo[r_ptr];

      r_ptr <= r_ptr + 1;

    end

  end



endmodule
