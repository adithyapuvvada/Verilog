module tb;
  reg [3:0]pi;
  reg clk,rst;
  wire [3:0]po;
  pipo pipo1(.pi(pi), .clk(clk), .rst(rst), .po(po));

  initial begin
    clk=1;
    $dumpfile("file.vcd");
    $dumpvars(1);
    forever #5 clk=~clk;
  end
  initial 
    begin
      rst=1;
      pi=4'b1111;#10;
      rst=0;
      pi=4'b1011;#10
      pi=4'b0101;#10
      $finish;
    end
endmodule
