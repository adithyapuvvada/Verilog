module tb;
  reg a,b,c;
  wire sum,carry;
  fuladder fuladder1(a,b,c,sum,carry);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      a=0;b=0;c=0;
      #5
      a=0;b=0;c=1;
      #5
      a=0;b=1;c=0;
      #5
      a=0;b=1;c=1;
      #5
      a=1;b=0;c=0;
      #5
      a=1;b=0;c=1;
      #5
      a=1;b=1;c=0;
      #5
      a=1;b=1;c=1;
      #5
      $finish;
    end
endmodule
