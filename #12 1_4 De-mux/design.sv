module demux (
    input wire [1:0] sel,
    input wire in,
    output reg out1,
    output reg out2,
    output reg out3,
    output reg out4
);

always @(*) begin
    case(sel)
        2'b00: begin
            out1 = in;
            out2 = 1'b0;
            out3 = 1'b0;
            out4 = 1'b0;
        end
        2'b01: begin
            out1 = 1'b0;
            out2 = in;
            out3 = 1'b0;
            out4 = 1'b0;
        end
        2'b10: begin
            out1 = 1'b0;
            out2 = 1'b0;
            out3 = in;
            out4 = 1'b0;
        end
        2'b11: begin
            out1 = 1'b0;
            out2 = 1'b0;
            out3 = 1'b0;
            out4 = in;
        end
        default: begin
            out1 = 1'b0;
            out2 = 1'b0;
            out3 = 1'b0;
            out4 = 1'b0;
        end
    endcase
end

endmodule

