`timescale 1ns/1ns
`include "LFSR.v"

module tb_LFSR;
  
  reg[1:26] din;
  reg clk, rst_n, load;
  wire[1:26] q;
  
  LFSR lfsr(q, clk, rst_n, load, din);
  
  initial
  begin
    clk = 0;
    repeat(1000)
    #5 clk = ~clk;
  end
  
  initial
  begin
    #0 rst_n <= 0;
    #10 rst_n <= 1;
    #10 load <= 1;
    #10 din <= $random % 27'H7000000;
    #20 load <= 0;
    #20 din <= 27'b0;
  end
  
endmodule
