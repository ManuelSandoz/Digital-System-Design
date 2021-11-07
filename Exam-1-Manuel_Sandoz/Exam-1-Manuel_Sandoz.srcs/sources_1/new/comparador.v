`timescale 1ns / 1ps

module comparador(
        input [7:0] a, b,
        output out
    );

    reg out;

    always @(posedge a, b)
        if (a > b)
            out = 1;
        else
            out = 0;

endmodule