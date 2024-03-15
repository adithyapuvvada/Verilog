module tb;
  reg a,b,c,d,p;
  wire y;
  evenchecker evenchecker1(a,b,c,d,p,y);
  initial
    begin
      $monitor("a=%b, b=%b, c=%b, d=%b, p=%b, y=%b",a,b,c,d,p,y);
      a=0;b=0;c=1;d=1;p=0;#5
      a=0;b=0;c=1;d=1;p=1;#5
      $finish;
    end
endmodule
