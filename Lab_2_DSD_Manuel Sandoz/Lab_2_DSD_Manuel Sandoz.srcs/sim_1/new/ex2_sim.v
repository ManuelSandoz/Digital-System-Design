`timescale 1ns/ 1ps

module ex2_sim();
  reg a, b, c, d;
  wire w, x, y ,z;
  
  ex2 uut(.a(a), .b(b), .c(c), .d(d), .w(w), .x(x), .y(y), .z(z));
  
  initial begin
    a = 0; b = 0; c = 0; d = 0; #100;
    a = 0; b = 0; c = 1; d = 1; #10;
    a = 1; b = 0; c = 1; d = 0; #10;
    a = 1; b = 1; c = 0; d = 0; #10;
    a = 0; b = 0; c = 1; d = 1; #10;
    a = 1; b = 0; c = 1; d = 1; #10;
    a = 1; b = 1; c = 1; d = 1; #10;
    a = 1; b = 1; c = 0; d = 1; #10;
    a = 0; b = 0; c = 1; d = 0; #10;
    a = 0; b = 0; c = 0; d = 1; #10;
    a = 0; b = 0; c = 1; d = 0; #10;
    
  end
endmodule