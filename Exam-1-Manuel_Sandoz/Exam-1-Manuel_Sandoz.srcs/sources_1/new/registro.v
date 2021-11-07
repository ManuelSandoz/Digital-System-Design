`timescale 1ns/1ps

module register (
    input clk, clr, ld,
    input [3:0] d,
    output [3:0] q
);
    
    reg [3:0] q;

    always @(posedge clk)
        if (clr)
            q <= 0;
        else
            if (ld)
                q <= d;
endmodule