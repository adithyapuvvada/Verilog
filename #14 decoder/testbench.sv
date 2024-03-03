module tb;
  reg [2:0]a;
  reg en;
  wire [7:0] out;
  integer i;
  decoder decoder1(a,en,out);
  initial
    begin
      $monitor("en=%b, a=%d, out=%b",en,a,out);
      for(i=0;i<16;i=i+1)
        begin
          {en,a}=i;
          #1;
        end
    end
endmodule
