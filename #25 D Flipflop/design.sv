module dff(
  input rst,clk,d,
  output reg y
);
  always@(posedge clk)begin
    if(rst==1)begin
      y=0;
    end
    else begin
      y<=d;
    end
  end
endmodule
