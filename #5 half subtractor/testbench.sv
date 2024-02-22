module tb;
  reg a,b;
  wire diff,borrow;
  halfsubtractor halfsubtractor1(a,b,diff,borrow);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      a=0;b=0;
      #5
      a=0;b=1;
      #5
      a=1;b=0;
      #5
      a=1;b=1;
      #5
      $finish;
    end
endmodule
