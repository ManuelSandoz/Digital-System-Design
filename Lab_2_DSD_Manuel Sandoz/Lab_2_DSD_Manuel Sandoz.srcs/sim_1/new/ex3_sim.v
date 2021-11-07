`timescale 1ns / 1ps


module ex3_sim();

  reg a0, a1, a2, a3, cin;
  wire s0, s1, s2, s3, cout;
  
  ex3 uut(.a0(a0), .a1(a1), .a2(a2), .a3(a3), .cin(cin), .s0(s0), .s1(s1), .s2(s2), .s3(s3), .cout(cout));
  
  initial begin
    a0 = 0; a1 = 0; a2 = 0; a3 = 0; cin = 0; #100;
    a0 = 1; a1 = 1; a2 = 1; a3 = 1; cin = 1; #10; 
    a0 = 0; a1 = 0; a2 = 1; a3 = 1; cin = 1; #10;
    a0 = 0; a1 = 1; a2 = 1; a3 = 1; cin = 0; #10;
    a0 = 0; a1 = 1; a2 = 1; a3 = 1; cin = 1; #10;
    a0 = 0; a1 = 0; a2 = 1; a3 = 1; cin = 1; #10;
  end
endmodule
