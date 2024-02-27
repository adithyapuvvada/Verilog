module cla(
  input [3:0]a,b,
  input cin,
  output[3:0]s,
  output cout
);
  wire [3:0]c;
  assign c[0]=cin;
  assign c[1]=(a[0]&b[0])|((a[0]^b[0])&cin); //c1=G0+P0C0
  assign c[2]=(a[1]&b[1])|(a[1]^b[1])&((a[0]^b[0])&cin); //c2=G1+P1C1 => C1=GO+POCin
  assign c[3]=(a[2]&b[2])|(a[2]^b[2])&(a[1]^b[1])&((a[0]^b[0])&cin);
  assign cout=(a[3]&b[3])|(a[3]^b[3])&(a[2]^b[2])&(a[1]^b[1])&((a[0]^b[0])&cin);
  assign s=a^b^c;
endmodule
