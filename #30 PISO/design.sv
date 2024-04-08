module piso(
  input [3:0]pi,
  input clk,load,
  output reg so
);
  reg [3:0]temp;
  always@(posedge clk)begin
    if(load) begin
      temp<=pi;
    end
    else begin
      so<=temp[0];
      temp=temp>>1;
    end
  end
endmodule
