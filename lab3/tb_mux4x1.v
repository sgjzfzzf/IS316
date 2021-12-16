`timescale 10ns/1ns
`include "mux4x1.v"

module tb_mux4x1;
  reg[3:0] din;
  reg[1:0] sel;
  wire dout;
  mux4x1 mux(dout, sel, din);
  initial
  begin
    #0 din = 4'b0000;
    sel = 2'b00;
    #20 sel = 2'b01;
    #20 sel = 2'b10;
    #20 sel = 2'b11;
    #20 din = 4'b0001;
    sel = 2'b00;
    #20 sel = 2'b01;
    #20 sel = 2'b10;
    #20 sel = 2'b11;
    #20 din = 4'b0010;
    sel = 2'b00;
    #20 sel = 2'b01;
    #20 sel = 2'b10;
    #20 sel = 2'b11;
    #20 din = 4'b0011;
    sel = 2'b00;
    #20 sel = 2'b01;
    #20 sel = 2'b10;
    #20 sel = 2'b11;
  end
endmodule
