module andd(
  output reg y,
  input a,b
);
  always @(a&&b)begin
    if(a==1'b1 && b==1'b1)begin
      y=1'b1;
    end
    else begin
      y=1'b0;
    end
  end 
endmodule
