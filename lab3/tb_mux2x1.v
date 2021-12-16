`timescale 10ns/1ns
`include "mux2x1.v"

module tb_mux2x1;
  reg[1:0] din;
  reg sel;
  wire dout;
  mux2x1 mux(dout, sel, din);
  initial
  begin
    #0 din = 2'b00;
    sel = 0;
    #20 sel = 1;
    #20 din = 2'b01;
    sel = 0;
    #20 sel = 1;
    #20 din = 2'b10;
    sel = 0;
    #20 sel = 1;
    #20 din = 2'b11;
    sel = 0;
    #20 sel = 1;
  end
endmodule
