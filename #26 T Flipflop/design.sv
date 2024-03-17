module tflip(
  input rst,clk,t,
  output reg q
);
  always@(posedge clk)begin
    if(rst==1)begin
      q=0;
    end
    else begin
      if(t==1)begin
        q<=~q;
      end
      else begin
        q<=q;
      end
  end
  end
 endmodule
