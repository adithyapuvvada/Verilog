module bin2gray(
  input [n-1:0]bin,
  output [n-1:0]gray
);
  parameter n=4;
  assign gray=bin^(bin>>1);
endmodule
