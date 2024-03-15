module jkflip(
  input rst,clk,j,k,
  output reg q,qbar
);
  always@(posedge clk) begin
    if(rst==1)begin
      q=0;
      qbar=~q;
    end
    else
      if(j==0 && k==0)begin
        q<=q;
        qbar<=qbar;
      end
    else if(j==0 && k==1)begin
      q<=0;
      qbar<=~q;
    end
    else if(j==1 && k==0)begin
      q<=1;
      qbar<=~q;
    end
    else begin
      q<=~q;
      qbar<=~qbar;
    end
  end
endmodule
