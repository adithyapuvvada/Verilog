module halfadder(
  input a,b,
  output sum,carry
);
  assign sum=a^b;
  assign carry=a&b;
endmodule

module fulladder(
  input a,b,cin,
  output sum,carry
);
  wire s,c,c1;
  halfadder ha1(a,b,s,c);
  halfadder ha2(cin,s,sum,c1);
  assign carry=c||c1;
endmodule
