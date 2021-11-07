`timescale 1ns / 1ps


module ex2(
  input a, b, c, d, 
  output w, x, y, z
  );

  assign z = ~d;
  assign y = (c & d) | ~(c | d);
  assign x = ((c | d) & ~b) | (~(c | d) & b);
  assign w = a | (b & (c | d));
  
  
endmodule
