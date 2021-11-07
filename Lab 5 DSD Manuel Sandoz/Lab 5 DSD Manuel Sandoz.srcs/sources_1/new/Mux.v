`timescale 1ns / 1ps
module Mux(
   input s,
   input [3:0] din0, din1,
   output [3:0] mout
   );

   reg [3:0] mout;

   always @( s , din0 , din1)
      if (s)
         mout = din1;
      else
         mout = din0;
endmodule
