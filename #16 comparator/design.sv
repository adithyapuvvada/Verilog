
module comparator(
  input [1:0]a,b,
  output reg gr,ls,eq
);
  always @(a or b)begin
    if(a>b) begin
      gr=1'b1;
      ls=1'b0;
      eq=1'b0;
    end
    else if(a<b)begin
      gr=1'b0;
      ls=1'b1;
      eq=1'b0;
    end
    else begin
      gr=1'b0;
      ls=1'b0;
      eq=1'b1;
  end
  end
endmodule
