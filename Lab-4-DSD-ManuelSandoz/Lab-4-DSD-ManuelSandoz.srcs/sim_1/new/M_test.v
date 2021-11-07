`timescale 1ns / 1ps

// Engineer: Manuel Sandoz
// Create Date: 10/04/2021 04:06:32 PM

module M_test();

  reg [3:0] z;
  reg o, res;
  wire [3:0] s;
    
    M uut(.z(z), .o(o), .res(res), .s(s));
endmodule
