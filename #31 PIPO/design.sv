module pipo(
  input [3:0]pi,
  input clk,rst,
  output reg[3:0]po
);
  always@(posedge clk)begin
    if(rst)begin
      po=4'b0000;
    end
    else begin
      po<=pi;
    end
  end
endmodule
