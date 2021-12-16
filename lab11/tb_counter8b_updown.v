`timescale 10ns/1ns
`include "counter8b_updown.v"

module tb_counter9b_updown;
  
  reg clk, reset, dir;
  wire[7:0] count;
  
  counter8b_updown counter(count, clk, reset, dir);
  
  initial
  begin
    clk <= 0;
    reset <= 0;
    dir <= 0;
    #500 reset = 1;
    #10 reset = 0;
    #490 $stop;
  end
  
  always
  begin
    #5 clk = ~clk;
  end
  
  always
  begin
    #100 dir = ~dir;
  end
  
endmodule
