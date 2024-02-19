module logicgates
  (
    input a,b,
    output andd,orr,nott,nandd,norr,xorr,xnorr
  );
  and g1(andd,a,b);
  or g2(orr,a,b);
  not g3(nott,a);
  nand g4(nandd,a,b);
  nor g5(norr,a,b);
  xor g6(xorr,a,b);
  xnor g7(xnorr,a,b);
endmodule
