`timescale 1ns / 1ps 
// Engineer: 
// Create Date: 10/04/2021 05:49:24 PM

module top_test();

  reg [3:0] x, y;
  reg cin;
  wire [3:0] z;
  wire outputCarry;
  
  top_module uut(.x(x), .y(y), .cin(cin), .z(z), .outputCarry(outputCarry));
  
  initial begin
  
    #100
    x=5; y=8; cin=0;
    #50
    x=5; y=5; cin=1;
    #50
    x=10; y=1; cin=0;
    #50
    x=7; y=7; cin=0;
  
  end
endmodule
