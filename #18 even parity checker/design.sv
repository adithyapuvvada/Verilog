module evenchecker(
  input a,b,c,d,p,
  output y
);
  assign y=a^b^c^d^p;
endmodule
