`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manuel Sandoz
// Create Date: 09/06/2021 01:08:20 PM
//////////////////////////////////////////////////////////////////////////////////



module cir_1b_sim();
  reg a,b,c,d;
  wire out;
  
  cir_1b uut(.a(a), .b(b), .c(c), .d(d), .x(out));
  initial begin
    #100 a=0; b=0; c=1; d=1;
    #100 a=1; b=0; c=1; d=0;
    #100 a=1; b=1; c=0; d=0;
    #100 a=0; b=0; c=1; d=1;
    #100 a=1; b=0; c=1; d=1;
    #100 a=1; b=1; c=1; d=1;
    #100 a=1; b=1; c=0; d=1;
  end
endmodule
