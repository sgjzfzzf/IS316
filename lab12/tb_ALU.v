`timescale 1ns/1ns
`include "ALU.v"

module tb_ALU;
  
  integer i, j, k;
  reg [2:0]oper;
  reg [7:0]a, b;
  reg c_in;
  wire c_out;
  wire [7:0]sum;
  
  ALU alu(c_out, sum, oper, a, b, c_in);
  
  initial
  begin
    oper <= 3'b000;
    a <= 8'b00000000;
    b <= 8'b00000000;
    c_in <= 0;
    for (i = 0; i <= 3'b111; i = i+1)
    begin
      for (j = 0; j <= 8'b11111111; j = j+1)
      begin
        for (k = 0; k <= 8'b11111111; k = k+1)
        begin
          oper = a;
          a = j;
          b = k;
          #5;
        end
      end
    end
  end
  
endmodule
