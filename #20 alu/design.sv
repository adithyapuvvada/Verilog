module alu(
  input [2:0]select,
  input [6:0]a,b,
  output reg [6:0]r
);
  always@(*)begin
    case(select)
      3'b000:r=a+b;
      3'b001:r=a-b;
      3'b010:r=a*b;
      3'b011:r=a/b;
      3'b100:r=a&b;
      3'b101:r=a|b;
      3'b110:r=!a;
      3'b111:r=a^b;
      default:r=0;
    endcase
  end
endmodule
