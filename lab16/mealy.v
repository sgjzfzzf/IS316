/*
  state0: xxxxxxxx
  state1: xxxxxxx0
  state2: xxxxxx10
  state3: xxxxx010
  state4: xxxx1010
  state5: xxx01010
  state6: xx101010
  state7: x0101010
*/

module mealy(output reg flag, input din, clk, rst);
  
  reg[2:0] state;
  
  always @(posedge clk)
  begin
    if (rst == 1)
      begin
        state = 3'b000;
      end
    else
      begin
        case (state)
          3'b000:
          begin
            flag = 0;
            case (din)
              0: state = 3'b001;
              1: state = 3'b000;
            endcase
          end
          3'b001:
          begin
            flag = 0;
            case (din)
              1: state = 3'b010;
              0: state = 3'b001;
            endcase
          end
          3'b010:
          begin
            flag = 0;
            case (din)
              0: state = 3'b011;
              1: state = 3'b000;
            endcase
          end
          3'b011:
          begin
            flag = 0;
            case (din)
              1: state = 3'b100;
              0: state = 3'b001;
            endcase
          end
          3'b100:
          begin
            flag = 0;
            case (din)
              0: state = 3'b101;
              1: state = 3'b000;
            endcase
          end
          3'b101:
          begin
            flag = 0;
            case (din)
              1: state = 3'b110;
              0: state = 3'b001;
            endcase
          end
          3'b110:
          begin
            flag = 0;
            case (din)
              0: state = 3'b111;
              1: state = 3'b000;
            endcase
          end
          3'b111:
          begin
            case (din)
              1: 
              begin
                flag = 1;
                state = 3'b000;
              end
              0: 
              begin
                flag = 0;
                state = 3'b000;
              end
            endcase
          end
        endcase
      end
    end  
  
endmodule