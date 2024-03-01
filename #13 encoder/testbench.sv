module tb;
  reg [7:0]d;
  wire [2:0]y;
  encoder encoder1(d,y);
  initial
    begin
      $monitor("d=%b y=%b",d,y);
      d=128;#5
      d=64;#5
      d=32;#5
      d=16;#5
      d=8;#5
      d=4;#5
      d=2;#5
      d=1;#5
      $finish;
    end 
endmodule
