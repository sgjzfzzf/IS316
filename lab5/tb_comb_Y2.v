`timescale 10ns/1ns
`include "comb_Y2.v"

module tb_comb_Y2;
  reg A, B, C, D;
  wire Y;
  comb_Y2 comb(Y, A, B, C, D);
  integer i;
  initial
  begin
    for (i = 0; i <= 4'b1111; i = i + 1)
    begin
      {A, B, C, D} = i;
      #10;
    end
  end
endmodule
