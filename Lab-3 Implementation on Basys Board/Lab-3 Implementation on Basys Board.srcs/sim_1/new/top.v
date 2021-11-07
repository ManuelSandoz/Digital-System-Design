`timescale 1ns / 1ps

module sumador_test;
  reg [1:0] a,b;
  wire [1:0] sum;
  wire cout;
  
  sumador uut(.a(a), .b(b), .sum(sum), .cout(cout));
  
  initial begin
    #100
    
    a=1; b=1;
    #50 a=0; b=1;
    #50 a=1; b=1;
    #50 a=1; b=2;
    #50 a=0; b=0;
    #50 a=3; b=1;
    
  end  
endmodule