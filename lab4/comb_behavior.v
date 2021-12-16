module comb_behavior(output reg Y, input A, B, C, D);
  always @(*)
  begin
    Y <= (~(A|D))&(B&C&(~D));
  end
endmodule

