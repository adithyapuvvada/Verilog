module tb;
  reg s,r,clk;
  wire q,qbar;
  srflip srflip1(s,r,clk,q,qbar);
  initial
    begin
      $monitor("clk=%b, s=%b, r=%b, q=%b, qbar=%b",clk,s,r,q,qbar);
      clk=1;s=0;r=1;#5
      clk=0;s=0;r=1;#5
      clk=1;s=0;r=0;#5
      clk=1;s=0;r=1;#5
      clk=1;s=1;r=0;#5
      clk=1;s=1;r=1;#5
      $finish;
    end
endmodule
