`timescale 10ns/1ns
`include "comb_str.v"
`include "comb_dataflow.v"
`include "comb_behavior.v"
`include "comb_prim.v"

module testbench_comb;
  integer i;
  reg A, B, C, D;
  wire res_str, res_dataflow, res_behavoir, res_prim;
  comb_str comb1(res_str, A, B, C, D);
  comb_dataflow comb2(res_dataflow, A, B, C, D);
  comb_behavior comb3(res_behavoir, A, B, C, D);
  comb_prim(res_prim, A, B, C, D);
  initial
  begin
    for (i = 0; i <= 4'b1111; i = i + 1)
    begin
      {A, B, C, D} = i;
      #10;
    end
  end
endmodule