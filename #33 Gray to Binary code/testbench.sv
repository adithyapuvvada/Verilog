module tb;
  parameter n=4;
  reg [n-1:0]gray;
  wire [n-1:0]bin;
  gray2bin gray2bin1(.gray(gray),.bin(bin));
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      gray=4'b0010;#10
      gray=4'b0110;#10
      $finish;
    end
endmodule
