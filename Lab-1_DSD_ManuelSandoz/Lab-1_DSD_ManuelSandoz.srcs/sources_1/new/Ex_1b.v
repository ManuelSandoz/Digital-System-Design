`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manuel Sandoz
// Create Date: 09/06/2021 12:52:27 PM 
//////////////////////////////////////////////////////////////////////////////////


module cir_1b(a, b, c, d, x);
  input a, b, c, d;
  output x;
  wire w1, w2, w3, w4, w5, w6;
  
  not(w1, a);
  and(w2, w1,b);

  and(w3, w1,c,d);
  
  not(w4, d);
  and(w5, d,b,w4);
  
  nor(x, w2,w3,w5);  
  
endmodule
