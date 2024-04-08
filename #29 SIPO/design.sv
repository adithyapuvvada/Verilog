module sipo(
  input clk,rst,si,
  output reg[3:0]po
);
  reg[3:0]temp;
  always@(posedge clk)begin
    if(rst==1) begin
      temp<=4'b0;
    end
    else begin
      temp<=temp>>1;
      temp[3]<=si;
    end
    po<=temp;
  end
endmodule
