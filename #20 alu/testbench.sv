module tb;
  reg [2:0]select;
  reg [6:0]a,b;
  wire[6:0]r;
  alu alu1(select,a,b,r);
  initial
    begin
      $monitor("select=%b, a=%b, b=%b, r=%b",select,a,b,r);
      select=3'b000;a=5;b=3;#10
      select=3'b001;a=5;b=3;#10
      a=5;b=3;#10
      $finish;
    end
endmodule
