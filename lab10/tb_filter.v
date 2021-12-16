`timescale 10ns/1ns
`include "filter.v"

module tb_filter;
  
  reg clock, reset, sig_in;
  wire sig_out;
  
  filter filter1(sig_out, clock, reset, sig_in);
  
  initial
  begin
    clock <= 0;
    reset <= 0;
    sig_in <= 0;
    #50 reset = 1;
    #60 reset = 0;
    #890 $stop;
  end
  
  always
  begin
    #5 clock = ~clock;
  end
  
  always
  begin
    #40 sig_in = ~sig_in;
  end
  
endmodule
