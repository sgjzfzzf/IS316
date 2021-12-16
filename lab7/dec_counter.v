module dec_counter(output reg[3:0] count, input clk, reset);
  
  initial
  begin
    count = 0;
  end
  
  always @(clk)
  begin
    if (reset == 1)
      begin
        count = 0;
      end
    else
      begin
        count = (count + 1) % 10;
      end
  end
  
endmodule
