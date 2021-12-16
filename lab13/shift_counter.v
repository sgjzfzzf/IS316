module shift_counter(output reg[7:0] count, input clk, reset);

  reg left;
  
  always @(posedge clk)
  begin
    if (count == 8'b10000000)
      begin
        left = 0;
      end
    else if (count == 8'b00000001)
      begin
        left = 1;
      end
    if (left == 1)
      begin
        count = count << 1;
      end
    else
      begin
        count = count >> 1;
      end
    if (reset == 1)
      begin
        count = 8'b00000001;
      end
  end

endmodule
