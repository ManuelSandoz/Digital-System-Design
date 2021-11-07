`timescale 1ns / 1ps

// Engineer: Manuel Sandoz
// Create Date: 09/12/2021 05:19:31 PM

module cir_2a_sim();
  reg a,b,c,d;
  wire F;

  cir_2a uut(.a(a), .b(b), .c(c), .d(d), .f(F));
  initial begin
    #100 a=0; b=0; c=1; d=1;
    #100 a=1; b=0; c=1; d=0;
    #100 a=1; b=1; c=0; d=0;
  end
endmodule
