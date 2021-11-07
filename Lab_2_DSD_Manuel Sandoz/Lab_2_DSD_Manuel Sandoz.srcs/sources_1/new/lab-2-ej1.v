`timescale 1ns / 1ps

module ex1(
  input i0, i1, i2, i3, s0, s1,
  output out
  );
  
  wire y0, y1, y2, y3;
  
  assign y0 = i0 & ~s1 & ~s0;
  assign y1 = i1 & s0 & ~s1;
  assign y2 = i2 & s1 & ~s0;
  assign y3 = i3 & s0 & s1;
  
  assign out = y1 | y2 | y3 | y0;
endmodule
