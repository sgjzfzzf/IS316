`timescale 10ns/1ns
`include "mealy.v"
`include "moore.v"

module top;
  
  reg din, clk, rst;
  wire flag1, flag2;
  
  mealy m1(flag1, din, clk, rst);
  moore m2(flag2, din, clk, rst);
  
  initial
  begin
    din = 0;
    rst = 0;
    #3 rst = 1;
    #7 rst = 0;
  end
  
  initial
  begin
    clk = 0;
    repeat(40)
    begin
      #5 clk = ~clk;
    end
  end
  
  initial
  begin
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 0;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 0;
    #10 din = 1;
  end
  
endmodule