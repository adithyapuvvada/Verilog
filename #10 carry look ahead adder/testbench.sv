module tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]s;
  wire cout;
  cla cla1(a,b,cin,s,cout);
  initial
    begin
      cin=0;
      $dumpfile("file.vcd");
      $dumpvars(1);
      a=1;b=1;
      #5
      a=2;b=3;
      #5
      $finish;
    end
endmodule
