`timescale 1ns / 1ps

// Engineer: Manuel Sandoz Santiago
// Create Date: 10/04/2021 02:11:40 PM


module H_test();
  reg [3:0] x, y;
  reg cin;
  wire [3:0] z;
  wire cout3;
  
  H uut(
      .x(x)
    , .y(y)
    , .cin(cin)
    , .z(z)
    , .cout3(cout3)
   );
  
  initial begin
  
  #100;
    x = 5; y = 5; cin = 0; #50;
    x = 3; y = 5; cin = 0; #50;
    x = 4; y = 8; cin = 0; #50;
    x = 10; y = 0; cin = 1;#50;
    x = 2; y = 8; cin = 1; #50;
  
  end
endmodule
