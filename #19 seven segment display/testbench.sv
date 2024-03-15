module tb;
  reg [3:0]bcd;
  wire [6:0]seg;
  integer i;
  seven seven1(bcd,seg);
  initial
    begin
      $monitor("bcd=%b, seg=%b",bcd,seg);
      for(i=0;i<16;i=i+1)begin
        bcd=i;
        #10;
      end
    end
endmodule
