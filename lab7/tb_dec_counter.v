`timescale 1ns/1ns
`include "dec_counter.v"

module tb_dec_counter;
  
  reg clk, reset;
  wire[3:0] count;
  
  dec_counter counter(count, clk, reset);
  
  initial
  begin
    #0 clk = 0;
    #0 reset = 0;
    #75 reset = 1;
    #5 reset = 0;
    #1000 $stop;
  end
  
  always
  begin
    #5 clk = ~clk;
  end
  
endmodule