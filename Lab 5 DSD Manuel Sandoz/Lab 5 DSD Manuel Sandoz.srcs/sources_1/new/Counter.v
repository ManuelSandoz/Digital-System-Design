`timescale 1ns / 1ps
// Create Date: 10/15/2021 07:00:57 PM

module counter(
   in, clr, clk, ld, en, out
   );
   input clr, clk, ld, en;
   input [3:0] in;
   output [3:0] out;
   reg [3:0] out;
   
   always @(posedge clk)
      if(clr)
         out <= 0;
      else if (ld)
         if(en)
            out <= in + 1;
         else
            out <= in;
      else if(en)
         out <= out +1;
endmodule
