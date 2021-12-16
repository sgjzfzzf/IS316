`timescale 10ns/1ns
`include "seq_detect.v"

module tb_seq_detect;
  
  reg din, clk, rst_n;
  wire flag;
  
  seq_detect detector(flag, din, clk, rst_n);
  
  initial
  begin
    #0 rst_n <= 1;
    #20 rst_n <= 0;
  end
  
  initial
  begin
    clk = 1;
    repeat(30)
    begin
      #5 clk = ~clk;
    end
  end
  
  initial
  begin
    din = 0;
    
    #10 din = 0;
    #10 din = 0;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    
  end
  
endmodule
