module norlatch(
  input r,s,
  output reg q,qbar
);
  always @* begin
    q=~(r|qbar);
    qbar=~(s|q);
  end
endmodule
