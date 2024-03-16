module tb;
  reg rst,clk,d;
  wire y;
  dff dff1(rst,clk,d,y);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      clk=1;
      forever #10 clk=~clk;
    end
  initial 
    begin
      rst=1;d=0;#10
      rst=1;d=1;#10
      rst=0;d=0;#10
      rst=0;d=0;#10
      rst=0;d=1;#10
      rst=0;d=1;#10
      $finish;
    end
endmodule
