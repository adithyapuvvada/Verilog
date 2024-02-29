module tb_demux_1to4;
  reg in;
  reg [1:0] select;
  wire out0, out1, out2, out3;

  demux_1to4 uut(in, select, out0, out1, out2, out3);

  initial begin
    $dumpfile("file.vcd");
    $dumpvars(0, tb_demux_1to4);

    // Test sequence
    in = 1'b1; select = 2'b00; #10;
    in = 1'b1; select = 2'b01; #10;
    in = 1'b1; select = 2'b10; #10;
    in = 1'b1; select = 2'b11; #10;

    $finish;
  end
endmodule
