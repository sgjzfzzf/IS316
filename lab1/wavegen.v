`timescale 10ns/1ns
 module wavegen;
   reg wave;
   initial
   begin
     #0 wave <= 0;
     #2 wave <= 1;
     #3 wave <= 0;
     #12 wave <= 1;
     #22 wave <= 0;
     #24 wave <= 1;
     #27 wave <= 0;
     #32 wave <= 1;
     #40 $stop;
   end
 endmodule