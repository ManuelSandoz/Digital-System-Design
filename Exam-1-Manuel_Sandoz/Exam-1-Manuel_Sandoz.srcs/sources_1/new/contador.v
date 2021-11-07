`timescale 1ns / 1ps

module contador(
        input clk, reset, ld, en,
        input [7:0] din, lim,
        output [7:0] out
    );
        reg [7:0] out;

        always @(posedge clk) begin
            if (reset)
                out <=0;
            else if (out >= lim)
                out <=0;
            else
                if (en && ld)
                    out <= din+1;
                else if (ld)
                    out <= din;
                else if (en) 
                  out <= out + 1;

        end
endmodule
