module tb;
  reg [3:0]a;
  wire [1:0]y;
  priencoder priencoder1(a,y);
  initial
    begin
      $monitor("a=%b, y=%b",a,y);
      a=4'b0000;#1
      a=4'b0001;#1
      a=4'b0010;#1
      a=4'b0111;#1
      a=4'b1000;#1
      $finish;
    end
endmodule
