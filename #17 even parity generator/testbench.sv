module tb;
  reg a,b,c,d;
  wire y,e,f,g,h;
  evenparity evenparity1(a,b,c,d,e,f,g,h,y);
  initial
    begin
      $monitor("e=%b, f=%b, g=%b, h=%b, y=%b",e,f,g,h,y);
      a=0;b=0;c=0;d=0;#5
      a=0;b=0;c=0;d=1;#5
      $finish;
    end
endmodule
