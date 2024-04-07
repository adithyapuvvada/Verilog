module siso(
  input si,clk,rst,
  output reg so
);
  reg [3:0]temp;
  always@(posedge clk)begin
    if(rst==1) begin
      temp=4'b0;
    end
    else begin
      temp=temp>>1;
      temp[3]<=si;
      so<=temp[0];
    end
  end
endmodule
