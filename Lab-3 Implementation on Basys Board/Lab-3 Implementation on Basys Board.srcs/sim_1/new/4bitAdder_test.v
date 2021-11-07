`timescale 1ns / 1ps
// Create Date: 09/26/2021 04:30:14 PM

module suma_4_test;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  
  suma_4 uut(.a(a), .b(b), .sum(sum), .cout(cout), .cin(cin));

  initial begin
    #100
    
    a=1; b=1; cin=1;
    #50 a=4; b=6; cin=0;
    #50 a=7; b=5; cin=1;
    #50 a=3; b=7; cin=0;
    #50 a=15; b=0; cin=1;
    #50 a=2; b=10; cin=1;
    #50 a=5; b=0; cin=1;
    #50 a=10; b=6; cin=0;
    #50 a=9; b=7; cin=0;
    
  end
endmodule
