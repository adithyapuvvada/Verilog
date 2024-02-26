module tb;
  reg [3:0]a,b;
  reg c;
  wire [3:0] sum;
  wire carry;
  rca rca1(a,b,c,sum,carry);
  initial begin
    $dumpfile("file.vcd");
    $dumpvars(1);
    c=0;
    a=4'b0001; b=4'b0010;
    #5
    a=4'b0010;b=4'b1010;
    #5
    $finish;
  end
endmodule
