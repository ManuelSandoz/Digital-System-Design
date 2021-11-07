`timescale 1ns / 1ps
// Engineer: Manuel Sandoz
// Create Date: 10/15/2021 06:49:14 PM
// Module Name: Registro

module Registro(
   input [3:0] Din, 
   input clk, ld, clr,
   output [3:0] Dout
   );
   
   reg [3:0] Dout;
   
   always @(posedge clk)
      if (clr)
         Dout <= 0;
      else
         if(ld)
            Dout <= Din;
endmodule
