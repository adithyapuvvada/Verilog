module tb;
  reg [3:0]pi;
  reg clk,load;
  wire so;
  piso piso1(pi,clk,load,so);
  initial begin
    clk=1;
    $dumpfile("file.vcd");
    $dumpvars(1);
    forever #5 clk=~clk;
  end
  initial begin
    load=1;
    pi=4'b1010;#10
    load=0;#10
    load=0;#10
    load=0;#10
    load=0;#10
    load=1;pi=4'b1101;#10
    load=0;#10
    load=0;#10
    load=0;#10
    load=0;#10
    $finish;
  end
endmodule
