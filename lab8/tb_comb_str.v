`timescale 10ns/1ns
`include "comb_str.v"

module tb_comb_str;
  
  integer i;
  reg A, B, C, D, sel;
  wire y;
  
  comb_str comb(y, sel, A, B, C, D);
  
  initial
  begin
    for (i = 0; i <= 5'b11111; i = i + 1)
    begin
      {A, B, C, D, sel} = i;
      #5;
    end
  end
  
endmodule
