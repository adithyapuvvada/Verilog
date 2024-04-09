module tb;
  parameter n=4;
  reg [n-1:0]bin;
  wire [n-1:0]gray;
  bin2gray bin2gray(.bin(bin),.gray(gray));
  initial begin
    $dumpfile("file.vcd");
    $dumpvars(1);
    bin=4'b0010;#10
    bin=4'b0100;#10;
    $finish;
  end
endmodule
