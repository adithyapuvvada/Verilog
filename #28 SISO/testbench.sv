module tb;
  reg si, clk, rst;
  wire so;
  siso siso1(si, clk, rst, so);
  
  initial begin
    clk = 1;
    $dumpfile("file.vcd");
    $dumpvars(1);
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst = 1;
    si = 0; #10;
    rst = 0;
    si = 1; #10;
    si = 0; #10;
    si = 1; #10;
    si = 0; #10;
    si = 0; #10;
    si = 0; #10;
    si = 0; #10;
    $finish;
  end
endmodule
