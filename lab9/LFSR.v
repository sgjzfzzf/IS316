// f(x) = x^26 + x^8 + x^7 + x + 1

module LFSR(output reg [1:26] q, input clk, input rst_n, input load, input [1:26] din);
  
  reg[1:26] data;
  reg tmp;
  
  always @(posedge clk)
  begin
    if (rst_n == 0)
      data = 26'b0;
    else if (load == 1)
      data = din;
    else
      begin
        q = data;
        tmp = data[26] ^ data[8] ^ data[7] ^data[1];
        data = data >> 1;
        data[1] = tmp;
      end
  end
  
endmodule
