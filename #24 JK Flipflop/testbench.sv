module tb;
  reg rst,clk,j,k;
  wire q,qbar;
  jkflip jkflip1(rst,clk,j,k,q,qbar);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      clk=1;
      forever #10 clk=~clk;
    end
  initial
    begin
      rst=1;
      j=0;k=0;#5
      rst=0;
      j=0;k=0;#5
      j=0;k=0;#5
      j=0;k=1;#5
      j=0;k=1;#5
      j=1;k=1;#5
      j=1;k=1;#5
      j=1;k=1;#5
      j=1;k=1;#5
      $finish;
    end
endmodule
