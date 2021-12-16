module mux(output y, input sel, in0, in1);
  
  wire tmp1, tmp0;
  
  and(tmp1, sel, in1);
  and(tmp0, ~sel, in0);
  or(y, tmp1, tmp0);
  
endmodule



module comb_str(output y, input sel, A, B, C, D);
  
  wire tmp1, tmp2;
  nand(tmp1, A, B);
  nand(tmp2, C, D);
  mux mux1(y, sel, tmp1, tmp2);
  
endmodule
