module evenparity(
  input a,b,c,d,
  output y,e,f,g,h
);
  assign y=(a^b^c^d);
  assign e=a;
  assign f=b;
  assign g=c;
  assign h=d;
endmodule
