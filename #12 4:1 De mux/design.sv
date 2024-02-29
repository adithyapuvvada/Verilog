module demux_1to4 (
    input wire in,
    input wire [1:0] select,
    output reg out0, out1, out2, out3
);

assign out0 = (select == 2'b00) ? in : 1'b0;
assign out1 = (select == 2'b01) ? in : 1'b0;
assign out2 = (select == 2'b10) ? in : 1'b0;
assign out3 = (select == 2'b11) ? in : 1'b0;

endmodule
