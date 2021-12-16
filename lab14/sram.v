module sram(output reg[7:0] dout, input[7:0] din, addr, input wr, rd, cs);
  
  reg[7:0] data[255:0];
  
  always @(posedge wr)
  begin
    if (cs == 1)
      begin
        data[addr] = din;
      end
  end
  
  always @(~rd)
  begin
    if (cs == 1)
      begin
        dout = data[addr];
      end
  end
  
endmodule
