/*
  The operation code tables:
  and         0x000
  subtract    0x001
  subtract_a  0x010
  or_ab       0x011
  and_ab      0x100
  not_ab      0x101
  exor        0x110
  exnor       0x111
*/

module ALU(output reg c_out, output reg[7:0] sum, input[2:0] oper, input[7:0] a, input[7:0] b, input c_in);
  
  always @(*)
  begin
    case (oper)
      3'b000: 
        begin
          {c_out, sum} = {1'b0, a}+{1'b0, b}+{8'b00000000, c_in};
        end
      3'b001: 
        begin
          {c_out, sum} = {1'b0, a}+(~{1'b0, b})+{8'b00000000, c_in};
        end
      3'b010: 
        begin
          {c_out, sum} = (~{1'b0, a})+{1'b0, b}+{8'b00000000, c_in};
        end
      3'b011: 
        begin
          c_out = 0; 
          sum = a|b;
        end
      3'b100: 
        begin
          c_out = 0; 
          sum = a&b;
        end
      3'b101: 
        begin
          c_out = 0; 
          sum = (~a)&b;
        end
      3'b110: 
        begin
          c_out = 0; 
          sum = a^b;
        end
      3'b111: 
        begin
          c_out = 0; 
          sum = a~^b; 
        end
    endcase
  end
  
endmodule
