`timescale 1ns/1ps

module adder (
    input [3:0] a,b,
    output [3:0] result
);

    reg [3:0] result;
    
    always @(posedge a, b)
        result <= a + b;
endmodule