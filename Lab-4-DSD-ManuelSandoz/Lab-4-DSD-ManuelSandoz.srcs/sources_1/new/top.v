`timescale 1ns / 1ps

// Engineer: 
// Create Date: 10/04/2021 04:02:24 PM

module top_module(
  input [3:0] x, y,
  input cin,
  output [3:0] z,
  output outputCarry
);

//  wire [3:0] outputCarry;
//  wire o = 0;
  wire [3:0] s;
  wire outputCarry;
  
  H h(.x(x), .y(y), .cin(cin), .z(s), .cout3(cout));
  
  assign outputCarry = (s[3] & s[2]) | (s[3] & s[1]) | cout;

  M m(.z(s), .o(outputCarry), .s(z));
endmodule
