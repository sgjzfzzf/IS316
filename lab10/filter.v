module filter(output reg sig_out, input clock, reset, sig_in);
  
  reg q0, q1, q2, q3, j, k;
  
  always @(posedge clock, reset)
  begin
    if (reset == 1)
      begin
        q0 <= 0;
        q1 <= 0;
        q2 <= 0;
        q3 <= 0;
        sig_out <= 0;
      end
    else
      begin
        q0 <= sig_in;
        q1 <= q0;
        q2 <= q1;
        q3 <= q2;
        j <= q1&q2&q3;
        k <= (~q1)&(~q2)&(~q3); 
        sig_out <= (j&(~sig_out))|((~k)&sig_out);
      end
  end
  
endmodule
