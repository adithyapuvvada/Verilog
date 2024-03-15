module tb;
  reg r,s;
  wire q,qbar;
  norlatch norlatch1(r,s,q,qbar);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      r=1'b1;s=1'b0;#5
      r=1'b0;s=1'b0;#5
      r=1'b0;s=1'b1;#5
      r=1'b0;s=1'b0;#5
      r=1'b1;s=1'b1;#5
      $finish;
    end
endmodule
