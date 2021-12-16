module comb_Y1(output Y, input A, B, C);
  assign Y = ((~A)&(~B)&C)|((~A)&B&(~C))|(A&(~B));
endmodule
