module gray2bin(
  input [n-1:0]gray,
  output [n-1:0]bin
);
  parameter n=4;
  assign bin=gray^(bin>>1);
endmodule
