module tb;
  reg rst,clk,t;
  wire q;
  tflip tflip1(rst,clk,t,q);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      clk=1;
      forever #10 clk=~clk;
    end
  initial begin
    rst=1;t=1;#10
    rst=0;t=1;#10
    rst=0;t=0;#10
    rst=0;t=1;#10
    rst=0;t=1;#10
    $finish;
  end
endmodule
