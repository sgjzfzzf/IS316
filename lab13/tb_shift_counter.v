`timescale 10ns/1ns
`include "shift_counter.v"

module tb_shift_counter;
  
  wire[7:0] count;
  reg clk, reset;
  
  shift_counter counter(count, clk, reset);
  
  initial
  begin
    clk <= 0;
    #0 reset <= 1;
    #20 reset <= 0;
    #95 reset <= 1;
    #105 reset <= 0;
  end
  
  initial
  begin
    repeat(100)
    begin
      #10 clk = ~clk;
    end
  end
  
endmodule
