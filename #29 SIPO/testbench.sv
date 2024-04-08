module tb;
  reg clk,rst,si;
  wire [3:0]po;
  sipo sipo1(clk,rst,si,po);
  initial
    begin
      clk=1;
      $monitor("rst=%b, clk=%b,si=%b, po=%b",rst,clk,si,po);
      $dumpfile("file.vcd");
      $dumpvars(1);
      forever #5 clk=~clk;
    end
  initial begin
    rst=1;
    si=1;#10
    rst=0;
    si=1;#10
    si=0;#10
    si=1;#10
    si=1;#10
    si=0;#10
    si=0;#10
    si=0;#10
    si=0;#10
    $finish;
  end
endmodule
    
