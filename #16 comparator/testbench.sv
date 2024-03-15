module tb;
  reg[1:0]a,b;
  wire gr,ls,eq;
  comparator comparator1(a,b,gr,ls,eq);
  initial
    begin
      $monitor("gr=%b, ls=%b, eq=%b",gr,ls,eq);
      a=5;b=7;#5
      a=7;b=5;#5
      a=5;b=5;#5
      $finish;
    end
endmodule
