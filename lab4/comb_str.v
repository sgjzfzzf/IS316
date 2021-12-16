module comb_str(output Y, input A, B, C, D);
  wire tmp1, tmp2, tmp3, tmp4;
  not(tmp1, D);
  or(tmp2, A, D);
  and(tmp3, B, C, tmp1);
  not(tmp4, tmp2);
  and(Y, tmp3, tmp4);
endmodule
