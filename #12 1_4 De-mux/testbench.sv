module tb;
reg [1:0] sel;
reg in;
wire out1, out2, out3, out4;
  demux uut (sel,in,out1,out2,out3,out4);
initial begin
  $dumpfile("dumpfile.vcd");
  $dumpvars(1);
    sel = 2'b00;in = 1'b1;#10;
    sel = 2'b01;in = 1'b1;#10;
    sel = 2'b10;in = 1'b1;#10;
    sel = 2'b11;in = 1'b1;#10;
    $finish;
end
endmodule
