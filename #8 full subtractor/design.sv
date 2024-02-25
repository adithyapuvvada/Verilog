module fullsub
  (
    input a,b,bin,
    output d,borrow
  );
  assign d=a^b^bin;
  assign borrow=(~a&bin)||(b&bin)||(~a&b);
endmodule
