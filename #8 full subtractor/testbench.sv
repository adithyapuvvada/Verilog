module tb;
  reg a,b,bin;
  wire d,borrow;
  fullsub fullsub1(a,b,bin,d,borrow);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      a=0;b=0;bin=0;
      #5
      a=0;b=0;bin=1;
      #5
      a=0;b=1;bin=0;
      #5
      a=0;b=1;bin=1;
      #5
      a=1;b=0;bin=0;
      #5
      $finish;
    end
endmodule
