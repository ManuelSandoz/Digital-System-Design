`timescale 1ns / 1ps
/*
   //////////////////////////////////////////////////////////////////////////////////
   // Engineer: Manuel Sandoz
   // Create Date: 10/15/2021 06:21:50 PM
   // Module Name: DFlipFLop
   //////////////////////////////////////////////////////////////////////////////////
*/
module FF(
   input D, clk, clr,
   output Q
   );
   
   reg Q;
   
   always @(posedge clk)
      if (clr)begin 
            Q <= 0;
         end
      else begin
         Q <= D;
         end 
endmodule

