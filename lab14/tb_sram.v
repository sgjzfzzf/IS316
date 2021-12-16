`timescale 10ns/1ns
`include "sram.v"

module tb_sram;
  
  integer i;
  
  reg[7:0] din, addr;
  reg wr, rd, cs;
  wire[7:0] dout;
  
  sram sram_obj(dout, din, addr, wr, rd, cs);
  
  initial
  begin
    cs <= 1;
    rd <= 1;
    for (i = 0; i < 256; i = i + 1)
    begin
      din = i;
      addr = i;
      #5 wr = 1;
      #5 wr = 0;
    end
    for (i = 0; i < 256; i = i + 1)
    begin
      addr = i;
      #5 rd = 0;
      #5 rd = 1;
    end
  end
  
endmodule
