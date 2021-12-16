`timescale 10ns/1ns
`include "ones_count.v"

module tb_ones_count;
  integer i;
  reg[7:0] dat_in;
  wire[3:0] count;
  ones_count counter(count, dat_in);
  initial 
  begin
    for (i = 0; i <= 8'b11111111; i = i + 1)
    begin
      dat_in = i;
      #10;
    end
  end
endmodule