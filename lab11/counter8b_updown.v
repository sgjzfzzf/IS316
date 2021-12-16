module counter8b_updown(output reg[7:0] count, input clk, reset, dir);
  
  initial
  begin
    count = 0;
  end
  
  always @(posedge clk, reset)
  begin
    case (dir)
      1: count = count + 1;
      0: count = count - 1;
    endcase
    if (reset == 1)
      begin
        count = 0;
      end
  end
  
endmodule
