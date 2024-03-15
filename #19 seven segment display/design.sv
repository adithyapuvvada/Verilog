
module seven(
  input [3:0]bcd,
  output reg [6:0]seg
);
  always@(bcd) begin
    case(bcd)
      0:seg=7'b1111110;
      1:seg=7'b0110000;
      2:seg=7'b1101101;
      3:seg=7'b1111001;
      4:seg=7'b0110011;
      5:seg=7'b1011111;
      6:seg=7'b1011111;
      7:seg=7'b1110000;
      8:seg=7'b1111111;
      9:seg=7'b1110111;
      default:seg=7'b1111111;
      endcase
  end
endmodule
