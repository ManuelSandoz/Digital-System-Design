`timescale 1ns/1ps

module Counter(
    input clk, reset, en, clr,
    output [4:0] out
);

    reg [4:0] out;

    always @(posedge clk)
        if(reset)
            out <= 0;
        else if (clr)
            out <= 0; 
        else if (en)
            out <= out + 1;

endmodule