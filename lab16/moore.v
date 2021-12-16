/*
  state0: xxxxxxxx
  state1: xxxxxxx0
  state2: xxxxxx10
  state3: xxxxx010
  state4: xxxx1010
  state5: xxx01010
  state6: xx101010
  state7: x0101010
  state8: 10101010
*/

module moore(output reg flag, input din, clk, rst);
  
  reg[3:0] state;
  
  always @(state)
  begin
    if (state == 4'b1000)
      flag = 1;
    else
      flag = 0;
    end
  
  always @(posedge clk)
  begin
    $display("state: \{%x, %x, %x, %x\}", state[3], state[2], state[1], state[0]);
    if (rst == 1)
      begin
        state = 4'b0000;
      end
    else
      begin
        case (state)
          4'b0000:
          begin
            case (din)
              0: state = 4'b0001;
              1: state = 4'b0000;
            endcase
          end
          4'b0001:
          begin
            case (din)
              1: state = 4'b0010;
              0: state = 4'b0001;
            endcase
          end
          4'b0010:
          begin
            case (din)
              0: state = 4'b0011;
              1: state = 4'b0000;
            endcase
          end
          4'b0011:
          begin
            case (din)
              1: state = 4'b0100;
              0: state = 4'b0001;
            endcase
          end
          4'b0100:
          begin
          case (din)
              0: state = 4'b0101;
              1: state = 4'b0000;
            endcase
          end
          4'b0101:
          begin
            case (din)
              1: state = 4'b0110;
              0: state = 4'b0001;
            endcase
          end
          4'b0110:
          begin
            case (din)
              0: state = 4'b0111;
              1: state = 4'b0000;
            endcase
          end
          4'b0111:
          begin
            case (din)
              1: state = 4'b1000;
              0: state = 4'b0001;
            endcase
          end
          4'b1000:
          state = 4'b0110;
        endcase
      end
    end  
endmodule