module comb_Y2(output Y, input A, B, C, D);
  assign Y = (~A)|(A&(~B)&C&D)|(A&B&(~C));
endmodule
