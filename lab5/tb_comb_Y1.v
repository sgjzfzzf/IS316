`timescale 10ns/1ns
`include "comb_Y1.v"

module tb_comb_Y1;
  reg A, B, C;
  wire Y;
  comb_Y1 comb(Y, A, B, C);
  integer i;
  initial
  begin
    for (i = 0; i <= 3'b111; i = i + 1)
    begin
      {A, B, C} = i;
      #10;
    end
  end
endmodule