module logicgates(
  input a,b,
  output andd,orr,nott,nandd,norr,xorr,xnorr
);
  assign andd=a*b;
  assign orr=a+b;
  assign nott=~a;
  assign nandd=~(a*b);
  assign norr=~(a+b);
  assign xorr=(a*~b+~a*b);
  assign xnorr=~(a*~b+~a*b);
endmodule
