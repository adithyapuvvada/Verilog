module tb;
  reg j,k,clk;
  wire q_s,q_sbar;
  masterslave masterslave1(j,k,clk,q_s,q_sbar);
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars(1);
      clk=1;
      forever #10 clk=~clk;
    end
  initial
    begin
      j=0;k=0;#10;
      j=0;k=0;#10;
      j=1;k=1;#10;
      j=1;k=1;#10;
      j=1;k=1;#10;
      j=1;k=1;#10;
      $finish;
    end
endmodule
