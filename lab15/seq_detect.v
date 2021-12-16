/*
  state0: xxxx 0:4, 1:1
  state1: 1xxx 0:4, 1:2
  state2: 11xx 0:3, 1:2
  state3: 110x 0:4, 1:7
  state4: 0xxx 0:4, 1:5
  state5: 01xx 0:4, 1:6
  state6: 011x 0:8, 1:2
  state7: 1101 0:4, 1:6
  state8: 0110 0:4, 1:5
*/

module seq_detect(output reg flag, input din, clk, rst_n);
  
  reg[3:0] state;
  
  always @(state)
  begin
    if (state == 4'b0111 || state == 4'b1000)
      flag = 1;
    else
      flag = 0;
  end
  
  always @(negedge clk)
  begin
    if (rst_n == 1)
      begin
        flag = 0;
        state = 4'b0000;
      end
    else
      begin
        case (state)
          4'b0000:
          begin
            case (din)
              0: state = 3'b100;
              1: state = 4'b0001;
            endcase
          end
          4'b0001:
          begin
            case (din)
              0: state = 4'b0100;
              1: state = 4'b0010;
            endcase
          end
          4'b0010:
          begin
            case (din)
              0: state = 4'b0011;
              1: state = 4'b0010;
            endcase
          end
          4'b0011:
          begin
            case (din)
              0: state = 4'b0100;
              1: state = 4'b0111;
            endcase
          end
          4'b0100:
          begin
            case (din)
              0: state = 4'b0100;
              1: state = 4'b0101;
            endcase
          end
          4'b0101:
          begin
            case (din)
              0: state = 4'b0100;
              1: state = 4'b0110;
            endcase
          end
          4'b0110:
          begin
            case (din)
              0: state = 4'b1000;
              1: state = 4'b0010;
            endcase
          end
          4'b0111:
          begin
            case (din)
              0: state = 4'b0100;
              1: state = 4'b0110;
            endcase
          end
          4'b1000:
          begin
            case (din)
              0: state = 4'b0100;
              1: state = 4'b0101;
            endcase
          end
        endcase
      end
  end
  
endmodule
