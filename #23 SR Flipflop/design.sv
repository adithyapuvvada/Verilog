module srflip(
  input s, r, clk,
  output q, qbar
);
  wire a, b;
  assign a = (~s) | (~clk);
  assign b = (~r) | (~clk);
  assign q = ~(a & qbar);
  assign qbar = ~(b & q);
endmodule
