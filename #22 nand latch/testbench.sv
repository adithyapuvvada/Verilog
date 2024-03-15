module tb;
  reg s,r;
  wire q,qbar;
  nandlatch nandlatch1(s,r,q,qbar);
  initial
    begin
      $monitor("s=%b, r=%b, q=%b, qbar=%b",s,r,q,qbar);
      s=0;r=0;#5
      s=0;r=1;#5
      s=1;r=0;#5
      s=1;r=1;#5
      $finish;
    end
endmodule
