module tb;
  reg a,b;
  wire andd,orr,nott,nandd,norr,xorr,xnorr;
  logicgates logicgates1(a,b,andd,orr,nott,nandd,norr,xorr,xnorr);
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
