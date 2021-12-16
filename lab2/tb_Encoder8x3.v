`timescale 10ns/1ns
`include "Encoder8x3.v"

module tb_Encoder8x3;
  reg[7:0] data;
  wire[2:0] code;
  Encoder8x3 encoder8x3(.code(code), .data(data));
  initial
  begin
    #0 data = 8'b0000_0001;
    #5 data = 8'b0000_0010;
    #5 data = 8'b0000_0100;
    #5 data = 8'b0000_1000;
    #5 data = 8'b0001_0000;
    #5 data = 8'b0010_0000;
    #5 data = 8'b0100_0000;
    #5 data = 8'b1000_0000;
    #5 $stop;
  end
endmodule
