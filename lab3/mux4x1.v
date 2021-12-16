`include "mux2x1.v"
module mux4x1(output dout, input[1:0] sel, input[3:0] din);
  wire res1, res2;
  mux2x1 mux1(res1, sel[0], din[3:2]);
  mux2x1 mux2(res2, sel[0], din[1:0]);
  mux2x1 mux3(dout, sel[1], {res1, res2});
endmodule