module tb;
  reg a,b,cin;
  wire sum,carry;
  fulladder fulladder1(a,b,cin,sum,carry);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      a=0;b=0;cin=0;
      #5
      a=0;b=0;cin=1;
      #5
      a=0;b=1;cin=0;
      #5
      a=0;b=1;cin=1;
      #5
      $finish;
    end
endmodule
